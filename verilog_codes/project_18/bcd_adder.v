module bcd_adder(
    input [3:0] a, b,
    output reg [3:0] sum,
    output reg carry
);
    always @(a or b) begin
        sum = a + b;
        carry = 0;
        if (sum > 9) begin
            sum = sum + 6;
            carry = 1;
        end
    end
endmodule
