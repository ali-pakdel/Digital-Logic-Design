`timescale 1ns/1ns
module nineB_counter_TB();
	logic clk = 0, en = 0;
	wire [8:0] po;
	wire co;
	nineB_counter TB2(clk, en, po, co);
	always #100 clk = ~clk;
	initial begin
	#150 en = ~en;
	#2000 $stop;
	end
endmodule