//                              -*- Mode: Verilog -*-
// Filename        : hgcal_fc_manager_orbitsync.v
// Description     : Generates periodic orbit sync control pulses and orbit count reset on request.
// Author          : Jeremiah Mans
// Created On      : Wed Jan  2 20:31:09 2019
// Last Modified By: Jeremiah Mans
// Last Modified On: Wed Jan  2 20:31:09 2019
// Update Count    : 0
// Status          : Unknown, Use with caution!
module hgcal_fc_manager_orbitsync (
                   input clk40,
                   input reset,
                   input enable,
				   input 	request_orbitcountreset,
				   input [11:0] bx_now,
				   input [11:0] bx_target,
				   output  	pending,
				   output  	fire_os,
				   output  	fire_ocr
				   );


 hgcal_fc_manager_bxtimed timer_os(.clk40(clk40),.reset(reset),.enable(enable),.request_40(enable),.request_async(1'h0),
    .bx_now(bx_now),.bx_target(bx_target),.pending(pending),.fire(fire_os));

 hgcal_fc_manager_bxtimed timer_ocr(.clk40(clk40),.reset(reset),.enable(enable),.request_40(1'h0),.request_async(request_orbitcountreset),
    .bx_now(bx_now),.bx_target(bx_target),.fire(fire_ocr));

   
endmodule // hgcal_fc_manager_orbitsync
