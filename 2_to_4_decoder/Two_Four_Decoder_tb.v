`timescale 1ps/1ps

module Two_Four_Decoder_tb ();

    reg [1:0] uncoded;
    wire [3:0] decoded;

    Two_Four_Decoder D0 (.uncoded(uncoded),.decoded(decoded));

    initial begin
        uncoded = 2'b00;
        #200
        
        uncoded = 2'b10;
        #200

        uncoded = 2'b01;
        #200

        uncoded = 2'b11;
        #200

        uncoded = 2'bzz;
        #200
        $stop;
        
    end

    
endmodule