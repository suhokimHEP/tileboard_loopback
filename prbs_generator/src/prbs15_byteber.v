`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    06:53:33 10/10/2019 
// Design Name: 
// Module Name:    prbs15_byteber 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module prbs15_byteber(
    input clk,
    input [7:0] data_in,
    input reset,
    output reg [31:0] bit_errors,
    output reg locked,
    input stop
    );

	wire [7:0] future_prbs;
	reg [7:0] compare_prbs;
	
prbs15_byte nextgen(.clk(clk),.data_in(data_in),.prbs_out(future_prbs));

	always @(posedge clk)
		compare_prbs<=future_prbs;
	
	reg [7:0] mismatches;
	always @(posedge clk)
		mismatches<=data_in ^ compare_prbs;

	reg [3:0] nmiss;
	always @(posedge clk)
		nmiss<={3'h0,mismatches[7]}+{3'h0,mismatches[6]}+{3'h0,mismatches[5]}+{3'h0,mismatches[4]}+
			{3'h0,mismatches[3]}+{3'h0,mismatches[2]}+{3'h0,mismatches[1]}+{3'h0,mismatches[0]};

	always @(posedge clk) 
		if (reset) begin
			bit_errors<='h0;
			locked<='h0;
		end else if (stop) begin
			bit_errors<=bit_errors;
			locked<=locked;
		end else begin
			bit_errors<=bit_errors+nmiss;
			locked<=(nmiss==4'h0);
		end


endmodule
