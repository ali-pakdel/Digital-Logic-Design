`timescale 1ns/1ns
module MSSD2_TB();
	logic sin = 1, clk = 0;
	wire valid, error, error2, valid2;
	wire [1:0] pn, pn2;
	wire [3:0] p, p2;

	MSSD TB6(sin, clk, valid, error, pn, p);
	MSSD2 TB7(sin, clk, valid2, error2, pn2, p2);
	always #100 clk = ~clk;
	initial begin
	#150 sin = 0;
	#200 sin = 1;
	#200 sin = 1;
	#200 sin = 1;
	#200 sin = 0;
	#200 sin = 0;
	#200 sin = 0;
	#200 sin = 0;
	#200 sin = 0;
	
	#200 sin = 1;
	#200 sin = 1;
	#200 sin = 0;
	#200 sin = 0;
	#200 sin = 1;
	#200 sin = 1;
	#200 sin = 0;
	#200 sin = 0;
	
	#200 sin = 1;
	#500 $stop;
	end
endmodule

