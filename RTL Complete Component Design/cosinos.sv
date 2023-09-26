`timescale 1ns/1ns
module cosinoss(input clk, rst, start, input[9:0] x, input [7:0] y,
				output[1:0] int_part, output [7:0] frac_part, output done);
	
	wire end_c, load_x, t_init, load_t, r_init, load_r, zero_c, en_c, mux_sel, add_sel, less;
	
	controller control(clk, rst, start, end_c, less, 
				done, load_x, t_init, load_t, r_init, load_r, zero_c, en_c, mux_sel, add_sel);
	
	datapath dP(clk, rst, load_x, t_init, load_t, r_init, load_r, zero_c, en_c, mux_sel, add_sel, x, y, 
	            end_c, less, {int_part, frac_part});

endmodule 
