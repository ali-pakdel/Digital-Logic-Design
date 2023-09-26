`timescale 1ns/1ns
module myBCS3(input a0, b0, e0, g0, output e1, g1);
	assign #(24, 24) e1 = ((a0 ~^ b0) & e0);
	assign #(29, 34) g1 = ((~a0 & b0 & e0) | g0);
endmodule
