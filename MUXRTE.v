`timescale 1ns / 1ps
`include "Macro.v"
//////////////////////////////////////////////////////////////////////////////////
module MUXRTE(
    input [31:0] RTE_RT,
    input [31:0] RTE_ALU,
    input [31:0] RTE_MUX,
    input [1:0] sel,
    output [31:0] RTE
    );
	 
	 assign RTE = 
	 (sel==`RTE_RT)?(RTE_RT):
	 (sel==`RTE_ALU)?(RTE_ALU):
	 (sel==`RTE_MUX)?(RTE_MUX):(RTE_MUX);

endmodule
