`timescale 1ns / 1ps
`include "Macro.v"
//////////////////////////////////////////////////////////////////////////////////
module MUXRTD(
	 input [31:0] RTD_RB,
    input [31:0] RTD_ALU,
    input [31:0] RTD_MUX,
	 input [31:0] RTD_ALUin,
    input [1:0] sel,
    output [31:0] RTD
    );
	 
	 assign RTD = 
	 (sel==`RTD_RB)?(RTD_RB):
	 (sel==`RTD_ALU)?(RTD_ALU):
	 (sel==`RTD_MUX)?(RTD_MUX):
	 (sel==`RTD_ALUin)?(RTD_ALUin):(RTD_RB);
	 
endmodule
