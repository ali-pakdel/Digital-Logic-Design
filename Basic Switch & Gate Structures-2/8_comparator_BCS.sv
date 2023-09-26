`timescale 1ns/1ns
module eight_comparator_BCS(input [0:7] a, [0:7] b, output e1, g1);
	wire [0:8] W_E; 
	wire [0:8] W_G;

	assign e1=W_E[8];
	assign g1=W_G[8];
	assign W_E[0]=1;
	assign W_G[0]=0;

	genvar i;
	generate
		for (i=0; i<8; i=i+1) begin: comparators_BCS
			BCS XX (a[i], b[i], W_E[i], W_G[i], W_E[i+1], W_G[i+1]);
		end
	endgenerate
endmodule