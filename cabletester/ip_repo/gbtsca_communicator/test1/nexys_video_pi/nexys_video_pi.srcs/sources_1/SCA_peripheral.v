`timescale 1ns / 1ps

module SCA_peripheral2
  (input reset,
   input clk40, clk80, clk160,

   input [15:0] firmware_version,
   input [9:0] peripheral_addr,
   input peripheral_write,
   input [15:0] data_write,
   input peripheral_read,
   output [15:0] data_read,
   
   input fmc_sw3,
   input fmc_sw4,

   output reg fmc_led3,
   output reg fmc_led4,
   output reg sca_resetb,
   output reg aux_link_disable,
   
   output reg sca_gpio0,
   output reg sca_gpio1,
   output reg sca_gpio2,
   
   input sca_gpio8,
   input sca_gpio9,
   input sca_gpio10,
   input sca_gpio11,
   input sca_gpio12,
   
   input sca_sda9,
   input sca_scl9,

   output reg started,

   output fmc_mosi_p, fmc_mosi_n,
   output fmc_clk_p, fmc_clk_n, 
   output fmc_usr_p, fmc_usr_n, 
   input fmc_miso_p, fmc_miso_n);
   
   //----------------------------------------------------------------------
   // Define the spi peripheral addresses.
   //----------------------------------------------------------------------
   `include "SCA_ADDR.v"
   //----------------------------------------------------------------------

   //----------------------------------------------------------------------
   // Declare the spi peripheral signals.
   //----------------------------------------------------------------------

   reg [15:0] dummy_reg0, dummy_reg1;
   wire [15:0] constant0, constant1;
   assign constant0 = 16'hDEAD;
   assign constant1 = 16'hBEEF;

   //----------------------------------------------------------------------
   // Declare misc. signals.
   //----------------------------------------------------------------------

   reg fmc_usr;
   wire fmc_miso, fmc_mosi;

   reg was_reset;
   always @(posedge clk40) 
     was_reset<=reset;


   //----------------------------------------------------------------------
   // Pulse the peripheral controls for one tick.
   //----------------------------------------------------------------------
   
   reg write_reg1, write_reg2, write_pulse;
   always @(posedge clk80) write_reg1 <= peripheral_write;
   always @(posedge clk80) write_reg2 <= write_reg1;
   always @(posedge clk80) write_pulse <= write_reg1 & ~write_reg2;
   
   reg read_reg1, read_reg2, read_pulse;
   always @(posedge clk80) read_reg1 <= peripheral_read;
   always @(posedge clk80) read_reg2 <= read_reg1;
   always @(posedge clk80) read_pulse <= read_reg1 & ~read_reg2;

   //----------------------------------------------------------------------
   // Clean up the synthesis timing for 80 MHz.
   //----------------------------------------------------------------------
   
   reg [9:0] peripheral_addr_q; // SPI address
   always @(posedge clk80) peripheral_addr_q <= peripheral_addr;
   
   reg [15:0] tla_ptr;
   
   reg [15:0] data_write_q; // SPI data
   always @(posedge clk80) data_write_q <= data_write;
   
   //----------------------------------------------------------------------
   // Compute data_read.
   //----------------------------------------------------------------------

   wire [2:0] indx;
   assign indx = peripheral_addr_q[2:0];

   wire [9:0] addr_mask;
   assign addr_mask = 10'h3F8;

   wire [15:0] read_tx, read_rx, read_TLA, read_rx2;
   reg write_tx;   
   
   assign data_read 
     = ((peripheral_addr_q == SCA_FIRMWARE_VERSION) ? firmware_version:16'h0) |
       ((peripheral_addr_q == SCA_CONSTANT0) ? constant0 : 16'h0) |
       ((peripheral_addr_q == SCA_CONSTANT1) ? constant1 : 16'h0) |
       ((peripheral_addr_q == SCA_DUMMY_REG0) ? dummy_reg0 : 16'h0) |
       ((peripheral_addr_q == SCA_DUMMY_REG1) ? dummy_reg1 : 16'h0) |

       ((peripheral_addr_q == SCA_GPIO8) ? {15'h0, sca_gpio8} : 16'h0) |
       ((peripheral_addr_q == SCA_GPIO9) ? {15'h0, sca_gpio9} : 16'h0) |
       ((peripheral_addr_q == SCA_GPIO10) ? {15'h0, sca_gpio10} : 16'h0) |
       ((peripheral_addr_q == SCA_GPIO11) ? {15'h0, sca_gpio11} : 16'h0) |
       ((peripheral_addr_q == SCA_GPIO12) ? {15'h0, sca_gpio12} : 16'h0) |
       ((peripheral_addr_q == SCA_SW3) ? {15'h0, fmc_sw3} : 16'h0) |
       ((peripheral_addr_q == SCA_SW4) ? {15'h0, fmc_sw4} : 16'h0) |
       ((peripheral_addr_q == SCA_GPIO0) ? {15'h0, sca_gpio0} : 16'h0) |
       ((peripheral_addr_q == SCA_GPIO1) ? {15'h0, sca_gpio1} : 16'h0) |
       ((peripheral_addr_q == SCA_GPIO2) ? {15'h0, sca_gpio2} : 16'h0) |
       ((peripheral_addr_q == SCA_LED3) ? {15'h0, fmc_led3} : 16'h0) |
       ((peripheral_addr_q == SCA_LED4) ? {15'h0, fmc_led4} : 16'h0) |
       ((peripheral_addr_q == SCA_AUX_DISABLE) ? {15'h0, aux_link_disable} : 16'h0) |
       ((peripheral_addr_q == SCA_RESETB) ? {15'h0, sca_resetb} : 16'h0) |
       ((peripheral_addr_q == SCA_TLA_PTR) ? tla_ptr : 16'h0) |
       ((peripheral_addr_q == SCA_TLA_WINDOW) ? read_TLA : 16'h0) |
       (((peripheral_addr_q & addr_mask) == SCA_TX_BLOCK) ? read_tx : 16'h0) |
       (((peripheral_addr_q & 10'h3E0) == SCA_RX_BLOCK) ? read_rx : 16'h0) |
       (((peripheral_addr_q & 10'h3E0) == SCA_RX_BLOCK2) ? read_rx2 : 16'h0) |
       16'h0;

    wire tx_busy;

   // transmitter
   hdlc_tx tx(.io_addr(peripheral_addr_q[2:0]),.din(data_write),.dout(read_tx),.we(write_tx),.io_clk(clk80),
    .nr(3'h0),.link_clk(clk80),.reset(reset),.serout(fmc_mosi),.busy(tx_busy));

   //----------------------------------------------------------------------
   // Capture data_write.
   //----------------------------------------------------------------------
   
   always @(posedge clk80) // dummy_reg0
     if (reset == 1'b1) dummy_reg0 <= 16'h0;
     else if ((peripheral_addr_q == SCA_DUMMY_REG0) && 
	      (write_pulse == 1'b1)) dummy_reg0 <= data_write;
     else dummy_reg0 <= dummy_reg0;
   
   always @(posedge clk80) // dummy_reg1
     if (reset == 1'b1) dummy_reg1 <= 16'h0;     
     else if ((peripheral_addr_q == SCA_DUMMY_REG1) && 
	      (write_pulse == 1'b1)) dummy_reg1 <= data_write;
     else dummy_reg1 <= dummy_reg1;

   always @(posedge clk80) // sca_gpio0
     if (reset == 1'b1) sca_gpio0 <= 1'b0;     
     else if ((peripheral_addr_q == SCA_GPIO0) && 
	      (write_pulse == 1'b1)) sca_gpio0 <= data_write[0];
     else sca_gpio0 <= sca_gpio0;

   always @(posedge clk80) // sca_gpio1
     if (reset == 1'b1) sca_gpio1 <= 1'b0;     
     else if ((peripheral_addr_q == SCA_GPIO1) && 
	      (write_pulse == 1'b1)) sca_gpio1 <= data_write[0];
     else sca_gpio1 <= sca_gpio1;

   always @(posedge clk80) // sca_gpio2
     if (reset == 1'b1) sca_gpio2 <= 1'b0;     
     else if ((peripheral_addr_q == SCA_GPIO2) && 
	      (write_pulse == 1'b1)) sca_gpio2 <= data_write[0];
     else sca_gpio2 <= sca_gpio2;

   always @(posedge clk80) // fmc_led3
     fmc_led3<=~sca_resetb;
     /*
     if (reset == 1'b1) fmc_led3 <= 1'b0;     
     else if ((peripheral_addr_q == SCA_LED3) && 
	      (write_pulse == 1'b1)) fmc_led3 <= data_write[0];
     else fmc_led3 <= fmc_led3;
     */

   always @(posedge clk80) // fmc_led4
     if (reset == 1'b1) fmc_led4 <= 1'b0;     
     else if ((peripheral_addr_q == SCA_LED4) && 
	      (write_pulse == 1'b1)) fmc_led4 <= data_write[0];
     else fmc_led4 <= fmc_led4;

   always @(posedge clk80) // aux_link_disable
     if (reset == 1'b1) aux_link_disable <= 1'b1; // !! default is disabled !!
     else if ((peripheral_addr_q == SCA_AUX_DISABLE) && 
	      (write_pulse == 1'b1)) aux_link_disable <= data_write[0];
     else aux_link_disable <= aux_link_disable;
   
   always @(posedge clk80) // sca_resetb
     if (reset == 1'b1) sca_resetb <= 1'b0;
     else if (reset == 1'b0 && was_reset == 1'b1) sca_resetb<=1'b1;     
/*     else if ((peripheral_addr_q == SCA_RESETB) && 
	      (write_pulse == 1'b1)) sca_resetb <= data_write[0];*/
     else sca_resetb <= sca_resetb;

   always @(posedge clk80) // sca_gpio1
     if (reset == 1'b1) tla_ptr <= 16'b0;     
     else if ((peripheral_addr_q == SCA_TLA_PTR) && 
	      (write_pulse == 1'b1)) tla_ptr <= data_write;
     else tla_ptr <= tla_ptr;

    reg we_TLA;

   always @(posedge clk80) // sca_gpio1
     if (reset == 1'b1) we_TLA <= 1'b0;     
     else if ((peripheral_addr_q == SCA_TLA_WINDOW) && 
	      (write_pulse == 1'b1)) we_TLA <= 1'h1;
     else we_TLA <= 1'h0;



   always @(posedge clk80)
     if (reset == 1'b1) write_tx<=1'h0;
     else write_tx<=((peripheral_addr_q & addr_mask) == SCA_TX_BLOCK) && write_pulse;

  reg write_rx2;

   always @(posedge clk80)
     if (reset == 1'b1) write_rx2<=1'h0;
     else write_rx2<=((peripheral_addr_q & addr_mask) == SCA_RX_BLOCK2) && write_pulse;

     
   //----------------------------------------------------------------------
   // Do elink miso.
   // (use two different 160MHz delays to choose from during debug)
   //----------------------------------------------------------------------

    reg was_tx_busy, trigger_rx;
   always @(posedge clk80) was_tx_busy<=tx_busy;
   always @(posedge clk80) trigger_rx<=was_tx_busy && ~tx_busy;
   always @(posedge clk80) started<=~was_tx_busy && tx_busy;

   reg dly1_miso, dly2_miso;

hdlc_rx_capture rx_cap(.clk(clk80),.reset(reset),.trigger(trigger_rx),.miso(dly1_miso), .clk_io(clk80),.addr(peripheral_addr_q[4:0]),.data(read_rx));

//   wire [8:0] probes;

hdlc_rx therx(.dout(read_rx2),.addr(peripheral_addr_q[2:0]),.reset(reset),.io_we(write_rx2),.io_clk(clk80),
    .srin(dly1_miso),.link_clk(clk80));


   // delay miso by a couple 160 MHz ticks
   always @(posedge clk160) dly1_miso = fmc_miso;
   always @(posedge clk160) dly2_miso = dly1_miso;

   
trivial_logic_analyzer #(.NBITS(4)) TLA(.clkdata(clk80),.bitsin({started,tx_busy,sca_scl9,sca_sda9}),
    .clkio(clk80),.addr(tla_ptr[14:0]),.dataout(read_TLA),.datain(data_write),.we(we_TLA),.reset(reset));
   
   //----------------------------------------------------------------------
   // Handle differential signals.
   //----------------------------------------------------------------------

   wire tmp_mosi, tmp_clk, tmp_usr, tmp_miso, null_miso;
   
   OBUFDS OBUFDS_mosi (.O(fmc_mosi_p), .OB(fmc_mosi_n), .I(tmp_mosi));
   OBUFDS OBUFDS_clk (.O(fmc_clk_p), .OB(fmc_clk_n), .I(tmp_clk));
   OBUFDS OBUFDS_usr (.O(fmc_usr_p), .OB(fmc_usr_n), .I(tmp_usr));
   IBUFDS IBUFDS_miso (.O(tmp_miso), .I(fmc_miso_p), .IB(fmc_miso_n));
   
   //----------------------------------------------------------------------
   // Use ODDR and IDDR registers for accurate ELINK edges.
   //----------------------------------------------------------------------

   reg dly_mosi, dly_usr;
   always @(posedge clk160) dly_mosi <= fmc_mosi;
      
   ODDR #(.DDR_CLK_EDGE("SAME_EDGE"), .INIT(1'b0), .SRTYPE("SYNC")) 
   ODDR_mosi 
     (.Q(tmp_mosi), .D1(dly_mosi), .D2(dly_mosi),
      .C(clk160), .CE(1'b1), .R(1'b0), .S(1'b0));

   ODDR #(.DDR_CLK_EDGE("SAME_EDGE"), .INIT(1'b0), .SRTYPE("SYNC")) 
   ODDR_clk 
     (.Q(tmp_clk), .D1(1'b0), .D2(1'b1),
      .C(clk40), .CE(1'b1), .R(1'b0), .S(1'b0));

   ODDR #(.DDR_CLK_EDGE("SAME_EDGE"), .INIT(1'b0), .SRTYPE("SYNC")) 
   ODDR_usr 
     (.Q(tmp_usr), .D1(dly_usr), .D2(dly_usr),
      .C(clk160), .CE(1'b1), .R(1'b0), .S(1'b0));
   
   IDDR #(.DDR_CLK_EDGE("OPPOSITE_EDGE"), 
	  .INIT_Q1(1'b0), .INIT_Q2(1'b0), .SRTYPE("SYNC"))
   IDDR_miso
     (.Q1(fmc_miso), .Q2(null_miso), 
      .D(tmp_miso),
      .C(clk160), .CE(1'b1), .R(reset), .S(1'b0));

endmodule