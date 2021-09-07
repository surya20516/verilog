`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:51:27 06/29/2021
// Design Name:   seq_melay
// Module Name:   E:/vlsi/sequencedetector/tb_seq_melay.v
// Project Name:  sequencedetector
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: seq_melay
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_seq_melay;

	// Inputs
	reg clk;
	reg reset;
	reg x;

	// Outputs
	wire z;

	// Instantiate the Unit Under Test (UUT)
	seq_melay uut (
		.clk(clk), 
		.reset(reset), 
		.x(x), 
		.z(z)
	);
initial begin
clk=0;
forever #20 clk=~clk;
end
	initial begin
		// Initialize Inputs
		clk =0;
		reset =0;
		x =1;

		// Wait 100 ns for global reset to finish
		#40;
		reset=1;x=0;
		#40 x=1;
		#40 x=0;
		#40 x=1;
		#40 x=1;
		#40 x=0;
		#40 x=1;
		#40 x=0;
		#40 x=1;
		#40 x=0;
		#40 x=1;
		#600$finish;
		
		
		
        
		// Add stimulus here

	end
      
endmodule

