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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "02/21/2022 00:50:51"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          forca
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY forca_vhd_vec_tst IS
END forca_vhd_vec_tst;
ARCHITECTURE forca_arch OF forca_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL HEX0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX2 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX3 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX4 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX5 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX6 : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL V_SW : STD_LOGIC_VECTOR(10 DOWNTO 0);
COMPONENT forca
	PORT (
	HEX0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX2 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX3 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX4 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX5 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX6 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	V_SW : IN STD_LOGIC_VECTOR(10 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : forca
	PORT MAP (
-- list connections between master ports and signals
	HEX0 => HEX0,
	HEX1 => HEX1,
	HEX2 => HEX2,
	HEX3 => HEX3,
	HEX4 => HEX4,
	HEX5 => HEX5,
	HEX6 => HEX6,
	V_SW => V_SW
	);
-- V_SW[10]
t_prcs_V_SW_10: PROCESS
BEGIN
	V_SW(10) <= '0';
WAIT;
END PROCESS t_prcs_V_SW_10;
-- V_SW[9]
t_prcs_V_SW_9: PROCESS
BEGIN
	V_SW(9) <= '1';
WAIT;
END PROCESS t_prcs_V_SW_9;
-- V_SW[8]
t_prcs_V_SW_8: PROCESS
BEGIN
	V_SW(8) <= '1';
WAIT;
END PROCESS t_prcs_V_SW_8;
-- V_SW[7]
t_prcs_V_SW_7: PROCESS
BEGIN
	V_SW(7) <= '0';
WAIT;
END PROCESS t_prcs_V_SW_7;
-- V_SW[6]
t_prcs_V_SW_6: PROCESS
BEGIN
	V_SW(6) <= '1';
WAIT;
END PROCESS t_prcs_V_SW_6;
-- V_SW[5]
t_prcs_V_SW_5: PROCESS
BEGIN
	V_SW(5) <= '0';
WAIT;
END PROCESS t_prcs_V_SW_5;
-- V_SW[4]
t_prcs_V_SW_4: PROCESS
BEGIN
	V_SW(4) <= '0';
WAIT;
END PROCESS t_prcs_V_SW_4;
-- V_SW[3]
t_prcs_V_SW_3: PROCESS
BEGIN
	V_SW(3) <= '1';
WAIT;
END PROCESS t_prcs_V_SW_3;
-- V_SW[2]
t_prcs_V_SW_2: PROCESS
BEGIN
	V_SW(2) <= '0';
WAIT;
END PROCESS t_prcs_V_SW_2;
-- V_SW[1]
t_prcs_V_SW_1: PROCESS
BEGIN
	V_SW(1) <= '1';
WAIT;
END PROCESS t_prcs_V_SW_1;
-- V_SW[0]
t_prcs_V_SW_0: PROCESS
BEGIN
	V_SW(0) <= '0';
WAIT;
END PROCESS t_prcs_V_SW_0;
END forca_arch;
