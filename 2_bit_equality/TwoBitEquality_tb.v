`timescale 1ps/1ps

module TwoBitEquality_tb ();

    reg [1:0] in0,in1;
    wire out;

    TwoBitEquality eq2 (.a(in0), .b(in1), .c(out));

    initial begin
        in0 = 2'b00;
        in1 = 2'b01;
        #200

        in0 = 2'b01;
        in1 = 2'b01;
        #200

        in0 = 2'b10;
        in1 = 2'b01;
        #200

        in0 = 2'b11;
        in1 = 2'b01;
        #200

        in0 = 2'b00;
        in1 = 2'b00;
        #200

        in0 = 2'b00;
        in1 = 2'b10;
        #200

        in0 = 2'b10;
        in1 = 2'b10;
        #200

        in0 = 2'b00;
        in1 = 2'b11;
        #200
        $stop;
        
    end
endmodule