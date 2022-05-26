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

-- DATE "05/25/2022 16:30:54"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
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

ENTITY 	ALU IS
    PORT (
	A : IN std_logic_vector(7 DOWNTO 0);
	B : IN std_logic_vector(7 DOWNTO 0);
	ALU_Sel : IN std_logic_vector(2 DOWNTO 0);
	NZVC : BUFFER std_logic_vector(6 DOWNTO 0);
	Result : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END ALU;

-- Design Ports Information
-- NZVC[0]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NZVC[1]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NZVC[2]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NZVC[3]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NZVC[4]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NZVC[5]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NZVC[6]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[0]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[1]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[2]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[3]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[4]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[5]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[6]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[7]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Sel[1]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Sel[2]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Sel[0]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ALU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ALU_Sel : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_NZVC : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Result : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \Add1~6\ : std_logic;
SIGNAL \Add1~26\ : std_logic;
SIGNAL \Add1~30\ : std_logic;
SIGNAL \Add1~18\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~1_sumout\ : std_logic;
SIGNAL \ALU_Sel[1]~input_o\ : std_logic;
SIGNAL \ALU_Sel[0]~input_o\ : std_logic;
SIGNAL \ALU_Sel[2]~input_o\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Add1~9_sumout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Add1~17_sumout\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Add1~29_sumout\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Add1~21_sumout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Add1~25_sumout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Add1~13_sumout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Add1~5_sumout\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~33_sumout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \LessThan1~3_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \ALT_INV_A[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_ALU_Sel[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_ALU_Sel[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_ALU_Sel[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \ALT_INV_Add1~33_sumout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_ALU_Sel <= ALU_Sel;
NZVC <= ww_NZVC;
Result <= ww_Result;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Add0~29_sumout\ <= NOT \Add0~29_sumout\;
\ALT_INV_Add1~29_sumout\ <= NOT \Add1~29_sumout\;
\ALT_INV_Add0~25_sumout\ <= NOT \Add0~25_sumout\;
\ALT_INV_Add1~25_sumout\ <= NOT \Add1~25_sumout\;
\ALT_INV_Add0~21_sumout\ <= NOT \Add0~21_sumout\;
\ALT_INV_Add1~21_sumout\ <= NOT \Add1~21_sumout\;
\ALT_INV_Add0~17_sumout\ <= NOT \Add0~17_sumout\;
\ALT_INV_Add1~17_sumout\ <= NOT \Add1~17_sumout\;
\ALT_INV_Add0~13_sumout\ <= NOT \Add0~13_sumout\;
\ALT_INV_Add1~13_sumout\ <= NOT \Add1~13_sumout\;
\ALT_INV_Add0~9_sumout\ <= NOT \Add0~9_sumout\;
\ALT_INV_Add1~9_sumout\ <= NOT \Add1~9_sumout\;
\ALT_INV_Add0~5_sumout\ <= NOT \Add0~5_sumout\;
\ALT_INV_Add1~5_sumout\ <= NOT \Add1~5_sumout\;
\ALT_INV_Add0~1_sumout\ <= NOT \Add0~1_sumout\;
\ALT_INV_Add1~1_sumout\ <= NOT \Add1~1_sumout\;
\ALT_INV_A[2]~input_o\ <= NOT \A[2]~input_o\;
\ALT_INV_B[2]~input_o\ <= NOT \B[2]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_B[1]~input_o\ <= NOT \B[1]~input_o\;
\ALT_INV_A[6]~input_o\ <= NOT \A[6]~input_o\;
\ALT_INV_B[6]~input_o\ <= NOT \B[6]~input_o\;
\ALT_INV_A[3]~input_o\ <= NOT \A[3]~input_o\;
\ALT_INV_B[3]~input_o\ <= NOT \B[3]~input_o\;
\ALT_INV_A[4]~input_o\ <= NOT \A[4]~input_o\;
\ALT_INV_B[4]~input_o\ <= NOT \B[4]~input_o\;
\ALT_INV_A[5]~input_o\ <= NOT \A[5]~input_o\;
\ALT_INV_B[5]~input_o\ <= NOT \B[5]~input_o\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\ALT_INV_A[7]~input_o\ <= NOT \A[7]~input_o\;
\ALT_INV_B[7]~input_o\ <= NOT \B[7]~input_o\;
\ALT_INV_ALU_Sel[0]~input_o\ <= NOT \ALU_Sel[0]~input_o\;
\ALT_INV_ALU_Sel[2]~input_o\ <= NOT \ALU_Sel[2]~input_o\;
\ALT_INV_ALU_Sel[1]~input_o\ <= NOT \ALU_Sel[1]~input_o\;
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_LessThan1~2_combout\ <= NOT \LessThan1~2_combout\;
\ALT_INV_LessThan1~1_combout\ <= NOT \LessThan1~1_combout\;
\ALT_INV_LessThan1~0_combout\ <= NOT \LessThan1~0_combout\;
\ALT_INV_LessThan0~2_combout\ <= NOT \LessThan0~2_combout\;
\ALT_INV_LessThan0~1_combout\ <= NOT \LessThan0~1_combout\;
\ALT_INV_LessThan0~0_combout\ <= NOT \LessThan0~0_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_Equal1~1_combout\ <= NOT \Equal1~1_combout\;
\ALT_INV_Mux6~1_combout\ <= NOT \Mux6~1_combout\;
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;
\ALT_INV_Equal1~0_combout\ <= NOT \Equal1~0_combout\;
\ALT_INV_Mux7~1_combout\ <= NOT \Mux7~1_combout\;
\ALT_INV_Mux7~0_combout\ <= NOT \Mux7~0_combout\;
\ALT_INV_Mux2~2_combout\ <= NOT \Mux2~2_combout\;
\ALT_INV_Mux5~1_combout\ <= NOT \Mux5~1_combout\;
\ALT_INV_Mux5~0_combout\ <= NOT \Mux5~0_combout\;
\ALT_INV_Mux4~1_combout\ <= NOT \Mux4~1_combout\;
\ALT_INV_Mux4~0_combout\ <= NOT \Mux4~0_combout\;
\ALT_INV_Mux3~1_combout\ <= NOT \Mux3~1_combout\;
\ALT_INV_Mux3~0_combout\ <= NOT \Mux3~0_combout\;
\ALT_INV_Mux2~1_combout\ <= NOT \Mux2~1_combout\;
\ALT_INV_Mux1~0_combout\ <= NOT \Mux1~0_combout\;
\ALT_INV_Mux2~0_combout\ <= NOT \Mux2~0_combout\;
\ALT_INV_Mux10~0_combout\ <= NOT \Mux10~0_combout\;
\ALT_INV_Mux8~0_combout\ <= NOT \Mux8~0_combout\;
\ALT_INV_Add1~33_sumout\ <= NOT \Add1~33_sumout\;

-- Location: IOOBUF_X70_Y0_N53
\NZVC[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~1_combout\,
	devoe => ww_devoe,
	o => ww_NZVC(0));

-- Location: IOOBUF_X89_Y4_N62
\NZVC[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~0_combout\,
	devoe => ww_devoe,
	o => ww_NZVC(1));

-- Location: IOOBUF_X89_Y36_N56
\NZVC[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal1~2_combout\,
	devoe => ww_devoe,
	o => ww_NZVC(2));

-- Location: IOOBUF_X89_Y8_N5
\NZVC[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~1_combout\,
	devoe => ww_devoe,
	o => ww_NZVC(3));

-- Location: IOOBUF_X89_Y8_N56
\NZVC[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LessThan0~3_combout\,
	devoe => ww_devoe,
	o => ww_NZVC(4));

-- Location: IOOBUF_X89_Y9_N56
\NZVC[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LessThan1~3_combout\,
	devoe => ww_devoe,
	o => ww_NZVC(5));

-- Location: IOOBUF_X89_Y35_N45
\NZVC[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~3_combout\,
	devoe => ww_devoe,
	o => ww_NZVC(6));

-- Location: IOOBUF_X72_Y0_N2
\Result[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~0_combout\,
	devoe => ww_devoe,
	o => ww_Result(0));

-- Location: IOOBUF_X89_Y36_N5
\Result[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~1_combout\,
	devoe => ww_devoe,
	o => ww_Result(1));

-- Location: IOOBUF_X89_Y35_N79
\Result[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~1_combout\,
	devoe => ww_devoe,
	o => ww_Result(2));

-- Location: IOOBUF_X89_Y8_N39
\Result[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~1_combout\,
	devoe => ww_devoe,
	o => ww_Result(3));

-- Location: IOOBUF_X89_Y36_N22
\Result[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~1_combout\,
	devoe => ww_devoe,
	o => ww_Result(4));

-- Location: IOOBUF_X89_Y8_N22
\Result[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~1_combout\,
	devoe => ww_devoe,
	o => ww_Result(5));

-- Location: IOOBUF_X89_Y4_N79
\Result[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~3_combout\,
	devoe => ww_devoe,
	o => ww_Result(6));

-- Location: IOOBUF_X70_Y0_N2
\Result[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~1_combout\,
	devoe => ww_devoe,
	o => ww_Result(7));

-- Location: IOIBUF_X89_Y38_N38
\A[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X89_Y37_N55
\B[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X89_Y38_N4
\B[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X89_Y35_N61
\A[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X89_Y9_N38
\B[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X89_Y36_N38
\A[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X89_Y6_N38
\A[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X89_Y9_N4
\B[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X89_Y38_N55
\A[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X89_Y6_N55
\B[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X89_Y37_N38
\A[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X89_Y37_N21
\B[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X89_Y9_N21
\B[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X89_Y6_N4
\A[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X89_Y37_N4
\B[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X89_Y4_N95
\A[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LABCELL_X83_Y20_N0
\Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~5_sumout\ = SUM(( \B[0]~input_o\ ) + ( \A[0]~input_o\ ) + ( !VCC ))
-- \Add1~6\ = CARRY(( \B[0]~input_o\ ) + ( \A[0]~input_o\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[0]~input_o\,
	cin => GND,
	sumout => \Add1~5_sumout\,
	cout => \Add1~6\);

-- Location: LABCELL_X83_Y20_N3
\Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~25_sumout\ = SUM(( \B[1]~input_o\ ) + ( \A[1]~input_o\ ) + ( \Add1~6\ ))
-- \Add1~26\ = CARRY(( \B[1]~input_o\ ) + ( \A[1]~input_o\ ) + ( \Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	cin => \Add1~6\,
	sumout => \Add1~25_sumout\,
	cout => \Add1~26\);

-- Location: LABCELL_X83_Y20_N6
\Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~29_sumout\ = SUM(( \B[2]~input_o\ ) + ( \A[2]~input_o\ ) + ( \Add1~26\ ))
-- \Add1~30\ = CARRY(( \B[2]~input_o\ ) + ( \A[2]~input_o\ ) + ( \Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[2]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	cin => \Add1~26\,
	sumout => \Add1~29_sumout\,
	cout => \Add1~30\);

-- Location: LABCELL_X83_Y20_N9
\Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~17_sumout\ = SUM(( \B[3]~input_o\ ) + ( \A[3]~input_o\ ) + ( \Add1~30\ ))
-- \Add1~18\ = CARRY(( \B[3]~input_o\ ) + ( \A[3]~input_o\ ) + ( \Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datad => \ALT_INV_B[3]~input_o\,
	cin => \Add1~30\,
	sumout => \Add1~17_sumout\,
	cout => \Add1~18\);

-- Location: LABCELL_X83_Y20_N12
\Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~13_sumout\ = SUM(( \B[4]~input_o\ ) + ( \A[4]~input_o\ ) + ( \Add1~18\ ))
-- \Add1~14\ = CARRY(( \B[4]~input_o\ ) + ( \A[4]~input_o\ ) + ( \Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[4]~input_o\,
	datac => \ALT_INV_B[4]~input_o\,
	cin => \Add1~18\,
	sumout => \Add1~13_sumout\,
	cout => \Add1~14\);

-- Location: LABCELL_X83_Y20_N15
\Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~9_sumout\ = SUM(( \B[5]~input_o\ ) + ( \A[5]~input_o\ ) + ( \Add1~14\ ))
-- \Add1~10\ = CARRY(( \B[5]~input_o\ ) + ( \A[5]~input_o\ ) + ( \Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_A[5]~input_o\,
	cin => \Add1~14\,
	sumout => \Add1~9_sumout\,
	cout => \Add1~10\);

-- Location: LABCELL_X83_Y20_N18
\Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~21_sumout\ = SUM(( \B[6]~input_o\ ) + ( \A[6]~input_o\ ) + ( \Add1~10\ ))
-- \Add1~22\ = CARRY(( \B[6]~input_o\ ) + ( \A[6]~input_o\ ) + ( \Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[6]~input_o\,
	datac => \ALT_INV_A[6]~input_o\,
	cin => \Add1~10\,
	sumout => \Add1~21_sumout\,
	cout => \Add1~22\);

-- Location: LABCELL_X83_Y20_N21
\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_sumout\ = SUM(( \A[7]~input_o\ ) + ( \B[7]~input_o\ ) + ( \Add1~22\ ))
-- \Add1~2\ = CARRY(( \A[7]~input_o\ ) + ( \B[7]~input_o\ ) + ( \Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[7]~input_o\,
	dataf => \ALT_INV_B[7]~input_o\,
	cin => \Add1~22\,
	sumout => \Add1~1_sumout\,
	cout => \Add1~2\);

-- Location: IOIBUF_X89_Y6_N21
\ALU_Sel[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALU_Sel(1),
	o => \ALU_Sel[1]~input_o\);

-- Location: IOIBUF_X89_Y35_N95
\ALU_Sel[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALU_Sel(0),
	o => \ALU_Sel[0]~input_o\);

-- Location: IOIBUF_X89_Y4_N44
\ALU_Sel[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALU_Sel(2),
	o => \ALU_Sel[2]~input_o\);

-- Location: MLABCELL_X84_Y20_N15
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( \ALU_Sel[2]~input_o\ & ( (\ALU_Sel[0]~input_o\) # (\ALU_Sel[1]~input_o\) ) ) # ( !\ALU_Sel[2]~input_o\ & ( (!\ALU_Sel[1]~input_o\ & !\ALU_Sel[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ALU_Sel[1]~input_o\,
	datad => \ALT_INV_ALU_Sel[0]~input_o\,
	dataf => \ALT_INV_ALU_Sel[2]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: MLABCELL_X84_Y20_N48
\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( \A[7]~input_o\ & ( (!\ALU_Sel[2]~input_o\ & (\ALU_Sel[1]~input_o\ & ((\B[7]~input_o\) # (\ALU_Sel[0]~input_o\)))) # (\ALU_Sel[2]~input_o\ & (((!\B[7]~input_o\)))) ) ) # ( !\A[7]~input_o\ & ( (\B[7]~input_o\ & (((\ALU_Sel[1]~input_o\ & 
-- \ALU_Sel[0]~input_o\)) # (\ALU_Sel[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010111000000000101011101010111001000100101011100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALU_Sel[2]~input_o\,
	datab => \ALT_INV_ALU_Sel[1]~input_o\,
	datac => \ALT_INV_ALU_Sel[0]~input_o\,
	datad => \ALT_INV_B[7]~input_o\,
	dataf => \ALT_INV_A[7]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LABCELL_X85_Y20_N0
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( !\A[0]~input_o\ $ (!\B[0]~input_o\) ) + ( !VCC ) + ( !VCC ))
-- \Add0~6\ = CARRY(( !\A[0]~input_o\ $ (!\B[0]~input_o\) ) + ( !VCC ) + ( !VCC ))
-- \Add0~7\ = SHARE((!\A[0]~input_o\) # (\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001111111100000000000000000011001111001100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[0]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	cin => GND,
	sharein => GND,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\,
	shareout => \Add0~7\);

-- Location: LABCELL_X85_Y20_N3
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( !\A[1]~input_o\ $ (\B[1]~input_o\) ) + ( \Add0~7\ ) + ( \Add0~6\ ))
-- \Add0~26\ = CARRY(( !\A[1]~input_o\ $ (\B[1]~input_o\) ) + ( \Add0~7\ ) + ( \Add0~6\ ))
-- \Add0~27\ = SHARE((!\A[1]~input_o\ & \B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010101000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[1]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	cin => \Add0~6\,
	sharein => \Add0~7\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\,
	shareout => \Add0~27\);

-- Location: LABCELL_X85_Y20_N6
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( !\B[2]~input_o\ $ (\A[2]~input_o\) ) + ( \Add0~27\ ) + ( \Add0~26\ ))
-- \Add0~30\ = CARRY(( !\B[2]~input_o\ $ (\A[2]~input_o\) ) + ( \Add0~27\ ) + ( \Add0~26\ ))
-- \Add0~31\ = SHARE((\B[2]~input_o\ & !\A[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_A[2]~input_o\,
	cin => \Add0~26\,
	sharein => \Add0~27\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\,
	shareout => \Add0~31\);

-- Location: LABCELL_X85_Y20_N9
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( !\A[3]~input_o\ $ (\B[3]~input_o\) ) + ( \Add0~31\ ) + ( \Add0~30\ ))
-- \Add0~18\ = CARRY(( !\A[3]~input_o\ $ (\B[3]~input_o\) ) + ( \Add0~31\ ) + ( \Add0~30\ ))
-- \Add0~19\ = SHARE((!\A[3]~input_o\ & \B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	cin => \Add0~30\,
	sharein => \Add0~31\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\,
	shareout => \Add0~19\);

-- Location: LABCELL_X85_Y20_N12
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( !\A[4]~input_o\ $ (\B[4]~input_o\) ) + ( \Add0~19\ ) + ( \Add0~18\ ))
-- \Add0~14\ = CARRY(( !\A[4]~input_o\ $ (\B[4]~input_o\) ) + ( \Add0~19\ ) + ( \Add0~18\ ))
-- \Add0~15\ = SHARE((!\A[4]~input_o\ & \B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[4]~input_o\,
	datac => \ALT_INV_B[4]~input_o\,
	cin => \Add0~18\,
	sharein => \Add0~19\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\,
	shareout => \Add0~15\);

-- Location: LABCELL_X85_Y20_N15
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( !\A[5]~input_o\ $ (\B[5]~input_o\) ) + ( \Add0~15\ ) + ( \Add0~14\ ))
-- \Add0~10\ = CARRY(( !\A[5]~input_o\ $ (\B[5]~input_o\) ) + ( \Add0~15\ ) + ( \Add0~14\ ))
-- \Add0~11\ = SHARE((!\A[5]~input_o\ & \B[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[5]~input_o\,
	datac => \ALT_INV_B[5]~input_o\,
	cin => \Add0~14\,
	sharein => \Add0~15\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\,
	shareout => \Add0~11\);

-- Location: LABCELL_X85_Y20_N18
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( !\A[6]~input_o\ $ (\B[6]~input_o\) ) + ( \Add0~11\ ) + ( \Add0~10\ ))
-- \Add0~22\ = CARRY(( !\A[6]~input_o\ $ (\B[6]~input_o\) ) + ( \Add0~11\ ) + ( \Add0~10\ ))
-- \Add0~23\ = SHARE((!\A[6]~input_o\ & \B[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[6]~input_o\,
	datac => \ALT_INV_B[6]~input_o\,
	cin => \Add0~10\,
	sharein => \Add0~11\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\,
	shareout => \Add0~23\);

-- Location: LABCELL_X85_Y20_N21
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( !\B[7]~input_o\ $ (\A[7]~input_o\) ) + ( \Add0~23\ ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[7]~input_o\,
	datad => \ALT_INV_A[7]~input_o\,
	cin => \Add0~22\,
	sharein => \Add0~23\,
	sumout => \Add0~1_sumout\);

-- Location: MLABCELL_X84_Y20_N6
\Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (!\ALU_Sel[1]~input_o\ & !\ALU_Sel[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ALU_Sel[1]~input_o\,
	datac => \ALT_INV_ALU_Sel[2]~input_o\,
	combout => \Mux10~0_combout\);

-- Location: MLABCELL_X84_Y20_N12
\Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = ( \Mux10~0_combout\ & ( (!\Mux2~0_combout\ & (((\Add0~1_sumout\) # (\Mux1~0_combout\)))) # (\Mux2~0_combout\ & (\Add1~1_sumout\)) ) ) # ( !\Mux10~0_combout\ & ( (!\Mux2~0_combout\ & ((\Mux1~0_combout\))) # (\Mux2~0_combout\ & 
-- (\Add1~1_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101110111010001110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~1_sumout\,
	datab => \ALT_INV_Mux2~0_combout\,
	datac => \ALT_INV_Mux1~0_combout\,
	datad => \ALT_INV_Add0~1_sumout\,
	dataf => \ALT_INV_Mux10~0_combout\,
	combout => \Mux1~1_combout\);

-- Location: MLABCELL_X84_Y20_N0
\Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = ( !\ALU_Sel[0]~input_o\ & ( (!\ALU_Sel[1]~input_o\ & (!\ALU_Sel[2]~input_o\ & ((!\B[7]~input_o\ & (\Add1~1_sumout\ & !\A[7]~input_o\)) # (\B[7]~input_o\ & (!\Add1~1_sumout\ & \A[7]~input_o\))))) ) ) # ( \ALU_Sel[0]~input_o\ & ( 
-- (!\ALU_Sel[1]~input_o\ & (!\ALU_Sel[2]~input_o\ & ((!\B[7]~input_o\ & (!\Add0~1_sumout\ & \A[7]~input_o\)) # (\B[7]~input_o\ & (\Add0~1_sumout\ & !\A[7]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000100001000000000001001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[7]~input_o\,
	datab => \ALT_INV_ALU_Sel[1]~input_o\,
	datac => \ALT_INV_Add0~1_sumout\,
	datad => \ALT_INV_A[7]~input_o\,
	datae => \ALT_INV_ALU_Sel[0]~input_o\,
	dataf => \ALT_INV_ALU_Sel[2]~input_o\,
	datag => \ALT_INV_Add1~1_sumout\,
	combout => \Mux9~0_combout\);

-- Location: MLABCELL_X84_Y20_N51
\Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (!\ALU_Sel[2]~input_o\ & (!\ALU_Sel[1]~input_o\ & \ALU_Sel[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100000000000100010000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALU_Sel[2]~input_o\,
	datab => \ALT_INV_ALU_Sel[1]~input_o\,
	datad => \ALT_INV_ALU_Sel[0]~input_o\,
	combout => \Mux2~1_combout\);

-- Location: LABCELL_X83_Y20_N39
\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( \A[5]~input_o\ & ( (!\ALU_Sel[2]~input_o\ & (\ALU_Sel[1]~input_o\ & ((\B[5]~input_o\) # (\ALU_Sel[0]~input_o\)))) # (\ALU_Sel[2]~input_o\ & (!\ALU_Sel[0]~input_o\ & (!\ALU_Sel[1]~input_o\ & !\B[5]~input_o\))) ) ) # ( !\A[5]~input_o\ & 
-- ( (\B[5]~input_o\ & ((!\ALU_Sel[0]~input_o\ & (\ALU_Sel[2]~input_o\ & !\ALU_Sel[1]~input_o\)) # (\ALU_Sel[0]~input_o\ & (!\ALU_Sel[2]~input_o\ & \ALU_Sel[1]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100100000000000010010000100100000011000010010000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALU_Sel[0]~input_o\,
	datab => \ALT_INV_ALU_Sel[2]~input_o\,
	datac => \ALT_INV_ALU_Sel[1]~input_o\,
	datad => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_A[5]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: MLABCELL_X84_Y20_N24
\Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = ( \Add1~9_sumout\ & ( (((\Mux2~1_combout\ & \Add0~9_sumout\)) # (\Mux3~0_combout\)) # (\Mux2~0_combout\) ) ) # ( !\Add1~9_sumout\ & ( ((\Mux2~1_combout\ & \Add0~9_sumout\)) # (\Mux3~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011111000011110101111100111111011111110011111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux2~1_combout\,
	datab => \ALT_INV_Mux2~0_combout\,
	datac => \ALT_INV_Mux3~0_combout\,
	datad => \ALT_INV_Add0~9_sumout\,
	dataf => \ALT_INV_Add1~9_sumout\,
	combout => \Mux3~1_combout\);

-- Location: LABCELL_X83_Y20_N45
\Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ( \B[3]~input_o\ & ( (!\ALU_Sel[1]~input_o\ & (!\ALU_Sel[0]~input_o\ & (\ALU_Sel[2]~input_o\ & !\A[3]~input_o\))) # (\ALU_Sel[1]~input_o\ & (!\ALU_Sel[2]~input_o\ & ((\A[3]~input_o\) # (\ALU_Sel[0]~input_o\)))) ) ) # ( !\B[3]~input_o\ & 
-- ( (\A[3]~input_o\ & ((!\ALU_Sel[0]~input_o\ & (!\ALU_Sel[1]~input_o\ & \ALU_Sel[2]~input_o\)) # (\ALU_Sel[0]~input_o\ & (\ALU_Sel[1]~input_o\ & !\ALU_Sel[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011000000000000001100000011000001100000001100000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALU_Sel[0]~input_o\,
	datab => \ALT_INV_ALU_Sel[1]~input_o\,
	datac => \ALT_INV_ALU_Sel[2]~input_o\,
	datad => \ALT_INV_A[3]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: MLABCELL_X84_Y20_N30
\Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = ( \Add0~17_sumout\ & ( (((\Mux2~0_combout\ & \Add1~17_sumout\)) # (\Mux5~0_combout\)) # (\Mux2~1_combout\) ) ) # ( !\Add0~17_sumout\ & ( ((\Mux2~0_combout\ & \Add1~17_sumout\)) # (\Mux5~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111111000011110011111101011111011111110101111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux2~1_combout\,
	datab => \ALT_INV_Mux2~0_combout\,
	datac => \ALT_INV_Mux5~0_combout\,
	datad => \ALT_INV_Add1~17_sumout\,
	dataf => \ALT_INV_Add0~17_sumout\,
	combout => \Mux5~1_combout\);

-- Location: LABCELL_X83_Y20_N51
\Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = ( \B[2]~input_o\ & ( (!\ALU_Sel[1]~input_o\ & (\ALU_Sel[2]~input_o\ & (!\A[2]~input_o\ & !\ALU_Sel[0]~input_o\))) # (\ALU_Sel[1]~input_o\ & (!\ALU_Sel[2]~input_o\ & ((\ALU_Sel[0]~input_o\) # (\A[2]~input_o\)))) ) ) # ( !\B[2]~input_o\ & 
-- ( (\A[2]~input_o\ & ((!\ALU_Sel[1]~input_o\ & (\ALU_Sel[2]~input_o\ & !\ALU_Sel[0]~input_o\)) # (\ALU_Sel[1]~input_o\ & (!\ALU_Sel[2]~input_o\ & \ALU_Sel[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000100000000100000010000100100010001000010010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALU_Sel[1]~input_o\,
	datab => \ALT_INV_ALU_Sel[2]~input_o\,
	datac => \ALT_INV_A[2]~input_o\,
	datad => \ALT_INV_ALU_Sel[0]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: MLABCELL_X84_Y20_N33
\Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = ( \Add0~29_sumout\ & ( (((\Mux2~0_combout\ & \Add1~29_sumout\)) # (\Mux6~0_combout\)) # (\Mux2~1_combout\) ) ) # ( !\Add0~29_sumout\ & ( ((\Mux2~0_combout\ & \Add1~29_sumout\)) # (\Mux6~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111111000011110011111101011111011111110101111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux2~1_combout\,
	datab => \ALT_INV_Mux2~0_combout\,
	datac => \ALT_INV_Mux6~0_combout\,
	datad => \ALT_INV_Add1~29_sumout\,
	dataf => \ALT_INV_Add0~29_sumout\,
	combout => \Mux6~1_combout\);

-- Location: MLABCELL_X84_Y20_N18
\Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = ( \Add1~1_sumout\ & ( \Mux10~0_combout\ & ( (!\Mux1~0_combout\ & (!\Mux2~0_combout\ & (!\Mux6~1_combout\ & !\Add0~1_sumout\))) ) ) ) # ( !\Add1~1_sumout\ & ( \Mux10~0_combout\ & ( (!\Mux6~1_combout\ & (((!\Mux1~0_combout\ & 
-- !\Add0~1_sumout\)) # (\Mux2~0_combout\))) ) ) ) # ( \Add1~1_sumout\ & ( !\Mux10~0_combout\ & ( (!\Mux1~0_combout\ & (!\Mux2~0_combout\ & !\Mux6~1_combout\)) ) ) ) # ( !\Add1~1_sumout\ & ( !\Mux10~0_combout\ & ( (!\Mux6~1_combout\ & ((!\Mux1~0_combout\) # 
-- (\Mux2~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000010110000100000001000000010110000001100001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux1~0_combout\,
	datab => \ALT_INV_Mux2~0_combout\,
	datac => \ALT_INV_Mux6~1_combout\,
	datad => \ALT_INV_Add0~1_sumout\,
	datae => \ALT_INV_Add1~1_sumout\,
	dataf => \ALT_INV_Mux10~0_combout\,
	combout => \Equal1~1_combout\);

-- Location: LABCELL_X83_Y20_N42
\Mux2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = ( \B[6]~input_o\ & ( (!\ALU_Sel[1]~input_o\ & (!\ALU_Sel[0]~input_o\ & (!\A[6]~input_o\ & \ALU_Sel[2]~input_o\))) # (\ALU_Sel[1]~input_o\ & (!\ALU_Sel[2]~input_o\ & ((\A[6]~input_o\) # (\ALU_Sel[0]~input_o\)))) ) ) # ( !\B[6]~input_o\ & 
-- ( (\A[6]~input_o\ & ((!\ALU_Sel[0]~input_o\ & (!\ALU_Sel[1]~input_o\ & \ALU_Sel[2]~input_o\)) # (\ALU_Sel[0]~input_o\ & (\ALU_Sel[1]~input_o\ & !\ALU_Sel[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001000000000010000100000010011100000000001001110000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALU_Sel[0]~input_o\,
	datab => \ALT_INV_ALU_Sel[1]~input_o\,
	datac => \ALT_INV_A[6]~input_o\,
	datad => \ALT_INV_ALU_Sel[2]~input_o\,
	dataf => \ALT_INV_B[6]~input_o\,
	combout => \Mux2~2_combout\);

-- Location: LABCELL_X83_Y20_N48
\Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = ( \B[1]~input_o\ & ( (!\ALU_Sel[1]~input_o\ & (\ALU_Sel[2]~input_o\ & (!\A[1]~input_o\ & !\ALU_Sel[0]~input_o\))) # (\ALU_Sel[1]~input_o\ & (!\ALU_Sel[2]~input_o\ & ((\ALU_Sel[0]~input_o\) # (\A[1]~input_o\)))) ) ) # ( !\B[1]~input_o\ & 
-- ( (\A[1]~input_o\ & ((!\ALU_Sel[1]~input_o\ & (\ALU_Sel[2]~input_o\ & !\ALU_Sel[0]~input_o\)) # (\ALU_Sel[1]~input_o\ & (!\ALU_Sel[2]~input_o\ & \ALU_Sel[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000100000000100000010000100100010001000010010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALU_Sel[1]~input_o\,
	datab => \ALT_INV_ALU_Sel[2]~input_o\,
	datac => \ALT_INV_A[1]~input_o\,
	datad => \ALT_INV_ALU_Sel[0]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: MLABCELL_X84_Y20_N36
\Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = ( \Add1~25_sumout\ & ( (((\Mux2~1_combout\ & \Add0~25_sumout\)) # (\Mux7~0_combout\)) # (\Mux2~0_combout\) ) ) # ( !\Add1~25_sumout\ & ( ((\Mux2~1_combout\ & \Add0~25_sumout\)) # (\Mux7~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111111000001011111111100110111111111110011011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux2~1_combout\,
	datab => \ALT_INV_Mux2~0_combout\,
	datac => \ALT_INV_Add0~25_sumout\,
	datad => \ALT_INV_Mux7~0_combout\,
	dataf => \ALT_INV_Add1~25_sumout\,
	combout => \Mux7~1_combout\);

-- Location: MLABCELL_X84_Y20_N42
\Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = ( !\Mux7~1_combout\ & ( \Add0~21_sumout\ & ( (!\Mux2~2_combout\ & (!\Mux2~1_combout\ & ((!\Add1~21_sumout\) # (!\Mux2~0_combout\)))) ) ) ) # ( !\Mux7~1_combout\ & ( !\Add0~21_sumout\ & ( (!\Mux2~2_combout\ & ((!\Add1~21_sumout\) # 
-- (!\Mux2~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110010001000000000000000000011000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~21_sumout\,
	datab => \ALT_INV_Mux2~2_combout\,
	datac => \ALT_INV_Mux2~1_combout\,
	datad => \ALT_INV_Mux2~0_combout\,
	datae => \ALT_INV_Mux7~1_combout\,
	dataf => \ALT_INV_Add0~21_sumout\,
	combout => \Equal1~0_combout\);

-- Location: LABCELL_X83_Y20_N36
\Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = ( \ALU_Sel[1]~input_o\ & ( (!\ALU_Sel[2]~input_o\ & ((!\ALU_Sel[0]~input_o\ & (\B[4]~input_o\ & \A[4]~input_o\)) # (\ALU_Sel[0]~input_o\ & ((\A[4]~input_o\) # (\B[4]~input_o\))))) ) ) # ( !\ALU_Sel[1]~input_o\ & ( (!\ALU_Sel[0]~input_o\ 
-- & (\ALU_Sel[2]~input_o\ & (!\B[4]~input_o\ $ (!\A[4]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000100000000000100010000000000100010011000000010001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALU_Sel[0]~input_o\,
	datab => \ALT_INV_ALU_Sel[2]~input_o\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_A[4]~input_o\,
	dataf => \ALT_INV_ALU_Sel[1]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: MLABCELL_X84_Y20_N27
\Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = ( \Mux4~0_combout\ ) # ( !\Mux4~0_combout\ & ( (!\Mux2~1_combout\ & (\Mux2~0_combout\ & ((\Add1~13_sumout\)))) # (\Mux2~1_combout\ & (((\Mux2~0_combout\ & \Add1~13_sumout\)) # (\Add0~13_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111000001010011011111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux2~1_combout\,
	datab => \ALT_INV_Mux2~0_combout\,
	datac => \ALT_INV_Add0~13_sumout\,
	datad => \ALT_INV_Add1~13_sumout\,
	dataf => \ALT_INV_Mux4~0_combout\,
	combout => \Mux4~1_combout\);

-- Location: LABCELL_X83_Y20_N30
\Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = ( !\ALU_Sel[1]~input_o\ & ( (!\ALU_Sel[0]~input_o\ & ((((\Add1~5_sumout\))))) # (\ALU_Sel[0]~input_o\ & (((!\ALU_Sel[2]~input_o\ & (\Add0~5_sumout\)) # (\ALU_Sel[2]~input_o\ & ((\Add1~5_sumout\)))))) ) ) # ( \ALU_Sel[1]~input_o\ & ( 
-- (!\ALU_Sel[2]~input_o\ & ((!\ALU_Sel[0]~input_o\ & (\B[0]~input_o\ & (\A[0]~input_o\))) # (\ALU_Sel[0]~input_o\ & (((\A[0]~input_o\)) # (\B[0]~input_o\))))) # (\ALU_Sel[2]~input_o\ & ((((\Add1~5_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010100000000000101110000000010101111111111110001011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALU_Sel[0]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[0]~input_o\,
	datad => \ALT_INV_ALU_Sel[2]~input_o\,
	datae => \ALT_INV_ALU_Sel[1]~input_o\,
	dataf => \ALT_INV_Add1~5_sumout\,
	datag => \ALT_INV_Add0~5_sumout\,
	combout => \Mux8~0_combout\);

-- Location: MLABCELL_X84_Y20_N54
\Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = ( !\Mux4~1_combout\ & ( !\Mux8~0_combout\ & ( (!\Mux3~1_combout\ & (!\Mux5~1_combout\ & (\Equal1~1_combout\ & \Equal1~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux3~1_combout\,
	datab => \ALT_INV_Mux5~1_combout\,
	datac => \ALT_INV_Equal1~1_combout\,
	datad => \ALT_INV_Equal1~0_combout\,
	datae => \ALT_INV_Mux4~1_combout\,
	dataf => \ALT_INV_Mux8~0_combout\,
	combout => \Equal1~2_combout\);

-- Location: LABCELL_X83_Y20_N24
\Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~33_sumout\ = SUM(( GND ) + ( GND ) + ( \Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Add1~2\,
	sumout => \Add1~33_sumout\);

-- Location: MLABCELL_X84_Y20_N9
\Mux10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = ( \Mux10~0_combout\ & ( \Add1~33_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add1~33_sumout\,
	dataf => \ALT_INV_Mux10~0_combout\,
	combout => \Mux10~1_combout\);

-- Location: LABCELL_X85_Y20_N24
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( \A[7]~input_o\ & ( \A[5]~input_o\ & ( (\B[5]~input_o\ & (\B[7]~input_o\ & (!\B[6]~input_o\ $ (\A[6]~input_o\)))) ) ) ) # ( !\A[7]~input_o\ & ( \A[5]~input_o\ & ( (\B[5]~input_o\ & (!\B[7]~input_o\ & (!\B[6]~input_o\ $ 
-- (\A[6]~input_o\)))) ) ) ) # ( \A[7]~input_o\ & ( !\A[5]~input_o\ & ( (!\B[5]~input_o\ & (\B[7]~input_o\ & (!\B[6]~input_o\ $ (\A[6]~input_o\)))) ) ) ) # ( !\A[7]~input_o\ & ( !\A[5]~input_o\ & ( (!\B[5]~input_o\ & (!\B[7]~input_o\ & (!\B[6]~input_o\ $ 
-- (\A[6]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000001000000000010000000010000100000000100000000001000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[6]~input_o\,
	datab => \ALT_INV_B[5]~input_o\,
	datac => \ALT_INV_B[7]~input_o\,
	datad => \ALT_INV_A[6]~input_o\,
	datae => \ALT_INV_A[7]~input_o\,
	dataf => \ALT_INV_A[5]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: LABCELL_X85_Y20_N42
\LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = ( \A[7]~input_o\ & ( \A[5]~input_o\ & ( (\B[6]~input_o\ & (\B[7]~input_o\ & !\A[6]~input_o\)) ) ) ) # ( !\A[7]~input_o\ & ( \A[5]~input_o\ & ( ((\B[6]~input_o\ & !\A[6]~input_o\)) # (\B[7]~input_o\) ) ) ) # ( \A[7]~input_o\ & ( 
-- !\A[5]~input_o\ & ( (\B[7]~input_o\ & ((!\B[6]~input_o\ & (\B[5]~input_o\ & !\A[6]~input_o\)) # (\B[6]~input_o\ & ((!\A[6]~input_o\) # (\B[5]~input_o\))))) ) ) ) # ( !\A[7]~input_o\ & ( !\A[5]~input_o\ & ( ((!\B[6]~input_o\ & (\B[5]~input_o\ & 
-- !\A[6]~input_o\)) # (\B[6]~input_o\ & ((!\A[6]~input_o\) # (\B[5]~input_o\)))) # (\B[7]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111100011111000001110000000101011111000011110000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[6]~input_o\,
	datab => \ALT_INV_B[5]~input_o\,
	datac => \ALT_INV_B[7]~input_o\,
	datad => \ALT_INV_A[6]~input_o\,
	datae => \ALT_INV_A[7]~input_o\,
	dataf => \ALT_INV_A[5]~input_o\,
	combout => \LessThan0~2_combout\);

-- Location: LABCELL_X85_Y20_N30
\LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ( \A[1]~input_o\ & ( (\B[1]~input_o\ & (!\A[0]~input_o\ & \B[0]~input_o\)) ) ) # ( !\A[1]~input_o\ & ( ((!\A[0]~input_o\ & \B[0]~input_o\)) # (\B[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111011101010101011101110100000000010001000000000001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[0]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \LessThan0~0_combout\);

-- Location: LABCELL_X85_Y20_N36
\LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = ( \LessThan0~0_combout\ & ( (!\A[3]~input_o\ & (((!\A[2]~input_o\) # (\B[3]~input_o\)) # (\B[2]~input_o\))) # (\A[3]~input_o\ & (\B[3]~input_o\ & ((!\A[2]~input_o\) # (\B[2]~input_o\)))) ) ) # ( !\LessThan0~0_combout\ & ( 
-- (!\A[3]~input_o\ & (((\B[2]~input_o\ & !\A[2]~input_o\)) # (\B[3]~input_o\))) # (\A[3]~input_o\ & (\B[2]~input_o\ & (!\A[2]~input_o\ & \B[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000010111010001000001011101010100010111110111010001011111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_A[2]~input_o\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_LessThan0~0_combout\,
	combout => \LessThan0~1_combout\);

-- Location: LABCELL_X85_Y20_N51
\LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = ( \B[4]~input_o\ & ( ((\Equal0~0_combout\ & ((!\A[4]~input_o\) # (\LessThan0~1_combout\)))) # (\LessThan0~2_combout\) ) ) # ( !\B[4]~input_o\ & ( ((\Equal0~0_combout\ & (!\A[4]~input_o\ & \LessThan0~1_combout\))) # 
-- (\LessThan0~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101001111000011110100111101001111010111110100111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_A[4]~input_o\,
	datac => \ALT_INV_LessThan0~2_combout\,
	datad => \ALT_INV_LessThan0~1_combout\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \LessThan0~3_combout\);

-- Location: LABCELL_X85_Y20_N57
\LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = ( \A[1]~input_o\ & ( (!\B[1]~input_o\) # ((!\B[0]~input_o\ & \A[0]~input_o\)) ) ) # ( !\A[1]~input_o\ & ( (!\B[0]~input_o\ & (\A[0]~input_o\ & !\B[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000011111111000011001111111100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[0]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \LessThan1~0_combout\);

-- Location: LABCELL_X85_Y20_N39
\LessThan1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = ( \A[2]~input_o\ & ( (!\A[3]~input_o\ & (!\B[3]~input_o\ & ((!\B[2]~input_o\) # (\LessThan1~0_combout\)))) # (\A[3]~input_o\ & ((!\B[2]~input_o\) # ((!\B[3]~input_o\) # (\LessThan1~0_combout\)))) ) ) # ( !\A[2]~input_o\ & ( 
-- (!\A[3]~input_o\ & (!\B[2]~input_o\ & (\LessThan1~0_combout\ & !\B[3]~input_o\))) # (\A[3]~input_o\ & ((!\B[3]~input_o\) # ((!\B[2]~input_o\ & \LessThan1~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110100000100010111010000010011011111010001011101111101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_LessThan1~0_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_A[2]~input_o\,
	combout => \LessThan1~1_combout\);

-- Location: LABCELL_X83_Y20_N54
\LessThan1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = ( \B[5]~input_o\ & ( \A[7]~input_o\ & ( (!\B[7]~input_o\) # ((\A[6]~input_o\ & !\B[6]~input_o\)) ) ) ) # ( !\B[5]~input_o\ & ( \A[7]~input_o\ & ( (!\B[7]~input_o\) # ((!\A[5]~input_o\ & (\A[6]~input_o\ & !\B[6]~input_o\)) # 
-- (\A[5]~input_o\ & ((!\B[6]~input_o\) # (\A[6]~input_o\)))) ) ) ) # ( \B[5]~input_o\ & ( !\A[7]~input_o\ & ( (!\B[7]~input_o\ & (\A[6]~input_o\ & !\B[6]~input_o\)) ) ) ) # ( !\B[5]~input_o\ & ( !\A[7]~input_o\ & ( (!\B[7]~input_o\ & ((!\A[5]~input_o\ & 
-- (\A[6]~input_o\ & !\B[6]~input_o\)) # (\A[5]~input_o\ & ((!\B[6]~input_o\) # (\A[6]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110000000100000011000000000011011111110011011100111111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[5]~input_o\,
	datab => \ALT_INV_B[7]~input_o\,
	datac => \ALT_INV_A[6]~input_o\,
	datad => \ALT_INV_B[6]~input_o\,
	datae => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_A[7]~input_o\,
	combout => \LessThan1~2_combout\);

-- Location: LABCELL_X83_Y19_N30
\LessThan1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~3_combout\ = ( \A[4]~input_o\ & ( \B[4]~input_o\ & ( ((\Equal0~0_combout\ & \LessThan1~1_combout\)) # (\LessThan1~2_combout\) ) ) ) # ( !\A[4]~input_o\ & ( \B[4]~input_o\ & ( \LessThan1~2_combout\ ) ) ) # ( \A[4]~input_o\ & ( !\B[4]~input_o\ & 
-- ( (\LessThan1~2_combout\) # (\Equal0~0_combout\) ) ) ) # ( !\A[4]~input_o\ & ( !\B[4]~input_o\ & ( ((\Equal0~0_combout\ & \LessThan1~1_combout\)) # (\LessThan1~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100011111010111110101111100001111000011110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_LessThan1~1_combout\,
	datac => \ALT_INV_LessThan1~2_combout\,
	datae => \ALT_INV_A[4]~input_o\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \LessThan1~3_combout\);

-- Location: LABCELL_X85_Y20_N33
\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( \A[1]~input_o\ & ( (\B[1]~input_o\ & (!\B[2]~input_o\ $ (\A[2]~input_o\))) ) ) # ( !\A[1]~input_o\ & ( (!\B[1]~input_o\ & (!\B[2]~input_o\ $ (\A[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000001010101000000000101001010000000001010101000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \Equal0~1_combout\);

-- Location: LABCELL_X85_Y20_N54
\Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( \Equal0~1_combout\ & ( (!\A[0]~input_o\ & (!\B[0]~input_o\ & (!\A[3]~input_o\ $ (\B[3]~input_o\)))) # (\A[0]~input_o\ & (\B[0]~input_o\ & (!\A[3]~input_o\ $ (\B[3]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010010000000010011001000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[3]~input_o\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \Equal0~2_combout\);

-- Location: LABCELL_X85_Y20_N48
\Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = ( \B[4]~input_o\ & ( (\Equal0~0_combout\ & (\A[4]~input_o\ & \Equal0~2_combout\)) ) ) # ( !\B[4]~input_o\ & ( (\Equal0~0_combout\ & (!\A[4]~input_o\ & \Equal0~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_A[4]~input_o\,
	datac => \ALT_INV_Equal0~2_combout\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \Equal0~3_combout\);

-- Location: MLABCELL_X84_Y20_N39
\Mux2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = ( \Add0~21_sumout\ & ( (((\Mux2~0_combout\ & \Add1~21_sumout\)) # (\Mux2~2_combout\)) # (\Mux2~1_combout\) ) ) # ( !\Add0~21_sumout\ & ( ((\Mux2~0_combout\ & \Add1~21_sumout\)) # (\Mux2~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111111000000111111111101010111111111110101011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux2~1_combout\,
	datab => \ALT_INV_Mux2~0_combout\,
	datac => \ALT_INV_Add1~21_sumout\,
	datad => \ALT_INV_Mux2~2_combout\,
	dataf => \ALT_INV_Add0~21_sumout\,
	combout => \Mux2~3_combout\);

-- Location: MLABCELL_X65_Y60_N0
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


