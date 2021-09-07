`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:38:03 06/04/2021
// Design Name:   parity_data
// Module Name:   E:/vlsi/proj1/tb_parity_data.v
// Project Name:  proj1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: parity_data
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_parity_data;

	// Inputs
	reg [7:0] data;

	// Outputs
	wire [8:0] o_data;

	// Instantiate the Unit Under Test (UUT)
	parity_data uut (
		.data(data), 
		.o_data(o_data)
	);

	initial begin
		// Initialize Inputs
		data = 0;

		// Wait 100 ns for global reset to finish
		#100;
		data=8'b11101110;
		#100 data=8'b11111000;
		#400 $finish;
        
		// Add stimulus here

	end
      
endmodule

