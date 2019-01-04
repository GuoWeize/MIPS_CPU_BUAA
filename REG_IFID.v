`timescale 1ns / 1ps
`include "Macro.v"
//////////////////////////////////////////////////////////////////////////////////
module REG_IFID(
    input clk,
    input reset,
	 input en,
    input [31:0] IR_D,
	 input [31:0] PC_D,
    output [31:0] IR_Dout,
	 output [31:0] PC_Dout
    );
	 
	 reg [31:0] IR,PC;
	 
	 
	 always @ (posedge clk) begin
		//reset
		if (reset==1'b1) begin
			IR <= `zero;
			PC <= `PCbegin;
		end
		//流水线传递(不含clr)
		if (en==1 & reset!=1'b1 ) begin
			IR <= IR_D;
			PC <= PC_D;
		end
	 end
	 
	 //寄存器输出
	 assign IR_Dout = IR;
	 assign PC_Dout = PC;
	 
endmodule
