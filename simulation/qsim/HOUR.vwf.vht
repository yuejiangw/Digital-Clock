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
-- Generated on "10/23/2018 14:33:35"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          hour_bcd_count
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY hour_bcd_count_vhd_vec_tst IS
END hour_bcd_count_vhd_vec_tst;
ARCHITECTURE hour_bcd_count_arch OF hour_bcd_count_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk_to_hour : STD_LOGIC;
SIGNAL datout : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
SIGNAL scale_sel : STD_LOGIC;
COMPONENT hour_bcd_count
	PORT (
	clk_to_hour : IN STD_LOGIC;
	datout : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	reset : IN STD_LOGIC;
	scale_sel : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : hour_bcd_count
	PORT MAP (
-- list connections between master ports and signals
	clk_to_hour => clk_to_hour,
	datout => datout,
	reset => reset,
	scale_sel => scale_sel
	);

-- clk_to_hour
t_prcs_clk_to_hour: PROCESS
BEGIN
	FOR i IN 1 TO 16
	LOOP
		clk_to_hour <= '0';
		WAIT FOR 30000 ps;
		clk_to_hour <= '1';
		WAIT FOR 30000 ps;
	END LOOP;
	clk_to_hour <= '0';
	WAIT FOR 30000 ps;
	clk_to_hour <= '1';
WAIT;
END PROCESS t_prcs_clk_to_hour;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '1';
WAIT;
END PROCESS t_prcs_reset;

-- scale_sel
t_prcs_scale_sel: PROCESS
BEGIN
	scale_sel <= '0';
WAIT;
END PROCESS t_prcs_scale_sel;
END hour_bcd_count_arch;
