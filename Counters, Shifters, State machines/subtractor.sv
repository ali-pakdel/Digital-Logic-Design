`timescale 1ns/1ns
module subtractor(input [5:0] nb, output [5:0] w);
	logic def = 64;
	assign w = def - nb;
endmodule
