// Author : M. EL BERNI @ OMEGA
// Fast Commands decoding module + Clk 40 MHz generation
// 12.10.2018 v1: 
// created on 12.10.2018

/*Table: Encoding of the fast control signals on the 320 MHz data stream. 15.04.2018 specifications
-----------------------------------------------------------------------------------------------------
		         b7        b0
Idle 			  110 0000 1		
OrbitSync 		  110 0001 1	Signal sent once per orbit to provide overall synchronization
L1A-Normal 		  110 0010 1	Event at the end of the pipeline with normal readout, with zero suppression normalL1A-Normal+OrbitSync 	  110 0011 1	
L1A-Full 		  110 0100 1	Event at the end of the pipeline with no threshold
L1A-Full+OrbitSync 	  110 0101 1

Forbidden due to 	  110 1100 1

OrbitCountReset+OrbitSync 110 0111 1	Causes the orbit counter used for tracking event flow to be reset to zero.
CalibrationReq 		  110 1000 1	Initiates the generation of an internal or external pulse for calibration purposes.
CalibrationL1A+L1A-Normal 110 1001 1	Always distributed along with an L1A, HGCROC should mark this event with the current calibration event type as configured by slow-control.
CalibrationL1A+L1A-Full   110 1010 1

Unassigned 		  110 1011 1

Forbidden due to 110 	  110 1100 1
Forbidden due to 110 	  110 1101 1
Forbidden due to 110 	  110 1110 1

Resync 			  110 1111 1	Clear all event and data buffers and reset all event counters. Required at beginning of run and whenever the system loses event synchronization.
-------------------------------------------------------------------------------------------------*/

`timescale 1ns / 1ps

module fast_cmd_clk40_decoder (

	input   clk320,                     	// System clock 320MHz
	input   command_rx,                 	// T1 serial input
	input   n_rstExt,                     	// Input asynchronous reset
	input   EdgeSel_T1,

	output	clk40_out,			//clk40Mhz decoded from fastcommand
	output  OrbitSync,                 	//fast command pulse 
	output  L1A_Normal,            		//fast command pulse 
	output  L1A_Full,            		//fast command pulse 
	output  OrbitCountReset_OrbitSync,  	//fast command pulse
	output  CalibrationReq,       		//fast command pulse
	output  CalibrationL1A,  		//fast command pulse
	output  ReSync  			//fast command pulse
	);


// tmrg default triplicate

// tmrg do_not_triplicate EdgeSel_T1
// tmrg do_not_triplicate clk40_out
// tmrg do_not_triplicate OrbitSync
// tmrg do_not_triplicate L1A_Normal
// tmrg do_not_triplicate L1A_Full
// tmrg do_not_triplicate OrbitCountReset_OrbitSync
// tmrg do_not_triplicate CalibrationReq
// tmrg do_not_triplicate CalibrationL1A
// tmrg do_not_triplicate ReSync

wire RstSync_b;
wire Clksync_tx;
wire clk40_div;

assign clk40_out = clk40_div;

/********************************************************************/
/***********************      taches et modules   *******************/
/********************************************************************/

//reset synchronisation
ResetSync 		ResetSync_inst(
				.resetb		(n_rstExt),
				.clk		(clk320),
				.RstSync_b	(RstSync_b)
				);

//fast commands decoding
fast_cmd_decoder   	fast_cmd_decoder_inst(
			     	.clk320 			(clk320),
			     	.command_rx			(command_rx),
			     	.n_rstExt			(RstSync_b),			 
			    	.EdgeSel_T1			(EdgeSel_T1),
			    	.Clk_40_tx			(clk40_div),          
			     	.Clksync_tx			(Clksync_tx),
			    	.cmd_OrbitSync			(OrbitSync),
			    	.cmd_L1A_Normal			(L1A_Normal),
			    	.cmd_L1A_Full			(L1A_Full),
			   	.cmd_OrbitCountReset		(OrbitCountReset_OrbitSync),
 			   	.cmd_CalibrationReq		(CalibrationReq),
  			   	.cmd_CalibrationL1A		(CalibrationL1A),
 			   	.cmd_ReSync			(ReSync)
			     	);

//clk 40MHz generation
clk40_decoder_v2 		clk40_decoder_inst(
				.n_reset	(RstSync_b),
				.en		(Clksync_tx),
				.clk		(clk320),
				.Clk_40_decod	(clk40_div)
				);

endmodule
