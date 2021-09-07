`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:04:32 06/04/2021
// Design Name:   add
// Module Name:   E:/vlsi/proj1/tb_add.v
// Project Name:  proj1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: add
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_add;

	// Inputs
	reg a;
	reg b;

	// Outputs
	wire c;

	// Instantiate the Unit Under Test (UUT)
	add uut (
		.a(a), 
		.b(b), 
		.c(c)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;

		// Wait 100 ns for global reset to finish
		#100 a=1;b=0;
		#100 a=0;b=1;
		#500 $finish;
        
		// Add stimulus here

	end
      
endmodule

