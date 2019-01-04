`timescale 1ns / 1ps
`include "Macro.v"
//////////////////////////////////////////////////////////////////////////////////
//选择和什么进行比较
module MUX_Comsel(
    input [31:0] RTD_com,
	 input [31:0] Ext_com,
    input [1:0] sel,
    output [31:0] ComB
    );
	 
	 assign ComB = 
	 (sel==`RTD_com)?(RTD_com):
	 (sel==`zero_com)?(`zero):
	 (sel==`Ext_com)?(Ext_com):
	 RTD_com;
	 
endmodule
