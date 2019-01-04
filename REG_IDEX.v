`timescale 1ns / 1ps
`include "Macro.v"
//////////////////////////////////////////////////////////////////////////////////
module REG_IDEX(
    input clk, clr, reset,
    input [31:0] IR_E, ALUin_E, RS_E, RT_E, EXT_E,
	 input [3:0] type_E, ALUop_E,
	 input [1:0] WRsel_E, WDsel_E, ALUsel_E,
    input MemWr_E, RegWr_E,
	 input [31:0] PC_E,
	 output [31:0] IR_Eout, ALUin_Eout, RS_Eout, RT_Eout, EXT_Eout,
	 output [3:0] type_Eout, ALUop_Eout,
    output [1:0] ALUsel_Eout, WRsel_Eout, WDsel_Eout,
    output MemWr_Eout, RegWr_Eout,
	 output [31:0] PC_Eout
    );
	 
	 reg [31:0] IR,ALUin,RS,RT,EXT,PC;
	 reg [3:0] type,ALUop;
	 reg [1:0] ALUsel,WRsel,WDsel;
	 reg MemWr,RegWr; 
	 
	 
	 always @ (posedge clk) begin
		//reset
		if ((clr==1'b1) | (reset==1'b1)) begin
			IR <= `zero;
			PC <= `PCbegin;
			ALUin <= `zero;
			RS <= `zero;
			RT <= `zero;
			EXT<= `zero;
			type<= `other;
			ALUop <= `alu_other;
			WRsel <= `RD;
			WDsel <= `ALUout;
			ALUsel <= 1'b0;
			MemWr <= 1'b0;
			RegWr <= 1'b0;
		end
		//流水线传递
		if ((clr!=1'b1) & (reset!=1'b1)) begin
			IR <= IR_E;
			PC <= PC_E;
			ALUin <= ALUin_E;
			RS <= RS_E;
			RT <= RT_E;
			EXT<= EXT_E;
			type<=type_E;
			ALUop <= ALUop_E;
			WRsel <= WRsel_E;
			WDsel <= WDsel_E;
			ALUsel <= ALUsel_E;
			MemWr <= MemWr_E;
			RegWr <= RegWr_E;
		end
	 end
	 
	 //寄存器输出
	 assign 
	 IR_Eout = IR,
	 PC_Eout = PC,
	 ALUin_Eout = ALUin,
	 RS_Eout = RS,
	 RT_Eout = RT,
	 EXT_Eout = EXT,
	 type_Eout = type,
	 ALUop_Eout = ALUop,
	 WRsel_Eout = WRsel,
	 WDsel_Eout = WDsel,
	 ALUsel_Eout = ALUsel,
	 MemWr_Eout = MemWr,
	 RegWr_Eout = RegWr;
	 
endmodule
