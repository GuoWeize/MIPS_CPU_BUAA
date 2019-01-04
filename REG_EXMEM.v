`timescale 1ns / 1ps
`include "Macro.v"
//////////////////////////////////////////////////////////////////////////////////
module REG_EXMEM(
    input clk, reset,
    input [31:0] IR_M, ALUout_M, RT_M,
	 input [3:0] type_M,
	 input [1:0] WRsel_M, WDsel_M,
    input MemWr_M, RegWr_M,
	 input [31:0] PC_M,
	 output [31:0] IR_Mout, ALUout_Mout, RT_Mout,
	 output [3:0] type_Mout,
	 output [1:0] WRsel_Mout, WDsel_Mout,
	 output MemWr_Mout, RegWr_Mout,
	 output [31:0] PC_Mout
    );
	 
	 reg [31:0] IR,ALUout,RT,PC;
	 reg [3:0] type;
	 reg [1:0] WRsel,WDsel;
	 reg MemWr,RegWr;
	 
	 
	 always @ (posedge clk) begin
		//reset
		if (reset==1'b1) begin
			IR <= `zero;
			PC <= `PCbegin;
			RT <= `zero;
			ALUout <= `zero;
			type <= `other;
			WRsel <= `RD;
			WDsel <= `ALUout;
			MemWr <= 1'b0;
			RegWr <= 1'b0;
		end
		//流水线传递
		if (reset!=1'b1) begin
			IR <= IR_M;
			PC <= PC_M;
			RT <= RT_M;
			ALUout <= ALUout_M;
			type <= type_M;
			WRsel <= WRsel_M;
			WDsel <= WDsel_M;
			MemWr <= MemWr_M;
			RegWr <= RegWr_M;
		end
	 end
	 
	 //寄存器输出
	 assign 
	 IR_Mout = IR,
	 PC_Mout = PC,
	 RT_Mout = RT,
	 ALUout_Mout = ALUout,
	 type_Mout = type,
	 WRsel_Mout = WRsel,
	 WDsel_Mout = WDsel,
	 MemWr_Mout = MemWr,
	 RegWr_Mout = RegWr;
	 
endmodule
