`timescale 1ns/1ns
module reg_flip_flop(input [7:0] PI, input clk, rst, output [7:0] PO);
	genvar i;
	generate
		for (i = 7; i >=0; i = i - 1) begin : flip_flops
			D_flip_flop XX (PI[i], clk, rst, PO[i]);
		end
	endgenerate
endmodule
