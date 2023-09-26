`timescale 1ns/1ns
module controller_TB();
	logic clk, rst, start, end_c, less;
	
	wire done, load_x, t_init, load_t, r_init, load_r, zero_c, en_c, mux_sel, add_sel; 

	controller cont(clk, rst, start, end_c, less,
					done, load_x, t_init, load_t, r_init, load_r, zero_c, en_c, mux_sel, add_sel);

	initial begin
		clk = 1'b0;
		rst = 1'b1;
		start = 1'b0;
		end_c = 1'b0;
		less = 1'b0;
	end

	initial #20 rst = 1'b0;
	
	always #5 clk = ~clk;

	initial begin
		#10 start = 1'b1;
		#40 start = 1'b0;
		#100 end_c = 1'b1;
		#20 end_c = 1'b0;
		#50 start = 1'b1;
		#40 start = 1'b0;
		#20 less = 1'b1;
		#200 $stop;
	end
endmodule
