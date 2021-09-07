`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:30:08 05/31/2021
// Design Name:   add4
// Module Name:   E:/vlsi/proj1/tb_add4.v
// Project Name:  proj1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: add4
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_add4;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg cin;

	// Outputs
	wire  cout;
	wire [3:0] s;

	// Instantiate the Unit Under Test (UUT)
	add4 uut (
		.a(a), 
		.b(b), 
		.cin(cin), 
		.cout(cout), 
		.s(s)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		cin = 0;
		// Wait 100 ns for global reset to finish
		#100 a=4'b0000;b=4'b0001;cin=1'b0;
		#100 a=4'b0010;b=4'b0011;cin=1'b1;
		#100 a=4'b1111;b=4'b1111;cin=1'b1;		
		#800 $finish;
        
		// Add stimulus here

	end
      
endmodule

