`timescale 1ns/1ns
module TCS(input [1:0] a, b, input e0, g0, output reg e1, g1);
	always @ (a, b, e0, g0) begin
		if (e0 == 0) begin
			if (g0 == 1) begin
				#(34)e1 = 1'b0;
				#(92) g1 = 1'b1;

			end else if (g0 == 0) begin
				#(34) e1 = 1'b0;
				#(97) g1 = 1'b0;
			end

		end else if (a == b) begin
			#(29) e1 = 1'b1;
			#(97) g1 = 1'b0;

		end else if (a > b) begin
			#(34) e1 = 1'b0;
			#(92) g1 = 1'b1;

		end else if (a < b) begin
			#(34) e1 = 1'b0;
			#(97) g1 = 1'b0;
		end	
	end
endmodule
