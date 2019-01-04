`timescale 1ns / 1ps
`include "Macro.v"
//////////////////////////////////////////////////////////////////////////////////
module MUXRSD(
    input [31:0] RSD_RA,
    input [31:0] RSD_ALU,
    input [31:0] RSD_MUX,
	 input [31:0] RSD_ALUin,
    input [1:0] sel,
    output [31:0] RSD
    );
	 
	 assign RSD = 
	 (sel==`RSD_RA)?(RSD_RA):
	 (sel==`RSD_ALU)?(RSD_ALU):
	 (sel==`RSD_MUX)?(RSD_MUX):
	 (sel==`RSD_ALUin)?(RSD_ALUin):(RSD_RA);
	 
endmodule
