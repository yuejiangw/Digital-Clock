-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "07/13/2018 16:01:17"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          SELTIME
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY SELTIME_vhd_vec_tst IS
END SELTIME_vhd_vec_tst;
ARCHITECTURE SELTIME_arch OF SELTIME_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL HOUR : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL MINUTE : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL SCAN_CLK : STD_LOGIC;
SIGNAL SECOND : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL SEG : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL SEL : STD_LOGIC_VECTOR(5 DOWNTO 0);
COMPONENT SELTIME
	PORT (
	HOUR : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	MINUTE : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	SCAN_CLK : IN STD_LOGIC;
	SECOND : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	SEG : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	SEL : BUFFER STD_LOGIC_VECTOR(5 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : SELTIME
	PORT MAP (
-- list connections between master ports and signals
	HOUR => HOUR,
	MINUTE => MINUTE,
	SCAN_CLK => SCAN_CLK,
	SECOND => SECOND,
	SEG => SEG,
	SEL => SEL
	);
-- HOUR[7]
t_prcs_HOUR_7: PROCESS
BEGIN
	HOUR(7) <= '0';
WAIT;
END PROCESS t_prcs_HOUR_7;
-- HOUR[6]
t_prcs_HOUR_6: PROCESS
BEGIN
	HOUR(6) <= '0';
WAIT;
END PROCESS t_prcs_HOUR_6;
-- HOUR[5]
t_prcs_HOUR_5: PROCESS
BEGIN
	HOUR(5) <= '0';
WAIT;
END PROCESS t_prcs_HOUR_5;
-- HOUR[4]
t_prcs_HOUR_4: PROCESS
BEGIN
	HOUR(4) <= '0';
WAIT;
END PROCESS t_prcs_HOUR_4;
-- HOUR[3]
t_prcs_HOUR_3: PROCESS
BEGIN
	HOUR(3) <= '0';
WAIT;
END PROCESS t_prcs_HOUR_3;
-- HOUR[2]
t_prcs_HOUR_2: PROCESS
BEGIN
	HOUR(2) <= '1';
WAIT;
END PROCESS t_prcs_HOUR_2;
-- HOUR[1]
t_prcs_HOUR_1: PROCESS
BEGIN
	HOUR(1) <= '0';
WAIT;
END PROCESS t_prcs_HOUR_1;
-- HOUR[0]
t_prcs_HOUR_0: PROCESS
BEGIN
	HOUR(0) <= '1';
WAIT;
END PROCESS t_prcs_HOUR_0;
-- MINUTE[7]
t_prcs_MINUTE_7: PROCESS
BEGIN
	MINUTE(7) <= '0';
WAIT;
END PROCESS t_prcs_MINUTE_7;
-- MINUTE[6]
t_prcs_MINUTE_6: PROCESS
BEGIN
	MINUTE(6) <= '0';
WAIT;
END PROCESS t_prcs_MINUTE_6;
-- MINUTE[5]
t_prcs_MINUTE_5: PROCESS
BEGIN
	MINUTE(5) <= '1';
WAIT;
END PROCESS t_prcs_MINUTE_5;
-- MINUTE[4]
t_prcs_MINUTE_4: PROCESS
BEGIN
	MINUTE(4) <= '0';
WAIT;
END PROCESS t_prcs_MINUTE_4;
-- MINUTE[3]
t_prcs_MINUTE_3: PROCESS
BEGIN
	MINUTE(3) <= '0';
WAIT;
END PROCESS t_prcs_MINUTE_3;
-- MINUTE[2]
t_prcs_MINUTE_2: PROCESS
BEGIN
	MINUTE(2) <= '0';
WAIT;
END PROCESS t_prcs_MINUTE_2;
-- MINUTE[1]
t_prcs_MINUTE_1: PROCESS
BEGIN
	MINUTE(1) <= '0';
WAIT;
END PROCESS t_prcs_MINUTE_1;
-- MINUTE[0]
t_prcs_MINUTE_0: PROCESS
BEGIN
	MINUTE(0) <= '1';
WAIT;
END PROCESS t_prcs_MINUTE_0;

-- SCAN_CLK
t_prcs_SCAN_CLK: PROCESS
BEGIN
LOOP
	SCAN_CLK <= '0';
	WAIT FOR 10000 ps;
	SCAN_CLK <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_SCAN_CLK;
-- SECOND[7]
t_prcs_SECOND_7: PROCESS
BEGIN
	SECOND(7) <= '0';
WAIT;
END PROCESS t_prcs_SECOND_7;
-- SECOND[6]
t_prcs_SECOND_6: PROCESS
BEGIN
	SECOND(6) <= '0';
WAIT;
END PROCESS t_prcs_SECOND_6;
-- SECOND[5]
t_prcs_SECOND_5: PROCESS
BEGIN
	SECOND(5) <= '0';
WAIT;
END PROCESS t_prcs_SECOND_5;
-- SECOND[4]
t_prcs_SECOND_4: PROCESS
BEGIN
	SECOND(4) <= '1';
WAIT;
END PROCESS t_prcs_SECOND_4;
-- SECOND[3]
t_prcs_SECOND_3: PROCESS
BEGIN
	SECOND(3) <= '0';
WAIT;
END PROCESS t_prcs_SECOND_3;
-- SECOND[2]
t_prcs_SECOND_2: PROCESS
BEGIN
	SECOND(2) <= '0';
WAIT;
END PROCESS t_prcs_SECOND_2;
-- SECOND[1]
t_prcs_SECOND_1: PROCESS
BEGIN
	SECOND(1) <= '1';
WAIT;
END PROCESS t_prcs_SECOND_1;
-- SECOND[0]
t_prcs_SECOND_0: PROCESS
BEGIN
	SECOND(0) <= '1';
WAIT;
END PROCESS t_prcs_SECOND_0;
END SELTIME_arch;
