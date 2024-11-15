module full_adder_dataflow(
    input a, b, cin,
    output sum, cout
);
    wire sum1, carry1, carry2;

    halff_adder ha1 (.a(a), .b(b), .sum(sum1), .carry(carry1));
    halff_adder ha2 (.a(sum1), .b(cin), .sum(sum), .carry(carry2));
    assign cout = carry1 | carry2;
endmodule