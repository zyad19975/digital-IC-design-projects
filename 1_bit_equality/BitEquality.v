`timescale 1ps/1ps

module BitEquality (
    input a,b,
    output c
);

assign c = (a & b) | (~a & ~b);
    
endmodule