`timescale 1ns/1ns
module eightB_shift(input clk, en, sIn, output logic [7:0] PO);
	logic [7:0] J;
	always @ (posedge clk) begin
		if (~en)
			J <= 8'b0;
		else
			J <= {sIn, J[7:1]};
	end

	assign PO = J;

endmodule
