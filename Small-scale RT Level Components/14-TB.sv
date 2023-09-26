`timescale 1ns/1ns
module Behavioral_Structural_TB();
	logic [7:0]reff=8'b0;
	logic [7:0]dataA=8'b0;
	logic [7:0]dataB=8'b0;
	wire [7:0]data1, data2;
 
	LessDistance TB5(reff, dataA, dataB, data1);
	LessDistance_Behavioral TB6(reff, dataA, dataB, data2);
	initial begin
	
	#1000 reff[0]=1;
	#1000 reff[1]=1;
	#1000 reff[2]=1;	
	#1000 dataA[1]=1;
	#1000 dataA[3]=1;
	#1000 dataB[0]=1;
	#1000 dataB[2]=1;
	repeat(7) #1500 {reff, dataA, dataB} = $random;
	

	#1200 $stop;
	end
endmodule
	