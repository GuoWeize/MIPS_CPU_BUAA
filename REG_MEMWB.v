`timescale 1ns / 1ps
`include "Macro.v"
//////////////////////////////////////////////////////////////////////////////////
module REG_MEMWB(
    input clk, reset,
    input [31:0] IR_W, WB_W,
	 input [4:0] RW,
	 input [3:0] type_W,
	 input RegWr_W,
	 input [31:0] PC_W,
    output [31:0] IR_Wout, WB_Wout,
	 output [4:0] RW_W,
	 output [3:0] type_Wout,
	 output RegWr_Wout,
	 output [31:0] PC_Wout
    );
	 
	 reg [31:0] IR,WB,PC;
	 reg [4:0] RWreg;
	 reg [3:0] type;
	 reg RegWr;
	 
	 
	 always @ (posedge clk) begin
		//reset
		if (reset==1'b1) begin
			IR <= `zero;
			PC <= `PCbegin;
			WB <= `zero;
			type <= `other;
			RegWr <= 1'b0;
			RWreg <= 5'b00000;
		end
		//流水线传递
		if (reset!=1'b1) begin
			IR <= IR_W;
			PC <= PC_W;
			WB <= WB_W;
			type <= type_W;
			RegWr <= RegWr_W;
			RWreg <= RW;
		end
	 end
	 
	 //寄存器输出
	 assign
	 IR_Wout = IR,
	 PC_Wout = PC,
	 WB_Wout = WB,
	 type_Wout = type,
	 RegWr_Wout = RegWr,
	 RW_W = RWreg;
	 
endmodule
