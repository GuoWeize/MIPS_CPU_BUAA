`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////

module mipstest;

	// Inputs
	reg clk;
	reg reset;

	// Instantiate the Unit Under Test (UUT)
	mips uut (
		.clk(clk), 
		.reset(reset)
	);

	initial begin
		// Initialize Inputs
		clk = 1'b0;
		reset = 1'b0;
		
		/*//#8 reset = 1'b0;
		
		#100 reset = 1'b1;
		#15 reset = 1'b0;*/
	end
	
	always #1 clk = ~clk;
      
endmodule

