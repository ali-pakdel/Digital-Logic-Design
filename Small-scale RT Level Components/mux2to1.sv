`timescale 1ns/1ns
module mux2to1(input [7:0] a, b, input s, output reg [7:0] c);
	always @(s) begin
		if (s == 1)
			assign c = a;
		else
			assign c = b;
	end
endmodule
