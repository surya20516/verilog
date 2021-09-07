`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:03:28 06/04/2021
// Design Name:   parity_data_beh
// Module Name:   E:/vlsi/proj1/tb_parity_beh.v
// Project Name:  proj1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: parity_data_beh
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_parity_beh;

	// Inputs
	reg [7:0] data;

	// Outputs
	wire pe;

	// Instantiate the Unit Under Test (UUT)
	parity_data_beh uut (
		.data(data), 
		.pe(pe)
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

