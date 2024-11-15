module tb_adder_4bit;
    reg [3:0] a, b;
    reg cin;
    wire [3:0] sum;
    wire cout;

    adder_4bit uut (
        .a(a), 
        .b(b), 
        .cin(cin), 
        .sum(sum), 
        .cout(cout)
    );

    initial begin
        $monitor("a=%b, b=%b, cin=%b, SUM=%b, CARRY OUT=%b", a, b, cin, sum, cout);
        a = 4'b0000; b = 4'b0000; cin = 0;
        #10 a = 4'b0011; b = 4'b0101; cin = 0;
        #10 a = 4'b1111; b = 4'b0001; cin = 1;
        #10 a = 4'b1010; b = 4'b0101; cin = 0;
        #10 a = 4'b1001; b = 4'b1001; cin = 1;
        #10 $finish;
    end
endmodule
