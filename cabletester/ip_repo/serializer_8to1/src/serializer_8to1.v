`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2019 01:29:35 PM
// Design Name: 
// Module Name: serializer_8to1
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module serializer_8to1(
    input [7:0] data_in,
    output data_out_p,
    output data_out_n,
    input clk,
    input clk_div4,
    input reset
    );
    wire data_out;
        OSERDESE3  #(
      .DATA_WIDTH(8),
      .IS_CLKDIV_INVERTED(0),
      .IS_CLK_INVERTED(1),
      .IS_RST_INVERTED(0),
      .SIM_DEVICE("ULTRASCALE_PLUS")
      )
      oserdes_inst
    (
     .OQ(data_out),
     .CLK(clk),
     .CLKDIV(clk_div4),
     .D(data_in),
     .RST(reset)
     );
     
        OBUFDS outputbuf
     (
      .I(data_out),
      .O(data_out_p),
      .OB(data_out_n)
     );
endmodule
