`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:11:43 07/02/2021
// Design Name:   count_zeros_fun
// Module Name:   E:/vlsi/task_fun/tb_count_zeros_fun.v
// Project Name:  task_fun
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: count_zeros_fun
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_count_zeros_fun;

	// Inputs
	reg [7:0] data;

	// Outputs
	wire [3:0] count;

	// Instantiate the Unit Under Test (UUT)
	count_zeros_fun uut (
		.data(data), 
		.count(count)
	);

	initial begin
		// Initialize Inputs
		data = 0;

		// Wait 100 ns for global reset to finish
	   #100;
		data=8'b11100110;
		#100 data=8'b11111111;
		#300 $finish;
        
		// Add stimulus here

	end
      
endmodule

