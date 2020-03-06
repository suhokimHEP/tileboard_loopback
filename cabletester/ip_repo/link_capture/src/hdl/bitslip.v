`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/17/2019 09:47:28 AM
// Design Name: 
// Module Name: bitslip
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


module bitslip(
        input wire clk160,
        input wire [7:0] data,
        input wire [31:0] compVal,
        output reg [31:0] dataOut,
        output reg match,
        input wire en,
        input wire rstb 
    );
    
    reg [47:0] data_shiftIn;
    reg [31:0] data_word [7:0];
    reg [7:0] data_match = 0;
    
    wire [7:0] data_bitFlip;
    
    generate
        genvar iBit;
        for(iBit = 0; iBit < 8; iBit = iBit + 1)
        begin
            assign data_bitFlip[iBit] = data[7-iBit];
        end
    endgenerate
    
    always @(posedge clk160 or negedge rstb)
    begin
        if(!rstb) data_shiftIn <= 0;
        else      data_shiftIn <= {data_shiftIn[39:0], data_bitFlip};
    end
    
    reg [7:0] last_dataMatch = 0;
    
    always @(posedge clk160 or negedge rstb)
        if(!rstb) last_dataMatch <= 0;
        else 
            if(data_match) last_dataMatch <= data_match;
    
    generate
    genvar i;
    for(i = 0; i < 8; i = i + 1)
    begin : loopvar
        always @(posedge clk160 or negedge rstb)
        begin
            if(!rstb)
            begin
                data_match[i] <= 0;
                data_word[i] <= 0;
            end
            else
            begin
                if(en) data_match[i] <= (data_shiftIn[8 + i +: 32] == compVal);
                else   data_match[i] <= last_dataMatch[i];
                data_word[i]  <=  data_shiftIn[8 + i +: 32];
            end
        end
    end
    endgenerate
        
    always @(posedge clk160 or negedge rstb)
    begin
        if(!rstb)
        begin
            dataOut <= 0;
            match <= 0;
        end
        else
        begin
            case(data_match)
                default: 
                begin
                    dataOut <= 0;
                    match <= 0;
                end
                8'b00000001: 
                begin
                    dataOut <= data_word[0];
                    match <= 1;
                end
                8'b00000010: 
                begin
                    dataOut <= data_word[1];
                    match <= 1;
                end
                8'b00000100: 
                begin
                    dataOut <= data_word[2];
                    match <= 1;
                end
                8'b00001000: 
                begin
                    dataOut <= data_word[3];
                    match <= 1;
                end
                8'b00010000: 
                begin
                    dataOut <= data_word[4];
                    match <= 1;
                end
                8'b00100000: 
                begin
                    dataOut <= data_word[5];
                    match <= 1;
                end
                8'b01000000: 
                begin
                    dataOut <= data_word[6];
                    match <= 1;
                end
                8'b10000000: 
                begin
                    dataOut <= data_word[7];
                    match <= 1;
                end
            endcase
        end
    end
    
endmodule
