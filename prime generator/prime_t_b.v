`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:18:46 05/19/2024
// Design Name:   prime_generator
// Module Name:   C:/Users/ADMIN/prime_number_generator_8-bit/prime_t_b.v
// Project Name:  prime_number_generator_8-bit
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: prime_generator
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module prime_t_b;

	// Inputs
	reg clk;

	// Outputs
	wire [7:0] prime;
	

	// Instantiate the Unit Under Test (UUT)
	prime_generator uut (
		.clk(clk), 
		.prime(prime)
		
	);

	initial begin
		// Initialize Inputs
		clk = 0;

		// Wait 100 ns for global reset to finish
		end 
		always begin
		#50 clk=~clk;
        
		// Add stimulus here

	end
      
endmodule 

