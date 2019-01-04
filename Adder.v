`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
module Adder4(
    input [31:0] In,
    output [31:0] Out
    );
	 
	 //+4
	 assign Out = In+3'b100;
	 
endmodule



module Adder8(
	 input [31:0] In,
	 output [31:0] Out
	 );
	 
	 //+8
	 assign Out = In+4'b1000;
	 
endmodule
