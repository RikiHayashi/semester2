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
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "10/08/2019 14:17:35"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	KADAI1 IS
    PORT (
	SWITCH : IN std_logic_vector(2 DOWNTO 0);
	LEDDSP : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END KADAI1;

-- Design Ports Information
-- LEDDSP[0]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDDSP[1]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDDSP[2]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDDSP[3]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDDSP[4]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDDSP[5]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDDSP[6]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SWITCH[2]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SWITCH[0]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SWITCH[1]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF KADAI1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SWITCH : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_LEDDSP : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \SWITCH[2]~input_o\ : std_logic;
SIGNAL \SWITCH[1]~input_o\ : std_logic;
SIGNAL \SWITCH[0]~input_o\ : std_logic;
SIGNAL \i0|Y~0_combout\ : std_logic;
SIGNAL \ALT_INV_SWITCH[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SWITCH[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_SWITCH[2]~input_o\ : std_logic;
SIGNAL \i0|ALT_INV_Y~0_combout\ : std_logic;

BEGIN

ww_SWITCH <= SWITCH;
LEDDSP <= ww_LEDDSP;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_SWITCH[1]~input_o\ <= NOT \SWITCH[1]~input_o\;
\ALT_INV_SWITCH[0]~input_o\ <= NOT \SWITCH[0]~input_o\;
\ALT_INV_SWITCH[2]~input_o\ <= NOT \SWITCH[2]~input_o\;
\i0|ALT_INV_Y~0_combout\ <= NOT \i0|Y~0_combout\;

-- Location: IOOBUF_X52_Y0_N53
\LEDDSP[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_LEDDSP(0));

-- Location: IOOBUF_X51_Y0_N36
\LEDDSP[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i0|ALT_INV_Y~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDDSP(1));

-- Location: IOOBUF_X48_Y0_N76
\LEDDSP[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i0|ALT_INV_Y~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDDSP(2));

-- Location: IOOBUF_X50_Y0_N36
\LEDDSP[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i0|Y~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDDSP(3));

-- Location: IOOBUF_X48_Y0_N93
\LEDDSP[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDDSP(4));

-- Location: IOOBUF_X50_Y0_N53
\LEDDSP[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDDSP(5));

-- Location: IOOBUF_X46_Y0_N36
\LEDDSP[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i0|ALT_INV_Y~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDDSP(6));

-- Location: IOIBUF_X14_Y0_N1
\SWITCH[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SWITCH(2),
	o => \SWITCH[2]~input_o\);

-- Location: IOIBUF_X11_Y0_N35
\SWITCH[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SWITCH(1),
	o => \SWITCH[1]~input_o\);

-- Location: IOIBUF_X10_Y0_N92
\SWITCH[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SWITCH(0),
	o => \SWITCH[0]~input_o\);

-- Location: LABCELL_X14_Y1_N0
\i0|Y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0|Y~0_combout\ = ( \SWITCH[0]~input_o\ & ( !\SWITCH[2]~input_o\ ) ) # ( !\SWITCH[0]~input_o\ & ( (!\SWITCH[2]~input_o\) # (!\SWITCH[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011111100110011001100110011111100111111001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SWITCH[2]~input_o\,
	datac => \ALT_INV_SWITCH[1]~input_o\,
	datae => \ALT_INV_SWITCH[0]~input_o\,
	combout => \i0|Y~0_combout\);

-- Location: LABCELL_X10_Y21_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


