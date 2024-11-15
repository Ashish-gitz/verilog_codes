
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.10.2024 13:58:59
// Design Name: 
// Module Name: full_adder_vector_tb
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

module full_adder_tb;
    reg [2:0]A;
    wire Sum,Carry;

    full_adder_vector uut ( .A(A), .Sum(Sum),.Carry(Carry));

    initial begin
        $monitor("Time=%0t|A=%b|sum=%b|carry=%b",$time,A,Sum,Carry);
        A = 3'b000;
        #10 A = 3'b001;
        #10 A = 3'b010;
        #10 A = 3'b011;
        #10 A = 3'b100;
        #10 A = 3'b101;
        #10 A = 3'b110;
        #10 A = 3'b111;
        #10 $stop;
    end
endmodule

