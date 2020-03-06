// Author : F. DULUCQ @ OMEGA
// Reset synchronizer
//
// Synchronize reset on 40 MHz clock

module ResetSync (
	input  resetb,
	input  clk,
	output RstSync_b
);

//////////////////////////////////
// SYNC active low reset
//////////////////////////////////
reg [1:0]   ResetSync_reg;
assign      RstSync_b = ResetSync_reg[1];

  always @(negedge resetb or posedge clk) begin
    if(!resetb) begin
      ResetSync_reg <= 2'b00;
    end else begin
      ResetSync_reg <= {ResetSync_reg[0], 1'b1};
    end
  end


endmodule
