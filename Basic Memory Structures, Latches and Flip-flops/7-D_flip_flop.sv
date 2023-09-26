`timescale 1ns/1ns
module D_flip_flop(input D, clk, rst, output Q, Qbar);
	wire tempQ, tempQbar;
	rst_D_latch R1(D, ~clk, rst, tempQ, tempQbar);
	D_latch R2(tempQ, clk, Q, Qbar);
endmodule  
