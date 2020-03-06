`timescale 1ns / 1ps

module SCA_spi_top
  (input spi_mosi, spi_sck, spi_cs0, spi_cs1,
   output spi_miso,

   output FCS_B,// FLASH CS
   output DQ0,  // FPGA2MEM
   input DQ1,   // MEM2FPGA

   input fmc_clk200_p, fmc_clk200_n, // FMC pins
   input fmc_sw3, // FMC pin
   input fmc_sw4, // FMC pin

   output fmc_led3, // FMC pin
   output fmc_led4, // FMC pin
   output sca_resetb, // FMC pin
   output aux_link_disable, // FMC pin
   output i2c_link_enable,
   
   output sca_gpio_clk, // FMC pin
   output sca_gpio0, // FMC pin
   output sca_gpio1, // FMC pin
   output sca_gpio2, // FMC pin
   
   input sca_gpio8, // FMC pin
   input sca_gpio9, // FMC pin
   input sca_gpio10, // FMC pin
   input sca_gpio11, // FMC pin
   input sca_gpio12, // FMC pin
   
   input sca_scl9,
   input sca_sda9,
   
   output [1:0] jc,
   
   input fmc_miso_p, fmc_miso_n, // FMC pins
   output fmc_mosi_p, fmc_mosi_n, // FMC pins
   output fmc_clk_p, fmc_clk_n, // FMC pins
   output fmc_usr_p, fmc_usr_n, // FMC pins

   output [7:0] led,
   
   output[0:1] set_vadj,
   output vadj_en
    );
    
     //Setting the Voltage to 2.5
          assign set_vadj[0] = 1'b0;
          assign set_vadj[1] = 1'b1;
          assign vadj_en = 1'b1;
   
   //==============================================================
   // Tri-state the SPI output. 
   // The SPI interfaces will fail without this.
   //==============================================================
   
   wire spi_miso0, spi_miso1;
   wire tmp_miso, enable_miso;
   assign tmp_miso = ((~spi_cs0) & spi_miso0) | ((~spi_cs1) & spi_miso1);
   assign enable_miso = ~((~spi_cs0) | (~spi_cs1));
   OBUFT OBUFT_i (.O(spi_miso), .I(tmp_miso), .T(enable_miso));

   //==============================================================
   // declarations
   //==============================================================

   // clock_init
   wire reset_por;
   wire clk40,clk80, clk160;
   wire pll_locked,osc;
   wire spi_gclk, cclk_in, cclk_cs;


   // spi_interface
   wire [15:0] spi_ctl[1:0];
   wire [15:0] spi_stat[1:0];
   wire [15:0] peripheral2pi;
   wire [15:0] pi2peripheral;
   wire peripheral_read, peripheral_write;
   wire [9:0] peripheral_addr;

   //==============================================================
   // Reset.
   //==============================================================
   
   reg resetq, resetByPi;
   always @(posedge clk40) resetq <= reset_por | resetByPi | ~pll_locked;


   //==============================================================
   // Scope trigger signal
   //==============================================================
    wire started_hdlc;

    assign jc[0]=started_hdlc;
    assign jc[1]=started_hdlc;

   //==============================================================
   // LEDs
   //==============================================================
   
   reg [25:0] blink_count;
   reg led1q, led2q;
   always @(posedge clk80) blink_count <= blink_count + 1'b1;
   
   always @(posedge clk80) 
     led1q <= blink_count[24] & blink_count[22] | (blink_count[25] & ~blink_count[23]);

   always @(posedge clk80) led2q <= resetq; // hook this to something

   assign led[0] = led1q;
   assign led[1] = led2q;
   assign led[2] = 1'b0;
   assign led[3] = 1'b0;
   assign led[4] = sca_resetb;
   assign led[7:5] = 3'b010;
   //==============================================================
   // Create the clocks.
   //==============================================================

   // Xilinx internal oscillator.
   BUFG buf_sck (.I(spi_sck),.O(spi_gclk));

   // Take 200MHz from FMC connector as input.
   // Produce 80MHz and 160MHz.
   SCA_clock_init clock_init_i
     (.clk200_in_p(fmc_clk200_p),
      .clk200_in_n(fmc_clk200_n),
      .clk40_out(clk40),
      .clk80_out(clk80),
      .clk160_out(clk160),
      .pll_locked(pll_locked),
      .reset_out(reset_por),
      .osc_out(osc),
      .cclk_in(cclk_in),
      .cclk_cs(cclk_cs));

   assign sca_gpio_clk = clk40;
   
   //==============================================================
   // SPI interface.
   //==============================================================
   // CS0 is the normal runtime interface.
   // CS1 is the bridge to the Xilinx SPI FLASH memory.
   //==============================================================
   // control register at address 0x000
   // control register at address 0x001
   // status registerc at address 0x080
   // status register  at address 0x081
   // peripherals at addresses 0x100->0x3FF
   //==============================================================
   
   always @(posedge clk40) resetByPi <= spi_ctl[0][0];
   assign spi_stat[0] = 16'hAA55;
   assign spi_stat[1] = 16'hAA55;
   
   SCA_spiInterface spiInterface_i
     (.reset(reset_por),
      .mosi(spi_mosi),
      .miso(spi_miso0),
      .cs(spi_cs0),
      .spiclk(spi_gclk),
      .controlReg0(spi_ctl[0]),
      .controlReg1(spi_ctl[1]),
      .statusReg0(spi_stat[0]),
      .statusReg1(spi_stat[1]),
      .peripheral2pi(peripheral2pi),
      .pi2peripheral(pi2peripheral),
      .peripheral_write(peripheral_write),
      .peripheral_read(peripheral_read),
      .peripheral_addr(peripheral_addr));

   //==============================================================
   // Reprogram the FLASH via SPI interface using CS1.
   //==============================================================



   assign FCS_B = spi_cs1; // FLASH CS
   assign DQ0 = spi_mosi;  // FPGA2MEM
   assign spi_miso1 = DQ1; // MEM2FPGA
   assign cclk_in = spi_gclk;
   assign cclk_cs = spi_cs1;

   //==============================================================
   // Firmware version (send to sca_peripheral)
   //==============================================================
   
   wire [15:0] firmware_version;
   wire [3:0] RSRVD_MSB, RSRVD_LSB;
   wire [3:0] major_version, minor_version;
   assign RSRVD_MSB = 4'hA;
   assign RSRVD_LSB = 4'h0;
   assign major_version = 4'h2;
   assign minor_version = 4'h0;
   assign firmware_version = {RSRVD_MSB, major_version, 
			      RSRVD_LSB, minor_version};

   //==============================================================
   // SCA peripheral
   //==============================================================
   
   SCA_peripheral2 peripheral_i
     (.reset(resetq),
      .clk40(clk40),
      .clk80(clk80), 
      .clk160(clk160),
      
      .firmware_version(firmware_version),
      .peripheral_addr(peripheral_addr),
      .peripheral_write(peripheral_write),
      .data_write(pi2peripheral),
      .peripheral_read(peripheral_read),
      .data_read(peripheral2pi),
      
      .fmc_sw3(fmc_sw3), // FMC pin
      .fmc_sw4(fmc_sw4), // FMC pin
      
      .started(started_hdlc),
      
      .fmc_led3(fmc_led3), // FMC pin
      .fmc_led4(fmc_led4), // FMC pin
      .sca_resetb(sca_resetb), // FMC pin
      .aux_link_disable(aux_link_disable), // FMC pin
      
      .sca_gpio0(sca_gpio0), // FMC pin
      .sca_gpio1(sca_gpio1), // FMC pin
      .sca_gpio2(sca_gpio2), // FMC pin
      
      .sca_gpio8(sca_gpio8), // FMC pin
      .sca_gpio9(sca_gpio9), // FMC pin
      .sca_gpio10(sca_gpio10), // FMC pin
      .sca_gpio11(sca_gpio11), // FMC pin
      .sca_gpio12(sca_gpio12), // FMC pin

      .sca_sda9(sca_sda9),
      .sca_scl9(sca_scl9),


      .fmc_mosi_p(fmc_mosi_p), .fmc_mosi_n(fmc_mosi_n),
      .fmc_clk_p(fmc_clk_p), .fmc_clk_n(fmc_clk_n), 
      .fmc_usr_p(fmc_usr_p), .fmc_usr_n(fmc_usr_n), 
      .fmc_miso_p(fmc_miso_p), .fmc_miso_n(fmc_miso_n));

 assign i2c_link_enable=1'h0;

   
endmodule