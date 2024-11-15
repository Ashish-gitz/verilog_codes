
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.10.2024 14:34:10
// Design Name: 
// Module Name: mux_2to1_behavioral
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

module mux_2to1(
    input a, b, sel,
    output reg out
);
    always @(a or b or sel) begin
        if (sel)
            out = b;
        else
            out = a;
    end
endmodule
