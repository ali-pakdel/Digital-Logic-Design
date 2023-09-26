`timescale 1ns/1ns
module nineB_counter(input clk, en, input [5:0] init, output [8:0] PO, output co);
	logic [8:0] J;
	always @(posedge clk) begin
		if (~en)
			J <= {init, 3'b0};
		else
			J <= J + 1;
	end

	assign PO = J;
	assign co = & PO;

endmodule
