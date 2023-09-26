`timescale 1ns/1ns
module shift_reg_always(input [7:0] PI, input clk, rst, sIn, output logic [7:0] PO, output logic sOut);
	assign sOut = PI[0];
	always @ (posedge clk, posedge rst) begin
		if (rst)
			PO <= 8'b0;
		else
			PO <= {sIn, PI[7:1]};
	end
endmodule
