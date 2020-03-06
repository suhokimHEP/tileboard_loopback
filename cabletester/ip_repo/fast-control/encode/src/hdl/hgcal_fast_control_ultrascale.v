//                              -*- Mode: Verilog -*-
// Filename        : hgcal_fast_control_ultrascale.v
// Description     : Output formatter for an Ultrascale or Ultrascale+ Xilinx FPGA
// Author          : Jeremiah Mans
// Created On      : Thu Dec 20 14:33:59 2018
// Last Modified By: Jeremiah Mans
// Last Modified On: Thu Dec 20 14:33:59 2018
// Update Count    : 0
// Status          : Unknown, Use with caution!

module hgcal_fast_control_ultrascale ( input clk40, 
				       input 	   clk160,
				       input 	   clk320,
				       input [7:0] command,
				       output 	   fc_elink,
				       output 	   fc_clk) ;
   
// use an OSERDESE3 to serialize the command


// use an ODDRE1 to replicate the 320 MHz clock


   
endmodule // hgcal_fast_control_ultrascale
