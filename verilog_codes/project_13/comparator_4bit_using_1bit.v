`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.10.2024 16:02:53
// Design Name: 
// Module Name: comparator_4bit_using_1bit
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

module comparator_4bit(
    input [3:0] a, b,
    output eq, gt, lt
);
    wire eq1, gt1, lt1; // For first two bits
    wire eq2, gt2, lt2; // For last two bits
    wire g1, g2; // For overall greater than

    comparator_1bit comp0 (.a(a[0]), .b(b[0]), .eq(eq1), .gt(gt1), .lt(lt1));
    comparator_1bit comp1 (.a(a[1]), .b(b[1]), .eq(eq2), .gt(gt2), .lt(lt2));

    assign eq = eq1 & eq2;
    assign gt = (gt1 | (eq1 & gt2));
    assign lt = (lt1 | (eq1 & lt2));
endmodule