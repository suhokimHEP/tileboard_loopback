`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2019 03:10:42 PM
// Design Name: 
// Module Name: loopback_top
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


module loopback_top
 # (
     parameter delay_init = 0
     )
  (
   //input clocks 
   input wire clk640,
   input wire clk160,
   input wire clk40,
   
   //data i/o
   input wire link_data,
   
   // AXI parameters 
   input wire [8:0] delay_in,
   output wire [8:0] delay_out,
   output wire link_aligned,
   output wire [31:0] link_aligned_count,
   output wire [31:0] link_error_count,
   output wire delay_ready,
   input wire stop,

   //global reset signal
   input wire rstb,
   input wire inverted
   );
   
      
    wire [7:0] parallel_data;
    (* KEEP="TRUE" *) reg [7:0] data_d1, data_d2;
    reg rstb_dly = 1;
    wire [7:0] invert;
    assign invert = {inverted,inverted,inverted,inverted,inverted,inverted,inverted,inverted};
    // reset filter for the benefit of IDELAY
    always @(posedge clk160)
        rstb_dly <= rstb;

   deserializer # (
     .delay_init(delay_init)
     )
    deser
   (
    .clk640(clk640),
    .clk160(clk160),
    .serial_data(link_data),
    .parallel_data(parallel_data),
    .delay_in(delay_in),
    .delay_out(delay_out),
    .delay_ready(delay_ready),
    .rstb(rstb_dly)
    ); 
    
    always@(posedge clk160) begin
    data_d1 <= parallel_data^invert;
    data_d2 <= data_d1;
    end
    
    prbs15_byteber uut(
    .clk(clk160),
    .data_in(data_d2),
    .reset(~rstb_dly),
    .bit_errors(link_error_count),
    .stop(stop),
    .locked(link_aligned),
    .bit_aligned_count(link_aligned_count)
    ); 
   
endmodule

