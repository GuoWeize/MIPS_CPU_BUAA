`timescale 1ns / 1ps
`include "Macro.v"
//////////////////////////////////////////////////////////////////////////////////
module nPC(
	 input [31:0] IR,
    input [31:0] PC4,	//normal PC+4
	 input [31:0] PC,		//PC from REG_IFID
    input [31:0] Reg,
    input [1:0] PCsel,
    input big, equal, less,
	 output [31:0] npc
    );
	 
	 wire [31:0] pc4,pcb,pcj,pcreg,imm;
	 wire [25:0] imm26;
	 wire [15:0] imm16;
	 wire allow;
	 
	 assign //计算imm16(符号拓展)
	 imm26[25:0]=IR[25:0],
	 imm16[15:0]=IR[15:0],
	 
	 imm[31]=imm16[15],
	 imm[30]=imm16[15],
	 imm[29]=imm16[15],
	 imm[28]=imm16[15],
	 imm[27]=imm16[15],
	 imm[26]=imm16[15],
	 imm[25]=imm16[15],
	 imm[24]=imm16[15],
	 imm[23]=imm16[15],
	 imm[22]=imm16[15],
	 imm[21]=imm16[15],
	 imm[20]=imm16[15],
	 imm[19]=imm16[15],
	 imm[18]=imm16[15],
	 imm[17:2]=imm16[15:0],
	 imm[1]=1'b0,
	 imm[0]=1'b0;
	 
	 //分析b跳转指令的allow情况
	 assign allow = 
	 (IR[`op]==`beq)?(equal):
	 (IR[`op]==`bne)?(~equal):
	 (IR[`op]==`bgtz)?(big):
	 (IR[`op]==`blez)?(~big):
	 (IR[`op]==`regimm & IR[`rt]==`bgez)?(~less):
	 (IR[`op]==`regimm & IR[`rt]==`bltz)?(less):
	 1'b0;
	 
	 assign //计算四种情况的PC
	 pc4 = PC4,
	 pcb = PC+imm+3'b100,
	 pcj = {PC4[31:28],imm26[25:0],2'b00},
	 pcreg = Reg;
	 
	 //nPC选择逻辑
	 assign npc = 
	 (PCsel===`pc4)?(pc4):
	 (PCsel===`pcb)?(allow ? pcb:pc4):
	 (PCsel===`pcj)?(pcj):
	 (PCsel===`pcreg)?(pcreg):
	 (PCsel===2'bx)?(pc4):(pc4);
	 
	 
endmodule
