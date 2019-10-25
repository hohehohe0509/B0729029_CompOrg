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
// CREATED		"Fri Oct 25 15:17:14 2019"

module counter(
	Load,
	Count,
	clk,
	D0,
	D1,
	D2,
	D3,
	clean,
	Q0,
	Q1,
	Q2,
	Q3,
	CO
);


input wire	Load;
input wire	Count;
input wire	clk;
input wire	D0;
input wire	D1;
input wire	D2;
input wire	D3;
input wire	clean;
output wire	Q0;
output wire	Q1;
output wire	Q2;
output wire	Q3;
output wire	CO;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_29;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_8;
reg	SYNTHESIZED_WIRE_30;
wire	SYNTHESIZED_WIRE_31;
wire	SYNTHESIZED_WIRE_12;
reg	SYNTHESIZED_WIRE_32;
wire	SYNTHESIZED_WIRE_33;
wire	SYNTHESIZED_WIRE_34;
reg	SYNTHESIZED_WIRE_35;
wire	SYNTHESIZED_WIRE_36;
reg	SYNTHESIZED_WIRE_37;
wire	SYNTHESIZED_WIRE_20;
wire	SYNTHESIZED_WIRE_21;
wire	SYNTHESIZED_WIRE_22;
wire	SYNTHESIZED_WIRE_23;
wire	SYNTHESIZED_WIRE_24;
wire	SYNTHESIZED_WIRE_25;
wire	SYNTHESIZED_WIRE_26;
wire	SYNTHESIZED_WIRE_27;
wire	SYNTHESIZED_WIRE_28;

assign	Q0 = SYNTHESIZED_WIRE_30;
assign	Q1 = SYNTHESIZED_WIRE_32;
assign	Q2 = SYNTHESIZED_WIRE_35;
assign	Q3 = SYNTHESIZED_WIRE_37;




always@(posedge clk or negedge clean)
begin
if (!clean)
	begin
	SYNTHESIZED_WIRE_30 = 0;
	end
else
	begin
	SYNTHESIZED_WIRE_30 = SYNTHESIZED_WIRE_0;
	end
end


always@(posedge clk or negedge clean)
begin
if (!clean)
	begin
	SYNTHESIZED_WIRE_32 = 0;
	end
else
	begin
	SYNTHESIZED_WIRE_32 = SYNTHESIZED_WIRE_1;
	end
end

assign	SYNTHESIZED_WIRE_21 = SYNTHESIZED_WIRE_2 & SYNTHESIZED_WIRE_29;

assign	SYNTHESIZED_WIRE_24 = Load & D1;

assign	SYNTHESIZED_WIRE_23 = SYNTHESIZED_WIRE_4 & SYNTHESIZED_WIRE_29;

assign	SYNTHESIZED_WIRE_26 = Load & D2;

assign	SYNTHESIZED_WIRE_25 = SYNTHESIZED_WIRE_6 & SYNTHESIZED_WIRE_29;

assign	SYNTHESIZED_WIRE_28 = Load & D3;

assign	SYNTHESIZED_WIRE_27 = SYNTHESIZED_WIRE_8 & SYNTHESIZED_WIRE_29;

assign	SYNTHESIZED_WIRE_29 =  ~Load;

assign	SYNTHESIZED_WIRE_31 = SYNTHESIZED_WIRE_29 & Count;

assign	SYNTHESIZED_WIRE_33 = SYNTHESIZED_WIRE_30 & SYNTHESIZED_WIRE_31;


always@(posedge clk or negedge clean)
begin
if (!clean)
	begin
	SYNTHESIZED_WIRE_35 = 0;
	end
else
	begin
	SYNTHESIZED_WIRE_35 = SYNTHESIZED_WIRE_12;
	end
end

assign	SYNTHESIZED_WIRE_34 = SYNTHESIZED_WIRE_32 & SYNTHESIZED_WIRE_33;

assign	SYNTHESIZED_WIRE_2 = SYNTHESIZED_WIRE_31 ^ SYNTHESIZED_WIRE_30;

assign	SYNTHESIZED_WIRE_4 = SYNTHESIZED_WIRE_33 ^ SYNTHESIZED_WIRE_32;

assign	SYNTHESIZED_WIRE_6 = SYNTHESIZED_WIRE_34 ^ SYNTHESIZED_WIRE_35;

assign	SYNTHESIZED_WIRE_8 = SYNTHESIZED_WIRE_36 ^ SYNTHESIZED_WIRE_37;

assign	SYNTHESIZED_WIRE_36 = SYNTHESIZED_WIRE_35 & SYNTHESIZED_WIRE_34;

assign	CO = SYNTHESIZED_WIRE_37 & SYNTHESIZED_WIRE_36;


always@(posedge clk or negedge clean)
begin
if (!clean)
	begin
	SYNTHESIZED_WIRE_37 = 0;
	end
else
	begin
	SYNTHESIZED_WIRE_37 = SYNTHESIZED_WIRE_20;
	end
end

assign	SYNTHESIZED_WIRE_0 = SYNTHESIZED_WIRE_21 | SYNTHESIZED_WIRE_22;

assign	SYNTHESIZED_WIRE_1 = SYNTHESIZED_WIRE_23 | SYNTHESIZED_WIRE_24;

assign	SYNTHESIZED_WIRE_12 = SYNTHESIZED_WIRE_25 | SYNTHESIZED_WIRE_26;

assign	SYNTHESIZED_WIRE_20 = SYNTHESIZED_WIRE_27 | SYNTHESIZED_WIRE_28;

assign	SYNTHESIZED_WIRE_22 = Load & D0;


endmodule
