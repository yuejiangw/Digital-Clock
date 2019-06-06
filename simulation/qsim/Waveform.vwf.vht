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
-- Generated on "07/13/2018 07:38:52"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          DEV
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY DEV_vhd_vec_tst IS
END DEV_vhd_vec_tst;
ARCHITECTURE DEV_arch OF DEV_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK_1Hz : STD_LOGIC;
SIGNAL CLK_5Hz : STD_LOGIC;
SIGNAL CLK_50MHz : STD_LOGIC;
SIGNAL CLK_250Hz : STD_LOGIC;
COMPONENT DEV
	PORT (
	CLK_1Hz : OUT STD_LOGIC;
	CLK_5Hz : OUT STD_LOGIC;
	CLK_50MHz : IN STD_LOGIC;
	CLK_250Hz : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : DEV
	PORT MAP (
-- list connections between master ports and signals
	CLK_1Hz => CLK_1Hz,
	CLK_5Hz => CLK_5Hz,
	CLK_50MHz => CLK_50MHz,
	CLK_250Hz => CLK_250Hz
	);

-- CLK_50MHz
t_prcs_CLK_50MHz: PROCESS
BEGIN
LOOP
	CLK_50MHz <= '0';
	WAIT FOR 10000 ps;
	CLK_50MHz <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK_50MHz;
END DEV_arch;
