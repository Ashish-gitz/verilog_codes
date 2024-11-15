module tb_mux_4to1;
reg [1:0] sel;
reg a, b, c, d;
wire y;

mux_4to1 uut (.y(y), .sel(sel), .a(a), .b(b), .c(c), .d(d));

initial begin
    a = 0; b = 1; c = 0; d = 1;

    sel = 2'b00;
    #10 $display("sel = %b, y = %b (a = %b)", sel, y, a);

    sel = 2'b01;
    #10 $display("sel = %b, y = %b (b = %b)", sel, y, b);

    sel = 2'b10;
    #10 $display("sel = %b, y = %b (c = %b)", sel, y, c);

    sel = 2'b11;
    #10 $display("sel = %b, y = %b (d = %b)", sel, y, d);
end

endmodule


