`timescale 1ns / 1ps
`include "Macro.v"
//////////////////////////////////////////////////////////////////////////////////
module ALU(
    input [31:0] A,
    input [31:0] B,
    input [31:0] IR,
	 input [3:0] op,
    output [31:0] out
    );
	 
	 wire [4:0] Shift,s;
	 wire signed [31:0] b,srav;
	 
	 //srav ¿É±äËãÊõÓÒÒÆ
	 assign s[4:0] = A[4:0];
	 assign b[31:0] = B[31:0];
	 assign srav = b>>>s;
	 
	 assign Shift[4:0] = IR[`sa];
	 assign out = 
	 (op==`alu_add)?(A+B):
	 (op==`alu_sub)?(A-B):
	 (op==`alu_and)?(A&B):
	 (op==`alu_or)?(A|B):
	 (op==`alu_xor)?(A^B):
	 (op==`alu_lui)?(B<<16):
	 (op==`alu_sll)?(B<<Shift):
	 (op==`alu_srl)?(B>>Shift):
	 (op==`alu_nop)?(B):
	 (op==`alu_srav)?(srav):
	 (op==`alu_other)?(`zero):(`zero);
	 
endmodule
