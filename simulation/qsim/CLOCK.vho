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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.0.0 Build 614 04/24/2018 SJ Lite Edition"

-- DATE "10/29/2018 01:04:15"

-- 
-- Device: Altera EP4CE6F17C8 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	clock IS
    PORT (
	clk : IN std_logic;
	c_scale_sel : IN std_logic;
	c_reset : IN std_logic;
	c_set_min : IN std_logic;
	c_set_hour : IN std_logic;
	buzzer : BUFFER std_logic;
	segment_sel : BUFFER std_logic_vector(5 DOWNTO 0);
	segment_seg : BUFFER std_logic_vector(7 DOWNTO 0);
	flash_led : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END clock;

-- Design Ports Information
-- buzzer	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment_sel[0]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment_sel[1]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment_sel[2]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment_sel[3]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment_sel[4]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment_sel[5]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment_seg[0]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment_seg[1]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment_seg[2]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment_seg[3]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment_seg[4]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment_seg[5]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment_seg[6]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment_seg[7]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- flash_led[0]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- flash_led[1]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- flash_led[2]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- flash_led[3]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_reset	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_scale_sel	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_set_min	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_set_hour	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF clock IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_c_scale_sel : std_logic;
SIGNAL ww_c_reset : std_logic;
SIGNAL ww_c_set_min : std_logic;
SIGNAL ww_c_set_hour : std_logic;
SIGNAL ww_buzzer : std_logic;
SIGNAL ww_segment_sel : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_segment_seg : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_flash_led : std_logic_vector(3 DOWNTO 0);
SIGNAL \u1|co~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u5|clk_250hz~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u2|co~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u5|clk_1hz~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u5|clk_5hz~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u4|LessThan0~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \buzzer~output_o\ : std_logic;
SIGNAL \segment_sel[0]~output_o\ : std_logic;
SIGNAL \segment_sel[1]~output_o\ : std_logic;
SIGNAL \segment_sel[2]~output_o\ : std_logic;
SIGNAL \segment_sel[3]~output_o\ : std_logic;
SIGNAL \segment_sel[4]~output_o\ : std_logic;
SIGNAL \segment_sel[5]~output_o\ : std_logic;
SIGNAL \segment_seg[0]~output_o\ : std_logic;
SIGNAL \segment_seg[1]~output_o\ : std_logic;
SIGNAL \segment_seg[2]~output_o\ : std_logic;
SIGNAL \segment_seg[3]~output_o\ : std_logic;
SIGNAL \segment_seg[4]~output_o\ : std_logic;
SIGNAL \segment_seg[5]~output_o\ : std_logic;
SIGNAL \segment_seg[6]~output_o\ : std_logic;
SIGNAL \segment_seg[7]~output_o\ : std_logic;
SIGNAL \flash_led[0]~output_o\ : std_logic;
SIGNAL \flash_led[1]~output_o\ : std_logic;
SIGNAL \flash_led[2]~output_o\ : std_logic;
SIGNAL \flash_led[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \u5|q1[0]~26_combout\ : std_logic;
SIGNAL \u5|q1[24]~75\ : std_logic;
SIGNAL \u5|q1[25]~77_combout\ : std_logic;
SIGNAL \u5|clk_1hz~0_combout\ : std_logic;
SIGNAL \u5|LessThan1~1_combout\ : std_logic;
SIGNAL \u5|LessThan1~0_combout\ : std_logic;
SIGNAL \u5|LessThan1~2_combout\ : std_logic;
SIGNAL \u5|LessThan1~3_combout\ : std_logic;
SIGNAL \u5|LessThan1~4_combout\ : std_logic;
SIGNAL \u5|LessThan1~5_combout\ : std_logic;
SIGNAL \u5|LessThan1~6_combout\ : std_logic;
SIGNAL \u5|q1~76_combout\ : std_logic;
SIGNAL \u5|q1[0]~27\ : std_logic;
SIGNAL \u5|q1[1]~28_combout\ : std_logic;
SIGNAL \u5|q1[1]~29\ : std_logic;
SIGNAL \u5|q1[2]~30_combout\ : std_logic;
SIGNAL \u5|q1[2]~31\ : std_logic;
SIGNAL \u5|q1[3]~32_combout\ : std_logic;
SIGNAL \u5|q1[3]~33\ : std_logic;
SIGNAL \u5|q1[4]~34_combout\ : std_logic;
SIGNAL \u5|q1[4]~35\ : std_logic;
SIGNAL \u5|q1[5]~36_combout\ : std_logic;
SIGNAL \u5|q1[5]~37\ : std_logic;
SIGNAL \u5|q1[6]~38_combout\ : std_logic;
SIGNAL \u5|q1[6]~39\ : std_logic;
SIGNAL \u5|q1[7]~40_combout\ : std_logic;
SIGNAL \u5|q1[7]~41\ : std_logic;
SIGNAL \u5|q1[8]~42_combout\ : std_logic;
SIGNAL \u5|q1[8]~43\ : std_logic;
SIGNAL \u5|q1[9]~44_combout\ : std_logic;
SIGNAL \u5|q1[9]~45\ : std_logic;
SIGNAL \u5|q1[10]~46_combout\ : std_logic;
SIGNAL \u5|q1[10]~47\ : std_logic;
SIGNAL \u5|q1[11]~48_combout\ : std_logic;
SIGNAL \u5|q1[11]~49\ : std_logic;
SIGNAL \u5|q1[12]~50_combout\ : std_logic;
SIGNAL \u5|q1[12]~51\ : std_logic;
SIGNAL \u5|q1[13]~52_combout\ : std_logic;
SIGNAL \u5|q1[13]~53\ : std_logic;
SIGNAL \u5|q1[14]~54_combout\ : std_logic;
SIGNAL \u5|q1[14]~55\ : std_logic;
SIGNAL \u5|q1[15]~56_combout\ : std_logic;
SIGNAL \u5|q1[15]~57\ : std_logic;
SIGNAL \u5|q1[16]~58_combout\ : std_logic;
SIGNAL \u5|q1[16]~59\ : std_logic;
SIGNAL \u5|q1[17]~60_combout\ : std_logic;
SIGNAL \u5|q1[17]~61\ : std_logic;
SIGNAL \u5|q1[18]~62_combout\ : std_logic;
SIGNAL \u5|q1[18]~63\ : std_logic;
SIGNAL \u5|q1[19]~64_combout\ : std_logic;
SIGNAL \u5|q1[19]~65\ : std_logic;
SIGNAL \u5|q1[20]~66_combout\ : std_logic;
SIGNAL \u5|q1[20]~67\ : std_logic;
SIGNAL \u5|q1[21]~68_combout\ : std_logic;
SIGNAL \u5|q1[21]~69\ : std_logic;
SIGNAL \u5|q1[22]~70_combout\ : std_logic;
SIGNAL \u5|q1[22]~71\ : std_logic;
SIGNAL \u5|q1[23]~72_combout\ : std_logic;
SIGNAL \u5|q1[23]~73\ : std_logic;
SIGNAL \u5|q1[24]~74_combout\ : std_logic;
SIGNAL \u5|clk_1hz~1_combout\ : std_logic;
SIGNAL \u5|clk_1hz~2_combout\ : std_logic;
SIGNAL \u5|clk_1hz~3_combout\ : std_logic;
SIGNAL \u5|clk_1hz~4_combout\ : std_logic;
SIGNAL \u5|clk_1hz~5_combout\ : std_logic;
SIGNAL \u5|clk_1hz~6_combout\ : std_logic;
SIGNAL \u5|clk_1hz~q\ : std_logic;
SIGNAL \u5|clk_1hz~clkctrl_outclk\ : std_logic;
SIGNAL \u1|count_shi~5_combout\ : std_logic;
SIGNAL \c_reset~input_o\ : std_logic;
SIGNAL \u1|count_ge~2_combout\ : std_logic;
SIGNAL \u1|count_ge~3_combout\ : std_logic;
SIGNAL \u1|count_ge~0_combout\ : std_logic;
SIGNAL \u1|count_ge~1_combout\ : std_logic;
SIGNAL \u8|LessThan1~0_combout\ : std_logic;
SIGNAL \u1|count_shi~7_combout\ : std_logic;
SIGNAL \u1|process_0~1_combout\ : std_logic;
SIGNAL \u1|process_0~0_combout\ : std_logic;
SIGNAL \u1|Add1~0_combout\ : std_logic;
SIGNAL \u1|count_shi~4_combout\ : std_logic;
SIGNAL \u1|count_shi[3]~2_combout\ : std_logic;
SIGNAL \u1|count_shi[3]~3_combout\ : std_logic;
SIGNAL \u1|count_shi~6_combout\ : std_logic;
SIGNAL \u8|beep~0_combout\ : std_logic;
SIGNAL \u8|beep~2_combout\ : std_logic;
SIGNAL \u1|process_0~2_combout\ : std_logic;
SIGNAL \u1|count_en~0_combout\ : std_logic;
SIGNAL \u1|count_en~q\ : std_logic;
SIGNAL \u5|q2[0]~18_combout\ : std_logic;
SIGNAL \u5|q2[14]~48\ : std_logic;
SIGNAL \u5|q2[15]~49_combout\ : std_logic;
SIGNAL \u5|q2[15]~50\ : std_logic;
SIGNAL \u5|q2[16]~51_combout\ : std_logic;
SIGNAL \u5|q2[16]~52\ : std_logic;
SIGNAL \u5|q2[17]~53_combout\ : std_logic;
SIGNAL \u5|q2~44_combout\ : std_logic;
SIGNAL \u5|q2[0]~19\ : std_logic;
SIGNAL \u5|q2[1]~20_combout\ : std_logic;
SIGNAL \u5|q2[1]~21\ : std_logic;
SIGNAL \u5|q2[2]~22_combout\ : std_logic;
SIGNAL \u5|q2[2]~23\ : std_logic;
SIGNAL \u5|q2[3]~24_combout\ : std_logic;
SIGNAL \u5|q2[3]~25\ : std_logic;
SIGNAL \u5|q2[4]~26_combout\ : std_logic;
SIGNAL \u5|q2[4]~27\ : std_logic;
SIGNAL \u5|q2[5]~28_combout\ : std_logic;
SIGNAL \u5|q2[5]~29\ : std_logic;
SIGNAL \u5|q2[6]~30_combout\ : std_logic;
SIGNAL \u5|q2[6]~31\ : std_logic;
SIGNAL \u5|q2[7]~32_combout\ : std_logic;
SIGNAL \u5|q2[7]~33\ : std_logic;
SIGNAL \u5|q2[8]~34_combout\ : std_logic;
SIGNAL \u5|q2[8]~35\ : std_logic;
SIGNAL \u5|q2[9]~36_combout\ : std_logic;
SIGNAL \u5|q2[9]~37\ : std_logic;
SIGNAL \u5|q2[10]~38_combout\ : std_logic;
SIGNAL \u5|q2[10]~39\ : std_logic;
SIGNAL \u5|q2[11]~40_combout\ : std_logic;
SIGNAL \u5|q2[11]~41\ : std_logic;
SIGNAL \u5|q2[12]~42_combout\ : std_logic;
SIGNAL \u5|q2[12]~43\ : std_logic;
SIGNAL \u5|q2[13]~45_combout\ : std_logic;
SIGNAL \u5|q2[13]~46\ : std_logic;
SIGNAL \u5|q2[14]~47_combout\ : std_logic;
SIGNAL \u5|LessThan2~0_combout\ : std_logic;
SIGNAL \u5|LessThan3~3_combout\ : std_logic;
SIGNAL \u5|LessThan3~1_combout\ : std_logic;
SIGNAL \u5|LessThan3~0_combout\ : std_logic;
SIGNAL \u5|LessThan3~2_combout\ : std_logic;
SIGNAL \u5|LessThan3~4_combout\ : std_logic;
SIGNAL \u5|clk_250hz~0_combout\ : std_logic;
SIGNAL \u5|clk_250hz~1_combout\ : std_logic;
SIGNAL \u5|clk_250hz~2_combout\ : std_logic;
SIGNAL \u5|clk_250hz~3_combout\ : std_logic;
SIGNAL \u5|clk_250hz~4_combout\ : std_logic;
SIGNAL \u5|clk_250hz~feeder_combout\ : std_logic;
SIGNAL \u5|clk_250hz~q\ : std_logic;
SIGNAL \u5|clk_250hz~clkctrl_outclk\ : std_logic;
SIGNAL \c_set_min~input_o\ : std_logic;
SIGNAL \u6|count~2_combout\ : std_logic;
SIGNAL \u6|count~3_combout\ : std_logic;
SIGNAL \u6|count~6_combout\ : std_logic;
SIGNAL \u6|count~7_combout\ : std_logic;
SIGNAL \u6|count~4_combout\ : std_logic;
SIGNAL \u6|count~5_combout\ : std_logic;
SIGNAL \u6|count~0_combout\ : std_logic;
SIGNAL \u6|count~1_combout\ : std_logic;
SIGNAL \u6|key_out~0_combout\ : std_logic;
SIGNAL \u6|key_out~1_combout\ : std_logic;
SIGNAL \u6|key_out~feeder_combout\ : std_logic;
SIGNAL \u6|key_out~q\ : std_logic;
SIGNAL \u1|co~combout\ : std_logic;
SIGNAL \u1|co~clkctrl_outclk\ : std_logic;
SIGNAL \u2|count_ge~2_combout\ : std_logic;
SIGNAL \u2|count_ge~0_combout\ : std_logic;
SIGNAL \u2|count_ge~3_combout\ : std_logic;
SIGNAL \u2|count_ge~1_combout\ : std_logic;
SIGNAL \u2|count_shi[2]~2_combout\ : std_logic;
SIGNAL \u2|count_shi[2]~3_combout\ : std_logic;
SIGNAL \u2|count_shi~7_combout\ : std_logic;
SIGNAL \u2|LessThan0~0_combout\ : std_logic;
SIGNAL \u2|process_0~0_combout\ : std_logic;
SIGNAL \u2|count_shi~6_combout\ : std_logic;
SIGNAL \u2|count_shi~5_combout\ : std_logic;
SIGNAL \u2|Add1~0_combout\ : std_logic;
SIGNAL \u2|count_shi~4_combout\ : std_logic;
SIGNAL \u8|Equal0~0_combout\ : std_logic;
SIGNAL \u8|beep~1_combout\ : std_logic;
SIGNAL \u8|beep~3_combout\ : std_logic;
SIGNAL \u4|scan_count~1_combout\ : std_logic;
SIGNAL \u4|scan_count~0_combout\ : std_logic;
SIGNAL \u4|scan_count~2_combout\ : std_logic;
SIGNAL \u4|Equal5~0_combout\ : std_logic;
SIGNAL \u4|Equal5~1_combout\ : std_logic;
SIGNAL \u4|Equal5~2_combout\ : std_logic;
SIGNAL \u4|Equal5~3_combout\ : std_logic;
SIGNAL \u4|Equal5~4_combout\ : std_logic;
SIGNAL \u4|sel[5]~0_combout\ : std_logic;
SIGNAL \u4|LessThan0~0_combout\ : std_logic;
SIGNAL \u4|LessThan0~0clkctrl_outclk\ : std_logic;
SIGNAL \u4|Mux11~1_combout\ : std_logic;
SIGNAL \u4|Mux11~2_combout\ : std_logic;
SIGNAL \c_set_hour~input_o\ : std_logic;
SIGNAL \u7|count~6_combout\ : std_logic;
SIGNAL \u7|count~7_combout\ : std_logic;
SIGNAL \u7|count~4_combout\ : std_logic;
SIGNAL \u7|count~5_combout\ : std_logic;
SIGNAL \u7|count~2_combout\ : std_logic;
SIGNAL \u7|count~3_combout\ : std_logic;
SIGNAL \u7|count~0_combout\ : std_logic;
SIGNAL \u7|count~1_combout\ : std_logic;
SIGNAL \u7|key_out~0_combout\ : std_logic;
SIGNAL \u7|key_out~1_combout\ : std_logic;
SIGNAL \u7|key_out~feeder_combout\ : std_logic;
SIGNAL \u7|key_out~q\ : std_logic;
SIGNAL \u2|count_en~0_combout\ : std_logic;
SIGNAL \u2|count_en~q\ : std_logic;
SIGNAL \u2|co~combout\ : std_logic;
SIGNAL \u2|co~clkctrl_outclk\ : std_logic;
SIGNAL \u3|Add0~0_combout\ : std_logic;
SIGNAL \u3|count_ge~5_combout\ : std_logic;
SIGNAL \u3|LessThan0~0_combout\ : std_logic;
SIGNAL \u3|count_shi[0]~3_combout\ : std_logic;
SIGNAL \u3|count_shi[1]~4_combout\ : std_logic;
SIGNAL \u3|Add1~0_combout\ : std_logic;
SIGNAL \u3|count_shi[2]~5_combout\ : std_logic;
SIGNAL \u3|count_shi~1_combout\ : std_logic;
SIGNAL \c_scale_sel~input_o\ : std_logic;
SIGNAL \u3|count_shi~0_combout\ : std_logic;
SIGNAL \u3|count_ge~3_combout\ : std_logic;
SIGNAL \u3|count_ge~4_combout\ : std_logic;
SIGNAL \u3|count_ge~2_combout\ : std_logic;
SIGNAL \u3|count_ge~6_combout\ : std_logic;
SIGNAL \u3|count_shi~2_combout\ : std_logic;
SIGNAL \u3|Add1~1_combout\ : std_logic;
SIGNAL \u3|count_shi[3]~6_combout\ : std_logic;
SIGNAL \u4|Mux11~0_combout\ : std_logic;
SIGNAL \u4|Mux11~3_combout\ : std_logic;
SIGNAL \u4|Mux8~1_combout\ : std_logic;
SIGNAL \u4|Mux8~2_combout\ : std_logic;
SIGNAL \u4|Mux8~0_combout\ : std_logic;
SIGNAL \u4|Mux8~3_combout\ : std_logic;
SIGNAL \u4|Mux10~1_combout\ : std_logic;
SIGNAL \u4|Mux10~2_combout\ : std_logic;
SIGNAL \u4|Mux10~0_combout\ : std_logic;
SIGNAL \u4|Mux10~3_combout\ : std_logic;
SIGNAL \u4|Mux7~1_combout\ : std_logic;
SIGNAL \u4|Mux7~2_combout\ : std_logic;
SIGNAL \u4|Mux7~0_combout\ : std_logic;
SIGNAL \u4|Mux7~3_combout\ : std_logic;
SIGNAL \u4|Mux6~0_combout\ : std_logic;
SIGNAL \u4|Mux5~0_combout\ : std_logic;
SIGNAL \u4|Mux4~0_combout\ : std_logic;
SIGNAL \u4|Mux3~0_combout\ : std_logic;
SIGNAL \u4|Mux2~0_combout\ : std_logic;
SIGNAL \u4|Mux1~0_combout\ : std_logic;
SIGNAL \u4|Mux0~0_combout\ : std_logic;
SIGNAL \u5|q3[0]~24_combout\ : std_logic;
SIGNAL \u5|q3[21]~67\ : std_logic;
SIGNAL \u5|q3[22]~68_combout\ : std_logic;
SIGNAL \u5|q3[22]~69\ : std_logic;
SIGNAL \u5|q3[23]~71_combout\ : std_logic;
SIGNAL \u5|LessThan5~0_combout\ : std_logic;
SIGNAL \u5|LessThan5~2_combout\ : std_logic;
SIGNAL \u5|LessThan5~3_combout\ : std_logic;
SIGNAL \u5|LessThan5~1_combout\ : std_logic;
SIGNAL \u5|LessThan5~4_combout\ : std_logic;
SIGNAL \u5|LessThan5~5_combout\ : std_logic;
SIGNAL \u5|LessThan5~6_combout\ : std_logic;
SIGNAL \u5|LessThan5~7_combout\ : std_logic;
SIGNAL \u5|q3~70_combout\ : std_logic;
SIGNAL \u5|q3[0]~25\ : std_logic;
SIGNAL \u5|q3[1]~26_combout\ : std_logic;
SIGNAL \u5|q3[1]~27\ : std_logic;
SIGNAL \u5|q3[2]~28_combout\ : std_logic;
SIGNAL \u5|q3[2]~29\ : std_logic;
SIGNAL \u5|q3[3]~30_combout\ : std_logic;
SIGNAL \u5|q3[3]~31\ : std_logic;
SIGNAL \u5|q3[4]~32_combout\ : std_logic;
SIGNAL \u5|q3[4]~33\ : std_logic;
SIGNAL \u5|q3[5]~34_combout\ : std_logic;
SIGNAL \u5|q3[5]~35\ : std_logic;
SIGNAL \u5|q3[6]~36_combout\ : std_logic;
SIGNAL \u5|q3[6]~37\ : std_logic;
SIGNAL \u5|q3[7]~38_combout\ : std_logic;
SIGNAL \u5|q3[7]~39\ : std_logic;
SIGNAL \u5|q3[8]~40_combout\ : std_logic;
SIGNAL \u5|q3[8]~41\ : std_logic;
SIGNAL \u5|q3[9]~42_combout\ : std_logic;
SIGNAL \u5|q3[9]~43\ : std_logic;
SIGNAL \u5|q3[10]~44_combout\ : std_logic;
SIGNAL \u5|q3[10]~45\ : std_logic;
SIGNAL \u5|q3[11]~46_combout\ : std_logic;
SIGNAL \u5|q3[11]~47\ : std_logic;
SIGNAL \u5|q3[12]~48_combout\ : std_logic;
SIGNAL \u5|q3[12]~49\ : std_logic;
SIGNAL \u5|q3[13]~50_combout\ : std_logic;
SIGNAL \u5|q3[13]~51\ : std_logic;
SIGNAL \u5|q3[14]~52_combout\ : std_logic;
SIGNAL \u5|q3[14]~53\ : std_logic;
SIGNAL \u5|q3[15]~54_combout\ : std_logic;
SIGNAL \u5|q3[15]~55\ : std_logic;
SIGNAL \u5|q3[16]~56_combout\ : std_logic;
SIGNAL \u5|q3[16]~57\ : std_logic;
SIGNAL \u5|q3[17]~58_combout\ : std_logic;
SIGNAL \u5|q3[17]~59\ : std_logic;
SIGNAL \u5|q3[18]~60_combout\ : std_logic;
SIGNAL \u5|q3[18]~61\ : std_logic;
SIGNAL \u5|q3[19]~62_combout\ : std_logic;
SIGNAL \u5|q3[19]~63\ : std_logic;
SIGNAL \u5|q3[20]~64_combout\ : std_logic;
SIGNAL \u5|q3[20]~65\ : std_logic;
SIGNAL \u5|q3[21]~66_combout\ : std_logic;
SIGNAL \u5|LessThan5~8_combout\ : std_logic;
SIGNAL \u5|LessThan4~0_combout\ : std_logic;
SIGNAL \u5|clk_5hz~0_combout\ : std_logic;
SIGNAL \u5|clk_5hz~1_combout\ : std_logic;
SIGNAL \u5|clk_5hz~2_combout\ : std_logic;
SIGNAL \u5|clk_5hz~3_combout\ : std_logic;
SIGNAL \u5|clk_5hz~4_combout\ : std_logic;
SIGNAL \u5|clk_5hz~5_combout\ : std_logic;
SIGNAL \u5|clk_5hz~q\ : std_logic;
SIGNAL \u5|clk_5hz~clkctrl_outclk\ : std_logic;
SIGNAL \u8|count[0]~2_combout\ : std_logic;
SIGNAL \u8|count[1]~0_combout\ : std_logic;
SIGNAL \u8|count[2]~1_combout\ : std_logic;
SIGNAL \u8|flow~0_combout\ : std_logic;
SIGNAL \u8|led[0]~0_combout\ : std_logic;
SIGNAL \u8|led[1]~1_combout\ : std_logic;
SIGNAL \u8|led[2]~2_combout\ : std_logic;
SIGNAL \u8|led[3]~3_combout\ : std_logic;
SIGNAL \u4|scan_count\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \u5|q1\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \u5|q2\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \u5|q3\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \u1|count_shi\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u2|count_ge\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u8|count\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \u2|count_shi\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u1|count_ge\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u3|count_shi\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u3|count_ge\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u6|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u7|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u4|dat\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u4|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \u4|ALT_INV_sel[5]~0_combout\ : std_logic;
SIGNAL \u4|ALT_INV_Equal5~4_combout\ : std_logic;
SIGNAL \u4|ALT_INV_Equal5~3_combout\ : std_logic;
SIGNAL \u4|ALT_INV_Equal5~2_combout\ : std_logic;
SIGNAL \u4|ALT_INV_Equal5~1_combout\ : std_logic;
SIGNAL \u4|ALT_INV_Equal5~0_combout\ : std_logic;
SIGNAL \u8|ALT_INV_beep~3_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_c_scale_sel <= c_scale_sel;
ww_c_reset <= c_reset;
ww_c_set_min <= c_set_min;
ww_c_set_hour <= c_set_hour;
buzzer <= ww_buzzer;
segment_sel <= ww_segment_sel;
segment_seg <= ww_segment_seg;
flash_led <= ww_flash_led;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\u1|co~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \u1|co~combout\);

\u5|clk_250hz~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \u5|clk_250hz~q\);

\u2|co~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \u2|co~combout\);

\u5|clk_1hz~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \u5|clk_1hz~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\u5|clk_5hz~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \u5|clk_5hz~q\);

\u4|LessThan0~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \u4|LessThan0~0_combout\);
\u4|ALT_INV_Mux0~0_combout\ <= NOT \u4|Mux0~0_combout\;
\u4|ALT_INV_sel[5]~0_combout\ <= NOT \u4|sel[5]~0_combout\;
\u4|ALT_INV_Equal5~4_combout\ <= NOT \u4|Equal5~4_combout\;
\u4|ALT_INV_Equal5~3_combout\ <= NOT \u4|Equal5~3_combout\;
\u4|ALT_INV_Equal5~2_combout\ <= NOT \u4|Equal5~2_combout\;
\u4|ALT_INV_Equal5~1_combout\ <= NOT \u4|Equal5~1_combout\;
\u4|ALT_INV_Equal5~0_combout\ <= NOT \u4|Equal5~0_combout\;
\u8|ALT_INV_beep~3_combout\ <= NOT \u8|beep~3_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X23_Y24_N2
\buzzer~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u8|ALT_INV_beep~3_combout\,
	devoe => ww_devoe,
	o => \buzzer~output_o\);

-- Location: IOOBUF_X32_Y0_N9
\segment_sel[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|ALT_INV_Equal5~0_combout\,
	devoe => ww_devoe,
	o => \segment_sel[0]~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\segment_sel[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|ALT_INV_Equal5~1_combout\,
	devoe => ww_devoe,
	o => \segment_sel[1]~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\segment_sel[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|ALT_INV_Equal5~2_combout\,
	devoe => ww_devoe,
	o => \segment_sel[2]~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\segment_sel[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|ALT_INV_Equal5~3_combout\,
	devoe => ww_devoe,
	o => \segment_sel[3]~output_o\);

-- Location: IOOBUF_X25_Y0_N2
\segment_sel[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|ALT_INV_Equal5~4_combout\,
	devoe => ww_devoe,
	o => \segment_sel[4]~output_o\);

-- Location: IOOBUF_X21_Y0_N16
\segment_sel[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|ALT_INV_sel[5]~0_combout\,
	devoe => ww_devoe,
	o => \segment_sel[5]~output_o\);

-- Location: IOOBUF_X30_Y0_N2
\segment_seg[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \segment_seg[0]~output_o\);

-- Location: IOOBUF_X34_Y7_N23
\segment_seg[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \segment_seg[1]~output_o\);

-- Location: IOOBUF_X34_Y5_N23
\segment_seg[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \segment_seg[2]~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\segment_seg[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \segment_seg[3]~output_o\);

-- Location: IOOBUF_X34_Y4_N16
\segment_seg[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \segment_seg[4]~output_o\);

-- Location: IOOBUF_X32_Y0_N2
\segment_seg[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \segment_seg[5]~output_o\);

-- Location: IOOBUF_X34_Y7_N16
\segment_seg[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \segment_seg[6]~output_o\);

-- Location: IOOBUF_X34_Y5_N16
\segment_seg[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \segment_seg[7]~output_o\);

-- Location: IOOBUF_X28_Y24_N23
\flash_led[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u8|led[0]~0_combout\,
	devoe => ww_devoe,
	o => \flash_led[0]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\flash_led[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u8|led[1]~1_combout\,
	devoe => ww_devoe,
	o => \flash_led[1]~output_o\);

-- Location: IOOBUF_X18_Y24_N9
\flash_led[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u8|led[2]~2_combout\,
	devoe => ww_devoe,
	o => \flash_led[2]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\flash_led[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u8|led[3]~3_combout\,
	devoe => ww_devoe,
	o => \flash_led[3]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X22_Y11_N6
\u5|q1[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|q1[0]~26_combout\ = \u5|q1\(0) $ (VCC)
-- \u5|q1[0]~27\ = CARRY(\u5|q1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|q1\(0),
	datad => VCC,
	combout => \u5|q1[0]~26_combout\,
	cout => \u5|q1[0]~27\);

-- Location: LCCOMB_X22_Y10_N22
\u5|q1[24]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|q1[24]~74_combout\ = (\u5|q1\(24) & (\u5|q1[23]~73\ $ (GND))) # (!\u5|q1\(24) & (!\u5|q1[23]~73\ & VCC))
-- \u5|q1[24]~75\ = CARRY((\u5|q1\(24) & !\u5|q1[23]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|q1\(24),
	datad => VCC,
	cin => \u5|q1[23]~73\,
	combout => \u5|q1[24]~74_combout\,
	cout => \u5|q1[24]~75\);

-- Location: LCCOMB_X22_Y10_N24
\u5|q1[25]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|q1[25]~77_combout\ = \u5|q1[24]~75\ $ (\u5|q1\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u5|q1\(25),
	cin => \u5|q1[24]~75\,
	combout => \u5|q1[25]~77_combout\);

-- Location: FF_X22_Y10_N25
\u5|q1[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u5|q1[25]~77_combout\,
	sclr => \u5|q1~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|q1\(25));

-- Location: LCCOMB_X22_Y10_N30
\u5|clk_1hz~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|clk_1hz~0_combout\ = (\u5|q1\(19) & (\u5|q1\(21) & (\u5|q1\(20) & \u5|q1\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|q1\(19),
	datab => \u5|q1\(21),
	datac => \u5|q1\(20),
	datad => \u5|q1\(22),
	combout => \u5|clk_1hz~0_combout\);

-- Location: LCCOMB_X21_Y11_N22
\u5|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|LessThan1~1_combout\ = (((!\u5|q1\(14)) # (!\u5|q1\(13))) # (!\u5|q1\(12))) # (!\u5|q1\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|q1\(15),
	datab => \u5|q1\(12),
	datac => \u5|q1\(13),
	datad => \u5|q1\(14),
	combout => \u5|LessThan1~1_combout\);

-- Location: LCCOMB_X22_Y11_N0
\u5|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|LessThan1~0_combout\ = (!\u5|q1\(8) & (!\u5|q1\(9) & (!\u5|q1\(10) & !\u5|q1\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|q1\(8),
	datab => \u5|q1\(9),
	datac => \u5|q1\(10),
	datad => \u5|q1\(7),
	combout => \u5|LessThan1~0_combout\);

-- Location: LCCOMB_X22_Y11_N2
\u5|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|LessThan1~2_combout\ = (((!\u5|q1\(2)) # (!\u5|q1\(1))) # (!\u5|q1\(6))) # (!\u5|q1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|q1\(0),
	datab => \u5|q1\(6),
	datac => \u5|q1\(1),
	datad => \u5|q1\(2),
	combout => \u5|LessThan1~2_combout\);

-- Location: LCCOMB_X22_Y11_N4
\u5|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|LessThan1~3_combout\ = (((\u5|LessThan1~2_combout\) # (!\u5|q1\(4))) # (!\u5|q1\(5))) # (!\u5|q1\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|q1\(3),
	datab => \u5|q1\(5),
	datac => \u5|q1\(4),
	datad => \u5|LessThan1~2_combout\,
	combout => \u5|LessThan1~3_combout\);

-- Location: LCCOMB_X21_Y11_N2
\u5|LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|LessThan1~4_combout\ = (!\u5|q1\(11) & (\u5|LessThan1~0_combout\ & \u5|LessThan1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u5|q1\(11),
	datac => \u5|LessThan1~0_combout\,
	datad => \u5|LessThan1~3_combout\,
	combout => \u5|LessThan1~4_combout\);

-- Location: LCCOMB_X21_Y11_N24
\u5|LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|LessThan1~5_combout\ = (\u5|q1\(17) & ((\u5|q1\(16)) # ((!\u5|LessThan1~1_combout\ & !\u5|LessThan1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|LessThan1~1_combout\,
	datab => \u5|q1\(17),
	datac => \u5|q1\(16),
	datad => \u5|LessThan1~4_combout\,
	combout => \u5|LessThan1~5_combout\);

-- Location: LCCOMB_X21_Y11_N18
\u5|LessThan1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|LessThan1~6_combout\ = (((!\u5|q1\(18) & !\u5|LessThan1~5_combout\)) # (!\u5|q1\(23))) # (!\u5|clk_1hz~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|clk_1hz~0_combout\,
	datab => \u5|q1\(18),
	datac => \u5|q1\(23),
	datad => \u5|LessThan1~5_combout\,
	combout => \u5|LessThan1~6_combout\);

-- Location: LCCOMB_X21_Y11_N30
\u5|q1~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|q1~76_combout\ = (\u5|q1\(25) & ((\u5|q1\(24)) # (!\u5|LessThan1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u5|q1\(25),
	datac => \u5|q1\(24),
	datad => \u5|LessThan1~6_combout\,
	combout => \u5|q1~76_combout\);

-- Location: FF_X22_Y11_N7
\u5|q1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u5|q1[0]~26_combout\,
	sclr => \u5|q1~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|q1\(0));

-- Location: LCCOMB_X22_Y11_N8
\u5|q1[1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|q1[1]~28_combout\ = (\u5|q1\(1) & (!\u5|q1[0]~27\)) # (!\u5|q1\(1) & ((\u5|q1[0]~27\) # (GND)))
-- \u5|q1[1]~29\ = CARRY((!\u5|q1[0]~27\) # (!\u5|q1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|q1\(1),
	datad => VCC,
	cin => \u5|q1[0]~27\,
	combout => \u5|q1[1]~28_combout\,
	cout => \u5|q1[1]~29\);

-- Location: FF_X22_Y11_N9
\u5|q1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u5|q1[1]~28_combout\,
	sclr => \u5|q1~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|q1\(1));

-- Location: LCCOMB_X22_Y11_N10
\u5|q1[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|q1[2]~30_combout\ = (\u5|q1\(2) & (\u5|q1[1]~29\ $ (GND))) # (!\u5|q1\(2) & (!\u5|q1[1]~29\ & VCC))
-- \u5|q1[2]~31\ = CARRY((\u5|q1\(2) & !\u5|q1[1]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|q1\(2),
	datad => VCC,
	cin => \u5|q1[1]~29\,
	combout => \u5|q1[2]~30_combout\,
	cout => \u5|q1[2]~31\);

-- Location: FF_X22_Y11_N11
\u5|q1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u5|q1[2]~30_combout\,
	sclr => \u5|q1~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|q1\(2));

-- Location: LCCOMB_X22_Y11_N12
\u5|q1[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|q1[3]~32_combout\ = (\u5|q1\(3) & (!\u5|q1[2]~31\)) # (!\u5|q1\(3) & ((\u5|q1[2]~31\) # (GND)))
-- \u5|q1[3]~33\ = CARRY((!\u5|q1[2]~31\) # (!\u5|q1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|q1\(3),
	datad => VCC,
	cin => \u5|q1[2]~31\,
	combout => \u5|q1[3]~32_combout\,
	cout => \u5|q1[3]~33\);

-- Location: FF_X22_Y11_N13
\u5|q1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u5|q1[3]~32_combout\,
	sclr => \u5|q1~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|q1\(3));

-- Location: LCCOMB_X22_Y11_N14
\u5|q1[4]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|q1[4]~34_combout\ = (\u5|q1\(4) & (\u5|q1[3]~33\ $ (GND))) # (!\u5|q1\(4) & (!\u5|q1[3]~33\ & VCC))
-- \u5|q1[4]~35\ = CARRY((\u5|q1\(4) & !\u5|q1[3]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|q1\(4),
	datad => VCC,
	cin => \u5|q1[3]~33\,
	combout => \u5|q1[4]~34_combout\,
	cout => \u5|q1[4]~35\);

-- Location: FF_X22_Y11_N15
\u5|q1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u5|q1[4]~34_combout\,
	sclr => \u5|q1~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|q1\(4));

-- Location: LCCOMB_X22_Y11_N16
\u5|q1[5]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|q1[5]~36_combout\ = (\u5|q1\(5) & (!\u5|q1[4]~35\)) # (!\u5|q1\(5) & ((\u5|q1[4]~35\) # (GND)))
-- \u5|q1[5]~37\ = CARRY((!\u5|q1[4]~35\) # (!\u5|q1\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|q1\(5),
	datad => VCC,
	cin => \u5|q1[4]~35\,
	combout => \u5|q1[5]~36_combout\,
	cout => \u5|q1[5]~37\);

-- Location: FF_X22_Y11_N17
\u5|q1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u5|q1[5]~36_combout\,
	sclr => \u5|q1~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|q1\(5));

-- Location: LCCOMB_X22_Y11_N18
\u5|q1[6]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|q1[6]~38_combout\ = (\u5|q1\(6) & (\u5|q1[5]~37\ $ (GND))) # (!\u5|q1\(6) & (!\u5|q1[5]~37\ & VCC))
-- \u5|q1[6]~39\ = CARRY((\u5|q1\(6) & !\u5|q1[5]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|q1\(6),
	datad => VCC,
	cin => \u5|q1[5]~37\,
	combout => \u5|q1[6]~38_combout\,
	cout => \u5|q1[6]~39\);

-- Location: FF_X22_Y11_N19
\u5|q1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u5|q1[6]~38_combout\,
	sclr => \u5|q1~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|q1\(6));

-- Location: LCCOMB_X22_Y11_N20
\u5|q1[7]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|q1[7]~40_combout\ = (\u5|q1\(7) & (!\u5|q1[6]~39\)) # (!\u5|q1\(7) & ((\u5|q1[6]~39\) # (GND)))
-- \u5|q1[7]~41\ = CARRY((!\u5|q1[6]~39\) # (!\u5|q1\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|q1\(7),
	datad => VCC,
	cin => \u5|q1[6]~39\,
	combout => \u5|q1[7]~40_combout\,
	cout => \u5|q1[7]~41\);

-- Location: FF_X22_Y11_N21
\u5|q1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u5|q1[7]~40_combout\,
	sclr => \u5|q1~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|q1\(7));

-- Location: LCCOMB_X22_Y11_N22
\u5|q1[8]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|q1[8]~42_combout\ = (\u5|q1\(8) & (\u5|q1[7]~41\ $ (GND))) # (!\u5|q1\(8) & (!\u5|q1[7]~41\ & VCC))
-- \u5|q1[8]~43\ = CARRY((\u5|q1\(8) & !\u5|q1[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|q1\(8),
	datad => VCC,
	cin => \u5|q1[7]~41\,
	combout => \u5|q1[8]~42_combout\,
	cout => \u5|q1[8]~43\);

-- Location: FF_X22_Y11_N23
\u5|q1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u5|q1[8]~42_combout\,
	sclr => \u5|q1~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|q1\(8));

-- Location: LCCOMB_X22_Y11_N24
\u5|q1[9]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|q1[9]~44_combout\ = (\u5|q1\(9) & (!\u5|q1[8]~43\)) # (!\u5|q1\(9) & ((\u5|q1[8]~43\) # (GND)))
-- \u5|q1[9]~45\ = CARRY((!\u5|q1[8]~43\) # (!\u5|q1\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|q1\(9),
	datad => VCC,
	cin => \u5|q1[8]~43\,
	combout => \u5|q1[9]~44_combout\,
	cout => \u5|q1[9]~45\);

-- Location: FF_X22_Y11_N25
\u5|q1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u5|q1[9]~44_combout\,
	sclr => \u5|q1~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|q1\(9));

-- Location: LCCOMB_X22_Y11_N26
\u5|q1[10]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|q1[10]~46_combout\ = (\u5|q1\(10) & (\u5|q1[9]~45\ $ (GND))) # (!\u5|q1\(10) & (!\u5|q1[9]~45\ & VCC))
-- \u5|q1[10]~47\ = CARRY((\u5|q1\(10) & !\u5|q1[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|q1\(10),
	datad => VCC,
	cin => \u5|q1[9]~45\,
	combout => \u5|q1[10]~46_combout\,
	cout => \u5|q1[10]~47\);

-- Location: FF_X22_Y11_N27
\u5|q1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u5|q1[10]~46_combout\,
	sclr => \u5|q1~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|q1\(10));

-- Location: LCCOMB_X22_Y11_N28
\u5|q1[11]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|q1[11]~48_combout\ = (\u5|q1\(11) & (!\u5|q1[10]~47\)) # (!\u5|q1\(11) & ((\u5|q1[10]~47\) # (GND)))
-- \u5|q1[11]~49\ = CARRY((!\u5|q1[10]~47\) # (!\u5|q1\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|q1\(11),
	datad => VCC,
	cin => \u5|q1[10]~47\,
	combout => \u5|q1[11]~48_combout\,
	cout => \u5|q1[11]~49\);

-- Location: FF_X22_Y11_N29
\u5|q1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u5|q1[11]~48_combout\,
	sclr => \u5|q1~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|q1\(11));

-- Location: LCCOMB_X22_Y11_N30
\u5|q1[12]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|q1[12]~50_combout\ = (\u5|q1\(12) & (\u5|q1[11]~49\ $ (GND))) # (!\u5|q1\(12) & (!\u5|q1[11]~49\ & VCC))
-- \u5|q1[12]~51\ = CARRY((\u5|q1\(12) & !\u5|q1[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|q1\(12),
	datad => VCC,
	cin => \u5|q1[11]~49\,
	combout => \u5|q1[12]~50_combout\,
	cout => \u5|q1[12]~51\);

-- Location: FF_X22_Y11_N31
\u5|q1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u5|q1[12]~50_combout\,
	sclr => \u5|q1~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|q1\(12));

-- Location: LCCOMB_X22_Y10_N0
\u5|q1[13]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|q1[13]~52_combout\ = (\u5|q1\(13) & (!\u5|q1[12]~51\)) # (!\u5|q1\(13) & ((\u5|q1[12]~51\) # (GND)))
-- \u5|q1[13]~53\ = CARRY((!\u5|q1[12]~51\) # (!\u5|q1\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|q1\(13),
	datad => VCC,
	cin => \u5|q1[12]~51\,
	combout => \u5|q1[13]~52_combout\,
	cout => \u5|q1[13]~53\);

-- Location: FF_X21_Y11_N27
\u5|q1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u5|q1[13]~52_combout\,
	sclr => \u5|q1~76_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|q1\(13));

-- Location: LCCOMB_X22_Y10_N2
\u5|q1[14]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|q1[14]~54_combout\ = (\u5|q1\(14) & (\u5|q1[13]~53\ $ (GND))) # (!\u5|q1\(14) & (!\u5|q1[13]~53\ & VCC))
-- \u5|q1[14]~55\ = CARRY((\u5|q1\(14) & !\u5|q1[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|q1\(14),
	datad => VCC,
	cin => \u5|q1[13]~53\,
	combout => \u5|q1[14]~54_combout\,
	cout => \u5|q1[14]~55\);

-- Location: FF_X22_Y10_N3
\u5|q1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u5|q1[14]~54_combout\,
	sclr => \u5|q1~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|q1\(14));

-- Location: LCCOMB_X22_Y10_N4
\u5|q1[15]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|q1[15]~56_combout\ = (\u5|q1\(15) & (!\u5|q1[14]~55\)) # (!\u5|q1\(15) & ((\u5|q1[14]~55\) # (GND)))
-- \u5|q1[15]~57\ = CARRY((!\u5|q1[14]~55\) # (!\u5|q1\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|q1\(15),
	datad => VCC,
	cin => \u5|q1[14]~55\,
	combout => \u5|q1[15]~56_combout\,
	cout => \u5|q1[15]~57\);

-- Location: FF_X21_Y11_N13
\u5|q1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u5|q1[15]~56_combout\,
	sclr => \u5|q1~76_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|q1\(15));

-- Location: LCCOMB_X22_Y10_N6
\u5|q1[16]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|q1[16]~58_combout\ = (\u5|q1\(16) & (\u5|q1[15]~57\ $ (GND))) # (!\u5|q1\(16) & (!\u5|q1[15]~57\ & VCC))
-- \u5|q1[16]~59\ = CARRY((\u5|q1\(16) & !\u5|q1[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|q1\(16),
	datad => VCC,
	cin => \u5|q1[15]~57\,
	combout => \u5|q1[16]~58_combout\,
	cout => \u5|q1[16]~59\);

-- Location: FF_X21_Y11_N15
\u5|q1[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u5|q1[16]~58_combout\,
	sclr => \u5|q1~76_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|q1\(16));

-- Location: LCCOMB_X22_Y10_N8
\u5|q1[17]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|q1[17]~60_combout\ = (\u5|q1\(17) & (!\u5|q1[16]~59\)) # (!\u5|q1\(17) & ((\u5|q1[16]~59\) # (GND)))
-- \u5|q1[17]~61\ = CARRY((!\u5|q1[16]~59\) # (!\u5|q1\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|q1\(17),
	datad => VCC,
	cin => \u5|q1[16]~59\,
	combout => \u5|q1[17]~60_combout\,
	cout => \u5|q1[17]~61\);

-- Location: FF_X21_Y11_N5
\u5|q1[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u5|q1[17]~60_combout\,
	sclr => \u5|q1~76_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|q1\(17));

-- Location: LCCOMB_X22_Y10_N10
\u5|q1[18]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|q1[18]~62_combout\ = (\u5|q1\(18) & (\u5|q1[17]~61\ $ (GND))) # (!\u5|q1\(18) & (!\u5|q1[17]~61\ & VCC))
-- \u5|q1[18]~63\ = CARRY((\u5|q1\(18) & !\u5|q1[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|q1\(18),
	datad => VCC,
	cin => \u5|q1[17]~61\,
	combout => \u5|q1[18]~62_combout\,
	cout => \u5|q1[18]~63\);

-- Location: FF_X22_Y10_N11
\u5|q1[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u5|q1[18]~62_combout\,
	sclr => \u5|q1~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|q1\(18));

-- Location: LCCOMB_X22_Y10_N12
\u5|q1[19]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|q1[19]~64_combout\ = (\u5|q1\(19) & (!\u5|q1[18]~63\)) # (!\u5|q1\(19) & ((\u5|q1[18]~63\) # (GND)))
-- \u5|q1[19]~65\ = CARRY((!\u5|q1[18]~63\) # (!\u5|q1\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|q1\(19),
	datad => VCC,
	cin => \u5|q1[18]~63\,
	combout => \u5|q1[19]~64_combout\,
	cout => \u5|q1[19]~65\);

-- Location: FF_X22_Y10_N13
\u5|q1[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u5|q1[19]~64_combout\,
	sclr => \u5|q1~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|q1\(19));

-- Location: LCCOMB_X22_Y10_N14
\u5|q1[20]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|q1[20]~66_combout\ = (\u5|q1\(20) & (\u5|q1[19]~65\ $ (GND))) # (!\u5|q1\(20) & (!\u5|q1[19]~65\ & VCC))
-- \u5|q1[20]~67\ = CARRY((\u5|q1\(20) & !\u5|q1[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|q1\(20),
	datad => VCC,
	cin => \u5|q1[19]~65\,
	combout => \u5|q1[20]~66_combout\,
	cout => \u5|q1[20]~67\);

-- Location: FF_X22_Y10_N15
\u5|q1[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u5|q1[20]~66_combout\,
	sclr => \u5|q1~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|q1\(20));

-- Location: LCCOMB_X22_Y10_N16
\u5|q1[21]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|q1[21]~68_combout\ = (\u5|q1\(21) & (!\u5|q1[20]~67\)) # (!\u5|q1\(21) & ((\u5|q1[20]~67\) # (GND)))
-- \u5|q1[21]~69\ = CARRY((!\u5|q1[20]~67\) # (!\u5|q1\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|q1\(21),
	datad => VCC,
	cin => \u5|q1[20]~67\,
	combout => \u5|q1[21]~68_combout\,
	cout => \u5|q1[21]~69\);

-- Location: FF_X22_Y10_N17
\u5|q1[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u5|q1[21]~68_combout\,
	sclr => \u5|q1~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|q1\(21));

-- Location: LCCOMB_X22_Y10_N18
\u5|q1[22]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|q1[22]~70_combout\ = (\u5|q1\(22) & (\u5|q1[21]~69\ $ (GND))) # (!\u5|q1\(22) & (!\u5|q1[21]~69\ & VCC))
-- \u5|q1[22]~71\ = CARRY((\u5|q1\(22) & !\u5|q1[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|q1\(22),
	datad => VCC,
	cin => \u5|q1[21]~69\,
	combout => \u5|q1[22]~70_combout\,
	cout => \u5|q1[22]~71\);

-- Location: FF_X22_Y10_N19
\u5|q1[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u5|q1[22]~70_combout\,
	sclr => \u5|q1~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|q1\(22));

-- Location: LCCOMB_X22_Y10_N20
\u5|q1[23]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|q1[23]~72_combout\ = (\u5|q1\(23) & (!\u5|q1[22]~71\)) # (!\u5|q1\(23) & ((\u5|q1[22]~71\) # (GND)))
-- \u5|q1[23]~73\ = CARRY((!\u5|q1[22]~71\) # (!\u5|q1\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|q1\(23),
	datad => VCC,
	cin => \u5|q1[22]~71\,
	combout => \u5|q1[23]~72_combout\,
	cout => \u5|q1[23]~73\);

-- Location: FF_X22_Y10_N21
\u5|q1[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u5|q1[23]~72_combout\,
	sclr => \u5|q1~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|q1\(23));

-- Location: FF_X22_Y10_N23
\u5|q1[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u5|q1[24]~74_combout\,
	sclr => \u5|q1~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|q1\(24));

-- Location: LCCOMB_X21_Y11_N0
\u5|clk_1hz~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|clk_1hz~1_combout\ = (\u5|q1\(13) & (\u5|q1\(14) & ((\u5|q1\(6)) # (!\u5|LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|q1\(13),
	datab => \u5|q1\(6),
	datac => \u5|LessThan1~0_combout\,
	datad => \u5|q1\(14),
	combout => \u5|clk_1hz~1_combout\);

-- Location: LCCOMB_X21_Y11_N20
\u5|clk_1hz~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|clk_1hz~2_combout\ = (\u5|q1\(15)) # ((\u5|q1\(11) & (\u5|q1\(12) & \u5|clk_1hz~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|q1\(15),
	datab => \u5|q1\(11),
	datac => \u5|q1\(12),
	datad => \u5|clk_1hz~1_combout\,
	combout => \u5|clk_1hz~2_combout\);

-- Location: LCCOMB_X21_Y11_N10
\u5|clk_1hz~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|clk_1hz~3_combout\ = (\u5|clk_1hz~0_combout\ & ((\u5|q1\(17)) # ((\u5|q1\(16) & \u5|clk_1hz~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|clk_1hz~0_combout\,
	datab => \u5|q1\(17),
	datac => \u5|q1\(16),
	datad => \u5|clk_1hz~2_combout\,
	combout => \u5|clk_1hz~3_combout\);

-- Location: LCCOMB_X21_Y11_N28
\u5|clk_1hz~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|clk_1hz~4_combout\ = (\u5|q1\(23)) # ((\u5|q1\(18) & \u5|clk_1hz~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u5|q1\(23),
	datac => \u5|q1\(18),
	datad => \u5|clk_1hz~3_combout\,
	combout => \u5|clk_1hz~4_combout\);

-- Location: LCCOMB_X21_Y11_N16
\u5|clk_1hz~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|clk_1hz~5_combout\ = (\u5|q1\(25) & (((\u5|clk_1hz~q\)))) # (!\u5|q1\(25) & (\u5|q1\(24) & ((\u5|clk_1hz~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|q1\(24),
	datab => \u5|q1\(25),
	datac => \u5|clk_1hz~q\,
	datad => \u5|clk_1hz~4_combout\,
	combout => \u5|clk_1hz~5_combout\);

-- Location: LCCOMB_X21_Y11_N6
\u5|clk_1hz~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|clk_1hz~6_combout\ = (\u5|clk_1hz~5_combout\) # ((!\u5|q1\(24) & (\u5|q1\(25) & \u5|LessThan1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|q1\(24),
	datab => \u5|q1\(25),
	datac => \u5|clk_1hz~5_combout\,
	datad => \u5|LessThan1~6_combout\,
	combout => \u5|clk_1hz~6_combout\);

-- Location: FF_X21_Y11_N7
\u5|clk_1hz\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u5|clk_1hz~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|clk_1hz~q\);

-- Location: CLKCTRL_G0
\u5|clk_1hz~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \u5|clk_1hz~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \u5|clk_1hz~clkctrl_outclk\);

-- Location: LCCOMB_X22_Y6_N10
\u1|count_shi~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|count_shi~5_combout\ = (\u1|count_shi[3]~3_combout\ & (\u1|count_shi\(0) $ (\u1|count_shi\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count_shi\(0),
	datac => \u1|count_shi\(1),
	datad => \u1|count_shi[3]~3_combout\,
	combout => \u1|count_shi~5_combout\);

-- Location: IOIBUF_X34_Y2_N22
\c_reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c_reset,
	o => \c_reset~input_o\);

-- Location: LCCOMB_X22_Y6_N4
\u1|count_ge~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|count_ge~2_combout\ = (!\u1|count_ge\(3) & (\u1|count_ge\(0) $ (\u1|count_ge\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count_ge\(0),
	datac => \u1|count_ge\(1),
	datad => \u1|count_ge\(3),
	combout => \u1|count_ge~2_combout\);

-- Location: FF_X22_Y6_N5
\u1|count_ge[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|clk_1hz~clkctrl_outclk\,
	d => \u1|count_ge~2_combout\,
	clrn => \c_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|count_ge\(1));

-- Location: LCCOMB_X22_Y6_N8
\u1|count_ge~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|count_ge~3_combout\ = (!\u1|count_ge\(0) & (((!\u1|count_ge\(2) & !\u1|count_ge\(1))) # (!\u1|count_ge\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count_ge\(3),
	datab => \u1|count_ge\(2),
	datac => \u1|count_ge\(0),
	datad => \u1|count_ge\(1),
	combout => \u1|count_ge~3_combout\);

-- Location: FF_X22_Y6_N9
\u1|count_ge[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|clk_1hz~clkctrl_outclk\,
	d => \u1|count_ge~3_combout\,
	clrn => \c_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|count_ge\(0));

-- Location: LCCOMB_X22_Y6_N0
\u1|count_ge~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|count_ge~0_combout\ = (\u1|count_ge\(2) & (\u1|count_ge\(0) & (!\u1|count_ge\(3) & \u1|count_ge\(1)))) # (!\u1|count_ge\(2) & (!\u1|count_ge\(0) & (\u1|count_ge\(3) & !\u1|count_ge\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count_ge\(2),
	datab => \u1|count_ge\(0),
	datac => \u1|count_ge\(3),
	datad => \u1|count_ge\(1),
	combout => \u1|count_ge~0_combout\);

-- Location: FF_X22_Y6_N1
\u1|count_ge[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|clk_1hz~clkctrl_outclk\,
	d => \u1|count_ge~0_combout\,
	clrn => \c_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|count_ge\(3));

-- Location: LCCOMB_X22_Y6_N14
\u1|count_ge~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|count_ge~1_combout\ = (!\u1|count_ge\(3) & (\u1|count_ge\(2) $ (((\u1|count_ge\(0) & \u1|count_ge\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count_ge\(3),
	datab => \u1|count_ge\(0),
	datac => \u1|count_ge\(2),
	datad => \u1|count_ge\(1),
	combout => \u1|count_ge~1_combout\);

-- Location: FF_X22_Y6_N15
\u1|count_ge[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|clk_1hz~clkctrl_outclk\,
	d => \u1|count_ge~1_combout\,
	clrn => \c_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|count_ge\(2));

-- Location: LCCOMB_X22_Y6_N2
\u8|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u8|LessThan1~0_combout\ = (\u1|count_ge\(3) & ((\u1|count_ge\(2)) # ((\u1|count_ge\(0)) # (\u1|count_ge\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count_ge\(2),
	datab => \u1|count_ge\(0),
	datac => \u1|count_ge\(1),
	datad => \u1|count_ge\(3),
	combout => \u8|LessThan1~0_combout\);

-- Location: FF_X22_Y6_N11
\u1|count_shi[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|clk_1hz~clkctrl_outclk\,
	d => \u1|count_shi~5_combout\,
	clrn => \c_reset~input_o\,
	ena => \u8|LessThan1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|count_shi\(1));

-- Location: LCCOMB_X22_Y6_N28
\u1|count_shi~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|count_shi~7_combout\ = (\u1|count_shi[3]~3_combout\ & (\u1|count_shi\(2) $ (((\u1|count_shi\(0) & \u1|count_shi\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count_shi\(0),
	datab => \u1|count_shi\(1),
	datac => \u1|count_shi\(2),
	datad => \u1|count_shi[3]~3_combout\,
	combout => \u1|count_shi~7_combout\);

-- Location: FF_X22_Y6_N29
\u1|count_shi[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|clk_1hz~clkctrl_outclk\,
	d => \u1|count_shi~7_combout\,
	clrn => \c_reset~input_o\,
	ena => \u8|LessThan1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|count_shi\(2));

-- Location: LCCOMB_X22_Y6_N30
\u1|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|process_0~1_combout\ = (\u1|count_shi\(0) & (\u1|count_shi\(2) & (\u1|count_ge\(0) & \u1|count_ge\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count_shi\(0),
	datab => \u1|count_shi\(2),
	datac => \u1|count_ge\(0),
	datad => \u1|count_ge\(3),
	combout => \u1|process_0~1_combout\);

-- Location: LCCOMB_X22_Y6_N20
\u1|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|process_0~0_combout\ = (!\u1|count_ge\(2) & !\u1|count_ge\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|count_ge\(2),
	datad => \u1|count_ge\(1),
	combout => \u1|process_0~0_combout\);

-- Location: LCCOMB_X22_Y6_N16
\u1|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add1~0_combout\ = (\u1|count_shi\(0) & \u1|count_shi\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count_shi\(0),
	datac => \u1|count_shi\(1),
	combout => \u1|Add1~0_combout\);

-- Location: LCCOMB_X22_Y6_N12
\u1|count_shi~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|count_shi~4_combout\ = (\u1|count_shi[3]~3_combout\ & (\u1|count_shi\(3) $ (((\u1|Add1~0_combout\ & \u1|count_shi\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Add1~0_combout\,
	datab => \u1|count_shi\(2),
	datac => \u1|count_shi\(3),
	datad => \u1|count_shi[3]~3_combout\,
	combout => \u1|count_shi~4_combout\);

-- Location: FF_X22_Y6_N13
\u1|count_shi[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|clk_1hz~clkctrl_outclk\,
	d => \u1|count_shi~4_combout\,
	clrn => \c_reset~input_o\,
	ena => \u8|LessThan1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|count_shi\(3));

-- Location: LCCOMB_X22_Y6_N24
\u1|count_shi[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|count_shi[3]~2_combout\ = (\u1|count_shi\(3) & (!\u1|count_shi\(1) & !\u1|count_shi\(2))) # (!\u1|count_shi\(3) & (\u1|count_shi\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|count_shi\(3),
	datac => \u1|count_shi\(1),
	datad => \u1|count_shi\(2),
	combout => \u1|count_shi[3]~2_combout\);

-- Location: LCCOMB_X22_Y6_N18
\u1|count_shi[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|count_shi[3]~3_combout\ = (\u1|count_shi[3]~2_combout\) # ((!\u1|count_shi\(3) & ((!\u1|process_0~0_combout\) # (!\u1|process_0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|process_0~1_combout\,
	datab => \u1|process_0~0_combout\,
	datac => \u1|count_shi\(3),
	datad => \u1|count_shi[3]~2_combout\,
	combout => \u1|count_shi[3]~3_combout\);

-- Location: LCCOMB_X22_Y6_N22
\u1|count_shi~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|count_shi~6_combout\ = (!\u1|count_shi\(0) & \u1|count_shi[3]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|count_shi\(0),
	datad => \u1|count_shi[3]~3_combout\,
	combout => \u1|count_shi~6_combout\);

-- Location: FF_X22_Y6_N23
\u1|count_shi[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|clk_1hz~clkctrl_outclk\,
	d => \u1|count_shi~6_combout\,
	clrn => \c_reset~input_o\,
	ena => \u8|LessThan1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|count_shi\(0));

-- Location: LCCOMB_X21_Y6_N26
\u8|beep~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u8|beep~0_combout\ = (!\u1|count_shi\(0) & (!\u1|count_shi\(3) & (!\u1|count_shi\(1) & !\u1|count_shi\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count_shi\(0),
	datab => \u1|count_shi\(3),
	datac => \u1|count_shi\(1),
	datad => \u1|count_shi\(2),
	combout => \u8|beep~0_combout\);

-- Location: LCCOMB_X22_Y6_N26
\u8|beep~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u8|beep~2_combout\ = (!\u1|count_ge\(3) & (!\u1|count_ge\(2) & !\u1|count_ge\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count_ge\(3),
	datab => \u1|count_ge\(2),
	datad => \u1|count_ge\(1),
	combout => \u8|beep~2_combout\);

-- Location: LCCOMB_X22_Y6_N6
\u1|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|process_0~2_combout\ = (!\u1|count_shi\(3) & (!\u1|count_shi\(1) & (\u1|process_0~1_combout\ & \u1|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count_shi\(3),
	datab => \u1|count_shi\(1),
	datac => \u1|process_0~1_combout\,
	datad => \u1|process_0~0_combout\,
	combout => \u1|process_0~2_combout\);

-- Location: LCCOMB_X21_Y6_N16
\u1|count_en~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|count_en~0_combout\ = (\u1|process_0~2_combout\) # ((\u8|LessThan1~0_combout\ & \u1|count_en~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|LessThan1~0_combout\,
	datac => \u1|count_en~q\,
	datad => \u1|process_0~2_combout\,
	combout => \u1|count_en~0_combout\);

-- Location: FF_X21_Y6_N17
\u1|count_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|clk_1hz~q\,
	d => \u1|count_en~0_combout\,
	ena => \c_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|count_en~q\);

-- Location: LCCOMB_X26_Y10_N14
\u5|q2[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|q2[0]~18_combout\ = \u5|q2\(0) $ (VCC)
-- \u5|q2[0]~19\ = CARRY(\u5|q2\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u5|q2\(0),
	datad => VCC,
	combout => \u5|q2[0]~18_combout\,
	cout => \u5|q2[0]~19\);

-- Location: LCCOMB_X26_Y9_N10
\u5|q2[14]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|q2[14]~47_combout\ = (\u5|q2\(14) & (\u5|q2[13]~46\ $ (GND))) # (!\u5|q2\(14) & (!\u5|q2[13]~46\ & VCC))
-- \u5|q2[14]~48\ = CARRY((\u5|q2\(14) & !\u5|q2[13]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|q2\(14),
	datad => VCC,
	cin => \u5|q2[13]~46\,
	combout => \u5|q2[14]~47_combout\,
	cout => \u5|q2[14]~48\);

-- Location: LCCOMB_X26_Y9_N12
\u5|q2[15]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|q2[15]~49_combout\ = (\u5|q2\(15) & (!\u5|q2[14]~48\)) # (!\u5|q2\(15) & ((\u5|q2[14]~48\) # (GND)))
-- \u5|q2[15]~50\ = CARRY((!\u5|q2[14]~48\) # (!\u5|q2\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|q2\(15),
	datad => VCC,
	cin => \u5|q2[14]~48\,
	combout => \u5|q2[15]~49_combout\,
	cout => \u5|q2[15]~50\);

-- Location: FF_X26_Y9_N13
\u5|q2[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u5|q2[15]~49_combout\,
	sclr => \u5|q2~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|q2\(15));

-- Location: LCCOMB_X26_Y9_N14
\u5|q2[16]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|q2[16]~51_combout\ = (\u5|q2\(16) & (\u5|q2[15]~50\ $ (GND))) # (!\u5|q2\(16) & (!\u5|q2[15]~50\ & VCC))
-- \u5|q2[16]~52\ = CARRY((\u5|q2\(16) & !\u5|q2[15]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|q2\(16),
	datad => VCC,
	cin => \u5|q2[15]~50\,
	combout => \u5|q2[16]~51_combout\,
	cout => \u5|q2[16]~52\);

-- Location: FF_X26_Y9_N15
\u5|q2[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u5|q2[16]~51_combout\,
	sclr => \u5|q2~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|q2\(16));

-- Location: LCCOMB_X26_Y9_N16
\u5|q2[17]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|q2[17]~53_combout\ = \u5|q2[16]~52\ $ (\u5|q2\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u5|q2\(17),
	cin => \u5|q2[16]~52\,
	combout => \u5|q2[17]~53_combout\);

-- Location: FF_X26_Y9_N17
\u5|q2[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u5|q2[17]~53_combout\,
	sclr => \u5|q2~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|q2\(17));

-- Location: LCCOMB_X26_Y9_N22
\u5|q2~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|q2~44_combout\ = (\u5|q2\(17) & (\u5|q2\(16) & !\u5|LessThan3~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u5|q2\(17),
	datac => \u5|q2\(16),
	datad => \u5|LessThan3~4_combout\,
	combout => \u5|q2~44_combout\);

-- Location: FF_X26_Y10_N15
\u5|q2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u5|q2[0]~18_combout\,
	sclr => \u5|q2~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|q2\(0));

-- Location: LCCOMB_X26_Y10_N16
\u5|q2[1]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|q2[1]~20_combout\ = (\u5|q2\(1) & (!\u5|q2[0]~19\)) # (!\u5|q2\(1) & ((\u5|q2[0]~19\) # (GND)))
-- \u5|q2[1]~21\ = CARRY((!\u5|q2[0]~19\) # (!\u5|q2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|q2\(1),
	datad => VCC,
	cin => \u5|q2[0]~19\,
	combout => \u5|q2[1]~20_combout\,
	cout => \u5|q2[1]~21\);

-- Location: FF_X26_Y10_N17
\u5|q2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u5|q2[1]~20_combout\,
	sclr => \u5|q2~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|q2\(1));

-- Location: LCCOMB_X26_Y10_N18
\u5|q2[2]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|q2[2]~22_combout\ = (\u5|q2\(2) & (\u5|q2[1]~21\ $ (GND))) # (!\u5|q2\(2) & (!\u5|q2[1]~21\ & VCC))
-- \u5|q2[2]~23\ = CARRY((\u5|q2\(2) & !\u5|q2[1]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|q2\(2),
	datad => VCC,
	cin => \u5|q2[1]~21\,
	combout => \u5|q2[2]~22_combout\,
	cout => \u5|q2[2]~23\);

-- Location: FF_X26_Y10_N19
\u5|q2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u5|q2[2]~22_combout\,
	sclr => \u5|q2~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|q2\(2));

-- Location: LCCOMB_X26_Y10_N20
\u5|q2[3]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|q2[3]~24_combout\ = (\u5|q2\(3) & (!\u5|q2[2]~23\)) # (!\u5|q2\(3) & ((\u5|q2[2]~23\) # (GND)))
-- \u5|q2[3]~25\ = CARRY((!\u5|q2[2]~23\) # (!\u5|q2\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|q2\(3),
	datad => VCC,
	cin => \u5|q2[2]~23\,
	combout => \u5|q2[3]~24_combout\,
	cout => \u5|q2[3]~25\);

-- Location: FF_X26_Y10_N21
\u5|q2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u5|q2[3]~24_combout\,
	sclr => \u5|q2~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|q2\(3));

-- Location: LCCOMB_X26_Y10_N22
\u5|q2[4]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|q2[4]~26_combout\ = (\u5|q2\(4) & (\u5|q2[3]~25\ $ (GND))) # (!\u5|q2\(4) & (!\u5|q2[3]~25\ & VCC))
-- \u5|q2[4]~27\ = CARRY((\u5|q2\(4) & !\u5|q2[3]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|q2\(4),
	datad => VCC,
	cin => \u5|q2[3]~25\,
	combout => \u5|q2[4]~26_combout\,
	cout => \u5|q2[4]~27\);

-- Location: FF_X26_Y10_N23
\u5|q2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u5|q2[4]~26_combout\,
	sclr => \u5|q2~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|q2\(4));

-- Location: LCCOMB_X26_Y10_N24
\u5|q2[5]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|q2[5]~28_combout\ = (\u5|q2\(5) & (!\u5|q2[4]~27\)) # (!\u5|q2\(5) & ((\u5|q2[4]~27\) # (GND)))
-- \u5|q2[5]~29\ = CARRY((!\u5|q2[4]~27\) # (!\u5|q2\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|q2\(5),
	datad => VCC,
	cin => \u5|q2[4]~27\,
	combout => \u5|q2[5]~28_combout\,
	cout => \u5|q2[5]~29\);

-- Location: FF_X26_Y10_N25
\u5|q2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u5|q2[5]~28_combout\,
	sclr => \u5|q2~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|q2\(5));

-- Location: LCCOMB_X26_Y10_N26
\u5|q2[6]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|q2[6]~30_combout\ = (\u5|q2\(6) & (\u5|q2[5]~29\ $ (GND))) # (!\u5|q2\(6) & (!\u5|q2[5]~29\ & VCC))
-- \u5|q2[6]~31\ = CARRY((\u5|q2\(6) & !\u5|q2[5]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|q2\(6),
	datad => VCC,
	cin => \u5|q2[5]~29\,
	combout => \u5|q2[6]~30_combout\,
	cout => \u5|q2[6]~31\);

-- Location: FF_X26_Y10_N27
\u5|q2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u5|q2[6]~30_combout\,
	sclr => \u5|q2~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|q2\(6));

-- Location: LCCOMB_X26_Y10_N28
\u5|q2[7]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|q2[7]~32_combout\ = (\u5|q2\(7) & (!\u5|q2[6]~31\)) # (!\u5|q2\(7) & ((\u5|q2[6]~31\) # (GND)))
-- \u5|q2[7]~33\ = CARRY((!\u5|q2[6]~31\) # (!\u5|q2\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|q2\(7),
	datad => VCC,
	cin => \u5|q2[6]~31\,
	combout => \u5|q2[7]~32_combout\,
	cout => \u5|q2[7]~33\);

-- Location: FF_X26_Y10_N29
\u5|q2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u5|q2[7]~32_combout\,
	sclr => \u5|q2~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|q2\(7));

-- Location: LCCOMB_X26_Y10_N30
\u5|q2[8]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|q2[8]~34_combout\ = (\u5|q2\(8) & (\u5|q2[7]~33\ $ (GND))) # (!\u5|q2\(8) & (!\u5|q2[7]~33\ & VCC))
-- \u5|q2[8]~35\ = CARRY((\u5|q2\(8) & !\u5|q2[7]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|q2\(8),
	datad => VCC,
	cin => \u5|q2[7]~33\,
	combout => \u5|q2[8]~34_combout\,
	cout => \u5|q2[8]~35\);

-- Location: FF_X26_Y10_N31
\u5|q2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u5|q2[8]~34_combout\,
	sclr => \u5|q2~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|q2\(8));

-- Location: LCCOMB_X26_Y9_N0
\u5|q2[9]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|q2[9]~36_combout\ = (\u5|q2\(9) & (!\u5|q2[8]~35\)) # (!\u5|q2\(9) & ((\u5|q2[8]~35\) # (GND)))
-- \u5|q2[9]~37\ = CARRY((!\u5|q2[8]~35\) # (!\u5|q2\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|q2\(9),
	datad => VCC,
	cin => \u5|q2[8]~35\,
	combout => \u5|q2[9]~36_combout\,
	cout => \u5|q2[9]~37\);

-- Location: FF_X26_Y9_N1
\u5|q2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u5|q2[9]~36_combout\,
	sclr => \u5|q2~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|q2\(9));

-- Location: LCCOMB_X26_Y9_N2
\u5|q2[10]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|q2[10]~38_combout\ = (\u5|q2\(10) & (\u5|q2[9]~37\ $ (GND))) # (!\u5|q2\(10) & (!\u5|q2[9]~37\ & VCC))
-- \u5|q2[10]~39\ = CARRY((\u5|q2\(10) & !\u5|q2[9]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|q2\(10),
	datad => VCC,
	cin => \u5|q2[9]~37\,
	combout => \u5|q2[10]~38_combout\,
	cout => \u5|q2[10]~39\);

-- Location: FF_X26_Y9_N3
\u5|q2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u5|q2[10]~38_combout\,
	sclr => \u5|q2~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|q2\(10));

-- Location: LCCOMB_X26_Y9_N4
\u5|q2[11]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|q2[11]~40_combout\ = (\u5|q2\(11) & (!\u5|q2[10]~39\)) # (!\u5|q2\(11) & ((\u5|q2[10]~39\) # (GND)))
-- \u5|q2[11]~41\ = CARRY((!\u5|q2[10]~39\) # (!\u5|q2\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|q2\(11),
	datad => VCC,
	cin => \u5|q2[10]~39\,
	combout => \u5|q2[11]~40_combout\,
	cout => \u5|q2[11]~41\);

-- Location: FF_X26_Y9_N5
\u5|q2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u5|q2[11]~40_combout\,
	sclr => \u5|q2~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|q2\(11));

-- Location: LCCOMB_X26_Y9_N6
\u5|q2[12]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|q2[12]~42_combout\ = (\u5|q2\(12) & (\u5|q2[11]~41\ $ (GND))) # (!\u5|q2\(12) & (!\u5|q2[11]~41\ & VCC))
-- \u5|q2[12]~43\ = CARRY((\u5|q2\(12) & !\u5|q2[11]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|q2\(12),
	datad => VCC,
	cin => \u5|q2[11]~41\,
	combout => \u5|q2[12]~42_combout\,
	cout => \u5|q2[12]~43\);

-- Location: FF_X26_Y9_N7
\u5|q2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u5|q2[12]~42_combout\,
	sclr => \u5|q2~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|q2\(12));

-- Location: LCCOMB_X26_Y9_N8
\u5|q2[13]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|q2[13]~45_combout\ = (\u5|q2\(13) & (!\u5|q2[12]~43\)) # (!\u5|q2\(13) & ((\u5|q2[12]~43\) # (GND)))
-- \u5|q2[13]~46\ = CARRY((!\u5|q2[12]~43\) # (!\u5|q2\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|q2\(13),
	datad => VCC,
	cin => \u5|q2[12]~43\,
	combout => \u5|q2[13]~45_combout\,
	cout => \u5|q2[13]~46\);

-- Location: FF_X26_Y9_N9
\u5|q2[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u5|q2[13]~45_combout\,
	sclr => \u5|q2~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|q2\(13));

-- Location: FF_X26_Y9_N11
\u5|q2[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u5|q2[14]~47_combout\,
	sclr => \u5|q2~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|q2\(14));

-- Location: LCCOMB_X26_Y9_N26
\u5|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|LessThan2~0_combout\ = (!\u5|q2\(14) & (!\u5|q2\(13) & !\u5|q2\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|q2\(14),
	datac => \u5|q2\(13),
	datad => \u5|q2\(12),
	combout => \u5|LessThan2~0_combout\);

-- Location: LCCOMB_X26_Y9_N24
\u5|LessThan3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|LessThan3~3_combout\ = (((!\u5|q2\(9) & !\u5|q2\(8))) # (!\u5|q2\(10))) # (!\u5|q2\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|q2\(11),
	datab => \u5|q2\(9),
	datac => \u5|q2\(8),
	datad => \u5|q2\(10),
	combout => \u5|LessThan3~3_combout\);

-- Location: LCCOMB_X26_Y10_N4
\u5|LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|LessThan3~1_combout\ = (((!\u5|q2\(1)) # (!\u5|q2\(0))) # (!\u5|q2\(2))) # (!\u5|q2\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|q2\(5),
	datab => \u5|q2\(2),
	datac => \u5|q2\(0),
	datad => \u5|q2\(1),
	combout => \u5|LessThan3~1_combout\);

-- Location: LCCOMB_X26_Y10_N2
\u5|LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|LessThan3~0_combout\ = (!\u5|q2\(7) & (!\u5|q2\(6) & !\u5|q2\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u5|q2\(7),
	datac => \u5|q2\(6),
	datad => \u5|q2\(9),
	combout => \u5|LessThan3~0_combout\);

-- Location: LCCOMB_X26_Y10_N0
\u5|LessThan3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|LessThan3~2_combout\ = (\u5|LessThan3~0_combout\ & (((\u5|LessThan3~1_combout\) # (!\u5|q2\(3))) # (!\u5|q2\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|q2\(4),
	datab => \u5|q2\(3),
	datac => \u5|LessThan3~1_combout\,
	datad => \u5|LessThan3~0_combout\,
	combout => \u5|LessThan3~2_combout\);

-- Location: LCCOMB_X26_Y9_N18
\u5|LessThan3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|LessThan3~4_combout\ = (\u5|LessThan2~0_combout\ & (!\u5|q2\(15) & ((\u5|LessThan3~3_combout\) # (\u5|LessThan3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|LessThan2~0_combout\,
	datab => \u5|LessThan3~3_combout\,
	datac => \u5|q2\(15),
	datad => \u5|LessThan3~2_combout\,
	combout => \u5|LessThan3~4_combout\);

-- Location: LCCOMB_X26_Y10_N12
\u5|clk_250hz~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|clk_250hz~0_combout\ = (\u5|q2\(8)) # ((\u5|q2\(7) & ((\u5|q2\(6)) # (\u5|q2\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|q2\(6),
	datab => \u5|q2\(7),
	datac => \u5|q2\(8),
	datad => \u5|q2\(5),
	combout => \u5|clk_250hz~0_combout\);

-- Location: LCCOMB_X26_Y9_N20
\u5|clk_250hz~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|clk_250hz~1_combout\ = ((\u5|q2\(9) & (\u5|q2\(10) & \u5|clk_250hz~0_combout\))) # (!\u5|LessThan2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|LessThan2~0_combout\,
	datab => \u5|q2\(9),
	datac => \u5|q2\(10),
	datad => \u5|clk_250hz~0_combout\,
	combout => \u5|clk_250hz~1_combout\);

-- Location: LCCOMB_X26_Y9_N30
\u5|clk_250hz~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|clk_250hz~2_combout\ = (\u5|q2\(17) & (((!\u5|q2\(16))))) # (!\u5|q2\(17) & (\u5|q2\(16) & ((\u5|q2\(11)) # (\u5|clk_250hz~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|q2\(17),
	datab => \u5|q2\(11),
	datac => \u5|q2\(16),
	datad => \u5|clk_250hz~1_combout\,
	combout => \u5|clk_250hz~2_combout\);

-- Location: LCCOMB_X26_Y9_N28
\u5|clk_250hz~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|clk_250hz~3_combout\ = (\u5|q2\(17)) # ((\u5|clk_250hz~2_combout\ & \u5|q2\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u5|q2\(17),
	datac => \u5|clk_250hz~2_combout\,
	datad => \u5|q2\(15),
	combout => \u5|clk_250hz~3_combout\);

-- Location: LCCOMB_X26_Y10_N6
\u5|clk_250hz~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|clk_250hz~4_combout\ = (\u5|clk_250hz~3_combout\ & ((\u5|LessThan3~4_combout\) # ((\u5|clk_250hz~2_combout\) # (\u5|clk_250hz~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|LessThan3~4_combout\,
	datab => \u5|clk_250hz~2_combout\,
	datac => \u5|clk_250hz~q\,
	datad => \u5|clk_250hz~3_combout\,
	combout => \u5|clk_250hz~4_combout\);

-- Location: LCCOMB_X26_Y10_N10
\u5|clk_250hz~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|clk_250hz~feeder_combout\ = \u5|clk_250hz~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u5|clk_250hz~4_combout\,
	combout => \u5|clk_250hz~feeder_combout\);

-- Location: FF_X26_Y10_N11
\u5|clk_250hz\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u5|clk_250hz~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|clk_250hz~q\);

-- Location: CLKCTRL_G8
\u5|clk_250hz~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \u5|clk_250hz~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \u5|clk_250hz~clkctrl_outclk\);

-- Location: IOIBUF_X34_Y12_N15
\c_set_min~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c_set_min,
	o => \c_set_min~input_o\);

-- Location: LCCOMB_X26_Y8_N22
\u6|count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|count~2_combout\ = (\u6|count\(3) & ((\u6|count\(1)) # ((!\u6|count\(2) & \u6|count\(0))))) # (!\u6|count\(3) & ((\u6|count\(0) $ (\u6|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|count\(2),
	datab => \u6|count\(3),
	datac => \u6|count\(0),
	datad => \u6|count\(1),
	combout => \u6|count~2_combout\);

-- Location: LCCOMB_X26_Y8_N30
\u6|count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|count~3_combout\ = (!\c_set_min~input_o\ & \u6|count~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c_set_min~input_o\,
	datad => \u6|count~2_combout\,
	combout => \u6|count~3_combout\);

-- Location: FF_X26_Y8_N31
\u6|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|clk_250hz~clkctrl_outclk\,
	d => \u6|count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|count\(1));

-- Location: LCCOMB_X26_Y8_N20
\u6|count~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|count~6_combout\ = (\u6|count\(2)) # (\u6|count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u6|count\(2),
	datad => \u6|count\(1),
	combout => \u6|count~6_combout\);

-- Location: LCCOMB_X26_Y8_N10
\u6|count~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|count~7_combout\ = (!\c_set_min~input_o\ & (\u6|count\(0) $ (((!\u6|count\(3)) # (!\u6|count~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_set_min~input_o\,
	datab => \u6|count~6_combout\,
	datac => \u6|count\(0),
	datad => \u6|count\(3),
	combout => \u6|count~7_combout\);

-- Location: FF_X26_Y8_N11
\u6|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|clk_250hz~clkctrl_outclk\,
	d => \u6|count~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|count\(0));

-- Location: LCCOMB_X26_Y8_N28
\u6|count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|count~4_combout\ = \u6|count\(2) $ (((!\u6|count\(3) & (\u6|count\(0) & \u6|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|count\(2),
	datab => \u6|count\(3),
	datac => \u6|count\(0),
	datad => \u6|count\(1),
	combout => \u6|count~4_combout\);

-- Location: LCCOMB_X26_Y8_N8
\u6|count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|count~5_combout\ = (!\c_set_min~input_o\ & \u6|count~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c_set_min~input_o\,
	datad => \u6|count~4_combout\,
	combout => \u6|count~5_combout\);

-- Location: FF_X26_Y8_N9
\u6|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|clk_250hz~clkctrl_outclk\,
	d => \u6|count~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|count\(2));

-- Location: LCCOMB_X26_Y8_N12
\u6|count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|count~0_combout\ = (\u6|count\(3)) # ((\u6|count\(2) & (\u6|count\(0) & \u6|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|count\(2),
	datab => \u6|count\(0),
	datac => \u6|count\(3),
	datad => \u6|count\(1),
	combout => \u6|count~0_combout\);

-- Location: LCCOMB_X26_Y8_N26
\u6|count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|count~1_combout\ = (!\c_set_min~input_o\ & \u6|count~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c_set_min~input_o\,
	datad => \u6|count~0_combout\,
	combout => \u6|count~1_combout\);

-- Location: FF_X26_Y8_N27
\u6|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|clk_250hz~clkctrl_outclk\,
	d => \u6|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|count\(3));

-- Location: LCCOMB_X26_Y8_N24
\u6|key_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|key_out~0_combout\ = (!\c_set_min~input_o\ & (!\u6|count\(2) & (!\u6|count\(1) & !\u6|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_set_min~input_o\,
	datab => \u6|count\(2),
	datac => \u6|count\(1),
	datad => \u6|count\(0),
	combout => \u6|key_out~0_combout\);

-- Location: LCCOMB_X26_Y8_N14
\u6|key_out~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|key_out~1_combout\ = (\u6|count\(3) & ((\u6|key_out~0_combout\) # ((\c_set_min~input_o\ & \u6|key_out~q\)))) # (!\u6|count\(3) & (\c_set_min~input_o\ & (\u6|key_out~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|count\(3),
	datab => \c_set_min~input_o\,
	datac => \u6|key_out~q\,
	datad => \u6|key_out~0_combout\,
	combout => \u6|key_out~1_combout\);

-- Location: LCCOMB_X26_Y8_N18
\u6|key_out~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|key_out~feeder_combout\ = \u6|key_out~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u6|key_out~1_combout\,
	combout => \u6|key_out~feeder_combout\);

-- Location: FF_X26_Y8_N19
\u6|key_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|clk_250hz~clkctrl_outclk\,
	d => \u6|key_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|key_out~q\);

-- Location: LCCOMB_X26_Y8_N16
\u1|co\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|co~combout\ = LCELL((\u1|count_en~q\) # (\u6|key_out~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|count_en~q\,
	datad => \u6|key_out~q\,
	combout => \u1|co~combout\);

-- Location: CLKCTRL_G9
\u1|co~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \u1|co~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \u1|co~clkctrl_outclk\);

-- Location: LCCOMB_X26_Y6_N18
\u2|count_ge~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|count_ge~2_combout\ = (\u2|count_ge\(1) & (\u2|count_ge\(2) & (!\u2|count_ge\(3) & \u2|count_ge\(0)))) # (!\u2|count_ge\(1) & (!\u2|count_ge\(2) & (\u2|count_ge\(3) & !\u2|count_ge\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|count_ge\(1),
	datab => \u2|count_ge\(2),
	datac => \u2|count_ge\(3),
	datad => \u2|count_ge\(0),
	combout => \u2|count_ge~2_combout\);

-- Location: FF_X26_Y6_N19
\u2|count_ge[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|co~clkctrl_outclk\,
	d => \u2|count_ge~2_combout\,
	clrn => \c_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|count_ge\(3));

-- Location: LCCOMB_X26_Y6_N8
\u2|count_ge~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|count_ge~0_combout\ = (!\u2|count_ge\(3) & (\u2|count_ge\(2) $ (((\u2|count_ge\(1) & \u2|count_ge\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|count_ge\(1),
	datab => \u2|count_ge\(3),
	datac => \u2|count_ge\(2),
	datad => \u2|count_ge\(0),
	combout => \u2|count_ge~0_combout\);

-- Location: FF_X26_Y6_N9
\u2|count_ge[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|co~clkctrl_outclk\,
	d => \u2|count_ge~0_combout\,
	clrn => \c_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|count_ge\(2));

-- Location: LCCOMB_X26_Y6_N26
\u2|count_ge~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|count_ge~3_combout\ = (!\u2|count_ge\(0) & (((!\u2|count_ge\(1) & !\u2|count_ge\(2))) # (!\u2|count_ge\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|count_ge\(1),
	datab => \u2|count_ge\(2),
	datac => \u2|count_ge\(0),
	datad => \u2|count_ge\(3),
	combout => \u2|count_ge~3_combout\);

-- Location: FF_X26_Y6_N27
\u2|count_ge[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|co~clkctrl_outclk\,
	d => \u2|count_ge~3_combout\,
	clrn => \c_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|count_ge\(0));

-- Location: LCCOMB_X26_Y6_N22
\u2|count_ge~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|count_ge~1_combout\ = (!\u2|count_ge\(3) & (\u2|count_ge\(0) $ (\u2|count_ge\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|count_ge\(0),
	datac => \u2|count_ge\(1),
	datad => \u2|count_ge\(3),
	combout => \u2|count_ge~1_combout\);

-- Location: FF_X26_Y6_N23
\u2|count_ge[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|co~clkctrl_outclk\,
	d => \u2|count_ge~1_combout\,
	clrn => \c_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|count_ge\(1));

-- Location: LCCOMB_X26_Y6_N12
\u2|count_shi[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|count_shi[2]~2_combout\ = ((!\u2|count_shi\(1) & !\u2|count_shi\(2))) # (!\u2|count_shi\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|count_shi\(1),
	datac => \u2|count_shi\(3),
	datad => \u2|count_shi\(2),
	combout => \u2|count_shi[2]~2_combout\);

-- Location: LCCOMB_X26_Y6_N24
\u2|count_shi[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|count_shi[2]~3_combout\ = (\u2|count_shi[2]~2_combout\ & ((!\u8|Equal0~0_combout\) # (!\u2|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|count_shi[2]~2_combout\,
	datac => \u2|process_0~0_combout\,
	datad => \u8|Equal0~0_combout\,
	combout => \u2|count_shi[2]~3_combout\);

-- Location: LCCOMB_X23_Y6_N2
\u2|count_shi~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|count_shi~7_combout\ = (\u2|count_shi[2]~3_combout\ & (\u2|count_shi\(2) $ (((\u2|count_shi\(1) & \u2|count_shi\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|count_shi\(1),
	datab => \u2|count_shi\(0),
	datac => \u2|count_shi\(2),
	datad => \u2|count_shi[2]~3_combout\,
	combout => \u2|count_shi~7_combout\);

-- Location: LCCOMB_X26_Y6_N28
\u2|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|LessThan0~0_combout\ = (\u2|count_ge\(3) & ((\u2|count_ge\(1)) # ((\u2|count_ge\(2)) # (\u2|count_ge\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|count_ge\(1),
	datab => \u2|count_ge\(2),
	datac => \u2|count_ge\(0),
	datad => \u2|count_ge\(3),
	combout => \u2|LessThan0~0_combout\);

-- Location: FF_X23_Y6_N3
\u2|count_shi[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|co~clkctrl_outclk\,
	d => \u2|count_shi~7_combout\,
	clrn => \c_reset~input_o\,
	ena => \u2|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|count_shi\(2));

-- Location: LCCOMB_X26_Y6_N30
\u2|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|process_0~0_combout\ = (\u2|count_ge\(0) & (\u2|count_ge\(3) & (\u2|count_shi\(2) & \u2|count_shi\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|count_ge\(0),
	datab => \u2|count_ge\(3),
	datac => \u2|count_shi\(2),
	datad => \u2|count_shi\(0),
	combout => \u2|process_0~0_combout\);

-- Location: LCCOMB_X28_Y6_N14
\u2|count_shi~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|count_shi~6_combout\ = (!\u2|count_shi\(0) & (\u2|count_shi[2]~2_combout\ & ((!\u8|Equal0~0_combout\) # (!\u2|process_0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|process_0~0_combout\,
	datab => \u8|Equal0~0_combout\,
	datac => \u2|count_shi\(0),
	datad => \u2|count_shi[2]~2_combout\,
	combout => \u2|count_shi~6_combout\);

-- Location: FF_X28_Y6_N15
\u2|count_shi[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|co~clkctrl_outclk\,
	d => \u2|count_shi~6_combout\,
	clrn => \c_reset~input_o\,
	ena => \u2|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|count_shi\(0));

-- Location: LCCOMB_X28_Y6_N8
\u2|count_shi~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|count_shi~5_combout\ = (\u2|count_shi[2]~3_combout\ & (\u2|count_shi\(0) $ (\u2|count_shi\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|count_shi\(0),
	datac => \u2|count_shi\(1),
	datad => \u2|count_shi[2]~3_combout\,
	combout => \u2|count_shi~5_combout\);

-- Location: FF_X28_Y6_N9
\u2|count_shi[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|co~clkctrl_outclk\,
	d => \u2|count_shi~5_combout\,
	clrn => \c_reset~input_o\,
	ena => \u2|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|count_shi\(1));

-- Location: LCCOMB_X26_Y6_N10
\u2|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Add1~0_combout\ = (\u2|count_shi\(1) & \u2|count_shi\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|count_shi\(1),
	datad => \u2|count_shi\(0),
	combout => \u2|Add1~0_combout\);

-- Location: LCCOMB_X23_Y6_N4
\u2|count_shi~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|count_shi~4_combout\ = (\u2|count_shi[2]~3_combout\ & (\u2|count_shi\(3) $ (((\u2|Add1~0_combout\ & \u2|count_shi\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add1~0_combout\,
	datab => \u2|count_shi\(2),
	datac => \u2|count_shi\(3),
	datad => \u2|count_shi[2]~3_combout\,
	combout => \u2|count_shi~4_combout\);

-- Location: FF_X23_Y6_N5
\u2|count_shi[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|co~clkctrl_outclk\,
	d => \u2|count_shi~4_combout\,
	clrn => \c_reset~input_o\,
	ena => \u2|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|count_shi\(3));

-- Location: LCCOMB_X26_Y6_N16
\u8|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u8|Equal0~0_combout\ = (!\u2|count_ge\(1) & (!\u2|count_ge\(2) & (!\u2|count_shi\(3) & !\u2|count_shi\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|count_ge\(1),
	datab => \u2|count_ge\(2),
	datac => \u2|count_shi\(3),
	datad => \u2|count_shi\(1),
	combout => \u8|Equal0~0_combout\);

-- Location: LCCOMB_X26_Y6_N20
\u8|beep~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u8|beep~1_combout\ = (!\u2|count_ge\(0) & (!\u2|count_ge\(3) & (!\u2|count_shi\(2) & !\u2|count_shi\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|count_ge\(0),
	datab => \u2|count_ge\(3),
	datac => \u2|count_shi\(2),
	datad => \u2|count_shi\(0),
	combout => \u8|beep~1_combout\);

-- Location: LCCOMB_X21_Y6_N14
\u8|beep~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u8|beep~3_combout\ = (\u8|beep~0_combout\ & (\u8|beep~2_combout\ & (\u8|Equal0~0_combout\ & \u8|beep~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|beep~0_combout\,
	datab => \u8|beep~2_combout\,
	datac => \u8|Equal0~0_combout\,
	datad => \u8|beep~1_combout\,
	combout => \u8|beep~3_combout\);

-- Location: LCCOMB_X25_Y6_N28
\u4|scan_count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|scan_count~1_combout\ = (!\u4|scan_count\(0) & ((!\u4|scan_count\(1)) # (!\u4|scan_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|scan_count\(2),
	datac => \u4|scan_count\(0),
	datad => \u4|scan_count\(1),
	combout => \u4|scan_count~1_combout\);

-- Location: FF_X25_Y6_N29
\u4|scan_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|clk_250hz~clkctrl_outclk\,
	d => \u4|scan_count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|scan_count\(0));

-- Location: LCCOMB_X25_Y6_N10
\u4|scan_count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|scan_count~0_combout\ = (\u4|scan_count\(1) & (!\u4|scan_count\(2) & !\u4|scan_count\(0))) # (!\u4|scan_count\(1) & ((\u4|scan_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|scan_count\(2),
	datac => \u4|scan_count\(1),
	datad => \u4|scan_count\(0),
	combout => \u4|scan_count~0_combout\);

-- Location: FF_X25_Y6_N31
\u4|scan_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|clk_250hz~clkctrl_outclk\,
	asdata => \u4|scan_count~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|scan_count\(1));

-- Location: LCCOMB_X25_Y6_N18
\u4|scan_count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|scan_count~2_combout\ = (\u4|scan_count\(1) & (!\u4|scan_count\(2) & \u4|scan_count\(0))) # (!\u4|scan_count\(1) & (\u4|scan_count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|scan_count\(1),
	datac => \u4|scan_count\(2),
	datad => \u4|scan_count\(0),
	combout => \u4|scan_count~2_combout\);

-- Location: FF_X25_Y6_N19
\u4|scan_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|clk_250hz~q\,
	d => \u4|scan_count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|scan_count\(2));

-- Location: LCCOMB_X25_Y6_N30
\u4|Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Equal5~0_combout\ = (!\u4|scan_count\(2) & (!\u4|scan_count\(1) & !\u4|scan_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|scan_count\(2),
	datac => \u4|scan_count\(1),
	datad => \u4|scan_count\(0),
	combout => \u4|Equal5~0_combout\);

-- Location: LCCOMB_X25_Y6_N24
\u4|Equal5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Equal5~1_combout\ = (!\u4|scan_count\(1) & (!\u4|scan_count\(2) & \u4|scan_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|scan_count\(1),
	datab => \u4|scan_count\(2),
	datad => \u4|scan_count\(0),
	combout => \u4|Equal5~1_combout\);

-- Location: LCCOMB_X25_Y6_N12
\u4|Equal5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Equal5~2_combout\ = (\u4|scan_count\(1) & (!\u4|scan_count\(2) & !\u4|scan_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|scan_count\(1),
	datab => \u4|scan_count\(2),
	datad => \u4|scan_count\(0),
	combout => \u4|Equal5~2_combout\);

-- Location: LCCOMB_X25_Y6_N16
\u4|Equal5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Equal5~3_combout\ = (\u4|scan_count\(1) & (!\u4|scan_count\(2) & \u4|scan_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|scan_count\(1),
	datab => \u4|scan_count\(2),
	datad => \u4|scan_count\(0),
	combout => \u4|Equal5~3_combout\);

-- Location: LCCOMB_X25_Y6_N20
\u4|Equal5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Equal5~4_combout\ = (!\u4|scan_count\(1) & (\u4|scan_count\(2) & !\u4|scan_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|scan_count\(1),
	datab => \u4|scan_count\(2),
	datad => \u4|scan_count\(0),
	combout => \u4|Equal5~4_combout\);

-- Location: LCCOMB_X25_Y6_N6
\u4|sel[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|sel[5]~0_combout\ = (!\u4|scan_count\(1) & (\u4|scan_count\(2) & \u4|scan_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|scan_count\(1),
	datab => \u4|scan_count\(2),
	datad => \u4|scan_count\(0),
	combout => \u4|sel[5]~0_combout\);

-- Location: LCCOMB_X25_Y6_N14
\u4|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|LessThan0~0_combout\ = (\u4|scan_count\(1) & \u4|scan_count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u4|scan_count\(1),
	datad => \u4|scan_count\(2),
	combout => \u4|LessThan0~0_combout\);

-- Location: CLKCTRL_G6
\u4|LessThan0~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \u4|LessThan0~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \u4|LessThan0~0clkctrl_outclk\);

-- Location: LCCOMB_X23_Y6_N12
\u4|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux11~1_combout\ = (\u4|scan_count\(0) & (((\u1|count_shi\(3)) # (\u4|scan_count\(1))))) # (!\u4|scan_count\(0) & (\u1|count_ge\(3) & ((!\u4|scan_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count_ge\(3),
	datab => \u1|count_shi\(3),
	datac => \u4|scan_count\(0),
	datad => \u4|scan_count\(1),
	combout => \u4|Mux11~1_combout\);

-- Location: LCCOMB_X23_Y6_N30
\u4|Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux11~2_combout\ = (\u4|scan_count\(1) & ((\u4|Mux11~1_combout\ & (\u2|count_shi\(3))) # (!\u4|Mux11~1_combout\ & ((\u2|count_ge\(3)))))) # (!\u4|scan_count\(1) & (((\u4|Mux11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|scan_count\(1),
	datab => \u2|count_shi\(3),
	datac => \u4|Mux11~1_combout\,
	datad => \u2|count_ge\(3),
	combout => \u4|Mux11~2_combout\);

-- Location: IOIBUF_X34_Y12_N22
\c_set_hour~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c_set_hour,
	o => \c_set_hour~input_o\);

-- Location: LCCOMB_X30_Y10_N24
\u7|count~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|count~6_combout\ = \u7|count\(0) $ ((((!\u7|count\(1) & !\u7|count\(2))) # (!\u7|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|count\(1),
	datab => \u7|count\(2),
	datac => \u7|count\(0),
	datad => \u7|count\(3),
	combout => \u7|count~6_combout\);

-- Location: LCCOMB_X30_Y10_N12
\u7|count~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|count~7_combout\ = (!\c_set_hour~input_o\ & \u7|count~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c_set_hour~input_o\,
	datad => \u7|count~6_combout\,
	combout => \u7|count~7_combout\);

-- Location: FF_X30_Y10_N13
\u7|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|clk_250hz~clkctrl_outclk\,
	d => \u7|count~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|count\(0));

-- Location: LCCOMB_X30_Y10_N18
\u7|count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|count~4_combout\ = \u7|count\(2) $ (((\u7|count\(1) & (!\u7|count\(3) & \u7|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|count\(1),
	datab => \u7|count\(3),
	datac => \u7|count\(2),
	datad => \u7|count\(0),
	combout => \u7|count~4_combout\);

-- Location: LCCOMB_X30_Y10_N22
\u7|count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|count~5_combout\ = (!\c_set_hour~input_o\ & \u7|count~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c_set_hour~input_o\,
	datad => \u7|count~4_combout\,
	combout => \u7|count~5_combout\);

-- Location: FF_X30_Y10_N23
\u7|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|clk_250hz~clkctrl_outclk\,
	d => \u7|count~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|count\(2));

-- Location: LCCOMB_X30_Y10_N26
\u7|count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|count~2_combout\ = (\u7|count\(1) & ((\u7|count\(3)) # ((!\u7|count\(0))))) # (!\u7|count\(1) & (\u7|count\(0) & ((!\u7|count\(2)) # (!\u7|count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|count\(1),
	datab => \u7|count\(3),
	datac => \u7|count\(2),
	datad => \u7|count\(0),
	combout => \u7|count~2_combout\);

-- Location: LCCOMB_X30_Y10_N14
\u7|count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|count~3_combout\ = (\u7|count~2_combout\ & !\c_set_hour~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|count~2_combout\,
	datac => \c_set_hour~input_o\,
	combout => \u7|count~3_combout\);

-- Location: FF_X30_Y10_N15
\u7|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|clk_250hz~clkctrl_outclk\,
	d => \u7|count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|count\(1));

-- Location: LCCOMB_X30_Y10_N0
\u7|count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|count~0_combout\ = (\u7|count\(3)) # ((\u7|count\(1) & (\u7|count\(0) & \u7|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|count\(1),
	datab => \u7|count\(0),
	datac => \u7|count\(2),
	datad => \u7|count\(3),
	combout => \u7|count~0_combout\);

-- Location: LCCOMB_X30_Y10_N28
\u7|count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|count~1_combout\ = (!\c_set_hour~input_o\ & \u7|count~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c_set_hour~input_o\,
	datad => \u7|count~0_combout\,
	combout => \u7|count~1_combout\);

-- Location: FF_X30_Y10_N29
\u7|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|clk_250hz~clkctrl_outclk\,
	d => \u7|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|count\(3));

-- Location: LCCOMB_X30_Y10_N2
\u7|key_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|key_out~0_combout\ = (!\u7|count\(2) & (!\c_set_hour~input_o\ & (!\u7|count\(1) & !\u7|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|count\(2),
	datab => \c_set_hour~input_o\,
	datac => \u7|count\(1),
	datad => \u7|count\(0),
	combout => \u7|key_out~0_combout\);

-- Location: LCCOMB_X30_Y10_N16
\u7|key_out~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|key_out~1_combout\ = (\c_set_hour~input_o\ & ((\u7|key_out~q\) # ((\u7|count\(3) & \u7|key_out~0_combout\)))) # (!\c_set_hour~input_o\ & (\u7|count\(3) & ((\u7|key_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_set_hour~input_o\,
	datab => \u7|count\(3),
	datac => \u7|key_out~q\,
	datad => \u7|key_out~0_combout\,
	combout => \u7|key_out~1_combout\);

-- Location: LCCOMB_X30_Y10_N30
\u7|key_out~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|key_out~feeder_combout\ = \u7|key_out~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u7|key_out~1_combout\,
	combout => \u7|key_out~feeder_combout\);

-- Location: FF_X30_Y10_N31
\u7|key_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|clk_250hz~clkctrl_outclk\,
	d => \u7|key_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|key_out~q\);

-- Location: LCCOMB_X26_Y6_N14
\u2|count_en~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|count_en~0_combout\ = (\u2|process_0~0_combout\ & ((\u8|Equal0~0_combout\) # ((\u2|LessThan0~0_combout\ & \u2|count_en~q\)))) # (!\u2|process_0~0_combout\ & (\u2|LessThan0~0_combout\ & (\u2|count_en~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|process_0~0_combout\,
	datab => \u2|LessThan0~0_combout\,
	datac => \u2|count_en~q\,
	datad => \u8|Equal0~0_combout\,
	combout => \u2|count_en~0_combout\);

-- Location: FF_X26_Y6_N15
\u2|count_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|co~combout\,
	d => \u2|count_en~0_combout\,
	ena => \c_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|count_en~q\);

-- Location: LCCOMB_X30_Y10_N20
\u2|co\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|co~combout\ = LCELL((\u7|key_out~q\) # (\u2|count_en~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u7|key_out~q\,
	datad => \u2|count_en~q\,
	combout => \u2|co~combout\);

-- Location: CLKCTRL_G5
\u2|co~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \u2|co~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \u2|co~clkctrl_outclk\);

-- Location: LCCOMB_X24_Y6_N20
\u3|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Add0~0_combout\ = (\u3|count_ge\(0) & \u3|count_ge\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|count_ge\(0),
	datac => \u3|count_ge\(1),
	combout => \u3|Add0~0_combout\);

-- Location: LCCOMB_X24_Y6_N2
\u3|count_ge~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|count_ge~5_combout\ = (\u3|count_ge~3_combout\ & (\u3|count_ge\(3) $ (((\u3|count_ge\(2) & \u3|Add0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|count_ge\(2),
	datab => \u3|Add0~0_combout\,
	datac => \u3|count_ge\(3),
	datad => \u3|count_ge~3_combout\,
	combout => \u3|count_ge~5_combout\);

-- Location: FF_X24_Y6_N3
\u3|count_ge[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|co~clkctrl_outclk\,
	d => \u3|count_ge~5_combout\,
	clrn => \c_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|count_ge\(3));

-- Location: LCCOMB_X24_Y6_N0
\u3|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|LessThan0~0_combout\ = ((!\u3|count_ge\(2) & (!\u3|count_ge\(1) & !\u3|count_ge\(0)))) # (!\u3|count_ge\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|count_ge\(2),
	datab => \u3|count_ge\(1),
	datac => \u3|count_ge\(0),
	datad => \u3|count_ge\(3),
	combout => \u3|LessThan0~0_combout\);

-- Location: LCCOMB_X24_Y6_N16
\u3|count_shi[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|count_shi[0]~3_combout\ = (!\u3|count_shi~2_combout\ & (\u3|count_shi\(0) $ (!\u3|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|count_shi~2_combout\,
	datac => \u3|count_shi\(0),
	datad => \u3|LessThan0~0_combout\,
	combout => \u3|count_shi[0]~3_combout\);

-- Location: FF_X24_Y6_N17
\u3|count_shi[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|co~clkctrl_outclk\,
	d => \u3|count_shi[0]~3_combout\,
	clrn => \c_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|count_shi\(0));

-- Location: LCCOMB_X24_Y6_N8
\u3|count_shi[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|count_shi[1]~4_combout\ = (!\u3|count_shi~2_combout\ & (\u3|count_shi\(1) $ (((!\u3|LessThan0~0_combout\ & \u3|count_shi\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|count_shi~2_combout\,
	datab => \u3|LessThan0~0_combout\,
	datac => \u3|count_shi\(1),
	datad => \u3|count_shi\(0),
	combout => \u3|count_shi[1]~4_combout\);

-- Location: FF_X24_Y6_N9
\u3|count_shi[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|co~clkctrl_outclk\,
	d => \u3|count_shi[1]~4_combout\,
	clrn => \c_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|count_shi\(1));

-- Location: LCCOMB_X25_Y6_N26
\u3|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Add1~0_combout\ = \u3|count_shi\(2) $ (((\u3|count_shi\(0) & \u3|count_shi\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|count_shi\(0),
	datac => \u3|count_shi\(2),
	datad => \u3|count_shi\(1),
	combout => \u3|Add1~0_combout\);

-- Location: LCCOMB_X24_Y6_N6
\u3|count_shi[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|count_shi[2]~5_combout\ = (!\u3|count_shi~2_combout\ & ((\u3|LessThan0~0_combout\ & (\u3|count_shi\(2))) # (!\u3|LessThan0~0_combout\ & ((\u3|Add1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|count_shi~2_combout\,
	datab => \u3|LessThan0~0_combout\,
	datac => \u3|count_shi\(2),
	datad => \u3|Add1~0_combout\,
	combout => \u3|count_shi[2]~5_combout\);

-- Location: FF_X24_Y6_N7
\u3|count_shi[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|co~clkctrl_outclk\,
	d => \u3|count_shi[2]~5_combout\,
	clrn => \c_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|count_shi\(2));

-- Location: LCCOMB_X24_Y6_N12
\u3|count_shi~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|count_shi~1_combout\ = (!\u3|count_shi\(3) & (!\u3|count_ge\(3) & (\u3|count_ge\(0) & !\u3|count_shi\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|count_shi\(3),
	datab => \u3|count_ge\(3),
	datac => \u3|count_ge\(0),
	datad => \u3|count_shi\(2),
	combout => \u3|count_shi~1_combout\);

-- Location: IOIBUF_X34_Y12_N8
\c_scale_sel~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c_scale_sel,
	o => \c_scale_sel~input_o\);

-- Location: LCCOMB_X24_Y6_N30
\u3|count_shi~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|count_shi~0_combout\ = (\u3|count_ge\(1) & (\c_scale_sel~input_o\ & (\u3|count_shi\(1) & !\u3|count_shi\(0)))) # (!\u3|count_ge\(1) & (!\c_scale_sel~input_o\ & (!\u3|count_shi\(1) & \u3|count_shi\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|count_ge\(1),
	datab => \c_scale_sel~input_o\,
	datac => \u3|count_shi\(1),
	datad => \u3|count_shi\(0),
	combout => \u3|count_shi~0_combout\);

-- Location: LCCOMB_X24_Y6_N18
\u3|count_ge~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|count_ge~3_combout\ = (\u3|LessThan0~0_combout\ & (((\u3|count_ge\(2)) # (!\u3|count_shi~0_combout\)) # (!\u3|count_shi~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|count_shi~1_combout\,
	datab => \u3|count_ge\(2),
	datac => \u3|count_shi~0_combout\,
	datad => \u3|LessThan0~0_combout\,
	combout => \u3|count_ge~3_combout\);

-- Location: LCCOMB_X24_Y6_N10
\u3|count_ge~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|count_ge~4_combout\ = (\u3|count_ge~3_combout\ & (\u3|count_ge\(0) $ (\u3|count_ge\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|count_ge\(0),
	datac => \u3|count_ge\(1),
	datad => \u3|count_ge~3_combout\,
	combout => \u3|count_ge~4_combout\);

-- Location: FF_X24_Y6_N11
\u3|count_ge[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|co~clkctrl_outclk\,
	d => \u3|count_ge~4_combout\,
	clrn => \c_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|count_ge\(1));

-- Location: LCCOMB_X24_Y6_N14
\u3|count_ge~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|count_ge~2_combout\ = (!\u3|count_ge\(0) & (((!\u3|count_ge\(2) & !\u3|count_ge\(1))) # (!\u3|count_ge\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|count_ge\(2),
	datab => \u3|count_ge\(1),
	datac => \u3|count_ge\(0),
	datad => \u3|count_ge\(3),
	combout => \u3|count_ge~2_combout\);

-- Location: FF_X24_Y6_N15
\u3|count_ge[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|co~clkctrl_outclk\,
	d => \u3|count_ge~2_combout\,
	clrn => \c_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|count_ge\(0));

-- Location: LCCOMB_X23_Y6_N14
\u3|count_ge~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|count_ge~6_combout\ = (\u3|count_ge~3_combout\ & (\u3|count_ge\(2) $ (((\u3|count_ge\(0) & \u3|count_ge\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|count_ge\(0),
	datab => \u3|count_ge\(1),
	datac => \u3|count_ge\(2),
	datad => \u3|count_ge~3_combout\,
	combout => \u3|count_ge~6_combout\);

-- Location: FF_X23_Y6_N15
\u3|count_ge[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|co~clkctrl_outclk\,
	d => \u3|count_ge~6_combout\,
	clrn => \c_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|count_ge\(2));

-- Location: LCCOMB_X24_Y6_N26
\u3|count_shi~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|count_shi~2_combout\ = (!\u3|count_ge\(2) & (\u3|count_shi~0_combout\ & \u3|count_shi~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|count_ge\(2),
	datac => \u3|count_shi~0_combout\,
	datad => \u3|count_shi~1_combout\,
	combout => \u3|count_shi~2_combout\);

-- Location: LCCOMB_X24_Y6_N22
\u3|Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Add1~1_combout\ = \u3|count_shi\(3) $ (((\u3|count_shi\(1) & (\u3|count_shi\(0) & \u3|count_shi\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|count_shi\(1),
	datab => \u3|count_shi\(0),
	datac => \u3|count_shi\(3),
	datad => \u3|count_shi\(2),
	combout => \u3|Add1~1_combout\);

-- Location: LCCOMB_X24_Y6_N4
\u3|count_shi[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|count_shi[3]~6_combout\ = (!\u3|count_shi~2_combout\ & ((\u3|LessThan0~0_combout\ & (\u3|count_shi\(3))) # (!\u3|LessThan0~0_combout\ & ((\u3|Add1~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|count_shi~2_combout\,
	datab => \u3|LessThan0~0_combout\,
	datac => \u3|count_shi\(3),
	datad => \u3|Add1~1_combout\,
	combout => \u3|count_shi[3]~6_combout\);

-- Location: FF_X24_Y6_N5
\u3|count_shi[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|co~clkctrl_outclk\,
	d => \u3|count_shi[3]~6_combout\,
	clrn => \c_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|count_shi\(3));

-- Location: LCCOMB_X24_Y6_N28
\u4|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux11~0_combout\ = (\u4|scan_count\(2) & ((\u4|scan_count\(0) & (\u3|count_shi\(3))) # (!\u4|scan_count\(0) & ((\u3|count_ge\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|scan_count\(2),
	datab => \u4|scan_count\(0),
	datac => \u3|count_shi\(3),
	datad => \u3|count_ge\(3),
	combout => \u4|Mux11~0_combout\);

-- Location: LCCOMB_X23_Y6_N20
\u4|Mux11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux11~3_combout\ = (\u4|Mux11~0_combout\) # ((!\u4|scan_count\(2) & \u4|Mux11~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|scan_count\(2),
	datac => \u4|Mux11~2_combout\,
	datad => \u4|Mux11~0_combout\,
	combout => \u4|Mux11~3_combout\);

-- Location: LCCOMB_X23_Y6_N26
\u4|dat[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|dat\(3) = (GLOBAL(\u4|LessThan0~0clkctrl_outclk\) & ((\u4|dat\(3)))) # (!GLOBAL(\u4|LessThan0~0clkctrl_outclk\) & (\u4|Mux11~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|LessThan0~0clkctrl_outclk\,
	datac => \u4|Mux11~3_combout\,
	datad => \u4|dat\(3),
	combout => \u4|dat\(3));

-- Location: LCCOMB_X23_Y6_N28
\u4|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux8~1_combout\ = (\u4|scan_count\(1) & (((\u4|scan_count\(0))))) # (!\u4|scan_count\(1) & ((\u4|scan_count\(0) & ((\u1|count_shi\(1)))) # (!\u4|scan_count\(0) & (\u1|count_ge\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|scan_count\(1),
	datab => \u1|count_ge\(1),
	datac => \u4|scan_count\(0),
	datad => \u1|count_shi\(1),
	combout => \u4|Mux8~1_combout\);

-- Location: LCCOMB_X23_Y6_N10
\u4|Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux8~2_combout\ = (\u4|scan_count\(1) & ((\u4|Mux8~1_combout\ & ((\u2|count_shi\(1)))) # (!\u4|Mux8~1_combout\ & (\u2|count_ge\(1))))) # (!\u4|scan_count\(1) & (\u4|Mux8~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|scan_count\(1),
	datab => \u4|Mux8~1_combout\,
	datac => \u2|count_ge\(1),
	datad => \u2|count_shi\(1),
	combout => \u4|Mux8~2_combout\);

-- Location: LCCOMB_X24_Y6_N24
\u4|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux8~0_combout\ = (\u4|scan_count\(2) & ((\u4|scan_count\(0) & (\u3|count_shi\(1))) # (!\u4|scan_count\(0) & ((\u3|count_ge\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|scan_count\(2),
	datab => \u4|scan_count\(0),
	datac => \u3|count_shi\(1),
	datad => \u3|count_ge\(1),
	combout => \u4|Mux8~0_combout\);

-- Location: LCCOMB_X23_Y6_N8
\u4|Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux8~3_combout\ = (\u4|Mux8~0_combout\) # ((!\u4|scan_count\(2) & \u4|Mux8~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|scan_count\(2),
	datac => \u4|Mux8~2_combout\,
	datad => \u4|Mux8~0_combout\,
	combout => \u4|Mux8~3_combout\);

-- Location: LCCOMB_X23_Y6_N18
\u4|dat[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|dat\(1) = (GLOBAL(\u4|LessThan0~0clkctrl_outclk\) & (\u4|dat\(1))) # (!GLOBAL(\u4|LessThan0~0clkctrl_outclk\) & ((\u4|Mux8~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|LessThan0~0clkctrl_outclk\,
	datab => \u4|dat\(1),
	datac => \u4|Mux8~3_combout\,
	combout => \u4|dat\(1));

-- Location: LCCOMB_X23_Y6_N6
\u4|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux10~1_combout\ = (\u4|scan_count\(1) & (((\u4|scan_count\(0))))) # (!\u4|scan_count\(1) & ((\u4|scan_count\(0) & ((\u1|count_shi\(2)))) # (!\u4|scan_count\(0) & (\u1|count_ge\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count_ge\(2),
	datab => \u4|scan_count\(1),
	datac => \u4|scan_count\(0),
	datad => \u1|count_shi\(2),
	combout => \u4|Mux10~1_combout\);

-- Location: LCCOMB_X23_Y6_N16
\u4|Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux10~2_combout\ = (\u4|scan_count\(1) & ((\u4|Mux10~1_combout\ & (\u2|count_shi\(2))) # (!\u4|Mux10~1_combout\ & ((\u2|count_ge\(2)))))) # (!\u4|scan_count\(1) & (((\u4|Mux10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|scan_count\(1),
	datab => \u2|count_shi\(2),
	datac => \u4|Mux10~1_combout\,
	datad => \u2|count_ge\(2),
	combout => \u4|Mux10~2_combout\);

-- Location: LCCOMB_X23_Y6_N0
\u4|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux10~0_combout\ = (\u4|scan_count\(2) & ((\u4|scan_count\(0) & ((\u3|count_shi\(2)))) # (!\u4|scan_count\(0) & (\u3|count_ge\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|scan_count\(0),
	datab => \u4|scan_count\(2),
	datac => \u3|count_ge\(2),
	datad => \u3|count_shi\(2),
	combout => \u4|Mux10~0_combout\);

-- Location: LCCOMB_X23_Y6_N22
\u4|Mux10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux10~3_combout\ = (\u4|Mux10~0_combout\) # ((\u4|Mux10~2_combout\ & !\u4|scan_count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|Mux10~2_combout\,
	datac => \u4|scan_count\(2),
	datad => \u4|Mux10~0_combout\,
	combout => \u4|Mux10~3_combout\);

-- Location: LCCOMB_X23_Y6_N24
\u4|dat[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|dat\(2) = (GLOBAL(\u4|LessThan0~0clkctrl_outclk\) & (\u4|dat\(2))) # (!GLOBAL(\u4|LessThan0~0clkctrl_outclk\) & ((\u4|Mux10~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|LessThan0~0clkctrl_outclk\,
	datab => \u4|dat\(2),
	datac => \u4|Mux10~3_combout\,
	combout => \u4|dat\(2));

-- Location: LCCOMB_X25_Y6_N22
\u4|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux7~1_combout\ = (\u4|scan_count\(0) & (\u4|scan_count\(1))) # (!\u4|scan_count\(0) & ((\u4|scan_count\(1) & ((\u2|count_ge\(0)))) # (!\u4|scan_count\(1) & (\u1|count_ge\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|scan_count\(0),
	datab => \u4|scan_count\(1),
	datac => \u1|count_ge\(0),
	datad => \u2|count_ge\(0),
	combout => \u4|Mux7~1_combout\);

-- Location: LCCOMB_X25_Y6_N4
\u4|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux7~2_combout\ = (\u4|Mux7~1_combout\ & (((\u2|count_shi\(0))) # (!\u4|scan_count\(0)))) # (!\u4|Mux7~1_combout\ & (\u4|scan_count\(0) & (\u1|count_shi\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Mux7~1_combout\,
	datab => \u4|scan_count\(0),
	datac => \u1|count_shi\(0),
	datad => \u2|count_shi\(0),
	combout => \u4|Mux7~2_combout\);

-- Location: LCCOMB_X25_Y6_N0
\u4|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux7~0_combout\ = (\u4|scan_count\(2) & ((\u4|scan_count\(0) & (\u3|count_shi\(0))) # (!\u4|scan_count\(0) & ((\u3|count_ge\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|scan_count\(2),
	datab => \u4|scan_count\(0),
	datac => \u3|count_shi\(0),
	datad => \u3|count_ge\(0),
	combout => \u4|Mux7~0_combout\);

-- Location: LCCOMB_X25_Y6_N2
\u4|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux7~3_combout\ = (\u4|Mux7~0_combout\) # ((!\u4|scan_count\(2) & \u4|Mux7~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|scan_count\(2),
	datac => \u4|Mux7~2_combout\,
	datad => \u4|Mux7~0_combout\,
	combout => \u4|Mux7~3_combout\);

-- Location: LCCOMB_X25_Y6_N8
\u4|dat[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|dat\(0) = (GLOBAL(\u4|LessThan0~0clkctrl_outclk\) & ((\u4|dat\(0)))) # (!GLOBAL(\u4|LessThan0~0clkctrl_outclk\) & (\u4|Mux7~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|Mux7~3_combout\,
	datac => \u4|dat\(0),
	datad => \u4|LessThan0~0clkctrl_outclk\,
	combout => \u4|dat\(0));

-- Location: LCCOMB_X31_Y6_N24
\u4|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux6~0_combout\ = (\u4|dat\(1) & (\u4|dat\(3))) # (!\u4|dat\(1) & (\u4|dat\(2) $ (((!\u4|dat\(3) & \u4|dat\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|dat\(3),
	datab => \u4|dat\(1),
	datac => \u4|dat\(2),
	datad => \u4|dat\(0),
	combout => \u4|Mux6~0_combout\);

-- Location: LCCOMB_X31_Y6_N14
\u4|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux5~0_combout\ = (\u4|dat\(3) & ((\u4|dat\(1)) # ((\u4|dat\(2))))) # (!\u4|dat\(3) & (\u4|dat\(2) & (\u4|dat\(1) $ (\u4|dat\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|dat\(3),
	datab => \u4|dat\(1),
	datac => \u4|dat\(2),
	datad => \u4|dat\(0),
	combout => \u4|Mux5~0_combout\);

-- Location: LCCOMB_X31_Y6_N16
\u4|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux4~0_combout\ = (\u4|dat\(2) & (\u4|dat\(3))) # (!\u4|dat\(2) & (\u4|dat\(1) & ((\u4|dat\(3)) # (!\u4|dat\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|dat\(3),
	datab => \u4|dat\(1),
	datac => \u4|dat\(2),
	datad => \u4|dat\(0),
	combout => \u4|Mux4~0_combout\);

-- Location: LCCOMB_X31_Y6_N6
\u4|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux3~0_combout\ = (\u4|dat\(1) & ((\u4|dat\(3)) # ((\u4|dat\(2) & \u4|dat\(0))))) # (!\u4|dat\(1) & (\u4|dat\(2) $ (((!\u4|dat\(3) & \u4|dat\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|dat\(3),
	datab => \u4|dat\(1),
	datac => \u4|dat\(2),
	datad => \u4|dat\(0),
	combout => \u4|Mux3~0_combout\);

-- Location: LCCOMB_X31_Y6_N12
\u4|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux2~0_combout\ = (\u4|dat\(0)) # ((\u4|dat\(1) & (\u4|dat\(3))) # (!\u4|dat\(1) & ((\u4|dat\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|dat\(3),
	datab => \u4|dat\(1),
	datac => \u4|dat\(2),
	datad => \u4|dat\(0),
	combout => \u4|Mux2~0_combout\);

-- Location: LCCOMB_X31_Y6_N10
\u4|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux1~0_combout\ = (\u4|dat\(2) & ((\u4|dat\(3)) # ((\u4|dat\(1) & \u4|dat\(0))))) # (!\u4|dat\(2) & ((\u4|dat\(1)) # ((!\u4|dat\(3) & \u4|dat\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|dat\(3),
	datab => \u4|dat\(1),
	datac => \u4|dat\(2),
	datad => \u4|dat\(0),
	combout => \u4|Mux1~0_combout\);

-- Location: LCCOMB_X31_Y6_N0
\u4|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux0~0_combout\ = (\u4|dat\(1) & (!\u4|dat\(3) & ((!\u4|dat\(0)) # (!\u4|dat\(2))))) # (!\u4|dat\(1) & (\u4|dat\(3) $ ((\u4|dat\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|dat\(3),
	datab => \u4|dat\(1),
	datac => \u4|dat\(2),
	datad => \u4|dat\(0),
	combout => \u4|Mux0~0_combout\);

-- Location: LCCOMB_X32_Y10_N8
\u5|q3[0]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|q3[0]~24_combout\ = \u5|q3\(0) $ (VCC)
-- \u5|q3[0]~25\ = CARRY(\u5|q3\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u5|q3\(0),
	datad => VCC,
	combout => \u5|q3[0]~24_combout\,
	cout => \u5|q3[0]~25\);

-- Location: LCCOMB_X32_Y9_N18
\u5|q3[21]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|q3[21]~66_combout\ = (\u5|q3\(21) & (!\u5|q3[20]~65\)) # (!\u5|q3\(21) & ((\u5|q3[20]~65\) # (GND)))
-- \u5|q3[21]~67\ = CARRY((!\u5|q3[20]~65\) # (!\u5|q3\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|q3\(21),
	datad => VCC,
	cin => \u5|q3[20]~65\,
	combout => \u5|q3[21]~66_combout\,
	cout => \u5|q3[21]~67\);

-- Location: LCCOMB_X32_Y9_N20
\u5|q3[22]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|q3[22]~68_combout\ = (\u5|q3\(22) & (\u5|q3[21]~67\ $ (GND))) # (!\u5|q3\(22) & (!\u5|q3[21]~67\ & VCC))
-- \u5|q3[22]~69\ = CARRY((\u5|q3\(22) & !\u5|q3[21]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|q3\(22),
	datad => VCC,
	cin => \u5|q3[21]~67\,
	combout => \u5|q3[22]~68_combout\,
	cout => \u5|q3[22]~69\);

-- Location: FF_X32_Y9_N21
\u5|q3[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u5|q3[22]~68_combout\,
	sclr => \u5|q3~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|q3\(22));

-- Location: LCCOMB_X32_Y9_N22
\u5|q3[23]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|q3[23]~71_combout\ = \u5|q3\(23) $ (\u5|q3[22]~69\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|q3\(23),
	cin => \u5|q3[22]~69\,
	combout => \u5|q3[23]~71_combout\);

-- Location: FF_X32_Y9_N23
\u5|q3[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u5|q3[23]~71_combout\,
	sclr => \u5|q3~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|q3\(23));

-- Location: LCCOMB_X32_Y9_N28
\u5|LessThan5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|LessThan5~0_combout\ = (!\u5|q3\(21) & (!\u5|q3\(22) & (!\u5|q3\(16) & !\u5|q3\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|q3\(21),
	datab => \u5|q3\(22),
	datac => \u5|q3\(16),
	datad => \u5|q3\(17),
	combout => \u5|LessThan5~0_combout\);

-- Location: LCCOMB_X32_Y10_N6
\u5|LessThan5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|LessThan5~2_combout\ = (((!\u5|q3\(2)) # (!\u5|q3\(0))) # (!\u5|q3\(6))) # (!\u5|q3\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|q3\(1),
	datab => \u5|q3\(6),
	datac => \u5|q3\(0),
	datad => \u5|q3\(2),
	combout => \u5|LessThan5~2_combout\);

-- Location: LCCOMB_X32_Y10_N0
\u5|LessThan5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|LessThan5~3_combout\ = ((!\u5|q3\(5)) # (!\u5|q3\(3))) # (!\u5|q3\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u5|q3\(4),
	datac => \u5|q3\(3),
	datad => \u5|q3\(5),
	combout => \u5|LessThan5~3_combout\);

-- Location: LCCOMB_X33_Y9_N18
\u5|LessThan5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|LessThan5~1_combout\ = (!\u5|q3\(13) & (!\u5|q3\(14) & (!\u5|q3\(7) & !\u5|q3\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|q3\(13),
	datab => \u5|q3\(14),
	datac => \u5|q3\(7),
	datad => \u5|q3\(11),
	combout => \u5|LessThan5~1_combout\);

-- Location: LCCOMB_X33_Y9_N22
\u5|LessThan5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|LessThan5~4_combout\ = (!\u5|q3\(8) & (\u5|LessThan5~1_combout\ & ((\u5|LessThan5~2_combout\) # (\u5|LessThan5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|LessThan5~2_combout\,
	datab => \u5|LessThan5~3_combout\,
	datac => \u5|q3\(8),
	datad => \u5|LessThan5~1_combout\,
	combout => \u5|LessThan5~4_combout\);

-- Location: LCCOMB_X32_Y9_N30
\u5|LessThan5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|LessThan5~5_combout\ = (\u5|q3\(12) & ((\u5|q3\(11)) # ((\u5|q3\(9) & \u5|q3\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|q3\(11),
	datab => \u5|q3\(12),
	datac => \u5|q3\(9),
	datad => \u5|q3\(10),
	combout => \u5|LessThan5~5_combout\);

-- Location: LCCOMB_X32_Y9_N24
\u5|LessThan5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|LessThan5~6_combout\ = ((!\u5|q3\(14) & (!\u5|LessThan5~5_combout\ & !\u5|q3\(13)))) # (!\u5|q3\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|q3\(15),
	datab => \u5|q3\(14),
	datac => \u5|LessThan5~5_combout\,
	datad => \u5|q3\(13),
	combout => \u5|LessThan5~6_combout\);

-- Location: LCCOMB_X33_Y9_N12
\u5|LessThan5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|LessThan5~7_combout\ = (\u5|LessThan5~0_combout\ & (!\u5|q3\(18) & ((\u5|LessThan5~4_combout\) # (\u5|LessThan5~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|LessThan5~0_combout\,
	datab => \u5|q3\(18),
	datac => \u5|LessThan5~4_combout\,
	datad => \u5|LessThan5~6_combout\,
	combout => \u5|LessThan5~7_combout\);

-- Location: LCCOMB_X33_Y9_N0
\u5|q3~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|q3~70_combout\ = (!\u5|LessThan5~8_combout\ & (\u5|q3\(23) & !\u5|LessThan5~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u5|LessThan5~8_combout\,
	datac => \u5|q3\(23),
	datad => \u5|LessThan5~7_combout\,
	combout => \u5|q3~70_combout\);

-- Location: FF_X32_Y10_N9
\u5|q3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u5|q3[0]~24_combout\,
	sclr => \u5|q3~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|q3\(0));

-- Location: LCCOMB_X32_Y10_N10
\u5|q3[1]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|q3[1]~26_combout\ = (\u5|q3\(1) & (!\u5|q3[0]~25\)) # (!\u5|q3\(1) & ((\u5|q3[0]~25\) # (GND)))
-- \u5|q3[1]~27\ = CARRY((!\u5|q3[0]~25\) # (!\u5|q3\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|q3\(1),
	datad => VCC,
	cin => \u5|q3[0]~25\,
	combout => \u5|q3[1]~26_combout\,
	cout => \u5|q3[1]~27\);

-- Location: FF_X32_Y10_N11
\u5|q3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u5|q3[1]~26_combout\,
	sclr => \u5|q3~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|q3\(1));

-- Location: LCCOMB_X32_Y10_N12
\u5|q3[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|q3[2]~28_combout\ = (\u5|q3\(2) & (\u5|q3[1]~27\ $ (GND))) # (!\u5|q3\(2) & (!\u5|q3[1]~27\ & VCC))
-- \u5|q3[2]~29\ = CARRY((\u5|q3\(2) & !\u5|q3[1]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|q3\(2),
	datad => VCC,
	cin => \u5|q3[1]~27\,
	combout => \u5|q3[2]~28_combout\,
	cout => \u5|q3[2]~29\);

-- Location: FF_X32_Y10_N13
\u5|q3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u5|q3[2]~28_combout\,
	sclr => \u5|q3~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|q3\(2));

-- Location: LCCOMB_X32_Y10_N14
\u5|q3[3]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|q3[3]~30_combout\ = (\u5|q3\(3) & (!\u5|q3[2]~29\)) # (!\u5|q3\(3) & ((\u5|q3[2]~29\) # (GND)))
-- \u5|q3[3]~31\ = CARRY((!\u5|q3[2]~29\) # (!\u5|q3\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|q3\(3),
	datad => VCC,
	cin => \u5|q3[2]~29\,
	combout => \u5|q3[3]~30_combout\,
	cout => \u5|q3[3]~31\);

-- Location: FF_X32_Y10_N15
\u5|q3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u5|q3[3]~30_combout\,
	sclr => \u5|q3~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|q3\(3));

-- Location: LCCOMB_X32_Y10_N16
\u5|q3[4]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|q3[4]~32_combout\ = (\u5|q3\(4) & (\u5|q3[3]~31\ $ (GND))) # (!\u5|q3\(4) & (!\u5|q3[3]~31\ & VCC))
-- \u5|q3[4]~33\ = CARRY((\u5|q3\(4) & !\u5|q3[3]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|q3\(4),
	datad => VCC,
	cin => \u5|q3[3]~31\,
	combout => \u5|q3[4]~32_combout\,
	cout => \u5|q3[4]~33\);

-- Location: FF_X32_Y10_N17
\u5|q3[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u5|q3[4]~32_combout\,
	sclr => \u5|q3~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|q3\(4));

-- Location: LCCOMB_X32_Y10_N18
\u5|q3[5]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|q3[5]~34_combout\ = (\u5|q3\(5) & (!\u5|q3[4]~33\)) # (!\u5|q3\(5) & ((\u5|q3[4]~33\) # (GND)))
-- \u5|q3[5]~35\ = CARRY((!\u5|q3[4]~33\) # (!\u5|q3\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|q3\(5),
	datad => VCC,
	cin => \u5|q3[4]~33\,
	combout => \u5|q3[5]~34_combout\,
	cout => \u5|q3[5]~35\);

-- Location: FF_X32_Y10_N19
\u5|q3[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u5|q3[5]~34_combout\,
	sclr => \u5|q3~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|q3\(5));

-- Location: LCCOMB_X32_Y10_N20
\u5|q3[6]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|q3[6]~36_combout\ = (\u5|q3\(6) & (\u5|q3[5]~35\ $ (GND))) # (!\u5|q3\(6) & (!\u5|q3[5]~35\ & VCC))
-- \u5|q3[6]~37\ = CARRY((\u5|q3\(6) & !\u5|q3[5]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|q3\(6),
	datad => VCC,
	cin => \u5|q3[5]~35\,
	combout => \u5|q3[6]~36_combout\,
	cout => \u5|q3[6]~37\);

-- Location: FF_X32_Y10_N21
\u5|q3[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u5|q3[6]~36_combout\,
	sclr => \u5|q3~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|q3\(6));

-- Location: LCCOMB_X32_Y10_N22
\u5|q3[7]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|q3[7]~38_combout\ = (\u5|q3\(7) & (!\u5|q3[6]~37\)) # (!\u5|q3\(7) & ((\u5|q3[6]~37\) # (GND)))
-- \u5|q3[7]~39\ = CARRY((!\u5|q3[6]~37\) # (!\u5|q3\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|q3\(7),
	datad => VCC,
	cin => \u5|q3[6]~37\,
	combout => \u5|q3[7]~38_combout\,
	cout => \u5|q3[7]~39\);

-- Location: FF_X32_Y10_N23
\u5|q3[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u5|q3[7]~38_combout\,
	sclr => \u5|q3~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|q3\(7));

-- Location: LCCOMB_X32_Y10_N24
\u5|q3[8]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|q3[8]~40_combout\ = (\u5|q3\(8) & (\u5|q3[7]~39\ $ (GND))) # (!\u5|q3\(8) & (!\u5|q3[7]~39\ & VCC))
-- \u5|q3[8]~41\ = CARRY((\u5|q3\(8) & !\u5|q3[7]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|q3\(8),
	datad => VCC,
	cin => \u5|q3[7]~39\,
	combout => \u5|q3[8]~40_combout\,
	cout => \u5|q3[8]~41\);

-- Location: FF_X32_Y10_N25
\u5|q3[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u5|q3[8]~40_combout\,
	sclr => \u5|q3~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|q3\(8));

-- Location: LCCOMB_X32_Y10_N26
\u5|q3[9]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|q3[9]~42_combout\ = (\u5|q3\(9) & (!\u5|q3[8]~41\)) # (!\u5|q3\(9) & ((\u5|q3[8]~41\) # (GND)))
-- \u5|q3[9]~43\ = CARRY((!\u5|q3[8]~41\) # (!\u5|q3\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|q3\(9),
	datad => VCC,
	cin => \u5|q3[8]~41\,
	combout => \u5|q3[9]~42_combout\,
	cout => \u5|q3[9]~43\);

-- Location: FF_X32_Y10_N27
\u5|q3[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u5|q3[9]~42_combout\,
	sclr => \u5|q3~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|q3\(9));

-- Location: LCCOMB_X32_Y10_N28
\u5|q3[10]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|q3[10]~44_combout\ = (\u5|q3\(10) & (\u5|q3[9]~43\ $ (GND))) # (!\u5|q3\(10) & (!\u5|q3[9]~43\ & VCC))
-- \u5|q3[10]~45\ = CARRY((\u5|q3\(10) & !\u5|q3[9]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|q3\(10),
	datad => VCC,
	cin => \u5|q3[9]~43\,
	combout => \u5|q3[10]~44_combout\,
	cout => \u5|q3[10]~45\);

-- Location: FF_X33_Y9_N27
\u5|q3[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u5|q3[10]~44_combout\,
	sclr => \u5|q3~70_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|q3\(10));

-- Location: LCCOMB_X32_Y10_N30
\u5|q3[11]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|q3[11]~46_combout\ = (\u5|q3\(11) & (!\u5|q3[10]~45\)) # (!\u5|q3\(11) & ((\u5|q3[10]~45\) # (GND)))
-- \u5|q3[11]~47\ = CARRY((!\u5|q3[10]~45\) # (!\u5|q3\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|q3\(11),
	datad => VCC,
	cin => \u5|q3[10]~45\,
	combout => \u5|q3[11]~46_combout\,
	cout => \u5|q3[11]~47\);

-- Location: FF_X32_Y10_N31
\u5|q3[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u5|q3[11]~46_combout\,
	sclr => \u5|q3~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|q3\(11));

-- Location: LCCOMB_X32_Y9_N0
\u5|q3[12]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|q3[12]~48_combout\ = (\u5|q3\(12) & (\u5|q3[11]~47\ $ (GND))) # (!\u5|q3\(12) & (!\u5|q3[11]~47\ & VCC))
-- \u5|q3[12]~49\ = CARRY((\u5|q3\(12) & !\u5|q3[11]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|q3\(12),
	datad => VCC,
	cin => \u5|q3[11]~47\,
	combout => \u5|q3[12]~48_combout\,
	cout => \u5|q3[12]~49\);

-- Location: FF_X32_Y9_N1
\u5|q3[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u5|q3[12]~48_combout\,
	sclr => \u5|q3~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|q3\(12));

-- Location: LCCOMB_X32_Y9_N2
\u5|q3[13]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|q3[13]~50_combout\ = (\u5|q3\(13) & (!\u5|q3[12]~49\)) # (!\u5|q3\(13) & ((\u5|q3[12]~49\) # (GND)))
-- \u5|q3[13]~51\ = CARRY((!\u5|q3[12]~49\) # (!\u5|q3\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|q3\(13),
	datad => VCC,
	cin => \u5|q3[12]~49\,
	combout => \u5|q3[13]~50_combout\,
	cout => \u5|q3[13]~51\);

-- Location: FF_X32_Y9_N3
\u5|q3[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u5|q3[13]~50_combout\,
	sclr => \u5|q3~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|q3\(13));

-- Location: LCCOMB_X32_Y9_N4
\u5|q3[14]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|q3[14]~52_combout\ = (\u5|q3\(14) & (\u5|q3[13]~51\ $ (GND))) # (!\u5|q3\(14) & (!\u5|q3[13]~51\ & VCC))
-- \u5|q3[14]~53\ = CARRY((\u5|q3\(14) & !\u5|q3[13]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|q3\(14),
	datad => VCC,
	cin => \u5|q3[13]~51\,
	combout => \u5|q3[14]~52_combout\,
	cout => \u5|q3[14]~53\);

-- Location: FF_X32_Y9_N5
\u5|q3[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u5|q3[14]~52_combout\,
	sclr => \u5|q3~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|q3\(14));

-- Location: LCCOMB_X32_Y9_N6
\u5|q3[15]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|q3[15]~54_combout\ = (\u5|q3\(15) & (!\u5|q3[14]~53\)) # (!\u5|q3\(15) & ((\u5|q3[14]~53\) # (GND)))
-- \u5|q3[15]~55\ = CARRY((!\u5|q3[14]~53\) # (!\u5|q3\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|q3\(15),
	datad => VCC,
	cin => \u5|q3[14]~53\,
	combout => \u5|q3[15]~54_combout\,
	cout => \u5|q3[15]~55\);

-- Location: FF_X32_Y9_N7
\u5|q3[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u5|q3[15]~54_combout\,
	sclr => \u5|q3~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|q3\(15));

-- Location: LCCOMB_X32_Y9_N8
\u5|q3[16]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|q3[16]~56_combout\ = (\u5|q3\(16) & (\u5|q3[15]~55\ $ (GND))) # (!\u5|q3\(16) & (!\u5|q3[15]~55\ & VCC))
-- \u5|q3[16]~57\ = CARRY((\u5|q3\(16) & !\u5|q3[15]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|q3\(16),
	datad => VCC,
	cin => \u5|q3[15]~55\,
	combout => \u5|q3[16]~56_combout\,
	cout => \u5|q3[16]~57\);

-- Location: FF_X32_Y9_N9
\u5|q3[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u5|q3[16]~56_combout\,
	sclr => \u5|q3~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|q3\(16));

-- Location: LCCOMB_X32_Y9_N10
\u5|q3[17]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|q3[17]~58_combout\ = (\u5|q3\(17) & (!\u5|q3[16]~57\)) # (!\u5|q3\(17) & ((\u5|q3[16]~57\) # (GND)))
-- \u5|q3[17]~59\ = CARRY((!\u5|q3[16]~57\) # (!\u5|q3\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|q3\(17),
	datad => VCC,
	cin => \u5|q3[16]~57\,
	combout => \u5|q3[17]~58_combout\,
	cout => \u5|q3[17]~59\);

-- Location: FF_X32_Y9_N11
\u5|q3[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u5|q3[17]~58_combout\,
	sclr => \u5|q3~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|q3\(17));

-- Location: LCCOMB_X32_Y9_N12
\u5|q3[18]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|q3[18]~60_combout\ = (\u5|q3\(18) & (\u5|q3[17]~59\ $ (GND))) # (!\u5|q3\(18) & (!\u5|q3[17]~59\ & VCC))
-- \u5|q3[18]~61\ = CARRY((\u5|q3\(18) & !\u5|q3[17]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|q3\(18),
	datad => VCC,
	cin => \u5|q3[17]~59\,
	combout => \u5|q3[18]~60_combout\,
	cout => \u5|q3[18]~61\);

-- Location: FF_X32_Y9_N13
\u5|q3[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u5|q3[18]~60_combout\,
	sclr => \u5|q3~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|q3\(18));

-- Location: LCCOMB_X32_Y9_N14
\u5|q3[19]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|q3[19]~62_combout\ = (\u5|q3\(19) & (!\u5|q3[18]~61\)) # (!\u5|q3\(19) & ((\u5|q3[18]~61\) # (GND)))
-- \u5|q3[19]~63\ = CARRY((!\u5|q3[18]~61\) # (!\u5|q3\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|q3\(19),
	datad => VCC,
	cin => \u5|q3[18]~61\,
	combout => \u5|q3[19]~62_combout\,
	cout => \u5|q3[19]~63\);

-- Location: FF_X32_Y9_N15
\u5|q3[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u5|q3[19]~62_combout\,
	sclr => \u5|q3~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|q3\(19));

-- Location: LCCOMB_X32_Y9_N16
\u5|q3[20]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|q3[20]~64_combout\ = (\u5|q3\(20) & (\u5|q3[19]~63\ $ (GND))) # (!\u5|q3\(20) & (!\u5|q3[19]~63\ & VCC))
-- \u5|q3[20]~65\ = CARRY((\u5|q3\(20) & !\u5|q3[19]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|q3\(20),
	datad => VCC,
	cin => \u5|q3[19]~63\,
	combout => \u5|q3[20]~64_combout\,
	cout => \u5|q3[20]~65\);

-- Location: FF_X32_Y9_N17
\u5|q3[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u5|q3[20]~64_combout\,
	sclr => \u5|q3~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|q3\(20));

-- Location: FF_X32_Y9_N19
\u5|q3[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u5|q3[21]~66_combout\,
	sclr => \u5|q3~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|q3\(21));

-- Location: LCCOMB_X32_Y9_N26
\u5|LessThan5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|LessThan5~8_combout\ = (!\u5|q3\(21) & (!\u5|q3\(22) & ((!\u5|q3\(20)) # (!\u5|q3\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|q3\(21),
	datab => \u5|q3\(22),
	datac => \u5|q3\(19),
	datad => \u5|q3\(20),
	combout => \u5|LessThan5~8_combout\);

-- Location: LCCOMB_X32_Y10_N4
\u5|LessThan4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|LessThan4~0_combout\ = (((!\u5|q3\(7) & !\u5|q3\(6))) # (!\u5|q3\(8))) # (!\u5|q3\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|q3\(7),
	datab => \u5|q3\(6),
	datac => \u5|q3\(9),
	datad => \u5|q3\(8),
	combout => \u5|LessThan4~0_combout\);

-- Location: LCCOMB_X33_Y9_N24
\u5|clk_5hz~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|clk_5hz~0_combout\ = (\u5|q3\(12)) # ((\u5|q3\(11) & ((\u5|q3\(10)) # (!\u5|LessThan4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|q3\(11),
	datab => \u5|q3\(10),
	datac => \u5|q3\(12),
	datad => \u5|LessThan4~0_combout\,
	combout => \u5|clk_5hz~0_combout\);

-- Location: LCCOMB_X33_Y9_N16
\u5|clk_5hz~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|clk_5hz~1_combout\ = (\u5|q3\(15)) # ((\u5|q3\(14) & ((\u5|q3\(13)) # (\u5|clk_5hz~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|q3\(13),
	datab => \u5|q3\(14),
	datac => \u5|q3\(15),
	datad => \u5|clk_5hz~0_combout\,
	combout => \u5|clk_5hz~1_combout\);

-- Location: LCCOMB_X33_Y9_N10
\u5|clk_5hz~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|clk_5hz~2_combout\ = (\u5|q3\(19) & ((\u5|q3\(16)) # ((\u5|q3\(17)) # (\u5|clk_5hz~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|q3\(16),
	datab => \u5|q3\(19),
	datac => \u5|q3\(17),
	datad => \u5|clk_5hz~1_combout\,
	combout => \u5|clk_5hz~2_combout\);

-- Location: LCCOMB_X33_Y9_N28
\u5|clk_5hz~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|clk_5hz~3_combout\ = (\u5|q3\(21)) # ((\u5|q3\(20)) # ((\u5|q3\(18) & \u5|clk_5hz~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|q3\(18),
	datab => \u5|q3\(21),
	datac => \u5|q3\(20),
	datad => \u5|clk_5hz~2_combout\,
	combout => \u5|clk_5hz~3_combout\);

-- Location: LCCOMB_X33_Y9_N30
\u5|clk_5hz~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|clk_5hz~4_combout\ = (\u5|q3\(23) & (((\u5|clk_5hz~q\)))) # (!\u5|q3\(23) & (\u5|q3\(22) & ((\u5|clk_5hz~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|q3\(22),
	datab => \u5|q3\(23),
	datac => \u5|clk_5hz~q\,
	datad => \u5|clk_5hz~3_combout\,
	combout => \u5|clk_5hz~4_combout\);

-- Location: LCCOMB_X33_Y9_N6
\u5|clk_5hz~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|clk_5hz~5_combout\ = (\u5|clk_5hz~4_combout\) # ((\u5|q3\(23) & ((\u5|LessThan5~8_combout\) # (\u5|LessThan5~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|LessThan5~8_combout\,
	datab => \u5|q3\(23),
	datac => \u5|clk_5hz~4_combout\,
	datad => \u5|LessThan5~7_combout\,
	combout => \u5|clk_5hz~5_combout\);

-- Location: FF_X33_Y9_N7
\u5|clk_5hz\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u5|clk_5hz~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|clk_5hz~q\);

-- Location: CLKCTRL_G7
\u5|clk_5hz~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \u5|clk_5hz~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \u5|clk_5hz~clkctrl_outclk\);

-- Location: LCCOMB_X21_Y6_N28
\u8|count[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u8|count[0]~2_combout\ = !\u8|count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u8|count\(0),
	combout => \u8|count[0]~2_combout\);

-- Location: FF_X21_Y6_N29
\u8|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|clk_5hz~clkctrl_outclk\,
	d => \u8|count[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u8|count\(0));

-- Location: LCCOMB_X21_Y6_N12
\u8|count[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u8|count[1]~0_combout\ = \u8|count\(1) $ (\u8|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u8|count\(1),
	datad => \u8|count\(0),
	combout => \u8|count[1]~0_combout\);

-- Location: FF_X21_Y6_N13
\u8|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|clk_5hz~clkctrl_outclk\,
	d => \u8|count[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u8|count\(1));

-- Location: LCCOMB_X21_Y6_N22
\u8|count[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u8|count[2]~1_combout\ = \u8|count\(2) $ (((\u8|count\(1) & \u8|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|count\(1),
	datac => \u8|count\(2),
	datad => \u8|count\(0),
	combout => \u8|count[2]~1_combout\);

-- Location: FF_X21_Y6_N23
\u8|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|clk_5hz~clkctrl_outclk\,
	d => \u8|count[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u8|count\(2));

-- Location: LCCOMB_X21_Y6_N18
\u8|flow~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u8|flow~0_combout\ = (\u8|beep~0_combout\ & (\u8|beep~1_combout\ & (\u8|Equal0~0_combout\ & !\u8|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|beep~0_combout\,
	datab => \u8|beep~1_combout\,
	datac => \u8|Equal0~0_combout\,
	datad => \u8|LessThan1~0_combout\,
	combout => \u8|flow~0_combout\);

-- Location: LCCOMB_X21_Y6_N10
\u8|led[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u8|led[0]~0_combout\ = (\u8|count\(1) & (\u8|flow~0_combout\ & ((\u8|count\(0)) # (\u8|count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|count\(1),
	datab => \u8|count\(0),
	datac => \u8|count\(2),
	datad => \u8|flow~0_combout\,
	combout => \u8|led[0]~0_combout\);

-- Location: LCCOMB_X21_Y6_N30
\u8|led[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u8|led[1]~1_combout\ = (\u8|count\(1) & (\u8|flow~0_combout\ & ((\u8|count\(2)) # (!\u8|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|count\(1),
	datab => \u8|count\(0),
	datac => \u8|count\(2),
	datad => \u8|flow~0_combout\,
	combout => \u8|led[1]~1_combout\);

-- Location: LCCOMB_X21_Y6_N24
\u8|led[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u8|led[2]~2_combout\ = (\u8|flow~0_combout\ & ((\u8|count\(1) & ((\u8|count\(2)))) # (!\u8|count\(1) & (\u8|count\(0) & !\u8|count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|count\(1),
	datab => \u8|count\(0),
	datac => \u8|count\(2),
	datad => \u8|flow~0_combout\,
	combout => \u8|led[2]~2_combout\);

-- Location: LCCOMB_X21_Y6_N20
\u8|led[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u8|led[3]~3_combout\ = (\u8|flow~0_combout\ & ((\u8|count\(1) & ((\u8|count\(2)))) # (!\u8|count\(1) & (!\u8|count\(0) & !\u8|count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|count\(1),
	datab => \u8|count\(0),
	datac => \u8|count\(2),
	datad => \u8|flow~0_combout\,
	combout => \u8|led[3]~3_combout\);

ww_buzzer <= \buzzer~output_o\;

ww_segment_sel(0) <= \segment_sel[0]~output_o\;

ww_segment_sel(1) <= \segment_sel[1]~output_o\;

ww_segment_sel(2) <= \segment_sel[2]~output_o\;

ww_segment_sel(3) <= \segment_sel[3]~output_o\;

ww_segment_sel(4) <= \segment_sel[4]~output_o\;

ww_segment_sel(5) <= \segment_sel[5]~output_o\;

ww_segment_seg(0) <= \segment_seg[0]~output_o\;

ww_segment_seg(1) <= \segment_seg[1]~output_o\;

ww_segment_seg(2) <= \segment_seg[2]~output_o\;

ww_segment_seg(3) <= \segment_seg[3]~output_o\;

ww_segment_seg(4) <= \segment_seg[4]~output_o\;

ww_segment_seg(5) <= \segment_seg[5]~output_o\;

ww_segment_seg(6) <= \segment_seg[6]~output_o\;

ww_segment_seg(7) <= \segment_seg[7]~output_o\;

ww_flash_led(0) <= \flash_led[0]~output_o\;

ww_flash_led(1) <= \flash_led[1]~output_o\;

ww_flash_led(2) <= \flash_led[2]~output_o\;

ww_flash_led(3) <= \flash_led[3]~output_o\;
END structure;


