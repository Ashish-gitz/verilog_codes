module decoder_3to8(
    input [2:0] in,
    output [7:0] out
);
    wire [3:0] lower_out, upper_out;
    
    decoder_2to4 lower_decoder (
        .in(in[1:0]), 
        .enable(~in[2]), 
        .out(lower_out)
    );
    
    decoder_2to4 upper_decoder (
        .in(in[1:0]), 
        .enable(in[2]), 
        .out(upper_out)
    );

    assign out = {upper_out, lower_out};
endmodule
