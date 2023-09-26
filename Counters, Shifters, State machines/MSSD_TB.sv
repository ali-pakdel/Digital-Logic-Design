`timescale 1ns/1ns
module MSSD_TB();
	logic sin = 1, clk = 0;
	wire valid, error;
	wire [1:0] pn;
	wire [3:0] p;

	MSSD TB5(sin, clk, valid, error, pn, p);
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
