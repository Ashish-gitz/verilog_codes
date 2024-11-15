module tb_mux_2to1;
    reg a, b, sel;
    wire out;

    mux_2to1 uut (
        .a(a), 
        .b(b), 
        .sel(sel), 
        .out(out)
    );

    initial begin
        $display("sel a b | out");
        a = 0; b = 0; sel = 0; #10 $display("%b   %b %b | %b", sel, a, b, out);
        a = 0; b = 1; sel = 0; #10 $display("%b   %b %b | %b", sel, a, b, out);
        a = 1; b = 0; sel = 0; #10 $display("%b   %b %b | %b", sel, a, b, out);
        a = 1; b = 1; sel = 0; #10 $display("%b   %b %b | %b", sel, a, b, out);
        a = 0; b = 0; sel = 1; #10 $display("%b   %b %b | %b", sel, a, b, out);
        a = 0; b = 1; sel = 1; #10 $display("%b   %b %b | %b", sel, a, b, out);
        a = 1; b = 0; sel = 1; #10 $display("%b   %b %b | %b", sel, a, b, out);
        a = 1; b = 1; sel = 1; #10 $display("%b   %b %b | %b", sel, a, b, out);
        $finish;
    end
endmodule
