`timescale 1ns/1ns
module demux(input sIn, clk, input [1:0] pn, output logic [3:0] p);
	
	always @(posedge clk) begin
		p <= 4'b0;
		case(pn)
			2'b00: p[0] <= sIn;
			2'b01: p[1] <= sIn;
			2'b10: p[2] <= sIn;
			2'b11: p[3] <= sIn;
			default: p <= p;
		endcase
	end
endmodule
