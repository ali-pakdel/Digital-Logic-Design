`timescale 1ns/1ns
module shift_reg_latch_TB();
	logic clk = 1, rst = 0, sin = 0;
	wire [7:0]po;
	wire sout;
	shift_reg_latch TB3(clk, rst, sin, po, sout);
	always #80 clk = ~clk;
	always #1000 rst = ~rst;
	initial begin
	#100 rst = ~rst;
	#500 rst = ~rst;
	repeat(11) #700 sin = ~sin;
	#3000 $stop;
	end
endmodule