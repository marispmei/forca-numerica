-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "02/21/2022 00:48:12"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
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
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


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


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	forca IS
    PORT (
	V_SW : IN std_logic_vector(10 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX6 : OUT std_logic_vector(2 DOWNTO 0)
	);
END forca;

-- Design Ports Information
-- HEX5[0]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_73,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_71,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[0]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[1]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[2]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V_SW[8]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V_SW[6]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V_SW[1]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V_SW[4]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V_SW[0]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V_SW[2]	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V_SW[9]	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V_SW[3]	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V_SW[7]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V_SW[5]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V_SW[10]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF forca IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_V_SW : std_logic_vector(10 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX6 : std_logic_vector(2 DOWNTO 0);
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX6[0]~output_o\ : std_logic;
SIGNAL \HEX6[1]~output_o\ : std_logic;
SIGNAL \HEX6[2]~output_o\ : std_logic;
SIGNAL \V_SW[10]~input_o\ : std_logic;
SIGNAL \V_SW[4]~input_o\ : std_logic;
SIGNAL \V_SW[8]~input_o\ : std_logic;
SIGNAL \V_SW[6]~input_o\ : std_logic;
SIGNAL \V_SW[1]~input_o\ : std_logic;
SIGNAL \out_main|process_0~1_combout\ : std_logic;
SIGNAL \V_SW[7]~input_o\ : std_logic;
SIGNAL \V_SW[3]~input_o\ : std_logic;
SIGNAL \V_SW[9]~input_o\ : std_logic;
SIGNAL \out_main|Add1~0_combout\ : std_logic;
SIGNAL \V_SW[2]~input_o\ : std_logic;
SIGNAL \V_SW[0]~input_o\ : std_logic;
SIGNAL \out_main|process_0~2_combout\ : std_logic;
SIGNAL \out_main|Add1~1_combout\ : std_logic;
SIGNAL \V_SW[5]~input_o\ : std_logic;
SIGNAL \out_main|process_0~0_combout\ : std_logic;
SIGNAL \out_main|process_0~3_combout\ : std_logic;
SIGNAL \out_main|Equal0~0_combout\ : std_logic;
SIGNAL \out_decod_5|Mux6~0_combout\ : std_logic;
SIGNAL \out_decod_5|Mux5~0_combout\ : std_logic;
SIGNAL \out_decod_5|Mux4~0_combout\ : std_logic;
SIGNAL \out_decod_5|Mux3~0_combout\ : std_logic;
SIGNAL \out_decod_5|Mux2~0_combout\ : std_logic;
SIGNAL \out_decod_5|Mux0~0_combout\ : std_logic;
SIGNAL \out_decod_4|Mux6~0_combout\ : std_logic;
SIGNAL \out_decod_4|Mux5~0_combout\ : std_logic;
SIGNAL \out_main|digito_5[1]~0_combout\ : std_logic;
SIGNAL \out_decod_3|Mux6~0_combout\ : std_logic;
SIGNAL \out_decod_3|Mux5~0_combout\ : std_logic;
SIGNAL \out_decod_3|Mux5~1_combout\ : std_logic;
SIGNAL \out_main|contador_vidas~0_combout\ : std_logic;
SIGNAL \out_main|contador_vidas~1_combout\ : std_logic;
SIGNAL \out_decod_3|Mux0~0_combout\ : std_logic;
SIGNAL \out_decod_2|Mux6~0_combout\ : std_logic;
SIGNAL \out_decod_2|Mux5~0_combout\ : std_logic;
SIGNAL \out_main|digito_3[1]~0_combout\ : std_logic;
SIGNAL \out_decod_1|Mux6~0_combout\ : std_logic;
SIGNAL \out_decod_1|Mux5~0_combout\ : std_logic;
SIGNAL \out_main|digito_2[2]~0_combout\ : std_logic;
SIGNAL \out_decod_1|Mux3~0_combout\ : std_logic;
SIGNAL \out_decod_1|Mux2~0_combout\ : std_logic;
SIGNAL \out_decod_0|Mux6~0_combout\ : std_logic;
SIGNAL \out_main|digito_1[0]~0_combout\ : std_logic;
SIGNAL \out_decod_0|Mux4~0_combout\ : std_logic;
SIGNAL \out_main|Mux1~0_combout\ : std_logic;
SIGNAL \out_main|vidas[1]~0_combout\ : std_logic;
SIGNAL \out_main|Mux1~1_combout\ : std_logic;
SIGNAL \out_main|ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \out_decod_0|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \out_decod_0|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \out_main|ALT_INV_digito_2[2]~0_combout\ : std_logic;
SIGNAL \out_decod_1|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \out_main|ALT_INV_digito_3[1]~0_combout\ : std_logic;
SIGNAL \out_decod_2|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \out_decod_3|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \out_main|ALT_INV_digito_5[1]~0_combout\ : std_logic;
SIGNAL \out_decod_4|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \out_decod_4|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \out_decod_5|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \out_decod_5|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \out_decod_5|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \out_decod_5|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \out_decod_5|ALT_INV_Mux6~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_V_SW <= V_SW;
HEX5 <= ww_HEX5;
HEX4 <= ww_HEX4;
HEX3 <= ww_HEX3;
HEX2 <= ww_HEX2;
HEX1 <= ww_HEX1;
HEX0 <= ww_HEX0;
HEX6 <= ww_HEX6;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\out_main|ALT_INV_Mux1~1_combout\ <= NOT \out_main|Mux1~1_combout\;
\out_decod_0|ALT_INV_Mux4~0_combout\ <= NOT \out_decod_0|Mux4~0_combout\;
\out_decod_0|ALT_INV_Mux6~0_combout\ <= NOT \out_decod_0|Mux6~0_combout\;
\out_main|ALT_INV_digito_2[2]~0_combout\ <= NOT \out_main|digito_2[2]~0_combout\;
\out_decod_1|ALT_INV_Mux6~0_combout\ <= NOT \out_decod_1|Mux6~0_combout\;
\out_main|ALT_INV_digito_3[1]~0_combout\ <= NOT \out_main|digito_3[1]~0_combout\;
\out_decod_2|ALT_INV_Mux6~0_combout\ <= NOT \out_decod_2|Mux6~0_combout\;
\out_decod_3|ALT_INV_Mux6~0_combout\ <= NOT \out_decod_3|Mux6~0_combout\;
\out_main|ALT_INV_digito_5[1]~0_combout\ <= NOT \out_main|digito_5[1]~0_combout\;
\out_decod_4|ALT_INV_Mux5~0_combout\ <= NOT \out_decod_4|Mux5~0_combout\;
\out_decod_4|ALT_INV_Mux6~0_combout\ <= NOT \out_decod_4|Mux6~0_combout\;
\out_decod_5|ALT_INV_Mux0~0_combout\ <= NOT \out_decod_5|Mux0~0_combout\;
\out_decod_5|ALT_INV_Mux2~0_combout\ <= NOT \out_decod_5|Mux2~0_combout\;
\out_decod_5|ALT_INV_Mux3~0_combout\ <= NOT \out_decod_5|Mux3~0_combout\;
\out_decod_5|ALT_INV_Mux5~0_combout\ <= NOT \out_decod_5|Mux5~0_combout\;
\out_decod_5|ALT_INV_Mux6~0_combout\ <= NOT \out_decod_5|Mux6~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X23_Y0_N16
\HEX5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_decod_5|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOOBUF_X34_Y17_N16
\HEX5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_decod_5|ALT_INV_Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X30_Y0_N2
\HEX5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_decod_5|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X34_Y3_N23
\HEX5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_decod_5|ALT_INV_Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\HEX5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_decod_5|ALT_INV_Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\HEX5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_decod_5|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\HEX5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_decod_5|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOOBUF_X34_Y2_N16
\HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_decod_4|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\HEX4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_decod_4|ALT_INV_Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\HEX4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_main|ALT_INV_digito_5[1]~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\HEX4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_decod_5|ALT_INV_Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X34_Y2_N23
\HEX4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_decod_4|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\HEX4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_decod_5|ALT_INV_Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\HEX4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_decod_4|ALT_INV_Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_decod_3|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X34_Y4_N16
\HEX3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_decod_3|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X32_Y0_N16
\HEX3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_decod_3|Mux5~1_combout\,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\HEX3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_decod_5|ALT_INV_Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\HEX3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_decod_3|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\HEX3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_decod_3|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X23_Y24_N9
\HEX3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_decod_3|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_decod_2|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_decod_2|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X34_Y17_N2
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_main|ALT_INV_digito_3[1]~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_decod_5|ALT_INV_Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_decod_5|ALT_INV_Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_decod_2|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X30_Y24_N23
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_decod_2|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X34_Y9_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_decod_1|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X34_Y18_N2
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_decod_1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X34_Y10_N9
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_main|ALT_INV_digito_2[2]~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X34_Y17_N23
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_decod_1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_decod_1|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_decod_1|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X32_Y0_N23
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_decod_5|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X34_Y9_N16
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_decod_0|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X34_Y18_N16
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_main|digito_1[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_decod_0|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X34_Y9_N9
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_decod_5|ALT_INV_Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_decod_1|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_decod_1|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X34_Y20_N9
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_main|digito_1[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X28_Y24_N2
\HEX6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_main|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[0]~output_o\);

-- Location: IOOBUF_X30_Y24_N2
\HEX6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_main|vidas[1]~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[1]~output_o\);

-- Location: IOOBUF_X28_Y24_N23
\HEX6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_main|ALT_INV_Mux1~1_combout\,
	devoe => ww_devoe,
	o => \HEX6[2]~output_o\);

-- Location: IOIBUF_X11_Y24_N15
\V_SW[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V_SW(10),
	o => \V_SW[10]~input_o\);

-- Location: IOIBUF_X23_Y24_N1
\V_SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V_SW(4),
	o => \V_SW[4]~input_o\);

-- Location: IOIBUF_X28_Y24_N8
\V_SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V_SW(8),
	o => \V_SW[8]~input_o\);

-- Location: IOIBUF_X23_Y24_N15
\V_SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V_SW(6),
	o => \V_SW[6]~input_o\);

-- Location: IOIBUF_X28_Y24_N15
\V_SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V_SW(1),
	o => \V_SW[1]~input_o\);

-- Location: LCCOMB_X28_Y20_N10
\out_main|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_main|process_0~1_combout\ = (\V_SW[4]~input_o\ & ((\V_SW[8]~input_o\ & (\V_SW[6]~input_o\ $ (!\V_SW[1]~input_o\))) # (!\V_SW[8]~input_o\ & ((!\V_SW[1]~input_o\) # (!\V_SW[6]~input_o\))))) # (!\V_SW[4]~input_o\ & (((!\V_SW[1]~input_o\) # 
-- (!\V_SW[6]~input_o\)) # (!\V_SW[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[4]~input_o\,
	datab => \V_SW[8]~input_o\,
	datac => \V_SW[6]~input_o\,
	datad => \V_SW[1]~input_o\,
	combout => \out_main|process_0~1_combout\);

-- Location: IOIBUF_X34_Y7_N8
\V_SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V_SW(7),
	o => \V_SW[7]~input_o\);

-- Location: IOIBUF_X34_Y19_N15
\V_SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V_SW(3),
	o => \V_SW[3]~input_o\);

-- Location: IOIBUF_X34_Y9_N22
\V_SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V_SW(9),
	o => \V_SW[9]~input_o\);

-- Location: LCCOMB_X28_Y10_N16
\out_main|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_main|Add1~0_combout\ = \V_SW[7]~input_o\ $ (\V_SW[3]~input_o\ $ (\V_SW[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[7]~input_o\,
	datac => \V_SW[3]~input_o\,
	datad => \V_SW[9]~input_o\,
	combout => \out_main|Add1~0_combout\);

-- Location: IOIBUF_X32_Y0_N8
\V_SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V_SW(2),
	o => \V_SW[2]~input_o\);

-- Location: IOIBUF_X34_Y4_N22
\V_SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V_SW(0),
	o => \V_SW[0]~input_o\);

-- Location: LCCOMB_X28_Y4_N10
\out_main|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_main|process_0~2_combout\ = (\out_main|process_0~1_combout\ & ((\out_main|Add1~0_combout\ & ((\V_SW[2]~input_o\) # (\V_SW[0]~input_o\))) # (!\out_main|Add1~0_combout\ & (\V_SW[2]~input_o\ & \V_SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_main|process_0~1_combout\,
	datab => \out_main|Add1~0_combout\,
	datac => \V_SW[2]~input_o\,
	datad => \V_SW[0]~input_o\,
	combout => \out_main|process_0~2_combout\);

-- Location: LCCOMB_X28_Y10_N10
\out_main|Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_main|Add1~1_combout\ = (\V_SW[7]~input_o\ & ((\V_SW[3]~input_o\) # (\V_SW[9]~input_o\))) # (!\V_SW[7]~input_o\ & (\V_SW[3]~input_o\ & \V_SW[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[7]~input_o\,
	datac => \V_SW[3]~input_o\,
	datad => \V_SW[9]~input_o\,
	combout => \out_main|Add1~1_combout\);

-- Location: IOIBUF_X25_Y0_N1
\V_SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V_SW(5),
	o => \V_SW[5]~input_o\);

-- Location: LCCOMB_X28_Y4_N16
\out_main|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_main|process_0~0_combout\ = (\V_SW[0]~input_o\ & (\out_main|Add1~0_combout\ & (\V_SW[2]~input_o\ & \V_SW[5]~input_o\))) # (!\V_SW[0]~input_o\ & (!\out_main|Add1~0_combout\ & (!\V_SW[2]~input_o\ & !\V_SW[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[0]~input_o\,
	datab => \out_main|Add1~0_combout\,
	datac => \V_SW[2]~input_o\,
	datad => \V_SW[5]~input_o\,
	combout => \out_main|process_0~0_combout\);

-- Location: LCCOMB_X28_Y4_N20
\out_main|process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_main|process_0~3_combout\ = (\out_main|process_0~2_combout\ & (\out_main|Add1~1_combout\ & \out_main|process_0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_main|process_0~2_combout\,
	datab => \out_main|Add1~1_combout\,
	datad => \out_main|process_0~0_combout\,
	combout => \out_main|process_0~3_combout\);

-- Location: LCCOMB_X28_Y20_N16
\out_main|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_main|Equal0~0_combout\ = (\V_SW[4]~input_o\ & ((\V_SW[8]~input_o\ & (\V_SW[6]~input_o\ $ (\V_SW[1]~input_o\))) # (!\V_SW[8]~input_o\ & (\V_SW[6]~input_o\ & \V_SW[1]~input_o\)))) # (!\V_SW[4]~input_o\ & (\V_SW[8]~input_o\ & (\V_SW[6]~input_o\ & 
-- \V_SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[4]~input_o\,
	datab => \V_SW[8]~input_o\,
	datac => \V_SW[6]~input_o\,
	datad => \V_SW[1]~input_o\,
	combout => \out_main|Equal0~0_combout\);

-- Location: LCCOMB_X28_Y4_N14
\out_decod_5|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_decod_5|Mux6~0_combout\ = (\V_SW[10]~input_o\) # ((!\out_main|process_0~3_combout\ & (!\V_SW[5]~input_o\ & !\out_main|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[10]~input_o\,
	datab => \out_main|process_0~3_combout\,
	datac => \V_SW[5]~input_o\,
	datad => \out_main|Equal0~0_combout\,
	combout => \out_decod_5|Mux6~0_combout\);

-- Location: LCCOMB_X28_Y10_N4
\out_decod_5|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_decod_5|Mux5~0_combout\ = (\out_main|process_0~3_combout\) # ((\V_SW[10]~input_o\) # (!\out_main|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \out_main|process_0~3_combout\,
	datac => \out_main|Equal0~0_combout\,
	datad => \V_SW[10]~input_o\,
	combout => \out_decod_5|Mux5~0_combout\);

-- Location: LCCOMB_X28_Y4_N24
\out_decod_5|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_decod_5|Mux4~0_combout\ = (!\V_SW[10]~input_o\ & ((\out_main|process_0~3_combout\) # ((\V_SW[5]~input_o\ & !\out_main|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[10]~input_o\,
	datab => \out_main|process_0~3_combout\,
	datac => \V_SW[5]~input_o\,
	datad => \out_main|Equal0~0_combout\,
	combout => \out_decod_5|Mux4~0_combout\);

-- Location: LCCOMB_X28_Y10_N6
\out_decod_5|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_decod_5|Mux3~0_combout\ = (!\out_main|process_0~3_combout\ & (\out_main|Equal0~0_combout\ & !\V_SW[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \out_main|process_0~3_combout\,
	datac => \out_main|Equal0~0_combout\,
	datad => \V_SW[10]~input_o\,
	combout => \out_decod_5|Mux3~0_combout\);

-- Location: LCCOMB_X28_Y10_N8
\out_decod_5|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_decod_5|Mux2~0_combout\ = (\V_SW[10]~input_o\) # ((!\out_main|process_0~3_combout\ & !\out_main|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \out_main|process_0~3_combout\,
	datac => \out_main|Equal0~0_combout\,
	datad => \V_SW[10]~input_o\,
	combout => \out_decod_5|Mux2~0_combout\);

-- Location: LCCOMB_X28_Y4_N18
\out_decod_5|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_decod_5|Mux0~0_combout\ = (\V_SW[10]~input_o\) # ((\out_main|process_0~3_combout\) # ((!\V_SW[5]~input_o\ & !\out_main|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[10]~input_o\,
	datab => \out_main|process_0~3_combout\,
	datac => \V_SW[5]~input_o\,
	datad => \out_main|Equal0~0_combout\,
	combout => \out_decod_5|Mux0~0_combout\);

-- Location: LCCOMB_X28_Y4_N4
\out_decod_4|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_decod_4|Mux6~0_combout\ = (\V_SW[10]~input_o\) # ((!\out_main|process_0~3_combout\ & (!\V_SW[2]~input_o\ & !\out_main|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[10]~input_o\,
	datab => \out_main|process_0~3_combout\,
	datac => \V_SW[2]~input_o\,
	datad => \out_main|Equal0~0_combout\,
	combout => \out_decod_4|Mux6~0_combout\);

-- Location: LCCOMB_X28_Y4_N22
\out_decod_4|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_decod_4|Mux5~0_combout\ = (\V_SW[10]~input_o\) # ((\out_main|process_0~3_combout\) # ((!\V_SW[2]~input_o\ & !\out_main|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[10]~input_o\,
	datab => \out_main|process_0~3_combout\,
	datac => \V_SW[2]~input_o\,
	datad => \out_main|Equal0~0_combout\,
	combout => \out_decod_4|Mux5~0_combout\);

-- Location: LCCOMB_X28_Y4_N8
\out_main|digito_5[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_main|digito_5[1]~0_combout\ = (((\V_SW[10]~input_o\) # (!\out_main|process_0~0_combout\)) # (!\out_main|Add1~1_combout\)) # (!\out_main|process_0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_main|process_0~2_combout\,
	datab => \out_main|Add1~1_combout\,
	datac => \V_SW[10]~input_o\,
	datad => \out_main|process_0~0_combout\,
	combout => \out_main|digito_5[1]~0_combout\);

-- Location: LCCOMB_X28_Y10_N18
\out_decod_3|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_decod_3|Mux6~0_combout\ = (\V_SW[10]~input_o\) # ((!\out_main|process_0~3_combout\ & (!\out_main|Equal0~0_combout\ & !\V_SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[10]~input_o\,
	datab => \out_main|process_0~3_combout\,
	datac => \out_main|Equal0~0_combout\,
	datad => \V_SW[0]~input_o\,
	combout => \out_decod_3|Mux6~0_combout\);

-- Location: LCCOMB_X28_Y4_N26
\out_decod_3|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_decod_3|Mux5~0_combout\ = (!\V_SW[10]~input_o\ & (!\out_main|process_0~3_combout\ & ((\out_main|Equal0~0_combout\) # (\V_SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[10]~input_o\,
	datab => \out_main|Equal0~0_combout\,
	datac => \out_main|process_0~3_combout\,
	datad => \V_SW[0]~input_o\,
	combout => \out_decod_3|Mux5~0_combout\);

-- Location: LCCOMB_X28_Y4_N28
\out_decod_3|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_decod_3|Mux5~1_combout\ = (!\V_SW[10]~input_o\ & ((\out_main|process_0~3_combout\) # ((!\out_main|Equal0~0_combout\ & \V_SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[10]~input_o\,
	datab => \out_main|Equal0~0_combout\,
	datac => \out_main|process_0~3_combout\,
	datad => \V_SW[0]~input_o\,
	combout => \out_decod_3|Mux5~1_combout\);

-- Location: LCCOMB_X28_Y20_N12
\out_main|contador_vidas~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_main|contador_vidas~0_combout\ = \V_SW[4]~input_o\ $ (\V_SW[8]~input_o\ $ (\V_SW[6]~input_o\ $ (\V_SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[4]~input_o\,
	datab => \V_SW[8]~input_o\,
	datac => \V_SW[6]~input_o\,
	datad => \V_SW[1]~input_o\,
	combout => \out_main|contador_vidas~0_combout\);

-- Location: LCCOMB_X28_Y20_N6
\out_main|contador_vidas~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_main|contador_vidas~1_combout\ = (\V_SW[4]~input_o\ & ((\V_SW[8]~input_o\ & (\V_SW[6]~input_o\ & \V_SW[1]~input_o\)) # (!\V_SW[8]~input_o\ & (!\V_SW[6]~input_o\ & !\V_SW[1]~input_o\)))) # (!\V_SW[4]~input_o\ & ((\V_SW[8]~input_o\ & 
-- (!\V_SW[6]~input_o\ & !\V_SW[1]~input_o\)) # (!\V_SW[8]~input_o\ & ((!\V_SW[1]~input_o\) # (!\V_SW[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000100010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[4]~input_o\,
	datab => \V_SW[8]~input_o\,
	datac => \V_SW[6]~input_o\,
	datad => \V_SW[1]~input_o\,
	combout => \out_main|contador_vidas~1_combout\);

-- Location: LCCOMB_X28_Y20_N8
\out_decod_3|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_decod_3|Mux0~0_combout\ = (\out_main|contador_vidas~0_combout\ & (!\out_main|process_0~3_combout\ & (!\V_SW[10]~input_o\ & !\out_main|contador_vidas~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_main|contador_vidas~0_combout\,
	datab => \out_main|process_0~3_combout\,
	datac => \V_SW[10]~input_o\,
	datad => \out_main|contador_vidas~1_combout\,
	combout => \out_decod_3|Mux0~0_combout\);

-- Location: LCCOMB_X28_Y10_N12
\out_decod_2|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_decod_2|Mux6~0_combout\ = (\V_SW[10]~input_o\) # ((!\out_main|process_0~3_combout\ & (!\out_main|Equal0~0_combout\ & !\V_SW[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[10]~input_o\,
	datab => \out_main|process_0~3_combout\,
	datac => \out_main|Equal0~0_combout\,
	datad => \V_SW[9]~input_o\,
	combout => \out_decod_2|Mux6~0_combout\);

-- Location: LCCOMB_X28_Y10_N22
\out_decod_2|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_decod_2|Mux5~0_combout\ = (!\V_SW[10]~input_o\ & (!\out_main|process_0~3_combout\ & ((\out_main|Equal0~0_combout\) # (\V_SW[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[10]~input_o\,
	datab => \out_main|process_0~3_combout\,
	datac => \out_main|Equal0~0_combout\,
	datad => \V_SW[9]~input_o\,
	combout => \out_decod_2|Mux5~0_combout\);

-- Location: LCCOMB_X28_Y10_N24
\out_main|digito_3[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_main|digito_3[1]~0_combout\ = (\V_SW[10]~input_o\) # ((!\out_main|process_0~3_combout\ & ((\out_main|Equal0~0_combout\) # (!\V_SW[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[10]~input_o\,
	datab => \out_main|process_0~3_combout\,
	datac => \out_main|Equal0~0_combout\,
	datad => \V_SW[9]~input_o\,
	combout => \out_main|digito_3[1]~0_combout\);

-- Location: LCCOMB_X28_Y10_N26
\out_decod_1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_decod_1|Mux6~0_combout\ = (\V_SW[10]~input_o\) # ((!\V_SW[7]~input_o\ & (!\out_main|process_0~3_combout\ & !\out_main|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[7]~input_o\,
	datab => \out_main|process_0~3_combout\,
	datac => \out_main|Equal0~0_combout\,
	datad => \V_SW[10]~input_o\,
	combout => \out_decod_1|Mux6~0_combout\);

-- Location: LCCOMB_X28_Y10_N20
\out_decod_1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_decod_1|Mux5~0_combout\ = (!\out_main|process_0~3_combout\ & (!\V_SW[10]~input_o\ & ((\V_SW[7]~input_o\) # (\out_main|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[7]~input_o\,
	datab => \out_main|process_0~3_combout\,
	datac => \out_main|Equal0~0_combout\,
	datad => \V_SW[10]~input_o\,
	combout => \out_decod_1|Mux5~0_combout\);

-- Location: LCCOMB_X28_Y10_N30
\out_main|digito_2[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_main|digito_2[2]~0_combout\ = (\V_SW[10]~input_o\) # ((!\out_main|process_0~3_combout\ & ((\out_main|Equal0~0_combout\) # (!\V_SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[7]~input_o\,
	datab => \out_main|process_0~3_combout\,
	datac => \out_main|Equal0~0_combout\,
	datad => \V_SW[10]~input_o\,
	combout => \out_main|digito_2[2]~0_combout\);

-- Location: LCCOMB_X28_Y10_N0
\out_decod_1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_decod_1|Mux3~0_combout\ = (\out_main|process_0~3_combout\) # ((\V_SW[10]~input_o\) # ((!\V_SW[7]~input_o\ & !\out_main|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[7]~input_o\,
	datab => \out_main|process_0~3_combout\,
	datac => \out_main|Equal0~0_combout\,
	datad => \V_SW[10]~input_o\,
	combout => \out_decod_1|Mux3~0_combout\);

-- Location: LCCOMB_X28_Y20_N2
\out_decod_1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_decod_1|Mux2~0_combout\ = (!\V_SW[10]~input_o\ & ((\out_main|process_0~3_combout\) # (\out_main|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \out_main|process_0~3_combout\,
	datac => \V_SW[10]~input_o\,
	datad => \out_main|Equal0~0_combout\,
	combout => \out_decod_1|Mux2~0_combout\);

-- Location: LCCOMB_X28_Y10_N2
\out_decod_0|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_decod_0|Mux6~0_combout\ = (\V_SW[10]~input_o\) # ((!\V_SW[3]~input_o\ & (!\out_main|process_0~3_combout\ & !\out_main|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[3]~input_o\,
	datab => \out_main|process_0~3_combout\,
	datac => \out_main|Equal0~0_combout\,
	datad => \V_SW[10]~input_o\,
	combout => \out_decod_0|Mux6~0_combout\);

-- Location: LCCOMB_X28_Y10_N28
\out_main|digito_1[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_main|digito_1[0]~0_combout\ = (!\out_main|process_0~3_combout\ & (!\V_SW[10]~input_o\ & ((\V_SW[3]~input_o\) # (\out_main|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[3]~input_o\,
	datab => \out_main|process_0~3_combout\,
	datac => \out_main|Equal0~0_combout\,
	datad => \V_SW[10]~input_o\,
	combout => \out_main|digito_1[0]~0_combout\);

-- Location: LCCOMB_X28_Y10_N14
\out_decod_0|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_decod_0|Mux4~0_combout\ = (\V_SW[10]~input_o\) # ((!\out_main|process_0~3_combout\ & ((\out_main|Equal0~0_combout\) # (!\V_SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[3]~input_o\,
	datab => \out_main|process_0~3_combout\,
	datac => \out_main|Equal0~0_combout\,
	datad => \V_SW[10]~input_o\,
	combout => \out_decod_0|Mux4~0_combout\);

-- Location: LCCOMB_X28_Y20_N4
\out_main|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_main|Mux1~0_combout\ = ((\V_SW[10]~input_o\) # (\out_main|contador_vidas~1_combout\)) # (!\out_main|contador_vidas~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_main|contador_vidas~0_combout\,
	datac => \V_SW[10]~input_o\,
	datad => \out_main|contador_vidas~1_combout\,
	combout => \out_main|Mux1~0_combout\);

-- Location: LCCOMB_X28_Y20_N14
\out_main|vidas[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_main|vidas[1]~0_combout\ = (\V_SW[10]~input_o\) # (\out_main|contador_vidas~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \V_SW[10]~input_o\,
	datad => \out_main|contador_vidas~1_combout\,
	combout => \out_main|vidas[1]~0_combout\);

-- Location: LCCOMB_X28_Y20_N0
\out_main|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_main|Mux1~1_combout\ = (!\V_SW[10]~input_o\ & ((\out_main|contador_vidas~0_combout\) # (!\out_main|contador_vidas~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_main|contador_vidas~0_combout\,
	datac => \V_SW[10]~input_o\,
	datad => \out_main|contador_vidas~1_combout\,
	combout => \out_main|Mux1~1_combout\);

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX6(0) <= \HEX6[0]~output_o\;

ww_HEX6(1) <= \HEX6[1]~output_o\;

ww_HEX6(2) <= \HEX6[2]~output_o\;
END structure;


