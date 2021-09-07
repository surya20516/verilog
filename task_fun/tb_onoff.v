`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:41:34 07/05/2021
// Design Name:   led_onoff
// Module Name:   E:/vlsi/task_fun/tb_onoff.v
// Project Name:  task_fun
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: led_onoff
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_onoff;

	// Inputs
	reg clk;

	// Outputs
	wire [28:0] count;
	wire led;

	// Instantiate the Unit Under Test (UUT)
	led_onoff uut (
		.clk(clk), 
		.count(count), 
		.led(led)
	);
initial begin
clk=0;
forever #5 clk=~clk;
end
	
	initial begin
		// Initialize Inputs
		
		// Wait 100 ns for global reset to finish
		
		
        
		// Add stimulus here

	end
      
endmodule

