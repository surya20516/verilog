`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:00:34 05/30/2021
// Design Name:   mux
// Module Name:   E:/vlsi/proj1/tb_mux4.v
// Project Name:  proj1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_mux4;

	// Inputs
	reg [3:0] i;
	reg [1:0] s;

	// Outputs
	wire o;

	// Instantiate the Unit Under Test (UUT)
	mux uut (
		.i(i), 
		.s(s), 
		.o(o)
	);

	initial begin
		// Initialize Inputs
		i = 0;
		s = 0;
		#100;
      #100 i=4'b0001;s=2'b00;
		#100 i=4'b0011;s=2'b01;
		#100 i=4'b0100;s=2'b10;
		#100 i=4'b1000;s=2'b11;
		// Wait 100 ns for global reset to finish

      #800 $finish;
		// Add stimulus here

	end
      
endmodule

