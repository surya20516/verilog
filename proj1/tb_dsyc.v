`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:22:54 06/01/2021
// Design Name:   dsyc
// Module Name:   E:/vlsi/proj1/tb_dsyc.v
// Project Name:  proj1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: dsyc
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_dsyc;

	// Inputs
	reg d;
	reg clk;
	reg reset;

	// Outputs
	wire q;

	// Instantiate the Unit Under Test (UUT)
	dsyc uut (
		.d(d), 
		.clk(clk), 
		.reset(reset), 
		.q(q)
	);
initial begin
clk=0;
forever #100 clk=~clk;
end  
	initial begin
		// Initialize Inputs
		

		// Wait 100 ns for global reset to finish
	        reset=0;d=0;
		#100 reset=0;d=1;
		#100 reset=1;d=0;
		#100 reset=1;d=1;
		#400 $finish;
        
		// Add stimulus here

	end
      
endmodule

