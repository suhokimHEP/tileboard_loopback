//                              -*- Mode: Verilog -*-
// Filename        : tiletest_supporter.v
// Description     : Utilities for the tiletester
// Author          : Jeremiah Mans
// Created On      : Wed Jan  2 19:51:14 2019
// Last Modified By: Jeremiah Mans
// Last Modified On: Wed Jan  2 19:51:14 2019
// Update Count    : 0
// Status          : Unknown, Use with caution!
/*
 Address map:
 [1][3:0]    (rw) sd_led polarity select
 [1][7:4]    (rw) sd_led force on
 [2][2*i+1:2*i] (rw) rj45_ttl 0=high-z, 1=debug input, 2=on, 3=off
 [3][2*i+1:2*i] (rw) misc data 0=input, 1=from debug, 2=on, 3=off

 Status registers start at address 8
 Firmware version at address [8][15:0]
 [9][4:0]    (ro) status of switches/buttons
 [9][11:8]   (ro) status of sd_leds
 
 */
module tiletest_supporter (
			   input 	     reset,
			   input 	     clkio,
			   input [4:0] 	     io_r_addr,
			   input [4:0] 	     io_w_addr,
			   input [31:0]      io_w_data,
			   output reg [31:0] io_r_data,
			   input 	     io_we,
			   input wire 	     sys_clk, 
			   input wire 	     lhc_clk,
			   input wire        fc_clk,
			   output wire [7:0] sd_led,
			   output wire [7:0] misc_dir,
 			   inout wire [7:0]  misc_data,
			   input wire [4:0]  misc_switches,
			   output wire [7:0] rj45_ttl, 
			   output wire 	     heartbeat_led,
			   input wire 	     led0,
			   input wire 	     led1,
			   input wire 	     led2,
			   input wire 	     led3
 ) ;

   localparam FirmwareVersion = 16'h0009;
   
   // generate reset signals clearly on the two clock domains
   reg 				       reset_io;
   always @(posedge clkio) reset_io<=reset;
      
   localparam NUM_CTL_WORDS = 4;
   reg [31:0] 			       CtlReg[NUM_CTL_WORDS-1:0];
   wire [31:0] 			       DefaultCtlReg[NUM_CTL_WORDS-1:0];

   localparam NUM_STS_WORDS = 8;
   wire [31:0] 			       StatusReg[NUM_STS_WORDS-1:0];


   wire [3:0] 			       sd_polarity = CtlReg[1][3:0];
   wire [3:0] 			       sd_force_on = CtlReg[1][7:4];
			       
   reg 				       reset_decoder_n;

   reg [7:0] 			       reset_counter;

   reg [3:0] 			       sd_led_logical;

   reg [5:0]                   sysclk_slow_count;

   reg sysclk_slow_r;
   wire sysclk_1MHz;
   BUFG buf1MHz(.I(sysclk_slow_r),.O(sysclk_1MHz));
   
   always @(posedge sys_clk) begin
    if (sysclk_slow_count==6'd49) begin
        sysclk_slow_r<=~sysclk_slow_r;
        sysclk_slow_count<='h0;
    end else begin
        sysclk_slow_r<=sysclk_slow_r;
        sysclk_slow_count<=sysclk_slow_count+6'h1;
    end
    end
  
   reg [7:0] sd_led_r;
   // SD LEDs
    wire [3:0] sd_led_xt;

tiletest_led_extender ledx0(.sys_clk_slow(sysclk_1MHz),.req(sd_led_logical[0]),.led(sd_led_xt[0]));
tiletest_led_extender ledx1(.sys_clk_slow(sysclk_1MHz),.req(sd_led_logical[1]),.led(sd_led_xt[1]));
tiletest_led_extender ledx2(.sys_clk_slow(sysclk_1MHz),.req(sd_led_logical[2]),.led(sd_led_xt[2]));
tiletest_led_extender ledx3(.sys_clk_slow(sysclk_1MHz),.req(sd_led_logical[3]),.led(sd_led_xt[3]));

   always @(posedge sys_clk) begin
      sd_led_logical<=sd_force_on | {led3, led2, led1, led0 };
      sd_led_r[3:0]<=sd_polarity;
      sd_led_r[7:4]<=sd_led_xt^sd_polarity;
   end
   assign sd_led=sd_led_r; 

   wire [31:0] clk_rate_lhc;
   wire [31:0] clk_rate_fc;
   wire [31:0] clk_rate_slow;
   
   clkRateTool rate_lhc(.reset_in(reset),.clk100(sys_clk),.clktest(lhc_clk),.value(clk_rate_lhc));
   clkRateTool rate_fc(.reset_in(reset),.clk100(sys_clk),.clktest(fc_clk),.value(clk_rate_fc));
   clkRateTool rate_slow(.reset_in(reset),.clk100(sys_clk),.clktest(sysclk_1MHz),.value(clk_rate_slow));
   
   reg 	     no_lhc_clk;

   always @(posedge sysclk_1MHz)
      no_lhc_clk<=(clk_rate_lhc<32'd100);
  
   
   tiletest_heartbeat the_heartbeat(.sys_clk(sysclk_1MHz),
				    .heartbeat(heartbeat_led),
				    .no_lhc_clk(no_lhc_clk && !CtlReg[0][4]));
   
   genvar i0;
   generate
      for (i0=0; i0<8; i0=i0+1) 
	begin: gen_bits
	   // for SN74AVC4T774PWR, LOW DIR is B to A (correct for input)
	    tiletest_pin_dir misc_pin(.sys_clk(sys_clk),.mode(CtlReg[3][(i0*2+1):(i0*2)]),.src(1'h0),.pin(misc_data[i0]),.dir(misc_dir[i0]));
	    tiletest_pin rj45_pin(.sys_clk(sys_clk),.mode(CtlReg[2][(i0*2+1):(i0*2)]),.src(1'h0),.pin(rj45_ttl[i0]));
      end
      
   endgenerate
   
   assign DefaultCtlReg[0]=32'h00000000; // edgesel = 0
            
   genvar z; 
   generate for (z=0; z<NUM_CTL_WORDS; z=z+1) begin: gen_write
      always @(posedge clkio) begin
	 if (reset_io == 1) CtlReg[z] <= DefaultCtlReg[z];
	 else if ((io_we == 1) && (io_w_addr == z)) CtlReg[z] <= io_w_data;
	 else begin
	   if (z==0) CtlReg[z]<=CtlReg[z]&(32'h0000ffff);
	   else CtlReg[z] <= CtlReg[z];
	 end
      end
   end endgenerate
 
   wire [2:0] status_addr;
   assign status_addr[2:0]=io_r_addr[2:0];
 
   always @(posedge clkio)
     if (io_r_addr[4:3]==2'h0) io_r_data<=CtlReg[io_r_addr[2:0]];
     else io_r_data<=StatusReg[status_addr];

// counters
/*
	reg reset_counters_40_n;
	wire reset_counters_40;
	
always @(posedge clk40 or posedge reset_counters_io)
	if (reset_counters_io) reset_counters_40_n<=1'h0;
	else if (reset_40) reset_counters_40_n<=1'h0;
	else reset_counters_40_n<=1'h1;
assign reset_counters_40=~reset_counters_40_n;
*/

   reg 	 [31:0]    StatusReg1;

always @(posedge clkio) begin
   StatusReg1[4:0]<=misc_switches;
   StatusReg1[5]<=no_lhc_clk;
   StatusReg1[7:6]<='h0;   
   StatusReg1[11:8]<=sd_led_logical;
   StatusReg1[15:12]<='h0;
   StatusReg1[23:16]<=rj45_ttl;
   StatusReg1[31:14]<=misc_data;   
end
   
   assign StatusReg[0]={16'h0,FirmwareVersion};
   assign StatusReg[1]=StatusReg1;
   assign StatusReg[3]=clk_rate_lhc;
   assign StatusReg[4]=clk_rate_slow;
   assign StatusReg[5]=clk_rate_fc;
         
endmodule // tiletest_supporter
module tiletest_pin(
		    input 	sys_clk,
		    input [1:0] mode,
		    input 	src,
		    output reg 	pin
		    );
   
   always @(posedge sys_clk)
     if (mode==2'h0) pin<=1'hz;
     else if (mode==2'h1) pin<=src;
     else if (mode==2'h2) pin<=1'h0;
     else if (mode==2'h3) pin<=1'h1;

endmodule // tiletest_pin
module tiletest_pin_dir(
		    input 	sys_clk,
		    input [1:0] mode,
		    input 	src,
		    output reg 	pin,
		    output reg  dir
		    );
   
   always @(posedge sys_clk)
     if (mode==2'h0) pin<=1'hz;
     else if (mode==2'h1) pin<=src;
     else if (mode==2'h2) pin<=1'h0;
     else if (mode==2'h3) pin<=1'h1;

   always @(posedge sys_clk)
     if (mode==2'h0) dir<=1'h0;
     else if (mode==2'h1) dir<=1'h1;
     else if (mode==2'h2) dir<=1'h1;
     else if (mode==2'h3) dir<=1'h1; 

endmodule // tiletest_pin
module tiletest_led_extender(
    input sys_clk_slow,
    input req,
    output reg led);
    
    reg [13:0] ledx;
    wire led_hit;
    
   FDPE #(
      .INIT(1'b1),            // Initial value of register, 1'b0, 1'b1
      // Programmable Inversion Attributes: Specifies the use of the built-in programmable inversion
      .IS_C_INVERTED(1'b0),   // Optional inversion for C
      .IS_D_INVERTED(1'b0),   // Optional inversion for D
      .IS_PRE_INVERTED(1'b0)  // Optional inversion for PRE
   )
   FDPE_req (
      .Q(led_hit),     // 1-bit output: Data
      .C(sys_clk_slow),     // 1-bit input: Clock
      .CE(1'h1),   // 1-bit input: Clock enable
      .D(req),     // 1-bit input: Data
      .PRE(req)  // 1-bit input: Asynchronous preset
   );    
   
   always @(posedge sys_clk_slow) 
      if (led_hit) begin 
        ledx<='h1;
        led<=1'h1;
      end else if (ledx!='h0) begin
        ledx<=ledx+'h1;
        led<=1'h1;
      end 
      else begin
        ledx<=ledx;
        led<=1'h0;
      end
endmodule
