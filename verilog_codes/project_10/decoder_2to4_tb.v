
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.10.2024 15:28:36
// Design Name: 
// Module Name: decoder_2to4_tb
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

module tb_decoder_2to4;
reg [1:0] a;
reg en;
wire [3:0] y;

decoder_2to4 uut (.y(y), .a(a), .en(en));

initial begin
    en = 0; a = 2'b00;
    #10 $display("en = %b, a = %b, y = %b", en, a, y);

    en = 1; a = 2'b00;
    #10 $display("en = %b, a = %b, y = %b", en, a, y);

    a = 2'b01;
    #10 $display("en = %b, a = %b, y = %b", en, a, y);

    a = 2'b10;
    #10 $display("en = %b, a = %b, y = %b", en, a, y);

    a = 2'b11;
    #10 $display("en = %b, a = %b, y = %b", en, a, y);

    en = 0;
    #10 $display("en = %b, a = %b, y = %b", en, a, y);
end

endmodule

