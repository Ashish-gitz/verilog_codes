`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.10.2024 16:36:28
// Design Name: 
// Module Name: binary_to_gary_behavirol
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
module binary_to_gray_behavioral(
    input [3:0] binary,
    output reg [3:0] gray
);
    always @(binary) begin
        gray[3] = binary[3]; // MSB remains the same
        gray[2] = binary[3] ^ binary[2];
        gray[1] = binary[2] ^ binary[1];
        gray[0] = binary[1] ^ binary[0];
    end
endmodule

