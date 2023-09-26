`timescale 1ns/1ns
module e1TB();
	reg jj, ee0;
	wire ee1;
	my_e1 TB2(.j1(jj), .e0(ee0), .e1(ee1));
	initial begin
	#177 jj = 1'b0;
	#132 ee0 = 1'b0;
	#179 jj = 1'b1;
	#191 ee0 = 1'b1;
	#193 jj = 1'b0;
	#0 ee0 = 1'b0;
	#300 $stop;
	end
endmodule
