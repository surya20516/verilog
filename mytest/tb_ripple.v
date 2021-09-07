`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:27:52 06/05/2021
// Design Name:   ripple
// Module Name:   E:/vlsi/mytest/tb_ripple.v
// Project Name:  mytest
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ripple
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_ripple;

	// Inputs
	reg [3:0] in0;
	reg [3:0] in1;

	// Outputs
	wire [3:0] out;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	ripple uut (
		.in0(in0), 
		.in1(in1), 
		.out(out), 
		.cout(cout)
	);

	initial begin
		// Initialize Inputs
		in0 = 0;
		in1 = 0;

		// Wait 100 ns for global reset to finish
		in0 = 4'b1010; in1 = 4'b1011; #100
		in0 = 4'b1010; in1 = 4'b1100; #100
		#500$finish;
        
		// Add stimulus here

	end
      
endmodule

