`timescale 1ns/1ns
module adder(input [9:0] result, temp,input add_sel, less, output [9:0] out);

	assign out = less ? 
			result: add_sel ? 
			(result - temp): result + temp;

endmodule