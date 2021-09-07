`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:19:23 06/07/2021
// Design Name:   ring
// Module Name:   E:/vlsi/proj1/tb_ring.v
// Project Name:  proj1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ring
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_ring;

	// Inputs
	reg [3:0]in;
	reg clk;
	reg reset;

	// Outputs
	wire [0:3] out;

	// Instantiate the Unit Under Test (UUT)
	ring uut (
		.in(in), 
		.clk(clk), 
		.reset(reset),
		.out(out)
	);
initial begin 
clk=1;
forever #50 clk=~clk;
end
	initial begin
		// Initialize Inputs
	 #100in=4'b0101;reset=1;
	 #100 reset=0;
	#800 $finish;

		// Wait 100 ns for global reset to finish
		
        
		// Add stimulus here

	end
      
endmodule

