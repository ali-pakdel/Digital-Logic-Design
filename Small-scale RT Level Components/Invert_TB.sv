`timescale 1ns/1ns
module Invert_TB();
	logic [7:0]a=8'b0;
	wire [7:0]b;
	Invert_Bits #8 tb(a, b);
	initial begin
	
	#100 a[7]=1;
	#100 a[5]=1;
	#100 a[3]=1;
	#100 a[1]=1;
	#100 a[7]=0;
	#100 a[7]=1;
	#100 a[0]=1;

	#200 $stop;
	end
endmodule
	
	
