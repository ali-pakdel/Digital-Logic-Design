`timescale 1ns/1ns
module D_flip_flop_TB();
	logic d = 1;
	logic clk = 1;
	logic rst = 0;
	wire q;
	wire q2;
	D_flip_flop TB4(d, clk, rst, q, q2);
	always #90 clk = ~clk;
	always #971 rst = ~rst;
	initial begin
	repeat(30) #197 d = ~d;
	#500 $stop;
	end
endmodule
