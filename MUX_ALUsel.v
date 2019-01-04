`timescale 1ns / 1ps
`include "Macro.v"
//////////////////////////////////////////////////////////////////////////////////
//选择ALU的B端口输入
module MUX_ALUsel(
    input [31:0] RT_E,
    input [31:0] EXTout,
	 input [31:0] ALUin,
    input [1:0] sel,
    output [31:0] ALU_B
    );
	 
	 assign ALU_B = 
	 (sel==`RT_E)?(RT_E):
	 (sel==`EXTout)?(EXTout):
	 (sel==`ALUin)?(ALUin):
	 `zero;
	 
endmodule
