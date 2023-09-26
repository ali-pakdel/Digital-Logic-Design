`timescale 1ns/1ns
module N8MA_TB();
	logic [7:0]a=8'b0;
	logic [7:0]b=8'b0;
	logic ci=0;
	wire [7:0]s; 
	wire co;
	NMA #8 TB2(a, b, ci, s, co);
	initial begin
	
	#100 a[7]=1;
	#100 a[5]=1;
	#100 a[3]=1;
	#100 a[1]=1;
	#100 b[4]=1;
	#100 a[7]=0;
	#100 a[7]=1;
	#100 b[7]=1;
	#100 ci=1;

	#200 $stop;
	end
endmodule
	
	