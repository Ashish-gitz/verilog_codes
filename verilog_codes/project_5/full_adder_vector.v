module full_adder(input [2:0]A ,output Sum,output Carry);
assign Sum=A[2]^A[1]^A[0];
assign Carry=(A[2]&A[1])|(A[1]&A[0])|(A[2]&A[0]);
endmodule

    