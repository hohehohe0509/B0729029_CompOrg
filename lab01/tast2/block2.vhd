-- Copyright (C) 1991-2010 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- PROGRAM		"Quartus II"
-- VERSION		"Version 10.0 Build 218 06/27/2010 SJ Web Edition"
-- CREATED		"Fri Sep 27 17:30:24 2019"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY block2 IS 
	PORT
	(
		ps :  IN  STD_LOGIC;
		ls :  IN  STD_LOGIC;
		rs :  IN  STD_LOGIC;
		rr :  IN  STD_LOGIC;
		pl :  OUT  STD_LOGIC;
		ll :  OUT  STD_LOGIC;
		rl :  OUT  STD_LOGIC
	);
END block2;

ARCHITECTURE bdf_type OF block2 IS 

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC;


BEGIN 
pl <= ps;



SYNTHESIZED_WIRE_2 <= ls AND SYNTHESIZED_WIRE_0;


SYNTHESIZED_WIRE_7 <= SYNTHESIZED_WIRE_1 OR SYNTHESIZED_WIRE_2;


SYNTHESIZED_WIRE_11 <= NOT(ps);



SYNTHESIZED_WIRE_9 <= SYNTHESIZED_WIRE_3 OR SYNTHESIZED_WIRE_4;


SYNTHESIZED_WIRE_0 <= NOT(rs);



SYNTHESIZED_WIRE_1 <= ls AND rs AND rr;


SYNTHESIZED_WIRE_3 <= ls AND rs AND SYNTHESIZED_WIRE_5;


SYNTHESIZED_WIRE_6 <= NOT(ls);



SYNTHESIZED_WIRE_5 <= NOT(rr);



SYNTHESIZED_WIRE_4 <= SYNTHESIZED_WIRE_6 AND rs;


ll <= SYNTHESIZED_WIRE_7 AND SYNTHESIZED_WIRE_11;


rl <= SYNTHESIZED_WIRE_9 AND SYNTHESIZED_WIRE_11;


END bdf_type;