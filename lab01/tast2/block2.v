// Copyright (C) 1991-2010 Altera Corporation
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, Altera MegaCore Function License 
// Agreement, or other applicable license agreement, including, 
// without limitation, that your use is for the sole purpose of 
// programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the 
// applicable agreement for further details.

// PROGRAM		"Quartus II"
// VERSION		"Version 10.0 Build 218 06/27/2010 SJ Web Edition"
// CREATED		"Fri Sep 27 17:30:37 2019"

module block2(
	ps,
	ls,
	rs,
	rr,
	pl,
	ll,
	rl
);


input wire	ps;
input wire	ls;
input wire	rs;
input wire	rr;
output wire	pl;
output wire	ll;
output wire	rl;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_9;

assign	pl = ps;



assign	SYNTHESIZED_WIRE_2 = ls & SYNTHESIZED_WIRE_0;

assign	SYNTHESIZED_WIRE_7 = SYNTHESIZED_WIRE_1 | SYNTHESIZED_WIRE_2;

assign	SYNTHESIZED_WIRE_11 =  ~ps;

assign	SYNTHESIZED_WIRE_9 = SYNTHESIZED_WIRE_3 | SYNTHESIZED_WIRE_4;

assign	SYNTHESIZED_WIRE_0 =  ~rs;

assign	SYNTHESIZED_WIRE_1 = ls & rs & rr;

assign	SYNTHESIZED_WIRE_3 = ls & rs & SYNTHESIZED_WIRE_5;

assign	SYNTHESIZED_WIRE_6 =  ~ls;

assign	SYNTHESIZED_WIRE_5 =  ~rr;

assign	SYNTHESIZED_WIRE_4 = SYNTHESIZED_WIRE_6 & rs;

assign	ll = SYNTHESIZED_WIRE_7 & SYNTHESIZED_WIRE_11;

assign	rl = SYNTHESIZED_WIRE_9 & SYNTHESIZED_WIRE_11;


endmodule
