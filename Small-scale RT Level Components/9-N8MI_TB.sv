`timescale 1ns/1ns
module N8MI_TB();
	logic [7:0]a=8'b0;
	logic ci=1;
	wire [7:0]s; 
	wire co;
	NMI #8 TB3(a, ci, s, co);
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
	
	
