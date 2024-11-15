`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.10.2024 16:08:50
// Design Name: 
// Module Name: gray_to_binary_dataflow
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

module gray_to_binary(
    input [3:0] gray,
    output [3:0] binary
);
    assign binary[3] = gray[3]; // MSB remains the same
    assign binary[2] = gray[2] ^ gray[3];
    assign binary[1] = gray[1] ^ binary[2];
    assign binary[0] = gray[0] ^ binary[1];
endmodule

