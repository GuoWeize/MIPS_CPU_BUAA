`timescale 1ns / 1ps
`include "Macro.v"
//////////////////////////////////////////////////////////////////////////////////
module Decoder(
    input [31:0] IR,
	 output [3:0] type, ALUop,
	 output [1:0] PCsel, ALUsel, WRsel, WDsel, Comsel, ALUinsel,
	 output EXTop, MemWr, RegWr, Comop
    );
	 
	 wire [25:0] imm26;
	 wire [15:0] imm16;
	 wire [5:0] op,func;
	 wire [4:0] rs,rd,rt,sa;
	 wire special,regimm,lw,sw,addi,addiu,ori,lui,beq,bne,j,jal,And,Or,Xor,Add,Addu,Sub,Subu,Sll,Srl,Jr;
	 wire Jalr,bgtz,blez,BGEZ,BLTZ,Slt,Sltu,slti,sltiu,Srav;
	 
	 //�ֶν���
	 assign
	 imm26 = IR[`imm26],
	 imm16 = IR[`imm16],
	 op = IR[`op],
	 func = IR[`func],
	 rs = IR[`rs],
	 rt = IR[`rt],
	 rd = IR[`rd],
	 sa = IR[`sa];
	 
	 //����ָ���ж�
	 assign
	 lw=(op==`lw)?1:0,
	 sw=(op==`sw)?1:0,
	 addi=(op==`addi)?1:0,
	 addiu=(op==`addiu)?1:0,
	 ori=(op==`ori)?1:0,
	 lui=(op==`lui)?1:0,
	 beq=(op==`beq)?1:0,
	 bne=(op==`bne)?1:0,
	 j=(op==`j)?1:0,
	 jal=(op==`jal)?1:0,
	 bgtz=(op==`bgtz)?1:0,
	 blez=(op==`blez)?1:0,
	 slti=(op==`slti)?1:0,
	 sltiu=(op==`sltiu)?1:0;
	 
	 assign special = (op==`special)?1:0;
	 
	 assign
	 And=(special&func==`and)?1:0,
	 Or=(special&func==`or)?1:0,
	 Xor=(special&func==`xor)?1:0,
	 Add=(special&func==`add)?1:0,
	 Addu=(special&func==`addu)?1:0,
	 Sub=(special&func==`sub)?1:0,
	 Subu=(special&func==`subu)?1:0,
	 Sll=(special&func==`sll)?1:0,
	 Srl=(special&func==`srl)?1:0,
	 Jr=(special&func==`jr)?1:0,
	 Jalr=(special&func==`jalr)?1:0,
	 Slt=(special&func==`slt)?1:0,
	 Sltu=(special&func==`sltu)?1:0,
	 Srav=(special&func==`srav)?1:0;
	 
	 assign regimm = (op==`regimm)?1:0;
	 
	 assign
	 BGEZ=(regimm&rt==`bgez)?1:0,
	 BLTZ=(regimm&rt==`bltz)?1:0;
	 
	 
	 //ָ�������ж�(������ͣ��ת���ж�)
	 assign type = 
	 (And|Or|Xor|Add|Addu|Sub|Subu|Srav)?(`cal_r):
	 (addi|addiu|ori)?(`cal_i):
	 (beq|bne)?(`btype):
	 (lw)?(`load):
	 (sw)?(`store):
	 (Sll|Srl)?(`shift):
	 (lui)?(`luitype):
	 (Jr|bgtz|blez|BGEZ|BLTZ)?(`jrtype):
	 (jal)?(`jaltype):
	 (Jalr)?(`jalrtype):
	 (Slt|Sltu)?(`slttype):
	 (slti|sltiu)?(`sltitype):
	 (j)?(`other):(`other);
	 
	 
	 //�����ź�
	 //PCsel��   ѡ��nPC
	 //EXTop��   ��/�޷�����չ
	 //Comsel��  ѡ���ʲô���бȽ�
	 //Comop��   ��/�޷������Ƚ�
	 //ALUinsel��ѡ���ID��ת�뵽ALU������
	 //ALUsel��  ѡ��ALU��B�˿�����
	 //ALUop��   ѡ��ALU����
	 //MemWr��   д���ڴ���
	 //RegWr��   д��Ĵ�����
	 //WRsel��   д�뵽�ĸ��Ĵ���
	 //WDsel��   ѡ��д��Ĵ���������
	 assign PCsel = //ѡ��nPC
	 (beq|bne|bgtz|blez|BGEZ|BLTZ)?(`pcb):
	 (j|jal)?(`pcj):
	 (Jr|Jalr)?(`pcreg):
	 (lw|sw|addi|addiu|ori|lui|And|Or|Xor|Add|Addu|Sub|Subu|Sll|Srl|Slt|Sltu|slti|sltiu|Srav)?(`pc4):(`pc4);
	 
	 assign EXTop = //��/�޷�����չ  0:�޷���  1:�з���
	 (ori|lui)?(0):
	 (lw|sw|addi|addiu|slti|sltiu)?(1):(1);
	 
	 assign Comsel = //ѡ���ʲô���бȽ�
	 (beq|bne|Slt|Sltu)?(`RTD_com):
	 (bgtz|blez|BGEZ|BLTZ)?(`zero_com):
	 (slti|sltiu)?(`Ext_com):
	 2'b11;
	 
	 assign Comop = //��/�޷������Ƚ�  0���޷���  1���з���
	 (Sltu|sltiu)?(1'b0):
	 (beq|bne|bgtz|blez|BGEZ|BLTZ|Slt|slti)?(1'b1):(1'b1);
	 
	 assign ALUinsel = //ѡ���ID��ת�뵽ALU������
	 (jal|Jalr)?(`PC_Link):
	 (Slt|Sltu|slti|sltiu)?(`SLT):
	 2'b11;
	 
	 assign ALUsel= //ѡ��ALU��B�˿�����
	 (lw|sw|addi|addiu|ori|lui)?(`EXTout):
	 (beq|bne|bgtz|blez|BGEZ|BLTZ|j|And|Or|Xor|Add|Addu|Sub|Subu|Sll|Srl|Jr|Srav)?(`RT_E):
	 (jal|Jalr|Slt|Sltu|slti|sltiu)?(`ALUin):(`RT_E);
	 
	 assign ALUop = //ѡ��ALU����
	 (lw|sw|addi|addiu|Add|Addu)?(`alu_add):
	 (beq|bne|bgtz|blez|BGEZ|BLTZ|Sub|Subu)?(`alu_sub):
	 (And)?(`alu_and):
	 (Or|ori)?(`alu_or):
	 (Xor)?(`alu_xor):
	 (lui)?(`alu_lui):
	 (Sll)?(`alu_sll):
	 (Srl)?(`alu_srl):
	 (Srav)?(`alu_srav):
	 (jal|Jalr|Slt|Sltu|slti|sltiu)?(`alu_nop):
	 4'b1111;
	 
	 assign MemWr = (type==`store);//д���ڴ���
	 
	 assign RegWr = jal|And|Or|Xor|Add|Addu|Sub|Subu|addi|addiu|ori|lui|lw|Sll|Srl|Jalr|Slt|Sltu|slti|sltiu|Srav;//д��Ĵ�����
	 
	 assign WRsel = //д�뵽�ĸ��Ĵ���
	 (And|Or|Xor|Add|Addu|Sub|Subu|Sll|Srl|Jalr|Slt|Sltu|Srav)?(`RD):
	 (lw|addi|addiu|ori|lui|slti|sltiu)?(`RT):
	 (jal)?(`RA):
	 2'b11;
	 
	 assign WDsel = //ѡ��д��Ĵ���������
	 (And|Or|Xor|Add|Addu|Sub|Subu|addi|addiu|ori|lui|Sll|Srl|jal|Jalr|Slt|Sltu|slti|sltiu|Srav)?(`ALUout):
	 (lw)?(`DM_W):
	 2'b11;
	 
	 
endmodule
