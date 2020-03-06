`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:02:01 01/12/2019 
// Design Name: 
// Module Name:    hgcal_fc_simple_serializer 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: Simple 8:1 serializer, MSB first
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module hgcal_fc_simple_serializer(
    input [7:0] fast_control_wide,
    input clk40,
    input clk320,
	 input reset,
    output fast_control_fast
    );
	 
	reg [7:0] phase;
	
	reg [7:0] latch_fast_control;
	
	// this section of the firmware detects a rising edge of the 40 MHz clock and phases the 320 based on it
	reg re_40, fe_40;
	always @(posedge clk40)
		if (reset) re_40<=1'h0;
		else re_40<=~re_40;
	always @(negedge clk40)
		fe_40<=re_40;
	reg matches, did_match;
	always @(posedge clk320) begin
		did_match<=matches;
		matches<=(re_40==fe_40);
	end
	wire phase0;
	assign phase0=(!matches) && (did_match);
	
	always @(posedge clk320) 
		if (phase0) phase<=8'b00000001;
		else phase<={phase[0],phase[7:1]};
	
	always @(posedge clk320)
		if (phase[0]) latch_fast_control<=fast_control_wide;
		else latch_fast_control<=latch_fast_control;
	
	reg fc_fast_i;
	
	always @(posedge clk320)
		fc_fast_i<=((latch_fast_control[6:0] & phase[6:0])!=0) || (phase[7] && fast_control_wide[7]);
	
	assign fast_control_fast = fc_fast_i;


endmodule
