// Copyright (C) 2020  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and any partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details, at
// https://fpgasoftware.intel.com/eula.

// VENDOR "Altera"
// PROGRAM "Quartus Prime"
// VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

// DATE "12/27/2020 01:55:50"

// 
// Device: Altera EP4CE6E22A7 Package TQFP144
// 

// 
// This Verilog file should be used for ModelSim-Altera (SystemVerilog) only
// 

`timescale 1 ps/ 1 ps

module MSSD2 (
	sIn,
	clk,
	valid,
	error,
	pn,
	p);
input 	sIn;
input 	clk;
output 	valid;
output 	error;
output 	[1:0] pn;
output 	[3:0] p;

// Design Ports Information
// valid	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
// error	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
// pn[0]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
// pn[1]	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
// p[0]	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default
// p[1]	=>  Location: PIN_144,	 I/O Standard: 2.5 V,	 Current Strength: Default
// p[2]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
// p[3]	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
// sIn	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
// clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
assign unknown = 1'bx;

tri1 devclrn;
tri1 devpor;
tri1 devoe;
// synopsys translate_off
initial $sdf_annotate("MSSD_v.sdo");
// synopsys translate_on

wire \valid~output_o ;
wire \error~output_o ;
wire \pn[0]~output_o ;
wire \pn[1]~output_o ;
wire \p[0]~output_o ;
wire \p[1]~output_o ;
wire \p[2]~output_o ;
wire \p[3]~output_o ;
wire \clk~input_o ;
wire \clk~inputclkctrl_outclk ;
wire \sIn~input_o ;
wire \R4|J[0]~9_combout ;
wire \~GND~combout ;
wire \R4|J[0]~10 ;
wire \R4|J[1]~11_combout ;
wire \R4|J[1]~12 ;
wire \R4|J[2]~13_combout ;
wire \R4|J[2]~14 ;
wire \R4|J[3]~15_combout ;
wire \ps.shift~q ;
wire \R2|J~3_combout ;
wire \R2|J~4_combout ;
wire \R2|J~5_combout ;
wire \R2|J~6_combout ;
wire \R2|J~7_combout ;
wire \R2|J~2_combout ;
wire \R4|WideAnd0~0_combout ;
wire \R4|J[3]~16 ;
wire \R4|J[4]~17_combout ;
wire \R3|Add0~1_cout ;
wire \R3|Add0~2_combout ;
wire \R4|J[4]~18 ;
wire \R4|J[5]~19_combout ;
wire \R3|Add0~3 ;
wire \R3|Add0~4_combout ;
wire \R4|J[5]~20 ;
wire \R4|J[6]~21_combout ;
wire \R3|Add0~5 ;
wire \R3|Add0~6_combout ;
wire \R4|J[6]~22 ;
wire \R4|J[7]~23_combout ;
wire \R3|Add0~7 ;
wire \R3|Add0~8_combout ;
wire \R4|WideAnd0~1_combout ;
wire \R4|J[7]~24 ;
wire \R4|J[8]~25_combout ;
wire \R3|Add0~9 ;
wire \R3|Add0~10_combout ;
wire \ns.stop~0_combout ;
wire \ps.stop~q ;
wire \Selector0~0_combout ;
wire \ps.idle~q ;
wire \Selector1~0_combout ;
wire \R1|J~1_combout ;
wire \R1|J~2_combout ;
wire \R1|J~0_combout ;
wire \Selector2~0_combout ;
wire \Selector2~1_combout ;
wire \ps.xmit~q ;
wire \valid~0_combout ;
wire \error~0_combout ;
wire \R2|J~1_combout ;
wire \R2|J~0_combout ;
wire \R5|p~0_combout ;
wire \R5|p~1_combout ;
wire \R5|p~2_combout ;
wire \R5|p~3_combout ;
wire [8:0] \R4|J ;
wire [7:0] \R2|J ;
wire [3:0] \R5|p ;
wire [2:0] \R1|J ;


hard_block auto_generated_inst(
	.devpor(devpor),
	.devclrn(devclrn),
	.devoe(devoe));

// Location: IOOBUF_X7_Y24_N9
cycloneive_io_obuf \valid~output (
	.i(!\valid~0_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\valid~output_o ),
	.obar());
// synopsys translate_off
defparam \valid~output .bus_hold = "false";
defparam \valid~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X11_Y24_N16
cycloneive_io_obuf \error~output (
	.i(!\error~0_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\error~output_o ),
	.obar());
// synopsys translate_off
defparam \error~output .bus_hold = "false";
defparam \error~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X5_Y24_N9
cycloneive_io_obuf \pn[0]~output (
	.i(\R2|J [0]),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\pn[0]~output_o ),
	.obar());
// synopsys translate_off
defparam \pn[0]~output .bus_hold = "false";
defparam \pn[0]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X0_Y21_N9
cycloneive_io_obuf \pn[1]~output (
	.i(\R2|J [1]),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\pn[1]~output_o ),
	.obar());
// synopsys translate_off
defparam \pn[1]~output .bus_hold = "false";
defparam \pn[1]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X1_Y24_N2
cycloneive_io_obuf \p[0]~output (
	.i(\R5|p [0]),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\p[0]~output_o ),
	.obar());
// synopsys translate_off
defparam \p[0]~output .bus_hold = "false";
defparam \p[0]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X1_Y24_N9
cycloneive_io_obuf \p[1]~output (
	.i(\R5|p [1]),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\p[1]~output_o ),
	.obar());
// synopsys translate_off
defparam \p[1]~output .bus_hold = "false";
defparam \p[1]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X9_Y24_N9
cycloneive_io_obuf \p[2]~output (
	.i(\R5|p [2]),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\p[2]~output_o ),
	.obar());
// synopsys translate_off
defparam \p[2]~output .bus_hold = "false";
defparam \p[2]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X3_Y24_N23
cycloneive_io_obuf \p[3]~output (
	.i(\R5|p [3]),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\p[3]~output_o ),
	.obar());
// synopsys translate_off
defparam \p[3]~output .bus_hold = "false";
defparam \p[3]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOIBUF_X0_Y11_N8
cycloneive_io_ibuf \clk~input (
	.i(clk),
	.ibar(gnd),
	.o(\clk~input_o ));
// synopsys translate_off
defparam \clk~input .bus_hold = "false";
defparam \clk~input .simulate_z_as = "z";
// synopsys translate_on

// Location: CLKCTRL_G2
cycloneive_clkctrl \clk~inputclkctrl (
	.ena(vcc),
	.inclk({vcc,vcc,vcc,\clk~input_o }),
	.clkselect(2'b00),
	.devclrn(devclrn),
	.devpor(devpor),
	.outclk(\clk~inputclkctrl_outclk ));
// synopsys translate_off
defparam \clk~inputclkctrl .clock_type = "global clock";
defparam \clk~inputclkctrl .ena_register_mode = "none";
// synopsys translate_on

// Location: IOIBUF_X7_Y24_N1
cycloneive_io_ibuf \sIn~input (
	.i(sIn),
	.ibar(gnd),
	.o(\sIn~input_o ));
// synopsys translate_off
defparam \sIn~input .bus_hold = "false";
defparam \sIn~input .simulate_z_as = "z";
// synopsys translate_on

// Location: LCCOMB_X8_Y20_N8
cycloneive_lcell_comb \R4|J[0]~9 (
// Equation(s):
// \R4|J[0]~9_combout  = \R4|J [0] $ (VCC)
// \R4|J[0]~10  = CARRY(\R4|J [0])

	.dataa(gnd),
	.datab(\R4|J [0]),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(\R4|J[0]~9_combout ),
	.cout(\R4|J[0]~10 ));
// synopsys translate_off
defparam \R4|J[0]~9 .lut_mask = 16'h33CC;
defparam \R4|J[0]~9 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X7_Y20_N16
cycloneive_lcell_comb \~GND (
// Equation(s):
// \~GND~combout  = GND

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\~GND~combout ),
	.cout());
// synopsys translate_off
defparam \~GND .lut_mask = 16'h0000;
defparam \~GND .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X8_Y20_N9
dffeas \R4|J[0] (
	.clk(\clk~inputclkctrl_outclk ),
	.d(\R4|J[0]~9_combout ),
	.asdata(\~GND~combout ),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\Selector2~1_combout ),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\R4|J [0]),
	.prn(vcc));
// synopsys translate_off
defparam \R4|J[0] .is_wysiwyg = "true";
defparam \R4|J[0] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X8_Y20_N10
cycloneive_lcell_comb \R4|J[1]~11 (
// Equation(s):
// \R4|J[1]~11_combout  = (\R4|J [1] & (!\R4|J[0]~10 )) # (!\R4|J [1] & ((\R4|J[0]~10 ) # (GND)))
// \R4|J[1]~12  = CARRY((!\R4|J[0]~10 ) # (!\R4|J [1]))

	.dataa(\R4|J [1]),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\R4|J[0]~10 ),
	.combout(\R4|J[1]~11_combout ),
	.cout(\R4|J[1]~12 ));
// synopsys translate_off
defparam \R4|J[1]~11 .lut_mask = 16'h5A5F;
defparam \R4|J[1]~11 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X8_Y20_N11
dffeas \R4|J[1] (
	.clk(\clk~inputclkctrl_outclk ),
	.d(\R4|J[1]~11_combout ),
	.asdata(\~GND~combout ),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\Selector2~1_combout ),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\R4|J [1]),
	.prn(vcc));
// synopsys translate_off
defparam \R4|J[1] .is_wysiwyg = "true";
defparam \R4|J[1] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X8_Y20_N12
cycloneive_lcell_comb \R4|J[2]~13 (
// Equation(s):
// \R4|J[2]~13_combout  = (\R4|J [2] & (\R4|J[1]~12  $ (GND))) # (!\R4|J [2] & (!\R4|J[1]~12  & VCC))
// \R4|J[2]~14  = CARRY((\R4|J [2] & !\R4|J[1]~12 ))

	.dataa(\R4|J [2]),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\R4|J[1]~12 ),
	.combout(\R4|J[2]~13_combout ),
	.cout(\R4|J[2]~14 ));
// synopsys translate_off
defparam \R4|J[2]~13 .lut_mask = 16'hA50A;
defparam \R4|J[2]~13 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X8_Y20_N13
dffeas \R4|J[2] (
	.clk(\clk~inputclkctrl_outclk ),
	.d(\R4|J[2]~13_combout ),
	.asdata(\~GND~combout ),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\Selector2~1_combout ),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\R4|J [2]),
	.prn(vcc));
// synopsys translate_off
defparam \R4|J[2] .is_wysiwyg = "true";
defparam \R4|J[2] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X8_Y20_N14
cycloneive_lcell_comb \R4|J[3]~15 (
// Equation(s):
// \R4|J[3]~15_combout  = (\R4|J [3] & (!\R4|J[2]~14 )) # (!\R4|J [3] & ((\R4|J[2]~14 ) # (GND)))
// \R4|J[3]~16  = CARRY((!\R4|J[2]~14 ) # (!\R4|J [3]))

	.dataa(gnd),
	.datab(\R4|J [3]),
	.datac(gnd),
	.datad(vcc),
	.cin(\R4|J[2]~14 ),
	.combout(\R4|J[3]~15_combout ),
	.cout(\R4|J[3]~16 ));
// synopsys translate_off
defparam \R4|J[3]~15 .lut_mask = 16'h3C3F;
defparam \R4|J[3]~15 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X8_Y20_N5
dffeas \ps.shift (
	.clk(\clk~inputclkctrl_outclk ),
	.d(\Selector1~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\ps.shift~q ),
	.prn(vcc));
// synopsys translate_off
defparam \ps.shift .is_wysiwyg = "true";
defparam \ps.shift .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X8_Y20_N30
cycloneive_lcell_comb \R2|J~3 (
// Equation(s):
// \R2|J~3_combout  = (\ps.shift~q  & (\sIn~input_o  & !\Selector2~0_combout ))

	.dataa(gnd),
	.datab(\ps.shift~q ),
	.datac(\sIn~input_o ),
	.datad(\Selector2~0_combout ),
	.cin(gnd),
	.combout(\R2|J~3_combout ),
	.cout());
// synopsys translate_off
defparam \R2|J~3 .lut_mask = 16'h00C0;
defparam \R2|J~3 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X8_Y20_N31
dffeas \R2|J[7] (
	.clk(\clk~inputclkctrl_outclk ),
	.d(\R2|J~3_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\R2|J [7]),
	.prn(vcc));
// synopsys translate_off
defparam \R2|J[7] .is_wysiwyg = "true";
defparam \R2|J[7] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X9_Y20_N22
cycloneive_lcell_comb \R2|J~4 (
// Equation(s):
// \R2|J~4_combout  = (\R2|J [7] & \Selector1~0_combout )

	.dataa(gnd),
	.datab(\R2|J [7]),
	.datac(\Selector1~0_combout ),
	.datad(gnd),
	.cin(gnd),
	.combout(\R2|J~4_combout ),
	.cout());
// synopsys translate_off
defparam \R2|J~4 .lut_mask = 16'hC0C0;
defparam \R2|J~4 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X9_Y20_N23
dffeas \R2|J[6] (
	.clk(\clk~inputclkctrl_outclk ),
	.d(\R2|J~4_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\R2|J [6]),
	.prn(vcc));
// synopsys translate_off
defparam \R2|J[6] .is_wysiwyg = "true";
defparam \R2|J[6] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X9_Y20_N24
cycloneive_lcell_comb \R2|J~5 (
// Equation(s):
// \R2|J~5_combout  = (\Selector1~0_combout  & \R2|J [6])

	.dataa(gnd),
	.datab(\Selector1~0_combout ),
	.datac(\R2|J [6]),
	.datad(gnd),
	.cin(gnd),
	.combout(\R2|J~5_combout ),
	.cout());
// synopsys translate_off
defparam \R2|J~5 .lut_mask = 16'hC0C0;
defparam \R2|J~5 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X9_Y20_N25
dffeas \R2|J[5] (
	.clk(\clk~inputclkctrl_outclk ),
	.d(\R2|J~5_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\R2|J [5]),
	.prn(vcc));
// synopsys translate_off
defparam \R2|J[5] .is_wysiwyg = "true";
defparam \R2|J[5] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X9_Y20_N30
cycloneive_lcell_comb \R2|J~6 (
// Equation(s):
// \R2|J~6_combout  = (\R2|J [5] & \Selector1~0_combout )

	.dataa(gnd),
	.datab(\R2|J [5]),
	.datac(\Selector1~0_combout ),
	.datad(gnd),
	.cin(gnd),
	.combout(\R2|J~6_combout ),
	.cout());
// synopsys translate_off
defparam \R2|J~6 .lut_mask = 16'hC0C0;
defparam \R2|J~6 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X9_Y20_N31
dffeas \R2|J[4] (
	.clk(\clk~inputclkctrl_outclk ),
	.d(\R2|J~6_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\R2|J [4]),
	.prn(vcc));
// synopsys translate_off
defparam \R2|J[4] .is_wysiwyg = "true";
defparam \R2|J[4] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X9_Y20_N28
cycloneive_lcell_comb \R2|J~7 (
// Equation(s):
// \R2|J~7_combout  = (\Selector1~0_combout  & \R2|J [4])

	.dataa(gnd),
	.datab(\Selector1~0_combout ),
	.datac(\R2|J [4]),
	.datad(gnd),
	.cin(gnd),
	.combout(\R2|J~7_combout ),
	.cout());
// synopsys translate_off
defparam \R2|J~7 .lut_mask = 16'hC0C0;
defparam \R2|J~7 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X9_Y20_N29
dffeas \R2|J[3] (
	.clk(\clk~inputclkctrl_outclk ),
	.d(\R2|J~7_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\R2|J [3]),
	.prn(vcc));
// synopsys translate_off
defparam \R2|J[3] .is_wysiwyg = "true";
defparam \R2|J[3] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X9_Y20_N0
cycloneive_lcell_comb \R2|J~2 (
// Equation(s):
// \R2|J~2_combout  = (\R2|J [3] & \Selector1~0_combout )

	.dataa(gnd),
	.datab(\R2|J [3]),
	.datac(\Selector1~0_combout ),
	.datad(gnd),
	.cin(gnd),
	.combout(\R2|J~2_combout ),
	.cout());
// synopsys translate_off
defparam \R2|J~2 .lut_mask = 16'hC0C0;
defparam \R2|J~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X9_Y20_N1
dffeas \R2|J[2] (
	.clk(\clk~inputclkctrl_outclk ),
	.d(\R2|J~2_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\R2|J [2]),
	.prn(vcc));
// synopsys translate_off
defparam \R2|J[2] .is_wysiwyg = "true";
defparam \R2|J[2] .power_up = "low";
// synopsys translate_on

// Location: FF_X8_Y20_N15
dffeas \R4|J[3] (
	.clk(\clk~inputclkctrl_outclk ),
	.d(\R4|J[3]~15_combout ),
	.asdata(\R2|J [2]),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\Selector2~1_combout ),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\R4|J [3]),
	.prn(vcc));
// synopsys translate_off
defparam \R4|J[3] .is_wysiwyg = "true";
defparam \R4|J[3] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X8_Y20_N0
cycloneive_lcell_comb \R4|WideAnd0~0 (
// Equation(s):
// \R4|WideAnd0~0_combout  = (\R4|J [1] & (\R4|J [0] & (\R4|J [3] & \R4|J [2])))

	.dataa(\R4|J [1]),
	.datab(\R4|J [0]),
	.datac(\R4|J [3]),
	.datad(\R4|J [2]),
	.cin(gnd),
	.combout(\R4|WideAnd0~0_combout ),
	.cout());
// synopsys translate_off
defparam \R4|WideAnd0~0 .lut_mask = 16'h8000;
defparam \R4|WideAnd0~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X8_Y20_N16
cycloneive_lcell_comb \R4|J[4]~17 (
// Equation(s):
// \R4|J[4]~17_combout  = (\R4|J [4] & (\R4|J[3]~16  $ (GND))) # (!\R4|J [4] & (!\R4|J[3]~16  & VCC))
// \R4|J[4]~18  = CARRY((\R4|J [4] & !\R4|J[3]~16 ))

	.dataa(gnd),
	.datab(\R4|J [4]),
	.datac(gnd),
	.datad(vcc),
	.cin(\R4|J[3]~16 ),
	.combout(\R4|J[4]~17_combout ),
	.cout(\R4|J[4]~18 ));
// synopsys translate_off
defparam \R4|J[4]~17 .lut_mask = 16'hC30C;
defparam \R4|J[4]~17 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X9_Y20_N6
cycloneive_lcell_comb \R3|Add0~1 (
// Equation(s):
// \R3|Add0~1_cout  = CARRY(!\R2|J [2])

	.dataa(gnd),
	.datab(\R2|J [2]),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(\R3|Add0~1_cout ));
// synopsys translate_off
defparam \R3|Add0~1 .lut_mask = 16'h0033;
defparam \R3|Add0~1 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X9_Y20_N8
cycloneive_lcell_comb \R3|Add0~2 (
// Equation(s):
// \R3|Add0~2_combout  = (\R2|J [3] & ((\R3|Add0~1_cout ) # (GND))) # (!\R2|J [3] & (!\R3|Add0~1_cout ))
// \R3|Add0~3  = CARRY((\R2|J [3]) # (!\R3|Add0~1_cout ))

	.dataa(gnd),
	.datab(\R2|J [3]),
	.datac(gnd),
	.datad(vcc),
	.cin(\R3|Add0~1_cout ),
	.combout(\R3|Add0~2_combout ),
	.cout(\R3|Add0~3 ));
// synopsys translate_off
defparam \R3|Add0~2 .lut_mask = 16'hC3CF;
defparam \R3|Add0~2 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X8_Y20_N17
dffeas \R4|J[4] (
	.clk(\clk~inputclkctrl_outclk ),
	.d(\R4|J[4]~17_combout ),
	.asdata(\R3|Add0~2_combout ),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\Selector2~1_combout ),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\R4|J [4]),
	.prn(vcc));
// synopsys translate_off
defparam \R4|J[4] .is_wysiwyg = "true";
defparam \R4|J[4] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X8_Y20_N18
cycloneive_lcell_comb \R4|J[5]~19 (
// Equation(s):
// \R4|J[5]~19_combout  = (\R4|J [5] & (!\R4|J[4]~18 )) # (!\R4|J [5] & ((\R4|J[4]~18 ) # (GND)))
// \R4|J[5]~20  = CARRY((!\R4|J[4]~18 ) # (!\R4|J [5]))

	.dataa(gnd),
	.datab(\R4|J [5]),
	.datac(gnd),
	.datad(vcc),
	.cin(\R4|J[4]~18 ),
	.combout(\R4|J[5]~19_combout ),
	.cout(\R4|J[5]~20 ));
// synopsys translate_off
defparam \R4|J[5]~19 .lut_mask = 16'h3C3F;
defparam \R4|J[5]~19 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X9_Y20_N10
cycloneive_lcell_comb \R3|Add0~4 (
// Equation(s):
// \R3|Add0~4_combout  = (\R2|J [4] & (!\R3|Add0~3  & VCC)) # (!\R2|J [4] & (\R3|Add0~3  $ (GND)))
// \R3|Add0~5  = CARRY((!\R2|J [4] & !\R3|Add0~3 ))

	.dataa(\R2|J [4]),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\R3|Add0~3 ),
	.combout(\R3|Add0~4_combout ),
	.cout(\R3|Add0~5 ));
// synopsys translate_off
defparam \R3|Add0~4 .lut_mask = 16'h5A05;
defparam \R3|Add0~4 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X8_Y20_N19
dffeas \R4|J[5] (
	.clk(\clk~inputclkctrl_outclk ),
	.d(\R4|J[5]~19_combout ),
	.asdata(\R3|Add0~4_combout ),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\Selector2~1_combout ),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\R4|J [5]),
	.prn(vcc));
// synopsys translate_off
defparam \R4|J[5] .is_wysiwyg = "true";
defparam \R4|J[5] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X8_Y20_N20
cycloneive_lcell_comb \R4|J[6]~21 (
// Equation(s):
// \R4|J[6]~21_combout  = (\R4|J [6] & (\R4|J[5]~20  $ (GND))) # (!\R4|J [6] & (!\R4|J[5]~20  & VCC))
// \R4|J[6]~22  = CARRY((\R4|J [6] & !\R4|J[5]~20 ))

	.dataa(gnd),
	.datab(\R4|J [6]),
	.datac(gnd),
	.datad(vcc),
	.cin(\R4|J[5]~20 ),
	.combout(\R4|J[6]~21_combout ),
	.cout(\R4|J[6]~22 ));
// synopsys translate_off
defparam \R4|J[6]~21 .lut_mask = 16'hC30C;
defparam \R4|J[6]~21 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X9_Y20_N12
cycloneive_lcell_comb \R3|Add0~6 (
// Equation(s):
// \R3|Add0~6_combout  = (\R2|J [5] & ((\R3|Add0~5 ) # (GND))) # (!\R2|J [5] & (!\R3|Add0~5 ))
// \R3|Add0~7  = CARRY((\R2|J [5]) # (!\R3|Add0~5 ))

	.dataa(gnd),
	.datab(\R2|J [5]),
	.datac(gnd),
	.datad(vcc),
	.cin(\R3|Add0~5 ),
	.combout(\R3|Add0~6_combout ),
	.cout(\R3|Add0~7 ));
// synopsys translate_off
defparam \R3|Add0~6 .lut_mask = 16'hC3CF;
defparam \R3|Add0~6 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X8_Y20_N21
dffeas \R4|J[6] (
	.clk(\clk~inputclkctrl_outclk ),
	.d(\R4|J[6]~21_combout ),
	.asdata(\R3|Add0~6_combout ),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\Selector2~1_combout ),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\R4|J [6]),
	.prn(vcc));
// synopsys translate_off
defparam \R4|J[6] .is_wysiwyg = "true";
defparam \R4|J[6] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X8_Y20_N22
cycloneive_lcell_comb \R4|J[7]~23 (
// Equation(s):
// \R4|J[7]~23_combout  = (\R4|J [7] & (!\R4|J[6]~22 )) # (!\R4|J [7] & ((\R4|J[6]~22 ) # (GND)))
// \R4|J[7]~24  = CARRY((!\R4|J[6]~22 ) # (!\R4|J [7]))

	.dataa(\R4|J [7]),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\R4|J[6]~22 ),
	.combout(\R4|J[7]~23_combout ),
	.cout(\R4|J[7]~24 ));
// synopsys translate_off
defparam \R4|J[7]~23 .lut_mask = 16'h5A5F;
defparam \R4|J[7]~23 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X9_Y20_N14
cycloneive_lcell_comb \R3|Add0~8 (
// Equation(s):
// \R3|Add0~8_combout  = (\R2|J [6] & (!\R3|Add0~7  & VCC)) # (!\R2|J [6] & (\R3|Add0~7  $ (GND)))
// \R3|Add0~9  = CARRY((!\R2|J [6] & !\R3|Add0~7 ))

	.dataa(\R2|J [6]),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\R3|Add0~7 ),
	.combout(\R3|Add0~8_combout ),
	.cout(\R3|Add0~9 ));
// synopsys translate_off
defparam \R3|Add0~8 .lut_mask = 16'h5A05;
defparam \R3|Add0~8 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X8_Y20_N23
dffeas \R4|J[7] (
	.clk(\clk~inputclkctrl_outclk ),
	.d(\R4|J[7]~23_combout ),
	.asdata(\R3|Add0~8_combout ),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\Selector2~1_combout ),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\R4|J [7]),
	.prn(vcc));
// synopsys translate_off
defparam \R4|J[7] .is_wysiwyg = "true";
defparam \R4|J[7] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X8_Y20_N26
cycloneive_lcell_comb \R4|WideAnd0~1 (
// Equation(s):
// \R4|WideAnd0~1_combout  = (\R4|J [7] & (\R4|J [4] & (\R4|J [5] & \R4|J [6])))

	.dataa(\R4|J [7]),
	.datab(\R4|J [4]),
	.datac(\R4|J [5]),
	.datad(\R4|J [6]),
	.cin(gnd),
	.combout(\R4|WideAnd0~1_combout ),
	.cout());
// synopsys translate_off
defparam \R4|WideAnd0~1 .lut_mask = 16'h8000;
defparam \R4|WideAnd0~1 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X8_Y20_N24
cycloneive_lcell_comb \R4|J[8]~25 (
// Equation(s):
// \R4|J[8]~25_combout  = \R4|J[7]~24  $ (!\R4|J [8])

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(\R4|J [8]),
	.cin(\R4|J[7]~24 ),
	.combout(\R4|J[8]~25_combout ),
	.cout());
// synopsys translate_off
defparam \R4|J[8]~25 .lut_mask = 16'hF00F;
defparam \R4|J[8]~25 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X9_Y20_N16
cycloneive_lcell_comb \R3|Add0~10 (
// Equation(s):
// \R3|Add0~10_combout  = \R3|Add0~9  $ (!\R2|J [7])

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(\R2|J [7]),
	.cin(\R3|Add0~9 ),
	.combout(\R3|Add0~10_combout ),
	.cout());
// synopsys translate_off
defparam \R3|Add0~10 .lut_mask = 16'hF00F;
defparam \R3|Add0~10 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X8_Y20_N25
dffeas \R4|J[8] (
	.clk(\clk~inputclkctrl_outclk ),
	.d(\R4|J[8]~25_combout ),
	.asdata(\R3|Add0~10_combout ),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\Selector2~1_combout ),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\R4|J [8]),
	.prn(vcc));
// synopsys translate_off
defparam \R4|J[8] .is_wysiwyg = "true";
defparam \R4|J[8] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X8_Y20_N6
cycloneive_lcell_comb \ns.stop~0 (
// Equation(s):
// \ns.stop~0_combout  = (\ps.xmit~q  & (\R4|WideAnd0~0_combout  & (\R4|WideAnd0~1_combout  & \R4|J [8])))

	.dataa(\ps.xmit~q ),
	.datab(\R4|WideAnd0~0_combout ),
	.datac(\R4|WideAnd0~1_combout ),
	.datad(\R4|J [8]),
	.cin(gnd),
	.combout(\ns.stop~0_combout ),
	.cout());
// synopsys translate_off
defparam \ns.stop~0 .lut_mask = 16'h8000;
defparam \ns.stop~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X8_Y20_N7
dffeas \ps.stop (
	.clk(\clk~inputclkctrl_outclk ),
	.d(\ns.stop~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\ps.stop~q ),
	.prn(vcc));
// synopsys translate_off
defparam \ps.stop .is_wysiwyg = "true";
defparam \ps.stop .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X7_Y20_N14
cycloneive_lcell_comb \Selector0~0 (
// Equation(s):
// \Selector0~0_combout  = (!\ps.stop~q  & ((\ps.idle~q ) # (!\sIn~input_o )))

	.dataa(\sIn~input_o ),
	.datab(gnd),
	.datac(\ps.idle~q ),
	.datad(\ps.stop~q ),
	.cin(gnd),
	.combout(\Selector0~0_combout ),
	.cout());
// synopsys translate_off
defparam \Selector0~0 .lut_mask = 16'h00F5;
defparam \Selector0~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X7_Y20_N15
dffeas \ps.idle (
	.clk(\clk~inputclkctrl_outclk ),
	.d(\Selector0~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\ps.idle~q ),
	.prn(vcc));
// synopsys translate_off
defparam \ps.idle .is_wysiwyg = "true";
defparam \ps.idle .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X8_Y20_N4
cycloneive_lcell_comb \Selector1~0 (
// Equation(s):
// \Selector1~0_combout  = (\ps.idle~q  & (((\ps.shift~q  & !\Selector2~0_combout )))) # (!\ps.idle~q  & (((\ps.shift~q  & !\Selector2~0_combout )) # (!\sIn~input_o )))

	.dataa(\ps.idle~q ),
	.datab(\sIn~input_o ),
	.datac(\ps.shift~q ),
	.datad(\Selector2~0_combout ),
	.cin(gnd),
	.combout(\Selector1~0_combout ),
	.cout());
// synopsys translate_off
defparam \Selector1~0 .lut_mask = 16'h11F1;
defparam \Selector1~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X9_Y20_N2
cycloneive_lcell_comb \R1|J~1 (
// Equation(s):
// \R1|J~1_combout  = (\Selector1~0_combout  & !\R1|J [0])

	.dataa(gnd),
	.datab(\Selector1~0_combout ),
	.datac(\R1|J [0]),
	.datad(gnd),
	.cin(gnd),
	.combout(\R1|J~1_combout ),
	.cout());
// synopsys translate_off
defparam \R1|J~1 .lut_mask = 16'h0C0C;
defparam \R1|J~1 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X9_Y20_N3
dffeas \R1|J[0] (
	.clk(\clk~inputclkctrl_outclk ),
	.d(\R1|J~1_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\R1|J [0]),
	.prn(vcc));
// synopsys translate_off
defparam \R1|J[0] .is_wysiwyg = "true";
defparam \R1|J[0] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X9_Y20_N20
cycloneive_lcell_comb \R1|J~2 (
// Equation(s):
// \R1|J~2_combout  = (\Selector1~0_combout  & (\R1|J [1] $ (\R1|J [0])))

	.dataa(gnd),
	.datab(\Selector1~0_combout ),
	.datac(\R1|J [1]),
	.datad(\R1|J [0]),
	.cin(gnd),
	.combout(\R1|J~2_combout ),
	.cout());
// synopsys translate_off
defparam \R1|J~2 .lut_mask = 16'h0CC0;
defparam \R1|J~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X9_Y20_N21
dffeas \R1|J[1] (
	.clk(\clk~inputclkctrl_outclk ),
	.d(\R1|J~2_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\R1|J [1]),
	.prn(vcc));
// synopsys translate_off
defparam \R1|J[1] .is_wysiwyg = "true";
defparam \R1|J[1] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X9_Y20_N4
cycloneive_lcell_comb \R1|J~0 (
// Equation(s):
// \R1|J~0_combout  = (\Selector1~0_combout  & (\R1|J [2] $ (((\R1|J [1] & \R1|J [0])))))

	.dataa(\R1|J [1]),
	.datab(\Selector1~0_combout ),
	.datac(\R1|J [2]),
	.datad(\R1|J [0]),
	.cin(gnd),
	.combout(\R1|J~0_combout ),
	.cout());
// synopsys translate_off
defparam \R1|J~0 .lut_mask = 16'h48C0;
defparam \R1|J~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X9_Y20_N5
dffeas \R1|J[2] (
	.clk(\clk~inputclkctrl_outclk ),
	.d(\R1|J~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\R1|J [2]),
	.prn(vcc));
// synopsys translate_off
defparam \R1|J[2] .is_wysiwyg = "true";
defparam \R1|J[2] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X9_Y20_N18
cycloneive_lcell_comb \Selector2~0 (
// Equation(s):
// \Selector2~0_combout  = (\R1|J [1] & (\R1|J [2] & \R1|J [0]))

	.dataa(gnd),
	.datab(\R1|J [1]),
	.datac(\R1|J [2]),
	.datad(\R1|J [0]),
	.cin(gnd),
	.combout(\Selector2~0_combout ),
	.cout());
// synopsys translate_off
defparam \Selector2~0 .lut_mask = 16'hC000;
defparam \Selector2~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X8_Y20_N28
cycloneive_lcell_comb \Selector2~1 (
// Equation(s):
// \Selector2~1_combout  = ((\Selector2~0_combout  & \ps.shift~q )) # (!\valid~0_combout )

	.dataa(gnd),
	.datab(\Selector2~0_combout ),
	.datac(\ps.shift~q ),
	.datad(\valid~0_combout ),
	.cin(gnd),
	.combout(\Selector2~1_combout ),
	.cout());
// synopsys translate_off
defparam \Selector2~1 .lut_mask = 16'hC0FF;
defparam \Selector2~1 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X8_Y20_N29
dffeas \ps.xmit (
	.clk(\clk~inputclkctrl_outclk ),
	.d(\Selector2~1_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\ps.xmit~q ),
	.prn(vcc));
// synopsys translate_off
defparam \ps.xmit .is_wysiwyg = "true";
defparam \ps.xmit .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X8_Y20_N2
cycloneive_lcell_comb \valid~0 (
// Equation(s):
// \valid~0_combout  = ((\R4|J [8] & (\R4|WideAnd0~1_combout  & \R4|WideAnd0~0_combout ))) # (!\ps.xmit~q )

	.dataa(\ps.xmit~q ),
	.datab(\R4|J [8]),
	.datac(\R4|WideAnd0~1_combout ),
	.datad(\R4|WideAnd0~0_combout ),
	.cin(gnd),
	.combout(\valid~0_combout ),
	.cout());
// synopsys translate_off
defparam \valid~0 .lut_mask = 16'hD555;
defparam \valid~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X7_Y20_N12
cycloneive_lcell_comb \error~0 (
// Equation(s):
// \error~0_combout  = (\sIn~input_o ) # (!\ps.stop~q )

	.dataa(\sIn~input_o ),
	.datab(gnd),
	.datac(gnd),
	.datad(\ps.stop~q ),
	.cin(gnd),
	.combout(\error~0_combout ),
	.cout());
// synopsys translate_off
defparam \error~0 .lut_mask = 16'hAAFF;
defparam \error~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X7_Y20_N8
cycloneive_lcell_comb \R2|J~1 (
// Equation(s):
// \R2|J~1_combout  = (\R2|J [2] & \Selector1~0_combout )

	.dataa(gnd),
	.datab(\R2|J [2]),
	.datac(gnd),
	.datad(\Selector1~0_combout ),
	.cin(gnd),
	.combout(\R2|J~1_combout ),
	.cout());
// synopsys translate_off
defparam \R2|J~1 .lut_mask = 16'hCC00;
defparam \R2|J~1 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X7_Y20_N9
dffeas \R2|J[1] (
	.clk(\clk~inputclkctrl_outclk ),
	.d(\R2|J~1_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\R2|J [1]),
	.prn(vcc));
// synopsys translate_off
defparam \R2|J[1] .is_wysiwyg = "true";
defparam \R2|J[1] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X7_Y20_N2
cycloneive_lcell_comb \R2|J~0 (
// Equation(s):
// \R2|J~0_combout  = (\R2|J [1] & \Selector1~0_combout )

	.dataa(gnd),
	.datab(gnd),
	.datac(\R2|J [1]),
	.datad(\Selector1~0_combout ),
	.cin(gnd),
	.combout(\R2|J~0_combout ),
	.cout());
// synopsys translate_off
defparam \R2|J~0 .lut_mask = 16'hF000;
defparam \R2|J~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X7_Y20_N3
dffeas \R2|J[0] (
	.clk(\clk~inputclkctrl_outclk ),
	.d(\R2|J~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\R2|J [0]),
	.prn(vcc));
// synopsys translate_off
defparam \R2|J[0] .is_wysiwyg = "true";
defparam \R2|J[0] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X7_Y20_N26
cycloneive_lcell_comb \R5|p~0 (
// Equation(s):
// \R5|p~0_combout  = (!\R2|J [0] & (!\R2|J [1] & \sIn~input_o ))

	.dataa(gnd),
	.datab(\R2|J [0]),
	.datac(\R2|J [1]),
	.datad(\sIn~input_o ),
	.cin(gnd),
	.combout(\R5|p~0_combout ),
	.cout());
// synopsys translate_off
defparam \R5|p~0 .lut_mask = 16'h0300;
defparam \R5|p~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X7_Y20_N27
dffeas \R5|p[0] (
	.clk(\clk~inputclkctrl_outclk ),
	.d(\R5|p~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\R5|p [0]),
	.prn(vcc));
// synopsys translate_off
defparam \R5|p[0] .is_wysiwyg = "true";
defparam \R5|p[0] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X7_Y20_N24
cycloneive_lcell_comb \R5|p~1 (
// Equation(s):
// \R5|p~1_combout  = (\R2|J [0] & (!\R2|J [1] & \sIn~input_o ))

	.dataa(gnd),
	.datab(\R2|J [0]),
	.datac(\R2|J [1]),
	.datad(\sIn~input_o ),
	.cin(gnd),
	.combout(\R5|p~1_combout ),
	.cout());
// synopsys translate_off
defparam \R5|p~1 .lut_mask = 16'h0C00;
defparam \R5|p~1 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X7_Y20_N25
dffeas \R5|p[1] (
	.clk(\clk~inputclkctrl_outclk ),
	.d(\R5|p~1_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\R5|p [1]),
	.prn(vcc));
// synopsys translate_off
defparam \R5|p[1] .is_wysiwyg = "true";
defparam \R5|p[1] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X7_Y20_N6
cycloneive_lcell_comb \R5|p~2 (
// Equation(s):
// \R5|p~2_combout  = (!\R2|J [0] & (\R2|J [1] & \sIn~input_o ))

	.dataa(gnd),
	.datab(\R2|J [0]),
	.datac(\R2|J [1]),
	.datad(\sIn~input_o ),
	.cin(gnd),
	.combout(\R5|p~2_combout ),
	.cout());
// synopsys translate_off
defparam \R5|p~2 .lut_mask = 16'h3000;
defparam \R5|p~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X7_Y20_N7
dffeas \R5|p[2] (
	.clk(\clk~inputclkctrl_outclk ),
	.d(\R5|p~2_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\R5|p [2]),
	.prn(vcc));
// synopsys translate_off
defparam \R5|p[2] .is_wysiwyg = "true";
defparam \R5|p[2] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X7_Y20_N28
cycloneive_lcell_comb \R5|p~3 (
// Equation(s):
// \R5|p~3_combout  = (\R2|J [0] & (\R2|J [1] & \sIn~input_o ))

	.dataa(gnd),
	.datab(\R2|J [0]),
	.datac(\R2|J [1]),
	.datad(\sIn~input_o ),
	.cin(gnd),
	.combout(\R5|p~3_combout ),
	.cout());
// synopsys translate_off
defparam \R5|p~3 .lut_mask = 16'hC000;
defparam \R5|p~3 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X7_Y20_N29
dffeas \R5|p[3] (
	.clk(\clk~inputclkctrl_outclk ),
	.d(\R5|p~3_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\R5|p [3]),
	.prn(vcc));
// synopsys translate_off
defparam \R5|p[3] .is_wysiwyg = "true";
defparam \R5|p[3] .power_up = "low";
// synopsys translate_on

assign valid = \valid~output_o ;

assign error = \error~output_o ;

assign pn[0] = \pn[0]~output_o ;

assign pn[1] = \pn[1]~output_o ;

assign p[0] = \p[0]~output_o ;

assign p[1] = \p[1]~output_o ;

assign p[2] = \p[2]~output_o ;

assign p[3] = \p[3]~output_o ;

endmodule

module hard_block (

	devpor,
	devclrn,
	devoe);

// Design Ports Information
// ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
// ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
// ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
// ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
// ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA

input 	devpor;
input 	devclrn;
input 	devoe;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
assign unknown = 1'bx;

wire \~ALTERA_ASDO_DATA1~~padout ;
wire \~ALTERA_FLASH_nCE_nCSO~~padout ;
wire \~ALTERA_DATA0~~padout ;
wire \~ALTERA_ASDO_DATA1~~ibuf_o ;
wire \~ALTERA_FLASH_nCE_nCSO~~ibuf_o ;
wire \~ALTERA_DATA0~~ibuf_o ;


endmodule
