//down counter 3 bits 7 to 0
//for 40MHz decoding inside fast_command
//21.09.2018: created by M.El Berni, F.Dulucq

//24.09.2018: v6a: down counter , load 000 value if clk_sync_tx = 1'b1 and count_down = 3'b001 
//28.09.2018: stable version, simulation rtl, postsyn and postlayout+sdf OK
//28.09.2018: v7: sync_err flag=1 if no more Clk_sync_tx occurs,allow one more 40 MHz period,if still no sync for 40 MHz the Clk_40_decod signal stops
//17.10.2018: v7b: sync_err tested on output to avoid clk_40 running first false clk_sync_tx with start signal activated when 2 clk_sync_tx counted in testbench
//22.10.2018: new module name clk40_decoder
//08.11.2018: v2: sync_err not defined in some cases -> security using set to 1 in defined cases and Voted in other cases

module clk40_decoder_v2 (
		input n_reset,
		input en, 		//clk synchronization signal definig rising edge clock 40 MHz
		input clk,		// master clk 320 MHz
		output reg Clk_40_decod, //clock 40 MHz with phase adjusted
		output reg sync_err
);

// tmrg default triplicate
// tmrg triplicate start


reg [2:0] count_down;
wire start;

wire [2:0] count_downVoted = count_down;

//reg sync_err;
wire sync_errVoted = sync_err; // flag=1 if no more Clk_sync_tx occurs
//allow one more 40 MHz period
//if still no sync for 40 MHz the Clk_40_decod signal stops




/***********************      modules   *******************/

clk40_decoder_FSM clk40_decoder_FSM_inst(
								.n_reset (n_reset),
								.clk (clk),
								.clk_sync_tx(en),
								.start(start)								
								);

/***********************                *******************/


always @(posedge clk or negedge n_reset)

begin

  if (!n_reset)
    begin
    count_down <= 3'b000;
    sync_err   <= 1'b1;
    end

  else 
    begin
    
    if (!start) 
	begin
	count_down <= 3'b000;
 	sync_err   <= 1'b1;
//	sync_err   <= sync_errVoted;
	end
    else

    begin
    
      if (count_down==3'b000)
      begin
  	if (en)
	begin
	sync_err   <= 1'b0;
	count_down <= 3'b111;
  	end
	
	else  	if (sync_err) 		//error detected on Clk_sync_tx
   		begin
		count_down <= 3'b000;	//wait until next Clk_sync_tx pulse
		sync_err   <= sync_errVoted;
		end

		else
		begin
		count_down <= 3'b111;	//reload counter_down adding one more 40 MHz period 
		sync_err   <= 1'b1;	//error detected on Clk_sync_tx
		end
        end

      else     begin
	       count_down <= count_downVoted - 1'b1;
	       sync_err   <= sync_errVoted;
	       end

      end
    
    end

end

//One more clk320 sync for Clk 40MHz
always @(posedge clk or negedge n_reset )
begin
    if (!n_reset) 	Clk_40_decod   <= 1'b0;
    else 		Clk_40_decod   <= count_down[2];
end

endmodule
