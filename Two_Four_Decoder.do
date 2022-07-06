vlog 2_to_4_decoder/Two_Four_Decoder.v
vlog 2_to_4_decoder/Two_Four_Decoder_tb.v

vsim work.Two_Four_Decoder_tb
add wave -position insertpoint  \
sim:/Two_Four_Decoder_tb/decoded \
sim:/Two_Four_Decoder_tb/uncoded
run -all
