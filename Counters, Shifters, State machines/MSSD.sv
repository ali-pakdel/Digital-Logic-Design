`timescale 1ns/1ns
module MSSD(input sIn, clk, output logic valid, error, output [1:0] pn, output logic [3:0] p);
	logic en3b, en9b, ensh, ensub;
	logic [3:0] ps, ns;
	logic [5:0] x;

	wire [7:0] inp;
	wire co3b, co9b;
	wire [2:0] po3b;
	wire [8:0] po9b;
	parameter [1:0]idle = 2'b00, shift = 2'b01, xmit = 2'b10, stop = 2'b11;

	always @(ps, sIn) begin
		ns <= idle;
		en3b <= 0; en9b <= 0; ensh <= 0;
		valid <= 0; error <= 0;
		case(ps)
			idle: 
				if (sIn) 
					ns <= idle;
				else begin
					ns <= shift;
					en3b <= 1'b1;
					ensh <= 1'b1;
				end
			shift:
				if (co3b) begin
					ns <= xmit;
					en9b <= 1'b1;
				end else begin
					ns <= shift;
					en3b <= 1'b1;
					ensh <= 1'b1;
				end
			xmit:
				if (co9b)
					ns <= stop;
				else begin
					ns <= xmit;
					en9b <= 1'b1;
					valid <= 1'b1;
				end
			stop:
				if (sIn)
					ns <= idle;
				else
					error <= 1'b1;
			default:
				ns <= idle;
		endcase
	end
	
	assign pn = inp[1:0];

	threeB_counter R1(clk, en3b, po3b, co3b);
	eightB_shift R2(clk, ensh, sIn, inp);
	subtractor R3(inp[7:2], x);
	nineB_counter R4(clk, en9b, x, po9b, co9b);
	demux R5(sIn, clk, pn, p);

	always @(posedge clk) begin
		ps <= ns;
	end
endmodule