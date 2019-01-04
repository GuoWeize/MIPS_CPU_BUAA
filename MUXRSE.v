`timescale 1ns / 1ps
`include "Macro.v"
//////////////////////////////////////////////////////////////////////////////////
module MUXRSE(
    input [31:0] RSE_RS,
    input [31:0] RSE_ALU,
    input [31:0] RSE_MUX,
    input [1:0] sel,
    output [31:0] RSE
    );
	 
	 assign RSE = 
	 (sel==`RSE_RS)?(RSE_RS):
	 (sel==`RSE_ALU)?(RSE_ALU):
	 (sel==`RSE_MUX)?(RSE_MUX):(RSE_MUX);

endmodule
