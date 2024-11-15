`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.10.2024 16:39:43
// Design Name: 
// Module Name: bcd_adder_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module tb_bcd_adder;
    reg [3:0] a, b;
    wire [3:0] sum;
    wire carry;

    bcd_adder uut (
        .a(a), 
        .b(b), 
        .sum(sum), 
        .carry(carry)
    );
 initial begin
        $monitor("a=%b, b=%b, SUM=%b, CARRY=%b", a, b, sum, carry);
        
        a = 4'b0000; b = 4'b0000; #10;
        a = 4'b0101; b = 4'b0011; #10;
        a = 4'b1001; b = 4'b0001; #10;
        a = 4'b0110; b = 4'b0101; #10;
        a = 4'b1000; b = 4'b1001; #10;
        a = 4'b0010; b = 4'b0011; #10;
        a = 4'b1001; b = 4'b1001; #10; 

        $finish;
    end
endmodule

