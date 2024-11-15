`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.10.2024 13:46:20
// Design Name: 
// Module Name: fulladder_cc
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


module fulladder_cc(
    input a, b, cin,
    output reg sum, cout
);
    always @(*) begin
        case ({a, b, cin})
            3'b000: {cout, sum} = 2'b00;
            3'b001: {cout, sum} = 2'b01;
            3'b010: {cout, sum} = 2'b01;
            3'b011: {cout, sum} = 2'b10;
            3'b100: {cout, sum} = 2'b01;
            3'b101: {cout, sum} = 2'b10;
            3'b110: {cout, sum} = 2'b10;
            3'b111: {cout, sum} = 2'b11;
            default: {cout, sum} = 2'b00;
        endcase
    end
endmodule

