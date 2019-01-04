`timescale 1ns / 1ps
`include "Macro.v"
//////////////////////////////////////////////////////////////////////////////////
module DM(
    input clk,
    input reset,
	 input [31:0] Addr,
    input [31:0] WData,
    input MemWr,
	 input [31:0] PC,
    output [31:0] RData
    );
	 
	 wire [9:0] addr;
	 reg [31:0] memory [0:1023];
	 integer i;
	 
	 //λ��ת��
	 assign addr[9:0]=Addr[11:2];
	 
	 //��ʼ��
	 initial begin
		for (i=0;i<1024;i=i+1)
			memory[i] <= 0;
	 end
	 
	 //��������
	 assign RData[31:0]= memory[addr];
	 
	 always @ (posedge clk) begin
		 //��λ�ź�reset
		 if (reset==1'b1) begin
			for (i=0;i<1024;i=i+1)
				memory[i] <= 0;
		 end
		 //��������
		 if ((MemWr==1'b1) & (reset!=1'b1)) begin
			memory[addr] <= WData[31:0];
			$display("%d@%h: *%h <= %h", $time, PC, Addr,WData);
		 end
	 end
	 
	 	 
endmodule
