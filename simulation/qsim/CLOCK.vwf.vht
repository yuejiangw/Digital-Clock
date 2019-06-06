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
-- Generated on "10/29/2018 01:04:12"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          clock
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY clock_vhd_vec_tst IS
END clock_vhd_vec_tst;
ARCHITECTURE clock_arch OF clock_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL buzzer : STD_LOGIC;
SIGNAL c_reset : STD_LOGIC;
SIGNAL c_scale_sel : STD_LOGIC;
SIGNAL c_set_hour : STD_LOGIC;
SIGNAL c_set_min : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL flash_led : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL segment_seg : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL segment_sel : STD_LOGIC_VECTOR(5 DOWNTO 0);
COMPONENT clock
	PORT (
	buzzer : BUFFER STD_LOGIC;
	c_reset : IN STD_LOGIC;
	c_scale_sel : IN STD_LOGIC;
	c_set_hour : IN STD_LOGIC;
	c_set_min : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	flash_led : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	segment_seg : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	segment_sel : BUFFER STD_LOGIC_VECTOR(5 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : clock
	PORT MAP (
-- list connections between master ports and signals
	buzzer => buzzer,
	c_reset => c_reset,
	c_scale_sel => c_scale_sel,
	c_set_hour => c_set_hour,
	c_set_min => c_set_min,
	clk => clk,
	flash_led => flash_led,
	segment_seg => segment_seg,
	segment_sel => segment_sel
	);
END clock_arch;
