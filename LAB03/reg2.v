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
// CREATED		"Fri Oct 18 15:28:11 2019"

module reg2(
	load,
	in1,
	in2,
	in3,
	in4,
	in5,
	in6,
	in7,
	in8,
	clock,
	out1,
	out2,
	out3,
	out4,
	out5,
	out6,
	out7,
	out8
);


input wire	load;
input wire	in1;
input wire	in2;
input wire	in3;
input wire	in4;
input wire	in5;
input wire	in6;
input wire	in7;
input wire	in8;
input wire	clock;
output reg	out1;
output reg	out2;
output reg	out3;
output reg	out4;
output reg	out5;
output reg	out6;
output reg	out7;
output reg	out8;






always@(posedge clock)
begin
if (load)
	begin
	out3 = in3;
	end
end


always@(posedge clock)
begin
if (load)
	begin
	out4 = in4;
	end
end


always@(posedge clock)
begin
if (load)
	begin
	out5 = in5;
	end
end


always@(posedge clock)
begin
if (load)
	begin
	out6 = in6;
	end
end


always@(posedge clock)
begin
if (load)
	begin
	out7 = in7;
	end
end


always@(posedge clock)
begin
if (load)
	begin
	out8 = in8;
	end
end


always@(posedge clock)
begin
if (load)
	begin
	out1 = in1;
	end
end


always@(posedge clock)
begin
if (load)
	begin
	out2 = in2;
	end
end


endmodule
