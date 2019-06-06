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
-- Generated on "10/23/2018 14:25:28"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          second_bcd_count
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY second_bcd_count_vhd_vec_tst IS
END second_bcd_count_vhd_vec_tst;
ARCHITECTURE second_bcd_count_arch OF second_bcd_count_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk_to_second : STD_LOGIC;
SIGNAL co : STD_LOGIC;
SIGNAL datout : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
SIGNAL set_min : STD_LOGIC;
COMPONENT second_bcd_count
	PORT (
	clk_to_second : IN STD_LOGIC;
	co : OUT STD_LOGIC;
	datout : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	reset : IN STD_LOGIC;
	set_min : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : second_bcd_count
	PORT MAP (
-- list connections between master ports and signals
	clk_to_second => clk_to_second,
	co => co,
	datout => datout,
	reset => reset,
	set_min => set_min
	);

-- clk_to_second
t_prcs_clk_to_second: PROCESS
BEGIN
LOOP
	clk_to_second <= '0';
	WAIT FOR 5000 ps;
	clk_to_second <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk_to_second;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '1';
WAIT;
END PROCESS t_prcs_reset;

-- set_min
t_prcs_set_min: PROCESS
BEGIN
	set_min <= '0';
WAIT;
END PROCESS t_prcs_set_min;
END second_bcd_count_arch;
