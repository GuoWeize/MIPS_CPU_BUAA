`timescale 1ns / 1ps
`include "Macro.v"
//////////////////////////////////////////////////////////////////////////////////
module RGF(
    input clk,
    input reset,
    input [31:0] IR,
	 input [31:0] WPC,
    input RegWr,
    input [4:0] RW,
    input [31:0] BusW,
    output [31:0] BusA,
    output [31:0] BusB
    );
	 
	 wire [4:0] RA,RB;
	 reg [31:0] memory [0:31];
	 integer i;
	 
	 assign RA = IR[`rs];
	 assign RB = IR[`rt];
	 
	 //初始化
	 initial begin
		for (i=0;i<32;i=i+1)
			memory[i] <= 0;
	 end
	 
	 //读取寄存器(包含内部转发)
	 assign BusA = (RegWr===1'b1 & RW==RA & RW!=5'b00000)?(BusW):(memory[RA]);
	 assign BusB = (RegWr===1'b1 & RW==RB & RW!=5'b00000)?(BusW):(memory[RB]);
	 
	 
	 always @ (posedge clk) begin
		//reset
		if (reset==1'b1) begin
			for (i=0;i<32;i=i+1)
				memory[i] <= 0;
		end
		//写入寄存器(除了0号寄存器)
		if ((RegWr===1'b1)&(RW!=5'b00000)&(reset!=1'b1)) begin
			memory[RW] <= BusW[31:0];
			$display("%d@%h: $%d <= %h", $time, WPC, RW,BusW);
		end
	 end
	 
	 
endmodule
