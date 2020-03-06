`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/20/2019 04:08:30 PM
// Design Name: 
// Module Name: bram_ctrl
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


module bram_ctrl(
        input wire clk160,
        input wire [31:0] data_in,
        input wire data_valid,
        
        input wire clk40,
        output wire [31:0] data_40MHz,
        input wire [1:0] capture_mode_in,
        input wire L1A_in,
        input wire [11:0] L1A_offset_or_bx,
        input wire orbitSync,
        input wire aquire,
        input wire [12:0] aquire_length,
        output reg waiting_for_trig,
        output wire writing,
        
        input wire bram_clk,
        input wire bram_en,
        input wire [3:0] bram_we,
        input wire [12:0] bram_addr,
        input wire [31:0] bram_din,
        output wire [31:0] bram_dout,
        
        input wire rstb
    );
        
    wire fifo_empty;
    wire fifo_full;
    wire wr_rst_busy;
    wire rd_rst_busy;
    
    //proper transition from 160 to 40MHz clock domain
    word_fifo wfifo (
        .srst(!rstb),
        .wr_clk(clk160),
        .rd_clk(clk40),
        .din(data_in),
        .wr_en(data_valid && !fifo_full  && !wr_rst_busy),
        .rd_en(!fifo_empty && !rd_rst_busy),
        .dout(data_40MHz),
        .full(fifo_full),
        .empty(fifo_empty),
        .wr_rst_busy(wr_rst_busy),
        .rd_rst_busy(rd_rst_busy)
    );
    
    //Orbit counter
    reg [11:0] orbit_cnt = 0;
    
    always @(posedge clk40)
    begin
        if(orbitSync) orbit_cnt <= 0;
        else          orbit_cnt <= orbit_cnt + 1;
    end
    
    //aquire edge detect
    reg [2:0] aquire_sr = 0;
    always @(posedge clk40 or negedge rstb)
    begin
        if(!rstb) aquire_sr = 0;
        else      aquire_sr = {aquire_sr[1:0], aquire};
    end
    
    reg fsm_ram_en = 0;
    reg [3:0] fsm_ram_we = 4'b0;
    reg [12:0] fsm_ram_addr = 0;
    reg [31:0] fsm_data_in = 0;
    
    //capture modes
    localparam CAPTURE_MODE_IDLE     = 2'd0;
    localparam CAPTURE_MODE_BX       = 2'd1;
    localparam CAPTURE_MODE_L1A      = 2'd2;
    localparam CAPTURE_MODE_IMEDIATE = 2'd3;
    
    reg [1:0] capture_mode = CAPTURE_MODE_IDLE;

    //control fsm states
    localparam STATE_IDLE    = 3'd0;
    localparam STATE_LATCH   = 3'd1;
    localparam STATE_TRIGGER = 3'd2;
    localparam STATE_DELAY   = 3'd3;
    localparam STATE_START   = 3'd4;
    localparam STATE_AQUIRE  = 3'd5;

    reg [2:0] fsm_state = STATE_IDLE;
    reg [11:0] l1a_delay_ctr = 0;
    reg [12:0] aquire_length_hold = 0;

    always @(posedge clk40 or negedge rstb)
    begin
        if(!rstb)
        begin
            fsm_state <= STATE_IDLE;
            l1a_delay_ctr <= 0;
            fsm_ram_we <= 0;
            fsm_ram_addr <= 0;
            waiting_for_trig <= 0;
            aquire_length_hold <= 0;
        end
        else
        case(fsm_state)
            STATE_IDLE:
            begin
                l1a_delay_ctr <= 0;
                fsm_ram_we <= 0;
                fsm_ram_addr <= 0;
                waiting_for_trig <= 0;
                if(aquire_sr == 3'b001) fsm_state <= STATE_LATCH;
            end
            STATE_LATCH:
            begin
                fsm_state <= STATE_TRIGGER;
                capture_mode <= capture_mode_in;
                aquire_length_hold <= aquire_length;
            end
            STATE_TRIGGER:
            begin
                waiting_for_trig <= 1;
                case(capture_mode)
                    CAPTURE_MODE_IDLE:
                        fsm_state <= STATE_IDLE;
                    CAPTURE_MODE_BX:
                    begin
                        if(orbit_cnt == L1A_offset_or_bx)
                            fsm_state <= STATE_START;
                    end
                    CAPTURE_MODE_L1A:
                    begin
                        if(L1A_in)
                            fsm_state <= STATE_DELAY;
                    end
                    CAPTURE_MODE_IMEDIATE:
                        fsm_state <= STATE_START;
                endcase
            end
            STATE_DELAY:
            begin
                l1a_delay_ctr <= l1a_delay_ctr + 1;
                if(l1a_delay_ctr == L1A_offset_or_bx)
                    fsm_state <= STATE_START;
            end
            STATE_START:
            begin
                fsm_state <= STATE_AQUIRE;
                waiting_for_trig <= 0;
                fsm_ram_we <= 4'b1111;
            end
            STATE_AQUIRE:
            begin
                fsm_ram_addr <= fsm_ram_addr + 1;
                if(&(fsm_ram_addr + 1) || ((fsm_ram_addr + 1) == aquire_length_hold))
                begin
                    fsm_ram_we <= 0;
                    fsm_state <= STATE_IDLE;
                end
            end
        endcase
    end
    
    assign writing = |fsm_ram_we;
    
    blk_mem_data bram (
        .clka(clk40),
        .ena(1),
        .wea(fsm_ram_we),
        .addra(fsm_ram_addr),
        .dina(data_40MHz),
        .douta(),  //not connected
        .clkb(bram_clk),
        .enb(bram_en),
        .web(bram_we),
        .addrb(bram_addr),
        .dinb(bram_din),
        .doutb(bram_dout)
    );
    
endmodule
