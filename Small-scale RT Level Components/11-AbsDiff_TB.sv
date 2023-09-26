`timescale 1ns/1ns
module AbsDiff_TB();
	logic [7:0]reff=8'b0;
	logic [7:0]data=8'b0;
	wire [7:0]diff; 
	AbsDiff TB4(reff, data, diff);
	initial begin
	
	#1000 reff[7]=1;
	#1000 reff[5]=1;
	#1000 data[3]=1;
	#1000 data[1]=1;
	#1000 reff[7]=0;
	#1000 data[7]=1;
	#1000 reff[0]=1;
	repeat(7) #1500 {reff, data} = $random;

	#1200 $stop;
	end
endmodule
	
	
