//                              -*- Mode: Verilog -*-
// Filename        : hgcal_fc_manager_single_shot.v
// Description     : Generates single-shot control pulses when control link is otherwise idle.  Can chain 'pending request' information.
// Author          : Jeremiah Mans
// Created On      : Wed Jan  2 20:31:09 2019
// Last Modified By: Jeremiah Mans
// Last Modified On: Wed Jan  2 20:31:09 2019
// Update Count    : 0
// Status          : Unknown, Use with caution!
module hgcal_fc_manager_single_shot (input reset,
				     input  request,
				     input  clk40,
				     input  veto,
				     output reg pending,
				     output reg fire
				     );

   wire 				    req_40;
   

 FDPE #( .INIT(1'b0) ) FDPE_re (
      .Q(req_40),      // 1-bit Data output
      .C(clk40),      // 1-bit Clock input
      .CE(1'h1),    // 1-bit Clock enable input
      .PRE(request),  // 1-bit Asynchronous preset input
      .D(request)       // 1-bit Data input
   );

   reg 					    was_req_40;	    
 					       
   always @(posedge clk40) was_req_40<=req_40;
   
   wire will_fire=pending && ~veto;

   always @(posedge clk40)
     if (will_fire || reset) pending<=1'h0;
     else if (req_40 && ~was_req_40) pending<=1'h1;
     else pending<=pending;

   always @(posedge clk40)
     fire<=pending && ~veto;
   
   
endmodule // hgcal_fc_manager_single_shot
