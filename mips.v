`timescale 1ns / 1ps
`include "Macro.v"
//////////////////////////////////////////////////////////////////////////////////
module mips(
    input clk,
    input reset
    );
	 
	 //主数据通路
	 wire [31:0] npc,pc,pc_4,pc_8;
	 wire [31:0] IR_IF,IR_ID,IR_EX,IR_MEM,IR_WB;
	 wire [31:0] RSD,RTD,RSE,RTE,RTM;
	 wire [31:0] BusA, BusB, EXTout, ComB, ALUin;
	 wire [31:0] RS_Eout, RT_Eout, EXT_Eout, ALUin_Eout, ALU_B, ALUout;
	 wire [31:0] AO_M, RT_Mout, MR, DW, WBData;
	 wire [31:0] PC_ID, PC_EX, PC_MEM, PC_WB;
	 
	 //回写寄存器
	 wire [4:0] RW,RW_W;
	 
	 //指令类型和转发控制
	 wire [3:0] type_IF,type_ID,type_EX,type_MEM,type_WB;
	 wire [1:0] RSDsel,RTDsel,RSEsel,RTEsel,RTMsel;
	 wire IR_D_en,PC_en,IR_E_clr;
	 
	 //比较大小信号
	 wire big,equal,less;
	 
	 //控制信号
	 wire [3:0] ALUop_D,ALUop_E;
	 wire [1:0] PCsel_D,ALUsel_D,ALUsel_E,WRsel_D,WRsel_E,WRsel_M,WDsel_D,WDsel_E,WDsel_M,Comsel_D,ALUinsel_D;
	 wire EXTop_D,Comop_D,MemWr_D,MemWr_E,MemWr_M,RegWr_D,RegWr_E,RegWr_M,RegWr_W;
	 
	 
	 //IF
	 PC PC(.nPC(npc),.clk(clk),.reset(reset),.PC_en(PC_en),.PC(pc));
	 
	 IM IM(.PC(pc),.IR(IR_IF));
	 Adder4 Adder4(.In(pc),.Out(pc_4));
	 
	 
	 //IF ID
	 REG_IFID REG_IFID(.clk(clk),.reset(reset),.en(IR_D_en),.IR_D(IR_IF),.IR_Dout(IR_ID),.PC_D(pc),.PC_Dout(PC_ID));
	 
	 
	 //ID
	 RGF RGF(.clk(clk),.reset(reset),.IR(IR_ID),.WPC(PC_WB),.RegWr(RegWr_W),.RW(RW_W),.BusW(WBData),.BusA(BusA),.BusB(BusB));
	 
	 Decoder Decoder(.IR(IR_ID),.type(type_ID),.PCsel(PCsel_D),.ALUop(ALUop_D),.Comop(Comop_D),.ALUinsel(ALUinsel_D),
	 .EXTop(EXTop_D),.ALUsel(ALUsel_D),.MemWr(MemWr_D),.RegWr(RegWr_D),.WRsel(WRsel_D),.WDsel(WDsel_D),.Comsel(Comsel_D));
	 
	 MUXRSD MUXRSD(.RSD_RA(BusA),.RSD_ALU(AO_M),.RSD_MUX(WBData),.RSD_ALUin(ALUin_Eout),.sel(RSDsel),.RSD(RSD));
	 MUXRTD MUXRTD(.RTD_RB(BusB),.RTD_ALU(AO_M),.RTD_MUX(WBData),.RTD_ALUin(ALUin_Eout),.sel(RTDsel),.RTD(RTD));
	 
	 EXT EXT(.IR(IR_ID),.EXTop(EXTop_D),.EXTout(EXTout));
	 
	 MUX_Comsel MUX_Comsel(.RTD_com(RTD),.Ext_com(EXTout),.sel(Comsel_D),.ComB(ComB));
	 Comparator Comparator(.A(RSD),.B(ComB),.Comop(Comop_D),.big(big),.equal(equal),.less(less));
	 
	 nPC nPC(.IR(IR_ID),.PC4(pc_4),.Reg(RSD),.PC(PC_ID),.PCsel(PCsel_D),.big(big),.equal(equal),.less(less),.npc(npc));
	 
	 Adder8 Adder8(.In(PC_ID),.Out(pc_8));
	 MUX_ALUin MUX_ALUin(.PC_Link(pc_8),.SLT(less),.sel(ALUinsel_D),.ALUin(ALUin));
	 
	 
	 //ID EX
	 REG_IDEX REG_IDEX(.clk(clk),.clr(IR_E_clr),.reset(reset),
	 .IR_E(IR_ID),.ALUin_E(ALUin),.RS_E(RSD),.RT_E(RTD),.EXT_E(EXTout),.type_E(type_ID),
	 .IR_Eout(IR_EX),.ALUin_Eout(ALUin_Eout),.RS_Eout(RS_Eout),.RT_Eout(RT_Eout),.EXT_Eout(EXT_Eout),.type_Eout(type_EX),
	 .ALUop_E(ALUop_D),.ALUsel_E(ALUsel_D),.MemWr_E(MemWr_D),.RegWr_E(RegWr_D),.WRsel_E(WRsel_D),.WDsel_E(WDsel_D),
	 .ALUop_Eout(ALUop_E),.ALUsel_Eout(ALUsel_E),.MemWr_Eout(MemWr_E),.RegWr_Eout(RegWr_E),.WRsel_Eout(WRsel_E),.WDsel_Eout(WDsel_E),
	 .PC_E(PC_ID),.PC_Eout(PC_EX));
	 
	 
	 //EX
	 MUXRSE MUXRSE(.RSE_RS(RS_Eout),.RSE_ALU(AO_M),.RSE_MUX(WBData),.sel(RSEsel),.RSE(RSE));
	 MUXRTE MUXRTE(.RTE_RT(RT_Eout),.RTE_ALU(AO_M),.RTE_MUX(WBData),.sel(RTEsel),.RTE(RTE));
	 
	 MUX_ALUsel MUX_ALUsel(.RT_E(RTE),.EXTout(EXT_Eout),.ALUin(ALUin_Eout),.sel(ALUsel_E),.ALU_B(ALU_B));
	 ALU ALU(.A(RSE),.B(ALU_B),.IR(IR_EX),.op(ALUop_E),.out(ALUout));
	 
	 
	 //EX MEM
	 REG_EXMEM REG_EXMEM(.clk(clk),.reset(reset),
	 .IR_M(IR_EX),.ALUout_M(ALUout),.RT_M(RTE),.type_M(type_EX),
	 .IR_Mout(IR_MEM),.ALUout_Mout(AO_M),.RT_Mout(RT_Mout),.type_Mout(type_MEM),
	 .MemWr_M(MemWr_E),.RegWr_M(RegWr_E),.WRsel_M(WRsel_E),.WDsel_M(WDsel_E),
	 .MemWr_Mout(MemWr_M),.RegWr_Mout(RegWr_M),.WRsel_Mout(WRsel_M),.WDsel_Mout(WDsel_M),
	 .PC_M(PC_EX),.PC_Mout(PC_MEM));
	 
	 
	 //MEM
	 MUXRTM MUXRTM(.RTM_RT(RT_Mout),.RTM_MUX(WBData),.sel(RTMsel),.RTM(RTM));
	 DM DM(.clk(clk),.reset(reset),.Addr(AO_M),.WData(RTM),.MemWr(MemWr_M),.RData(MR),.PC(PC_MEM));
	 
	 MUX_WDsel MUX_WDsel(.ALUout(AO_M),.DM_W(MR),.sel(WDsel_M),.DW(DW));
	 MUX_WRsel MUX_WRsel(.IR(IR_MEM),.sel(WRsel_M),.RW(RW));
	 
	 
	 //MEM WB
	 REG_MEMWB REG_MEMWB(.clk(clk),.reset(reset),
	 .IR_W(IR_MEM),.RW(RW),.WB_W(DW),.type_W(type_MEM),
	 .IR_Wout(IR_WB),.WB_Wout(WBData),.RW_W(RW_W),.type_Wout(type_WB),
	 .RegWr_W(RegWr_M),.RegWr_Wout(RegWr_W),
	 .PC_W(PC_MEM),.PC_Wout(PC_WB));
	 
	 
	 //冲突分析
	 Controlor Controlor(.IR_D(IR_ID),.IR_E(IR_EX),.IR_M(IR_MEM),.IR_W(IR_WB),
	 .type_D(type_ID),.type_E(type_EX),.type_M(type_MEM),.type_W(type_WB),
	 .IR_D_en(IR_D_en),.PC_en(PC_en),.IR_E_clr(IR_E_clr),
	 .RSDsel(RSDsel),.RTDsel(RTDsel),.RSEsel(RSEsel),.RTEsel(RTEsel),.RTMsel(RTMsel));
	 
	 
endmodule
