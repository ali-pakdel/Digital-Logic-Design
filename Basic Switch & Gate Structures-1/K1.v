`timescale 1ns/1ns
module my_k1(input a0, b0, e0, output k1); 
	Inverter G4(a0, aa);
	myNAND3 G5(aa, b0, e0, kk);
	Inverter G6(kk, k1);
endmodule