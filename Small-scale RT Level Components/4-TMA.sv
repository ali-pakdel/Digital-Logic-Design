`timescale 1ns/1ns
module TMA(input [1:0] a, b, input ci, output [1:0] s, output co);
	wire [2:0] temp;
	
	assign temp = a + b + ci;
	assign #(17) s[0] = a[0] + b[0] + ci;
	assign #(112, 96) s[1] = temp[1];
	assign #(112, 96) co = temp[2];

endmodule
