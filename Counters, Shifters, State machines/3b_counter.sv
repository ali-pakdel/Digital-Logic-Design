`timescale 1ns/1ns
module threeB_counter(input clk, en, output [2:0] PO, output co);
	logic [2:0] J;
	always @(posedge clk) begin
		if (~en)
			J <= 3'b0;
		else
			J <= J + 1;
	end

	assign PO = J;
	assign co = & PO;

endmodule