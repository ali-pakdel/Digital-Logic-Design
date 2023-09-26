`timescale 1ns/1ns
module subtractor_TB();
	logic [5:0] nb;
	wire [5:0] out;
	subtractor TB4(nb, out);
	initial begin
	repeat(10) #200 {nb} = $random;
	#400 $stop;
	end
endmodule
