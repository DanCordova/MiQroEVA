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

-- DATE "05/24/2022 19:18:44"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
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


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	UControl IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	Flags : IN std_logic_vector(15 DOWNTO 0);
	MDR : IN std_logic_vector(7 DOWNTO 0);
	Cache : IN std_logic_vector(15 DOWNTO 0);
	MBusMux : OUT std_logic_vector(4 DOWNTO 0);
	RegEn : OUT std_logic_vector(3 DOWNTO 0);
	RegVal : OUT std_logic_vector(3 DOWNTO 0);
	MuxA : OUT std_logic;
	MuxB : OUT std_logic;
	MuxC : OUT std_logic;
	MuxMAR : OUT std_logic;
	EnableDeco : OUT std_logic;
	MuxRAM : OUT std_logic;
	WR_Ram : OUT std_logic;
	Destino : OUT std_logic_vector(7 DOWNTO 0);
	Fuente : OUT std_logic_vector(7 DOWNTO 0);
	UMemOut : OUT std_logic_vector(63 DOWNTO 0);
	ALU : OUT std_logic_vector(2 DOWNTO 0)
	);
END UControl;

-- Design Ports Information
-- rst	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flags[0]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flags[1]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flags[2]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flags[3]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flags[4]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flags[5]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flags[6]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flags[7]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flags[8]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flags[9]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flags[10]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flags[11]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flags[12]	=>  Location: PIN_M14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flags[13]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flags[14]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flags[15]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cache[0]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cache[1]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cache[2]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cache[3]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cache[4]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cache[5]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cache[6]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cache[7]	=>  Location: PIN_W18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cache[8]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cache[9]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cache[10]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cache[11]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cache[12]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cache[13]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cache[14]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cache[15]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MBusMux[0]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MBusMux[1]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MBusMux[2]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MBusMux[3]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MBusMux[4]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegEn[0]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegEn[1]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegEn[2]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegEn[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegVal[0]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegVal[1]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegVal[2]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegVal[3]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MuxA	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MuxB	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MuxC	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MuxMAR	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EnableDeco	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MuxRAM	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WR_Ram	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Destino[0]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Destino[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Destino[2]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Destino[3]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Destino[4]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Destino[5]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Destino[6]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Destino[7]	=>  Location: PIN_L20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fuente[0]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fuente[1]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fuente[2]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fuente[3]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fuente[4]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fuente[5]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fuente[6]	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fuente[7]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[0]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[1]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[2]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[3]	=>  Location: PIN_N22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[4]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[5]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[6]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[7]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[8]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[9]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[10]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[11]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[12]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[13]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[14]	=>  Location: PIN_U19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[15]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[16]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[17]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[18]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[19]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[20]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[21]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[22]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[23]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[24]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[25]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[26]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[27]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[28]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[29]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[30]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[31]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[32]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[33]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[34]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[35]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[36]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[37]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[38]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[39]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[40]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[41]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[42]	=>  Location: PIN_U18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[43]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[44]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[45]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[46]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[47]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[48]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[49]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[50]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[51]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[52]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[53]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[54]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[55]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[56]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[57]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[58]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[59]	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[60]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[61]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[62]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[63]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU[0]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU[1]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU[2]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MDR[0]	=>  Location: PIN_P10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MDR[1]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MDR[2]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MDR[3]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MDR[4]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MDR[5]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MDR[6]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MDR[7]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF UControl IS
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
SIGNAL ww_rst : std_logic;
SIGNAL ww_Flags : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_MDR : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Cache : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_MBusMux : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_RegEn : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_RegVal : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_MuxA : std_logic;
SIGNAL ww_MuxB : std_logic;
SIGNAL ww_MuxC : std_logic;
SIGNAL ww_MuxMAR : std_logic;
SIGNAL ww_EnableDeco : std_logic;
SIGNAL ww_MuxRAM : std_logic;
SIGNAL ww_WR_Ram : std_logic;
SIGNAL ww_Destino : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Fuente : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_UMemOut : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_ALU : std_logic_vector(2 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \Flags[0]~input_o\ : std_logic;
SIGNAL \Flags[1]~input_o\ : std_logic;
SIGNAL \Flags[2]~input_o\ : std_logic;
SIGNAL \Flags[3]~input_o\ : std_logic;
SIGNAL \Flags[4]~input_o\ : std_logic;
SIGNAL \Flags[5]~input_o\ : std_logic;
SIGNAL \Flags[6]~input_o\ : std_logic;
SIGNAL \Flags[7]~input_o\ : std_logic;
SIGNAL \Flags[8]~input_o\ : std_logic;
SIGNAL \Flags[9]~input_o\ : std_logic;
SIGNAL \Flags[10]~input_o\ : std_logic;
SIGNAL \Flags[11]~input_o\ : std_logic;
SIGNAL \Flags[12]~input_o\ : std_logic;
SIGNAL \Flags[13]~input_o\ : std_logic;
SIGNAL \Flags[14]~input_o\ : std_logic;
SIGNAL \Flags[15]~input_o\ : std_logic;
SIGNAL \Cache[0]~input_o\ : std_logic;
SIGNAL \Cache[1]~input_o\ : std_logic;
SIGNAL \Cache[2]~input_o\ : std_logic;
SIGNAL \Cache[3]~input_o\ : std_logic;
SIGNAL \Cache[4]~input_o\ : std_logic;
SIGNAL \Cache[5]~input_o\ : std_logic;
SIGNAL \Cache[6]~input_o\ : std_logic;
SIGNAL \Cache[7]~input_o\ : std_logic;
SIGNAL \Cache[8]~input_o\ : std_logic;
SIGNAL \Cache[9]~input_o\ : std_logic;
SIGNAL \Cache[10]~input_o\ : std_logic;
SIGNAL \Cache[11]~input_o\ : std_logic;
SIGNAL \Cache[12]~input_o\ : std_logic;
SIGNAL \Cache[13]~input_o\ : std_logic;
SIGNAL \Cache[14]~input_o\ : std_logic;
SIGNAL \Cache[15]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \MBusMux[0]~output_o\ : std_logic;
SIGNAL \MBusMux[1]~output_o\ : std_logic;
SIGNAL \MBusMux[2]~output_o\ : std_logic;
SIGNAL \MBusMux[3]~output_o\ : std_logic;
SIGNAL \MBusMux[4]~output_o\ : std_logic;
SIGNAL \RegEn[0]~output_o\ : std_logic;
SIGNAL \RegEn[1]~output_o\ : std_logic;
SIGNAL \RegEn[2]~output_o\ : std_logic;
SIGNAL \RegEn[3]~output_o\ : std_logic;
SIGNAL \RegVal[0]~output_o\ : std_logic;
SIGNAL \RegVal[1]~output_o\ : std_logic;
SIGNAL \RegVal[2]~output_o\ : std_logic;
SIGNAL \RegVal[3]~output_o\ : std_logic;
SIGNAL \MuxA~output_o\ : std_logic;
SIGNAL \MuxB~output_o\ : std_logic;
SIGNAL \MuxC~output_o\ : std_logic;
SIGNAL \MuxMAR~output_o\ : std_logic;
SIGNAL \EnableDeco~output_o\ : std_logic;
SIGNAL \MuxRAM~output_o\ : std_logic;
SIGNAL \WR_Ram~output_o\ : std_logic;
SIGNAL \Destino[0]~output_o\ : std_logic;
SIGNAL \Destino[1]~output_o\ : std_logic;
SIGNAL \Destino[2]~output_o\ : std_logic;
SIGNAL \Destino[3]~output_o\ : std_logic;
SIGNAL \Destino[4]~output_o\ : std_logic;
SIGNAL \Destino[5]~output_o\ : std_logic;
SIGNAL \Destino[6]~output_o\ : std_logic;
SIGNAL \Destino[7]~output_o\ : std_logic;
SIGNAL \Fuente[0]~output_o\ : std_logic;
SIGNAL \Fuente[1]~output_o\ : std_logic;
SIGNAL \Fuente[2]~output_o\ : std_logic;
SIGNAL \Fuente[3]~output_o\ : std_logic;
SIGNAL \Fuente[4]~output_o\ : std_logic;
SIGNAL \Fuente[5]~output_o\ : std_logic;
SIGNAL \Fuente[6]~output_o\ : std_logic;
SIGNAL \Fuente[7]~output_o\ : std_logic;
SIGNAL \UMemOut[0]~output_o\ : std_logic;
SIGNAL \UMemOut[1]~output_o\ : std_logic;
SIGNAL \UMemOut[2]~output_o\ : std_logic;
SIGNAL \UMemOut[3]~output_o\ : std_logic;
SIGNAL \UMemOut[4]~output_o\ : std_logic;
SIGNAL \UMemOut[5]~output_o\ : std_logic;
SIGNAL \UMemOut[6]~output_o\ : std_logic;
SIGNAL \UMemOut[7]~output_o\ : std_logic;
SIGNAL \UMemOut[8]~output_o\ : std_logic;
SIGNAL \UMemOut[9]~output_o\ : std_logic;
SIGNAL \UMemOut[10]~output_o\ : std_logic;
SIGNAL \UMemOut[11]~output_o\ : std_logic;
SIGNAL \UMemOut[12]~output_o\ : std_logic;
SIGNAL \UMemOut[13]~output_o\ : std_logic;
SIGNAL \UMemOut[14]~output_o\ : std_logic;
SIGNAL \UMemOut[15]~output_o\ : std_logic;
SIGNAL \UMemOut[16]~output_o\ : std_logic;
SIGNAL \UMemOut[17]~output_o\ : std_logic;
SIGNAL \UMemOut[18]~output_o\ : std_logic;
SIGNAL \UMemOut[19]~output_o\ : std_logic;
SIGNAL \UMemOut[20]~output_o\ : std_logic;
SIGNAL \UMemOut[21]~output_o\ : std_logic;
SIGNAL \UMemOut[22]~output_o\ : std_logic;
SIGNAL \UMemOut[23]~output_o\ : std_logic;
SIGNAL \UMemOut[24]~output_o\ : std_logic;
SIGNAL \UMemOut[25]~output_o\ : std_logic;
SIGNAL \UMemOut[26]~output_o\ : std_logic;
SIGNAL \UMemOut[27]~output_o\ : std_logic;
SIGNAL \UMemOut[28]~output_o\ : std_logic;
SIGNAL \UMemOut[29]~output_o\ : std_logic;
SIGNAL \UMemOut[30]~output_o\ : std_logic;
SIGNAL \UMemOut[31]~output_o\ : std_logic;
SIGNAL \UMemOut[32]~output_o\ : std_logic;
SIGNAL \UMemOut[33]~output_o\ : std_logic;
SIGNAL \UMemOut[34]~output_o\ : std_logic;
SIGNAL \UMemOut[35]~output_o\ : std_logic;
SIGNAL \UMemOut[36]~output_o\ : std_logic;
SIGNAL \UMemOut[37]~output_o\ : std_logic;
SIGNAL \UMemOut[38]~output_o\ : std_logic;
SIGNAL \UMemOut[39]~output_o\ : std_logic;
SIGNAL \UMemOut[40]~output_o\ : std_logic;
SIGNAL \UMemOut[41]~output_o\ : std_logic;
SIGNAL \UMemOut[42]~output_o\ : std_logic;
SIGNAL \UMemOut[43]~output_o\ : std_logic;
SIGNAL \UMemOut[44]~output_o\ : std_logic;
SIGNAL \UMemOut[45]~output_o\ : std_logic;
SIGNAL \UMemOut[46]~output_o\ : std_logic;
SIGNAL \UMemOut[47]~output_o\ : std_logic;
SIGNAL \UMemOut[48]~output_o\ : std_logic;
SIGNAL \UMemOut[49]~output_o\ : std_logic;
SIGNAL \UMemOut[50]~output_o\ : std_logic;
SIGNAL \UMemOut[51]~output_o\ : std_logic;
SIGNAL \UMemOut[52]~output_o\ : std_logic;
SIGNAL \UMemOut[53]~output_o\ : std_logic;
SIGNAL \UMemOut[54]~output_o\ : std_logic;
SIGNAL \UMemOut[55]~output_o\ : std_logic;
SIGNAL \UMemOut[56]~output_o\ : std_logic;
SIGNAL \UMemOut[57]~output_o\ : std_logic;
SIGNAL \UMemOut[58]~output_o\ : std_logic;
SIGNAL \UMemOut[59]~output_o\ : std_logic;
SIGNAL \UMemOut[60]~output_o\ : std_logic;
SIGNAL \UMemOut[61]~output_o\ : std_logic;
SIGNAL \UMemOut[62]~output_o\ : std_logic;
SIGNAL \UMemOut[63]~output_o\ : std_logic;
SIGNAL \ALU[0]~output_o\ : std_logic;
SIGNAL \ALU[1]~output_o\ : std_logic;
SIGNAL \ALU[2]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \NextAddUC[0]~0_combout\ : std_logic;
SIGNAL \address[0]~feeder_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \NextAddUC[1]~feeder_combout\ : std_logic;
SIGNAL \address[1]~feeder_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \MDR[0]~input_o\ : std_logic;
SIGNAL \MDR[1]~input_o\ : std_logic;
SIGNAL \MDR[2]~input_o\ : std_logic;
SIGNAL \MDR[3]~input_o\ : std_logic;
SIGNAL \MDR[4]~input_o\ : std_logic;
SIGNAL \MDR[5]~input_o\ : std_logic;
SIGNAL \MDR[6]~input_o\ : std_logic;
SIGNAL \MDR[7]~input_o\ : std_logic;
SIGNAL address : std_logic_vector(15 DOWNTO 0);
SIGNAL NextAddUC : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_Flags <= Flags;
ww_MDR <= MDR;
ww_Cache <= Cache;
MBusMux <= ww_MBusMux;
RegEn <= ww_RegEn;
RegVal <= ww_RegVal;
MuxA <= ww_MuxA;
MuxB <= ww_MuxB;
MuxC <= ww_MuxC;
MuxMAR <= ww_MuxMAR;
EnableDeco <= ww_EnableDeco;
MuxRAM <= ww_MuxRAM;
WR_Ram <= ww_WR_Ram;
Destino <= ww_Destino;
Fuente <= ww_Fuente;
UMemOut <= ww_UMemOut;
ALU <= ww_ALU;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y52_N4
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

-- Location: IOOBUF_X51_Y0_N16
\MBusMux[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Equal0~0_combout\,
	devoe => ww_devoe,
	o => \MBusMux[0]~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\MBusMux[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal1~0_combout\,
	devoe => ww_devoe,
	o => \MBusMux[1]~output_o\);

-- Location: IOOBUF_X0_Y18_N2
\MBusMux[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \MBusMux[2]~output_o\);

-- Location: IOOBUF_X0_Y9_N23
\MBusMux[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \MBusMux[3]~output_o\);

-- Location: IOOBUF_X56_Y54_N16
\MBusMux[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \MBusMux[4]~output_o\);

-- Location: IOOBUF_X51_Y0_N2
\RegEn[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Equal0~0_combout\,
	devoe => ww_devoe,
	o => \RegEn[0]~output_o\);

-- Location: IOOBUF_X36_Y0_N2
\RegEn[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal1~0_combout\,
	devoe => ww_devoe,
	o => \RegEn[1]~output_o\);

-- Location: IOOBUF_X31_Y39_N2
\RegEn[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RegEn[2]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\RegEn[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RegEn[3]~output_o\);

-- Location: IOOBUF_X49_Y0_N23
\RegVal[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Equal0~0_combout\,
	devoe => ww_devoe,
	o => \RegVal[0]~output_o\);

-- Location: IOOBUF_X34_Y0_N23
\RegVal[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal1~0_combout\,
	devoe => ww_devoe,
	o => \RegVal[1]~output_o\);

-- Location: IOOBUF_X14_Y0_N16
\RegVal[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RegVal[2]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\RegVal[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RegVal[3]~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\MuxA~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \MuxA~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\MuxB~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal1~0_combout\,
	devoe => ww_devoe,
	o => \MuxB~output_o\);

-- Location: IOOBUF_X51_Y0_N9
\MuxC~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Equal0~0_combout\,
	devoe => ww_devoe,
	o => \MuxC~output_o\);

-- Location: IOOBUF_X78_Y42_N2
\MuxMAR~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \MuxMAR~output_o\);

-- Location: IOOBUF_X0_Y15_N9
\EnableDeco~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \EnableDeco~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\MuxRAM~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \MuxRAM~output_o\);

-- Location: IOOBUF_X60_Y0_N30
\WR_Ram~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \WR_Ram~output_o\);

-- Location: IOOBUF_X26_Y0_N23
\Destino[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MDR[0]~input_o\,
	devoe => ww_devoe,
	o => \Destino[0]~output_o\);

-- Location: IOOBUF_X78_Y25_N23
\Destino[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MDR[1]~input_o\,
	devoe => ww_devoe,
	o => \Destino[1]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\Destino[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MDR[2]~input_o\,
	devoe => ww_devoe,
	o => \Destino[2]~output_o\);

-- Location: IOOBUF_X26_Y39_N30
\Destino[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MDR[3]~input_o\,
	devoe => ww_devoe,
	o => \Destino[3]~output_o\);

-- Location: IOOBUF_X60_Y54_N23
\Destino[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MDR[4]~input_o\,
	devoe => ww_devoe,
	o => \Destino[4]~output_o\);

-- Location: IOOBUF_X31_Y39_N23
\Destino[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MDR[5]~input_o\,
	devoe => ww_devoe,
	o => \Destino[5]~output_o\);

-- Location: IOOBUF_X22_Y39_N23
\Destino[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MDR[6]~input_o\,
	devoe => ww_devoe,
	o => \Destino[6]~output_o\);

-- Location: IOOBUF_X78_Y37_N2
\Destino[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MDR[7]~input_o\,
	devoe => ww_devoe,
	o => \Destino[7]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\Fuente[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Fuente[0]~output_o\);

-- Location: IOOBUF_X49_Y54_N16
\Fuente[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Fuente[1]~output_o\);

-- Location: IOOBUF_X54_Y54_N30
\Fuente[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Fuente[2]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\Fuente[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Fuente[3]~output_o\);

-- Location: IOOBUF_X24_Y39_N2
\Fuente[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Fuente[4]~output_o\);

-- Location: IOOBUF_X22_Y39_N16
\Fuente[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Fuente[5]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\Fuente[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Fuente[6]~output_o\);

-- Location: IOOBUF_X69_Y0_N16
\Fuente[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Fuente[7]~output_o\);

-- Location: IOOBUF_X49_Y0_N30
\UMemOut[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Equal0~0_combout\,
	devoe => ww_devoe,
	o => \UMemOut[0]~output_o\);

-- Location: IOOBUF_X38_Y0_N30
\UMemOut[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal1~0_combout\,
	devoe => ww_devoe,
	o => \UMemOut[1]~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\UMemOut[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \UMemOut[2]~output_o\);

-- Location: IOOBUF_X78_Y23_N2
\UMemOut[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \UMemOut[3]~output_o\);

-- Location: IOOBUF_X40_Y0_N30
\UMemOut[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \UMemOut[4]~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\UMemOut[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \UMemOut[5]~output_o\);

-- Location: IOOBUF_X69_Y0_N23
\UMemOut[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \UMemOut[6]~output_o\);

-- Location: IOOBUF_X56_Y0_N23
\UMemOut[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \UMemOut[7]~output_o\);

-- Location: IOOBUF_X78_Y17_N23
\UMemOut[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \UMemOut[8]~output_o\);

-- Location: IOOBUF_X54_Y0_N2
\UMemOut[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \UMemOut[9]~output_o\);

-- Location: IOOBUF_X26_Y0_N16
\UMemOut[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \UMemOut[10]~output_o\);

-- Location: IOOBUF_X20_Y0_N23
\UMemOut[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \UMemOut[11]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\UMemOut[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \UMemOut[12]~output_o\);

-- Location: IOOBUF_X78_Y34_N9
\UMemOut[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \UMemOut[13]~output_o\);

-- Location: IOOBUF_X78_Y15_N16
\UMemOut[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \UMemOut[14]~output_o\);

-- Location: IOOBUF_X24_Y0_N16
\UMemOut[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \UMemOut[15]~output_o\);

-- Location: IOOBUF_X40_Y0_N2
\UMemOut[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Equal0~0_combout\,
	devoe => ww_devoe,
	o => \UMemOut[16]~output_o\);

-- Location: IOOBUF_X38_Y0_N16
\UMemOut[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal1~0_combout\,
	devoe => ww_devoe,
	o => \UMemOut[17]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\UMemOut[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \UMemOut[18]~output_o\);

-- Location: IOOBUF_X54_Y0_N16
\UMemOut[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \UMemOut[19]~output_o\);

-- Location: IOOBUF_X0_Y29_N9
\UMemOut[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \UMemOut[20]~output_o\);

-- Location: IOOBUF_X60_Y54_N16
\UMemOut[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \UMemOut[21]~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\UMemOut[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \UMemOut[22]~output_o\);

-- Location: IOOBUF_X78_Y36_N2
\UMemOut[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \UMemOut[23]~output_o\);

-- Location: IOOBUF_X78_Y41_N16
\UMemOut[24]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \UMemOut[24]~output_o\);

-- Location: IOOBUF_X78_Y34_N2
\UMemOut[25]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \UMemOut[25]~output_o\);

-- Location: IOOBUF_X24_Y39_N9
\UMemOut[26]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \UMemOut[26]~output_o\);

-- Location: IOOBUF_X78_Y40_N23
\UMemOut[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \UMemOut[27]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\UMemOut[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \UMemOut[28]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\UMemOut[29]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \UMemOut[29]~output_o\);

-- Location: IOOBUF_X49_Y54_N9
\UMemOut[30]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \UMemOut[30]~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\UMemOut[31]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \UMemOut[31]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\UMemOut[32]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Equal0~0_combout\,
	devoe => ww_devoe,
	o => \UMemOut[32]~output_o\);

-- Location: IOOBUF_X34_Y0_N16
\UMemOut[33]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal1~0_combout\,
	devoe => ww_devoe,
	o => \UMemOut[33]~output_o\);

-- Location: IOOBUF_X78_Y17_N9
\UMemOut[34]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \UMemOut[34]~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\UMemOut[35]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \UMemOut[35]~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\UMemOut[36]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \UMemOut[36]~output_o\);

-- Location: IOOBUF_X0_Y34_N2
\UMemOut[37]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \UMemOut[37]~output_o\);

-- Location: IOOBUF_X78_Y34_N24
\UMemOut[38]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \UMemOut[38]~output_o\);

-- Location: IOOBUF_X0_Y16_N16
\UMemOut[39]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \UMemOut[39]~output_o\);

-- Location: IOOBUF_X60_Y54_N30
\UMemOut[40]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \UMemOut[40]~output_o\);

-- Location: IOOBUF_X20_Y0_N16
\UMemOut[41]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \UMemOut[41]~output_o\);

-- Location: IOOBUF_X78_Y3_N23
\UMemOut[42]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \UMemOut[42]~output_o\);

-- Location: IOOBUF_X0_Y29_N2
\UMemOut[43]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \UMemOut[43]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\UMemOut[44]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \UMemOut[44]~output_o\);

-- Location: IOOBUF_X51_Y0_N23
\UMemOut[45]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Equal0~0_combout\,
	devoe => ww_devoe,
	o => \UMemOut[45]~output_o\);

-- Location: IOOBUF_X34_Y0_N30
\UMemOut[46]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal1~0_combout\,
	devoe => ww_devoe,
	o => \UMemOut[46]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\UMemOut[47]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \UMemOut[47]~output_o\);

-- Location: IOOBUF_X49_Y0_N16
\UMemOut[48]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Equal0~0_combout\,
	devoe => ww_devoe,
	o => \UMemOut[48]~output_o\);

-- Location: IOOBUF_X36_Y0_N9
\UMemOut[49]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal1~0_combout\,
	devoe => ww_devoe,
	o => \UMemOut[49]~output_o\);

-- Location: IOOBUF_X31_Y39_N30
\UMemOut[50]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \UMemOut[50]~output_o\);

-- Location: IOOBUF_X24_Y0_N30
\UMemOut[51]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \UMemOut[51]~output_o\);

-- Location: IOOBUF_X46_Y0_N9
\UMemOut[52]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Equal0~0_combout\,
	devoe => ww_devoe,
	o => \UMemOut[52]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\UMemOut[53]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal1~0_combout\,
	devoe => ww_devoe,
	o => \UMemOut[53]~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\UMemOut[54]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \UMemOut[54]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\UMemOut[55]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Equal0~0_combout\,
	devoe => ww_devoe,
	o => \UMemOut[55]~output_o\);

-- Location: IOOBUF_X38_Y0_N23
\UMemOut[56]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal1~0_combout\,
	devoe => ww_devoe,
	o => \UMemOut[56]~output_o\);

-- Location: IOOBUF_X78_Y40_N2
\UMemOut[57]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \UMemOut[57]~output_o\);

-- Location: IOOBUF_X62_Y0_N30
\UMemOut[58]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \UMemOut[58]~output_o\);

-- Location: IOOBUF_X51_Y0_N30
\UMemOut[59]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Equal0~0_combout\,
	devoe => ww_devoe,
	o => \UMemOut[59]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\UMemOut[60]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal1~0_combout\,
	devoe => ww_devoe,
	o => \UMemOut[60]~output_o\);

-- Location: IOOBUF_X78_Y15_N2
\UMemOut[61]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \UMemOut[61]~output_o\);

-- Location: IOOBUF_X78_Y15_N23
\UMemOut[62]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \UMemOut[62]~output_o\);

-- Location: IOOBUF_X0_Y30_N16
\UMemOut[63]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \UMemOut[63]~output_o\);

-- Location: IOOBUF_X46_Y0_N2
\ALU[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Equal0~0_combout\,
	devoe => ww_devoe,
	o => \ALU[0]~output_o\);

-- Location: IOOBUF_X34_Y0_N9
\ALU[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal1~0_combout\,
	devoe => ww_devoe,
	o => \ALU[1]~output_o\);

-- Location: IOOBUF_X54_Y0_N30
\ALU[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALU[2]~output_o\);

-- Location: IOIBUF_X0_Y18_N15
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G3
\clk~inputclkctrl\ : fiftyfivenm_clkctrl
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

-- Location: LCCOMB_X41_Y1_N24
\NextAddUC[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \NextAddUC[0]~0_combout\ = !\Equal0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Equal0~0_combout\,
	combout => \NextAddUC[0]~0_combout\);

-- Location: FF_X41_Y1_N25
\NextAddUC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \NextAddUC[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => NextAddUC(0));

-- Location: LCCOMB_X41_Y1_N16
\address[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \address[0]~feeder_combout\ = NextAddUC(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => NextAddUC(0),
	combout => \address[0]~feeder_combout\);

-- Location: FF_X41_Y1_N17
\address[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \address[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => address(0));

-- Location: LCCOMB_X41_Y1_N18
\Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!address(1) & address(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => address(1),
	datad => address(0),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X41_Y1_N10
\NextAddUC[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \NextAddUC[1]~feeder_combout\ = \Equal1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Equal1~0_combout\,
	combout => \NextAddUC[1]~feeder_combout\);

-- Location: FF_X41_Y1_N11
\NextAddUC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \NextAddUC[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => NextAddUC(1));

-- Location: LCCOMB_X41_Y1_N30
\address[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \address[1]~feeder_combout\ = NextAddUC(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => NextAddUC(1),
	combout => \address[1]~feeder_combout\);

-- Location: FF_X41_Y1_N31
\address[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \address[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => address(1));

-- Location: LCCOMB_X41_Y1_N28
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (address(1)) # (address(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => address(1),
	datad => address(0),
	combout => \Equal0~0_combout\);

-- Location: IOIBUF_X26_Y0_N8
\MDR[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MDR(0),
	o => \MDR[0]~input_o\);

-- Location: IOIBUF_X78_Y25_N1
\MDR[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MDR(1),
	o => \MDR[1]~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\MDR[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MDR(2),
	o => \MDR[2]~input_o\);

-- Location: IOIBUF_X26_Y39_N15
\MDR[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MDR(3),
	o => \MDR[3]~input_o\);

-- Location: IOIBUF_X60_Y54_N1
\MDR[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MDR(4),
	o => \MDR[4]~input_o\);

-- Location: IOIBUF_X31_Y39_N8
\MDR[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MDR(5),
	o => \MDR[5]~input_o\);

-- Location: IOIBUF_X22_Y39_N29
\MDR[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MDR(6),
	o => \MDR[6]~input_o\);

-- Location: IOIBUF_X78_Y37_N8
\MDR[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MDR(7),
	o => \MDR[7]~input_o\);

-- Location: IOIBUF_X0_Y36_N1
\rst~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: IOIBUF_X22_Y0_N1
\Flags[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Flags(0),
	o => \Flags[0]~input_o\);

-- Location: IOIBUF_X58_Y54_N29
\Flags[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Flags(1),
	o => \Flags[1]~input_o\);

-- Location: IOIBUF_X58_Y54_N15
\Flags[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Flags(2),
	o => \Flags[2]~input_o\);

-- Location: IOIBUF_X74_Y54_N15
\Flags[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Flags(3),
	o => \Flags[3]~input_o\);

-- Location: IOIBUF_X78_Y29_N15
\Flags[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Flags(4),
	o => \Flags[4]~input_o\);

-- Location: IOIBUF_X0_Y23_N1
\Flags[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Flags(5),
	o => \Flags[5]~input_o\);

-- Location: IOIBUF_X78_Y17_N1
\Flags[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Flags(6),
	o => \Flags[6]~input_o\);

-- Location: IOIBUF_X78_Y24_N15
\Flags[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Flags(7),
	o => \Flags[7]~input_o\);

-- Location: IOIBUF_X0_Y26_N1
\Flags[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Flags(8),
	o => \Flags[8]~input_o\);

-- Location: IOIBUF_X0_Y13_N8
\Flags[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Flags(9),
	o => \Flags[9]~input_o\);

-- Location: IOIBUF_X62_Y54_N29
\Flags[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Flags(10),
	o => \Flags[10]~input_o\);

-- Location: IOIBUF_X46_Y54_N29
\Flags[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Flags(11),
	o => \Flags[11]~input_o\);

-- Location: IOIBUF_X78_Y33_N15
\Flags[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Flags(12),
	o => \Flags[12]~input_o\);

-- Location: IOIBUF_X16_Y0_N29
\Flags[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Flags(13),
	o => \Flags[13]~input_o\);

-- Location: IOIBUF_X31_Y0_N22
\Flags[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Flags(14),
	o => \Flags[14]~input_o\);

-- Location: IOIBUF_X58_Y0_N1
\Flags[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Flags(15),
	o => \Flags[15]~input_o\);

-- Location: IOIBUF_X0_Y13_N22
\Cache[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cache(0),
	o => \Cache[0]~input_o\);

-- Location: IOIBUF_X78_Y43_N22
\Cache[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cache(1),
	o => \Cache[1]~input_o\);

-- Location: IOIBUF_X58_Y0_N29
\Cache[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cache(2),
	o => \Cache[2]~input_o\);

-- Location: IOIBUF_X78_Y29_N22
\Cache[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cache(3),
	o => \Cache[3]~input_o\);

-- Location: IOIBUF_X56_Y0_N8
\Cache[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cache(4),
	o => \Cache[4]~input_o\);

-- Location: IOIBUF_X78_Y18_N1
\Cache[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cache(5),
	o => \Cache[5]~input_o\);

-- Location: IOIBUF_X78_Y25_N8
\Cache[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cache(6),
	o => \Cache[6]~input_o\);

-- Location: IOIBUF_X62_Y0_N8
\Cache[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cache(7),
	o => \Cache[7]~input_o\);

-- Location: IOIBUF_X0_Y9_N1
\Cache[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cache(8),
	o => \Cache[8]~input_o\);

-- Location: IOIBUF_X0_Y13_N15
\Cache[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cache(9),
	o => \Cache[9]~input_o\);

-- Location: IOIBUF_X36_Y39_N22
\Cache[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cache(10),
	o => \Cache[10]~input_o\);

-- Location: IOIBUF_X31_Y0_N1
\Cache[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cache(11),
	o => \Cache[11]~input_o\);

-- Location: IOIBUF_X58_Y54_N1
\Cache[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cache(12),
	o => \Cache[12]~input_o\);

-- Location: IOIBUF_X78_Y17_N15
\Cache[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cache(13),
	o => \Cache[13]~input_o\);

-- Location: IOIBUF_X29_Y0_N8
\Cache[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cache(14),
	o => \Cache[14]~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\Cache[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cache(15),
	o => \Cache[15]~input_o\);

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

ww_MBusMux(0) <= \MBusMux[0]~output_o\;

ww_MBusMux(1) <= \MBusMux[1]~output_o\;

ww_MBusMux(2) <= \MBusMux[2]~output_o\;

ww_MBusMux(3) <= \MBusMux[3]~output_o\;

ww_MBusMux(4) <= \MBusMux[4]~output_o\;

ww_RegEn(0) <= \RegEn[0]~output_o\;

ww_RegEn(1) <= \RegEn[1]~output_o\;

ww_RegEn(2) <= \RegEn[2]~output_o\;

ww_RegEn(3) <= \RegEn[3]~output_o\;

ww_RegVal(0) <= \RegVal[0]~output_o\;

ww_RegVal(1) <= \RegVal[1]~output_o\;

ww_RegVal(2) <= \RegVal[2]~output_o\;

ww_RegVal(3) <= \RegVal[3]~output_o\;

ww_MuxA <= \MuxA~output_o\;

ww_MuxB <= \MuxB~output_o\;

ww_MuxC <= \MuxC~output_o\;

ww_MuxMAR <= \MuxMAR~output_o\;

ww_EnableDeco <= \EnableDeco~output_o\;

ww_MuxRAM <= \MuxRAM~output_o\;

ww_WR_Ram <= \WR_Ram~output_o\;

ww_Destino(0) <= \Destino[0]~output_o\;

ww_Destino(1) <= \Destino[1]~output_o\;

ww_Destino(2) <= \Destino[2]~output_o\;

ww_Destino(3) <= \Destino[3]~output_o\;

ww_Destino(4) <= \Destino[4]~output_o\;

ww_Destino(5) <= \Destino[5]~output_o\;

ww_Destino(6) <= \Destino[6]~output_o\;

ww_Destino(7) <= \Destino[7]~output_o\;

ww_Fuente(0) <= \Fuente[0]~output_o\;

ww_Fuente(1) <= \Fuente[1]~output_o\;

ww_Fuente(2) <= \Fuente[2]~output_o\;

ww_Fuente(3) <= \Fuente[3]~output_o\;

ww_Fuente(4) <= \Fuente[4]~output_o\;

ww_Fuente(5) <= \Fuente[5]~output_o\;

ww_Fuente(6) <= \Fuente[6]~output_o\;

ww_Fuente(7) <= \Fuente[7]~output_o\;

ww_UMemOut(0) <= \UMemOut[0]~output_o\;

ww_UMemOut(1) <= \UMemOut[1]~output_o\;

ww_UMemOut(2) <= \UMemOut[2]~output_o\;

ww_UMemOut(3) <= \UMemOut[3]~output_o\;

ww_UMemOut(4) <= \UMemOut[4]~output_o\;

ww_UMemOut(5) <= \UMemOut[5]~output_o\;

ww_UMemOut(6) <= \UMemOut[6]~output_o\;

ww_UMemOut(7) <= \UMemOut[7]~output_o\;

ww_UMemOut(8) <= \UMemOut[8]~output_o\;

ww_UMemOut(9) <= \UMemOut[9]~output_o\;

ww_UMemOut(10) <= \UMemOut[10]~output_o\;

ww_UMemOut(11) <= \UMemOut[11]~output_o\;

ww_UMemOut(12) <= \UMemOut[12]~output_o\;

ww_UMemOut(13) <= \UMemOut[13]~output_o\;

ww_UMemOut(14) <= \UMemOut[14]~output_o\;

ww_UMemOut(15) <= \UMemOut[15]~output_o\;

ww_UMemOut(16) <= \UMemOut[16]~output_o\;

ww_UMemOut(17) <= \UMemOut[17]~output_o\;

ww_UMemOut(18) <= \UMemOut[18]~output_o\;

ww_UMemOut(19) <= \UMemOut[19]~output_o\;

ww_UMemOut(20) <= \UMemOut[20]~output_o\;

ww_UMemOut(21) <= \UMemOut[21]~output_o\;

ww_UMemOut(22) <= \UMemOut[22]~output_o\;

ww_UMemOut(23) <= \UMemOut[23]~output_o\;

ww_UMemOut(24) <= \UMemOut[24]~output_o\;

ww_UMemOut(25) <= \UMemOut[25]~output_o\;

ww_UMemOut(26) <= \UMemOut[26]~output_o\;

ww_UMemOut(27) <= \UMemOut[27]~output_o\;

ww_UMemOut(28) <= \UMemOut[28]~output_o\;

ww_UMemOut(29) <= \UMemOut[29]~output_o\;

ww_UMemOut(30) <= \UMemOut[30]~output_o\;

ww_UMemOut(31) <= \UMemOut[31]~output_o\;

ww_UMemOut(32) <= \UMemOut[32]~output_o\;

ww_UMemOut(33) <= \UMemOut[33]~output_o\;

ww_UMemOut(34) <= \UMemOut[34]~output_o\;

ww_UMemOut(35) <= \UMemOut[35]~output_o\;

ww_UMemOut(36) <= \UMemOut[36]~output_o\;

ww_UMemOut(37) <= \UMemOut[37]~output_o\;

ww_UMemOut(38) <= \UMemOut[38]~output_o\;

ww_UMemOut(39) <= \UMemOut[39]~output_o\;

ww_UMemOut(40) <= \UMemOut[40]~output_o\;

ww_UMemOut(41) <= \UMemOut[41]~output_o\;

ww_UMemOut(42) <= \UMemOut[42]~output_o\;

ww_UMemOut(43) <= \UMemOut[43]~output_o\;

ww_UMemOut(44) <= \UMemOut[44]~output_o\;

ww_UMemOut(45) <= \UMemOut[45]~output_o\;

ww_UMemOut(46) <= \UMemOut[46]~output_o\;

ww_UMemOut(47) <= \UMemOut[47]~output_o\;

ww_UMemOut(48) <= \UMemOut[48]~output_o\;

ww_UMemOut(49) <= \UMemOut[49]~output_o\;

ww_UMemOut(50) <= \UMemOut[50]~output_o\;

ww_UMemOut(51) <= \UMemOut[51]~output_o\;

ww_UMemOut(52) <= \UMemOut[52]~output_o\;

ww_UMemOut(53) <= \UMemOut[53]~output_o\;

ww_UMemOut(54) <= \UMemOut[54]~output_o\;

ww_UMemOut(55) <= \UMemOut[55]~output_o\;

ww_UMemOut(56) <= \UMemOut[56]~output_o\;

ww_UMemOut(57) <= \UMemOut[57]~output_o\;

ww_UMemOut(58) <= \UMemOut[58]~output_o\;

ww_UMemOut(59) <= \UMemOut[59]~output_o\;

ww_UMemOut(60) <= \UMemOut[60]~output_o\;

ww_UMemOut(61) <= \UMemOut[61]~output_o\;

ww_UMemOut(62) <= \UMemOut[62]~output_o\;

ww_UMemOut(63) <= \UMemOut[63]~output_o\;

ww_ALU(0) <= \ALU[0]~output_o\;

ww_ALU(1) <= \ALU[1]~output_o\;

ww_ALU(2) <= \ALU[2]~output_o\;
END structure;


