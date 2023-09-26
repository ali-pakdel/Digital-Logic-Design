`timescale 1ns/1ns
module myNAND2(input j1, e0, output ee);
	wire i1;
	supply1 Vdd;
	supply0 Gnd;
	pmos #(5, 6, 7) T1(ee, Vdd, j1), T2(ee, Vdd, e0);
	nmos #(3, 4, 5) T3(ee, i1, j1), T4(i1, Gnd, e0);
endmodule