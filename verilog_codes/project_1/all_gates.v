`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.10.2024 12:13:05
// Design Name: 
// Module Name: all_gates
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


module all_gates(
    input a, b,
    output and_out, or_out, not_out, nand_out, nor_out, xor_out, xnor_out
);
    assign and_out = a & b;
    assign or_out = a | b;
    assign not_out = ~a;
    assign nand_out = ~(a & b);
    assign nor_out = ~(a | b);
    assign xor_out = a ^ b;
    assign xnor_out = ~(a ^ b);
endmodule

