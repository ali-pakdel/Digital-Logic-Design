`timescale 1ns/1ns
module TB_BCS_TCS();
	logic [0:7]a=00000000;
	logic [0:7]b=00000000;
	
	wire e, g, ee, gg;
	eight_comparator_BCS TB5(a, b, e, g);
	eight_comparator_TCS TB55(a, b, ee, gg);
	initial begin


	#500 a[0]=1'b1;
	#500 b[0]=1'b1;
	#500 a[0]=1'b0;
	#500 b[0]=1'b0;
	#500 b[0]=1'b1;
	#500 a[0]=1'b1;
	#500 a[1]=1'b1;
	#500 a[2]=1'b1;
	#500 a[3]=1'b1;
	#500 a[3]=1'b0;
	#500 b[2]=1'b1;
	#500 b[3]=1'b1;
	#500 a[4]=1'b1;
	#500 a[5]=1'b1;
	#500 a[6]=1'b1;
	#500 a[7]=1'b1;
	#500 b[4]=1'b1;
	#500 b[5]=1'b1;
	#500 b[6]=1'b1;
	#500 b[7]=1'b1;
	#500 a[4]=1'b0;
	#500 a[3]=1'b1;
	#500 b[7]=1'b0;
	#500 b[4]=1'b0;
	#500 b[0]=1'b0;
	#500 a[0]=1'b0;

	#1000 $stop;
	end
endmodule