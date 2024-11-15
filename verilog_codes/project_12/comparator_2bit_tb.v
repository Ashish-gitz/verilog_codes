`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.10.2024 15:58:27
// Design Name: 
// Module Name: comparator_2bit_tb
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

module tb_comparator_2bit;
    reg [1:0] a, b;
    wire eq, gt, lt;

    comparator_2bit uut (
        .a(a), 
        .b(b), 
        .eq(eq), 
        .gt(gt), 
        .lt(lt)
    );

    initial begin
        $monitor("a=%b, b=%b, EQ=%b, GT=%b, LT=%b", a, b, eq, gt, lt);
        a = 2'b00; b = 2'b00; #10;
        a = 2'b01; b = 2'b00; #10;
        a = 2'b10; b = 2'b01; #10;
        a = 2'b11; b = 2'b10; #10;
        a = 2'b10; b = 2'b11; #10;
        a = 2'b00; b = 2'b01; #10;
        a = 2'b11; b = 2'b11; #10;
        $finish;
    end
endmodule

