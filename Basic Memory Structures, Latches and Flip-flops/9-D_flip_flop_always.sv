`timescale 1ns/1ns
module D_flip_flop_always(input D, clk, rst, output logic Q, Qbar);
	always @ (posedge clk) begin
		if (rst)
			Q <= 1'b0;
		else
			Q <= D;
		Qbar <= ~D;
	end
endmodule
