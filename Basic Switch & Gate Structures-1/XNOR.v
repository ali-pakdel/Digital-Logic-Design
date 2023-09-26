`timescale 1ns/1ns
module myXNOR(input a0, b0, output j1);
	wire i1, i2;
	Inverter G1(a0, i1), G2(b0, i2);
	nmos #(3, 4, 5) T1(j1, i1, i2);
	nmos #(3, 4, 5) T2(j1, a0, b0);
endmodule