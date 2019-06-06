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
-- Generated on "10/23/2018 14:18:25"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          CLOCK
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY CLOCK_vhd_vec_tst IS
END CLOCK_vhd_vec_tst;
ARCHITECTURE CLOCK_arch OF CLOCK_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL BUZZER : STD_LOGIC;
SIGNAL C_RESET : STD_LOGIC;
SIGNAL C_SCALE_SEL : STD_LOGIC;
SIGNAL C_SET_HOUR : STD_LOGIC;
SIGNAL C_SET_MIN : STD_LOGIC;
SIGNAL CLK : STD_LOGIC;
SIGNAL FLASH_LED : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL SEGMENT_SEG : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL SEGMENT_SEL : STD_LOGIC_VECTOR(5 DOWNTO 0);
COMPONENT CLOCK
	PORT (
	BUZZER : BUFFER STD_LOGIC;
	C_RESET : IN STD_LOGIC;
	C_SCALE_SEL : IN STD_LOGIC;
	C_SET_HOUR : IN STD_LOGIC;
	C_SET_MIN : IN STD_LOGIC;
	CLK : IN STD_LOGIC;
	FLASH_LED : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	SEGMENT_SEG : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	SEGMENT_SEL : BUFFER STD_LOGIC_VECTOR(5 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : CLOCK
	PORT MAP (
-- list connections between master ports and signals
	BUZZER => BUZZER,
	C_RESET => C_RESET,
	C_SCALE_SEL => C_SCALE_SEL,
	C_SET_HOUR => C_SET_HOUR,
	C_SET_MIN => C_SET_MIN,
	CLK => CLK,
	FLASH_LED => FLASH_LED,
	SEGMENT_SEG => SEGMENT_SEG,
	SEGMENT_SEL => SEGMENT_SEL
	);
END CLOCK_arch;
