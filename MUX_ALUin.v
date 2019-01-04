`timescale 1ns / 1ps
`include "Macro.v"
//////////////////////////////////////////////////////////////////////////////////
//ѡ���ID��ת�뵽ALU������
module MUX_ALUin(
    input [31:0] PC_Link,
    input SLT,
    input [1:0] sel,
    output [31:0] ALUin
    );
	 
	 wire slt;
	 assign slt = {31'b0,SLT};
	 
	 assign ALUin = 
	 (sel==`PC_Link)?(PC_Link):
	 (sel==`SLT)?(slt):
	 (`zero);
	 
endmodule
