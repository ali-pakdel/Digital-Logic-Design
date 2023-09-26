`timescale 1ns/1ns
module cosinos_TB();
	logic clk, rst, start;
	logic [9:0] x;
	logic [7:0] y;
	wire done;
	wire [1:0] intpart;
	wire [7:0] fracpart;
	
	cosinoss cos(clk, rst, start, x, y, intpart, fracpart, done);
	
	initial begin
		rst = 1'b1;
		clk = 1'b0;
		start = 1'b0;
		y = 8'b00100000;
	end
	
	initial #24 rst = 1'b0;
	
	always #5 clk = ~clk;
	
	initial begin
		#10 start = 1'b1;
		#11 x = 10'b0110000000;
		#40 start = 1'b1;
		#200 start = 1'b0;
		#500 $stop;
	end
endmodule


