`timescale 1ps/1ps

module BitEquality_tb ();

    reg in0,in1;
    wire out;

    BitEquality b0 (.a(in0), .b(in1), .c(out));

    initial begin
        in0 = 0;
        in1 = 1;
        #200
        
        in0 = 0;
        in1 = 0;
        #200

        in0 = 1;
        in1 = 0;
        #200
        
        in0 = 1;
        in1 = 1;
        #200
        $stop;
        
    end
endmodule