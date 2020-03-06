`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/03/2019 04:54:40 PM
// Design Name: 
// Module Name: fast_control_drivers
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


module fast_control_drivers(
    input fc_clk_i,
    input fc_sig_i,
    output fc_clk_o_p,
    output fc_clk_o_n,
    output fc_sig_o_p,
    output fc_sig_o_n
    );

  wire clk_i;

// use an output DDR buffer to drive the lcok

   ODDRE1 #(
      .IS_C_INVERTED(1'b0),      // Optional inversion for C
      .IS_D1_INVERTED(1'b0),     // Unsupported, do not use
      .IS_D2_INVERTED(1'b0),     // Unsupported, do not use
      .SIM_DEVICE("ULTRASCALE"), // Set the device version (ULTRASCALE, ULTRASCALE_PLUS, ULTRASCALE_PLUS_ES1,
                                 // ULTRASCALE_PLUS_ES2, VERSAL, VERSAL_ES1, VERSAL_ES2)
      .SRVAL(1'b0)               // Initializes the ODDRE1 Flip-Flops to the specified value (1'b0, 1'b1)
   )
   ODDRE1_clk (
      .Q(clk_i),   // 1-bit output: Data output to IOB
      .C(fc_clk_i),   // 1-bit input: High-speed clock input
      .D1(1'h1), // 1-bit input: Parallel data input 1
      .D2(1'h0), // 1-bit input: Parallel data input 2
      .SR(1'h0)  // 1-bit input: Active High Async Reset
   );

   OBUFDS OBUFDS_clk (
      .O(fc_clk_o_p),   // 1-bit output: Diff_p output (connect directly to top-level port)
      .OB(fc_clk_o_n), // 1-bit output: Diff_n output (connect directly to top-level port)
      .I(clk_i)    // 1-bit input: Buffer input
   );

   reg sig_i;
   
   always @(posedge fc_clk_i) sig_i<=fc_sig_i;

   OBUFDS OBUFDS_sig (
      .O(fc_sig_o_p),   // 1-bit output: Diff_p output (connect directly to top-level port)
      .OB(fc_sig_o_n), // 1-bit output: Diff_n output (connect directly to top-level port)
      .I(sig_i)    // 1-bit input: Buffer input
   );
    
endmodule
