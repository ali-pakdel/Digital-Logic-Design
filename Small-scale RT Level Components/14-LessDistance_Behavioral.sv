`timescale 1ns/1ns
module LessDistance_Behavioral(input [7:0] refI, dataA, dataB, output reg [7:0] data);
	logic [7:0] tempA, tempB;
	always @ (refI, dataA, dataB) begin
		if (refI > dataA)
			tempA = refI - dataA;
		else
			tempA = dataA - refI;

		if (refI > dataB)
			tempB = refI - dataB;
		else
			tempB = dataB - refI;

		if (tempA > tempB)
			data = dataA;
		else
			data = dataB;
	end
endmodule

