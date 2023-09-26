`timescale 1ns/1ns
module TB_Q10();
	logic [7:0]pi = 8'b0;
	logic clk = 1, rst = 1, sin = 0;
	wire [7:0]dl, dff, alwys;
	wire s_dl, s_dff, s_alwys;
	shift_reg_latch TB9(clk, rst, sin, dl, s_dl);
	shift_reg_flip_flop TB10(clk, rst, sin, dff, s_dff);
	shift_reg_always TB11(pi, clk, rst, sin, alwys, s_alwys);
	always #80 clk = ~clk;
	always #1000 rst = ~rst;
	always #1 pi = alwys;
	initial begin
	#100 rst = ~rst;
	#500 rst = ~rst;
	repeat(11) #700 sin = ~sin;
	#3000 $stop;
	end
endmodule

