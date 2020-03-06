`timescale 1ns / 1ps

/**
 HDLC 16-bit output shift register

 Must handle this prescription:

An 8-bit frame delimiter flag (binary 01111110) is provided in the standard. The frame delimiter
is composed of six consecutive ‘1s’. The protocol assures that this combination is not found an-
ywhere else in the data bit-stream by any inserting a ‘0’ in any sequence of five consecutive ‘1’
at the transmitter side and by stripping off this trailing ‘0’ at the receiver side. When the receiver
detects the sequence "11111" in the data, it removes the "0" added by the transmitter.

  */

module hdlc_outputregister (
                            input        clk,
                            input        reset,
                            input [15:0] data_in,
                            input        data_in_isCTL,
                            output reg   serout,
                            output reg   data_consumed
                            );

   reg [15:0]                      sr;

   reg [3:0]                       counter;
   reg [2:0]                       ones_in_a_row;
	reg                             data_in_isCTL_latch;	
   wire inject_a_zero;

   assign inject_a_zero = (ones_in_a_row==3'h5); // this logic maybe should be ones_in_a_row==3'h4 && sr[0]

   always @(posedge clk)
     if (reset) counter<=4'h0;
     else if (inject_a_zero) counter<=counter;
     else counter<=counter+4'h1;

   reg                             load;

   always @(posedge clk) begin
      data_consumed<=load;
      load<=(counter==4'hf && !inject_a_zero);
   end

   always @(posedge clk)
     if (data_in_isCTL_latch || reset) ones_in_a_row<=3'h0; // not counting!
     else if (inject_a_zero) ones_in_a_row<=3'h0;
     else if (!sr[0]) ones_in_a_row<=3'h0;
     else ones_in_a_row<=ones_in_a_row+3'h1;

   always @(posedge clk)
     if (load && inject_a_zero) sr<=sr;
     else if (load) sr<=data_in;
     else if (inject_a_zero) sr<=sr;
     else sr<={1'h0,sr[15:1]};
	  
	always @(posedge clk)
	  if (load) data_in_isCTL_latch<=data_in_isCTL;
	  else data_in_isCTL_latch<=data_in_isCTL_latch;

   always @(posedge clk)
     if (inject_a_zero) serout<=1'h0;
     else serout<=sr[0];
   
   
   
endmodule // hdlc_outputregister
