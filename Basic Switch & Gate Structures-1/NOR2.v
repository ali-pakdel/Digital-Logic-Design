`timescale 1ns/1ns
module myNOR2(input k1, g0, output gg);
	wire p1;
	supply1 Vdd;
	supply0 Gnd;
	pmos #(5, 6, 7) T1(p1, Vdd, g0), T2(gg, p1, k1);
	nmos #(3, 4, 5) T3(gg, Gnd, g0), T4(gg, Gnd, k1);
endmodule
