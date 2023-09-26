`timescale 1ns/1ns
module TB_TCS();
	logic [1:0]a=00;
	logic [1:0]b=00;
	logic e0 = 1'b1;
	logic g0 = 1'b0;
	wire e1, g1;

	TCS TB_TEST(a, b, e0, g0, e1, g1);
	initial begin
	
	#500 a[1]=1'b1;
	#500 b[1]=1'b1;
	#500 a[1]=1'b0;
	#500 b[1]=1'b0;
	#500 b[1]=1'b1;
	#500 a[1]=1'b1;
	#500 a[0]=1'b1;
	repeat(7) #500 {a, b} = $random;

	#1000 $stop;
	end

endmodule
