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

-- DATE "04/07/2022 12:31:23"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ALU IS
    PORT (
	A : IN std_logic_vector(7 DOWNTO 0);
	B : IN std_logic_vector(7 DOWNTO 0);
	ALU_Sel : IN std_logic_vector(3 DOWNTO 0);
	NZVC : OUT std_logic_vector(3 DOWNTO 0);
	G : OUT std_logic;
	L : OUT std_logic;
	E : OUT std_logic;
	Result : OUT std_logic_vector(7 DOWNTO 0)
	);
END ALU;

-- Design Ports Information
-- NZVC[0]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NZVC[1]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NZVC[2]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NZVC[3]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[0]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[1]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[3]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[4]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[5]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[6]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[7]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Sel[1]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Sel[2]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Sel[3]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Sel[0]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_ALU_Sel : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_NZVC : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_G : std_logic;
SIGNAL ww_L : std_logic;
SIGNAL ww_E : std_logic;
SIGNAL ww_Result : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Mux17~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \NZVC[0]~output_o\ : std_logic;
SIGNAL \NZVC[1]~output_o\ : std_logic;
SIGNAL \NZVC[2]~output_o\ : std_logic;
SIGNAL \NZVC[3]~output_o\ : std_logic;
SIGNAL \G~output_o\ : std_logic;
SIGNAL \L~output_o\ : std_logic;
SIGNAL \E~output_o\ : std_logic;
SIGNAL \Result[0]~output_o\ : std_logic;
SIGNAL \Result[1]~output_o\ : std_logic;
SIGNAL \Result[2]~output_o\ : std_logic;
SIGNAL \Result[3]~output_o\ : std_logic;
SIGNAL \Result[4]~output_o\ : std_logic;
SIGNAL \Result[5]~output_o\ : std_logic;
SIGNAL \Result[6]~output_o\ : std_logic;
SIGNAL \Result[7]~output_o\ : std_logic;
SIGNAL \ALU_Sel[1]~input_o\ : std_logic;
SIGNAL \ALU_Sel[3]~input_o\ : std_logic;
SIGNAL \ALU_Sel[2]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \ALU_Sel[0]~input_o\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Mux14~2_combout\ : std_logic;
SIGNAL \Mux14~3_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux17~0clkctrl_outclk\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Mux15~1_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Mux15~2_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Mux16~1_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Mux16~2_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Mux13~2_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \Mux11~2_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Mux12~2_combout\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Mux10~3_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Mux10~4_combout\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \LessThan0~1_cout\ : std_logic;
SIGNAL \LessThan0~3_cout\ : std_logic;
SIGNAL \LessThan0~5_cout\ : std_logic;
SIGNAL \LessThan0~7_cout\ : std_logic;
SIGNAL \LessThan0~9_cout\ : std_logic;
SIGNAL \LessThan0~11_cout\ : std_logic;
SIGNAL \LessThan0~13_cout\ : std_logic;
SIGNAL \LessThan0~14_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \G$latch~combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \L$latch~combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \E$latch~combout\ : std_logic;
SIGNAL ALU_Result : std_logic_vector(7 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_A <= A;
ww_B <= B;
ww_ALU_Sel <= ALU_Sel;
NZVC <= ww_NZVC;
G <= ww_G;
L <= ww_L;
E <= ww_E;
Result <= ww_Result;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\Mux17~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Mux17~0_combout\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y43_N16
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X54_Y54_N9
\NZVC[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~0_combout\,
	devoe => ww_devoe,
	o => \NZVC[0]~output_o\);

-- Location: IOOBUF_X51_Y54_N2
\NZVC[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal1~2_combout\,
	devoe => ww_devoe,
	o => \NZVC[1]~output_o\);

-- Location: IOOBUF_X54_Y54_N2
\NZVC[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~1_combout\,
	devoe => ww_devoe,
	o => \NZVC[2]~output_o\);

-- Location: IOOBUF_X49_Y54_N9
\NZVC[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALU_Result(7),
	devoe => ww_devoe,
	o => \NZVC[3]~output_o\);

-- Location: IOOBUF_X51_Y54_N30
\G~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \G$latch~combout\,
	devoe => ww_devoe,
	o => \G~output_o\);

-- Location: IOOBUF_X51_Y54_N9
\L~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \L$latch~combout\,
	devoe => ww_devoe,
	o => \L~output_o\);

-- Location: IOOBUF_X51_Y54_N23
\E~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \E$latch~combout\,
	devoe => ww_devoe,
	o => \E~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\Result[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALU_Result(0),
	devoe => ww_devoe,
	o => \Result[0]~output_o\);

-- Location: IOOBUF_X54_Y54_N16
\Result[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALU_Result(1),
	devoe => ww_devoe,
	o => \Result[1]~output_o\);

-- Location: IOOBUF_X49_Y54_N16
\Result[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALU_Result(2),
	devoe => ww_devoe,
	o => \Result[2]~output_o\);

-- Location: IOOBUF_X56_Y54_N23
\Result[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALU_Result(3),
	devoe => ww_devoe,
	o => \Result[3]~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\Result[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALU_Result(4),
	devoe => ww_devoe,
	o => \Result[4]~output_o\);

-- Location: IOOBUF_X56_Y54_N16
\Result[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALU_Result(5),
	devoe => ww_devoe,
	o => \Result[5]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\Result[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALU_Result(6),
	devoe => ww_devoe,
	o => \Result[6]~output_o\);

-- Location: IOOBUF_X49_Y54_N2
\Result[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALU_Result(7),
	devoe => ww_devoe,
	o => \Result[7]~output_o\);

-- Location: IOIBUF_X54_Y54_N22
\ALU_Sel[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALU_Sel(1),
	o => \ALU_Sel[1]~input_o\);

-- Location: IOIBUF_X49_Y54_N22
\ALU_Sel[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALU_Sel(3),
	o => \ALU_Sel[3]~input_o\);

-- Location: IOIBUF_X54_Y54_N29
\ALU_Sel[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALU_Sel(2),
	o => \ALU_Sel[2]~input_o\);

-- Location: IOIBUF_X58_Y54_N8
\B[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X56_Y54_N29
\A[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X64_Y54_N1
\B[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X66_Y54_N29
\A[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X60_Y54_N8
\B[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X60_Y54_N22
\A[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X60_Y54_N29
\B[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X58_Y54_N29
\A[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X66_Y54_N22
\B[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X60_Y54_N15
\A[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X66_Y54_N8
\B[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X60_Y54_N1
\A[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X66_Y54_N15
\B[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X58_Y54_N1
\A[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X58_Y54_N15
\B[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X62_Y54_N29
\A[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LCCOMB_X56_Y53_N12
\Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\B[0]~input_o\ & (\A[0]~input_o\ $ (VCC))) # (!\B[0]~input_o\ & (\A[0]~input_o\ & VCC))
-- \Add1~1\ = CARRY((\B[0]~input_o\ & \A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X56_Y53_N14
\Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\B[1]~input_o\ & ((\A[1]~input_o\ & (\Add1~1\ & VCC)) # (!\A[1]~input_o\ & (!\Add1~1\)))) # (!\B[1]~input_o\ & ((\A[1]~input_o\ & (!\Add1~1\)) # (!\A[1]~input_o\ & ((\Add1~1\) # (GND)))))
-- \Add1~3\ = CARRY((\B[1]~input_o\ & (!\A[1]~input_o\ & !\Add1~1\)) # (!\B[1]~input_o\ & ((!\Add1~1\) # (!\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[1]~input_o\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X56_Y53_N16
\Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = ((\B[2]~input_o\ $ (\A[2]~input_o\ $ (!\Add1~3\)))) # (GND)
-- \Add1~5\ = CARRY((\B[2]~input_o\ & ((\A[2]~input_o\) # (!\Add1~3\))) # (!\B[2]~input_o\ & (\A[2]~input_o\ & !\Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \A[2]~input_o\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X56_Y53_N18
\Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\B[3]~input_o\ & ((\A[3]~input_o\ & (\Add1~5\ & VCC)) # (!\A[3]~input_o\ & (!\Add1~5\)))) # (!\B[3]~input_o\ & ((\A[3]~input_o\ & (!\Add1~5\)) # (!\A[3]~input_o\ & ((\Add1~5\) # (GND)))))
-- \Add1~7\ = CARRY((\B[3]~input_o\ & (!\A[3]~input_o\ & !\Add1~5\)) # (!\B[3]~input_o\ & ((!\Add1~5\) # (!\A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A[3]~input_o\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X56_Y53_N20
\Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = ((\B[4]~input_o\ $ (\A[4]~input_o\ $ (!\Add1~7\)))) # (GND)
-- \Add1~9\ = CARRY((\B[4]~input_o\ & ((\A[4]~input_o\) # (!\Add1~7\))) # (!\B[4]~input_o\ & (\A[4]~input_o\ & !\Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \A[4]~input_o\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X56_Y53_N22
\Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\B[5]~input_o\ & ((\A[5]~input_o\ & (\Add1~9\ & VCC)) # (!\A[5]~input_o\ & (!\Add1~9\)))) # (!\B[5]~input_o\ & ((\A[5]~input_o\ & (!\Add1~9\)) # (!\A[5]~input_o\ & ((\Add1~9\) # (GND)))))
-- \Add1~11\ = CARRY((\B[5]~input_o\ & (!\A[5]~input_o\ & !\Add1~9\)) # (!\B[5]~input_o\ & ((!\Add1~9\) # (!\A[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \A[5]~input_o\,
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X56_Y53_N24
\Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = ((\B[6]~input_o\ $ (\A[6]~input_o\ $ (!\Add1~11\)))) # (GND)
-- \Add1~13\ = CARRY((\B[6]~input_o\ & ((\A[6]~input_o\) # (!\Add1~11\))) # (!\B[6]~input_o\ & (\A[6]~input_o\ & !\Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \A[6]~input_o\,
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X56_Y53_N26
\Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (\B[7]~input_o\ & ((\A[7]~input_o\ & (\Add1~13\ & VCC)) # (!\A[7]~input_o\ & (!\Add1~13\)))) # (!\B[7]~input_o\ & ((\A[7]~input_o\ & (!\Add1~13\)) # (!\A[7]~input_o\ & ((\Add1~13\) # (GND)))))
-- \Add1~15\ = CARRY((\B[7]~input_o\ & (!\A[7]~input_o\ & !\Add1~13\)) # (!\B[7]~input_o\ & ((!\Add1~13\) # (!\A[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \A[7]~input_o\,
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X56_Y53_N28
\Add1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = !\Add1~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add1~15\,
	combout => \Add1~16_combout\);

-- Location: LCCOMB_X55_Y53_N22
\Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (!\ALU_Sel[1]~input_o\ & (!\ALU_Sel[3]~input_o\ & (!\ALU_Sel[2]~input_o\ & \Add1~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[1]~input_o\,
	datab => \ALU_Sel[3]~input_o\,
	datac => \ALU_Sel[2]~input_o\,
	datad => \Add1~16_combout\,
	combout => \Mux8~0_combout\);

-- Location: IOIBUF_X56_Y54_N1
\ALU_Sel[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALU_Sel(0),
	o => \ALU_Sel[0]~input_o\);

-- Location: LCCOMB_X59_Y53_N0
\Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\A[0]~input_o\ & (\B[0]~input_o\ $ (VCC))) # (!\A[0]~input_o\ & ((\B[0]~input_o\) # (GND)))
-- \Add0~1\ = CARRY((\B[0]~input_o\) # (!\A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[0]~input_o\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X59_Y53_N2
\Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\B[1]~input_o\ & ((\A[1]~input_o\ & (!\Add0~1\)) # (!\A[1]~input_o\ & (\Add0~1\ & VCC)))) # (!\B[1]~input_o\ & ((\A[1]~input_o\ & ((\Add0~1\) # (GND))) # (!\A[1]~input_o\ & (!\Add0~1\))))
-- \Add0~3\ = CARRY((\B[1]~input_o\ & (\A[1]~input_o\ & !\Add0~1\)) # (!\B[1]~input_o\ & ((\A[1]~input_o\) # (!\Add0~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[1]~input_o\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X59_Y53_N4
\Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((\A[2]~input_o\ $ (\B[2]~input_o\ $ (\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((\A[2]~input_o\ & (\B[2]~input_o\ & !\Add0~3\)) # (!\A[2]~input_o\ & ((\B[2]~input_o\) # (!\Add0~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[2]~input_o\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X59_Y53_N6
\Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\A[3]~input_o\ & ((\B[3]~input_o\ & (!\Add0~5\)) # (!\B[3]~input_o\ & ((\Add0~5\) # (GND))))) # (!\A[3]~input_o\ & ((\B[3]~input_o\ & (\Add0~5\ & VCC)) # (!\B[3]~input_o\ & (!\Add0~5\))))
-- \Add0~7\ = CARRY((\A[3]~input_o\ & ((!\Add0~5\) # (!\B[3]~input_o\))) # (!\A[3]~input_o\ & (!\B[3]~input_o\ & !\Add0~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[3]~input_o\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X59_Y53_N8
\Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = ((\A[4]~input_o\ $ (\B[4]~input_o\ $ (\Add0~7\)))) # (GND)
-- \Add0~9\ = CARRY((\A[4]~input_o\ & (\B[4]~input_o\ & !\Add0~7\)) # (!\A[4]~input_o\ & ((\B[4]~input_o\) # (!\Add0~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \B[4]~input_o\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X59_Y53_N10
\Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\A[5]~input_o\ & ((\B[5]~input_o\ & (!\Add0~9\)) # (!\B[5]~input_o\ & ((\Add0~9\) # (GND))))) # (!\A[5]~input_o\ & ((\B[5]~input_o\ & (\Add0~9\ & VCC)) # (!\B[5]~input_o\ & (!\Add0~9\))))
-- \Add0~11\ = CARRY((\A[5]~input_o\ & ((!\Add0~9\) # (!\B[5]~input_o\))) # (!\A[5]~input_o\ & (!\B[5]~input_o\ & !\Add0~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \B[5]~input_o\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X57_Y53_N10
\Mux14~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~2_combout\ = (\A[5]~input_o\ & (!\ALU_Sel[2]~input_o\ & \B[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \ALU_Sel[2]~input_o\,
	datac => \B[5]~input_o\,
	combout => \Mux14~2_combout\);

-- Location: LCCOMB_X57_Y53_N20
\Mux14~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~3_combout\ = (\ALU_Sel[0]~input_o\ & ((\ALU_Sel[1]~input_o\) # ((\Add0~10_combout\)))) # (!\ALU_Sel[0]~input_o\ & (((\Mux14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[1]~input_o\,
	datab => \ALU_Sel[0]~input_o\,
	datac => \Add0~10_combout\,
	datad => \Mux14~2_combout\,
	combout => \Mux14~3_combout\);

-- Location: LCCOMB_X57_Y53_N2
\Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\ALU_Sel[0]~input_o\ & (\ALU_Sel[1]~input_o\)) # (!\ALU_Sel[0]~input_o\ & ((\ALU_Sel[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[1]~input_o\,
	datab => \ALU_Sel[2]~input_o\,
	datad => \ALU_Sel[0]~input_o\,
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X57_Y53_N26
\Mux14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (\Mux10~0_combout\ & ((\B[5]~input_o\ & ((\Mux14~3_combout\) # (!\A[5]~input_o\))) # (!\B[5]~input_o\ & (\A[5]~input_o\)))) # (!\Mux10~0_combout\ & (((\Mux14~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \A[5]~input_o\,
	datac => \Mux14~3_combout\,
	datad => \Mux10~0_combout\,
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X57_Y53_N24
\Mux10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = (\ALU_Sel[3]~input_o\) # ((!\ALU_Sel[0]~input_o\ & (\ALU_Sel[1]~input_o\ $ (!\ALU_Sel[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[1]~input_o\,
	datab => \ALU_Sel[2]~input_o\,
	datac => \ALU_Sel[0]~input_o\,
	datad => \ALU_Sel[3]~input_o\,
	combout => \Mux10~1_combout\);

-- Location: LCCOMB_X57_Y53_N28
\Mux14~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = (\Mux10~1_combout\ & (\Add1~10_combout\)) # (!\Mux10~1_combout\ & ((\Mux14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~10_combout\,
	datac => \Mux14~0_combout\,
	datad => \Mux10~1_combout\,
	combout => \Mux14~1_combout\);

-- Location: LCCOMB_X55_Y53_N12
\Mux17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (\ALU_Sel[3]~input_o\ & (!\ALU_Sel[1]~input_o\ & (!\ALU_Sel[2]~input_o\ & !\ALU_Sel[0]~input_o\))) # (!\ALU_Sel[3]~input_o\ & (((\ALU_Sel[2]~input_o\ & \ALU_Sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[1]~input_o\,
	datab => \ALU_Sel[3]~input_o\,
	datac => \ALU_Sel[2]~input_o\,
	datad => \ALU_Sel[0]~input_o\,
	combout => \Mux17~0_combout\);

-- Location: CLKCTRL_G12
\Mux17~0clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Mux17~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Mux17~0clkctrl_outclk\);

-- Location: LCCOMB_X57_Y53_N22
\ALU_Result[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- ALU_Result(5) = (GLOBAL(\Mux17~0clkctrl_outclk\) & ((ALU_Result(5)))) # (!GLOBAL(\Mux17~0clkctrl_outclk\) & (\Mux14~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux14~1_combout\,
	datac => ALU_Result(5),
	datad => \Mux17~0clkctrl_outclk\,
	combout => ALU_Result(5));

-- Location: LCCOMB_X57_Y53_N30
\Mux15~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~1_combout\ = (\A[6]~input_o\ & ((\ALU_Sel[0]~input_o\) # (\Mux10~0_combout\ $ (\B[6]~input_o\)))) # (!\A[6]~input_o\ & ((\Mux10~0_combout\ & ((\B[6]~input_o\))) # (!\Mux10~0_combout\ & (\ALU_Sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \ALU_Sel[0]~input_o\,
	datac => \Mux10~0_combout\,
	datad => \B[6]~input_o\,
	combout => \Mux15~1_combout\);

-- Location: LCCOMB_X59_Y53_N12
\Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = ((\B[6]~input_o\ $ (\A[6]~input_o\ $ (\Add0~11\)))) # (GND)
-- \Add0~13\ = CARRY((\B[6]~input_o\ & ((!\Add0~11\) # (!\A[6]~input_o\))) # (!\B[6]~input_o\ & (!\A[6]~input_o\ & !\Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \A[6]~input_o\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X57_Y53_N4
\Mux15~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~2_combout\ = (\Mux15~1_combout\ & ((\Mux10~0_combout\) # ((\Add0~12_combout\) # (!\ALU_Sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~0_combout\,
	datab => \ALU_Sel[0]~input_o\,
	datac => \Mux15~1_combout\,
	datad => \Add0~12_combout\,
	combout => \Mux15~2_combout\);

-- Location: LCCOMB_X57_Y53_N6
\Mux15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (\Mux10~1_combout\ & (\Add1~12_combout\)) # (!\Mux10~1_combout\ & ((\Mux15~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~12_combout\,
	datac => \Mux10~1_combout\,
	datad => \Mux15~2_combout\,
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X57_Y53_N16
\ALU_Result[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- ALU_Result(6) = (GLOBAL(\Mux17~0clkctrl_outclk\) & (ALU_Result(6))) # (!GLOBAL(\Mux17~0clkctrl_outclk\) & ((\Mux15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ALU_Result(6),
	datac => \Mux15~0_combout\,
	datad => \Mux17~0clkctrl_outclk\,
	combout => ALU_Result(6));

-- Location: LCCOMB_X57_Y53_N18
\Mux16~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux16~1_combout\ = (\A[7]~input_o\ & ((\ALU_Sel[0]~input_o\) # (\Mux10~0_combout\ $ (\B[7]~input_o\)))) # (!\A[7]~input_o\ & ((\Mux10~0_combout\ & ((\B[7]~input_o\))) # (!\Mux10~0_combout\ & (\ALU_Sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \Mux10~0_combout\,
	datac => \ALU_Sel[0]~input_o\,
	datad => \B[7]~input_o\,
	combout => \Mux16~1_combout\);

-- Location: LCCOMB_X59_Y53_N14
\Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = \A[7]~input_o\ $ (\Add0~13\ $ (!\B[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datad => \B[7]~input_o\,
	cin => \Add0~13\,
	combout => \Add0~14_combout\);

-- Location: LCCOMB_X57_Y53_N12
\Mux16~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux16~2_combout\ = (\Mux16~1_combout\ & ((\Mux10~0_combout\) # ((\Add0~14_combout\) # (!\ALU_Sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~0_combout\,
	datab => \ALU_Sel[0]~input_o\,
	datac => \Mux16~1_combout\,
	datad => \Add0~14_combout\,
	combout => \Mux16~2_combout\);

-- Location: LCCOMB_X57_Y53_N0
\Mux16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (\Mux10~1_combout\ & (\Add1~14_combout\)) # (!\Mux10~1_combout\ & ((\Mux16~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~14_combout\,
	datac => \Mux10~1_combout\,
	datad => \Mux16~2_combout\,
	combout => \Mux16~0_combout\);

-- Location: LCCOMB_X57_Y53_N14
\ALU_Result[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- ALU_Result(7) = (GLOBAL(\Mux17~0clkctrl_outclk\) & ((ALU_Result(7)))) # (!GLOBAL(\Mux17~0clkctrl_outclk\) & (\Mux16~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~0_combout\,
	datac => ALU_Result(7),
	datad => \Mux17~0clkctrl_outclk\,
	combout => ALU_Result(7));

-- Location: LCCOMB_X58_Y53_N24
\Mux13~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = (\A[4]~input_o\ & ((\ALU_Sel[0]~input_o\) # (\Mux10~0_combout\ $ (\B[4]~input_o\)))) # (!\A[4]~input_o\ & ((\Mux10~0_combout\ & ((\B[4]~input_o\))) # (!\Mux10~0_combout\ & (\ALU_Sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[0]~input_o\,
	datab => \Mux10~0_combout\,
	datac => \A[4]~input_o\,
	datad => \B[4]~input_o\,
	combout => \Mux13~1_combout\);

-- Location: LCCOMB_X58_Y53_N10
\Mux13~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~2_combout\ = (\Mux13~1_combout\ & (((\Mux10~0_combout\) # (\Add0~8_combout\)) # (!\ALU_Sel[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[0]~input_o\,
	datab => \Mux10~0_combout\,
	datac => \Mux13~1_combout\,
	datad => \Add0~8_combout\,
	combout => \Mux13~2_combout\);

-- Location: LCCOMB_X58_Y53_N14
\Mux13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\Mux10~1_combout\ & (\Add1~8_combout\)) # (!\Mux10~1_combout\ & ((\Mux13~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~1_combout\,
	datac => \Add1~8_combout\,
	datad => \Mux13~2_combout\,
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X58_Y53_N26
\ALU_Result[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- ALU_Result(4) = (GLOBAL(\Mux17~0clkctrl_outclk\) & (ALU_Result(4))) # (!GLOBAL(\Mux17~0clkctrl_outclk\) & ((\Mux13~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ALU_Result(4),
	datac => \Mux13~0_combout\,
	datad => \Mux17~0clkctrl_outclk\,
	combout => ALU_Result(4));

-- Location: LCCOMB_X57_Y53_N8
\Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!ALU_Result(5) & (!ALU_Result(6) & (!ALU_Result(7) & !ALU_Result(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ALU_Result(5),
	datab => ALU_Result(6),
	datac => ALU_Result(7),
	datad => ALU_Result(4),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X55_Y53_N14
\Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\ALU_Sel[0]~input_o\ & (((\ALU_Sel[1]~input_o\) # (\Add0~0_combout\)))) # (!\ALU_Sel[0]~input_o\ & (\Add1~0_combout\ & (!\ALU_Sel[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[0]~input_o\,
	datab => \Add1~0_combout\,
	datac => \ALU_Sel[1]~input_o\,
	datad => \Add0~0_combout\,
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X55_Y53_N2
\Mux9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (\B[0]~input_o\ & ((\Mux9~0_combout\) # ((\ALU_Sel[1]~input_o\ & \A[0]~input_o\)))) # (!\B[0]~input_o\ & (\Mux9~0_combout\ & ((\A[0]~input_o\) # (!\ALU_Sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Mux9~0_combout\,
	datac => \ALU_Sel[1]~input_o\,
	datad => \A[0]~input_o\,
	combout => \Mux9~1_combout\);

-- Location: LCCOMB_X55_Y53_N0
\Mux9~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = (\ALU_Sel[2]~input_o\ & (((\Add1~0_combout\)))) # (!\ALU_Sel[2]~input_o\ & ((\ALU_Sel[3]~input_o\ & ((\Add1~0_combout\))) # (!\ALU_Sel[3]~input_o\ & (\Mux9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[2]~input_o\,
	datab => \ALU_Sel[3]~input_o\,
	datac => \Mux9~1_combout\,
	datad => \Add1~0_combout\,
	combout => \Mux9~2_combout\);

-- Location: LCCOMB_X55_Y53_N10
\ALU_Result[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- ALU_Result(0) = (GLOBAL(\Mux17~0clkctrl_outclk\) & (ALU_Result(0))) # (!GLOBAL(\Mux17~0clkctrl_outclk\) & ((\Mux9~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ALU_Result(0),
	datac => \Mux9~2_combout\,
	datad => \Mux17~0clkctrl_outclk\,
	combout => ALU_Result(0));

-- Location: LCCOMB_X58_Y53_N8
\Mux11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = (\B[2]~input_o\ & ((\ALU_Sel[0]~input_o\) # (\Mux10~0_combout\ $ (\A[2]~input_o\)))) # (!\B[2]~input_o\ & ((\Mux10~0_combout\ & ((\A[2]~input_o\))) # (!\Mux10~0_combout\ & (\ALU_Sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[0]~input_o\,
	datab => \Mux10~0_combout\,
	datac => \B[2]~input_o\,
	datad => \A[2]~input_o\,
	combout => \Mux11~1_combout\);

-- Location: LCCOMB_X58_Y53_N30
\Mux11~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~2_combout\ = (\Mux11~1_combout\ & ((\Add0~4_combout\) # ((\Mux10~0_combout\) # (!\ALU_Sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \Mux10~0_combout\,
	datac => \ALU_Sel[0]~input_o\,
	datad => \Mux11~1_combout\,
	combout => \Mux11~2_combout\);

-- Location: LCCOMB_X58_Y53_N22
\Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\Mux10~1_combout\ & (\Add1~4_combout\)) # (!\Mux10~1_combout\ & ((\Mux11~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~1_combout\,
	datac => \Add1~4_combout\,
	datad => \Mux11~2_combout\,
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X58_Y53_N18
\ALU_Result[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- ALU_Result(2) = (GLOBAL(\Mux17~0clkctrl_outclk\) & (ALU_Result(2))) # (!GLOBAL(\Mux17~0clkctrl_outclk\) & ((\Mux11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ALU_Result(2),
	datac => \Mux17~0clkctrl_outclk\,
	datad => \Mux11~0_combout\,
	combout => ALU_Result(2));

-- Location: LCCOMB_X58_Y53_N4
\Mux12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = (\A[3]~input_o\ & ((\ALU_Sel[0]~input_o\) # (\Mux10~0_combout\ $ (\B[3]~input_o\)))) # (!\A[3]~input_o\ & ((\Mux10~0_combout\ & ((\B[3]~input_o\))) # (!\Mux10~0_combout\ & (\ALU_Sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[0]~input_o\,
	datab => \Mux10~0_combout\,
	datac => \A[3]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Mux12~1_combout\);

-- Location: LCCOMB_X58_Y53_N2
\Mux12~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~2_combout\ = (\Mux12~1_combout\ & (((\Mux10~0_combout\) # (\Add0~6_combout\)) # (!\ALU_Sel[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[0]~input_o\,
	datab => \Mux10~0_combout\,
	datac => \Mux12~1_combout\,
	datad => \Add0~6_combout\,
	combout => \Mux12~2_combout\);

-- Location: LCCOMB_X58_Y53_N20
\Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (\Mux10~1_combout\ & ((\Add1~6_combout\))) # (!\Mux10~1_combout\ & (\Mux12~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~2_combout\,
	datac => \Mux10~1_combout\,
	datad => \Add1~6_combout\,
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X58_Y53_N12
\ALU_Result[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- ALU_Result(3) = (GLOBAL(\Mux17~0clkctrl_outclk\) & (ALU_Result(3))) # (!GLOBAL(\Mux17~0clkctrl_outclk\) & ((\Mux12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ALU_Result(3),
	datab => \Mux12~0_combout\,
	datad => \Mux17~0clkctrl_outclk\,
	combout => ALU_Result(3));

-- Location: LCCOMB_X58_Y53_N16
\Mux10~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~3_combout\ = (\A[1]~input_o\ & ((\ALU_Sel[0]~input_o\) # (\Mux10~0_combout\ $ (\B[1]~input_o\)))) # (!\A[1]~input_o\ & ((\Mux10~0_combout\ & ((\B[1]~input_o\))) # (!\Mux10~0_combout\ & (\ALU_Sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[0]~input_o\,
	datab => \Mux10~0_combout\,
	datac => \A[1]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Mux10~3_combout\);

-- Location: LCCOMB_X58_Y53_N6
\Mux10~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~4_combout\ = (\Mux10~3_combout\ & ((\Mux10~0_combout\) # ((\Add0~2_combout\) # (!\ALU_Sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~0_combout\,
	datab => \Mux10~3_combout\,
	datac => \ALU_Sel[0]~input_o\,
	datad => \Add0~2_combout\,
	combout => \Mux10~4_combout\);

-- Location: LCCOMB_X58_Y53_N28
\Mux10~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~2_combout\ = (\Mux10~1_combout\ & (\Add1~2_combout\)) # (!\Mux10~1_combout\ & ((\Mux10~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~1_combout\,
	datac => \Add1~2_combout\,
	datad => \Mux10~4_combout\,
	combout => \Mux10~2_combout\);

-- Location: LCCOMB_X58_Y53_N0
\ALU_Result[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- ALU_Result(1) = (GLOBAL(\Mux17~0clkctrl_outclk\) & (ALU_Result(1))) # (!GLOBAL(\Mux17~0clkctrl_outclk\) & ((\Mux10~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ALU_Result(1),
	datac => \Mux10~2_combout\,
	datad => \Mux17~0clkctrl_outclk\,
	combout => ALU_Result(1));

-- Location: LCCOMB_X55_Y53_N24
\Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!ALU_Result(0) & (!ALU_Result(2) & (!ALU_Result(3) & !ALU_Result(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ALU_Result(0),
	datab => ALU_Result(2),
	datac => ALU_Result(3),
	datad => ALU_Result(1),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X55_Y53_N30
\Equal1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (\Equal1~1_combout\ & \Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~1_combout\,
	datad => \Equal1~0_combout\,
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X55_Y53_N16
\Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (ALU_Result(7) & (!\A[7]~input_o\ & (\B[7]~input_o\ $ (!\ALU_Sel[0]~input_o\)))) # (!ALU_Result(7) & (\A[7]~input_o\ & (\B[7]~input_o\ $ (\ALU_Sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ALU_Result(7),
	datab => \A[7]~input_o\,
	datac => \B[7]~input_o\,
	datad => \ALU_Sel[0]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X55_Y53_N8
\Mux7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (!\ALU_Sel[1]~input_o\ & (!\ALU_Sel[3]~input_o\ & (!\ALU_Sel[2]~input_o\ & \Mux7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[1]~input_o\,
	datab => \ALU_Sel[3]~input_o\,
	datac => \ALU_Sel[2]~input_o\,
	datad => \Mux7~0_combout\,
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X59_Y53_N16
\LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~1_cout\ = CARRY((!\A[0]~input_o\ & \B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[0]~input_o\,
	datad => VCC,
	cout => \LessThan0~1_cout\);

-- Location: LCCOMB_X59_Y53_N18
\LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~3_cout\ = CARRY((\B[1]~input_o\ & (\A[1]~input_o\ & !\LessThan0~1_cout\)) # (!\B[1]~input_o\ & ((\A[1]~input_o\) # (!\LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[1]~input_o\,
	datad => VCC,
	cin => \LessThan0~1_cout\,
	cout => \LessThan0~3_cout\);

-- Location: LCCOMB_X59_Y53_N20
\LessThan0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~5_cout\ = CARRY((\A[2]~input_o\ & (\B[2]~input_o\ & !\LessThan0~3_cout\)) # (!\A[2]~input_o\ & ((\B[2]~input_o\) # (!\LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[2]~input_o\,
	datad => VCC,
	cin => \LessThan0~3_cout\,
	cout => \LessThan0~5_cout\);

-- Location: LCCOMB_X59_Y53_N22
\LessThan0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~7_cout\ = CARRY((\A[3]~input_o\ & ((!\LessThan0~5_cout\) # (!\B[3]~input_o\))) # (!\A[3]~input_o\ & (!\B[3]~input_o\ & !\LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[3]~input_o\,
	datad => VCC,
	cin => \LessThan0~5_cout\,
	cout => \LessThan0~7_cout\);

-- Location: LCCOMB_X59_Y53_N24
\LessThan0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~9_cout\ = CARRY((\A[4]~input_o\ & (\B[4]~input_o\ & !\LessThan0~7_cout\)) # (!\A[4]~input_o\ & ((\B[4]~input_o\) # (!\LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \B[4]~input_o\,
	datad => VCC,
	cin => \LessThan0~7_cout\,
	cout => \LessThan0~9_cout\);

-- Location: LCCOMB_X59_Y53_N26
\LessThan0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~11_cout\ = CARRY((\A[5]~input_o\ & ((!\LessThan0~9_cout\) # (!\B[5]~input_o\))) # (!\A[5]~input_o\ & (!\B[5]~input_o\ & !\LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \B[5]~input_o\,
	datad => VCC,
	cin => \LessThan0~9_cout\,
	cout => \LessThan0~11_cout\);

-- Location: LCCOMB_X59_Y53_N28
\LessThan0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~13_cout\ = CARRY((\B[6]~input_o\ & ((!\LessThan0~11_cout\) # (!\A[6]~input_o\))) # (!\B[6]~input_o\ & (!\A[6]~input_o\ & !\LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \A[6]~input_o\,
	datad => VCC,
	cin => \LessThan0~11_cout\,
	cout => \LessThan0~13_cout\);

-- Location: LCCOMB_X59_Y53_N30
\LessThan0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~14_combout\ = (\A[7]~input_o\ & (\LessThan0~13_cout\ & \B[7]~input_o\)) # (!\A[7]~input_o\ & ((\LessThan0~13_cout\) # (\B[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datad => \B[7]~input_o\,
	cin => \LessThan0~13_cout\,
	combout => \LessThan0~14_combout\);

-- Location: LCCOMB_X55_Y53_N6
\Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (!\ALU_Sel[1]~input_o\ & (!\ALU_Sel[3]~input_o\ & (\ALU_Sel[2]~input_o\ & \ALU_Sel[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[1]~input_o\,
	datab => \ALU_Sel[3]~input_o\,
	datac => \ALU_Sel[2]~input_o\,
	datad => \ALU_Sel[0]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X55_Y53_N18
\G$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \G$latch~combout\ = (\Mux0~0_combout\ & ((\LessThan0~14_combout\))) # (!\Mux0~0_combout\ & (\G$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G$latch~combout\,
	datac => \LessThan0~14_combout\,
	datad => \Mux0~0_combout\,
	combout => \G$latch~combout\);

-- Location: LCCOMB_X55_Y53_N28
\Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\ALU_Sel[1]~input_o\ & (!\ALU_Sel[3]~input_o\ & (\ALU_Sel[2]~input_o\ & \ALU_Sel[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[1]~input_o\,
	datab => \ALU_Sel[3]~input_o\,
	datac => \ALU_Sel[2]~input_o\,
	datad => \ALU_Sel[0]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X55_Y53_N4
\L$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \L$latch~combout\ = (\Mux2~0_combout\ & (\LessThan0~14_combout\)) # (!\Mux2~0_combout\ & ((\L$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~14_combout\,
	datac => \L$latch~combout\,
	datad => \Mux2~0_combout\,
	combout => \L$latch~combout\);

-- Location: LCCOMB_X56_Y53_N10
\Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (\B[0]~input_o\ & (\A[0]~input_o\ & (\B[7]~input_o\ $ (!\A[7]~input_o\)))) # (!\B[0]~input_o\ & (!\A[0]~input_o\ & (\B[7]~input_o\ $ (!\A[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[7]~input_o\,
	datac => \A[0]~input_o\,
	datad => \A[7]~input_o\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X56_Y53_N0
\Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\B[6]~input_o\ & (\A[6]~input_o\ & (\A[5]~input_o\ $ (!\B[5]~input_o\)))) # (!\B[6]~input_o\ & (!\A[6]~input_o\ & (\A[5]~input_o\ $ (!\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \A[5]~input_o\,
	datac => \B[5]~input_o\,
	datad => \A[6]~input_o\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X56_Y53_N4
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\B[2]~input_o\ & (\A[2]~input_o\ & (\A[1]~input_o\ $ (!\B[1]~input_o\)))) # (!\B[2]~input_o\ & (!\A[2]~input_o\ & (\A[1]~input_o\ $ (!\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \A[1]~input_o\,
	datac => \A[2]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X56_Y53_N2
\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\B[4]~input_o\ & (\A[4]~input_o\ & (\A[3]~input_o\ $ (!\B[3]~input_o\)))) # (!\B[4]~input_o\ & (!\A[4]~input_o\ & (\A[3]~input_o\ $ (!\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \A[4]~input_o\,
	datac => \A[3]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X56_Y53_N8
\Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~3_combout\ & (\Equal0~2_combout\ & (\Equal0~0_combout\ & \Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \Equal0~2_combout\,
	datac => \Equal0~0_combout\,
	datad => \Equal0~1_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X55_Y53_N20
\Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (!\ALU_Sel[1]~input_o\ & (\ALU_Sel[3]~input_o\ & (!\ALU_Sel[2]~input_o\ & !\ALU_Sel[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[1]~input_o\,
	datab => \ALU_Sel[3]~input_o\,
	datac => \ALU_Sel[2]~input_o\,
	datad => \ALU_Sel[0]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X55_Y53_N26
\E$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \E$latch~combout\ = (\Mux5~0_combout\ & (\Equal0~4_combout\)) # (!\Mux5~0_combout\ & ((\E$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~4_combout\,
	datac => \E$latch~combout\,
	datad => \Mux5~0_combout\,
	combout => \E$latch~combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_NZVC(0) <= \NZVC[0]~output_o\;

ww_NZVC(1) <= \NZVC[1]~output_o\;

ww_NZVC(2) <= \NZVC[2]~output_o\;

ww_NZVC(3) <= \NZVC[3]~output_o\;

ww_G <= \G~output_o\;

ww_L <= \L~output_o\;

ww_E <= \E~output_o\;

ww_Result(0) <= \Result[0]~output_o\;

ww_Result(1) <= \Result[1]~output_o\;

ww_Result(2) <= \Result[2]~output_o\;

ww_Result(3) <= \Result[3]~output_o\;

ww_Result(4) <= \Result[4]~output_o\;

ww_Result(5) <= \Result[5]~output_o\;

ww_Result(6) <= \Result[6]~output_o\;

ww_Result(7) <= \Result[7]~output_o\;
END structure;


