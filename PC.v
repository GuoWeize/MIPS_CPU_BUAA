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
	 
	 //��ʼ��
	 initial begin
		pc <= `PCbegin;
	 end
	 
	 
	 always @ (posedge clk) begin
		//��λ�ź�
		if (reset==1'b1)
			pc <= `PCbegin;
		//��������
		if (PC_en==1'b1 & reset==1'b0) begin
			pc <= nPC;
		end
	 end
	 
	 assign PC = (reset==1'b0)? pc : `PCbegin;
	 
	 
endmodule
