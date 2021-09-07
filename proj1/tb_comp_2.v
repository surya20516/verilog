`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:59:58 05/31/2021
// Design Name:   comp_2
// Module Name:   E:/vlsi/proj1/tb_comp_2.v
// Project Name:  proj1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: comp_2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_comp_2;

	// Inputs
	reg [1:0] a;
	reg [1:0] b;

	// Outputs
	wire g;
	wire l;
	wire e;

	// Instantiate the Unit Under Test (UUT)
	comp_2 uut (
		.a(a), 
		.b(b), 
		.g(g), 
		.l(l), 
		.e(e)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
      #100;
		// Wait 100 ns for global reset to finish
		#100 a=2'b00;b=2'b01;
		#100 a=2'b01;b=2'b00;
		 a=2'b00;b=2'b00;
	 #400 $finish;
		
        
		// Add stimulus here

	end
      
endmodule

