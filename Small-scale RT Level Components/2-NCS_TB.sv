`timescale 1ns/1ns
module N8CS_TB();
	logic [7:0]a=8'b0;
	logic [7:0]b=8'b0;
	logic e0=1;
	logic g0=0;
	wire e1, g1;
	NCS #8 TB_TE(a, b, e0, g0, e1, g1);
	initial begin


	#1500 a[7]=1'b1;
	#1500 b[7]=1'b1;
	#1500 a[7]=1'b0;
	#1500 b[7]=1'b0;
	#1500 b[7]=1'b1;
	#1500 a[7]=1'b1;
	#1500 a[6]=1'b1;
	#1500 a[5]=1'b1;
	#1500 a[4]=1'b1;
	#1500 a[4]=1'b0;
	#1500 b[5]=1'b1;
	#1500 b[4]=1'b1;
	#1500 a[3]=1'b1;
	#1500 a[2]=1'b1;
	#1500 a[1]=1'b1;
	#1500 a[0]=1'b1;
	#1500 b[3]=1'b1;
	#1500 b[2]=1'b1;
	#1500 b[1]=1'b1;
	#1500 b[0]=1'b1;
	#1500 a[4]=1'b0;
	#1500 a[4]=1'b1;
	#1500 b[0]=1'b0;
	#1500 b[3]=1'b0;
	#1500 b[7]=1'b0;
	#1500 a[7]=1'b0;
	repeat(7) #1500 {a, b} = $random;
	#1500 $stop;
	end
endmodule

