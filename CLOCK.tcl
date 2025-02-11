# Copyright (C) 2018  Intel Corporation. All rights reserved.
# Your use of Intel Corporation's design tools, logic functions 
# and other software and tools, and its AMPP partner logic 
# functions, and any output files from any of the foregoing 
# (including device programming or simulation files), and any 
# associated documentation or information are expressly subject 
# to the terms and conditions of the Intel Program License 
# Subscription Agreement, the Intel Quartus Prime License Agreement,
# the Intel FPGA IP License Agreement, or other applicable license
# agreement, including, without limitation, that your use is for
# the sole purpose of programming logic devices manufactured by
# Intel and sold by Intel or its authorized distributors.  Please
# refer to the applicable agreement for further details.

# Quartus Prime: Generate Tcl File for Project
# File: CLOCK.tcl
# Generated on: Sat Jul 14 20:40:40 2018

# Load Quartus Prime Tcl Project package
package require ::quartus::project

set need_to_close_project 0
set make_assignments 1

# Check that the right project is open
if {[is_project_open]} {
	if {[string compare $quartus(project) "CLOCK"]} {
		puts "Project CLOCK is not open"
		set make_assignments 0
	}
} else {
	# Only open if not already open
	if {[project_exists CLOCK]} {
		project_open -revision CLOCK CLOCK
	} else {
		project_new -revision CLOCK CLOCK
	}
	set need_to_close_project 1
}

# Make assignments
if {$make_assignments} {
	set_global_assignment -name FAMILY "Cyclone IV E"
	set_global_assignment -name DEVICE EP4CE6F17C8
	set_global_assignment -name ORIGINAL_QUARTUS_VERSION 18.0.0
	set_global_assignment -name PROJECT_CREATION_TIME_DATE "00:10:55  JULY 12, 2018"
	set_global_assignment -name LAST_QUARTUS_VERSION "18.0.0 Lite Edition"
	set_global_assignment -name PROJECT_OUTPUT_DIRECTORY output_files
	set_global_assignment -name MIN_CORE_JUNCTION_TEMP 0
	set_global_assignment -name MAX_CORE_JUNCTION_TEMP 85
	set_global_assignment -name ERROR_CHECK_FREQUENCY_DIVISOR 1
	set_global_assignment -name NOMINAL_CORE_SUPPLY_VOLTAGE 1.2V
	set_global_assignment -name VHDL_FILE CLOCK.vhd
	set_global_assignment -name VHDL_FILE HOUR_BCD_COUNT.vhd
	set_global_assignment -name VHDL_FILE MINUTE_BCD_COUNT.vhd
	set_global_assignment -name VHDL_FILE SECOND_BCD_COUNT.vhd
	set_global_assignment -name VHDL_FILE SELTIME.vhd
	set_global_assignment -name VHDL_FILE DEV.vhd
	set_global_assignment -name VHDL_FILE KEY_DELAY.vhd
	set_global_assignment -name VHDL_FILE ALERT.vhd
	set_global_assignment -name VECTOR_WAVEFORM_FILE CLOCK.vwf
	set_global_assignment -name VECTOR_WAVEFORM_FILE HOUR.vwf
	set_global_assignment -name VECTOR_WAVEFORM_FILE MINUTE.vwf
	set_global_assignment -name BDF_FILE Block1.bdf
	set_global_assignment -name VECTOR_WAVEFORM_FILE SECOND.VWF
	set_global_assignment -name VECTOR_WAVEFORM_FILE SETTIME.VWF
	set_global_assignment -name VECTOR_WAVEFORM_FILE DEV.VWF
	set_global_assignment -name VECTOR_WAVEFORM_FILE KEY_DELAY.VWF
	set_global_assignment -name VECTOR_WAVEFORM_FILE ALERT.VWF
	set_global_assignment -name VECTOR_WAVEFORM_FILE Waveform.vwf
	set_global_assignment -name PARTITION_NETLIST_TYPE SOURCE -section_id Top
	set_global_assignment -name PARTITION_FITTER_PRESERVATION_LEVEL PLACEMENT_AND_ROUTING -section_id Top
	set_global_assignment -name PARTITION_COLOR 16764057 -section_id Top
	set_location_assignment PIN_C11 -to BUZZER
	set_location_assignment PIN_N13 -to C_RESET
	set_location_assignment PIN_M15 -to C_SET_MIN
	set_location_assignment PIN_M16 -to C_SET_HOUR
	set_location_assignment PIN_E16 -to C_SCALE_SEL
	set_location_assignment PIN_E1 -to CLK
	set_location_assignment PIN_N9 -to SEGMENT_SEL[5]
	set_location_assignment PIN_P9 -to SEGMENT_SEL[4]
	set_location_assignment PIN_M10 -to SEGMENT_SEL[3]
	set_location_assignment PIN_N11 -to SEGMENT_SEL[2]
	set_location_assignment PIN_P11 -to SEGMENT_SEL[1]
	set_location_assignment PIN_M11 -to SEGMENT_SEL[0]
	set_location_assignment PIN_R14 -to SEGMENT_SEG[0]
	set_location_assignment PIN_N16 -to SEGMENT_SEG[1]
	set_location_assignment PIN_P16 -to SEGMENT_SEG[2]
	set_location_assignment PIN_T15 -to SEGMENT_SEG[3]
	set_location_assignment PIN_P15 -to SEGMENT_SEG[4]
	set_location_assignment PIN_N12 -to SEGMENT_SEG[5]
	set_location_assignment PIN_N15 -to SEGMENT_SEG[6]
	set_location_assignment PIN_R16 -to SEGMENT_SEG[7]
	set_location_assignment PIN_E10 -to FLASH_LED[0]
	set_location_assignment PIN_F9 -to FLASH_LED[1]
	set_location_assignment PIN_C9 -to FLASH_LED[2]
	set_location_assignment PIN_D9 -to FLASH_LED[3]
	set_instance_assignment -name PARTITION_HIERARCHY root_partition -to | -section_id Top

	# Commit assignments
	export_assignments

	# Close project
	if {$need_to_close_project} {
		project_close
	}
}
