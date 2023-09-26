`timescale 1ns/1ns
module mux2to1(input [9:0] in1, in2, input selector, output [9:0] out);
	assign out = ~selector ? in1 : in2;
endmodule
