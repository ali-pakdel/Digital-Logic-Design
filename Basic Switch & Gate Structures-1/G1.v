`timescale 1ns/1ns
module my_g1(input k1, g0, output g1);
	myNOR2 G7(k1, g0, gg);
	Inverter G8(gg, g1);
endmodule