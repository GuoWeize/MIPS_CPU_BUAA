`timescale 1ns / 1ps
`include "Macro.v"
//////////////////////////////////////////////////////////////////////////////////
//选择写入寄存器的数据
module MUX_WDsel(
    input [31:0] ALUout,
    input [31:0] DM_W,
    input [1:0] sel,
    output [31:0] DW
    );
	 
	 assign DW = 
	 (sel==`ALUout)?(ALUout):
	 (sel==`DM_W)?(DM_W):
	 `zero;
	 
	 
endmodule
