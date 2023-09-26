`timescale 1ns/1ns
module AbsDiff(input [7:0] reff, data, output [7:0] diff);
	wire [7:0] temp_inv;
	wire [7:0] temp1, temp2;
	wire [7:0] temp_inc;
	wire e1, g1, co1, co2;

	NCS #8 R1(reff, data, 1, 0, e1, g1);
	mux2to1 R2(reff, data, g1, temp1);
	mux2to1 R3(data, reff, g1, temp2);

	Invert_Bits #8 R4(temp1, temp_inv);
	NMI #8 R5(temp_inv, 1, temp_inc, co1);
	NMA #8 R6(temp_inc, temp2, 0, diff, co2);

endmodule
