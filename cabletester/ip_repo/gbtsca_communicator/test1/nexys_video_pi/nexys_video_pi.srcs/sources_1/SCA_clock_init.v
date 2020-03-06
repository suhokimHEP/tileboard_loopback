`timescale 1ns / 1ps

module SCA_clock_init
  (input clk200_in_p,
   input clk200_in_n,   
   output clk40_out,
   output clk80_out,
   output clk160_out,
   output pll_locked,
   output reset_out,
   output osc_out,
   input cclk_in,
   input cclk_cs);

   // Differential input
   wire clk200_raw;   
   IBUFDS IBUFDS_clk200 (.O(clk200_raw), .I(clk200_in_p), .IB(clk200_in_n));

   // Clock buffer
   wire clk200_buf;
   BUFG buf_clk200 (.I(clk200_raw),.O(clk200_buf));

   // Briefly issue a reset_pll at power-up.
   reg [15:0] counter;
   wire reset_pll;
   always @ (posedge clk200_buf)
     if (counter[15] == 1'b0) counter <= counter + 1'b1;
     else counter <= counter;
   assign reset_pll = ~counter[15];

   // Create the 40 MHz clock and multiples.
   wire clkfbout0, clkfbout_buf0;
   wire clkout0, clkout1, clkout2, nc_clkout3, nc_clkout4, nc_clkout5;
   
   PLLE2_BASE #
     (.BANDWIDTH("OPTIMIZED"),
      .CLKFBOUT_MULT(4), // 4 * 200 = 800 MHz
      .CLKFBOUT_PHASE(0.000),
      .CLKIN1_PERIOD(5.000),
      .CLKOUT0_DIVIDE(20), // 40 MHz
      .CLKOUT0_PHASE(0.0),
      .CLKOUT0_DUTY_CYCLE(0.5),
      .CLKOUT1_DIVIDE(10), // 80 MHz
      .CLKOUT1_PHASE(0.0),
      .CLKOUT1_DUTY_CYCLE(0.5),
      .CLKOUT2_DIVIDE(5), // 160 MHz
      .CLKOUT2_PHASE(0.0),
      .CLKOUT2_DUTY_CYCLE(0.5),
      .DIVCLK_DIVIDE(1),
      .REF_JITTER1(0.010),
      .STARTUP_WAIT("FALSE"))
   PLLE2_BASE_i1 
     (.CLKOUT0(clkout0),
      .CLKOUT1(clkout1),
      .CLKOUT2(clkout2),
      .CLKOUT3(nc_clkout3),
      .CLKOUT4(nc_clkout4),
      .CLKOUT5(nc_clkout5),
      .CLKFBOUT(clkfbout0),
      .LOCKED(pll_locked),
      .CLKIN1(clk200_buf),
      .PWRDWN(1'b0),
      .RST(reset_pll),
      .CLKFBIN(clkfbout_buf0));

   BUFG buf_fb0(.I(clkfbout0),.O(clkfbout_buf0));
   BUFG buf_40 (.I(clkout0),.O(clk40_out));
   BUFG buf_80 (.I(clkout1),.O(clk80_out));
   BUFG buf_160(.I(clkout2),.O(clk160_out));
   /*
   wire clk160_r;
   BUFG bufr_160(.I(clkout2),.O(clk160_r));

   reg [6:0] slow40;
   always @(posedge clk160_r) slow40<=slow40+7'h1;
   BUFG buf_160(.I(slow40[4]),.O(clk160_out));
   BUFG buf_40 (.I(slow40[6]),.O(clk40_out));
   BUFG buf_80 (.I(slow40[5]),.O(clk80_out));
   */

   //----------------------------------------------------------------
   // Instantiate the on-chip oscillator.
   //----------------------------------------------------------------

   STARTUPE2 STARTUPE2_i
     (.CFGMCLK(osc_out),
      .CLK(1'b0),
      .GSR(1'b0),
      .GTS(1'b0),
      .KEYCLEARB(1'b0),
      .PACK(1'b0),
      .USRCCLKO(cclk_in),
      .USRCCLKTS(cclk_cs),
      .USRDONEO(1'b1),
      .USRDONETS(1'b1));

   // Briefly issue a reset at power-up.
   reg [23:0] counter_osc;
   always @ (posedge osc_out)
     if (counter_osc[23] == 1'b0) counter_osc <= counter_osc + 1'b1;
     else counter_osc <= counter_osc;
   assign reset_out = ~counter_osc[23];
   
endmodule
