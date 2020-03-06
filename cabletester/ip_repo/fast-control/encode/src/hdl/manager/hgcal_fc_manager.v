//                              -*- Mode: Verilog -*-
// Filename        : hgcal_fc_manager.v
// Description     : Manager for fast control encoder which produces a standard set of signals and contains counters for general use
// Author          : Jeremiah Mans
// Created On      : Wed Jan  2 19:51:14 2019
// Last Modified By: Jeremiah Mans
// Last Modified On: Wed Jan  2 19:51:14 2019
// Update Count    : 0
// Status          : Unknown, Use with caution!
/*
 Address map:
 [0][0]      (rw) Enable fast control stream (otherwise, constant zero)
 [0][1]      (rw) Force idles (disable any other signals)
 [0][2]      (rw) Enable orbitsync 
 [0][3]      (rw) Enable periodic calibration req
 [0][4]      (rw) Enable calibration l1a after calibration req
 [0][5]      (rw) Enable periodic l1a generator A
 [0][6]      (rw) Enable periodic l1a generator B
 [0][16]      (w) Generate one calibration req/l1a cycle
 [0][17]      (w) Send an orbit count reset at the next orbitsync
 [0][18]      (w) Send a link-reset 
 [0][19]      (w) Send a DAQ-resync
 [0][20]      (w) Send an L1A at the assigned BX for generator A
 [0][21]      (w) Send an L1A at the assigned BX for generator B
 [0][27]      (w) Send an internal test request
 [0][28]      (w) Reset counters
 [1][11:0]   (rw) BX for orbitsync
 [2][11:0]   (rw) BX for calibration req
 [2][23:12]  (rw) BX for calibration l1a
 [2][24]     (rw) Send regular l1a, not calibration l1a 
 [3][19:0]   (rw) orbit prescale for periodic calibration req
 [4][11:0]   (rw) BX for L1A channel A
 [4][31:12]  (rw) orbit prescale for L1A channel A
 [5][11:0]   (rw) BX for L1A channel B
 [5][31:12]  (rw) orbit prescale for L1A channel B
 Status registers start at address 16
 Firmware version at address [16][15:0]
 */
module hgcal_fc_manager (input clk40,
			 output [7:0]  fast_control_stream,
			 input         reset,	       
			 input 	       clkio,
			 input [4:0]   io_r_addr,
			 input [4:0]   io_w_addr,
			 input [31:0]  io_w_data,
			 output reg [31:0] io_r_data,
			 input 	       io_we,
			 output reg debug_non_idle_now
 ) ;

   localparam FirmwareVersion = 16'h0003;
   
   
   wire fc_l1a, fc_calibrationreq, fc_orbitsync, fc_linkreset;
	wire fc_orbitcountreset, fc_calibrationl1a, fc_daqresync, fc_internaltest;

   // generate reset signals clearly on the two clock domains
   reg 				       reset_40, reset_io;
   always @(posedge clk40) reset_40<=reset;
   always @(posedge clkio) reset_io<=reset;
      
   localparam NUM_CTL_WORDS = 6;
   reg [31:0] 			       CtlReg[NUM_CTL_WORDS-1:0];
   wire [31:0] 			       DefaultCtlReg[NUM_CTL_WORDS-1:0];

   localparam NUM_STS_WORDS = 16;
   wire [31:0] 			       StatusReg[NUM_STS_WORDS-1:0];


   reg enable_fc, idleonly;
   always @(posedge clk40) enable_fc<=CtlReg[0][0];
   always @(posedge clk40) idleonly<=CtlReg[0][1];
   
   wire                    enable_orbitsync      = CtlReg[0][2];
   wire                    enable_periodic_calib = CtlReg[0][3];
   wire                    enable_calibrationl1a = CtlReg[0][4];
   wire                    enable_l1agen_A       = CtlReg[0][5];
   wire                    enable_l1agen_B       = CtlReg[0][6];
   wire                    calib_l1a_as_normal   = CtlReg[2][24];

   wire 			       req_single_calib      = CtlReg[0][16];
   wire 			       req_orbitcountreset   = CtlReg[0][17];
   wire 			       req_linkreset         = CtlReg[0][18];
   wire 			       req_daqresync         = CtlReg[0][19];
   wire               req_single_l1agen_A   = CtlReg[0][20];
   wire               req_single_l1agen_B   = CtlReg[0][21];

   wire               req_internal_test     = CtlReg[0][27];
   
	
	wire               reset_counters_io     = CtlReg[0][28];

   wire [11:0] 			   bx_orbitsync          = CtlReg[1][11:0];
   wire [11:0] 			   bx_calib_req          = CtlReg[2][11:0];
   wire [11:0] 			   bx_calib_l1a          = CtlReg[2][23:12];

   wire [19:0]             orbit_prescale_calib  = CtlReg[3][19:0];   

   wire [11:0]             bx_l1agen_A           = CtlReg[4][11:0];
   wire [19:0]          orbit_prescale_l1agen_A  = CtlReg[4][31:12];
   wire [11:0]             bx_l1agen_B           = CtlReg[5][11:0];
   wire [19:0]          orbit_prescale_l1agen_B  = CtlReg[5][31:12];

   // master bx counter
   reg [11:0] 			       bx;
      
   always @(posedge clk40)
     if (reset_40) bx<=12'h0;
     else if (bx==12'd3563) bx<=12'h0;
     else bx<=bx+1'h1;

   wire nextl1, nextcreq;

   // orbit sync and orbit count reset
   wire 			       nextos; // veto signal for various other requests   
   hgcal_fc_manager_orbitsync orbit_ctl(.clk40(clk40),.reset(reset_40),
                   .enable(enable_orbitsync),
                   .request_orbitcountreset(req_orbitcountreset),
			       .bx_now(bx),.bx_target(bx_orbitsync),
			       .pending(nextos),.fire_os(fc_orbitsync),.fire_ocr(fc_orbitcountreset));
    
   // calibration generator
   wire fc_l1a_for_calib;
   hgcal_fc_manager_calib calib_ctl(.clk40(clk40),.reset(reset_40),
    .request_single(req_single_calib),.normal_l1a(calib_l1a_as_normal), .enable_l1a(enable_calibrationl1a),
    .enable_periodic(enable_periodic_calib),.periodic_calib_req_prescale(orbit_prescale_calib),
    .bx_now(bx),.bx_calib_req(bx_calib_req),.bx_calib_l1a(bx_calib_l1a),
    .veto_out(nextcreq), .fire_calibreq(fc_calibrationreq),.fire_calibl1a(fc_calibrationl1a),.fire_l1a(fc_l1a_for_calib));

   // various l1a generators
   wire fc_l1agen_A, veto_l1agen_A;
   hgcal_fc_manager_periodic_l1a l1agen_A(.clk40(clk40),.reset(reset_40),
    .request_single(req_single_l1agen_A), .enable_periodic(enable_l1agen_A),
    .bx_now(bx),.bx_l1a(bx_l1agen_A),.periodic_prescale(orbit_prescale_l1agen_A),
    .veto_out(veto_l1agen_A), .fire(fc_l1agen_A));

   wire fc_l1agen_B, veto_l1agen_B;
   hgcal_fc_manager_periodic_l1a l1agen_B(.clk40(clk40),.reset(reset_40),
    .request_single(req_single_l1agen_B), .enable_periodic(enable_l1agen_B),
    .bx_now(bx),.bx_l1a(bx_l1agen_B),.periodic_prescale(orbit_prescale_l1agen_B),
    .veto_out(veto_l1agen_B), .fire(fc_l1agen_B));


   assign nextl1=veto_l1agen_A || veto_l1agen_B;
      
   // link-reset generator
   wire 			       link_reset_pending;
   hgcal_fc_manager_single_shot ss_linkreset(.reset(reset_40),.request(req_linkreset),.clk40(clk40),.veto(nextl1 | nextos | nextcreq),.pending(link_reset_pending),.fire(fc_linkreset));

   // daq-resync generator
   wire 			       link_daq_resync;
   hgcal_fc_manager_single_shot ss_daqresync(.reset(reset_40),.request(req_daqresync),.clk40(clk40),.veto(nextl1 | nextos | nextcreq | link_reset_pending),.pending(link_daq_resync),.fire(fc_daqresync));

   // internal test generator
//   wire 			       link_itest_pending;
   hgcal_fc_manager_single_shot ss_internaltest(.reset(reset_40),.request(req_internal_test),.clk40(clk40),.veto(nextl1 | nextos | nextcreq | link_reset_pending | link_daq_resync),.fire(fc_internaltest));


   assign fc_l1a=fc_l1a_for_calib || fc_l1agen_A || fc_l1agen_B;

   wire encode_error;
   // encoder
   localparam IDLE_ENCODED = 8'b11000001;
   
   wire [7:0] fast_control_stream_i;
   hgcal_fast_control_encode encoder(.clk40(clk40),
			     .l1a(fc_l1a),
			     .calibrationreq(fc_calibrationreq),
			     .orbitsync(fc_orbitsync),
			     .linkreset(fc_linkreset),
			     .orbitcountreset(fc_orbitcountreset),
			     .calibrationl1a(fc_calibrationl1a),
			     .daqresync(fc_daqresync),
				  .internaltest(fc_internaltest),
			     .fast_control(fast_control_stream_i),
			     .invalid(encode_error)
			     );
	assign fast_control_stream=(~enable_fc)?(8'h0):
	                           (idleonly)?(IDLE_ENCODED): // just idles
	                           fast_control_stream_i;	     
			   
   always @(posedge clk40)
     debug_non_idle_now<=(fast_control_stream!=(IDLE_ENCODED) && fast_control_stream!=8'h0);   
   			     
   assign DefaultCtlReg[0]=32'h00000001; // enabled by default
   assign DefaultCtlReg[1]=32'h00000de8; // BX 3560 by default
   assign DefaultCtlReg[2]=32'h00dd43e8; // BX 1000 for request and BX 3540 for L1A, send calibrationl1a
   assign DefaultCtlReg[3]=32'h00000000; // no prescale for calibration req by default
   assign DefaultCtlReg[4]=32'h00000000; // L1A Channel A
   assign DefaultCtlReg[5]=32'h00000000; // L1A Channel B
            
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
   assign status_addr[3:0]=io_r_addr[3:0];
//	assign status_addr[4]=~io_r_addr[4] && io_r_addr[3];
 
   always @(posedge clkio)
     if (~io_r_addr[4]&&~io_r_addr[3]) io_r_data<=CtlReg[io_r_addr[2:0]]; // extend when necessary
     else if (~io_r_addr[4]) io_r_data<='h0;
     else io_r_data<=StatusReg[status_addr];

// counters
	reg reset_counters_40_n;
	wire reset_counters_40;
	
always @(posedge clk40 or posedge reset_counters_io)
	if (reset_counters_io) reset_counters_40_n<=1'h0;
	else if (reset_40) reset_counters_40_n<=1'h0;
	else reset_counters_40_n<=1'h1;
assign reset_counters_40=~reset_counters_40_n;

	reg [11:0] bx_io;
	always @(posedge clkio) bx_io<=bx;
	
assign StatusReg[0]={bx_io,4'h0,FirmwareVersion};
				  
hgcal_fc_manager_counter count_err(.ce(encode_error),.value(StatusReg[1]),.clk_count(clk40),.clk_io(clkio),.reset(reset_counters_40));
hgcal_fc_manager_counter count_os(.ce(fc_orbitsync),.value(StatusReg[2]),.clk_count(clk40),.clk_io(clkio),.reset(reset_counters_40));
hgcal_fc_manager_counter count_ocr(.ce(fc_orbitcountreset),.value(StatusReg[3]),.clk_count(clk40),.clk_io(clkio),.reset(reset_counters_40));
hgcal_fc_manager_counter count_cr(.ce(fc_calibrationreq),.value(StatusReg[4]),.clk_count(clk40),.clk_io(clkio),.reset(reset_counters_40));
hgcal_fc_manager_counter count_cl1(.ce(fc_calibrationl1a),.value(StatusReg[5]),.clk_count(clk40),.clk_io(clkio),.reset(reset_counters_40));
hgcal_fc_manager_counter count_lr(.ce(fc_linkreset),.value(StatusReg[6]),.clk_count(clk40),.clk_io(clkio),.reset(reset_counters_40));
hgcal_fc_manager_counter count_ds(.ce(fc_daqresync),.value(StatusReg[7]),.clk_count(clk40),.clk_io(clkio),.reset(reset_counters_40));
hgcal_fc_manager_counter count_it(.ce(fc_internaltest),.value(StatusReg[8]),.clk_count(clk40),.clk_io(clkio),.reset(reset_counters_40));
hgcal_fc_manager_counter count_l1(.ce(fc_l1a),.value(StatusReg[9]),.clk_count(clk40),.clk_io(clkio),.reset(reset_counters_40));

         
endmodule // hgcal_fc_manager
