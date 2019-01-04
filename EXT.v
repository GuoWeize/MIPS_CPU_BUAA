`timescale 1ns / 1ps
`include "Macro.v"
//////////////////////////////////////////////////////////////////////////////////
module EXT(
    input [31:0] IR,
    input EXTop,
    output [31:0] EXTout
    );
	 
	 wire [15:0] imm16;
	 
	 //ÓÐ·ûºÅ1 ÎÞ·ûºÅ0
	 assign
	 imm16[15:0]=IR[15:0],
	 EXTout[15:0]=imm16[15:0],
	 EXTout[16]=imm16[15]&EXTop,
	 EXTout[17]=imm16[15]&EXTop,
	 EXTout[18]=imm16[15]&EXTop,
	 EXTout[19]=imm16[15]&EXTop,
	 EXTout[20]=imm16[15]&EXTop,
	 EXTout[21]=imm16[15]&EXTop,
	 EXTout[22]=imm16[15]&EXTop,
	 EXTout[23]=imm16[15]&EXTop,
	 EXTout[24]=imm16[15]&EXTop,
	 EXTout[25]=imm16[15]&EXTop,
	 EXTout[26]=imm16[15]&EXTop,
	 EXTout[27]=imm16[15]&EXTop,
	 EXTout[28]=imm16[15]&EXTop,
	 EXTout[29]=imm16[15]&EXTop,
	 EXTout[30]=imm16[15]&EXTop,
	 EXTout[31]=imm16[15]&EXTop;
	 
	 
endmodule
