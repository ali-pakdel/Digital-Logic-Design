`timescale 1ns/1ns
module TCS(input a0, a1, b0, b1, e0, g0, output e1, g1);
	assign #(29, 34) e1=(a0 ~^ b0) & (a1 ~^ b1) & e0;
	assign #(92, 97) g1=(((a0 & ~b0) | ((a0 | ~b0) & a1 & ~b1)) & e0) | g0;
endmodule
	