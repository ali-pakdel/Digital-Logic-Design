`timescale 1ns/1ns
module shift_reg_flip_flop_TB();
	logic clk = 1, rst = 1, sin = 0;
	wire [7:0]po;
	wire sout;
	shift_reg_flip_flop TB6(clk, rst, sin, po, sout);
	always #80 clk = ~clk;
	always #1000 rst = ~rst;
	initial begin
	#100 rst = ~rst;
	#500 rst = ~rst;
	repeat(11) #700 sin = ~sin;
	#3000 $stop;
	end
endmodule
