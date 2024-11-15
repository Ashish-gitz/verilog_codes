module tb_comparator_4bit;
    reg [3:0] a, b;
    wire eq, gt, lt;

    comparator_4bit uut (
        .a(a), 
        .b(b), 
        .eq(eq), 
        .gt(gt), 
        .lt(lt)
    );

    initial begin
        $monitor("a=%b, b=%b, EQ=%b, GT=%b, LT=%b", a, b, eq, gt, lt);
        a = 4'b0000; b = 4'b0000; #10;
        a = 4'b0001; b = 4'b0000; #10;
        a = 4'b0010; b = 4'b0001; #10;
        a = 4'b0011; b = 4'b0010; #10;
        a = 4'b0100; b = 4'b0111; #10;
        a = 4'b0111; b = 4'b0110; #10;
        a = 4'b1111; b = 4'b1111; #10;
        $finish;
    end
endmodule
