`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:34:06 06/04/2021
// Design Name:   counter
// Module Name:   E:/vlsi/proj1/tb_counter.v
// Project Name:  proj1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: counter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_counter;

	// Inputs
	reg clk;
	reg reset;

	// Outputs
	wire [3:0] count;

	// Instantiate the Unit Under Test (UUT)
	counter uut (
		.clk(clk), 
		.reset(reset), 
		.count(count)
	);
	initial begin
clk=0;
forever #50 clk=~clk;
end  
	initial begin
		// Initialize Inputs
		
		reset = 0;

		// Wait 100 ns for global reset to finish
		#900 reset=1;
		#1000$finish;
        
		// Add stimulus here

	end
      
endmodule

