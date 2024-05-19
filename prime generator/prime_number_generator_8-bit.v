`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:03:46 05/19/2024 
// Design Name: 
// Module Name:    prime_number_generator_8-bit 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module prime_generator (
    input wire clk,
    output reg [7:0] prime,
    output reg valid
);
    reg [7:0] num;
    reg [7:0] i;
    reg is_prime;

    initial begin
        num = 2;
        prime = 0;
        valid = 0;
    end

    always @(posedge clk) 
	 begin
        is_prime = 1;
        for (i = 2; i <= num / 2; i = i + 1) 
		  begin
            if (num % i == 0) 
				begin
                is_prime = 0;
            end
        end
        
        if (is_prime) begin
            prime <= num;
            valid <= 1;
            num <= num + 1;
        end else begin
            valid <= 0;
            num <= num + 1;
        end
        
        if (num > 255) begin
            num <= 2;
        end
    end
endmodule
