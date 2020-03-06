`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/13/2019 11:12:00 AM
// Design Name: 
// Module Name: capture_top
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


module capture_top
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
   output wire [31:0] data_out,
   
   // AXI parameters 
   input wire [8:0] delay_in,
   output wire [8:0] delay_out,
   input wire [31:0] align_pattern,
   input wire link_reset_request,
   output wire link_aligned,
   output wire [7:0] link_aligned_count,
   output wire [7:0] link_error_count,
   input wire [1:0] capture_mode_in,
   input wire L1A_in,
   input wire [11:0] L1A_offset_or_bx,
   input wire orbitSync,
   input wire aquire,
   input wire [12:0] aquire_length,
   output wire delay_ready,
   output wire waiting_for_trig,
   output wire writing,
   output wire [2:0] walign_state,
   
   //BRAM interface 
   input wire bram_clk,
   input wire bram_en,
   input wire [3:0] bram_we,
   input wire [12:0] bram_addr,
   input wire [31:0] bram_din,
   output wire [31:0] bram_dout,
   
   //global reset signal
   input wire rstb
   );
   
    wire [7:0] parallel_data;
    reg rstb_dly = 1;
    wire [31:0] data_160MHz;
   
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

    word_aligner walign (
        .clk160(clk160),
        .data_in(parallel_data),
        .data_out(data_160MHz),
        .data_out_valid(data_out_valid),
        .align_word(align_pattern),
        .aligned(link_aligned),
        .link_aligned_count(link_aligned_count),
        .link_error_count(link_error_count),
        .walign_state(walign_state),
        .link_reset(link_reset_request),
        .rstb(rstb_dly)
    );

    bram_ctrl bramCtrl(
        .clk160(clk160),
        .data_in(data_160MHz),
        .data_valid(data_out_valid),
        
        .clk40(clk40),
        .data_40MHz(data_out),
        .capture_mode_in(capture_mode_in),
        .L1A_in(L1A_in),
        .L1A_offset_or_bx(L1A_offset_or_bx),
        .orbitSync(orbitSync),
        .aquire(aquire),
        .aquire_length(aquire_length),
        .waiting_for_trig(waiting_for_trig),
        .writing(writing),
        
        .bram_clk(bram_clk),
        .bram_en(bram_en),
        .bram_we(bram_we),
        .bram_addr(bram_addr),
        .bram_din(bram_din),
        .bram_dout(bram_dout),
        
        .rstb(rstb)
    );
        
endmodule
