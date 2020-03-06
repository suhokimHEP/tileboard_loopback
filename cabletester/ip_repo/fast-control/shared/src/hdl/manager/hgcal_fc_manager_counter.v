`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
//
//////////////////////////////////////////////////////////////////////////////////
module hgcal_fc_manager_counter(
    input clk_count,
	 input clk_io,
    input ce,
    input reset,
    output reg [31:0] value
    );
	 
	 reg [31:0] counter;

always @(posedge clk_count)
	if (reset) counter<=32'h0;
	else counter<=counter+ce;

always @(posedge clk_io)
	value<=counter;

endmodule
