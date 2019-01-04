`timescale 1ns / 1ps
`include "Macro.v"
//////////////////////////////////////////////////////////////////////////////////
module Controlor(
    input [31:0] IR_D, IR_E, IR_M, IR_W,
	 input [3:0] type_D, type_E, type_M, type_W,
    output IR_D_en, PC_en, IR_E_clr,
    output [1:0] RSDsel, RTDsel, RSEsel, RTEsel, RTMsel
    );
	 
	 //更改指令时，只用更改信号前量里面的指令即可
	 
	 //暂停信号前量
	 //读寄存器的需求Tuse
	 wire rs0 = type_D==`jrtype|type_D==`jalrtype|type_D==`sltitype|type_D==`btype|type_D==`slttype;
	 wire rt0 = type_D==`btype|type_D==`slttype;
	 wire rs1 = type_D==`cal_i|type_D==`load|type_D==`store|type_D==`cal_r;
	 wire rt1 = type_D==`shift|type_D==`cal_r;
	 //写寄存器数据的产生Tnew
	 wire Erd1 = type_E==`cal_r|type_E==`shift;
	 wire Ert1 = type_E==`cal_i|type_E==`luitype;
	 wire Ert2 = type_E==`load;
	 wire Mrt1 = type_M==`load;
	 
	 //暂停信号
	 wire stall_rs0 = (IR_D[`rs]!=5'b0) & rs0 & ( (Erd1)&(IR_D[`rs]==IR_E[`rd]) | (Ert1|Ert2)&(IR_D[`rs]==IR_E[`rt]) | (Mrt1)&(IR_D[`rs]==IR_M[`rt]) );
	 wire stall_rt0 = (IR_D[`rt]!=5'b0) & rt0 & ( (Erd1)&(IR_D[`rt]==IR_E[`rd]) | (Ert1|Ert2)&(IR_D[`rt]==IR_E[`rt]) | (Mrt1)&(IR_D[`rt]==IR_M[`rt]) );
	 wire stall_rs1 = (IR_D[`rs]!=5'b0) & rs1 & (Ert2)&(IR_D[`rs]==IR_E[`rt]);
	 wire stall_rt1 = (IR_D[`rt]!=5'b0) & rt1 & (Ert2)&(IR_D[`rt]==IR_E[`rt]);
	 wire stall = stall_rs0 | stall_rt0 | stall_rs1 | stall_rt1;
	 
	 //暂停控制
	 assign IR_D_en = (stall===1'b1)?(1'b0):
	 (stall===1'bx)?(1'b1):(1'b1);
	 assign PC_en = (stall===1'b1)?(1'b0):
	 (stall===1'bx)?(1'b1):(1'b1);
	 assign IR_E_clr = (stall===1'b1)?(1'b1):
	 (stall===1'bx)?(1'b0):(1'b0);
	 
	 
	 
	 //转发信号前量
	 //读寄存器Tuse
	 wire Drs = type_D==`btype|type_D==`jrtype|type_D==`jalrtype|type_D==`slttype|type_D==`sltitype;
	 wire Drt = type_D==`btype|type_D==`slttype;
	 wire Ers = type_E==`cal_r|type_E==`cal_i|type_E==`load|type_E==`store;
	 wire Ert = type_E==`cal_r|type_E==`shift|type_E==`store;
	 wire Mrt = type_M==`store;
	 
	 //写寄存器Tnew
	 wire E_rd = type_E==`jalrtype|type_E==`slttype;
	 wire E_rt = type_E==`sltitype;
	 wire E_r31= type_E==`jaltype;
	 
	 wire M_rd = type_M==`jalrtype|type_M==`cal_r|type_M==`shift|type_M==`slttype;
	 wire M_rt = type_M==`cal_i|type_M==`luitype|type_M==`sltitype;
	 wire M_r31= type_M==`jaltype;
	 
	 wire W_rd = type_W==`jalrtype|type_W==`cal_r|type_W==`shift|type_W==`slttype;
	 wire W_rt = type_W==`cal_i|type_W==`luitype|type_W==`load|type_W==`sltitype;
	 wire W_r31= type_W==`jaltype;
	 
	 //转发信号
	 wire RSD_ALUin=Drs & (IR_D[`rs]!=5'b0) & ( (E_rd)&(IR_D[`rs]==IR_E[`rd]) | (E_rt)&(IR_D[`rs]==IR_E[`rt]) | (E_r31)&(IR_D[`rs]==5'b11111) );
	 wire RSD_ALU = Drs & (IR_D[`rs]!=5'b0) & ( (M_rd)&(IR_D[`rs]==IR_M[`rd]) | (M_rt)&(IR_D[`rs]==IR_M[`rt]) | (M_r31)&(IR_D[`rs]==5'b11111) );
	 wire RSD_MUX = Drs & (IR_D[`rs]!=5'b0) & ( (W_rd)&(IR_D[`rs]==IR_W[`rd]) | (W_rt)&(IR_D[`rs]==IR_W[`rt]) | (W_r31)&(IR_D[`rs]==5'b11111) );
	 
	 wire RTD_ALUin=Drt & (IR_D[`rt]!=5'b0) & ( (E_rd)&(IR_D[`rt]==IR_E[`rd]) | (E_rt)&(IR_D[`rt]==IR_E[`rt]) | (E_r31)&(IR_D[`rt]==5'b11111) );
	 wire RTD_ALU = Drt & (IR_D[`rt]!=5'b0) & ( (M_rd)&(IR_D[`rt]==IR_M[`rd]) | (M_rt)&(IR_D[`rt]==IR_M[`rt]) | (M_r31)&(IR_D[`rt]==5'b11111) );
	 wire RTD_MUX = Drt & (IR_D[`rt]!=5'b0) & ( (W_rd)&(IR_D[`rt]==IR_W[`rd]) | (W_rt)&(IR_D[`rt]==IR_W[`rt]) | (W_r31)&(IR_D[`rt]==5'b11111) );
	 
	 wire RSE_ALU = Ers & (IR_E[`rs]!=5'b0) & ( (M_rd)&(IR_E[`rs]==IR_M[`rd]) | (M_rt)&(IR_E[`rs]==IR_M[`rt]) | (M_r31)&(IR_E[`rs]==5'b11111) );
	 wire RSE_MUX = Ers & (IR_E[`rs]!=5'b0) & ( (W_rd)&(IR_E[`rs]==IR_W[`rd]) | (W_rt)&(IR_E[`rs]==IR_W[`rt]) | (W_r31)&(IR_E[`rs]==5'b11111) );
	 
	 wire RTE_ALU = Ert & (IR_E[`rt]!=5'b0) & ( (M_rd)&(IR_E[`rt]==IR_M[`rd]) | (M_rt)&(IR_E[`rt]==IR_M[`rt]) | (M_r31)&(IR_E[`rt]==5'b11111) );
	 wire RTE_MUX = Ert & (IR_E[`rt]!=5'b0) & ( (W_rd)&(IR_E[`rt]==IR_W[`rd]) | (W_rt)&(IR_E[`rt]==IR_W[`rt]) | (W_r31)&(IR_E[`rt]==5'b11111) );
	 
	 wire RTM_MUX = Mrt & (IR_M[`rt]!=5'b0) & ( (W_rd)&(IR_M[`rt]==IR_W[`rd]) | (W_rt)&(IR_M[`rt]==IR_W[`rt]) | (W_r31)&(IR_M[`rt]==5'b11111) );
	 
	 
	 //转发控制
	 assign RSDsel = 
	 (RSD_ALUin===1'b1)?(`RSD_ALUin):
	 (RSD_ALU===1'b1)?(`RSD_ALU):
	 (RSD_MUX===1'b1)?(`RSD_MUX):
	 `RSD_RA;
	 
	 assign RTDsel = 
	 (RTD_ALUin===1'b1)?(`RTD_ALUin):
	 (RTD_ALU===1'b1)?(`RTD_ALU):
	 (RTD_MUX===1'b1)?(`RTD_MUX):
	 `RTD_RB;
	 
	 assign RSEsel = 
	 (RSE_ALU===1'b1)?(`RSE_ALU):
	 (RSE_MUX===1'b1)?(`RSE_MUX):
	 `RSE_RS;
	 
	 assign RTEsel = 
	 (RTE_ALU===1'b1)?(`RTE_ALU):
	 (RTE_MUX===1'b1)?(`RTE_MUX):
	 `RTE_RT;
	 
	 assign RTMsel = (RTM_MUX===1'b1)?(`RTM_MUX):(`RTM_RT);
	 
	 
endmodule
