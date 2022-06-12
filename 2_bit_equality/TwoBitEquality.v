`timescale 1ps/1ps

module TwoBitEquality (
    input [1:0] a,
    input [1:0] b,
    output c
);

wire e0, e1;
BitEquality eq1 (.a(a[0]), .b(b[0]), .c(e0));
BitEquality eq0 (.a(a[1]), .b(b[1]), .c(e1));

assign c = e0 & e1;

endmodule