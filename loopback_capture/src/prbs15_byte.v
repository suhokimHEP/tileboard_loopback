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

wire [7:0] data_d_flip;
wire [7:0] data_in_flip;

generate
genvar i;
for(i = 0; i < 8; i = i + 1)
begin
    assign data_d_flip[7 - i] = data_d[i];
    assign data_in_flip[7 - i] = data_in[i];
end
endgenerate

	always @(posedge clk)
		data_d<=data_in;

wire [7:0] prbs_out_i;

prbs15 b7(.history({data_d_flip[6:0],data_in_flip     }),.next(prbs_out_i[0]));
prbs15 b6(.history({data_d_flip[5:0],data_in_flip,1'h0}),.next(prbs_out_i[1]));
prbs15 b5(.history({data_d_flip[4:0],data_in_flip,2'h0}),.next(prbs_out_i[2]));
prbs15 b4(.history({data_d_flip[3:0],data_in_flip,3'h0}),.next(prbs_out_i[3]));
prbs15 b3(.history({data_d_flip[2:0],data_in_flip,4'h0}),.next(prbs_out_i[4]));
prbs15 b2(.history({data_d_flip[1:0],data_in_flip,5'h0}),.next(prbs_out_i[5]));
prbs15 b1(.history({data_d_flip[0],  data_in_flip,6'h0}),.next(prbs_out_i[6]));
prbs15 b0(.history({                 data_in_flip,7'h0}),.next(prbs_out_i[7]));

	always @(posedge clk)
		prbs_out<=prbs_out_i;


endmodule
