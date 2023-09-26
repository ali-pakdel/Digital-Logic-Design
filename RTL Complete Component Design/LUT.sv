`timescale 1ns/1ns
module LUT(input [2:0] adr, output [7:0] data);

    logic [7:0] temp;
	always @(adr) begin
		case(adr)
			0: temp = 8'h80;//1/2
			1: temp = 8'h15;//1/12
			2: temp = 8'h08;//1/30
			3: temp = 8'h04;//1/56
			4: temp = 8'h02;//1/90
			5: temp = 8'h01;//1/132
			6: temp = 8'h01;//1/182
            7: temp = 8'h01;//1/240  
        endcase
    end
    assign data = temp;
endmodule