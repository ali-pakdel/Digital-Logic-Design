`timescale 1ns/1ns
module TMI(input [1:0] a, input ci, output [1:0] s, output co);
	wire [2:0] temp;
	assign temp = a + ci;
	
	assign #(12) s[0] = a[0] + ci;
	assign #(42, 38) s[1] = temp[1];
	assign #(42, 38) co = temp[2];

endmodule
