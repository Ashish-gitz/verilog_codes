
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.10.2024 16:18:00
// Design Name: 
// Module Name: gray_to_binary_behavirol
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

module gray_to_binary_behavioral(
    input [3:0] gray,
    output reg [3:0] binary
);
    always @(gray) begin
        binary[3] = gray[3]; // MSB remains the same
        binary[2] = gray[2] ^ binary[3];
        binary[1] = gray[1] ^ binary[2];
        binary[0] = gray[0] ^ binary[1];
    end
endmodule

