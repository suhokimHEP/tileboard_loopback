//                              -*- Mode: Verilog -*-
// Filename        : hgcal_fc_manager_calib.v
// Description     : Generates calibration requests and l1as
// Author          : Jeremiah Mans
// Created On      : Wed Jan  2 20:31:09 2019
// Last Modified By: Jeremiah Mans
// Last Modified On: Wed Jan  2 20:31:09 2019
// Update Count    : 0
// Status          : Unknown, Use with caution!
module hgcal_fc_manager_calib (input reset, input clk40,
			       input 	    request_single,
			       input        enable_periodic,
			       input        normal_l1a,
			       input        enable_l1a,
			       input [11:0] bx_now,
			       input [11:0] bx_calib_req,
			       input [11:0] bx_calib_l1a,
			       input [19:0] periodic_calib_req_prescale,
			       output     veto_out,
			       output    fire_calibreq,
			       output    fire_calibl1a,
			       output    fire_l1a
			       );

// periodic
    reg [19:0] periodic_counter;
    reg req_periodic;
    
always @(posedge clk40)
    if (reset || ~enable_periodic) begin
        periodic_counter<=20'h0;
        req_periodic<=1'h0;
    end else if (bx_now==12'h0) begin
        if (periodic_counter == periodic_calib_req_prescale) begin
            periodic_counter<=20'h0;
            req_periodic<=1'h1;
        end else begin
            periodic_counter<=periodic_counter+1'h1;
            req_periodic<=1'h0;
        end
    end else begin
       periodic_counter<=periodic_counter;
       req_periodic<=1'h0;
    end
    


    wire veto_cr, veto_l1;

hgcal_fc_manager_bxtimed timer_cr(.clk40(clk40),.reset(reset),.enable(1'h1),.request_40(req_periodic),.request_async(request_single),
    .bx_now(bx_now),.bx_target(bx_calib_req),.fire(fire_calibreq), .pending(veto_cr));

    wire fire_calibl1a_i;

// chained to the FC manager
hgcal_fc_manager_bxtimed timer_l1(.clk40(clk40),.reset(reset),.enable(enable_l1a),.request_40(fire_calibreq),.request_async(1'h0),
    .bx_now(bx_now),.bx_target(bx_calib_l1a),.fire(fire_calibl1a_i), .pending(veto_l1));

assign fire_l1a=fire_calibl1a_i;
assign fire_calibl1a=fire_calibl1a_i && ~normal_l1a;
assign veto_out=veto_cr || veto_l1;

endmodule // hgcal_fc_manager_orbitsync
