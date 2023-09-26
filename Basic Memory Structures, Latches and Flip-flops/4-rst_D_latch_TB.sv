`timescale 1ns/1ns
module rst_D_latch_TB();
	logic d = 1;
	logic clk = 1;
	logic rst = 0;
	wire q;
	wire q2;
	rst_D_latch TB2(d, clk, rst, q, q2);
	always #190 clk = ~clk;
	always #319 rst = ~rst;
	initial begin
	repeat(30) #137 d = ~d;
	#500 $stop;
	end
endmodule
