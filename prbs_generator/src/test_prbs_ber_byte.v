`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   07:02:20 10/10/2019
// Design Name:   prbs15_byteber
// Module Name:   /home/jmmans/fw/prbs_ber/test_prbs_ber_byte.v
// Project Name:  prbs_ber
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: prbs15_byteber
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_prbs_ber_byte;

	// Inputs
	reg clk;
	reg reset;
	reg stop;

	// Outputs
	wire [31:0] bit_errors;
	wire [7:0] data_prbs;
	wire locked;
	

	reg [7:0] egen;

	// Instantiate the Unit Under Test (UUT)
   prbs15_bytegenerator uut0 (.clk(clk),.reset(reset),.prbs_stream(data_prbs));

	prbs15_byteber uut (
		.clk(clk), 
		.data_in(data_prbs|egen), 
		.reset(reset), 
		.bit_errors(bit_errors), 
		.locked(locked), 
		.stop(stop)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 1;
		stop = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		reset=0;

	end
	
	reg [3:0] counter;
	always @(posedge clk)
		if (reset) counter<='h0;
		else counter<=counter+'h1;
	
	always @(posedge clk)
	  if (counter==4'd7) egen<=8'd4;
	  else egen<=8'd0;

always begin
   #5;
	clk=~clk;
end
      
endmodule

