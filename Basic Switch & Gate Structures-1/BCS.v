`timescale 1ns/1ns
module myBCS(input a0, b0, e0, g0, output e1, g1);
	my_j1 G1(a0, b0, j1);
	my_e1 G2(j1, e0, e1);
	my_k1 G3(a0, b0, e0, k1);
	my_g1 G4(k1, g0, g1);
endmodule
