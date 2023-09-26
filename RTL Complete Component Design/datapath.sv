`timescale 1ns/1ns
module datapath(input clk, rst, load_x, t_init, load_t, r_init, load_r, zero_c, en_c, mux_sel, add_sel,
		input [9:0] x, input [7:0] y, output end_c, less, output [9:0] result);

	logic [9:0] temp_out, x_r, x2_r;
	
	wire [9:0] mux_out, temp_in, res_in;
	wire [2:0] lut_adr;
	wire [7:0] lut_data;

	register x_reg(clk, rst, 1'b0, load_x, x, x_r);
	counter count(clk, rst, zero_c, en_c, lut_adr, end_c);
	//LUT lut(lut_adr, lut_data);
	
	rom rrom(lut_adr, clk, lut_data);

	multiplier mult1(x_r, x_r, x2_r);
	mux2to1 mux(x2_r, {2'b00, lut_data}, mux_sel, mux_out);
	multiplier mult2(mux_out, temp_out, temp_in);

	register temp_reg(clk, rst, t_init, load_t, temp_in, temp_out);
	register res_reg(clk, rst, r_init, load_r, res_in, result);

	comparator comp(temp_out, {2'b00, y}, less);
	adder add(result, temp_out, add_sel, less, res_in);

endmodule
