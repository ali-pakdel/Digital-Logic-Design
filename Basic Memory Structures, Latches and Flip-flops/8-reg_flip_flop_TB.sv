`timescale 1ns/1ns
module reg_flip_flop_TB();
	logic [7:0]pi = 8'b0;
	logic clk = 1, rst = 1;
	wire [7:0] po;
	reg_flip_flop TB5(pi, clk, rst, po);
	always #100 clk = ~clk;
	always #171 {pi} = $random;
	initial begin
	#700 rst = ~rst;
	#1000 rst = ~rst;
	#1000 rst = ~rst;
	#700 rst = ~rst;
	#5000 $stop;
	end
endmodule