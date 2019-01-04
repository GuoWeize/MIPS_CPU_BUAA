`timescale 1ns / 1ps
`include "Macro.v"
//////////////////////////////////////////////////////////////////////////////////
//Ð´Èëµ½ÄÄ¸ö¼Ä´æÆ÷
module MUX_WRsel(
    input [31:0] IR,
    input [1:0] sel,
    output [4:0] RW
    );
	 
	 wire [4:0] RD,RT;
	 
	 assign RD[4:0] = IR[`rd];
	 assign RT[4:0] = IR[`rt];
	 
	 assign RW = 
	 (sel==`RD)?(RD):
	 (sel==`RT)?(RT):
	 (sel==`RA)?(5'b11111):
	 5'b00000;
	 
	 
endmodule
