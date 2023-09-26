`timescale 1ns/1ns
module D_latch_TB();
	logic d = 1;
	logic clk = 1;
	wire q;
	wire q2;
	D_latch TB1(d, clk, q, q2);
	always #500 clk = ~clk;	
	initial begin
	repeat(20) #141 d = ~d;
	#200 $stop;
	end
endmodule