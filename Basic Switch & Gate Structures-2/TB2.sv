`timescale 1ns/1ns
module TB_eight_comparator_BCS();
	logic [0:7]a=00000000;
	logic [0:7]b=00000000;
	
	wire e, l;
	eight_comparator_BCS TB2(a, b, e, l);
	initial begin

	#300 a[0]=1'b1;
	#300 b[0]=1'b1;
	#300 a[0]=1'b0;
	#300 b[0]=1'b0;
	#300 b[0]=1'b1;
	#300 a[0]=1'b1;
	#300 a[1]=1'b1;
	#300 a[2]=1'b1;
	#300 a[3]=1'b1;
	#300 a[3]=1'b0;
	#300 b[2]=1'b1;
	#300 b[3]=1'b1;
	#300 a[4]=1'b1;
	#300 a[5]=1'b1;
	#300 a[6]=1'b1;
	#300 a[7]=1'b1;
	#300 b[4]=1'b1;
	#300 b[5]=1'b1;
	#300 b[6]=1'b1;
	#300 b[7]=1'b1;
	#300 a[4]=1'b0;
	#300 a[3]=1'b1;
	#300 b[7]=1'b0;
	#300 b[4]=1'b0;
	#300 b[0]=1'b0;
	#300 a[0]=1'b0;

	#500 $stop;
	end
endmodule