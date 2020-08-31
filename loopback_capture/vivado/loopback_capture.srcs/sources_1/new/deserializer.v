`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/16/2019 04:32:01 PM
// Design Name: 
// Module Name: deserializer
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


module deserializer
  # (
     parameter delay_init = 0
     )
   (
    input wire clk640,
    input wire clk160,
    input wire serial_data,
    output wire [7:0] parallel_data,
    input wire [8:0] delay_in,
    output wire [8:0] delay_out,
    output reg delay_ready,
    input wire rstb
    );
    
    wire link_data_delay; 
    reg delay_wr = 0;
    reg [8:0] delay_set = 0;
    
    IDELAYE3 #(
      .CASCADE("NONE"),
      .DELAY_FORMAT("COUNT"),
      .DELAY_SRC("IDATAIN"),
      .DELAY_TYPE("VAR_LOAD"),
      .DELAY_VALUE(delay_init),
      .IS_CLK_INVERTED(0),
      .IS_RST_INVERTED(1),
      .UPDATE_MODE("ASYNC"),
      .SIM_DEVICE("ULTRASCALE_PLUS")
      )
      idelay     
    (
     .CASC_OUT(),
     .CNTVALUEOUT(delay_out),
     .DATAOUT(link_data_delay),
     .CASC_IN(0),
     .CASC_RETURN(0),
     .CE(0),
     .CLK(clk160),
     .CNTVALUEIN(delay_set),
     .DATAIN(0),
     .EN_VTC(0),
     .IDATAIN(serial_data),
     .INC(0),
     .LOAD(delay_wr),
     .RST(rstb)
     );
   
    ISERDESE3  #(
      .DATA_WIDTH(8),
      .FIFO_ENABLE("FALSE"),
      .FIFO_SYNC_MODE("FALSE"),
      .IS_CLK_B_INVERTED(1),
      .IS_CLK_INVERTED(0),
      .IS_RST_INVERTED(1),
      .SIM_DEVICE("ULTRASCALE_PLUS")
      )
      iserdes_inst
    (
     .FIFO_EMPTY(),
     .INTERNAL_DIVCLK(),
     .Q(parallel_data),
     .CLK(clk640),
     .CLK_B(clk640),
     .CLKDIV(clk160),
     .D(link_data_delay),
     .FIFO_RD_CLK(0),
     .FIFO_RD_EN(0),
     .RST(rstb)
     );
    
    // state machine to govern setting IDELAY delay setting
    // because this cannot be changed by more than 8 at a time
    localparam STATE_IDELAY_IDLE    = 4'h0;
    localparam STATE_IDELAY_RD_CNT  = 4'h1;
    localparam STATE_IDELAY_CHK_CNT = 4'h2;
    localparam STATE_IDELAY_CALC    = 4'h3;
    localparam STATE_IDELAY_SET_CNT = 4'h4;
    localparam STATE_IDELAY_WAIT1   = 4'h5;
    localparam STATE_IDELAY_WAIT2   = 4'h6;
    localparam STATE_IDELAY_WAIT3   = 4'h7;
    localparam STATE_IDELAY_WAIT4   = 4'h8;
    
    reg [3:0] idelay_state = STATE_IDELAY_IDLE;
    reg [8:0] idelay_cnt_read_hold = 0;
    reg [8:0] idelay_cnt_write_hold = 0;
    
    always @(posedge clk160 or negedge rstb)
    begin
        if(!rstb)
        begin
            idelay_state <= STATE_IDELAY_IDLE;
            delay_wr <= 0;
            delay_ready <= 0;
        end
        else
        case(idelay_state)
            STATE_IDELAY_IDLE:
            begin
                idelay_state <= STATE_IDELAY_RD_CNT;
            end
            STATE_IDELAY_RD_CNT:
            begin
                idelay_state <= STATE_IDELAY_CHK_CNT;
                idelay_cnt_read_hold <= delay_out;
                idelay_cnt_write_hold <= delay_in;
            end
            STATE_IDELAY_CHK_CNT:
            begin
                if(idelay_cnt_read_hold == idelay_cnt_write_hold)
                begin
                    idelay_state <= STATE_IDELAY_IDLE;
                    delay_ready <= 1;
                end
                else
                begin
                    idelay_state <= STATE_IDELAY_CALC;
                    delay_ready <= 0;
                end
            end
            STATE_IDELAY_CALC:
            begin
                idelay_state <= STATE_IDELAY_SET_CNT;
                if(idelay_cnt_write_hold > idelay_cnt_read_hold)
                begin
                    if(idelay_cnt_write_hold - idelay_cnt_read_hold >= 8)
                    begin
                        delay_set <= idelay_cnt_read_hold + 8;
                    end
                    else
                    begin
                        delay_set <= idelay_cnt_write_hold;
                    end
                end
                else
                begin
                    if(idelay_cnt_read_hold - idelay_cnt_write_hold >= 8)
                    begin
                        delay_set <= idelay_cnt_read_hold - 8;
                    end
                    else
                    begin
                        delay_set <= idelay_cnt_write_hold;
                    end
                end
            end
            STATE_IDELAY_SET_CNT:
            begin
                idelay_state <= STATE_IDELAY_WAIT1;
                delay_wr <= 1;
            end
            STATE_IDELAY_WAIT1:
            begin
                idelay_state <= STATE_IDELAY_WAIT2;
                delay_wr <= 0;
            end
            STATE_IDELAY_WAIT2: idelay_state <= STATE_IDELAY_WAIT3;
            STATE_IDELAY_WAIT3: idelay_state <= STATE_IDELAY_WAIT4;
            STATE_IDELAY_WAIT4: idelay_state <= STATE_IDELAY_IDLE;
            default: idelay_state <= STATE_IDELAY_IDLE;
        endcase
    end
    
endmodule

