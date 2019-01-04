`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
`define PCbegin 32'b00000000000000000011000000000000
`define zero 32'b0000_0000_0000_0000_0000_0000_0000_0000

//|31   26|25   21|20   16|15   11|10   6|5    0|
//|  op   |  rs   |  rt   |   rd  |  sa  | func |
`define op 		31:26
`define rs 		25:21
`define rt 		20:16
`define rd 		15:11
`define sa 		10:6
`define func 	5:0
`define imm16 	15:0
`define imm26 	25:0

//指令类型code type
`define cal_r 4'b0000
`define cal_i 4'b0001
`define btype 4'b0010
`define load  4'b0011
`define store 4'b0100
`define shift 4'b0101
`define luitype 4'b0110
`define jrtype 4'b0111
`define jaltype 4'b1000
`define jalrtype  4'b1001
`define slttype 4'b1010
`define sltitype 4'b1011
`define other 4'b1111


//标准指令
`define lw 6'b100011
`define sw 6'b101011
`define special 6'b000000
`define regimm 6'b000001
`define addi 6'b001000
`define addiu 6'b001001
`define ori 6'b001101
`define lui 6'b001111
`define beq 6'b000100
`define bne 6'b000101
`define j 6'b000010
`define jal 6'b000011
`define bgtz 6'b000111
`define blez 6'b000110
`define slti 6'b001010
`define sltiu 6'b001011


//特殊指令(op==000000)
`define and 6'b100100
`define or 6'b100101
`define xor 6'b100110
`define add 6'b100000
`define addu 6'b100001
`define sub 6'b100010
`define subu 6'b100011
`define sll 6'b000000
`define srl 6'b000010
`define jr 6'b001000
`define jalr 6'b001001
`define slt 6'b101010
`define sltu 6'b101011
`define srav 6'b000111


//寄存器立即数指令(op==000001)
`define bgez 5'b00001
`define bltz 5'b00000


//ALUop 选择ALU操作
`define alu_add 4'b0000
`define alu_sub 4'b0001
`define alu_and 4'b0010
`define alu_or 4'b0011
`define alu_xor 4'b0100
`define alu_lui 4'b0101
`define alu_sll 4'b0110
`define alu_srl 4'b0111
`define alu_nop 4'b1000
`define alu_srav 4'b1001
`define alu_other 4'b1111


//PCsel 选择nPC
`define pc4 2'b00
`define pcb 2'b01
`define pcj 2'b10
`define pcreg 2'b11


//ALUsel 选择ALU的B端口输入
`define RT_E 2'b00
`define EXTout 2'b01
`define ALUin 2'b10


//WRsel 写入到哪个寄存器
`define RD 2'b00
`define RT 2'b01
`define RA 2'b10


//WDsel 选择写入寄存器的数据
`define ALUout 2'b00
`define DM_W 2'b01


//Comsel 选择和什么进行比较
`define RTD_com 2'b00
`define zero_com 2'b01
`define Ext_com 2'b10


//ALUinsel 选择从ID级转入到ALU的数据
`define PC_Link 2'b00
`define SLT 2'b01


//RSDsel
`define RSD_RA 2'b00
`define RSD_ALU 2'b01
`define RSD_MUX 2'b10
`define RSD_ALUin 2'b11


//RTDsel
`define RTD_RB 2'b00
`define RTD_ALU 2'b01
`define RTD_MUX 2'b10
`define RTD_ALUin 2'b11


//RSEsel
`define RSE_RS 2'b00
`define RSE_ALU 2'b01
`define RSE_MUX 2'b10


//RTEsel
`define RTE_RT 2'b00
`define RTE_ALU 2'b01
`define RTE_MUX 2'b10


//RTMsel
`define RTM_RT 2'b00
`define RTM_MUX 2'b10
