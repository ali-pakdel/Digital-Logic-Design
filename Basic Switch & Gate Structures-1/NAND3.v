`timescale 1ns/1ns
module myNAND3(input aa, b0, e0, output kk);
	wire n1, n2;
	supply1 Vdd;
	supply0 Gnd;
	pmos #(5, 6, 7) T1(kk, Vdd, aa), T2(kk, Vdd, b0), T3(kk, Vdd, e0);
	nmos #(3, 4, 5) T4(n1, Gnd, e0), T5(n2, n1, b0), T6(kk, n2, aa);
endmodule
