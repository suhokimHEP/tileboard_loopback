`timescale 1ns / 1ps
/**
 HDLC 16-bit input shift register

 Must handle this prescription:

  (1) Wait until it sees an SOF
  (2) Shift data in, correcting for "extra zeros", until 16 _output_ bits are accumulated
  (3) If an EOF is received in that period, immediately stop processing (go back to looking for an SOF), and indicate "end-of-frame" on an output of the module.
  (4) Once 16 output bits are accumulated, transfer to the module output register and indicate that "data is valid".
  (5) The outside world should be able to send a signal to the register saying "data taken" which would return the "data is valid" signal back to zero.
  (6) There should be an operational requirement that the external firmware must deal with a new valid word within ~8 clock ticks.
  (7) If a frame is not read from output register before the next frame overwrites it, then the overflow bit is set to 1.

*/

module hdlc_inputregister(
                              input        clk,
                              input        data_in,
                              input        data_consumed_from_outputRegister,
                              input        reset,
                              output reg [15:0] outputRegister,
                              output reg   data_is_valid,
                              output EOF_or_abort,
			      output reg   overflow
    );
  

           
     //Filling the shift register
    reg [4:0]                       inputCounter;
    reg [8:0]                       sr_in;
    reg                             stuffed;
    reg [15:0]                      sr_out;
    reg                             FRAME_ACTIVE;
    reg                             abort;
    reg EOF;
         
//    assign probe[0]=FRAME_ACTIVE;
//    assign probe[1]=stuffed;
         
    always @(posedge clk)
        sr_in<={data_in,sr_in[8:1]};

    //Looking for stuffed bit        
    always @(posedge clk)
        stuffed<=(sr_in[8:2]==7'b0111110);

    always @(posedge clk)begin
        if (abort || reset || EOF) FRAME_ACTIVE<=0;
        else if(sr_in[7:0]==8'b01111110)FRAME_ACTIVE<=1;//Looking for the SOF
        else FRAME_ACTIVE<=FRAME_ACTIVE;
    end

    always @(posedge clk)
        if (sr_in[7:0]==8'b01111110) inputCounter<=0;//Start the input counter at 0 when SOF received.
        else if(abort || reset || EOF) inputCounter<=0;
        else if(inputCounter==5'd16 && ~stuffed) inputCounter<=1;
        else if(~stuffed && FRAME_ACTIVE) inputCounter<=inputCounter+1;
        else inputCounter<=inputCounter;
        
        
    always @(posedge clk)begin
        if (reset) abort<=0;
        else if (FRAME_ACTIVE && sr_in[8:2]==7'b1111111) abort<=1;//Looking for frame abort
        else abort<=0;
    end
        
    always @(posedge clk)begin
        if (~stuffed && FRAME_ACTIVE) sr_out<={sr_in[7],sr_out[15:1]};
        else sr_out<=sr_out;
    end

    //Passing 16 bit word to output register    
    always @(posedge clk)
        if(inputCounter==5'd16 && ~stuffed) outputRegister<=sr_out;
        else outputRegister<=outputRegister;
        
     always @(posedge clk) begin
        if (reset) EOF<=0;
        else if (FRAME_ACTIVE && sr_in[8:1]==8'b01111110) EOF<=1;//Looking for EOF
        else if (FRAME_ACTIVE) EOF<=0;
        else EOF<=EOF;
     end
           
    always @(posedge clk)begin
      if (data_consumed_from_outputRegister) data_is_valid<=0;
      else if (inputCounter==5'd16 && ~stuffed) data_is_valid<=1;
      else if (abort || reset) data_is_valid<=0;
      else data_is_valid<=data_is_valid;
    end

    //overflow bit lets consumer know a frame was not read from output
    //register in time
    always @(posedge clk)begin
      if(data_is_valid == 1 && inputCounter==16 && ~stuffed)overflow<=1;
      else if(abort || reset)overflow<=0;
      else overflow<=overflow;
    end
    
    assign EOF_or_abort=EOF || abort;
    
endmodule
