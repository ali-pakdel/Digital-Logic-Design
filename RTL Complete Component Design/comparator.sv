`timescale 1ns/1ns
module comparator(input [9:0] temp_out, y, output less);

	assign less = (temp_out < y) ? 1'b1: 1'b0;

endmodule