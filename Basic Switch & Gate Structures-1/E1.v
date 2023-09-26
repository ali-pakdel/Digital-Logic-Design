`timescale 1ns/1ns
module my_e1(input j1, e0, output e1);
	myNAND2 G2(j1, e0, ee);
	Inverter G3(ee, e1);
endmodule
