`timescale 1ns/1ns
module LAST_TB();
	logic clk, rst, start;
	logic [9:0] x;
	logic [7:0] y;
	wire done, done2;
	wire [1:0] intpart, intpart2;
	wire [7:0] fracpart, fracpart2;
	
	cosinoss cos(clk, rst, start, x, y, intpart, fracpart, done);
	cosinos cos2(clk, rst, start, x, y, intpart2, fracpart2, done2);
	
	initial begin
		rst = 1'b1;
		clk = 1'b0;
		start = 1'b0;
	end
	
	initial #24 rst = 1'b0;
	
	always #5 clk = ~clk;
	
	initial begin
		#10 start = 1'b1;
		#40 start = 1'b0;
		#11 x = 10'b0110000000;
		y = 8'b10000000;
		#1000 start = 1'b1;
		#40 start = 1'b0;
		y = 8'b00100000;
		#1000 start = 1'b1;
		#40 start = 1'b0;
		#11 x = 10'b0100000000;
		#10000 $stop;
	end
endmodule


