`timescale 1ns/1ns
module bcsTB();
	reg aa0, bb0, ee0, gg0;
	wire ee1, gg1;
	myBCS TB5(.a0(aa0), .b0(bb0), .e0(ee0), .g0(gg0), .e1(ee1), .g1(gg1));
	initial begin
	#73 aa0 = 1'b0;
	#0 bb0 = 1'b1;
	#0 gg0 = 1'b0;
	#47 ee0 = 1'b0;
	#101 aa0 = 1'b0;
	#0 bb0 = 1'b1;
	#0 ee0 = 1'b1;
	#117 bb0 = 1'b1;
	#123 ee0 = 1'b1;
	#131 aa0 = 1'b0;
	repeat (2) #161 aa0 = ~aa0;
	#133 ee0 = 1'b0;
	#137 bb0 = 1'b0;
	#139 aa0 = 1'b1;
	#0 bb0 = 1'b1;
	#0 ee0 = 1'b1;
	#100 bb0 = 1'b0;
	#133 aa0 = 1'b0;
	#0 bb0 = 1'b1;
	#0 ee0 = 1'b0;
 	#71 $stop;
	end
endmodule
