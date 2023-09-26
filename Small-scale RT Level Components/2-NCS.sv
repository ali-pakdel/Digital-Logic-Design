`timescale 1ns/1ns
module NCS #(parameter N)(input [N-1:0] a, b, input e0, g0, output e1, g1);
	wire [N+1:0] W; 

	assign W[N]=g1;
	assign W[N+1]=e1;

	genvar i;
	generate
		for (i=N-1; i>=0; i=i-2) begin: comparators_TCS
			TCS XX ({a[i], a[i-1]}, {b[i], b[i-1]}, W[i+2], W[i+1], W[i], W[i-1]);
		end
	endgenerate

	assign e1=W[1];
	assign g1=W[0];

endmodule
