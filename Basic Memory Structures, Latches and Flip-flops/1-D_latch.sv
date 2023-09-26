`timescale 1ns/1ns
module D_latch(input D, clk, output Q, Qbar);
	wire j1, j2;
	nand #(8) G1(j1, D, clk);
	nand #(8) G2(j2, j1, clk);
	nand #(8) G4(Qbar, j2, Q);
	nand #(8) G3(Q, j1, Qbar);
endmodule
