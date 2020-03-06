`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/06/2019 02:33:09 PM
// Design Name: 
// Module Name: register_handshake
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


module register_handshake #(
        parameter WIDTH = 32
    )
    (
        input wire clk_in,
        input wire [WIDTH-1:0] reg_in,
        input wire clk_out,
        output reg [WIDTH-1:0] reg_out
    );
    
    reg [WIDTH-1:0] transfer_data;
    
    reg valid_data = 0;
    wire busy;
    reg old_ack = 0;
    reg req = 0;
    reg last_req = 0;
    reg new_req = 0;
    reg xack_pipe = 0;
    reg xreq_pipe = 0;
    	   
	always @(posedge clk_out)
	    { old_ack, xack_pipe } <= { xack_pipe, new_req };
	    
	always @(posedge clk_out)
	    { last_req, new_req, xreq_pipe } <= { new_req, xreq_pipe, req };
    
    always @(posedge clk_in)
	    if ((!busy)&&(!valid_data))
	    begin
	   	    transfer_data <= reg_in;
	   	    valid_data <= 1'b1;
	    end 
	    else if (old_ack)
		    valid_data <= 1'b0;
    
    always @(posedge clk_in)
	    if ((!busy)&&(valid_data))
	    begin
	   	   req <= 1'b1;
	   	end
	    else if (old_ack)
	   	   req <= 1'b0;
    
    assign	busy = (req)||(old_ack);
    
    always @(posedge clk_out)
	   if ((!last_req)&&(new_req))
		  reg_out <= transfer_data;
    
endmodule
