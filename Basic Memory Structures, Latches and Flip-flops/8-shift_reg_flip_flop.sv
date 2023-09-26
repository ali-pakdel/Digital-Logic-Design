`timescale 1ns/1ns
module shift_reg_flip_flop(input clk, rst, sIn, output [7:0] PO, output sOut);
	wire [8:0] J;
	assign J[8] = sIn;
	assign sOut = J[0];
	genvar i;
	generate
		for (i = 0; i < 8; i = i + 1) begin : D_flip_flop
			D_flip_flop XX (J[i+1], clk, rst, J[i]);
		end
	endgenerate
	assign PO = J[7:0];
endmodule
