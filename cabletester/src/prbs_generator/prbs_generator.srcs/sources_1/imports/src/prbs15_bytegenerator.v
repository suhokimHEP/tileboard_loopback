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
    input clk_div4,
    input resetb,
    output data_out_p,
    output data_out_n
    );

	reg [7:0] prbsbyte = 0;
	reg was_resetb;
	
	wire [7:0] nextprbs;

always @(posedge clk_div4)
	was_resetb<=resetb;
	
always @(posedge clk_div4)
	if (!resetb) prbsbyte<=8'h0;
	else if (!was_resetb) prbsbyte<=8'h02;
	else prbsbyte<=nextprbs;

prbs15_byte byteGen(.clk(clk_div4),.data_in(prbsbyte),.prbs_out(nextprbs));	

wire data_out;

OSERDESE3  #(
      .DATA_WIDTH(8),
      .IS_CLKDIV_INVERTED(0),
      .IS_CLK_INVERTED(0),
      .IS_RST_INVERTED(1),
      .SIM_DEVICE("ULTRASCALE_PLUS")
      )
      oserdes_inst
    (
     .OQ(data_out),
     .CLK(clk),
     .CLKDIV(clk_div4),
     .D(prbsbyte),
     .RST(resetb)
     );
     
        OBUFDS outputbuf
     (
      .I(data_out),
      .O(data_out_p),
      .OB(data_out_n)
     );
endmodule
