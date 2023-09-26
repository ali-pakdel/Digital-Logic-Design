`timescale 1ns/1ns
module NMA #(parameter N)(input [N-1:0] a, b, input ci,output [N-1:0] s, output co);
	wire [0:N/2] C;
	assign C[0]=ci;

	genvar i;
	generate
		for (i=0; i<N/2; i=i+1) begin: comparators_TCS
			TMA XX ({a[(i*2)+1], a[i*2]}, {b[(i*2)+1], b[i*2]}, C[i], {s[(i*2)+1], s[i*2]}, C[i+1]);
		end
	endgenerate

	assign co = C[N/2];

endmodule
