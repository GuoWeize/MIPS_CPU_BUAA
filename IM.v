`timescale 1ns / 1ps
`include "Macro.v"
//////////////////////////////////////////////////////////////////////////////////
module IM(
    input [31:0] PC,
    output [31:0] IR
    );
	 
	 wire [9:0] Addr;
	 reg [31:0] Inst;
	 reg [31:0] memory [0:1023];
	 
	 //位数转换
	 assign Addr[9:0]=PC[11:2];
	 
	 //初始化
	 initial begin
		$readmemh("code.txt",memory);
	 end
	 
	 //读取指令码
	 always @(Addr) begin
		Inst[31:0] <= memory[Addr];
	 end
	 
	 assign IR[31:0] = Inst[31:0];
	 
endmodule
