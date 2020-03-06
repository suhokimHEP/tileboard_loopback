`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/16/2019 04:56:41 PM
// Design Name: 
// Module Name: word_aligner
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


module word_aligner(
        input wire clk160,
        input wire [7:0] data_in,
        output reg [31:0] data_out,
        output reg data_out_valid,
        input wire [31:0] align_word,
        output wire aligned,
        output reg [7:0] link_aligned_count,
        output reg [7:0] link_error_count,
        output wire [2:0] walign_state,
        input wire link_reset,
        input wire rstb
    );
    
    reg realign_resetb = 1;
    reg enableWordAlign = 0;
    
    ////// bitslip logic to align bytes/words 
    
    wire [31:0] data_byteAligned;
    
    bitslip bslip(
        .clk160(clk160),
        .data(data_in),
        .compVal(align_word),
        .dataOut(data_byteAligned),
        .match(aligned),
        .en(enableWordAlign),
        .rstb(rstb) 
    );
    
    ////// byte alignment logic 
    
    reg [1:0] byte_index = 0;
    reg [1:0] byte_align_index = 0;
    reg [7:0] byte_align_count [3:0];
    reg [31:0] data_wordAligned [3:0];
    
    always @(posedge clk160 or negedge rstb)
    begin
        if(!rstb)
        begin
            data_out <= 0;
        end
        else
        begin
            if(byte_index == 2'b0) data_out <= data_wordAligned[byte_align_index];
            else                   data_out <= data_out;
        end
    end
    
    always @(posedge clk160) 
    begin
        if(byte_index == 2'b0) data_out_valid <= 1;
        else                   data_out_valid <= 0;
    end 
    
    integer i;
    always @(posedge clk160 or negedge rstb)
    begin
        if(!rstb)
        begin
            byte_index <= 0;
            for(i = 0; i < 4; i = i + 1)
            begin
                byte_align_count[i] <= 0;
                data_wordAligned[i] <= 0;
            end
        end
        else
        begin
            byte_index <= byte_index + 1;
            if(enableWordAlign && aligned)
            begin
                byte_align_index <= byte_index;
                if(!(&byte_align_count[byte_index])) byte_align_count[byte_index] <= byte_align_count[byte_index] + 1;
            end
            data_wordAligned[byte_index] <= data_byteAligned;
        end
    end
    
        // link resync state machine
    localparam ALIGN_STATE_IDLE  = 3'd0;
    localparam ALIGN_STATE_RESET = 3'd1;
    localparam ALIGN_STATE_SETUP = 3'd2;
    localparam ALIGN_STATE_WAIT  = 3'd3;
    localparam ALIGN_STATE_COUNT = 3'd4;
    
    reg [2:0] align_state = ALIGN_STATE_IDLE;
    reg [2:0] link_reset_request_SR = 0;
    reg [1:0] link_byte_ctr = 0;
    
    assign walign_state = align_state;
    
    always @(posedge clk160 or negedge rstb)
    begin
        if(!rstb) link_reset_request_SR <= 0; 
        else      link_reset_request_SR <= {link_reset_request_SR[1:0], link_reset};
    end
    
    always @(posedge clk160 or negedge rstb)
    begin
        if(!rstb)
        begin
            align_state <= ALIGN_STATE_IDLE;
            realign_resetb <= 1;
            enableWordAlign <= 0;
            link_aligned_count <= 0;
            link_error_count <= 0;
            link_byte_ctr <= 0;
        end
        else
        case(align_state)
            ALIGN_STATE_IDLE:
            begin
                realign_resetb <= 1;
                enableWordAlign <= 0;
                if(link_reset_request_SR == 3'b001) align_state <= ALIGN_STATE_RESET;
            end
            ALIGN_STATE_RESET:
            begin
                align_state <= ALIGN_STATE_SETUP;
                realign_resetb <= 0;
                link_aligned_count <= 0;
                link_error_count <= 0;
            end
            ALIGN_STATE_SETUP:
            begin
                align_state <= ALIGN_STATE_WAIT;
                realign_resetb <= 1;
            end
            ALIGN_STATE_WAIT:
            begin
                link_byte_ctr <= 2'b1;
                enableWordAlign <= 1;
                if(aligned) align_state <= ALIGN_STATE_COUNT;
            end
            ALIGN_STATE_COUNT:
            begin
                if(link_aligned_count >= 8'd128 || link_error_count >= 8'hff) align_state <= ALIGN_STATE_IDLE;
                link_byte_ctr <= link_byte_ctr + 1;
                if(!(|link_byte_ctr))
                begin
                    if(aligned) link_aligned_count <= link_aligned_count + 1;
                    else        link_error_count <= link_error_count + 1;
                end
            end
        endcase
    end

    
endmodule
