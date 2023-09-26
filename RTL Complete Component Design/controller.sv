`timescale 1ns/1ns
module controller(input clk, rst, start, end_c, less, 
        output logic done, load_x, t_init, load_t, r_init, load_r, zero_c, en_c, mux_sel, add_sel);
        
	reg[2:0] ps, ns;
	parameter[2:0]
		idle = 0, Initialization = 1, Begin = 2, Mult1 = 3, Mult2 = 4, Add = 5;
	

	always @(ps, end_c, start, less) begin
		ns <= idle;
		case (ps)
			idle:
				ns <= (start) ? Initialization : idle;
			Initialization:
				ns <= (start) ? Initialization : Begin;
			Begin:
				ns <= Mult1;
			Mult1:
				ns <= Mult2;
			Mult2:
				ns <= Add;
			Add:
				ns <= (less) ? idle: (end_c) ? idle : Mult1;
		endcase
	end

	always @(ps, end_c, start) begin
		done <= 1'b0; load_x <= 1'b0; t_init <= 1'b0; load_t <= 1'b0;
		r_init <= 1'b0; load_r <= 1'b0; zero_c <= 1'b0; en_c <= 1'b0; mux_sel <= 1'b0;
		case (ps)
			idle:
				done <= 1'b1;
			Begin:begin
				t_init <= 1'b1;
				r_init <= 1'b1;
				load_x <= 1'b1;
				zero_c <= 1'b1;
				add_sel <= 1'b0;
			end
			Mult1:begin
				mux_sel <= 1'b0;
				load_t <= 1'b1;
			end
			Mult2:begin
				mux_sel <= 1'b1;
				load_t <= 1'b1;
			end
			Add:begin
				add_sel <= ~add_sel;
				en_c <= 1'b1;
				load_r <= 1'b1;
			end
		endcase
	end

	always @(posedge clk, posedge rst) begin
		if (rst)
			ps <= idle;
		else
			ps <= ns;
	end

endmodule