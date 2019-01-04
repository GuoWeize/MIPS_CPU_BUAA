`timescale 1ns / 1ps
`include "Macro.v"
//////////////////////////////////////////////////////////////////////////////////
module PC(
	 input [31:0] nPC,
	 input clk,
	 input reset,
	 input PC_en,
    output [31:0] PC
    );
	 
	 reg [31:0] pc;
	 
	 //初始化
	 initial begin
		pc <= `PCbegin;
	 end
	 
	 
	 always @ (posedge clk) begin
		//复位信号
		if (reset==1'b1)
			pc <= `PCbegin;
		//正常传输
		if (PC_en==1'b1 & reset==1'b0) begin
			pc <= nPC;
		end
	 end
	 
	 assign PC = (reset==1'b0)? pc : `PCbegin;
	 
	 
endmodule
