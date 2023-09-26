`timescale 1ns/1ns
module Invert_Bits #(parameter N)(input [N-1:0] a, output [N-1:0] b);
	genvar i;
	generate
		for (i=N-1; i>=0; i=i-1) begin: inver_bits
			assign b[i] = ~a[i];
		end
	endgenerate
endmodule
