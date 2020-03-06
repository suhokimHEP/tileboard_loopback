`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    06:41:05 10/10/2019 
// Design Name: 
// Module Name:    prbs16_byte 
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
module prbs15_byte(
    input clk,
    input [7:0] data_in,
    output reg [7:0] prbs_out
    );

reg [7:0] data_d;

	always @(posedge clk)
		data_d<=data_in;
		
wire [7:0] prbs_out_i;

prbs15 b7(.history({data_d[6:0],data_in}),.next(prbs_out_i[7]));
prbs15 b6(.history({data_d[5:0],data_in,1'h0}),.next(prbs_out_i[6]));
prbs15 b5(.history({data_d[4:0],data_in,2'h0}),.next(prbs_out_i[5]));
prbs15 b4(.history({data_d[3:0],data_in,3'h0}),.next(prbs_out_i[4]));
prbs15 b3(.history({data_d[2:0],data_in,4'h0}),.next(prbs_out_i[3]));
prbs15 b2(.history({data_d[1:0],data_in,5'h0}),.next(prbs_out_i[2]));
prbs15 b1(.history({data_d[0],data_in,6'h0}),.next(prbs_out_i[1]));
prbs15 b0(.history({data_in,7'h0}),.next(prbs_out_i[0]));

	always @(posedge clk)
		prbs_out<=prbs_out_i;



endmodule
