//                              -*- Mode: Verilog -*-
// Filename        : hgcal_fc_recv_manager.v
// Description     : Manager for fast control decoder which contains counters for general use
// Author          : Jeremiah Mans
// Created On      : Wed Jan  2 19:51:14 2019
// Last Modified By: Jeremiah Mans
// Last Modified On: Wed Jan  2 19:51:14 2019
// Update Count    : 0
// Status          : Unknown, Use with caution!
/*
 Address map:
 [0][0]      (rw) Enable fast control stream (otherwise, constant zero)
 Status registers start at address 4
 Firmware version at address [4][15:0]
 */
module hgcal_fc_recv_manager (input gclk320,
			      input 		fc_stream,
			      input 		reset,
			      input 		clkio,
			      input [4:0] 	io_r_addr,
			      input [4:0] 	io_w_addr,
			      input [31:0] 	io_w_data,
			      output reg [31:0] io_r_data,
			      input 		io_we,
			      output 		gclk40,
			      output 		fc_OrbitSync,
 			      output 		fc_L1A,
			      output 		fc_OrbitCountReset_OrbitSync,
			      output 		fc_CalibrationReq,
			      output 		fc_CalibrationL1A,
			      output 		fc_LinkReset	
 ) ;

   localparam FirmwareVersion = 16'h0004;
   
   // generate reset signals clearly on the two clock domains
   reg 				       reset_40, reset_io;
   always @(posedge gclk40) reset_40<=reset;
   always @(posedge clkio) reset_io<=reset;
      
   localparam NUM_CTL_WORDS = 6;
   reg [31:0] 			       CtlReg[NUM_CTL_WORDS-1:0];
   wire [31:0] 			       DefaultCtlReg[NUM_CTL_WORDS-1:0];

   localparam NUM_STS_WORDS = 16;
   wire [31:0] 			       StatusReg[NUM_STS_WORDS-1:0];


   reg 				       edge_select, polarity;
   
   
   always @(posedge gclk320) edge_select<=CtlReg[0][0];
   always @(posedge gclk320) polarity<=CtlReg[0][1];

   wire 			       reset_counters_io     = CtlReg[0][28];
   wire 			       reset_decoder_io      = CtlReg[0][29];

   reg 				       reset_decoder_n;

   reg [7:0] 			       reset_counter;

   always @(posedge gclk320)
     if (reset || reset_decoder_io) reset_counter<=8'h0;
     else if (~reset_counter[7]) reset_counter<=reset_counter+8'h1;
     else reset_counter<=reset_counter;
     
   always @(posedge gclk320)
     reset_decoder_n<=reset_counter[7]; // negative pulse
      
   //wire [2:0] debug_decoder;
      
   fast_cmd_clk40_decoder decoder(.clk320(gclk320),.command_rx((polarity)?(~fc_stream):(fc_stream)),
				  .n_rstExt(reset_decoder_n),.EdgeSel_T1(edge_select),
				  .clk40_out(gclk40), .OrbitSync(fc_OrbitSync),
				  .L1A_Full(fc_L1A),.OrbitCountReset_OrbitSync(fc_OrbitCountReset_OrbitSync),
				  .CalibrationReq(fc_CalibrationReq),.CalibrationL1A(fc_CalibrationL1A),
				  .ReSync(fc_LinkReset));
//				  .ReSync(fc_LinkReset), .debug(debug_decoder));
   
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
 
   wire [3:0] status_addr;
   assign status_addr[1:0]=io_r_addr[1:0];
   assign status_addr[3:2]=io_r_addr[4:2] - 2'h1;
//	assign status_addr[4]=~io_r_addr[4] && io_r_addr[3];
 
   always @(posedge clkio)
     if (io_r_addr[4:2]==3'h0) io_r_data<=CtlReg[io_r_addr[1:0]];
     else io_r_data<=StatusReg[status_addr];

// counters
	reg reset_counters_40_n;
	wire reset_counters_40;
	
always @(posedge gclk40 or posedge reset_counters_io)
	if (reset_counters_io) reset_counters_40_n<=1'h0;
	else if (reset_40) reset_counters_40_n<=1'h0;
	else reset_counters_40_n<=1'h1;
assign reset_counters_40=~reset_counters_40_n;


reg [31:0] kcapture, kcapture_io;

always @(posedge gclk320)
    kcapture<={kcapture[30:0],fc_stream};

always @(posedge clkio)
    kcapture_io<=kcapture;
    
assign StatusReg[1]=kcapture_io;

//assign StatusReg[0]={13'h0,debug_decoder,FirmwareVersion};
assign StatusReg[0]={16'h0,FirmwareVersion};
				  
hgcal_fc_manager_counter count_os(.ce(fc_OrbitSync),.value(StatusReg[2]),.clk_count(gclk40),.clk_io(clkio),.reset(reset_counters_40));
hgcal_fc_manager_counter count_ocr(.ce(fc_OrbitCountReset_OrbitSync),.value(StatusReg[3]),.clk_count(gclk40),.clk_io(clkio),.reset(reset_counters_40));
hgcal_fc_manager_counter count_cr(.ce(fc_CalibrationReq),.value(StatusReg[4]),.clk_count(gclk40),.clk_io(clkio),.reset(reset_counters_40));
hgcal_fc_manager_counter count_cl1(.ce(fc_CalibrationL1A),.value(StatusReg[5]),.clk_count(gclk40),.clk_io(clkio),.reset(reset_counters_40));
hgcal_fc_manager_counter count_lr(.ce(fc_LinkReset),.value(StatusReg[6]),.clk_count(gclk40),.clk_io(clkio),.reset(reset_counters_40));
//hgcal_fc_manager_counter count_ds(.ce(fc_daqresync),.value(StatusReg[7]),.clk_count(gclk40),.clk_io(clkio),.reset(reset_counters_40));
//hgcal_fc_manager_counter count_it(.ce(fc_internaltest),.value(StatusReg[8]),.clk_count(gclk40),.clk_io(clkio),.reset(reset_counters_40));
hgcal_fc_manager_counter count_l1(.ce(fc_L1A),.value(StatusReg[9]),.clk_count(gclk40),.clk_io(clkio),.reset(reset_counters_40));

         
endmodule // hgcal_fc_manager
