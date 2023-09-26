`timescale 1ns/1ns
module counter(input clk, rst, zero, en,output[2:0] adr, output logic co);
	
	logic [2:0] count_value;
	always @(posedge clk, posedge rst) begin
		if (rst)
			count_value <= 3'b0;
		else if (en)
			count_value <= count_value + 1;
		else if (zero)
			count_value <= 3'b0;
	end

	assign adr = count_value;
	assign co = &count_value;

endmodule