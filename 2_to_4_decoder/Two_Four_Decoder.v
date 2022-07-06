`timescale 1ps/1ps

module Two_Four_Decoder (
    input [1:0] uncoded,
    output reg [3:0] decoded
);
always @(*) begin
    case (uncoded)
        2'b00:  decoded = 4'b0001;
        2'b01:  decoded = 4'b0010;
        2'b10:  decoded = 4'b0100;
        2'b11:  decoded = 4'b1000;  
        default:  decoded = 4'b0000;  
    endcase
end
    
endmodule