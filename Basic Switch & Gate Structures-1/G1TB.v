`timescale 1ns/1ns
module g1TB();
	reg kk, gg0;
	wire gg1;
	my_g1 TB4(.k1(kk), .g0(gg0), .g1(gg1));
	initial begin
	#11 kk = 1'b0;	
	#23 gg0 = 1'b0;
	#29 kk = 1'b1;
	#31 gg0 = 1'b1;
	#37 kk = 1'b0;
	#0 gg0 = 1'b0;
	#41 $stop;
	end
endmodule
