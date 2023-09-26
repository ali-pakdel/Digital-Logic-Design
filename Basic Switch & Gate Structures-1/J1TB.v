`timescale 1ns/1ns
module j1TB();
	reg aa, bb;
	wire jj;
	my_j1 TB1(.a0(aa), .b0(bb), .j1(jj));
	initial begin
	#13 aa = 1'b0;
	#14 bb = 1'b0;
	#17 bb = 1'b1;
	#19 aa = 1'b1;
	#23 bb = 1'b0;
	#0 aa = 1'b0;
	#41 aa = 1'b1;
	#0 bb = 1'b0;
	#31 $stop;
	end
endmodule
	
