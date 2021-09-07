`timescale 10ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:56:25 07/05/2021
// Design Name:   led_onoff
// Module Name:   E:/vlsi/task_fun/tb_led_onoff.v
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

module tb_led_onoff;

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
forever #100 clk=~clk;
end
	initial begin
		// Initialize Inputs
		clk = 0;

		// Wait 100 ns for global reset to finish
		#1000;
        
		// Add stimulus here

	end
      
endmodule

