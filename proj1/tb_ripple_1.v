`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:51:33 06/05/2021
// Design Name:   ripple
// Module Name:   E:/vlsi/proj1/tb_ripple_1.v
// Project Name:  proj1
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

module tb_ripple_1;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg cin;

	// Outputs
	wire [3:0] sum;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	ripple uut (
		.a(a), 
		.b(b), 
		.cin(cin),
		.sum(sum) ,
		.cout(cout)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;

		// Wait 100 ns for global reset to finish
		#100;
        a=4'b0101;b=4'b1010;cin=0;
		  #100 a=4'b0000;b=4'b1011;
		  #600 $finish;
		// Add stimulus here

	end
      
endmodule

