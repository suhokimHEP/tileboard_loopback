// Author : M. EL BERNI @ OMEGA
// clk40_decoder  State machine 
// 18.10.2018

module clk40_decoder_FSM (
	input  n_reset,
	input  clk,
	input  clk_sync_tx,
	
	output start
);

// tmrg default triplicate

//=========== Internal Constant ===========

localparam [1:0] IDLE		= 2'b00;
localparam [1:0] SYNC_TX_1	= 2'b01;
localparam [1:0] SYNC_TX_2	= 2'b11;
localparam [1:0] START_CLK	= 2'b10; 

    
//=============State machine registers======================
reg  [1:0]   state, nxtState;
// Assignments for triplication scripts
wire [1:0]   nxtStateVoted    =    nxtState;


//=============Comb Out Logic======================
assign start = (state == START_CLK) ? 1'b1:1'b0;

//=============Seq Logic======================
always @ (posedge clk or negedge n_reset)
begin : FSM_SEQ
  if (n_reset == 1'b0) 	state <= #2 IDLE;
  
  else 			state <= #2 nxtStateVoted;
  
end


//=============Comb Logic======================
always @(*)
begin : FSM_COMB 
 nxtState = IDLE;
 case (state)

  IDLE : begin
  if (clk_sync_tx) nxtState = SYNC_TX_1;
  else  nxtState = IDLE;
  end

  SYNC_TX_1: begin
  if (clk_sync_tx) nxtState = SYNC_TX_2;
  else  nxtState = SYNC_TX_1;
  end

  SYNC_TX_2: begin
  if (clk_sync_tx) nxtState = START_CLK;
  else  nxtState = SYNC_TX_2;
  end

  START_CLK: nxtState = START_CLK;

  default : nxtState = IDLE;

 endcase

end 


endmodule
