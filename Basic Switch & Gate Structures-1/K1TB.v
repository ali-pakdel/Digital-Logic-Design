`timescale 1ns/1ns
module k1TB();
	reg aa0, bb, ee;
	wire kk;
	my_k1 TB3(.a0(aa0), .b0(bb), .e0(ee), .k1(kk));
	initial begin
	#43 aa0 = 1'b0;
	#52 bb = 1'b0;
	#53 ee = 1'b0;
	#73 bb = 1'b1;
	#0 ee = 1'b1;
	#59 aa0 = 1'b1;
	#0 bb = 1'b0;
	#0 ee = 1'b0;
	#50 $stop;
	end
endmodule

