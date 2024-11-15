module all_gates_tb;
    reg a, b;
    wire and_out, or_out, not_out, nand_out, nor_out, xor_out, xnor_out;

    all_gates uut (
        .a(a), 
        .b(b), 
        .and_out(and_out), 
        .or_out(or_out), 
        .not_out(not_out), 
        .nand_out(nand_out), 
        .nor_out(nor_out), 
        .xor_out(xor_out), 
        .xnor_out(xnor_out)
    );

    initial begin
        $monitor("a=%b, b=%b, AND=%b, OR=%b, NOT=%b, NAND=%b, NOR=%b, XOR=%b, XNOR=%b",
                 a, b, and_out, or_out, not_out, nand_out, nor_out, xor_out, xnor_out);
        a = 0; b = 0;
        #10 a = 0; b = 1;
        #10 a = 1; b = 0;
        #10 a = 1; b = 1;
        #10 $finish;
    end
endmodule