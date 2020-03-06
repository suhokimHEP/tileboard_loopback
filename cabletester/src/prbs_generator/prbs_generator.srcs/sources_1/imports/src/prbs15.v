`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    06:37:55 10/10/2019 
// Design Name: 
// Module Name:    prbs15 
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
module prbs15(
    input [14:0] history,
    input next
    );
	 
assign next = (history[14] ^ history[13]) & 1'b1;


endmodule
