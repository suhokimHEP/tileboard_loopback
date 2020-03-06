`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    06:47:50 10/10/2019 
// Design Name: 
// Module Name:    prbs15_bytegenerator 
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
module prbs15_bytegenerator(
    input clk,
    input reset,
    output [7:0] prbs_stream
    );

	reg [7:0] prbsbyte;
	reg was_reset;
	
	assign prbs_stream=prbsbyte;
	
	wire [7:0] nextprbs;

always @(posedge clk)
	was_reset<=reset;
	
always @(posedge clk)
	if (reset) prbsbyte<=8'h0;
	else if (was_reset) prbsbyte<=8'h02;
	else prbsbyte<=nextprbs;

prbs15_byte byteGen(.clk(clk),.data_in(prbsbyte),.prbs_out(nextprbs));	


endmodule
