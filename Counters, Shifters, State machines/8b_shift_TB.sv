`timescale 1ns/1ns
module eightB_shift_TB();
	logic clk = 0, en = 0, sin = 0;
	wire [7:0] po;
	eightB_shift TB3(clk, en, sin, po);
	always #100 clk = ~clk;
	always #450 sin = ~sin;	
	initial begin
	#150 en = ~en;
	
	#4000 $stop;
	end
endmodule
