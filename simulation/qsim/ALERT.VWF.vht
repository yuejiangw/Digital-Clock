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
-- Generated on "07/13/2018 15:29:32"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ALERT
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ALERT_vhd_vec_tst IS
END ALERT_vhd_vec_tst;
ARCHITECTURE ALERT_arch OF ALERT_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL LED : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL M_IN : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL S_IN : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL SPEAKER : STD_LOGIC;
COMPONENT ALERT
	PORT (
	CLK : IN STD_LOGIC;
	LED : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	M_IN : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	S_IN : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	SPEAKER : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ALERT
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	LED => LED,
	M_IN => M_IN,
	S_IN => S_IN,
	SPEAKER => SPEAKER
	);

-- CLK
t_prcs_CLK: PROCESS
BEGIN
LOOP
	CLK <= '0';
	WAIT FOR 20000 ps;
	CLK <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK;
-- M_IN[7]
t_prcs_M_IN_7: PROCESS
BEGIN
	M_IN(7) <= '0';
	WAIT FOR 160000 ps;
	M_IN(7) <= '1';
	WAIT FOR 60000 ps;
	M_IN(7) <= '0';
WAIT;
END PROCESS t_prcs_M_IN_7;
-- M_IN[6]
t_prcs_M_IN_6: PROCESS
BEGIN
	M_IN(6) <= '0';
	WAIT FOR 160000 ps;
	M_IN(6) <= '1';
	WAIT FOR 60000 ps;
	M_IN(6) <= '0';
WAIT;
END PROCESS t_prcs_M_IN_6;
-- M_IN[5]
t_prcs_M_IN_5: PROCESS
BEGIN
	M_IN(5) <= '0';
	WAIT FOR 160000 ps;
	M_IN(5) <= '1';
	WAIT FOR 60000 ps;
	M_IN(5) <= '0';
WAIT;
END PROCESS t_prcs_M_IN_5;
-- M_IN[4]
t_prcs_M_IN_4: PROCESS
BEGIN
	M_IN(4) <= '0';
	WAIT FOR 160000 ps;
	M_IN(4) <= '1';
	WAIT FOR 60000 ps;
	M_IN(4) <= '0';
WAIT;
END PROCESS t_prcs_M_IN_4;
-- M_IN[3]
t_prcs_M_IN_3: PROCESS
BEGIN
	M_IN(3) <= '0';
	WAIT FOR 160000 ps;
	M_IN(3) <= '1';
	WAIT FOR 60000 ps;
	M_IN(3) <= '0';
WAIT;
END PROCESS t_prcs_M_IN_3;
-- M_IN[2]
t_prcs_M_IN_2: PROCESS
BEGIN
	M_IN(2) <= '0';
	WAIT FOR 160000 ps;
	M_IN(2) <= '1';
	WAIT FOR 60000 ps;
	M_IN(2) <= '0';
WAIT;
END PROCESS t_prcs_M_IN_2;
-- M_IN[1]
t_prcs_M_IN_1: PROCESS
BEGIN
	M_IN(1) <= '0';
	WAIT FOR 160000 ps;
	M_IN(1) <= '1';
	WAIT FOR 60000 ps;
	M_IN(1) <= '0';
WAIT;
END PROCESS t_prcs_M_IN_1;
-- M_IN[0]
t_prcs_M_IN_0: PROCESS
BEGIN
	M_IN(0) <= '0';
	WAIT FOR 160000 ps;
	M_IN(0) <= '1';
	WAIT FOR 60000 ps;
	M_IN(0) <= '0';
WAIT;
END PROCESS t_prcs_M_IN_0;
-- S_IN[7]
t_prcs_S_IN_7: PROCESS
BEGIN
	S_IN(7) <= '0';
	WAIT FOR 740000 ps;
	S_IN(7) <= '1';
	WAIT FOR 60000 ps;
	S_IN(7) <= '0';
WAIT;
END PROCESS t_prcs_S_IN_7;
-- S_IN[6]
t_prcs_S_IN_6: PROCESS
BEGIN
	S_IN(6) <= '0';
	WAIT FOR 740000 ps;
	S_IN(6) <= '1';
	WAIT FOR 60000 ps;
	S_IN(6) <= '0';
WAIT;
END PROCESS t_prcs_S_IN_6;
-- S_IN[5]
t_prcs_S_IN_5: PROCESS
BEGIN
	S_IN(5) <= '0';
	WAIT FOR 740000 ps;
	S_IN(5) <= '1';
	WAIT FOR 60000 ps;
	S_IN(5) <= '0';
WAIT;
END PROCESS t_prcs_S_IN_5;
-- S_IN[4]
t_prcs_S_IN_4: PROCESS
BEGIN
	S_IN(4) <= '0';
	WAIT FOR 740000 ps;
	S_IN(4) <= '1';
	WAIT FOR 60000 ps;
	S_IN(4) <= '0';
WAIT;
END PROCESS t_prcs_S_IN_4;
-- S_IN[3]
t_prcs_S_IN_3: PROCESS
BEGIN
	S_IN(3) <= '0';
	WAIT FOR 740000 ps;
	S_IN(3) <= '1';
	WAIT FOR 60000 ps;
	S_IN(3) <= '0';
WAIT;
END PROCESS t_prcs_S_IN_3;
-- S_IN[2]
t_prcs_S_IN_2: PROCESS
BEGIN
	S_IN(2) <= '0';
	WAIT FOR 740000 ps;
	S_IN(2) <= '1';
	WAIT FOR 60000 ps;
	S_IN(2) <= '0';
WAIT;
END PROCESS t_prcs_S_IN_2;
-- S_IN[1]
t_prcs_S_IN_1: PROCESS
BEGIN
	S_IN(1) <= '0';
	WAIT FOR 740000 ps;
	S_IN(1) <= '1';
	WAIT FOR 60000 ps;
	S_IN(1) <= '0';
WAIT;
END PROCESS t_prcs_S_IN_1;
-- S_IN[0]
t_prcs_S_IN_0: PROCESS
BEGIN
	S_IN(0) <= '1';
WAIT;
END PROCESS t_prcs_S_IN_0;
END ALERT_arch;
