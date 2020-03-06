//                              -*- Mode: Verilog -*-
// Filename        : hgcal_fc_manager_orbitsync.v
// Description     : Generates periodic orbit sync control pulses and orbit count reset on request.
// Author          : Jeremiah Mans
// Created On      : Wed Jan  2 20:31:09 2019
// Last Modified By: Jeremiah Mans
// Last Modified On: Wed Jan  2 20:31:09 2019
// Update Count    : 0
// Status          : Unknown, Use with caution!
module hgcal_fc_manager_bxtimed (
                   input clk40,
                   input reset,
				   input request_async,
				   input request_40,
				   input enable,
				   input [11:0] bx_now,
				   input [11:0] bx_target,
				   output reg 	pending,
				   output reg 	fire
				   );

   wire 				    req_async_40;
   
 FDPE #( .INIT(1'b0) ) FDPE_re (
      .Q(req_async_40),      // 1-bit Data output
      .C(clk40),      // 1-bit Clock input
      .CE(1'h1),    // 1-bit Clock enable input
      .PRE(request_async),  // 1-bit Asynchronous preset input
      .D(request_async)       // 1-bit Data input
   );

   reg 					    was_req_40;	    
 					       
   always @(posedge clk40) was_req_40<=req_async_40;

   reg 					    latched_req;
   
   always @(posedge clk40)
     if (fire || reset || ~enable) latched_req<=1'h0;
     else if (req_async_40 && ~was_req_40) latched_req<=1'h1;
     else if (request_40) latched_req<=1'h1;
     else latched_req<=latched_req;

   // the veto comes one BX before the actual target.  Calculate that here, used simulation to verify delta T of 3
   reg [11:0] 				    start_sequence_40;

   always @(posedge clk40) 
     if (bx_target==12'h0) start_sequence_40<=12'd3561;
     else if (bx_target==12'h1) start_sequence_40<=12'd3562;
     else if (bx_target==12'h2) start_sequence_40<=12'd3563;
     else start_sequence_40<=bx_target-12'h3;
      
   always @(posedge clk40) begin
      pending<=(start_sequence_40==bx_now) && enable && latched_req;
      fire<=pending;
   end
   
   
endmodule // hgcal_fc_manager_orbitsync
