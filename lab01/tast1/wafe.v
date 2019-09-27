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
// CREATED		"Fri Sep 27 16:43:39 2019"

module wafe(
	x,
	y,
	clk,
	a,
	b
);


input wire	x;
input wire	y;
input wire	clk;
output wire	a;
output reg	b;

reg	DFF_inst4;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;

assign	a = DFF_inst4;



assign	SYNTHESIZED_WIRE_0 = x ^ y;

assign	SYNTHESIZED_WIRE_1 = ~(y & DFF_inst4);


always@(posedge clk)
begin
	begin
	DFF_inst4 = SYNTHESIZED_WIRE_0;
	end
end


always@(posedge clk)
begin
	begin
	b = SYNTHESIZED_WIRE_1;
	end
end


endmodule
