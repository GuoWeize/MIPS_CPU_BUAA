`timescale 1ns / 1ps
`include "Macro.v"
//////////////////////////////////////////////////////////////////////////////////
module MUXRTM(
    input [31:0] RTM_RT,
    input [31:0] RTM_MUX,
    input [1:0] sel,
    output [31:0] RTM
    );
	 
	 assign RTM = 
	 (sel==`RTM_RT)?(RTM_RT):
	 (sel==`RTM_MUX)?(RTM_MUX):(RTM_MUX);
	 
endmodule
