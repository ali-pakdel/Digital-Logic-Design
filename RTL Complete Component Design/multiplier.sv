`timescale 1ns/1ns
module multiplier(input [9:0] num1, num2, output [9:0] out);
	wire [19:0] temp;
	assign out = temp[17:8];
	assign temp = num1 * num2;
endmodule
