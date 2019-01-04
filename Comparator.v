`timescale 1ns / 1ps
`include "Macro.v"
//////////////////////////////////////////////////////////////////////////////////
module Comparator(
    input [31:0] A,
    input [31:0] B,
	 input Comop,
    output big, equal, less
    );
	 
	 wire a31,b31;
	 wire [30:0]a,b;
	 reg [30:0] result;
	 
	 //ÓÐ·ûºÅ1 ÎÞ·ûºÅ0
	 assign 
	 a = A[30:0], b = B[30:0],
	 a31 = A[31], b31 = B[31];
	 
	 always @ (*) begin
		result = a-b;
	 end
	 
	 assign equal = (A==B)?1:0;
	 assign big = (equal)?0:
	 (Comop)?
	 ((a31<b31)?1:
	 (a31>b31)?0:
	 result[30]?0:1):
	 ((a31<b31)?0:
	 (a31>b31)?1:
	 result[30]?0:1);
	 assign less = equal?0:
	 big?0:1;
	 
endmodule
