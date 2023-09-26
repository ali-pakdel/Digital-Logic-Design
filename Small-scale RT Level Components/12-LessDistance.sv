`timescale 1ns/1ns
module LessDistance(input [7:0] reff, dataA, dataB, output reg [7:0] data);
	wire [7:0] tempA;
	wire [7:0] tempB;
	wire e1, g1;

	AbsDiff R1(reff, dataA, tempA);
	AbsDiff R2(reff, dataB, tempB);
	NCS #8 R4(tempA, tempB, 1, 0, e1, g1);
	mux2to1 R5(dataB, dataA, g1, data);

endmodule
