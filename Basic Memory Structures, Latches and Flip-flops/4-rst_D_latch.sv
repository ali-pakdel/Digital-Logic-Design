`timescale 1ns/1ns
module rst_D_latch(input D, clk, rst, output Q, Qbar);
	wire j1, j2, temp_D, temp_rst, temp_D2;
	
	not #(6) G1(temp_rst, rst);
	nand #(8) G2(temp_D, temp_rst, D);
	not #(6) G3(temp_D2, temp_D);
	
	nand #(8) G6(j1, temp_D2, clk);
	nand #(8) G7(j2, j1, clk);
	nand #(8) G8(Qbar, j2, Q);
	nand #(8) G9(Q, j1, Qbar);
endmodule