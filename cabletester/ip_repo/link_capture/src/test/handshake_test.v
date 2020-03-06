`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/24/2019 11:35:03 AM
// Design Name: 
// Module Name: handshake_test
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


module handshake_test(

    );
    
    reg clk1 = 0;
    reg clk2 = 0;
    
    reg [3:0] reg_in = 0;
    wire [3:0] reg_out;
    
    always #7 clk1 <= ~clk1;
    
    always #3 clk2 <= ~clk2;
    
    initial
    begin
        #40 reg_in <= 4'd1;
        #40 reg_in <= 4'd2;
        #40 reg_in <= 4'd3;
        #40 reg_in <= 4'd4;
        #40 reg_in <= 4'd5; 
    end
    
    register_handshake #(
        .WIDTH(4)
    ) hs_test
    (
        .clk_in(clk1),
        .reg_in(reg_in),
        .clk_out(clk2),
        .reg_out(reg_out)
    );
endmodule
