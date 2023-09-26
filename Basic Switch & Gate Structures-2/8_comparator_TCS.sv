`timescale 1ns/1ns
module eight_comparator_TCS(input [0:7]a, [0:7]b, output e1, g1);
	wire [0:4] W_E; 
	wire [0:4] W_G;

	assign e1=W_E[4];
	assign g1=W_G[4];
	assign W_E[0]=1;
	assign W_G[0]=0;

	genvar i;
	generate
		for (i=0; i<4; i=i+1) begin: comparators_TCS
			TCS XX (a[i*2], a[(i*2)+1], b[i*2], b[(i*2)+1], W_E[i], W_G[i], W_E[i+1], W_G[i+1]);
		end
	endgenerate
endmodule
