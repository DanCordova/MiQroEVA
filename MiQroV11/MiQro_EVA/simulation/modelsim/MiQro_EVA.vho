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

-- DATE "05/29/2022 22:42:47"

-- 
-- Device: Altera 10M50DAF672C7G Package FBGA672
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
-- ~ALTERA_TMS~	=>  Location: PIN_C2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_D3,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_F9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
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

ENTITY 	MiQro_EVA IS
    PORT (
	EnDec : OUT std_logic;
	Clk : IN std_logic;
	Rst : IN std_logic;
	dataA : IN std_logic_vector(7 DOWNTO 0);
	dataB : IN std_logic_vector(7 DOWNTO 0);
	dataC : IN std_logic_vector(7 DOWNTO 0);
	SelBus : OUT std_logic_vector(3 DOWNTO 0);
	WR_Output : OUT std_logic;
	CacheOut : OUT std_logic_vector(7 DOWNTO 0);
	DataBus : OUT std_logic_vector(7 DOWNTO 0);
	EnReg : OUT std_logic_vector(15 DOWNTO 0);
	IROut : OUT std_logic_vector(7 DOWNTO 0);
	MAROut : OUT std_logic_vector(7 DOWNTO 0);
	MDR : OUT std_logic_vector(7 DOWNTO 0);
	MSELOUT : OUT std_logic_vector(4 DOWNTO 0);
	OutBus : OUT std_logic_vector(7 DOWNTO 0);
	PCOut : OUT std_logic_vector(7 DOWNTO 0);
	RAMOut : OUT std_logic_vector(7 DOWNTO 0);
	SelRegOut : OUT std_logic_vector(3 DOWNTO 0);
	UMemOut : OUT std_logic_vector(64 DOWNTO 0)
	);
END MiQro_EVA;

-- Design Ports Information
-- EnDec	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataB[7]	=>  Location: PIN_U14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataB[6]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataB[5]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataB[4]	=>  Location: PIN_AC6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataB[3]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataB[2]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataB[1]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataB[0]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataC[7]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataC[6]	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataC[5]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataC[4]	=>  Location: PIN_AD5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataC[3]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataC[2]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataC[1]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataC[0]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SelBus[3]	=>  Location: PIN_T26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SelBus[2]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SelBus[1]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SelBus[0]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WR_Output	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CacheOut[7]	=>  Location: PIN_AD9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CacheOut[6]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CacheOut[5]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CacheOut[4]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CacheOut[3]	=>  Location: PIN_E26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CacheOut[2]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CacheOut[1]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CacheOut[0]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataBus[7]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataBus[6]	=>  Location: PIN_K24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataBus[5]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataBus[4]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataBus[3]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataBus[2]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataBus[1]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataBus[0]	=>  Location: PIN_AD13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EnReg[15]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EnReg[14]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EnReg[13]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EnReg[12]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EnReg[11]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EnReg[10]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EnReg[9]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EnReg[8]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EnReg[7]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EnReg[6]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EnReg[5]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EnReg[4]	=>  Location: PIN_AF3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EnReg[3]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EnReg[2]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EnReg[1]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EnReg[0]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IROut[7]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IROut[6]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IROut[5]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IROut[4]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IROut[3]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IROut[2]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IROut[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IROut[0]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAROut[7]	=>  Location: PIN_N22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAROut[6]	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAROut[5]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAROut[4]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAROut[3]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAROut[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAROut[1]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAROut[0]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MDR[7]	=>  Location: PIN_J24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MDR[6]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MDR[5]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MDR[4]	=>  Location: PIN_F25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MDR[3]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MDR[2]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MDR[1]	=>  Location: PIN_M17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MDR[0]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSELOUT[4]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSELOUT[3]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSELOUT[2]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSELOUT[1]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSELOUT[0]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OutBus[7]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OutBus[6]	=>  Location: PIN_D26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OutBus[5]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OutBus[4]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OutBus[3]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OutBus[2]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OutBus[1]	=>  Location: PIN_L23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OutBus[0]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOut[7]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOut[6]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOut[5]	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOut[4]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOut[3]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOut[2]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOut[1]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOut[0]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMOut[7]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMOut[6]	=>  Location: PIN_K23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMOut[5]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMOut[4]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMOut[3]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMOut[2]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMOut[1]	=>  Location: PIN_C26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMOut[0]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SelRegOut[3]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SelRegOut[2]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SelRegOut[1]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SelRegOut[0]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[64]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[63]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[62]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[61]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[60]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[59]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[58]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[57]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[56]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[55]	=>  Location: PIN_G25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[54]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[53]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[52]	=>  Location: PIN_R23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[51]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[50]	=>  Location: PIN_K14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[49]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[48]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[47]	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[46]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[45]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[44]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[43]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[42]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[41]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[40]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[39]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[38]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[37]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[36]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[35]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[34]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[33]	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[32]	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[31]	=>  Location: PIN_N23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[30]	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[29]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[28]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[27]	=>  Location: PIN_AD8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[26]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[25]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[24]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[23]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[22]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[21]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[20]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[19]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[18]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[17]	=>  Location: PIN_J23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[16]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[15]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[14]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[13]	=>  Location: PIN_AA11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[12]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[11]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[10]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[9]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[8]	=>  Location: PIN_W23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[7]	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[6]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[5]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[4]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[3]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[2]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[1]	=>  Location: PIN_C25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[0]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clk	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rst	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataA[7]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataA[6]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataA[5]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataA[4]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataA[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataA[2]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataA[1]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataA[0]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MiQro_EVA IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_EnDec : std_logic;
SIGNAL ww_Clk : std_logic;
SIGNAL ww_Rst : std_logic;
SIGNAL ww_dataA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_dataB : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_dataC : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_SelBus : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_WR_Output : std_logic;
SIGNAL ww_CacheOut : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_DataBus : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_EnReg : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_IROut : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_MAROut : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_MDR : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_MSELOUT : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_OutBus : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_PCOut : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_RAMOut : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_SelRegOut : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_UMemOut : std_logic_vector(64 DOWNTO 0);
SIGNAL \inst4|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst4|inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst4|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dataB[7]~input_o\ : std_logic;
SIGNAL \dataB[6]~input_o\ : std_logic;
SIGNAL \dataB[5]~input_o\ : std_logic;
SIGNAL \dataB[4]~input_o\ : std_logic;
SIGNAL \dataB[3]~input_o\ : std_logic;
SIGNAL \dataB[2]~input_o\ : std_logic;
SIGNAL \dataB[1]~input_o\ : std_logic;
SIGNAL \dataB[0]~input_o\ : std_logic;
SIGNAL \dataC[7]~input_o\ : std_logic;
SIGNAL \dataC[6]~input_o\ : std_logic;
SIGNAL \dataC[5]~input_o\ : std_logic;
SIGNAL \dataC[4]~input_o\ : std_logic;
SIGNAL \dataC[3]~input_o\ : std_logic;
SIGNAL \dataC[2]~input_o\ : std_logic;
SIGNAL \dataC[1]~input_o\ : std_logic;
SIGNAL \dataC[0]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \EnDec~output_o\ : std_logic;
SIGNAL \SelBus[3]~output_o\ : std_logic;
SIGNAL \SelBus[2]~output_o\ : std_logic;
SIGNAL \SelBus[1]~output_o\ : std_logic;
SIGNAL \SelBus[0]~output_o\ : std_logic;
SIGNAL \WR_Output~output_o\ : std_logic;
SIGNAL \CacheOut[7]~output_o\ : std_logic;
SIGNAL \CacheOut[6]~output_o\ : std_logic;
SIGNAL \CacheOut[5]~output_o\ : std_logic;
SIGNAL \CacheOut[4]~output_o\ : std_logic;
SIGNAL \CacheOut[3]~output_o\ : std_logic;
SIGNAL \CacheOut[2]~output_o\ : std_logic;
SIGNAL \CacheOut[1]~output_o\ : std_logic;
SIGNAL \CacheOut[0]~output_o\ : std_logic;
SIGNAL \DataBus[7]~output_o\ : std_logic;
SIGNAL \DataBus[6]~output_o\ : std_logic;
SIGNAL \DataBus[5]~output_o\ : std_logic;
SIGNAL \DataBus[4]~output_o\ : std_logic;
SIGNAL \DataBus[3]~output_o\ : std_logic;
SIGNAL \DataBus[2]~output_o\ : std_logic;
SIGNAL \DataBus[1]~output_o\ : std_logic;
SIGNAL \DataBus[0]~output_o\ : std_logic;
SIGNAL \EnReg[15]~output_o\ : std_logic;
SIGNAL \EnReg[14]~output_o\ : std_logic;
SIGNAL \EnReg[13]~output_o\ : std_logic;
SIGNAL \EnReg[12]~output_o\ : std_logic;
SIGNAL \EnReg[11]~output_o\ : std_logic;
SIGNAL \EnReg[10]~output_o\ : std_logic;
SIGNAL \EnReg[9]~output_o\ : std_logic;
SIGNAL \EnReg[8]~output_o\ : std_logic;
SIGNAL \EnReg[7]~output_o\ : std_logic;
SIGNAL \EnReg[6]~output_o\ : std_logic;
SIGNAL \EnReg[5]~output_o\ : std_logic;
SIGNAL \EnReg[4]~output_o\ : std_logic;
SIGNAL \EnReg[3]~output_o\ : std_logic;
SIGNAL \EnReg[2]~output_o\ : std_logic;
SIGNAL \EnReg[1]~output_o\ : std_logic;
SIGNAL \EnReg[0]~output_o\ : std_logic;
SIGNAL \IROut[7]~output_o\ : std_logic;
SIGNAL \IROut[6]~output_o\ : std_logic;
SIGNAL \IROut[5]~output_o\ : std_logic;
SIGNAL \IROut[4]~output_o\ : std_logic;
SIGNAL \IROut[3]~output_o\ : std_logic;
SIGNAL \IROut[2]~output_o\ : std_logic;
SIGNAL \IROut[1]~output_o\ : std_logic;
SIGNAL \IROut[0]~output_o\ : std_logic;
SIGNAL \MAROut[7]~output_o\ : std_logic;
SIGNAL \MAROut[6]~output_o\ : std_logic;
SIGNAL \MAROut[5]~output_o\ : std_logic;
SIGNAL \MAROut[4]~output_o\ : std_logic;
SIGNAL \MAROut[3]~output_o\ : std_logic;
SIGNAL \MAROut[2]~output_o\ : std_logic;
SIGNAL \MAROut[1]~output_o\ : std_logic;
SIGNAL \MAROut[0]~output_o\ : std_logic;
SIGNAL \MDR[7]~output_o\ : std_logic;
SIGNAL \MDR[6]~output_o\ : std_logic;
SIGNAL \MDR[5]~output_o\ : std_logic;
SIGNAL \MDR[4]~output_o\ : std_logic;
SIGNAL \MDR[3]~output_o\ : std_logic;
SIGNAL \MDR[2]~output_o\ : std_logic;
SIGNAL \MDR[1]~output_o\ : std_logic;
SIGNAL \MDR[0]~output_o\ : std_logic;
SIGNAL \MSELOUT[4]~output_o\ : std_logic;
SIGNAL \MSELOUT[3]~output_o\ : std_logic;
SIGNAL \MSELOUT[2]~output_o\ : std_logic;
SIGNAL \MSELOUT[1]~output_o\ : std_logic;
SIGNAL \MSELOUT[0]~output_o\ : std_logic;
SIGNAL \OutBus[7]~output_o\ : std_logic;
SIGNAL \OutBus[6]~output_o\ : std_logic;
SIGNAL \OutBus[5]~output_o\ : std_logic;
SIGNAL \OutBus[4]~output_o\ : std_logic;
SIGNAL \OutBus[3]~output_o\ : std_logic;
SIGNAL \OutBus[2]~output_o\ : std_logic;
SIGNAL \OutBus[1]~output_o\ : std_logic;
SIGNAL \OutBus[0]~output_o\ : std_logic;
SIGNAL \PCOut[7]~output_o\ : std_logic;
SIGNAL \PCOut[6]~output_o\ : std_logic;
SIGNAL \PCOut[5]~output_o\ : std_logic;
SIGNAL \PCOut[4]~output_o\ : std_logic;
SIGNAL \PCOut[3]~output_o\ : std_logic;
SIGNAL \PCOut[2]~output_o\ : std_logic;
SIGNAL \PCOut[1]~output_o\ : std_logic;
SIGNAL \PCOut[0]~output_o\ : std_logic;
SIGNAL \RAMOut[7]~output_o\ : std_logic;
SIGNAL \RAMOut[6]~output_o\ : std_logic;
SIGNAL \RAMOut[5]~output_o\ : std_logic;
SIGNAL \RAMOut[4]~output_o\ : std_logic;
SIGNAL \RAMOut[3]~output_o\ : std_logic;
SIGNAL \RAMOut[2]~output_o\ : std_logic;
SIGNAL \RAMOut[1]~output_o\ : std_logic;
SIGNAL \RAMOut[0]~output_o\ : std_logic;
SIGNAL \SelRegOut[3]~output_o\ : std_logic;
SIGNAL \SelRegOut[2]~output_o\ : std_logic;
SIGNAL \SelRegOut[1]~output_o\ : std_logic;
SIGNAL \SelRegOut[0]~output_o\ : std_logic;
SIGNAL \UMemOut[64]~output_o\ : std_logic;
SIGNAL \UMemOut[63]~output_o\ : std_logic;
SIGNAL \UMemOut[62]~output_o\ : std_logic;
SIGNAL \UMemOut[61]~output_o\ : std_logic;
SIGNAL \UMemOut[60]~output_o\ : std_logic;
SIGNAL \UMemOut[59]~output_o\ : std_logic;
SIGNAL \UMemOut[58]~output_o\ : std_logic;
SIGNAL \UMemOut[57]~output_o\ : std_logic;
SIGNAL \UMemOut[56]~output_o\ : std_logic;
SIGNAL \UMemOut[55]~output_o\ : std_logic;
SIGNAL \UMemOut[54]~output_o\ : std_logic;
SIGNAL \UMemOut[53]~output_o\ : std_logic;
SIGNAL \UMemOut[52]~output_o\ : std_logic;
SIGNAL \UMemOut[51]~output_o\ : std_logic;
SIGNAL \UMemOut[50]~output_o\ : std_logic;
SIGNAL \UMemOut[49]~output_o\ : std_logic;
SIGNAL \UMemOut[48]~output_o\ : std_logic;
SIGNAL \UMemOut[47]~output_o\ : std_logic;
SIGNAL \UMemOut[46]~output_o\ : std_logic;
SIGNAL \UMemOut[45]~output_o\ : std_logic;
SIGNAL \UMemOut[44]~output_o\ : std_logic;
SIGNAL \UMemOut[43]~output_o\ : std_logic;
SIGNAL \UMemOut[42]~output_o\ : std_logic;
SIGNAL \UMemOut[41]~output_o\ : std_logic;
SIGNAL \UMemOut[40]~output_o\ : std_logic;
SIGNAL \UMemOut[39]~output_o\ : std_logic;
SIGNAL \UMemOut[38]~output_o\ : std_logic;
SIGNAL \UMemOut[37]~output_o\ : std_logic;
SIGNAL \UMemOut[36]~output_o\ : std_logic;
SIGNAL \UMemOut[35]~output_o\ : std_logic;
SIGNAL \UMemOut[34]~output_o\ : std_logic;
SIGNAL \UMemOut[33]~output_o\ : std_logic;
SIGNAL \UMemOut[32]~output_o\ : std_logic;
SIGNAL \UMemOut[31]~output_o\ : std_logic;
SIGNAL \UMemOut[30]~output_o\ : std_logic;
SIGNAL \UMemOut[29]~output_o\ : std_logic;
SIGNAL \UMemOut[28]~output_o\ : std_logic;
SIGNAL \UMemOut[27]~output_o\ : std_logic;
SIGNAL \UMemOut[26]~output_o\ : std_logic;
SIGNAL \UMemOut[25]~output_o\ : std_logic;
SIGNAL \UMemOut[24]~output_o\ : std_logic;
SIGNAL \UMemOut[23]~output_o\ : std_logic;
SIGNAL \UMemOut[22]~output_o\ : std_logic;
SIGNAL \UMemOut[21]~output_o\ : std_logic;
SIGNAL \UMemOut[20]~output_o\ : std_logic;
SIGNAL \UMemOut[19]~output_o\ : std_logic;
SIGNAL \UMemOut[18]~output_o\ : std_logic;
SIGNAL \UMemOut[17]~output_o\ : std_logic;
SIGNAL \UMemOut[16]~output_o\ : std_logic;
SIGNAL \UMemOut[15]~output_o\ : std_logic;
SIGNAL \UMemOut[14]~output_o\ : std_logic;
SIGNAL \UMemOut[13]~output_o\ : std_logic;
SIGNAL \UMemOut[12]~output_o\ : std_logic;
SIGNAL \UMemOut[11]~output_o\ : std_logic;
SIGNAL \UMemOut[10]~output_o\ : std_logic;
SIGNAL \UMemOut[9]~output_o\ : std_logic;
SIGNAL \UMemOut[8]~output_o\ : std_logic;
SIGNAL \UMemOut[7]~output_o\ : std_logic;
SIGNAL \UMemOut[6]~output_o\ : std_logic;
SIGNAL \UMemOut[5]~output_o\ : std_logic;
SIGNAL \UMemOut[4]~output_o\ : std_logic;
SIGNAL \UMemOut[3]~output_o\ : std_logic;
SIGNAL \UMemOut[2]~output_o\ : std_logic;
SIGNAL \UMemOut[1]~output_o\ : std_logic;
SIGNAL \UMemOut[0]~output_o\ : std_logic;
SIGNAL \Clk~input_o\ : std_logic;
SIGNAL \Clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|WideOr10~3_combout\ : std_logic;
SIGNAL \inst|WideOr10~combout\ : std_logic;
SIGNAL \inst|Mux12~0_combout\ : std_logic;
SIGNAL \inst|WideNor0~1_combout\ : std_logic;
SIGNAL \inst|WideOr9~2_combout\ : std_logic;
SIGNAL \inst|NextAddUC[12]~0_combout\ : std_logic;
SIGNAL \inst4|inst4|Regist[0]~8_combout\ : std_logic;
SIGNAL \Rst~input_o\ : std_logic;
SIGNAL \Rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|RegVal[1]~3_combout\ : std_logic;
SIGNAL \inst|RegVal[1]~12_combout\ : std_logic;
SIGNAL \inst|WideOr3~6_combout\ : std_logic;
SIGNAL \inst|WideOr3~16_combout\ : std_logic;
SIGNAL \inst|WideOr3~17_combout\ : std_logic;
SIGNAL \inst|WideOr3~15_combout\ : std_logic;
SIGNAL \inst|WideOr4~12_combout\ : std_logic;
SIGNAL \inst|WideOr4~13_combout\ : std_logic;
SIGNAL \inst|WideOr4~14_combout\ : std_logic;
SIGNAL \inst|WideOr4~15_combout\ : std_logic;
SIGNAL \inst|WideOr4~11_combout\ : std_logic;
SIGNAL \inst|WideOr6~6_combout\ : std_logic;
SIGNAL \inst|WideOr6~14_combout\ : std_logic;
SIGNAL \inst|WideOr6~15_combout\ : std_logic;
SIGNAL \inst|WideOr6~13_combout\ : std_logic;
SIGNAL \inst|Equal2~0_combout\ : std_logic;
SIGNAL \inst|Equal3~0_combout\ : std_logic;
SIGNAL \inst|Equal10~4_combout\ : std_logic;
SIGNAL \inst|Equal17~0_combout\ : std_logic;
SIGNAL \inst|WideOr4~combout\ : std_logic;
SIGNAL \inst4|inst21|Mux15~3_combout\ : std_logic;
SIGNAL \inst4|inst4|Regist[0]~24_combout\ : std_logic;
SIGNAL \inst4|inst21|Mux15~4_combout\ : std_logic;
SIGNAL \inst4|inst3|Regist[0]~0_combout\ : std_logic;
SIGNAL \inst4|inst20|Regist[0]~8_combout\ : std_logic;
SIGNAL \inst4|inst20|Add1~0_combout\ : std_logic;
SIGNAL \inst4|inst21|Mux15~2_combout\ : std_logic;
SIGNAL \inst4|inst20|Regist[7]~24_combout\ : std_logic;
SIGNAL \inst4|inst6|Regist[0]~feeder_combout\ : std_logic;
SIGNAL \dataA[0]~input_o\ : std_logic;
SIGNAL \inst|MuxA~8_combout\ : std_logic;
SIGNAL \inst4|inst21|Mux15~1_combout\ : std_logic;
SIGNAL \inst4|inst6|Regist[7]~8_combout\ : std_logic;
SIGNAL \inst4|inst1|Regist[0]~8_combout\ : std_logic;
SIGNAL \inst|WideOr8~4_combout\ : std_logic;
SIGNAL \inst|WideOr8~9_combout\ : std_logic;
SIGNAL \inst4|inst17|Regist[0]~8_combout\ : std_logic;
SIGNAL \inst4|inst21|Mux15~7_combout\ : std_logic;
SIGNAL \inst4|inst17|Regist[7]~24_combout\ : std_logic;
SIGNAL \inst4|inst1|Mux7~0_combout\ : std_logic;
SIGNAL \inst4|inst21|Mux15~6_combout\ : std_logic;
SIGNAL \inst4|inst1|Regist[7]~24_combout\ : std_logic;
SIGNAL \inst4|inst1|Regist[0]~9\ : std_logic;
SIGNAL \inst4|inst1|Regist[1]~10_combout\ : std_logic;
SIGNAL \inst4|inst17|Regist[0]~9\ : std_logic;
SIGNAL \inst4|inst17|Regist[1]~10_combout\ : std_logic;
SIGNAL \inst4|inst1|Mux6~0_combout\ : std_logic;
SIGNAL \inst4|inst1|Regist[1]~11\ : std_logic;
SIGNAL \inst4|inst1|Regist[2]~12_combout\ : std_logic;
SIGNAL \inst4|inst17|Regist[1]~11\ : std_logic;
SIGNAL \inst4|inst17|Regist[2]~12_combout\ : std_logic;
SIGNAL \inst4|inst4|Regist[0]~9\ : std_logic;
SIGNAL \inst4|inst4|Regist[1]~11\ : std_logic;
SIGNAL \inst4|inst4|Regist[2]~12_combout\ : std_logic;
SIGNAL \inst4|inst20|Regist[0]~9\ : std_logic;
SIGNAL \inst4|inst20|Regist[1]~11\ : std_logic;
SIGNAL \inst4|inst20|Regist[2]~12_combout\ : std_logic;
SIGNAL \inst4|inst20|Add1~1\ : std_logic;
SIGNAL \inst4|inst20|Add1~3\ : std_logic;
SIGNAL \inst4|inst20|Add1~4_combout\ : std_logic;
SIGNAL \inst4|inst1|Regist[2]~13\ : std_logic;
SIGNAL \inst4|inst1|Regist[3]~14_combout\ : std_logic;
SIGNAL \inst4|inst17|Regist[2]~13\ : std_logic;
SIGNAL \inst4|inst17|Regist[3]~14_combout\ : std_logic;
SIGNAL \inst4|inst4|Regist[2]~13\ : std_logic;
SIGNAL \inst4|inst4|Regist[3]~14_combout\ : std_logic;
SIGNAL \inst4|inst3|Regist[3]~feeder_combout\ : std_logic;
SIGNAL \inst4|inst20|Regist[2]~13\ : std_logic;
SIGNAL \inst4|inst20|Regist[3]~14_combout\ : std_logic;
SIGNAL \inst4|inst20|Add1~5\ : std_logic;
SIGNAL \inst4|inst20|Add1~6_combout\ : std_logic;
SIGNAL \inst|Equal29~2_combout\ : std_logic;
SIGNAL \inst|Equal29~3_combout\ : std_logic;
SIGNAL \inst|WideNor0~0_combout\ : std_logic;
SIGNAL \inst|WideNor0~2_combout\ : std_logic;
SIGNAL \inst|WideOr12~13_combout\ : std_logic;
SIGNAL \inst|WideOr2~0_combout\ : std_logic;
SIGNAL \inst4|inst6|Regist[3]~feeder_combout\ : std_logic;
SIGNAL \dataA[3]~input_o\ : std_logic;
SIGNAL \inst4|inst1|Regist[3]~15\ : std_logic;
SIGNAL \inst4|inst1|Regist[4]~16_combout\ : std_logic;
SIGNAL \inst4|inst17|Regist[3]~15\ : std_logic;
SIGNAL \inst4|inst17|Regist[4]~16_combout\ : std_logic;
SIGNAL \inst4|inst4|Regist[3]~15\ : std_logic;
SIGNAL \inst4|inst4|Regist[4]~16_combout\ : std_logic;
SIGNAL \inst4|inst20|Regist[3]~15\ : std_logic;
SIGNAL \inst4|inst20|Regist[4]~16_combout\ : std_logic;
SIGNAL \inst4|inst20|Add1~7\ : std_logic;
SIGNAL \inst4|inst20|Add1~8_combout\ : std_logic;
SIGNAL \inst4|inst6|Regist[4]~feeder_combout\ : std_logic;
SIGNAL \dataA[4]~input_o\ : std_logic;
SIGNAL \inst4|inst1|Regist[4]~17\ : std_logic;
SIGNAL \inst4|inst1|Regist[5]~18_combout\ : std_logic;
SIGNAL \inst4|inst17|Regist[4]~17\ : std_logic;
SIGNAL \inst4|inst17|Regist[5]~18_combout\ : std_logic;
SIGNAL \inst4|inst4|Regist[4]~17\ : std_logic;
SIGNAL \inst4|inst4|Regist[5]~18_combout\ : std_logic;
SIGNAL \inst4|inst20|Regist[4]~17\ : std_logic;
SIGNAL \inst4|inst20|Regist[5]~18_combout\ : std_logic;
SIGNAL \inst4|inst20|Add1~9\ : std_logic;
SIGNAL \inst4|inst20|Add1~10_combout\ : std_logic;
SIGNAL \inst4|inst6|Regist[5]~feeder_combout\ : std_logic;
SIGNAL \dataA[5]~input_o\ : std_logic;
SIGNAL \inst4|inst1|Regist[5]~19\ : std_logic;
SIGNAL \inst4|inst1|Regist[6]~20_combout\ : std_logic;
SIGNAL \inst4|inst17|Regist[5]~19\ : std_logic;
SIGNAL \inst4|inst17|Regist[6]~20_combout\ : std_logic;
SIGNAL \inst4|inst4|Regist[5]~19\ : std_logic;
SIGNAL \inst4|inst4|Regist[6]~20_combout\ : std_logic;
SIGNAL \inst4|inst20|Regist[5]~19\ : std_logic;
SIGNAL \inst4|inst20|Regist[6]~20_combout\ : std_logic;
SIGNAL \inst4|inst20|Add1~11\ : std_logic;
SIGNAL \inst4|inst20|Add1~12_combout\ : std_logic;
SIGNAL \inst4|inst1|Regist[6]~21\ : std_logic;
SIGNAL \inst4|inst1|Regist[7]~22_combout\ : std_logic;
SIGNAL \inst4|inst17|Regist[6]~21\ : std_logic;
SIGNAL \inst4|inst17|Regist[7]~22_combout\ : std_logic;
SIGNAL \inst4|inst4|Regist[6]~21\ : std_logic;
SIGNAL \inst4|inst4|Regist[7]~22_combout\ : std_logic;
SIGNAL \inst4|inst20|Regist[6]~21\ : std_logic;
SIGNAL \inst4|inst20|Regist[7]~22_combout\ : std_logic;
SIGNAL \inst4|inst20|Add1~13\ : std_logic;
SIGNAL \inst4|inst20|Add1~14_combout\ : std_logic;
SIGNAL \inst4|inst21|Mux15~0_combout\ : std_logic;
SIGNAL \inst4|inst7|Regist[7]~0_combout\ : std_logic;
SIGNAL \inst|WideOr0~15_combout\ : std_logic;
SIGNAL \inst|WideOr0~16_combout\ : std_logic;
SIGNAL \inst|WideOr0~17_combout\ : std_logic;
SIGNAL \inst|WideOr0~18_combout\ : std_logic;
SIGNAL \inst|WideOr0~combout\ : std_logic;
SIGNAL \inst4|inst6|Regist[7]~feeder_combout\ : std_logic;
SIGNAL \dataA[7]~input_o\ : std_logic;
SIGNAL \inst4|inst16|result[7]~256_combout\ : std_logic;
SIGNAL \inst4|inst6|Regist[7]~0_combout\ : std_logic;
SIGNAL \inst4|inst1|Mux0~0_combout\ : std_logic;
SIGNAL \inst4|inst7|Regist[6]~feeder_combout\ : std_logic;
SIGNAL \inst4|inst6|Regist[6]~feeder_combout\ : std_logic;
SIGNAL \dataA[6]~input_o\ : std_logic;
SIGNAL \inst4|inst16|result[6]~257_combout\ : std_logic;
SIGNAL \inst4|inst6|Regist[6]~1_combout\ : std_logic;
SIGNAL \inst4|inst1|Mux1~0_combout\ : std_logic;
SIGNAL \inst4|inst7|Regist[5]~feeder_combout\ : std_logic;
SIGNAL \inst4|inst16|result[5]~258_combout\ : std_logic;
SIGNAL \inst4|inst6|Regist[5]~2_combout\ : std_logic;
SIGNAL \inst4|inst1|Mux2~0_combout\ : std_logic;
SIGNAL \inst4|inst16|result[4]~259_combout\ : std_logic;
SIGNAL \inst4|inst6|Regist[4]~3_combout\ : std_logic;
SIGNAL \inst4|inst1|Mux3~0_combout\ : std_logic;
SIGNAL \inst4|inst7|Regist[3]~feeder_combout\ : std_logic;
SIGNAL \inst4|inst16|result[3]~260_combout\ : std_logic;
SIGNAL \inst4|inst6|Regist[3]~4_combout\ : std_logic;
SIGNAL \inst4|inst1|Mux4~0_combout\ : std_logic;
SIGNAL \inst4|inst6|Regist[2]~feeder_combout\ : std_logic;
SIGNAL \dataA[2]~input_o\ : std_logic;
SIGNAL \inst4|inst16|result[2]~261_combout\ : std_logic;
SIGNAL \inst4|inst6|Regist[2]~5_combout\ : std_logic;
SIGNAL \inst4|inst1|Mux5~0_combout\ : std_logic;
SIGNAL \inst4|inst16|result[0]~263_combout\ : std_logic;
SIGNAL \inst4|inst6|Regist[0]~7_combout\ : std_logic;
SIGNAL \inst4|inst21|Mux15~5_combout\ : std_logic;
SIGNAL \inst4|inst8|Regist[0]~0_combout\ : std_logic;
SIGNAL \inst4|inst8|Regist[6]~feeder_combout\ : std_logic;
SIGNAL \inst4|inst8|Regist[5]~feeder_combout\ : std_logic;
SIGNAL \inst4|inst8|Regist[4]~feeder_combout\ : std_logic;
SIGNAL \inst4|inst8|Regist[2]~feeder_combout\ : std_logic;
SIGNAL \inst4|inst252|ROM~0_combout\ : std_logic;
SIGNAL \inst4|inst252|ROM~1_combout\ : std_logic;
SIGNAL \inst|Mux4~0_combout\ : std_logic;
SIGNAL \inst|UMemOut[42]~3_combout\ : std_logic;
SIGNAL \inst|WideOr11~7_combout\ : std_logic;
SIGNAL \inst|WideOr11~5_combout\ : std_logic;
SIGNAL \inst|WideOr11~10_combout\ : std_logic;
SIGNAL \inst|Mux13~0_combout\ : std_logic;
SIGNAL \inst|WideOr12~10_combout\ : std_logic;
SIGNAL \inst|WideOr12~7_combout\ : std_logic;
SIGNAL \inst|WideOr12~8_combout\ : std_logic;
SIGNAL \inst|WideOr12~6_combout\ : std_logic;
SIGNAL \inst|WideOr12~5_combout\ : std_logic;
SIGNAL \inst|WideOr12~14_combout\ : std_logic;
SIGNAL \inst|Mux14~0_combout\ : std_logic;
SIGNAL \inst|WideOr7~14_combout\ : std_logic;
SIGNAL \inst|WideOr7~15_combout\ : std_logic;
SIGNAL \inst|WideOr7~12_combout\ : std_logic;
SIGNAL \inst|WideOr7~13_combout\ : std_logic;
SIGNAL \inst|WideOr7~11_combout\ : std_logic;
SIGNAL \inst4|inst4|Regist[1]~10_combout\ : std_logic;
SIGNAL \inst4|inst20|Regist[1]~10_combout\ : std_logic;
SIGNAL \inst4|inst20|Add1~2_combout\ : std_logic;
SIGNAL \inst4|inst6|Regist[1]~feeder_combout\ : std_logic;
SIGNAL \dataA[1]~input_o\ : std_logic;
SIGNAL \inst4|inst16|result[1]~262_combout\ : std_logic;
SIGNAL \inst4|inst6|Regist[1]~6_combout\ : std_logic;
SIGNAL \inst4|inst252|ROM~2_combout\ : std_logic;
SIGNAL \inst|Mux8~0_combout\ : std_logic;
SIGNAL \inst|WideOr14~0_combout\ : std_logic;
SIGNAL \inst|WideOr14~1_combout\ : std_logic;
SIGNAL \inst|Mux16~0_combout\ : std_logic;
SIGNAL \inst|WideOr13~13_combout\ : std_logic;
SIGNAL \inst|WideOr13~14_combout\ : std_logic;
SIGNAL \inst|Mux15~0_combout\ : std_logic;
SIGNAL \inst|Equal8~1_combout\ : std_logic;
SIGNAL \inst|Equal8~0_combout\ : std_logic;
SIGNAL \inst|Equal10~5_combout\ : std_logic;
SIGNAL \inst|Equal12~0_combout\ : std_logic;
SIGNAL \inst|UMEM~0_combout\ : std_logic;
SIGNAL \inst4|inst21|SelOut[15]~19_combout\ : std_logic;
SIGNAL \inst4|inst21|SelOut[15]~87_combout\ : std_logic;
SIGNAL \inst4|inst21|SelOut[14]~31_combout\ : std_logic;
SIGNAL \inst4|inst21|SelOut[14]~88_combout\ : std_logic;
SIGNAL \inst4|inst21|SelOut[13]~43_combout\ : std_logic;
SIGNAL \inst4|inst21|SelOut[13]~89_combout\ : std_logic;
SIGNAL \inst4|inst21|SelOut[9]~56_combout\ : std_logic;
SIGNAL \inst4|inst21|SelOut[9]~90_combout\ : std_logic;
SIGNAL \inst4|inst21|SelOut[8]~85_combout\ : std_logic;
SIGNAL \inst4|inst21|SelOut[7]~65_combout\ : std_logic;
SIGNAL \inst4|inst21|SelOut[7]~91_combout\ : std_logic;
SIGNAL \inst4|inst21|SelOut[6]~73_combout\ : std_logic;
SIGNAL \inst4|inst21|SelOut[6]~92_combout\ : std_logic;
SIGNAL \inst4|inst21|SelOut[0]~86_combout\ : std_logic;
SIGNAL \inst4|inst8|Regist[7]~feeder_combout\ : std_logic;
SIGNAL \inst4|inst6|Regist\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst4|inst8|Regist\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst4|inst20|Regist\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|UMemOut\ : std_logic_vector(64 DOWNTO 0);
SIGNAL \inst4|inst1|Regist\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst4|inst17|Regist\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst4|inst7|Regist\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst4|inst|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst4|inst4|Regist\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|address\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst|NextAddUC\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst4|inst3|Regist\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_Clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_Rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|ALT_INV_RegVal[1]~12_combout\ : std_logic;
SIGNAL \inst|ALT_INV_WideOr4~11_combout\ : std_logic;
SIGNAL \inst|ALT_INV_WideOr8~9_combout\ : std_logic;
SIGNAL \inst|ALT_INV_WideOr7~11_combout\ : std_logic;
SIGNAL \inst|ALT_INV_WideOr9~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_WideOr2~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_UMEM~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

EnDec <= ww_EnDec;
ww_Clk <= Clk;
ww_Rst <= Rst;
ww_dataA <= dataA;
ww_dataB <= dataB;
ww_dataC <= dataC;
SelBus <= ww_SelBus;
WR_Output <= ww_WR_Output;
CacheOut <= ww_CacheOut;
DataBus <= ww_DataBus;
EnReg <= ww_EnReg;
IROut <= ww_IROut;
MAROut <= ww_MAROut;
MDR <= ww_MDR;
MSELOUT <= ww_MSELOUT;
OutBus <= ww_OutBus;
PCOut <= ww_PCOut;
RAMOut <= ww_RAMOut;
SelRegOut <= ww_SelRegOut;
UMemOut <= ww_UMemOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst4|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \inst4|inst7|Regist\(7) & \inst4|inst7|Regist\(6) & \inst4|inst7|Regist\(5) & \inst4|inst7|Regist\(4) & 
\inst4|inst7|Regist\(3) & \inst4|inst7|Regist\(2) & \inst4|inst7|Regist\(1) & \inst4|inst7|Regist\(0));

\inst4|inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst4|inst1|Regist\(7) & \inst4|inst1|Regist\(6) & \inst4|inst1|Regist\(5) & \inst4|inst1|Regist\(4) & \inst4|inst1|Regist\(3) & \inst4|inst1|Regist\(2) & 
\inst4|inst1|Regist\(1) & \inst4|inst1|Regist\(0));

\inst4|inst|altsyncram_component|auto_generated|q_a\(0) <= \inst4|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst4|inst|altsyncram_component|auto_generated|q_a\(1) <= \inst4|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst4|inst|altsyncram_component|auto_generated|q_a\(2) <= \inst4|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst4|inst|altsyncram_component|auto_generated|q_a\(3) <= \inst4|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\inst4|inst|altsyncram_component|auto_generated|q_a\(4) <= \inst4|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\inst4|inst|altsyncram_component|auto_generated|q_a\(5) <= \inst4|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\inst4|inst|altsyncram_component|auto_generated|q_a\(6) <= \inst4|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\inst4|inst|altsyncram_component|auto_generated|q_a\(7) <= \inst4|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\Rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Rst~input_o\);

\Clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clk~input_o\);
\ALT_INV_Clk~inputclkctrl_outclk\ <= NOT \Clk~inputclkctrl_outclk\;
\ALT_INV_Rst~inputclkctrl_outclk\ <= NOT \Rst~inputclkctrl_outclk\;
\inst|ALT_INV_RegVal[1]~12_combout\ <= NOT \inst|RegVal[1]~12_combout\;
\inst|ALT_INV_WideOr4~11_combout\ <= NOT \inst|WideOr4~11_combout\;
\inst|ALT_INV_WideOr8~9_combout\ <= NOT \inst|WideOr8~9_combout\;
\inst|ALT_INV_WideOr7~11_combout\ <= NOT \inst|WideOr7~11_combout\;
\inst|ALT_INV_WideOr9~2_combout\ <= NOT \inst|WideOr9~2_combout\;
\inst|ALT_INV_WideOr2~0_combout\ <= NOT \inst|WideOr2~0_combout\;
\inst|ALT_INV_UMEM~0_combout\ <= NOT \inst|UMEM~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y50_N12
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

-- Location: IOOBUF_X56_Y54_N16
\EnDec~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_UMEM~0_combout\,
	devoe => ww_devoe,
	o => \EnDec~output_o\);

-- Location: IOOBUF_X78_Y23_N2
\SelBus[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SelBus[3]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\SelBus[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SelBus[2]~output_o\);

-- Location: IOOBUF_X54_Y54_N16
\SelBus[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_RegVal[1]~12_combout\,
	devoe => ww_devoe,
	o => \SelBus[1]~output_o\);

-- Location: IOOBUF_X24_Y39_N16
\SelBus[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_WideOr7~11_combout\,
	devoe => ww_devoe,
	o => \SelBus[0]~output_o\);

-- Location: IOOBUF_X60_Y0_N23
\WR_Output~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \WR_Output~output_o\);

-- Location: IOOBUF_X29_Y0_N9
\CacheOut[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \CacheOut[7]~output_o\);

-- Location: IOOBUF_X0_Y19_N16
\CacheOut[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \CacheOut[6]~output_o\);

-- Location: IOOBUF_X0_Y32_N23
\CacheOut[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \CacheOut[5]~output_o\);

-- Location: IOOBUF_X40_Y39_N2
\CacheOut[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst252|ROM~1_combout\,
	devoe => ww_devoe,
	o => \CacheOut[4]~output_o\);

-- Location: IOOBUF_X78_Y31_N2
\CacheOut[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \CacheOut[3]~output_o\);

-- Location: IOOBUF_X58_Y0_N2
\CacheOut[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \CacheOut[2]~output_o\);

-- Location: IOOBUF_X0_Y24_N2
\CacheOut[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \CacheOut[1]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\CacheOut[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst252|ROM~2_combout\,
	devoe => ww_devoe,
	o => \CacheOut[0]~output_o\);

-- Location: IOOBUF_X78_Y37_N16
\DataBus[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst6|Regist[7]~0_combout\,
	devoe => ww_devoe,
	o => \DataBus[7]~output_o\);

-- Location: IOOBUF_X78_Y35_N23
\DataBus[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst6|Regist[6]~1_combout\,
	devoe => ww_devoe,
	o => \DataBus[6]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\DataBus[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst6|Regist[5]~2_combout\,
	devoe => ww_devoe,
	o => \DataBus[5]~output_o\);

-- Location: IOOBUF_X26_Y39_N16
\DataBus[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst6|Regist[4]~3_combout\,
	devoe => ww_devoe,
	o => \DataBus[4]~output_o\);

-- Location: IOOBUF_X34_Y39_N23
\DataBus[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst6|Regist[3]~4_combout\,
	devoe => ww_devoe,
	o => \DataBus[3]~output_o\);

-- Location: IOOBUF_X29_Y39_N2
\DataBus[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst6|Regist[2]~5_combout\,
	devoe => ww_devoe,
	o => \DataBus[2]~output_o\);

-- Location: IOOBUF_X78_Y37_N9
\DataBus[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst6|Regist[1]~6_combout\,
	devoe => ww_devoe,
	o => \DataBus[1]~output_o\);

-- Location: IOOBUF_X40_Y0_N9
\DataBus[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst6|Regist[0]~7_combout\,
	devoe => ww_devoe,
	o => \DataBus[0]~output_o\);

-- Location: IOOBUF_X40_Y39_N30
\EnReg[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst21|SelOut[15]~87_combout\,
	devoe => ww_devoe,
	o => \EnReg[15]~output_o\);

-- Location: IOOBUF_X24_Y39_N2
\EnReg[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst21|SelOut[14]~88_combout\,
	devoe => ww_devoe,
	o => \EnReg[14]~output_o\);

-- Location: IOOBUF_X26_Y39_N30
\EnReg[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst21|SelOut[13]~89_combout\,
	devoe => ww_devoe,
	o => \EnReg[13]~output_o\);

-- Location: IOOBUF_X58_Y0_N9
\EnReg[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \EnReg[12]~output_o\);

-- Location: IOOBUF_X0_Y33_N23
\EnReg[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \EnReg[11]~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\EnReg[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \EnReg[10]~output_o\);

-- Location: IOOBUF_X38_Y39_N30
\EnReg[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst21|SelOut[9]~90_combout\,
	devoe => ww_devoe,
	o => \EnReg[9]~output_o\);

-- Location: IOOBUF_X34_Y39_N16
\EnReg[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst21|SelOut[8]~85_combout\,
	devoe => ww_devoe,
	o => \EnReg[8]~output_o\);

-- Location: IOOBUF_X38_Y39_N16
\EnReg[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst21|SelOut[7]~91_combout\,
	devoe => ww_devoe,
	o => \EnReg[7]~output_o\);

-- Location: IOOBUF_X29_Y39_N16
\EnReg[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst21|SelOut[6]~92_combout\,
	devoe => ww_devoe,
	o => \EnReg[6]~output_o\);

-- Location: IOOBUF_X78_Y47_N16
\EnReg[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \EnReg[5]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\EnReg[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \EnReg[4]~output_o\);

-- Location: IOOBUF_X46_Y0_N16
\EnReg[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \EnReg[3]~output_o\);

-- Location: IOOBUF_X20_Y0_N16
\EnReg[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \EnReg[2]~output_o\);

-- Location: IOOBUF_X78_Y49_N16
\EnReg[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \EnReg[1]~output_o\);

-- Location: IOOBUF_X34_Y39_N2
\EnReg[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst21|SelOut[0]~86_combout\,
	devoe => ww_devoe,
	o => \EnReg[0]~output_o\);

-- Location: IOOBUF_X31_Y39_N9
\IROut[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst8|Regist\(7),
	devoe => ww_devoe,
	o => \IROut[7]~output_o\);

-- Location: IOOBUF_X36_Y39_N9
\IROut[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst8|Regist\(6),
	devoe => ww_devoe,
	o => \IROut[6]~output_o\);

-- Location: IOOBUF_X36_Y39_N30
\IROut[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst8|Regist\(5),
	devoe => ww_devoe,
	o => \IROut[5]~output_o\);

-- Location: IOOBUF_X31_Y39_N23
\IROut[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst8|Regist\(4),
	devoe => ww_devoe,
	o => \IROut[4]~output_o\);

-- Location: IOOBUF_X36_Y39_N16
\IROut[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst8|Regist\(3),
	devoe => ww_devoe,
	o => \IROut[3]~output_o\);

-- Location: IOOBUF_X34_Y39_N9
\IROut[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst8|Regist\(2),
	devoe => ww_devoe,
	o => \IROut[2]~output_o\);

-- Location: IOOBUF_X31_Y39_N16
\IROut[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst8|Regist\(1),
	devoe => ww_devoe,
	o => \IROut[1]~output_o\);

-- Location: IOOBUF_X36_Y39_N2
\IROut[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst8|Regist\(0),
	devoe => ww_devoe,
	o => \IROut[0]~output_o\);

-- Location: IOOBUF_X78_Y34_N16
\MAROut[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst1|Regist\(7),
	devoe => ww_devoe,
	o => \MAROut[7]~output_o\);

-- Location: IOOBUF_X78_Y40_N9
\MAROut[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst1|Regist\(6),
	devoe => ww_devoe,
	o => \MAROut[6]~output_o\);

-- Location: IOOBUF_X58_Y54_N30
\MAROut[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst1|Regist\(5),
	devoe => ww_devoe,
	o => \MAROut[5]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\MAROut[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst1|Regist\(4),
	devoe => ww_devoe,
	o => \MAROut[4]~output_o\);

-- Location: IOOBUF_X24_Y39_N23
\MAROut[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst1|Regist\(3),
	devoe => ww_devoe,
	o => \MAROut[3]~output_o\);

-- Location: IOOBUF_X78_Y34_N24
\MAROut[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst1|Regist\(2),
	devoe => ww_devoe,
	o => \MAROut[2]~output_o\);

-- Location: IOOBUF_X24_Y39_N9
\MAROut[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst1|Regist\(1),
	devoe => ww_devoe,
	o => \MAROut[1]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\MAROut[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst1|Regist\(0),
	devoe => ww_devoe,
	o => \MAROut[0]~output_o\);

-- Location: IOOBUF_X78_Y33_N2
\MDR[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst7|Regist\(7),
	devoe => ww_devoe,
	o => \MDR[7]~output_o\);

-- Location: IOOBUF_X54_Y54_N23
\MDR[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst7|Regist\(6),
	devoe => ww_devoe,
	o => \MDR[6]~output_o\);

-- Location: IOOBUF_X51_Y0_N23
\MDR[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst7|Regist\(5),
	devoe => ww_devoe,
	o => \MDR[5]~output_o\);

-- Location: IOOBUF_X78_Y36_N2
\MDR[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst7|Regist\(4),
	devoe => ww_devoe,
	o => \MDR[4]~output_o\);

-- Location: IOOBUF_X56_Y54_N23
\MDR[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst7|Regist\(3),
	devoe => ww_devoe,
	o => \MDR[3]~output_o\);

-- Location: IOOBUF_X78_Y36_N16
\MDR[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst7|Regist\(2),
	devoe => ww_devoe,
	o => \MDR[2]~output_o\);

-- Location: IOOBUF_X78_Y36_N24
\MDR[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst7|Regist\(1),
	devoe => ww_devoe,
	o => \MDR[1]~output_o\);

-- Location: IOOBUF_X40_Y39_N9
\MDR[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst7|Regist\(0),
	devoe => ww_devoe,
	o => \MDR[0]~output_o\);

-- Location: IOOBUF_X31_Y0_N30
\MSELOUT[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \MSELOUT[4]~output_o\);

-- Location: IOOBUF_X42_Y0_N30
\MSELOUT[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|WideOr0~combout\,
	devoe => ww_devoe,
	o => \MSELOUT[3]~output_o\);

-- Location: IOOBUF_X66_Y54_N23
\MSELOUT[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_WideOr2~0_combout\,
	devoe => ww_devoe,
	o => \MSELOUT[2]~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\MSELOUT[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \MSELOUT[1]~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\MSELOUT[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_WideOr2~0_combout\,
	devoe => ww_devoe,
	o => \MSELOUT[0]~output_o\);

-- Location: IOOBUF_X78_Y37_N23
\OutBus[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst6|Regist[7]~0_combout\,
	devoe => ww_devoe,
	o => \OutBus[7]~output_o\);

-- Location: IOOBUF_X78_Y35_N9
\OutBus[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst6|Regist[6]~1_combout\,
	devoe => ww_devoe,
	o => \OutBus[6]~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\OutBus[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst6|Regist[5]~2_combout\,
	devoe => ww_devoe,
	o => \OutBus[5]~output_o\);

-- Location: IOOBUF_X26_Y39_N2
\OutBus[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst6|Regist[4]~3_combout\,
	devoe => ww_devoe,
	o => \OutBus[4]~output_o\);

-- Location: IOOBUF_X34_Y39_N30
\OutBus[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst6|Regist[3]~4_combout\,
	devoe => ww_devoe,
	o => \OutBus[3]~output_o\);

-- Location: IOOBUF_X29_Y39_N9
\OutBus[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst6|Regist[2]~5_combout\,
	devoe => ww_devoe,
	o => \OutBus[2]~output_o\);

-- Location: IOOBUF_X78_Y37_N2
\OutBus[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst6|Regist[1]~6_combout\,
	devoe => ww_devoe,
	o => \OutBus[1]~output_o\);

-- Location: IOOBUF_X46_Y0_N30
\OutBus[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst6|Regist[0]~7_combout\,
	devoe => ww_devoe,
	o => \OutBus[0]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\PCOut[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst17|Regist\(7),
	devoe => ww_devoe,
	o => \PCOut[7]~output_o\);

-- Location: IOOBUF_X46_Y54_N16
\PCOut[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst17|Regist\(6),
	devoe => ww_devoe,
	o => \PCOut[6]~output_o\);

-- Location: IOOBUF_X78_Y42_N23
\PCOut[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst17|Regist\(5),
	devoe => ww_devoe,
	o => \PCOut[5]~output_o\);

-- Location: IOOBUF_X38_Y39_N23
\PCOut[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst17|Regist\(4),
	devoe => ww_devoe,
	o => \PCOut[4]~output_o\);

-- Location: IOOBUF_X40_Y39_N23
\PCOut[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst17|Regist\(3),
	devoe => ww_devoe,
	o => \PCOut[3]~output_o\);

-- Location: IOOBUF_X46_Y54_N30
\PCOut[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst17|Regist\(2),
	devoe => ww_devoe,
	o => \PCOut[2]~output_o\);

-- Location: IOOBUF_X38_Y39_N9
\PCOut[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst17|Regist\(1),
	devoe => ww_devoe,
	o => \PCOut[1]~output_o\);

-- Location: IOOBUF_X78_Y42_N16
\PCOut[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst17|Regist\(0),
	devoe => ww_devoe,
	o => \PCOut[0]~output_o\);

-- Location: IOOBUF_X51_Y54_N2
\RAMOut[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst|altsyncram_component|auto_generated|q_a\(7),
	devoe => ww_devoe,
	o => \RAMOut[7]~output_o\);

-- Location: IOOBUF_X78_Y35_N16
\RAMOut[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst|altsyncram_component|auto_generated|q_a\(6),
	devoe => ww_devoe,
	o => \RAMOut[6]~output_o\);

-- Location: IOOBUF_X54_Y54_N2
\RAMOut[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst|altsyncram_component|auto_generated|q_a\(5),
	devoe => ww_devoe,
	o => \RAMOut[5]~output_o\);

-- Location: IOOBUF_X54_Y54_N30
\RAMOut[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst|altsyncram_component|auto_generated|q_a\(4),
	devoe => ww_devoe,
	o => \RAMOut[4]~output_o\);

-- Location: IOOBUF_X51_Y0_N16
\RAMOut[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst|altsyncram_component|auto_generated|q_a\(3),
	devoe => ww_devoe,
	o => \RAMOut[3]~output_o\);

-- Location: IOOBUF_X51_Y54_N9
\RAMOut[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst|altsyncram_component|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => \RAMOut[2]~output_o\);

-- Location: IOOBUF_X78_Y35_N2
\RAMOut[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst|altsyncram_component|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => \RAMOut[1]~output_o\);

-- Location: IOOBUF_X56_Y54_N2
\RAMOut[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst|altsyncram_component|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => \RAMOut[0]~output_o\);

-- Location: IOOBUF_X58_Y54_N9
\SelRegOut[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|WideOr3~15_combout\,
	devoe => ww_devoe,
	o => \SelRegOut[3]~output_o\);

-- Location: IOOBUF_X60_Y54_N16
\SelRegOut[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|WideOr4~combout\,
	devoe => ww_devoe,
	o => \SelRegOut[2]~output_o\);

-- Location: IOOBUF_X51_Y54_N30
\SelRegOut[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_WideOr4~11_combout\,
	devoe => ww_devoe,
	o => \SelRegOut[1]~output_o\);

-- Location: IOOBUF_X58_Y54_N2
\SelRegOut[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|WideOr6~13_combout\,
	devoe => ww_devoe,
	o => \SelRegOut[0]~output_o\);

-- Location: IOOBUF_X78_Y41_N24
\UMemOut[64]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \UMemOut[64]~output_o\);

-- Location: IOOBUF_X42_Y0_N2
\UMemOut[63]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|WideOr0~combout\,
	devoe => ww_devoe,
	o => \UMemOut[63]~output_o\);

-- Location: IOOBUF_X64_Y54_N30
\UMemOut[62]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_WideOr2~0_combout\,
	devoe => ww_devoe,
	o => \UMemOut[62]~output_o\);

-- Location: IOOBUF_X0_Y13_N16
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

-- Location: IOOBUF_X64_Y54_N9
\UMemOut[60]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_WideOr2~0_combout\,
	devoe => ww_devoe,
	o => \UMemOut[60]~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\UMemOut[59]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|WideOr3~15_combout\,
	devoe => ww_devoe,
	o => \UMemOut[59]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\UMemOut[58]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|WideOr4~combout\,
	devoe => ww_devoe,
	o => \UMemOut[58]~output_o\);

-- Location: IOOBUF_X51_Y54_N23
\UMemOut[57]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_WideOr4~11_combout\,
	devoe => ww_devoe,
	o => \UMemOut[57]~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\UMemOut[56]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|WideOr6~13_combout\,
	devoe => ww_devoe,
	o => \UMemOut[56]~output_o\);

-- Location: IOOBUF_X78_Y36_N9
\UMemOut[55]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MuxA~8_combout\,
	devoe => ww_devoe,
	o => \UMemOut[55]~output_o\);

-- Location: IOOBUF_X64_Y54_N23
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

-- Location: IOOBUF_X64_Y54_N2
\UMemOut[53]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \UMemOut[53]~output_o\);

-- Location: IOOBUF_X78_Y20_N2
\UMemOut[52]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \UMemOut[52]~output_o\);

-- Location: IOOBUF_X0_Y5_N2
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

-- Location: IOOBUF_X54_Y54_N9
\UMemOut[50]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_RegVal[1]~12_combout\,
	devoe => ww_devoe,
	o => \UMemOut[50]~output_o\);

-- Location: IOOBUF_X24_Y39_N30
\UMemOut[49]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_WideOr7~11_combout\,
	devoe => ww_devoe,
	o => \UMemOut[49]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\UMemOut[48]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \UMemOut[48]~output_o\);

-- Location: IOOBUF_X0_Y3_N2
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

-- Location: IOOBUF_X60_Y0_N2
\UMemOut[46]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \UMemOut[46]~output_o\);

-- Location: IOOBUF_X62_Y54_N16
\UMemOut[45]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \UMemOut[45]~output_o\);

-- Location: IOOBUF_X71_Y54_N16
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

-- Location: IOOBUF_X24_Y0_N23
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

-- Location: IOOBUF_X40_Y39_N16
\UMemOut[42]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|UMemOut\(42),
	devoe => ww_devoe,
	o => \UMemOut[42]~output_o\);

-- Location: IOOBUF_X42_Y0_N9
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

-- Location: IOOBUF_X38_Y39_N2
\UMemOut[40]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_WideOr8~9_combout\,
	devoe => ww_devoe,
	o => \UMemOut[40]~output_o\);

-- Location: IOOBUF_X66_Y54_N2
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

-- Location: IOOBUF_X0_Y15_N9
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

-- Location: IOOBUF_X22_Y0_N16
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

-- Location: IOOBUF_X56_Y54_N9
\UMemOut[36]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_UMEM~0_combout\,
	devoe => ww_devoe,
	o => \UMemOut[36]~output_o\);

-- Location: IOOBUF_X22_Y39_N30
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

-- Location: IOOBUF_X74_Y54_N9
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

-- Location: IOOBUF_X0_Y27_N2
\UMemOut[33]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \UMemOut[33]~output_o\);

-- Location: IOOBUF_X60_Y0_N16
\UMemOut[32]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \UMemOut[32]~output_o\);

-- Location: IOOBUF_X78_Y34_N9
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

-- Location: IOOBUF_X16_Y0_N16
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

-- Location: IOOBUF_X54_Y0_N2
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

-- Location: IOOBUF_X38_Y0_N30
\UMemOut[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_WideOr9~2_combout\,
	devoe => ww_devoe,
	o => \UMemOut[28]~output_o\);

-- Location: IOOBUF_X24_Y0_N16
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

-- Location: IOOBUF_X0_Y12_N2
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

-- Location: IOOBUF_X78_Y16_N16
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

-- Location: IOOBUF_X54_Y0_N23
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

-- Location: IOOBUF_X29_Y0_N16
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

-- Location: IOOBUF_X0_Y31_N16
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

-- Location: IOOBUF_X0_Y23_N23
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

-- Location: IOOBUF_X40_Y0_N16
\UMemOut[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|WideOr10~combout\,
	devoe => ww_devoe,
	o => \UMemOut[20]~output_o\);

-- Location: IOOBUF_X31_Y39_N2
\UMemOut[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|WideOr11~10_combout\,
	devoe => ww_devoe,
	o => \UMemOut[19]~output_o\);

-- Location: IOOBUF_X26_Y39_N23
\UMemOut[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|WideOr12~14_combout\,
	devoe => ww_devoe,
	o => \UMemOut[18]~output_o\);

-- Location: IOOBUF_X78_Y40_N23
\UMemOut[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|WideOr13~14_combout\,
	devoe => ww_devoe,
	o => \UMemOut[17]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\UMemOut[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|WideOr14~1_combout\,
	devoe => ww_devoe,
	o => \UMemOut[16]~output_o\);

-- Location: IOOBUF_X54_Y0_N9
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

-- Location: IOOBUF_X0_Y31_N9
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

-- Location: IOOBUF_X24_Y0_N9
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

-- Location: IOOBUF_X38_Y0_N23
\UMemOut[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_WideOr9~2_combout\,
	devoe => ww_devoe,
	o => \UMemOut[12]~output_o\);

-- Location: IOOBUF_X0_Y26_N9
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

-- Location: IOOBUF_X74_Y54_N16
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

-- Location: IOOBUF_X78_Y8_N2
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

-- Location: IOOBUF_X78_Y13_N23
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

-- Location: IOOBUF_X20_Y0_N30
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

-- Location: IOOBUF_X78_Y21_N9
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

-- Location: IOOBUF_X16_Y0_N9
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

-- Location: IOOBUF_X40_Y0_N2
\UMemOut[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|WideOr10~combout\,
	devoe => ww_devoe,
	o => \UMemOut[4]~output_o\);

-- Location: IOOBUF_X31_Y39_N30
\UMemOut[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|WideOr11~10_combout\,
	devoe => ww_devoe,
	o => \UMemOut[3]~output_o\);

-- Location: IOOBUF_X26_Y39_N9
\UMemOut[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|WideOr12~14_combout\,
	devoe => ww_devoe,
	o => \UMemOut[2]~output_o\);

-- Location: IOOBUF_X78_Y40_N2
\UMemOut[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|WideOr13~14_combout\,
	devoe => ww_devoe,
	o => \UMemOut[1]~output_o\);

-- Location: IOOBUF_X40_Y0_N30
\UMemOut[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|WideOr14~1_combout\,
	devoe => ww_devoe,
	o => \UMemOut[0]~output_o\);

-- Location: IOIBUF_X0_Y18_N15
\Clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clk,
	o => \Clk~input_o\);

-- Location: CLKCTRL_G3
\Clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X41_Y37_N24
\inst|WideOr10~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr10~3_combout\ = (\inst|address\(2) & ((\inst|address\(0) & ((\inst|address\(1)) # (!\inst|address\(12)))) # (!\inst|address\(0) & (!\inst|address\(12) & \inst|address\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(0),
	datab => \inst|address\(12),
	datac => \inst|address\(2),
	datad => \inst|address\(1),
	combout => \inst|WideOr10~3_combout\);

-- Location: LCCOMB_X41_Y37_N22
\inst|WideOr10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr10~combout\ = (\inst|address\(4)) # ((\inst|address\(8)) # ((\inst|address\(3) & \inst|WideOr10~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(4),
	datab => \inst|address\(8),
	datac => \inst|address\(3),
	datad => \inst|WideOr10~3_combout\,
	combout => \inst|WideOr10~combout\);

-- Location: FF_X41_Y37_N21
\inst|NextAddUC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \inst|WideOr10~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|NextAddUC\(4));

-- Location: LCCOMB_X43_Y37_N22
\inst|Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux12~0_combout\ = (!\inst|UMemOut\(42) & \inst|NextAddUC\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|UMemOut\(42),
	datad => \inst|NextAddUC\(4),
	combout => \inst|Mux12~0_combout\);

-- Location: FF_X43_Y37_N23
\inst|address[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk~inputclkctrl_outclk\,
	d => \inst|Mux12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|address\(4));

-- Location: LCCOMB_X46_Y36_N24
\inst|WideNor0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideNor0~1_combout\ = (((!\inst|address\(0) & !\inst|address\(1))) # (!\inst|address\(3))) # (!\inst|address\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(0),
	datab => \inst|address\(2),
	datac => \inst|address\(3),
	datad => \inst|address\(1),
	combout => \inst|WideNor0~1_combout\);

-- Location: LCCOMB_X41_Y37_N16
\inst|WideOr9~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr9~2_combout\ = (!\inst|address\(4) & (!\inst|address\(8) & (\inst|WideNor0~1_combout\ & !\inst|address\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(4),
	datab => \inst|address\(8),
	datac => \inst|WideNor0~1_combout\,
	datad => \inst|address\(12),
	combout => \inst|WideOr9~2_combout\);

-- Location: LCCOMB_X41_Y37_N28
\inst|NextAddUC[12]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|NextAddUC[12]~0_combout\ = !\inst|WideOr9~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|WideOr9~2_combout\,
	combout => \inst|NextAddUC[12]~0_combout\);

-- Location: FF_X41_Y37_N29
\inst|NextAddUC[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst|NextAddUC[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|NextAddUC\(12));

-- Location: LCCOMB_X46_Y36_N8
\inst4|inst4|Regist[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst4|Regist[0]~8_combout\ = \inst4|inst4|Regist\(0) $ (VCC)
-- \inst4|inst4|Regist[0]~9\ = CARRY(\inst4|inst4|Regist\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst4|Regist\(0),
	datad => VCC,
	combout => \inst4|inst4|Regist[0]~8_combout\,
	cout => \inst4|inst4|Regist[0]~9\);

-- Location: IOIBUF_X0_Y18_N22
\Rst~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Rst,
	o => \Rst~input_o\);

-- Location: CLKCTRL_G4
\Rst~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Rst~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Rst~inputclkctrl_outclk\);

-- Location: LCCOMB_X41_Y36_N6
\inst|RegVal[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|RegVal[1]~3_combout\ = (\inst|address\(8)) # ((\inst|address\(4)) # (\inst|address\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|address\(8),
	datac => \inst|address\(4),
	datad => \inst|address\(1),
	combout => \inst|RegVal[1]~3_combout\);

-- Location: LCCOMB_X41_Y36_N28
\inst|RegVal[1]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|RegVal[1]~12_combout\ = (\inst|address\(2)) # (((\inst|RegVal[1]~3_combout\) # (!\inst|address\(3))) # (!\inst|address\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(2),
	datab => \inst|address\(0),
	datac => \inst|address\(3),
	datad => \inst|RegVal[1]~3_combout\,
	combout => \inst|RegVal[1]~12_combout\);

-- Location: LCCOMB_X42_Y37_N4
\inst|WideOr3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr3~6_combout\ = (!\inst|address\(4) & ((\inst|address\(3) & (\inst|address\(12))) # (!\inst|address\(3) & ((\inst|address\(1)) # (!\inst|address\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(3),
	datab => \inst|address\(12),
	datac => \inst|address\(4),
	datad => \inst|address\(1),
	combout => \inst|WideOr3~6_combout\);

-- Location: LCCOMB_X43_Y37_N28
\inst|WideOr3~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr3~16_combout\ = (\inst|address\(3) & (!\inst|address\(12) & (!\inst|address\(0) & !\inst|address\(1)))) # (!\inst|address\(3) & ((\inst|address\(12)) # ((\inst|address\(0) & \inst|address\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(3),
	datab => \inst|address\(12),
	datac => \inst|address\(0),
	datad => \inst|address\(1),
	combout => \inst|WideOr3~16_combout\);

-- Location: LCCOMB_X43_Y37_N10
\inst|WideOr3~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr3~17_combout\ = (\inst|WideOr3~16_combout\ & (\inst|address\(4) $ (((\inst|address\(1)) # (!\inst|address\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(1),
	datab => \inst|address\(12),
	datac => \inst|address\(4),
	datad => \inst|WideOr3~16_combout\,
	combout => \inst|WideOr3~17_combout\);

-- Location: LCCOMB_X43_Y37_N24
\inst|WideOr3~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr3~15_combout\ = (!\inst|address\(8) & ((\inst|address\(2) & (\inst|WideOr3~6_combout\)) # (!\inst|address\(2) & ((\inst|WideOr3~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(8),
	datab => \inst|address\(2),
	datac => \inst|WideOr3~6_combout\,
	datad => \inst|WideOr3~17_combout\,
	combout => \inst|WideOr3~15_combout\);

-- Location: LCCOMB_X42_Y37_N0
\inst|WideOr4~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr4~12_combout\ = (\inst|address\(1) & (((!\inst|address\(3))) # (!\inst|address\(12)))) # (!\inst|address\(1) & (((\inst|address\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(1),
	datab => \inst|address\(12),
	datac => \inst|address\(3),
	datad => \inst|address\(2),
	combout => \inst|WideOr4~12_combout\);

-- Location: LCCOMB_X42_Y37_N14
\inst|WideOr4~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr4~13_combout\ = (\inst|WideOr4~12_combout\) # ((\inst|address\(4) & ((\inst|address\(3)) # (!\inst|address\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(3),
	datab => \inst|address\(12),
	datac => \inst|address\(4),
	datad => \inst|WideOr4~12_combout\,
	combout => \inst|WideOr4~13_combout\);

-- Location: LCCOMB_X42_Y37_N16
\inst|WideOr4~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr4~14_combout\ = (\inst|address\(1) & ((\inst|address\(12) & (!\inst|address\(3))) # (!\inst|address\(12) & ((\inst|address\(2)))))) # (!\inst|address\(1) & ((\inst|address\(2)) # ((!\inst|address\(12) & \inst|address\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(1),
	datab => \inst|address\(12),
	datac => \inst|address\(3),
	datad => \inst|address\(2),
	combout => \inst|WideOr4~14_combout\);

-- Location: LCCOMB_X42_Y37_N6
\inst|WideOr4~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr4~15_combout\ = (\inst|WideOr4~14_combout\) # ((\inst|address\(4) & ((\inst|address\(3)) # (!\inst|address\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(3),
	datab => \inst|address\(12),
	datac => \inst|address\(4),
	datad => \inst|WideOr4~14_combout\,
	combout => \inst|WideOr4~15_combout\);

-- Location: LCCOMB_X42_Y37_N8
\inst|WideOr4~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr4~11_combout\ = (\inst|address\(8)) # ((\inst|address\(0) & (\inst|WideOr4~13_combout\)) # (!\inst|address\(0) & ((\inst|WideOr4~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(8),
	datab => \inst|address\(0),
	datac => \inst|WideOr4~13_combout\,
	datad => \inst|WideOr4~15_combout\,
	combout => \inst|WideOr4~11_combout\);

-- Location: LCCOMB_X43_Y36_N8
\inst|WideOr6~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr6~6_combout\ = (\inst|address\(1) & (!\inst|address\(3) & !\inst|address\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(1),
	datac => \inst|address\(3),
	datad => \inst|address\(4),
	combout => \inst|WideOr6~6_combout\);

-- Location: LCCOMB_X44_Y37_N10
\inst|WideOr6~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr6~14_combout\ = (\inst|address\(3) & ((\inst|address\(12) & ((\inst|address\(1)))) # (!\inst|address\(12) & (!\inst|address\(0) & !\inst|address\(1))))) # (!\inst|address\(3) & (((!\inst|address\(0) & !\inst|address\(12))) # 
-- (!\inst|address\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(0),
	datab => \inst|address\(3),
	datac => \inst|address\(12),
	datad => \inst|address\(1),
	combout => \inst|WideOr6~14_combout\);

-- Location: LCCOMB_X44_Y37_N20
\inst|WideOr6~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr6~15_combout\ = (\inst|WideOr6~14_combout\ & (((!\inst|address\(1) & \inst|address\(12))) # (!\inst|address\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(1),
	datab => \inst|address\(4),
	datac => \inst|address\(12),
	datad => \inst|WideOr6~14_combout\,
	combout => \inst|WideOr6~15_combout\);

-- Location: LCCOMB_X43_Y36_N30
\inst|WideOr6~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr6~13_combout\ = (!\inst|address\(8) & ((\inst|address\(2) & (\inst|WideOr6~6_combout\)) # (!\inst|address\(2) & ((\inst|WideOr6~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(8),
	datab => \inst|address\(2),
	datac => \inst|WideOr6~6_combout\,
	datad => \inst|WideOr6~15_combout\,
	combout => \inst|WideOr6~13_combout\);

-- Location: LCCOMB_X43_Y36_N12
\inst|Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal2~0_combout\ = (\inst|address\(1) & !\inst|address\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|address\(1),
	datad => \inst|address\(0),
	combout => \inst|Equal2~0_combout\);

-- Location: LCCOMB_X43_Y36_N14
\inst|Equal3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal3~0_combout\ = (\inst|address\(1) & \inst|address\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|address\(1),
	datad => \inst|address\(0),
	combout => \inst|Equal3~0_combout\);

-- Location: LCCOMB_X42_Y36_N12
\inst|Equal10~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal10~4_combout\ = (!\inst|address\(8) & !\inst|address\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|address\(8),
	datad => \inst|address\(4),
	combout => \inst|Equal10~4_combout\);

-- Location: LCCOMB_X43_Y36_N4
\inst|Equal17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal17~0_combout\ = (!\inst|address\(3) & (\inst|address\(2) & (\inst|address\(12) & \inst|Equal10~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(3),
	datab => \inst|address\(2),
	datac => \inst|address\(12),
	datad => \inst|Equal10~4_combout\,
	combout => \inst|Equal17~0_combout\);

-- Location: LCCOMB_X43_Y36_N6
\inst|WideOr4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr4~combout\ = ((\inst|Equal17~0_combout\ & ((\inst|Equal2~0_combout\) # (\inst|Equal3~0_combout\)))) # (!\inst|WideOr4~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal2~0_combout\,
	datab => \inst|Equal3~0_combout\,
	datac => \inst|Equal17~0_combout\,
	datad => \inst|WideOr4~11_combout\,
	combout => \inst|WideOr4~combout\);

-- Location: LCCOMB_X42_Y36_N20
\inst4|inst21|Mux15~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst21|Mux15~3_combout\ = (\inst|WideOr3~15_combout\ & (!\inst|WideOr4~11_combout\ & (!\inst|WideOr6~13_combout\ & \inst|WideOr4~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr3~15_combout\,
	datab => \inst|WideOr4~11_combout\,
	datac => \inst|WideOr6~13_combout\,
	datad => \inst|WideOr4~combout\,
	combout => \inst4|inst21|Mux15~3_combout\);

-- Location: LCCOMB_X42_Y36_N30
\inst4|inst4|Regist[0]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst4|Regist[0]~24_combout\ = (!\inst|UMEM~0_combout\ & (\inst4|inst21|Mux15~3_combout\ & ((!\inst|RegVal[1]~12_combout\) # (!\inst|WideOr7~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr7~11_combout\,
	datab => \inst|RegVal[1]~12_combout\,
	datac => \inst|UMEM~0_combout\,
	datad => \inst4|inst21|Mux15~3_combout\,
	combout => \inst4|inst4|Regist[0]~24_combout\);

-- Location: FF_X46_Y36_N9
\inst4|inst4|Regist[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst4|inst4|Regist[0]~8_combout\,
	asdata => \inst4|inst6|Regist[0]~7_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	sload => \inst|RegVal[1]~12_combout\,
	ena => \inst4|inst4|Regist[0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst4|Regist\(0));

-- Location: LCCOMB_X43_Y36_N20
\inst4|inst21|Mux15~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst21|Mux15~4_combout\ = (\inst|WideOr6~13_combout\ & (\inst|WideOr4~11_combout\ & (\inst|WideOr3~15_combout\ & \inst|WideOr4~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr6~13_combout\,
	datab => \inst|WideOr4~11_combout\,
	datac => \inst|WideOr3~15_combout\,
	datad => \inst|WideOr4~combout\,
	combout => \inst4|inst21|Mux15~4_combout\);

-- Location: LCCOMB_X44_Y36_N18
\inst4|inst3|Regist[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst3|Regist[0]~0_combout\ = (!\inst|UMEM~0_combout\ & (\inst4|inst21|Mux15~4_combout\ & ((!\inst|WideOr7~11_combout\) # (!\inst|RegVal[1]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|RegVal[1]~12_combout\,
	datab => \inst|WideOr7~11_combout\,
	datac => \inst|UMEM~0_combout\,
	datad => \inst4|inst21|Mux15~4_combout\,
	combout => \inst4|inst3|Regist[0]~0_combout\);

-- Location: FF_X44_Y36_N9
\inst4|inst3|Regist[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst4|inst6|Regist[0]~7_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	ena => \inst4|inst3|Regist[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst3|Regist\(0));

-- Location: LCCOMB_X47_Y36_N0
\inst4|inst20|Regist[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst20|Regist[0]~8_combout\ = (\inst4|inst4|Regist\(0) & (\inst4|inst3|Regist\(0) $ (VCC))) # (!\inst4|inst4|Regist\(0) & (\inst4|inst3|Regist\(0) & VCC))
-- \inst4|inst20|Regist[0]~9\ = CARRY((\inst4|inst4|Regist\(0) & \inst4|inst3|Regist\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst4|Regist\(0),
	datab => \inst4|inst3|Regist\(0),
	datad => VCC,
	combout => \inst4|inst20|Regist[0]~8_combout\,
	cout => \inst4|inst20|Regist[0]~9\);

-- Location: LCCOMB_X47_Y36_N16
\inst4|inst20|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst20|Add1~0_combout\ = \inst4|inst20|Regist\(0) $ (VCC)
-- \inst4|inst20|Add1~1\ = CARRY(\inst4|inst20|Regist\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst20|Regist\(0),
	datad => VCC,
	combout => \inst4|inst20|Add1~0_combout\,
	cout => \inst4|inst20|Add1~1\);

-- Location: LCCOMB_X42_Y36_N2
\inst4|inst21|Mux15~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst21|Mux15~2_combout\ = (\inst|WideOr3~15_combout\ & (!\inst|WideOr4~11_combout\ & (\inst|WideOr6~13_combout\ & \inst|WideOr4~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr3~15_combout\,
	datab => \inst|WideOr4~11_combout\,
	datac => \inst|WideOr6~13_combout\,
	datad => \inst|WideOr4~combout\,
	combout => \inst4|inst21|Mux15~2_combout\);

-- Location: LCCOMB_X42_Y36_N28
\inst4|inst20|Regist[7]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst20|Regist[7]~24_combout\ = (!\inst|UMEM~0_combout\ & (\inst4|inst21|Mux15~2_combout\ & ((!\inst|RegVal[1]~12_combout\) # (!\inst|WideOr7~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr7~11_combout\,
	datab => \inst|RegVal[1]~12_combout\,
	datac => \inst|UMEM~0_combout\,
	datad => \inst4|inst21|Mux15~2_combout\,
	combout => \inst4|inst20|Regist[7]~24_combout\);

-- Location: FF_X47_Y36_N1
\inst4|inst20|Regist[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst4|inst20|Regist[0]~8_combout\,
	asdata => \inst4|inst20|Add1~0_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	sload => \inst|ALT_INV_RegVal[1]~12_combout\,
	ena => \inst4|inst20|Regist[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst20|Regist\(0));

-- Location: LCCOMB_X43_Y36_N0
\inst4|inst6|Regist[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst6|Regist[0]~feeder_combout\ = \inst4|inst6|Regist[0]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst6|Regist[0]~7_combout\,
	combout => \inst4|inst6|Regist[0]~feeder_combout\);

-- Location: IOIBUF_X36_Y39_N22
\dataA[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataA(0),
	o => \dataA[0]~input_o\);

-- Location: LCCOMB_X44_Y36_N0
\inst|MuxA~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|MuxA~8_combout\ = (!\inst|address\(1) & \inst|Equal17~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|address\(1),
	datad => \inst|Equal17~0_combout\,
	combout => \inst|MuxA~8_combout\);

-- Location: LCCOMB_X42_Y36_N18
\inst4|inst21|Mux15~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst21|Mux15~1_combout\ = (!\inst|WideOr3~15_combout\ & (\inst|WideOr4~11_combout\ & (!\inst|WideOr6~13_combout\ & !\inst|WideOr4~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr3~15_combout\,
	datab => \inst|WideOr4~11_combout\,
	datac => \inst|WideOr6~13_combout\,
	datad => \inst|WideOr4~combout\,
	combout => \inst4|inst21|Mux15~1_combout\);

-- Location: LCCOMB_X42_Y36_N6
\inst4|inst6|Regist[7]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst6|Regist[7]~8_combout\ = (!\inst|UMEM~0_combout\ & (\inst4|inst21|Mux15~1_combout\ & ((!\inst|RegVal[1]~12_combout\) # (!\inst|WideOr7~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr7~11_combout\,
	datab => \inst|RegVal[1]~12_combout\,
	datac => \inst|UMEM~0_combout\,
	datad => \inst4|inst21|Mux15~1_combout\,
	combout => \inst4|inst6|Regist[7]~8_combout\);

-- Location: FF_X43_Y36_N1
\inst4|inst6|Regist[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst4|inst6|Regist[0]~feeder_combout\,
	asdata => \dataA[0]~input_o\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	sload => \inst|MuxA~8_combout\,
	ena => \inst4|inst6|Regist[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst6|Regist\(0));

-- Location: LCCOMB_X44_Y38_N12
\inst4|inst1|Regist[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst1|Regist[0]~8_combout\ = \inst4|inst1|Regist\(0) $ (VCC)
-- \inst4|inst1|Regist[0]~9\ = CARRY(\inst4|inst1|Regist\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|Regist\(0),
	datad => VCC,
	combout => \inst4|inst1|Regist[0]~8_combout\,
	cout => \inst4|inst1|Regist[0]~9\);

-- Location: LCCOMB_X44_Y37_N6
\inst|WideOr8~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr8~4_combout\ = (\inst|address\(1) & ((!\inst|address\(3)) # (!\inst|address\(12)))) # (!\inst|address\(1) & ((\inst|address\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|address\(1),
	datac => \inst|address\(12),
	datad => \inst|address\(3),
	combout => \inst|WideOr8~4_combout\);

-- Location: LCCOMB_X44_Y37_N0
\inst|WideOr8~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr8~9_combout\ = (\inst|address\(2)) # ((\inst|address\(4)) # ((\inst|address\(8)) # (\inst|WideOr8~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(2),
	datab => \inst|address\(4),
	datac => \inst|address\(8),
	datad => \inst|WideOr8~4_combout\,
	combout => \inst|WideOr8~9_combout\);

-- Location: LCCOMB_X43_Y38_N6
\inst4|inst17|Regist[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst17|Regist[0]~8_combout\ = \inst4|inst17|Regist\(0) $ (VCC)
-- \inst4|inst17|Regist[0]~9\ = CARRY(\inst4|inst17|Regist\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst17|Regist\(0),
	datad => VCC,
	combout => \inst4|inst17|Regist[0]~8_combout\,
	cout => \inst4|inst17|Regist[0]~9\);

-- Location: LCCOMB_X43_Y36_N28
\inst4|inst21|Mux15~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst21|Mux15~7_combout\ = (!\inst|WideOr4~11_combout\ & (!\inst|WideOr3~15_combout\ & (!\inst|WideOr6~13_combout\ & \inst|WideOr4~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr4~11_combout\,
	datab => \inst|WideOr3~15_combout\,
	datac => \inst|WideOr6~13_combout\,
	datad => \inst|WideOr4~combout\,
	combout => \inst4|inst21|Mux15~7_combout\);

-- Location: LCCOMB_X43_Y38_N28
\inst4|inst17|Regist[7]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst17|Regist[7]~24_combout\ = (!\inst|UMEM~0_combout\ & (\inst4|inst21|Mux15~7_combout\ & ((!\inst|RegVal[1]~12_combout\) # (!\inst|WideOr7~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|UMEM~0_combout\,
	datab => \inst|WideOr7~11_combout\,
	datac => \inst|RegVal[1]~12_combout\,
	datad => \inst4|inst21|Mux15~7_combout\,
	combout => \inst4|inst17|Regist[7]~24_combout\);

-- Location: FF_X43_Y38_N7
\inst4|inst17|Regist[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst4|inst17|Regist[0]~8_combout\,
	asdata => \inst4|inst6|Regist[0]~7_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	sload => \inst|RegVal[1]~12_combout\,
	ena => \inst4|inst17|Regist[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst17|Regist\(0));

-- Location: LCCOMB_X44_Y38_N30
\inst4|inst1|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst1|Mux7~0_combout\ = (\inst|WideOr8~9_combout\ & ((\inst4|inst6|Regist[0]~7_combout\))) # (!\inst|WideOr8~9_combout\ & (\inst4|inst17|Regist\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr8~9_combout\,
	datac => \inst4|inst17|Regist\(0),
	datad => \inst4|inst6|Regist[0]~7_combout\,
	combout => \inst4|inst1|Mux7~0_combout\);

-- Location: LCCOMB_X43_Y36_N22
\inst4|inst21|Mux15~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst21|Mux15~6_combout\ = (!\inst|WideOr4~11_combout\ & (!\inst|WideOr3~15_combout\ & (\inst|WideOr6~13_combout\ & \inst|WideOr4~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr4~11_combout\,
	datab => \inst|WideOr3~15_combout\,
	datac => \inst|WideOr6~13_combout\,
	datad => \inst|WideOr4~combout\,
	combout => \inst4|inst21|Mux15~6_combout\);

-- Location: LCCOMB_X44_Y38_N6
\inst4|inst1|Regist[7]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst1|Regist[7]~24_combout\ = (!\inst|UMEM~0_combout\ & (\inst4|inst21|Mux15~6_combout\ & ((!\inst|RegVal[1]~12_combout\) # (!\inst|WideOr7~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr7~11_combout\,
	datab => \inst|RegVal[1]~12_combout\,
	datac => \inst|UMEM~0_combout\,
	datad => \inst4|inst21|Mux15~6_combout\,
	combout => \inst4|inst1|Regist[7]~24_combout\);

-- Location: FF_X44_Y38_N13
\inst4|inst1|Regist[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst4|inst1|Regist[0]~8_combout\,
	asdata => \inst4|inst1|Mux7~0_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	sload => \inst|RegVal[1]~12_combout\,
	ena => \inst4|inst1|Regist[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst1|Regist\(0));

-- Location: LCCOMB_X44_Y38_N14
\inst4|inst1|Regist[1]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst1|Regist[1]~10_combout\ = (\inst4|inst1|Regist\(1) & ((\inst|WideOr7~11_combout\ & (!\inst4|inst1|Regist[0]~9\)) # (!\inst|WideOr7~11_combout\ & (\inst4|inst1|Regist[0]~9\ & VCC)))) # (!\inst4|inst1|Regist\(1) & ((\inst|WideOr7~11_combout\ & 
-- ((\inst4|inst1|Regist[0]~9\) # (GND))) # (!\inst|WideOr7~11_combout\ & (!\inst4|inst1|Regist[0]~9\))))
-- \inst4|inst1|Regist[1]~11\ = CARRY((\inst4|inst1|Regist\(1) & (\inst|WideOr7~11_combout\ & !\inst4|inst1|Regist[0]~9\)) # (!\inst4|inst1|Regist\(1) & ((\inst|WideOr7~11_combout\) # (!\inst4|inst1|Regist[0]~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|Regist\(1),
	datab => \inst|WideOr7~11_combout\,
	datad => VCC,
	cin => \inst4|inst1|Regist[0]~9\,
	combout => \inst4|inst1|Regist[1]~10_combout\,
	cout => \inst4|inst1|Regist[1]~11\);

-- Location: LCCOMB_X43_Y38_N8
\inst4|inst17|Regist[1]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst17|Regist[1]~10_combout\ = (\inst4|inst17|Regist\(1) & ((\inst|WideOr7~11_combout\ & (!\inst4|inst17|Regist[0]~9\)) # (!\inst|WideOr7~11_combout\ & (\inst4|inst17|Regist[0]~9\ & VCC)))) # (!\inst4|inst17|Regist\(1) & ((\inst|WideOr7~11_combout\ 
-- & ((\inst4|inst17|Regist[0]~9\) # (GND))) # (!\inst|WideOr7~11_combout\ & (!\inst4|inst17|Regist[0]~9\))))
-- \inst4|inst17|Regist[1]~11\ = CARRY((\inst4|inst17|Regist\(1) & (\inst|WideOr7~11_combout\ & !\inst4|inst17|Regist[0]~9\)) # (!\inst4|inst17|Regist\(1) & ((\inst|WideOr7~11_combout\) # (!\inst4|inst17|Regist[0]~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst17|Regist\(1),
	datab => \inst|WideOr7~11_combout\,
	datad => VCC,
	cin => \inst4|inst17|Regist[0]~9\,
	combout => \inst4|inst17|Regist[1]~10_combout\,
	cout => \inst4|inst17|Regist[1]~11\);

-- Location: FF_X43_Y38_N9
\inst4|inst17|Regist[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst4|inst17|Regist[1]~10_combout\,
	asdata => \inst4|inst6|Regist[1]~6_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	sload => \inst|RegVal[1]~12_combout\,
	ena => \inst4|inst17|Regist[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst17|Regist\(1));

-- Location: LCCOMB_X44_Y38_N28
\inst4|inst1|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst1|Mux6~0_combout\ = (\inst|WideOr8~9_combout\ & ((\inst4|inst6|Regist[1]~6_combout\))) # (!\inst|WideOr8~9_combout\ & (\inst4|inst17|Regist\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst17|Regist\(1),
	datac => \inst|WideOr8~9_combout\,
	datad => \inst4|inst6|Regist[1]~6_combout\,
	combout => \inst4|inst1|Mux6~0_combout\);

-- Location: FF_X44_Y38_N15
\inst4|inst1|Regist[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst4|inst1|Regist[1]~10_combout\,
	asdata => \inst4|inst1|Mux6~0_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	sload => \inst|RegVal[1]~12_combout\,
	ena => \inst4|inst1|Regist[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst1|Regist\(1));

-- Location: LCCOMB_X44_Y38_N16
\inst4|inst1|Regist[2]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst1|Regist[2]~12_combout\ = ((\inst4|inst1|Regist\(2) $ (\inst|WideOr7~11_combout\ $ (\inst4|inst1|Regist[1]~11\)))) # (GND)
-- \inst4|inst1|Regist[2]~13\ = CARRY((\inst4|inst1|Regist\(2) & ((!\inst4|inst1|Regist[1]~11\) # (!\inst|WideOr7~11_combout\))) # (!\inst4|inst1|Regist\(2) & (!\inst|WideOr7~11_combout\ & !\inst4|inst1|Regist[1]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|Regist\(2),
	datab => \inst|WideOr7~11_combout\,
	datad => VCC,
	cin => \inst4|inst1|Regist[1]~11\,
	combout => \inst4|inst1|Regist[2]~12_combout\,
	cout => \inst4|inst1|Regist[2]~13\);

-- Location: LCCOMB_X43_Y38_N10
\inst4|inst17|Regist[2]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst17|Regist[2]~12_combout\ = ((\inst4|inst17|Regist\(2) $ (\inst|WideOr7~11_combout\ $ (\inst4|inst17|Regist[1]~11\)))) # (GND)
-- \inst4|inst17|Regist[2]~13\ = CARRY((\inst4|inst17|Regist\(2) & ((!\inst4|inst17|Regist[1]~11\) # (!\inst|WideOr7~11_combout\))) # (!\inst4|inst17|Regist\(2) & (!\inst|WideOr7~11_combout\ & !\inst4|inst17|Regist[1]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst17|Regist\(2),
	datab => \inst|WideOr7~11_combout\,
	datad => VCC,
	cin => \inst4|inst17|Regist[1]~11\,
	combout => \inst4|inst17|Regist[2]~12_combout\,
	cout => \inst4|inst17|Regist[2]~13\);

-- Location: LCCOMB_X46_Y36_N10
\inst4|inst4|Regist[1]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst4|Regist[1]~10_combout\ = (\inst|WideOr7~11_combout\ & ((\inst4|inst4|Regist\(1) & (!\inst4|inst4|Regist[0]~9\)) # (!\inst4|inst4|Regist\(1) & ((\inst4|inst4|Regist[0]~9\) # (GND))))) # (!\inst|WideOr7~11_combout\ & ((\inst4|inst4|Regist\(1) & 
-- (\inst4|inst4|Regist[0]~9\ & VCC)) # (!\inst4|inst4|Regist\(1) & (!\inst4|inst4|Regist[0]~9\))))
-- \inst4|inst4|Regist[1]~11\ = CARRY((\inst|WideOr7~11_combout\ & ((!\inst4|inst4|Regist[0]~9\) # (!\inst4|inst4|Regist\(1)))) # (!\inst|WideOr7~11_combout\ & (!\inst4|inst4|Regist\(1) & !\inst4|inst4|Regist[0]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr7~11_combout\,
	datab => \inst4|inst4|Regist\(1),
	datad => VCC,
	cin => \inst4|inst4|Regist[0]~9\,
	combout => \inst4|inst4|Regist[1]~10_combout\,
	cout => \inst4|inst4|Regist[1]~11\);

-- Location: LCCOMB_X46_Y36_N12
\inst4|inst4|Regist[2]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst4|Regist[2]~12_combout\ = ((\inst|WideOr7~11_combout\ $ (\inst4|inst4|Regist\(2) $ (\inst4|inst4|Regist[1]~11\)))) # (GND)
-- \inst4|inst4|Regist[2]~13\ = CARRY((\inst|WideOr7~11_combout\ & (\inst4|inst4|Regist\(2) & !\inst4|inst4|Regist[1]~11\)) # (!\inst|WideOr7~11_combout\ & ((\inst4|inst4|Regist\(2)) # (!\inst4|inst4|Regist[1]~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr7~11_combout\,
	datab => \inst4|inst4|Regist\(2),
	datad => VCC,
	cin => \inst4|inst4|Regist[1]~11\,
	combout => \inst4|inst4|Regist[2]~12_combout\,
	cout => \inst4|inst4|Regist[2]~13\);

-- Location: FF_X46_Y36_N13
\inst4|inst4|Regist[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst4|inst4|Regist[2]~12_combout\,
	asdata => \inst4|inst6|Regist[2]~5_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	sload => \inst|RegVal[1]~12_combout\,
	ena => \inst4|inst4|Regist[0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst4|Regist\(2));

-- Location: FF_X44_Y36_N3
\inst4|inst3|Regist[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst4|inst6|Regist[2]~5_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	ena => \inst4|inst3|Regist[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst3|Regist\(2));

-- Location: FF_X44_Y36_N7
\inst4|inst3|Regist[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst4|inst6|Regist[1]~6_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	ena => \inst4|inst3|Regist[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst3|Regist\(1));

-- Location: LCCOMB_X47_Y36_N2
\inst4|inst20|Regist[1]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst20|Regist[1]~10_combout\ = (\inst4|inst4|Regist\(1) & ((\inst4|inst3|Regist\(1) & (\inst4|inst20|Regist[0]~9\ & VCC)) # (!\inst4|inst3|Regist\(1) & (!\inst4|inst20|Regist[0]~9\)))) # (!\inst4|inst4|Regist\(1) & ((\inst4|inst3|Regist\(1) & 
-- (!\inst4|inst20|Regist[0]~9\)) # (!\inst4|inst3|Regist\(1) & ((\inst4|inst20|Regist[0]~9\) # (GND)))))
-- \inst4|inst20|Regist[1]~11\ = CARRY((\inst4|inst4|Regist\(1) & (!\inst4|inst3|Regist\(1) & !\inst4|inst20|Regist[0]~9\)) # (!\inst4|inst4|Regist\(1) & ((!\inst4|inst20|Regist[0]~9\) # (!\inst4|inst3|Regist\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst4|Regist\(1),
	datab => \inst4|inst3|Regist\(1),
	datad => VCC,
	cin => \inst4|inst20|Regist[0]~9\,
	combout => \inst4|inst20|Regist[1]~10_combout\,
	cout => \inst4|inst20|Regist[1]~11\);

-- Location: LCCOMB_X47_Y36_N4
\inst4|inst20|Regist[2]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst20|Regist[2]~12_combout\ = ((\inst4|inst4|Regist\(2) $ (\inst4|inst3|Regist\(2) $ (!\inst4|inst20|Regist[1]~11\)))) # (GND)
-- \inst4|inst20|Regist[2]~13\ = CARRY((\inst4|inst4|Regist\(2) & ((\inst4|inst3|Regist\(2)) # (!\inst4|inst20|Regist[1]~11\))) # (!\inst4|inst4|Regist\(2) & (\inst4|inst3|Regist\(2) & !\inst4|inst20|Regist[1]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst4|Regist\(2),
	datab => \inst4|inst3|Regist\(2),
	datad => VCC,
	cin => \inst4|inst20|Regist[1]~11\,
	combout => \inst4|inst20|Regist[2]~12_combout\,
	cout => \inst4|inst20|Regist[2]~13\);

-- Location: LCCOMB_X47_Y36_N18
\inst4|inst20|Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst20|Add1~2_combout\ = (\inst|WideOr7~11_combout\ & ((\inst4|inst20|Regist\(1) & (!\inst4|inst20|Add1~1\)) # (!\inst4|inst20|Regist\(1) & ((\inst4|inst20|Add1~1\) # (GND))))) # (!\inst|WideOr7~11_combout\ & ((\inst4|inst20|Regist\(1) & 
-- (\inst4|inst20|Add1~1\ & VCC)) # (!\inst4|inst20|Regist\(1) & (!\inst4|inst20|Add1~1\))))
-- \inst4|inst20|Add1~3\ = CARRY((\inst|WideOr7~11_combout\ & ((!\inst4|inst20|Add1~1\) # (!\inst4|inst20|Regist\(1)))) # (!\inst|WideOr7~11_combout\ & (!\inst4|inst20|Regist\(1) & !\inst4|inst20|Add1~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr7~11_combout\,
	datab => \inst4|inst20|Regist\(1),
	datad => VCC,
	cin => \inst4|inst20|Add1~1\,
	combout => \inst4|inst20|Add1~2_combout\,
	cout => \inst4|inst20|Add1~3\);

-- Location: LCCOMB_X47_Y36_N20
\inst4|inst20|Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst20|Add1~4_combout\ = ((\inst|WideOr7~11_combout\ $ (\inst4|inst20|Regist\(2) $ (\inst4|inst20|Add1~3\)))) # (GND)
-- \inst4|inst20|Add1~5\ = CARRY((\inst|WideOr7~11_combout\ & (\inst4|inst20|Regist\(2) & !\inst4|inst20|Add1~3\)) # (!\inst|WideOr7~11_combout\ & ((\inst4|inst20|Regist\(2)) # (!\inst4|inst20|Add1~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr7~11_combout\,
	datab => \inst4|inst20|Regist\(2),
	datad => VCC,
	cin => \inst4|inst20|Add1~3\,
	combout => \inst4|inst20|Add1~4_combout\,
	cout => \inst4|inst20|Add1~5\);

-- Location: FF_X47_Y36_N5
\inst4|inst20|Regist[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst4|inst20|Regist[2]~12_combout\,
	asdata => \inst4|inst20|Add1~4_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	sload => \inst|ALT_INV_RegVal[1]~12_combout\,
	ena => \inst4|inst20|Regist[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst20|Regist\(2));

-- Location: LCCOMB_X44_Y38_N18
\inst4|inst1|Regist[3]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst1|Regist[3]~14_combout\ = (\inst|WideOr7~11_combout\ & ((\inst4|inst1|Regist\(3) & (!\inst4|inst1|Regist[2]~13\)) # (!\inst4|inst1|Regist\(3) & ((\inst4|inst1|Regist[2]~13\) # (GND))))) # (!\inst|WideOr7~11_combout\ & ((\inst4|inst1|Regist\(3) 
-- & (\inst4|inst1|Regist[2]~13\ & VCC)) # (!\inst4|inst1|Regist\(3) & (!\inst4|inst1|Regist[2]~13\))))
-- \inst4|inst1|Regist[3]~15\ = CARRY((\inst|WideOr7~11_combout\ & ((!\inst4|inst1|Regist[2]~13\) # (!\inst4|inst1|Regist\(3)))) # (!\inst|WideOr7~11_combout\ & (!\inst4|inst1|Regist\(3) & !\inst4|inst1|Regist[2]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr7~11_combout\,
	datab => \inst4|inst1|Regist\(3),
	datad => VCC,
	cin => \inst4|inst1|Regist[2]~13\,
	combout => \inst4|inst1|Regist[3]~14_combout\,
	cout => \inst4|inst1|Regist[3]~15\);

-- Location: LCCOMB_X43_Y38_N12
\inst4|inst17|Regist[3]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst17|Regist[3]~14_combout\ = (\inst4|inst17|Regist\(3) & ((\inst|WideOr7~11_combout\ & (!\inst4|inst17|Regist[2]~13\)) # (!\inst|WideOr7~11_combout\ & (\inst4|inst17|Regist[2]~13\ & VCC)))) # (!\inst4|inst17|Regist\(3) & 
-- ((\inst|WideOr7~11_combout\ & ((\inst4|inst17|Regist[2]~13\) # (GND))) # (!\inst|WideOr7~11_combout\ & (!\inst4|inst17|Regist[2]~13\))))
-- \inst4|inst17|Regist[3]~15\ = CARRY((\inst4|inst17|Regist\(3) & (\inst|WideOr7~11_combout\ & !\inst4|inst17|Regist[2]~13\)) # (!\inst4|inst17|Regist\(3) & ((\inst|WideOr7~11_combout\) # (!\inst4|inst17|Regist[2]~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst17|Regist\(3),
	datab => \inst|WideOr7~11_combout\,
	datad => VCC,
	cin => \inst4|inst17|Regist[2]~13\,
	combout => \inst4|inst17|Regist[3]~14_combout\,
	cout => \inst4|inst17|Regist[3]~15\);

-- Location: LCCOMB_X46_Y36_N14
\inst4|inst4|Regist[3]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst4|Regist[3]~14_combout\ = (\inst|WideOr7~11_combout\ & ((\inst4|inst4|Regist\(3) & (!\inst4|inst4|Regist[2]~13\)) # (!\inst4|inst4|Regist\(3) & ((\inst4|inst4|Regist[2]~13\) # (GND))))) # (!\inst|WideOr7~11_combout\ & ((\inst4|inst4|Regist\(3) 
-- & (\inst4|inst4|Regist[2]~13\ & VCC)) # (!\inst4|inst4|Regist\(3) & (!\inst4|inst4|Regist[2]~13\))))
-- \inst4|inst4|Regist[3]~15\ = CARRY((\inst|WideOr7~11_combout\ & ((!\inst4|inst4|Regist[2]~13\) # (!\inst4|inst4|Regist\(3)))) # (!\inst|WideOr7~11_combout\ & (!\inst4|inst4|Regist\(3) & !\inst4|inst4|Regist[2]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr7~11_combout\,
	datab => \inst4|inst4|Regist\(3),
	datad => VCC,
	cin => \inst4|inst4|Regist[2]~13\,
	combout => \inst4|inst4|Regist[3]~14_combout\,
	cout => \inst4|inst4|Regist[3]~15\);

-- Location: FF_X46_Y36_N15
\inst4|inst4|Regist[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst4|inst4|Regist[3]~14_combout\,
	asdata => \inst4|inst6|Regist[3]~4_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	sload => \inst|RegVal[1]~12_combout\,
	ena => \inst4|inst4|Regist[0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst4|Regist\(3));

-- Location: LCCOMB_X44_Y36_N24
\inst4|inst3|Regist[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst3|Regist[3]~feeder_combout\ = \inst4|inst6|Regist[3]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|inst6|Regist[3]~4_combout\,
	combout => \inst4|inst3|Regist[3]~feeder_combout\);

-- Location: FF_X44_Y36_N25
\inst4|inst3|Regist[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst4|inst3|Regist[3]~feeder_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	ena => \inst4|inst3|Regist[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst3|Regist\(3));

-- Location: LCCOMB_X47_Y36_N6
\inst4|inst20|Regist[3]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst20|Regist[3]~14_combout\ = (\inst4|inst4|Regist\(3) & ((\inst4|inst3|Regist\(3) & (\inst4|inst20|Regist[2]~13\ & VCC)) # (!\inst4|inst3|Regist\(3) & (!\inst4|inst20|Regist[2]~13\)))) # (!\inst4|inst4|Regist\(3) & ((\inst4|inst3|Regist\(3) & 
-- (!\inst4|inst20|Regist[2]~13\)) # (!\inst4|inst3|Regist\(3) & ((\inst4|inst20|Regist[2]~13\) # (GND)))))
-- \inst4|inst20|Regist[3]~15\ = CARRY((\inst4|inst4|Regist\(3) & (!\inst4|inst3|Regist\(3) & !\inst4|inst20|Regist[2]~13\)) # (!\inst4|inst4|Regist\(3) & ((!\inst4|inst20|Regist[2]~13\) # (!\inst4|inst3|Regist\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst4|Regist\(3),
	datab => \inst4|inst3|Regist\(3),
	datad => VCC,
	cin => \inst4|inst20|Regist[2]~13\,
	combout => \inst4|inst20|Regist[3]~14_combout\,
	cout => \inst4|inst20|Regist[3]~15\);

-- Location: LCCOMB_X47_Y36_N22
\inst4|inst20|Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst20|Add1~6_combout\ = (\inst|WideOr7~11_combout\ & ((\inst4|inst20|Regist\(3) & (!\inst4|inst20|Add1~5\)) # (!\inst4|inst20|Regist\(3) & ((\inst4|inst20|Add1~5\) # (GND))))) # (!\inst|WideOr7~11_combout\ & ((\inst4|inst20|Regist\(3) & 
-- (\inst4|inst20|Add1~5\ & VCC)) # (!\inst4|inst20|Regist\(3) & (!\inst4|inst20|Add1~5\))))
-- \inst4|inst20|Add1~7\ = CARRY((\inst|WideOr7~11_combout\ & ((!\inst4|inst20|Add1~5\) # (!\inst4|inst20|Regist\(3)))) # (!\inst|WideOr7~11_combout\ & (!\inst4|inst20|Regist\(3) & !\inst4|inst20|Add1~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr7~11_combout\,
	datab => \inst4|inst20|Regist\(3),
	datad => VCC,
	cin => \inst4|inst20|Add1~5\,
	combout => \inst4|inst20|Add1~6_combout\,
	cout => \inst4|inst20|Add1~7\);

-- Location: FF_X47_Y36_N7
\inst4|inst20|Regist[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst4|inst20|Regist[3]~14_combout\,
	asdata => \inst4|inst20|Add1~6_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	sload => \inst|ALT_INV_RegVal[1]~12_combout\,
	ena => \inst4|inst20|Regist[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst20|Regist\(3));

-- Location: LCCOMB_X46_Y36_N30
\inst|Equal29~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal29~2_combout\ = (\inst|address\(12) & (!\inst|address\(8) & (!\inst|address\(3) & !\inst|address\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(12),
	datab => \inst|address\(8),
	datac => \inst|address\(3),
	datad => \inst|address\(2),
	combout => \inst|Equal29~2_combout\);

-- Location: LCCOMB_X46_Y36_N4
\inst|Equal29~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal29~3_combout\ = (\inst|Equal29~2_combout\ & \inst|address\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Equal29~2_combout\,
	datad => \inst|address\(4),
	combout => \inst|Equal29~3_combout\);

-- Location: LCCOMB_X43_Y37_N2
\inst|WideNor0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideNor0~0_combout\ = (\inst|address\(12) & (((!\inst|address\(3) & !\inst|address\(2))) # (!\inst|address\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(3),
	datab => \inst|address\(2),
	datac => \inst|address\(4),
	datad => \inst|address\(12),
	combout => \inst|WideNor0~0_combout\);

-- Location: LCCOMB_X46_Y36_N26
\inst|WideNor0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideNor0~2_combout\ = (\inst|WideNor0~0_combout\) # ((!\inst|address\(4) & \inst|WideNor0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|address\(4),
	datac => \inst|WideNor0~0_combout\,
	datad => \inst|WideNor0~1_combout\,
	combout => \inst|WideNor0~2_combout\);

-- Location: LCCOMB_X46_Y36_N2
\inst|WideOr12~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr12~13_combout\ = (!\inst|address\(8) & (((!\inst|Equal3~0_combout\) # (!\inst|Equal29~2_combout\)) # (!\inst|address\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(4),
	datab => \inst|address\(8),
	datac => \inst|Equal29~2_combout\,
	datad => \inst|Equal3~0_combout\,
	combout => \inst|WideOr12~13_combout\);

-- Location: LCCOMB_X46_Y36_N28
\inst|WideOr2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr2~0_combout\ = (\inst|WideNor0~2_combout\ & (\inst|WideOr12~13_combout\ & ((!\inst|Equal29~3_combout\) # (!\inst|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal2~0_combout\,
	datab => \inst|Equal29~3_combout\,
	datac => \inst|WideNor0~2_combout\,
	datad => \inst|WideOr12~13_combout\,
	combout => \inst|WideOr2~0_combout\);

-- Location: LCCOMB_X45_Y36_N12
\inst4|inst6|Regist[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst6|Regist[3]~feeder_combout\ = \inst4|inst6|Regist[3]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst6|Regist[3]~4_combout\,
	combout => \inst4|inst6|Regist[3]~feeder_combout\);

-- Location: IOIBUF_X49_Y54_N29
\dataA[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataA(3),
	o => \dataA[3]~input_o\);

-- Location: FF_X45_Y36_N13
\inst4|inst6|Regist[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst4|inst6|Regist[3]~feeder_combout\,
	asdata => \dataA[3]~input_o\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	sload => \inst|MuxA~8_combout\,
	ena => \inst4|inst6|Regist[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst6|Regist\(3));

-- Location: LCCOMB_X44_Y38_N20
\inst4|inst1|Regist[4]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst1|Regist[4]~16_combout\ = ((\inst|WideOr7~11_combout\ $ (\inst4|inst1|Regist\(4) $ (\inst4|inst1|Regist[3]~15\)))) # (GND)
-- \inst4|inst1|Regist[4]~17\ = CARRY((\inst|WideOr7~11_combout\ & (\inst4|inst1|Regist\(4) & !\inst4|inst1|Regist[3]~15\)) # (!\inst|WideOr7~11_combout\ & ((\inst4|inst1|Regist\(4)) # (!\inst4|inst1|Regist[3]~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr7~11_combout\,
	datab => \inst4|inst1|Regist\(4),
	datad => VCC,
	cin => \inst4|inst1|Regist[3]~15\,
	combout => \inst4|inst1|Regist[4]~16_combout\,
	cout => \inst4|inst1|Regist[4]~17\);

-- Location: LCCOMB_X43_Y38_N14
\inst4|inst17|Regist[4]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst17|Regist[4]~16_combout\ = ((\inst4|inst17|Regist\(4) $ (\inst|WideOr7~11_combout\ $ (\inst4|inst17|Regist[3]~15\)))) # (GND)
-- \inst4|inst17|Regist[4]~17\ = CARRY((\inst4|inst17|Regist\(4) & ((!\inst4|inst17|Regist[3]~15\) # (!\inst|WideOr7~11_combout\))) # (!\inst4|inst17|Regist\(4) & (!\inst|WideOr7~11_combout\ & !\inst4|inst17|Regist[3]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst17|Regist\(4),
	datab => \inst|WideOr7~11_combout\,
	datad => VCC,
	cin => \inst4|inst17|Regist[3]~15\,
	combout => \inst4|inst17|Regist[4]~16_combout\,
	cout => \inst4|inst17|Regist[4]~17\);

-- Location: FF_X45_Y36_N19
\inst4|inst3|Regist[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst4|inst6|Regist[4]~3_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	ena => \inst4|inst3|Regist[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst3|Regist\(4));

-- Location: LCCOMB_X46_Y36_N16
\inst4|inst4|Regist[4]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst4|Regist[4]~16_combout\ = ((\inst|WideOr7~11_combout\ $ (\inst4|inst4|Regist\(4) $ (\inst4|inst4|Regist[3]~15\)))) # (GND)
-- \inst4|inst4|Regist[4]~17\ = CARRY((\inst|WideOr7~11_combout\ & (\inst4|inst4|Regist\(4) & !\inst4|inst4|Regist[3]~15\)) # (!\inst|WideOr7~11_combout\ & ((\inst4|inst4|Regist\(4)) # (!\inst4|inst4|Regist[3]~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr7~11_combout\,
	datab => \inst4|inst4|Regist\(4),
	datad => VCC,
	cin => \inst4|inst4|Regist[3]~15\,
	combout => \inst4|inst4|Regist[4]~16_combout\,
	cout => \inst4|inst4|Regist[4]~17\);

-- Location: FF_X46_Y36_N17
\inst4|inst4|Regist[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst4|inst4|Regist[4]~16_combout\,
	asdata => \inst4|inst6|Regist[4]~3_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	sload => \inst|RegVal[1]~12_combout\,
	ena => \inst4|inst4|Regist[0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst4|Regist\(4));

-- Location: LCCOMB_X47_Y36_N8
\inst4|inst20|Regist[4]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst20|Regist[4]~16_combout\ = ((\inst4|inst3|Regist\(4) $ (\inst4|inst4|Regist\(4) $ (!\inst4|inst20|Regist[3]~15\)))) # (GND)
-- \inst4|inst20|Regist[4]~17\ = CARRY((\inst4|inst3|Regist\(4) & ((\inst4|inst4|Regist\(4)) # (!\inst4|inst20|Regist[3]~15\))) # (!\inst4|inst3|Regist\(4) & (\inst4|inst4|Regist\(4) & !\inst4|inst20|Regist[3]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst3|Regist\(4),
	datab => \inst4|inst4|Regist\(4),
	datad => VCC,
	cin => \inst4|inst20|Regist[3]~15\,
	combout => \inst4|inst20|Regist[4]~16_combout\,
	cout => \inst4|inst20|Regist[4]~17\);

-- Location: LCCOMB_X47_Y36_N24
\inst4|inst20|Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst20|Add1~8_combout\ = ((\inst|WideOr7~11_combout\ $ (\inst4|inst20|Regist\(4) $ (\inst4|inst20|Add1~7\)))) # (GND)
-- \inst4|inst20|Add1~9\ = CARRY((\inst|WideOr7~11_combout\ & (\inst4|inst20|Regist\(4) & !\inst4|inst20|Add1~7\)) # (!\inst|WideOr7~11_combout\ & ((\inst4|inst20|Regist\(4)) # (!\inst4|inst20|Add1~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr7~11_combout\,
	datab => \inst4|inst20|Regist\(4),
	datad => VCC,
	cin => \inst4|inst20|Add1~7\,
	combout => \inst4|inst20|Add1~8_combout\,
	cout => \inst4|inst20|Add1~9\);

-- Location: FF_X47_Y36_N9
\inst4|inst20|Regist[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst4|inst20|Regist[4]~16_combout\,
	asdata => \inst4|inst20|Add1~8_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	sload => \inst|ALT_INV_RegVal[1]~12_combout\,
	ena => \inst4|inst20|Regist[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst20|Regist\(4));

-- Location: LCCOMB_X45_Y36_N28
\inst4|inst6|Regist[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst6|Regist[4]~feeder_combout\ = \inst4|inst6|Regist[4]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|inst6|Regist[4]~3_combout\,
	combout => \inst4|inst6|Regist[4]~feeder_combout\);

-- Location: IOIBUF_X49_Y54_N15
\dataA[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataA(4),
	o => \dataA[4]~input_o\);

-- Location: FF_X45_Y36_N29
\inst4|inst6|Regist[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst4|inst6|Regist[4]~feeder_combout\,
	asdata => \dataA[4]~input_o\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	sload => \inst|MuxA~8_combout\,
	ena => \inst4|inst6|Regist[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst6|Regist\(4));

-- Location: LCCOMB_X44_Y38_N22
\inst4|inst1|Regist[5]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst1|Regist[5]~18_combout\ = (\inst4|inst1|Regist\(5) & ((\inst|WideOr7~11_combout\ & (!\inst4|inst1|Regist[4]~17\)) # (!\inst|WideOr7~11_combout\ & (\inst4|inst1|Regist[4]~17\ & VCC)))) # (!\inst4|inst1|Regist\(5) & ((\inst|WideOr7~11_combout\ & 
-- ((\inst4|inst1|Regist[4]~17\) # (GND))) # (!\inst|WideOr7~11_combout\ & (!\inst4|inst1|Regist[4]~17\))))
-- \inst4|inst1|Regist[5]~19\ = CARRY((\inst4|inst1|Regist\(5) & (\inst|WideOr7~11_combout\ & !\inst4|inst1|Regist[4]~17\)) # (!\inst4|inst1|Regist\(5) & ((\inst|WideOr7~11_combout\) # (!\inst4|inst1|Regist[4]~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|Regist\(5),
	datab => \inst|WideOr7~11_combout\,
	datad => VCC,
	cin => \inst4|inst1|Regist[4]~17\,
	combout => \inst4|inst1|Regist[5]~18_combout\,
	cout => \inst4|inst1|Regist[5]~19\);

-- Location: LCCOMB_X43_Y38_N16
\inst4|inst17|Regist[5]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst17|Regist[5]~18_combout\ = (\inst4|inst17|Regist\(5) & ((\inst|WideOr7~11_combout\ & (!\inst4|inst17|Regist[4]~17\)) # (!\inst|WideOr7~11_combout\ & (\inst4|inst17|Regist[4]~17\ & VCC)))) # (!\inst4|inst17|Regist\(5) & 
-- ((\inst|WideOr7~11_combout\ & ((\inst4|inst17|Regist[4]~17\) # (GND))) # (!\inst|WideOr7~11_combout\ & (!\inst4|inst17|Regist[4]~17\))))
-- \inst4|inst17|Regist[5]~19\ = CARRY((\inst4|inst17|Regist\(5) & (\inst|WideOr7~11_combout\ & !\inst4|inst17|Regist[4]~17\)) # (!\inst4|inst17|Regist\(5) & ((\inst|WideOr7~11_combout\) # (!\inst4|inst17|Regist[4]~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst17|Regist\(5),
	datab => \inst|WideOr7~11_combout\,
	datad => VCC,
	cin => \inst4|inst17|Regist[4]~17\,
	combout => \inst4|inst17|Regist[5]~18_combout\,
	cout => \inst4|inst17|Regist[5]~19\);

-- Location: FF_X45_Y36_N11
\inst4|inst3|Regist[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst4|inst6|Regist[5]~2_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	ena => \inst4|inst3|Regist[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst3|Regist\(5));

-- Location: LCCOMB_X46_Y36_N18
\inst4|inst4|Regist[5]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst4|Regist[5]~18_combout\ = (\inst|WideOr7~11_combout\ & ((\inst4|inst4|Regist\(5) & (!\inst4|inst4|Regist[4]~17\)) # (!\inst4|inst4|Regist\(5) & ((\inst4|inst4|Regist[4]~17\) # (GND))))) # (!\inst|WideOr7~11_combout\ & ((\inst4|inst4|Regist\(5) 
-- & (\inst4|inst4|Regist[4]~17\ & VCC)) # (!\inst4|inst4|Regist\(5) & (!\inst4|inst4|Regist[4]~17\))))
-- \inst4|inst4|Regist[5]~19\ = CARRY((\inst|WideOr7~11_combout\ & ((!\inst4|inst4|Regist[4]~17\) # (!\inst4|inst4|Regist\(5)))) # (!\inst|WideOr7~11_combout\ & (!\inst4|inst4|Regist\(5) & !\inst4|inst4|Regist[4]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr7~11_combout\,
	datab => \inst4|inst4|Regist\(5),
	datad => VCC,
	cin => \inst4|inst4|Regist[4]~17\,
	combout => \inst4|inst4|Regist[5]~18_combout\,
	cout => \inst4|inst4|Regist[5]~19\);

-- Location: FF_X46_Y36_N19
\inst4|inst4|Regist[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst4|inst4|Regist[5]~18_combout\,
	asdata => \inst4|inst6|Regist[5]~2_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	sload => \inst|RegVal[1]~12_combout\,
	ena => \inst4|inst4|Regist[0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst4|Regist\(5));

-- Location: LCCOMB_X47_Y36_N10
\inst4|inst20|Regist[5]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst20|Regist[5]~18_combout\ = (\inst4|inst3|Regist\(5) & ((\inst4|inst4|Regist\(5) & (\inst4|inst20|Regist[4]~17\ & VCC)) # (!\inst4|inst4|Regist\(5) & (!\inst4|inst20|Regist[4]~17\)))) # (!\inst4|inst3|Regist\(5) & ((\inst4|inst4|Regist\(5) & 
-- (!\inst4|inst20|Regist[4]~17\)) # (!\inst4|inst4|Regist\(5) & ((\inst4|inst20|Regist[4]~17\) # (GND)))))
-- \inst4|inst20|Regist[5]~19\ = CARRY((\inst4|inst3|Regist\(5) & (!\inst4|inst4|Regist\(5) & !\inst4|inst20|Regist[4]~17\)) # (!\inst4|inst3|Regist\(5) & ((!\inst4|inst20|Regist[4]~17\) # (!\inst4|inst4|Regist\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst3|Regist\(5),
	datab => \inst4|inst4|Regist\(5),
	datad => VCC,
	cin => \inst4|inst20|Regist[4]~17\,
	combout => \inst4|inst20|Regist[5]~18_combout\,
	cout => \inst4|inst20|Regist[5]~19\);

-- Location: LCCOMB_X47_Y36_N26
\inst4|inst20|Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst20|Add1~10_combout\ = (\inst|WideOr7~11_combout\ & ((\inst4|inst20|Regist\(5) & (!\inst4|inst20|Add1~9\)) # (!\inst4|inst20|Regist\(5) & ((\inst4|inst20|Add1~9\) # (GND))))) # (!\inst|WideOr7~11_combout\ & ((\inst4|inst20|Regist\(5) & 
-- (\inst4|inst20|Add1~9\ & VCC)) # (!\inst4|inst20|Regist\(5) & (!\inst4|inst20|Add1~9\))))
-- \inst4|inst20|Add1~11\ = CARRY((\inst|WideOr7~11_combout\ & ((!\inst4|inst20|Add1~9\) # (!\inst4|inst20|Regist\(5)))) # (!\inst|WideOr7~11_combout\ & (!\inst4|inst20|Regist\(5) & !\inst4|inst20|Add1~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr7~11_combout\,
	datab => \inst4|inst20|Regist\(5),
	datad => VCC,
	cin => \inst4|inst20|Add1~9\,
	combout => \inst4|inst20|Add1~10_combout\,
	cout => \inst4|inst20|Add1~11\);

-- Location: FF_X47_Y36_N11
\inst4|inst20|Regist[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst4|inst20|Regist[5]~18_combout\,
	asdata => \inst4|inst20|Add1~10_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	sload => \inst|ALT_INV_RegVal[1]~12_combout\,
	ena => \inst4|inst20|Regist[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst20|Regist\(5));

-- Location: LCCOMB_X45_Y36_N20
\inst4|inst6|Regist[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst6|Regist[5]~feeder_combout\ = \inst4|inst6|Regist[5]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|inst6|Regist[5]~2_combout\,
	combout => \inst4|inst6|Regist[5]~feeder_combout\);

-- Location: IOIBUF_X46_Y0_N8
\dataA[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataA(5),
	o => \dataA[5]~input_o\);

-- Location: FF_X45_Y36_N21
\inst4|inst6|Regist[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst4|inst6|Regist[5]~feeder_combout\,
	asdata => \dataA[5]~input_o\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	sload => \inst|MuxA~8_combout\,
	ena => \inst4|inst6|Regist[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst6|Regist\(5));

-- Location: LCCOMB_X44_Y38_N24
\inst4|inst1|Regist[6]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst1|Regist[6]~20_combout\ = ((\inst4|inst1|Regist\(6) $ (\inst|WideOr7~11_combout\ $ (\inst4|inst1|Regist[5]~19\)))) # (GND)
-- \inst4|inst1|Regist[6]~21\ = CARRY((\inst4|inst1|Regist\(6) & ((!\inst4|inst1|Regist[5]~19\) # (!\inst|WideOr7~11_combout\))) # (!\inst4|inst1|Regist\(6) & (!\inst|WideOr7~11_combout\ & !\inst4|inst1|Regist[5]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|Regist\(6),
	datab => \inst|WideOr7~11_combout\,
	datad => VCC,
	cin => \inst4|inst1|Regist[5]~19\,
	combout => \inst4|inst1|Regist[6]~20_combout\,
	cout => \inst4|inst1|Regist[6]~21\);

-- Location: LCCOMB_X43_Y38_N18
\inst4|inst17|Regist[6]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst17|Regist[6]~20_combout\ = ((\inst4|inst17|Regist\(6) $ (\inst|WideOr7~11_combout\ $ (\inst4|inst17|Regist[5]~19\)))) # (GND)
-- \inst4|inst17|Regist[6]~21\ = CARRY((\inst4|inst17|Regist\(6) & ((!\inst4|inst17|Regist[5]~19\) # (!\inst|WideOr7~11_combout\))) # (!\inst4|inst17|Regist\(6) & (!\inst|WideOr7~11_combout\ & !\inst4|inst17|Regist[5]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst17|Regist\(6),
	datab => \inst|WideOr7~11_combout\,
	datad => VCC,
	cin => \inst4|inst17|Regist[5]~19\,
	combout => \inst4|inst17|Regist[6]~20_combout\,
	cout => \inst4|inst17|Regist[6]~21\);

-- Location: FF_X44_Y36_N15
\inst4|inst3|Regist[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst4|inst6|Regist[6]~1_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	ena => \inst4|inst3|Regist[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst3|Regist\(6));

-- Location: LCCOMB_X46_Y36_N20
\inst4|inst4|Regist[6]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst4|Regist[6]~20_combout\ = ((\inst|WideOr7~11_combout\ $ (\inst4|inst4|Regist\(6) $ (\inst4|inst4|Regist[5]~19\)))) # (GND)
-- \inst4|inst4|Regist[6]~21\ = CARRY((\inst|WideOr7~11_combout\ & (\inst4|inst4|Regist\(6) & !\inst4|inst4|Regist[5]~19\)) # (!\inst|WideOr7~11_combout\ & ((\inst4|inst4|Regist\(6)) # (!\inst4|inst4|Regist[5]~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr7~11_combout\,
	datab => \inst4|inst4|Regist\(6),
	datad => VCC,
	cin => \inst4|inst4|Regist[5]~19\,
	combout => \inst4|inst4|Regist[6]~20_combout\,
	cout => \inst4|inst4|Regist[6]~21\);

-- Location: FF_X46_Y36_N21
\inst4|inst4|Regist[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst4|inst4|Regist[6]~20_combout\,
	asdata => \inst4|inst6|Regist[6]~1_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	sload => \inst|RegVal[1]~12_combout\,
	ena => \inst4|inst4|Regist[0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst4|Regist\(6));

-- Location: LCCOMB_X47_Y36_N12
\inst4|inst20|Regist[6]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst20|Regist[6]~20_combout\ = ((\inst4|inst3|Regist\(6) $ (\inst4|inst4|Regist\(6) $ (!\inst4|inst20|Regist[5]~19\)))) # (GND)
-- \inst4|inst20|Regist[6]~21\ = CARRY((\inst4|inst3|Regist\(6) & ((\inst4|inst4|Regist\(6)) # (!\inst4|inst20|Regist[5]~19\))) # (!\inst4|inst3|Regist\(6) & (\inst4|inst4|Regist\(6) & !\inst4|inst20|Regist[5]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst3|Regist\(6),
	datab => \inst4|inst4|Regist\(6),
	datad => VCC,
	cin => \inst4|inst20|Regist[5]~19\,
	combout => \inst4|inst20|Regist[6]~20_combout\,
	cout => \inst4|inst20|Regist[6]~21\);

-- Location: LCCOMB_X47_Y36_N28
\inst4|inst20|Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst20|Add1~12_combout\ = ((\inst|WideOr7~11_combout\ $ (\inst4|inst20|Regist\(6) $ (\inst4|inst20|Add1~11\)))) # (GND)
-- \inst4|inst20|Add1~13\ = CARRY((\inst|WideOr7~11_combout\ & (\inst4|inst20|Regist\(6) & !\inst4|inst20|Add1~11\)) # (!\inst|WideOr7~11_combout\ & ((\inst4|inst20|Regist\(6)) # (!\inst4|inst20|Add1~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr7~11_combout\,
	datab => \inst4|inst20|Regist\(6),
	datad => VCC,
	cin => \inst4|inst20|Add1~11\,
	combout => \inst4|inst20|Add1~12_combout\,
	cout => \inst4|inst20|Add1~13\);

-- Location: FF_X47_Y36_N13
\inst4|inst20|Regist[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst4|inst20|Regist[6]~20_combout\,
	asdata => \inst4|inst20|Add1~12_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	sload => \inst|ALT_INV_RegVal[1]~12_combout\,
	ena => \inst4|inst20|Regist[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst20|Regist\(6));

-- Location: LCCOMB_X44_Y38_N26
\inst4|inst1|Regist[7]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst1|Regist[7]~22_combout\ = \inst4|inst1|Regist\(7) $ (\inst4|inst1|Regist[6]~21\ $ (!\inst|WideOr7~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|Regist\(7),
	datad => \inst|WideOr7~11_combout\,
	cin => \inst4|inst1|Regist[6]~21\,
	combout => \inst4|inst1|Regist[7]~22_combout\);

-- Location: LCCOMB_X43_Y38_N20
\inst4|inst17|Regist[7]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst17|Regist[7]~22_combout\ = \inst|WideOr7~11_combout\ $ (\inst4|inst17|Regist\(7) $ (!\inst4|inst17|Regist[6]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr7~11_combout\,
	datab => \inst4|inst17|Regist\(7),
	cin => \inst4|inst17|Regist[6]~21\,
	combout => \inst4|inst17|Regist[7]~22_combout\);

-- Location: FF_X45_Y36_N31
\inst4|inst3|Regist[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst4|inst6|Regist[7]~0_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	ena => \inst4|inst3|Regist[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst3|Regist\(7));

-- Location: LCCOMB_X46_Y36_N22
\inst4|inst4|Regist[7]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst4|Regist[7]~22_combout\ = \inst4|inst4|Regist\(7) $ (\inst4|inst4|Regist[6]~21\ $ (!\inst|WideOr7~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst4|Regist\(7),
	datad => \inst|WideOr7~11_combout\,
	cin => \inst4|inst4|Regist[6]~21\,
	combout => \inst4|inst4|Regist[7]~22_combout\);

-- Location: FF_X46_Y36_N23
\inst4|inst4|Regist[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst4|inst4|Regist[7]~22_combout\,
	asdata => \inst4|inst6|Regist[7]~0_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	sload => \inst|RegVal[1]~12_combout\,
	ena => \inst4|inst4|Regist[0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst4|Regist\(7));

-- Location: LCCOMB_X47_Y36_N14
\inst4|inst20|Regist[7]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst20|Regist[7]~22_combout\ = \inst4|inst3|Regist\(7) $ (\inst4|inst20|Regist[6]~21\ $ (\inst4|inst4|Regist\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst3|Regist\(7),
	datad => \inst4|inst4|Regist\(7),
	cin => \inst4|inst20|Regist[6]~21\,
	combout => \inst4|inst20|Regist[7]~22_combout\);

-- Location: LCCOMB_X47_Y36_N30
\inst4|inst20|Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst20|Add1~14_combout\ = \inst4|inst20|Regist\(7) $ (\inst4|inst20|Add1~13\ $ (!\inst|WideOr7~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst20|Regist\(7),
	datad => \inst|WideOr7~11_combout\,
	cin => \inst4|inst20|Add1~13\,
	combout => \inst4|inst20|Add1~14_combout\);

-- Location: FF_X47_Y36_N15
\inst4|inst20|Regist[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst4|inst20|Regist[7]~22_combout\,
	asdata => \inst4|inst20|Add1~14_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	sload => \inst|ALT_INV_RegVal[1]~12_combout\,
	ena => \inst4|inst20|Regist[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst20|Regist\(7));

-- Location: M9K_X53_Y36_N0
\inst4|inst|altsyncram_component|auto_generated|ram_block1a0\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800070001C0001",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "MiQro_EVA.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ElMicro:inst4|RP:inst|altsyncram:altsyncram_component|altsyncram_2vq3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	clk0 => \Clk~inputclkctrl_outclk\,
	portadatain => \inst4|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \inst4|inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst4|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X42_Y36_N0
\inst4|inst21|Mux15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst21|Mux15~0_combout\ = (\inst|WideOr3~15_combout\ & (\inst|WideOr4~11_combout\ & (!\inst|WideOr6~13_combout\ & !\inst|WideOr4~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr3~15_combout\,
	datab => \inst|WideOr4~11_combout\,
	datac => \inst|WideOr6~13_combout\,
	datad => \inst|WideOr4~combout\,
	combout => \inst4|inst21|Mux15~0_combout\);

-- Location: LCCOMB_X42_Y36_N16
\inst4|inst7|Regist[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst7|Regist[7]~0_combout\ = (!\inst|UMEM~0_combout\ & (\inst4|inst21|Mux15~0_combout\ & ((!\inst|RegVal[1]~12_combout\) # (!\inst|WideOr7~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr7~11_combout\,
	datab => \inst|RegVal[1]~12_combout\,
	datac => \inst|UMEM~0_combout\,
	datad => \inst4|inst21|Mux15~0_combout\,
	combout => \inst4|inst7|Regist[7]~0_combout\);

-- Location: FF_X42_Y36_N11
\inst4|inst7|Regist[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \inst4|inst|altsyncram_component|auto_generated|q_a\(1),
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst4|inst7|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst7|Regist\(1));

-- Location: FF_X42_Y36_N15
\inst4|inst7|Regist[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \inst4|inst|altsyncram_component|auto_generated|q_a\(7),
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst4|inst7|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst7|Regist\(7));

-- Location: LCCOMB_X42_Y37_N20
\inst|WideOr0~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr0~15_combout\ = (\inst|address\(1) & (((\inst|address\(2)) # (!\inst|address\(3))))) # (!\inst|address\(1) & (\inst|address\(2) & ((!\inst|address\(3)) # (!\inst|address\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(1),
	datab => \inst|address\(12),
	datac => \inst|address\(3),
	datad => \inst|address\(2),
	combout => \inst|WideOr0~15_combout\);

-- Location: LCCOMB_X42_Y37_N22
\inst|WideOr0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr0~16_combout\ = (\inst|address\(4) & ((\inst|address\(3)) # ((\inst|WideOr0~15_combout\) # (!\inst|address\(12))))) # (!\inst|address\(4) & (\inst|WideOr0~15_combout\ & ((\inst|address\(3)) # (!\inst|address\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(3),
	datab => \inst|address\(12),
	datac => \inst|address\(4),
	datad => \inst|WideOr0~15_combout\,
	combout => \inst|WideOr0~16_combout\);

-- Location: LCCOMB_X42_Y37_N24
\inst|WideOr0~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr0~17_combout\ = (\inst|address\(1) & ((\inst|address\(2)) # ((\inst|address\(12) & !\inst|address\(3))))) # (!\inst|address\(1) & (((!\inst|address\(3) & \inst|address\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(1),
	datab => \inst|address\(12),
	datac => \inst|address\(3),
	datad => \inst|address\(2),
	combout => \inst|WideOr0~17_combout\);

-- Location: LCCOMB_X42_Y37_N2
\inst|WideOr0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr0~18_combout\ = (\inst|address\(4) & ((\inst|address\(3)) # ((\inst|WideOr0~17_combout\) # (!\inst|address\(12))))) # (!\inst|address\(4) & (\inst|WideOr0~17_combout\ & ((\inst|address\(3)) # (!\inst|address\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(3),
	datab => \inst|address\(12),
	datac => \inst|address\(4),
	datad => \inst|WideOr0~17_combout\,
	combout => \inst|WideOr0~18_combout\);

-- Location: LCCOMB_X42_Y37_N30
\inst|WideOr0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr0~combout\ = (\inst|address\(8)) # ((\inst|address\(0) & (\inst|WideOr0~16_combout\)) # (!\inst|address\(0) & ((\inst|WideOr0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(8),
	datab => \inst|address\(0),
	datac => \inst|WideOr0~16_combout\,
	datad => \inst|WideOr0~18_combout\,
	combout => \inst|WideOr0~combout\);

-- Location: LCCOMB_X45_Y36_N0
\inst4|inst6|Regist[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst6|Regist[7]~feeder_combout\ = \inst4|inst6|Regist[7]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst6|Regist[7]~0_combout\,
	combout => \inst4|inst6|Regist[7]~feeder_combout\);

-- Location: IOIBUF_X49_Y54_N1
\dataA[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataA(7),
	o => \dataA[7]~input_o\);

-- Location: FF_X45_Y36_N1
\inst4|inst6|Regist[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst4|inst6|Regist[7]~feeder_combout\,
	asdata => \dataA[7]~input_o\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	sload => \inst|MuxA~8_combout\,
	ena => \inst4|inst6|Regist[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst6|Regist\(7));

-- Location: LCCOMB_X42_Y37_N18
\inst4|inst16|result[7]~256\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst16|result[7]~256_combout\ = (\inst|WideOr0~combout\ & (\inst4|inst7|Regist\(7))) # (!\inst|WideOr0~combout\ & ((\inst4|inst6|Regist\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst7|Regist\(7),
	datac => \inst|WideOr0~combout\,
	datad => \inst4|inst6|Regist\(7),
	combout => \inst4|inst16|result[7]~256_combout\);

-- Location: LCCOMB_X45_Y36_N30
\inst4|inst6|Regist[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst6|Regist[7]~0_combout\ = (\inst|WideOr2~0_combout\ & ((\inst4|inst16|result[7]~256_combout\))) # (!\inst|WideOr2~0_combout\ & (\inst4|inst20|Regist\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst20|Regist\(7),
	datac => \inst4|inst16|result[7]~256_combout\,
	datad => \inst|WideOr2~0_combout\,
	combout => \inst4|inst6|Regist[7]~0_combout\);

-- Location: FF_X43_Y38_N21
\inst4|inst17|Regist[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst4|inst17|Regist[7]~22_combout\,
	asdata => \inst4|inst6|Regist[7]~0_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	sload => \inst|RegVal[1]~12_combout\,
	ena => \inst4|inst17|Regist[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst17|Regist\(7));

-- Location: LCCOMB_X44_Y38_N0
\inst4|inst1|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst1|Mux0~0_combout\ = (\inst|WideOr8~9_combout\ & ((\inst4|inst6|Regist[7]~0_combout\))) # (!\inst|WideOr8~9_combout\ & (\inst4|inst17|Regist\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr8~9_combout\,
	datac => \inst4|inst17|Regist\(7),
	datad => \inst4|inst6|Regist[7]~0_combout\,
	combout => \inst4|inst1|Mux0~0_combout\);

-- Location: FF_X44_Y38_N27
\inst4|inst1|Regist[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst4|inst1|Regist[7]~22_combout\,
	asdata => \inst4|inst1|Mux0~0_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	sload => \inst|RegVal[1]~12_combout\,
	ena => \inst4|inst1|Regist[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst1|Regist\(7));

-- Location: LCCOMB_X42_Y36_N4
\inst4|inst7|Regist[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst7|Regist[6]~feeder_combout\ = \inst4|inst|altsyncram_component|auto_generated|q_a\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|inst|altsyncram_component|auto_generated|q_a\(6),
	combout => \inst4|inst7|Regist[6]~feeder_combout\);

-- Location: FF_X42_Y36_N5
\inst4|inst7|Regist[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst4|inst7|Regist[6]~feeder_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	ena => \inst4|inst7|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst7|Regist\(6));

-- Location: LCCOMB_X44_Y36_N16
\inst4|inst6|Regist[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst6|Regist[6]~feeder_combout\ = \inst4|inst6|Regist[6]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst6|Regist[6]~1_combout\,
	combout => \inst4|inst6|Regist[6]~feeder_combout\);

-- Location: IOIBUF_X49_Y54_N22
\dataA[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataA(6),
	o => \dataA[6]~input_o\);

-- Location: FF_X44_Y36_N17
\inst4|inst6|Regist[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst4|inst6|Regist[6]~feeder_combout\,
	asdata => \dataA[6]~input_o\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	sload => \inst|MuxA~8_combout\,
	ena => \inst4|inst6|Regist[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst6|Regist\(6));

-- Location: LCCOMB_X44_Y36_N30
\inst4|inst16|result[6]~257\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst16|result[6]~257_combout\ = (\inst|WideOr0~combout\ & (\inst4|inst7|Regist\(6))) # (!\inst|WideOr0~combout\ & ((\inst4|inst6|Regist\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst7|Regist\(6),
	datac => \inst|WideOr0~combout\,
	datad => \inst4|inst6|Regist\(6),
	combout => \inst4|inst16|result[6]~257_combout\);

-- Location: LCCOMB_X44_Y36_N14
\inst4|inst6|Regist[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst6|Regist[6]~1_combout\ = (\inst|WideOr2~0_combout\ & ((\inst4|inst16|result[6]~257_combout\))) # (!\inst|WideOr2~0_combout\ & (\inst4|inst20|Regist\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst20|Regist\(6),
	datac => \inst4|inst16|result[6]~257_combout\,
	datad => \inst|WideOr2~0_combout\,
	combout => \inst4|inst6|Regist[6]~1_combout\);

-- Location: FF_X43_Y38_N19
\inst4|inst17|Regist[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst4|inst17|Regist[6]~20_combout\,
	asdata => \inst4|inst6|Regist[6]~1_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	sload => \inst|RegVal[1]~12_combout\,
	ena => \inst4|inst17|Regist[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst17|Regist\(6));

-- Location: LCCOMB_X44_Y38_N8
\inst4|inst1|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst1|Mux1~0_combout\ = (\inst|WideOr8~9_combout\ & ((\inst4|inst6|Regist[6]~1_combout\))) # (!\inst|WideOr8~9_combout\ & (\inst4|inst17|Regist\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr8~9_combout\,
	datab => \inst4|inst17|Regist\(6),
	datad => \inst4|inst6|Regist[6]~1_combout\,
	combout => \inst4|inst1|Mux1~0_combout\);

-- Location: FF_X44_Y38_N25
\inst4|inst1|Regist[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst4|inst1|Regist[6]~20_combout\,
	asdata => \inst4|inst1|Mux1~0_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	sload => \inst|RegVal[1]~12_combout\,
	ena => \inst4|inst1|Regist[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst1|Regist\(6));

-- Location: LCCOMB_X43_Y36_N10
\inst4|inst7|Regist[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst7|Regist[5]~feeder_combout\ = \inst4|inst|altsyncram_component|auto_generated|q_a\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|inst|altsyncram_component|auto_generated|q_a\(5),
	combout => \inst4|inst7|Regist[5]~feeder_combout\);

-- Location: FF_X43_Y36_N11
\inst4|inst7|Regist[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst4|inst7|Regist[5]~feeder_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	ena => \inst4|inst7|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst7|Regist\(5));

-- Location: LCCOMB_X45_Y36_N26
\inst4|inst16|result[5]~258\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst16|result[5]~258_combout\ = (\inst|WideOr0~combout\ & ((\inst4|inst7|Regist\(5)))) # (!\inst|WideOr0~combout\ & (\inst4|inst6|Regist\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst6|Regist\(5),
	datac => \inst4|inst7|Regist\(5),
	datad => \inst|WideOr0~combout\,
	combout => \inst4|inst16|result[5]~258_combout\);

-- Location: LCCOMB_X45_Y36_N10
\inst4|inst6|Regist[5]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst6|Regist[5]~2_combout\ = (\inst|WideOr2~0_combout\ & ((\inst4|inst16|result[5]~258_combout\))) # (!\inst|WideOr2~0_combout\ & (\inst4|inst20|Regist\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst20|Regist\(5),
	datac => \inst4|inst16|result[5]~258_combout\,
	datad => \inst|WideOr2~0_combout\,
	combout => \inst4|inst6|Regist[5]~2_combout\);

-- Location: FF_X43_Y38_N17
\inst4|inst17|Regist[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst4|inst17|Regist[5]~18_combout\,
	asdata => \inst4|inst6|Regist[5]~2_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	sload => \inst|RegVal[1]~12_combout\,
	ena => \inst4|inst17|Regist[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst17|Regist\(5));

-- Location: LCCOMB_X44_Y38_N10
\inst4|inst1|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst1|Mux2~0_combout\ = (\inst|WideOr8~9_combout\ & ((\inst4|inst6|Regist[5]~2_combout\))) # (!\inst|WideOr8~9_combout\ & (\inst4|inst17|Regist\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr8~9_combout\,
	datab => \inst4|inst17|Regist\(5),
	datac => \inst4|inst6|Regist[5]~2_combout\,
	combout => \inst4|inst1|Mux2~0_combout\);

-- Location: FF_X44_Y38_N23
\inst4|inst1|Regist[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst4|inst1|Regist[5]~18_combout\,
	asdata => \inst4|inst1|Mux2~0_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	sload => \inst|RegVal[1]~12_combout\,
	ena => \inst4|inst1|Regist[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst1|Regist\(5));

-- Location: FF_X42_Y36_N25
\inst4|inst7|Regist[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \inst4|inst|altsyncram_component|auto_generated|q_a\(4),
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst4|inst7|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst7|Regist\(4));

-- Location: LCCOMB_X45_Y36_N4
\inst4|inst16|result[4]~259\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst16|result[4]~259_combout\ = (\inst|WideOr0~combout\ & ((\inst4|inst7|Regist\(4)))) # (!\inst|WideOr0~combout\ & (\inst4|inst6|Regist\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst6|Regist\(4),
	datac => \inst4|inst7|Regist\(4),
	datad => \inst|WideOr0~combout\,
	combout => \inst4|inst16|result[4]~259_combout\);

-- Location: LCCOMB_X45_Y36_N18
\inst4|inst6|Regist[4]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst6|Regist[4]~3_combout\ = (\inst|WideOr2~0_combout\ & ((\inst4|inst16|result[4]~259_combout\))) # (!\inst|WideOr2~0_combout\ & (\inst4|inst20|Regist\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst20|Regist\(4),
	datac => \inst4|inst16|result[4]~259_combout\,
	datad => \inst|WideOr2~0_combout\,
	combout => \inst4|inst6|Regist[4]~3_combout\);

-- Location: FF_X43_Y38_N15
\inst4|inst17|Regist[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst4|inst17|Regist[4]~16_combout\,
	asdata => \inst4|inst6|Regist[4]~3_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	sload => \inst|RegVal[1]~12_combout\,
	ena => \inst4|inst17|Regist[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst17|Regist\(4));

-- Location: LCCOMB_X45_Y36_N22
\inst4|inst1|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst1|Mux3~0_combout\ = (\inst|WideOr8~9_combout\ & ((\inst4|inst6|Regist[4]~3_combout\))) # (!\inst|WideOr8~9_combout\ & (\inst4|inst17|Regist\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst17|Regist\(4),
	datac => \inst|WideOr8~9_combout\,
	datad => \inst4|inst6|Regist[4]~3_combout\,
	combout => \inst4|inst1|Mux3~0_combout\);

-- Location: FF_X44_Y38_N21
\inst4|inst1|Regist[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst4|inst1|Regist[4]~16_combout\,
	asdata => \inst4|inst1|Mux3~0_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	sload => \inst|RegVal[1]~12_combout\,
	ena => \inst4|inst1|Regist[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst1|Regist\(4));

-- Location: LCCOMB_X43_Y36_N16
\inst4|inst7|Regist[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst7|Regist[3]~feeder_combout\ = \inst4|inst|altsyncram_component|auto_generated|q_a\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|inst|altsyncram_component|auto_generated|q_a\(3),
	combout => \inst4|inst7|Regist[3]~feeder_combout\);

-- Location: FF_X43_Y36_N17
\inst4|inst7|Regist[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst4|inst7|Regist[3]~feeder_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	ena => \inst4|inst7|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst7|Regist\(3));

-- Location: LCCOMB_X46_Y36_N6
\inst4|inst16|result[3]~260\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst16|result[3]~260_combout\ = (\inst|WideOr0~combout\ & ((\inst4|inst7|Regist\(3)))) # (!\inst|WideOr0~combout\ & (\inst4|inst6|Regist\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst6|Regist\(3),
	datac => \inst4|inst7|Regist\(3),
	datad => \inst|WideOr0~combout\,
	combout => \inst4|inst16|result[3]~260_combout\);

-- Location: LCCOMB_X46_Y36_N0
\inst4|inst6|Regist[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst6|Regist[3]~4_combout\ = (\inst|WideOr2~0_combout\ & ((\inst4|inst16|result[3]~260_combout\))) # (!\inst|WideOr2~0_combout\ & (\inst4|inst20|Regist\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst20|Regist\(3),
	datab => \inst|WideOr2~0_combout\,
	datad => \inst4|inst16|result[3]~260_combout\,
	combout => \inst4|inst6|Regist[3]~4_combout\);

-- Location: FF_X43_Y38_N13
\inst4|inst17|Regist[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst4|inst17|Regist[3]~14_combout\,
	asdata => \inst4|inst6|Regist[3]~4_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	sload => \inst|RegVal[1]~12_combout\,
	ena => \inst4|inst17|Regist[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst17|Regist\(3));

-- Location: LCCOMB_X44_Y38_N4
\inst4|inst1|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst1|Mux4~0_combout\ = (\inst|WideOr8~9_combout\ & ((\inst4|inst6|Regist[3]~4_combout\))) # (!\inst|WideOr8~9_combout\ & (\inst4|inst17|Regist\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst17|Regist\(3),
	datac => \inst|WideOr8~9_combout\,
	datad => \inst4|inst6|Regist[3]~4_combout\,
	combout => \inst4|inst1|Mux4~0_combout\);

-- Location: FF_X44_Y38_N19
\inst4|inst1|Regist[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst4|inst1|Regist[3]~14_combout\,
	asdata => \inst4|inst1|Mux4~0_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	sload => \inst|RegVal[1]~12_combout\,
	ena => \inst4|inst1|Regist[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst1|Regist\(3));

-- Location: FF_X42_Y36_N13
\inst4|inst7|Regist[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \inst4|inst|altsyncram_component|auto_generated|q_a\(2),
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst4|inst7|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst7|Regist\(2));

-- Location: LCCOMB_X44_Y36_N28
\inst4|inst6|Regist[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst6|Regist[2]~feeder_combout\ = \inst4|inst6|Regist[2]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|inst6|Regist[2]~5_combout\,
	combout => \inst4|inst6|Regist[2]~feeder_combout\);

-- Location: IOIBUF_X78_Y33_N15
\dataA[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataA(2),
	o => \dataA[2]~input_o\);

-- Location: FF_X44_Y36_N29
\inst4|inst6|Regist[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst4|inst6|Regist[2]~feeder_combout\,
	asdata => \dataA[2]~input_o\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	sload => \inst|MuxA~8_combout\,
	ena => \inst4|inst6|Regist[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst6|Regist\(2));

-- Location: LCCOMB_X44_Y36_N4
\inst4|inst16|result[2]~261\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst16|result[2]~261_combout\ = (\inst|WideOr0~combout\ & (\inst4|inst7|Regist\(2))) # (!\inst|WideOr0~combout\ & ((\inst4|inst6|Regist\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst7|Regist\(2),
	datac => \inst|WideOr0~combout\,
	datad => \inst4|inst6|Regist\(2),
	combout => \inst4|inst16|result[2]~261_combout\);

-- Location: LCCOMB_X44_Y36_N2
\inst4|inst6|Regist[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst6|Regist[2]~5_combout\ = (\inst|WideOr2~0_combout\ & ((\inst4|inst16|result[2]~261_combout\))) # (!\inst|WideOr2~0_combout\ & (\inst4|inst20|Regist\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst20|Regist\(2),
	datac => \inst4|inst16|result[2]~261_combout\,
	datad => \inst|WideOr2~0_combout\,
	combout => \inst4|inst6|Regist[2]~5_combout\);

-- Location: FF_X43_Y38_N11
\inst4|inst17|Regist[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst4|inst17|Regist[2]~12_combout\,
	asdata => \inst4|inst6|Regist[2]~5_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	sload => \inst|RegVal[1]~12_combout\,
	ena => \inst4|inst17|Regist[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst17|Regist\(2));

-- Location: LCCOMB_X44_Y38_N2
\inst4|inst1|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst1|Mux5~0_combout\ = (\inst|WideOr8~9_combout\ & ((\inst4|inst6|Regist[2]~5_combout\))) # (!\inst|WideOr8~9_combout\ & (\inst4|inst17|Regist\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr8~9_combout\,
	datac => \inst4|inst17|Regist\(2),
	datad => \inst4|inst6|Regist[2]~5_combout\,
	combout => \inst4|inst1|Mux5~0_combout\);

-- Location: FF_X44_Y38_N17
\inst4|inst1|Regist[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst4|inst1|Regist[2]~12_combout\,
	asdata => \inst4|inst1|Mux5~0_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	sload => \inst|RegVal[1]~12_combout\,
	ena => \inst4|inst1|Regist[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst1|Regist\(2));

-- Location: FF_X42_Y36_N23
\inst4|inst7|Regist[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \inst4|inst|altsyncram_component|auto_generated|q_a\(0),
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst4|inst7|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst7|Regist\(0));

-- Location: LCCOMB_X43_Y37_N8
\inst4|inst16|result[0]~263\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst16|result[0]~263_combout\ = (\inst|WideOr0~combout\ & ((\inst4|inst7|Regist\(0)))) # (!\inst|WideOr0~combout\ & (\inst4|inst6|Regist\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst6|Regist\(0),
	datab => \inst4|inst7|Regist\(0),
	datad => \inst|WideOr0~combout\,
	combout => \inst4|inst16|result[0]~263_combout\);

-- Location: LCCOMB_X44_Y36_N8
\inst4|inst6|Regist[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst6|Regist[0]~7_combout\ = (\inst|WideOr2~0_combout\ & ((\inst4|inst16|result[0]~263_combout\))) # (!\inst|WideOr2~0_combout\ & (\inst4|inst20|Regist\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst20|Regist\(0),
	datac => \inst4|inst16|result[0]~263_combout\,
	datad => \inst|WideOr2~0_combout\,
	combout => \inst4|inst6|Regist[0]~7_combout\);

-- Location: LCCOMB_X42_Y36_N26
\inst4|inst21|Mux15~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst21|Mux15~5_combout\ = (\inst|WideOr3~15_combout\ & (\inst|WideOr4~11_combout\ & (\inst|WideOr6~13_combout\ & !\inst|WideOr4~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr3~15_combout\,
	datab => \inst|WideOr4~11_combout\,
	datac => \inst|WideOr6~13_combout\,
	datad => \inst|WideOr4~combout\,
	combout => \inst4|inst21|Mux15~5_combout\);

-- Location: LCCOMB_X41_Y36_N14
\inst4|inst8|Regist[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst8|Regist[0]~0_combout\ = (!\inst|UMEM~0_combout\ & (\inst4|inst21|Mux15~5_combout\ & ((!\inst|RegVal[1]~12_combout\) # (!\inst|WideOr7~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr7~11_combout\,
	datab => \inst|RegVal[1]~12_combout\,
	datac => \inst|UMEM~0_combout\,
	datad => \inst4|inst21|Mux15~5_combout\,
	combout => \inst4|inst8|Regist[0]~0_combout\);

-- Location: FF_X41_Y36_N31
\inst4|inst8|Regist[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \inst4|inst6|Regist[0]~7_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst4|inst8|Regist[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst8|Regist\(0));

-- Location: LCCOMB_X41_Y36_N20
\inst4|inst8|Regist[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst8|Regist[6]~feeder_combout\ = \inst4|inst6|Regist[6]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|inst6|Regist[6]~1_combout\,
	combout => \inst4|inst8|Regist[6]~feeder_combout\);

-- Location: FF_X41_Y36_N21
\inst4|inst8|Regist[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst4|inst8|Regist[6]~feeder_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	ena => \inst4|inst8|Regist[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst8|Regist\(6));

-- Location: LCCOMB_X41_Y36_N12
\inst4|inst8|Regist[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst8|Regist[5]~feeder_combout\ = \inst4|inst6|Regist[5]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|inst6|Regist[5]~2_combout\,
	combout => \inst4|inst8|Regist[5]~feeder_combout\);

-- Location: FF_X41_Y36_N13
\inst4|inst8|Regist[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst4|inst8|Regist[5]~feeder_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	ena => \inst4|inst8|Regist[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst8|Regist\(5));

-- Location: LCCOMB_X41_Y36_N2
\inst4|inst8|Regist[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst8|Regist[4]~feeder_combout\ = \inst4|inst6|Regist[4]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|inst6|Regist[4]~3_combout\,
	combout => \inst4|inst8|Regist[4]~feeder_combout\);

-- Location: FF_X41_Y36_N3
\inst4|inst8|Regist[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst4|inst8|Regist[4]~feeder_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	ena => \inst4|inst8|Regist[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst8|Regist\(4));

-- Location: FF_X41_Y36_N17
\inst4|inst8|Regist[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \inst4|inst6|Regist[3]~4_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst4|inst8|Regist[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst8|Regist\(3));

-- Location: LCCOMB_X41_Y36_N18
\inst4|inst8|Regist[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst8|Regist[2]~feeder_combout\ = \inst4|inst6|Regist[2]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|inst6|Regist[2]~5_combout\,
	combout => \inst4|inst8|Regist[2]~feeder_combout\);

-- Location: FF_X41_Y36_N19
\inst4|inst8|Regist[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst4|inst8|Regist[2]~feeder_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	ena => \inst4|inst8|Regist[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst8|Regist\(2));

-- Location: LCCOMB_X41_Y36_N16
\inst4|inst252|ROM~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst252|ROM~0_combout\ = (!\inst4|inst8|Regist\(5) & (!\inst4|inst8|Regist\(4) & (!\inst4|inst8|Regist\(3) & !\inst4|inst8|Regist\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst8|Regist\(5),
	datab => \inst4|inst8|Regist\(4),
	datac => \inst4|inst8|Regist\(3),
	datad => \inst4|inst8|Regist\(2),
	combout => \inst4|inst252|ROM~0_combout\);

-- Location: LCCOMB_X41_Y36_N10
\inst4|inst252|ROM~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst252|ROM~1_combout\ = (\inst4|inst8|Regist\(0) & (!\inst4|inst8|Regist\(6) & (!\inst4|inst8|Regist\(1) & \inst4|inst252|ROM~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst8|Regist\(0),
	datab => \inst4|inst8|Regist\(6),
	datac => \inst4|inst8|Regist\(1),
	datad => \inst4|inst252|ROM~0_combout\,
	combout => \inst4|inst252|ROM~1_combout\);

-- Location: LCCOMB_X41_Y37_N6
\inst|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux4~0_combout\ = (\inst|UMemOut\(42) & ((\inst4|inst252|ROM~1_combout\))) # (!\inst|UMemOut\(42) & (\inst|NextAddUC\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|NextAddUC\(12),
	datac => \inst4|inst252|ROM~1_combout\,
	datad => \inst|UMemOut\(42),
	combout => \inst|Mux4~0_combout\);

-- Location: FF_X42_Y37_N29
\inst|address[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk~inputclkctrl_outclk\,
	asdata => \inst|Mux4~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|address\(12));

-- Location: LCCOMB_X42_Y36_N10
\inst|UMemOut[42]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|UMemOut[42]~3_combout\ = (\inst|address\(1) & (!\inst|address\(12) & !\inst|address\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(1),
	datab => \inst|address\(12),
	datad => \inst|address\(2),
	combout => \inst|UMemOut[42]~3_combout\);

-- Location: LCCOMB_X41_Y36_N0
\inst|UMemOut[42]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|UMemOut\(42) = (\inst|address\(3) & (!\inst|address\(8) & (\inst|UMemOut[42]~3_combout\ & !\inst|address\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(3),
	datab => \inst|address\(8),
	datac => \inst|UMemOut[42]~3_combout\,
	datad => \inst|address\(4),
	combout => \inst|UMemOut\(42));

-- Location: LCCOMB_X42_Y37_N28
\inst|WideOr11~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr11~7_combout\ = (\inst|address\(3) & (\inst|address\(12) & ((!\inst|address\(0)) # (!\inst|address\(1))))) # (!\inst|address\(3) & (\inst|address\(1) & (\inst|address\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(1),
	datab => \inst|address\(0),
	datac => \inst|address\(12),
	datad => \inst|address\(3),
	combout => \inst|WideOr11~7_combout\);

-- Location: LCCOMB_X42_Y37_N10
\inst|WideOr11~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr11~5_combout\ = (\inst|address\(2) & (\inst|WideOr11~7_combout\)) # (!\inst|address\(2) & ((\inst|address\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|address\(2),
	datac => \inst|WideOr11~7_combout\,
	datad => \inst|address\(3),
	combout => \inst|WideOr11~5_combout\);

-- Location: LCCOMB_X41_Y37_N30
\inst|WideOr11~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr11~10_combout\ = (!\inst|address\(8) & (\inst|WideOr11~5_combout\ & !\inst|address\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|address\(8),
	datac => \inst|WideOr11~5_combout\,
	datad => \inst|address\(4),
	combout => \inst|WideOr11~10_combout\);

-- Location: FF_X41_Y37_N31
\inst|NextAddUC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst|WideOr11~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|NextAddUC\(3));

-- Location: LCCOMB_X42_Y37_N26
\inst|Mux13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux13~0_combout\ = (!\inst|UMemOut\(42) & \inst|NextAddUC\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|UMemOut\(42),
	datad => \inst|NextAddUC\(3),
	combout => \inst|Mux13~0_combout\);

-- Location: FF_X42_Y37_N27
\inst|address[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk~inputclkctrl_outclk\,
	d => \inst|Mux13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|address\(3));

-- Location: LCCOMB_X44_Y37_N24
\inst|WideOr12~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr12~10_combout\ = ((\inst|address\(4)) # ((\inst|address\(3) & !\inst|address\(12)))) # (!\inst|address\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(2),
	datab => \inst|address\(3),
	datac => \inst|address\(12),
	datad => \inst|address\(4),
	combout => \inst|WideOr12~10_combout\);

-- Location: LCCOMB_X44_Y37_N12
\inst|WideOr12~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr12~7_combout\ = (\inst|address\(2)) # ((\inst|address\(4) & ((\inst|address\(3)) # (!\inst|address\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(2),
	datab => \inst|address\(3),
	datac => \inst|address\(12),
	datad => \inst|address\(4),
	combout => \inst|WideOr12~7_combout\);

-- Location: LCCOMB_X44_Y37_N30
\inst|WideOr12~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr12~8_combout\ = (\inst|address\(1) & (\inst|WideOr12~10_combout\)) # (!\inst|address\(1) & ((\inst|WideOr12~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|address\(1),
	datac => \inst|WideOr12~10_combout\,
	datad => \inst|WideOr12~7_combout\,
	combout => \inst|WideOr12~8_combout\);

-- Location: LCCOMB_X44_Y37_N22
\inst|WideOr12~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr12~6_combout\ = (\inst|address\(2) & (((\inst|address\(12)) # (\inst|address\(4))) # (!\inst|address\(3)))) # (!\inst|address\(2) & (\inst|address\(4) & ((\inst|address\(3)) # (!\inst|address\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(2),
	datab => \inst|address\(3),
	datac => \inst|address\(12),
	datad => \inst|address\(4),
	combout => \inst|WideOr12~6_combout\);

-- Location: LCCOMB_X44_Y37_N2
\inst|WideOr12~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr12~5_combout\ = (\inst|address\(1) & ((\inst|WideOr12~7_combout\))) # (!\inst|address\(1) & (\inst|WideOr12~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|address\(1),
	datac => \inst|WideOr12~6_combout\,
	datad => \inst|WideOr12~7_combout\,
	combout => \inst|WideOr12~5_combout\);

-- Location: LCCOMB_X43_Y37_N4
\inst|WideOr12~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr12~14_combout\ = (\inst|address\(8)) # ((\inst|address\(0) & (\inst|WideOr12~8_combout\)) # (!\inst|address\(0) & ((\inst|WideOr12~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr12~8_combout\,
	datab => \inst|address\(0),
	datac => \inst|address\(8),
	datad => \inst|WideOr12~5_combout\,
	combout => \inst|WideOr12~14_combout\);

-- Location: FF_X43_Y37_N5
\inst|NextAddUC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst|WideOr12~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|NextAddUC\(2));

-- Location: LCCOMB_X43_Y37_N16
\inst|Mux14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux14~0_combout\ = (\inst|NextAddUC\(2) & !\inst|UMemOut\(42))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|NextAddUC\(2),
	datad => \inst|UMemOut\(42),
	combout => \inst|Mux14~0_combout\);

-- Location: FF_X43_Y37_N17
\inst|address[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk~inputclkctrl_outclk\,
	d => \inst|Mux14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|address\(2));

-- Location: LCCOMB_X43_Y37_N20
\inst|WideOr7~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr7~14_combout\ = (\inst|address\(12) & (!\inst|address\(2) & (\inst|address\(4) $ (\inst|address\(3))))) # (!\inst|address\(12) & (!\inst|address\(4) & (\inst|address\(2) $ (\inst|address\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(4),
	datab => \inst|address\(2),
	datac => \inst|address\(3),
	datad => \inst|address\(12),
	combout => \inst|WideOr7~14_combout\);

-- Location: LCCOMB_X43_Y37_N14
\inst|WideOr7~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr7~15_combout\ = (\inst|address\(0) & (((!\inst|address\(4) & \inst|WideOr7~14_combout\)))) # (!\inst|address\(0) & (((!\inst|address\(2) & \inst|WideOr7~14_combout\)) # (!\inst|address\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(2),
	datab => \inst|address\(0),
	datac => \inst|address\(4),
	datad => \inst|WideOr7~14_combout\,
	combout => \inst|WideOr7~15_combout\);

-- Location: LCCOMB_X43_Y37_N12
\inst|WideOr7~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr7~12_combout\ = (\inst|address\(0) & (!\inst|address\(12) & (\inst|address\(3) $ (\inst|address\(2))))) # (!\inst|address\(0) & (\inst|address\(12) & ((\inst|address\(2)) # (!\inst|address\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(3),
	datab => \inst|address\(2),
	datac => \inst|address\(0),
	datad => \inst|address\(12),
	combout => \inst|WideOr7~12_combout\);

-- Location: LCCOMB_X43_Y37_N6
\inst|WideOr7~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr7~13_combout\ = (\inst|address\(4) & (!\inst|address\(2) & (!\inst|address\(0) & \inst|WideOr7~12_combout\))) # (!\inst|address\(4) & ((\inst|WideOr7~12_combout\) # ((!\inst|address\(2) & !\inst|address\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(2),
	datab => \inst|address\(0),
	datac => \inst|address\(4),
	datad => \inst|WideOr7~12_combout\,
	combout => \inst|WideOr7~13_combout\);

-- Location: LCCOMB_X43_Y37_N30
\inst|WideOr7~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr7~11_combout\ = (!\inst|address\(8) & ((\inst|address\(1) & ((\inst|WideOr7~13_combout\))) # (!\inst|address\(1) & (\inst|WideOr7~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(1),
	datab => \inst|address\(8),
	datac => \inst|WideOr7~15_combout\,
	datad => \inst|WideOr7~13_combout\,
	combout => \inst|WideOr7~11_combout\);

-- Location: FF_X46_Y36_N11
\inst4|inst4|Regist[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst4|inst4|Regist[1]~10_combout\,
	asdata => \inst4|inst6|Regist[1]~6_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	sload => \inst|RegVal[1]~12_combout\,
	ena => \inst4|inst4|Regist[0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst4|Regist\(1));

-- Location: FF_X47_Y36_N3
\inst4|inst20|Regist[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst4|inst20|Regist[1]~10_combout\,
	asdata => \inst4|inst20|Add1~2_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	sload => \inst|ALT_INV_RegVal[1]~12_combout\,
	ena => \inst4|inst20|Regist[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst20|Regist\(1));

-- Location: LCCOMB_X44_Y36_N12
\inst4|inst6|Regist[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst6|Regist[1]~feeder_combout\ = \inst4|inst6|Regist[1]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|inst6|Regist[1]~6_combout\,
	combout => \inst4|inst6|Regist[1]~feeder_combout\);

-- Location: IOIBUF_X49_Y54_N8
\dataA[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataA(1),
	o => \dataA[1]~input_o\);

-- Location: FF_X44_Y36_N13
\inst4|inst6|Regist[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst4|inst6|Regist[1]~feeder_combout\,
	asdata => \dataA[1]~input_o\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	sload => \inst|MuxA~8_combout\,
	ena => \inst4|inst6|Regist[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst6|Regist\(1));

-- Location: LCCOMB_X44_Y36_N26
\inst4|inst16|result[1]~262\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst16|result[1]~262_combout\ = (\inst|WideOr0~combout\ & (\inst4|inst7|Regist\(1))) # (!\inst|WideOr0~combout\ & ((\inst4|inst6|Regist\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst7|Regist\(1),
	datac => \inst|WideOr0~combout\,
	datad => \inst4|inst6|Regist\(1),
	combout => \inst4|inst16|result[1]~262_combout\);

-- Location: LCCOMB_X44_Y36_N6
\inst4|inst6|Regist[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst6|Regist[1]~6_combout\ = (\inst|WideOr2~0_combout\ & ((\inst4|inst16|result[1]~262_combout\))) # (!\inst|WideOr2~0_combout\ & (\inst4|inst20|Regist\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst20|Regist\(1),
	datac => \inst4|inst16|result[1]~262_combout\,
	datad => \inst|WideOr2~0_combout\,
	combout => \inst4|inst6|Regist[1]~6_combout\);

-- Location: FF_X41_Y36_N11
\inst4|inst8|Regist[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \inst4|inst6|Regist[1]~6_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst4|inst8|Regist[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst8|Regist\(1));

-- Location: LCCOMB_X41_Y36_N30
\inst4|inst252|ROM~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst252|ROM~2_combout\ = (\inst4|inst8|Regist\(1) & (!\inst4|inst8|Regist\(6) & (!\inst4|inst8|Regist\(0) & \inst4|inst252|ROM~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst8|Regist\(1),
	datab => \inst4|inst8|Regist\(6),
	datac => \inst4|inst8|Regist\(0),
	datad => \inst4|inst252|ROM~0_combout\,
	combout => \inst4|inst252|ROM~2_combout\);

-- Location: LCCOMB_X41_Y36_N24
\inst|Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux8~0_combout\ = (\inst4|inst252|ROM~2_combout\ & \inst|UMemOut\(42))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst252|ROM~2_combout\,
	datad => \inst|UMemOut\(42),
	combout => \inst|Mux8~0_combout\);

-- Location: FF_X41_Y36_N25
\inst|address[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk~inputclkctrl_outclk\,
	d => \inst|Mux8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|address\(8));

-- Location: LCCOMB_X44_Y37_N28
\inst|WideOr14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr14~0_combout\ = (\inst|address\(2) & (!\inst|address\(4) & ((\inst|address\(12)) # (!\inst|address\(3))))) # (!\inst|address\(2) & (((!\inst|address\(3) & \inst|address\(12))) # (!\inst|address\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(2),
	datab => \inst|address\(3),
	datac => \inst|address\(12),
	datad => \inst|address\(4),
	combout => \inst|WideOr14~0_combout\);

-- Location: LCCOMB_X43_Y37_N26
\inst|WideOr14~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr14~1_combout\ = (!\inst|address\(0) & (!\inst|address\(8) & \inst|WideOr14~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|address\(0),
	datac => \inst|address\(8),
	datad => \inst|WideOr14~0_combout\,
	combout => \inst|WideOr14~1_combout\);

-- Location: FF_X43_Y37_N27
\inst|NextAddUC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst|WideOr14~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|NextAddUC\(0));

-- Location: LCCOMB_X43_Y37_N0
\inst|Mux16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux16~0_combout\ = (\inst|NextAddUC\(0) & !\inst|UMemOut\(42))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|NextAddUC\(0),
	datad => \inst|UMemOut\(42),
	combout => \inst|Mux16~0_combout\);

-- Location: FF_X43_Y37_N1
\inst|address[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk~inputclkctrl_outclk\,
	d => \inst|Mux16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|address\(0));

-- Location: LCCOMB_X44_Y37_N18
\inst|WideOr13~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr13~13_combout\ = (\inst|address\(2) & (!\inst|address\(4) & ((\inst|address\(12)) # (!\inst|address\(3))))) # (!\inst|address\(2) & (((!\inst|address\(3) & \inst|address\(12))) # (!\inst|address\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(2),
	datab => \inst|address\(3),
	datac => \inst|address\(12),
	datad => \inst|address\(4),
	combout => \inst|WideOr13~13_combout\);

-- Location: LCCOMB_X44_Y37_N8
\inst|WideOr13~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr13~14_combout\ = (!\inst|address\(8) & (\inst|WideOr13~13_combout\ & (\inst|address\(0) $ (\inst|address\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(0),
	datab => \inst|address\(1),
	datac => \inst|address\(8),
	datad => \inst|WideOr13~13_combout\,
	combout => \inst|WideOr13~14_combout\);

-- Location: FF_X43_Y37_N9
\inst|NextAddUC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \inst|WideOr13~14_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|NextAddUC\(1));

-- Location: LCCOMB_X42_Y37_N12
\inst|Mux15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux15~0_combout\ = (\inst|NextAddUC\(1) & !\inst|UMemOut\(42))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|NextAddUC\(1),
	datac => \inst|UMemOut\(42),
	combout => \inst|Mux15~0_combout\);

-- Location: FF_X42_Y37_N13
\inst|address[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk~inputclkctrl_outclk\,
	d => \inst|Mux15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|address\(1));

-- Location: LCCOMB_X43_Y36_N18
\inst|Equal8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal8~1_combout\ = (!\inst|address\(1) & (!\inst|address\(8) & (!\inst|address\(4) & !\inst|address\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(1),
	datab => \inst|address\(8),
	datac => \inst|address\(4),
	datad => \inst|address\(0),
	combout => \inst|Equal8~1_combout\);

-- Location: LCCOMB_X42_Y36_N22
\inst|Equal8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal8~0_combout\ = (\inst|address\(3) & (!\inst|address\(2) & !\inst|address\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(3),
	datab => \inst|address\(2),
	datad => \inst|address\(12),
	combout => \inst|Equal8~0_combout\);

-- Location: LCCOMB_X42_Y36_N8
\inst|Equal10~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal10~5_combout\ = (\inst|address\(1) & (!\inst|address\(0) & (\inst|Equal8~0_combout\ & \inst|Equal10~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(1),
	datab => \inst|address\(0),
	datac => \inst|Equal8~0_combout\,
	datad => \inst|Equal10~4_combout\,
	combout => \inst|Equal10~5_combout\);

-- Location: LCCOMB_X42_Y36_N24
\inst|Equal12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal12~0_combout\ = (\inst|address\(3) & (\inst|address\(2) & !\inst|address\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(3),
	datab => \inst|address\(2),
	datad => \inst|address\(12),
	combout => \inst|Equal12~0_combout\);

-- Location: LCCOMB_X42_Y36_N14
\inst|UMEM~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|UMEM~0_combout\ = (\inst|Equal10~5_combout\) # ((\inst|Equal8~1_combout\ & \inst|Equal12~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal8~1_combout\,
	datab => \inst|Equal10~5_combout\,
	datad => \inst|Equal12~0_combout\,
	combout => \inst|UMEM~0_combout\);

-- Location: LCCOMB_X41_Y37_N20
\inst4|inst21|SelOut[15]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst21|SelOut[15]~19_combout\ = (!\inst|address\(3) & (!\inst|address\(2) & \inst|address\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(3),
	datab => \inst|address\(2),
	datad => \inst|address\(12),
	combout => \inst4|inst21|SelOut[15]~19_combout\);

-- Location: LCCOMB_X41_Y37_N14
\inst4|inst21|SelOut[15]~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst21|SelOut[15]~87_combout\ = (\inst|address\(4) & (!\inst|address\(1) & (!\inst|address\(8) & \inst4|inst21|SelOut[15]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(4),
	datab => \inst|address\(1),
	datac => \inst|address\(8),
	datad => \inst4|inst21|SelOut[15]~19_combout\,
	combout => \inst4|inst21|SelOut[15]~87_combout\);

-- Location: LCCOMB_X41_Y37_N10
\inst4|inst21|SelOut[14]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst21|SelOut[14]~31_combout\ = (\inst|address\(3) & (\inst|address\(2) & \inst|address\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(3),
	datac => \inst|address\(2),
	datad => \inst|address\(12),
	combout => \inst4|inst21|SelOut[14]~31_combout\);

-- Location: LCCOMB_X41_Y37_N0
\inst4|inst21|SelOut[14]~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst21|SelOut[14]~88_combout\ = (\inst4|inst21|SelOut[14]~31_combout\ & (!\inst|address\(8) & (!\inst|address\(4) & \inst|address\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst21|SelOut[14]~31_combout\,
	datab => \inst|address\(8),
	datac => \inst|address\(4),
	datad => \inst|address\(1),
	combout => \inst4|inst21|SelOut[14]~88_combout\);

-- Location: LCCOMB_X41_Y37_N2
\inst4|inst21|SelOut[13]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst21|SelOut[13]~43_combout\ = (!\inst|address\(3) & (\inst|address\(2) & \inst|address\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(3),
	datac => \inst|address\(2),
	datad => \inst|address\(12),
	combout => \inst4|inst21|SelOut[13]~43_combout\);

-- Location: LCCOMB_X41_Y37_N8
\inst4|inst21|SelOut[13]~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst21|SelOut[13]~89_combout\ = (!\inst|address\(4) & (\inst|address\(1) & (!\inst|address\(8) & \inst4|inst21|SelOut[13]~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(4),
	datab => \inst|address\(1),
	datac => \inst|address\(8),
	datad => \inst4|inst21|SelOut[13]~43_combout\,
	combout => \inst4|inst21|SelOut[13]~89_combout\);

-- Location: LCCOMB_X41_Y37_N12
\inst4|inst21|SelOut[9]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst21|SelOut[9]~56_combout\ = (\inst|address\(3) & (!\inst|address\(1) & (!\inst|address\(2) & !\inst|address\(0)))) # (!\inst|address\(3) & (\inst|address\(1) & (\inst|address\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(3),
	datab => \inst|address\(1),
	datac => \inst|address\(2),
	datad => \inst|address\(0),
	combout => \inst4|inst21|SelOut[9]~56_combout\);

-- Location: LCCOMB_X41_Y37_N26
\inst4|inst21|SelOut[9]~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst21|SelOut[9]~90_combout\ = (\inst4|inst21|SelOut[9]~56_combout\ & (!\inst|address\(8) & (!\inst|address\(4) & !\inst|address\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst21|SelOut[9]~56_combout\,
	datab => \inst|address\(8),
	datac => \inst|address\(4),
	datad => \inst|address\(12),
	combout => \inst4|inst21|SelOut[9]~90_combout\);

-- Location: LCCOMB_X43_Y36_N24
\inst4|inst21|SelOut[8]~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst21|SelOut[8]~85_combout\ = (\inst4|inst21|Mux15~0_combout\ & (!\inst|Equal10~5_combout\ & ((!\inst|Equal8~1_combout\) # (!\inst|Equal12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst21|Mux15~0_combout\,
	datab => \inst|Equal12~0_combout\,
	datac => \inst|Equal8~1_combout\,
	datad => \inst|Equal10~5_combout\,
	combout => \inst4|inst21|SelOut[8]~85_combout\);

-- Location: LCCOMB_X44_Y37_N16
\inst4|inst21|SelOut[7]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst21|SelOut[7]~65_combout\ = (\inst|address\(12) & (\inst|address\(3) $ (((!\inst|address\(1)))))) # (!\inst|address\(12) & (!\inst|address\(3) & ((!\inst|address\(1)) # (!\inst|address\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(12),
	datab => \inst|address\(3),
	datac => \inst|address\(0),
	datad => \inst|address\(1),
	combout => \inst4|inst21|SelOut[7]~65_combout\);

-- Location: LCCOMB_X43_Y37_N18
\inst4|inst21|SelOut[7]~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst21|SelOut[7]~91_combout\ = (\inst4|inst21|SelOut[7]~65_combout\ & (!\inst|address\(4) & (!\inst|address\(8) & !\inst|address\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst21|SelOut[7]~65_combout\,
	datab => \inst|address\(4),
	datac => \inst|address\(8),
	datad => \inst|address\(2),
	combout => \inst4|inst21|SelOut[7]~91_combout\);

-- Location: LCCOMB_X41_Y37_N18
\inst4|inst21|SelOut[6]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst21|SelOut[6]~73_combout\ = (\inst|address\(3) & (!\inst|address\(2) & ((\inst|address\(12)) # (\inst|address\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(3),
	datab => \inst|address\(12),
	datac => \inst|address\(2),
	datad => \inst|address\(0),
	combout => \inst4|inst21|SelOut[6]~73_combout\);

-- Location: LCCOMB_X41_Y37_N4
\inst4|inst21|SelOut[6]~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst21|SelOut[6]~92_combout\ = (\inst4|inst21|SelOut[6]~73_combout\ & (!\inst|address\(1) & (!\inst|address\(8) & !\inst|address\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst21|SelOut[6]~73_combout\,
	datab => \inst|address\(1),
	datac => \inst|address\(8),
	datad => \inst|address\(4),
	combout => \inst4|inst21|SelOut[6]~92_combout\);

-- Location: LCCOMB_X43_Y36_N26
\inst4|inst21|SelOut[0]~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst21|SelOut[0]~86_combout\ = (!\inst|Equal10~5_combout\ & (\inst4|inst21|Mux15~1_combout\ & ((!\inst|Equal8~1_combout\) # (!\inst|Equal12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal10~5_combout\,
	datab => \inst|Equal12~0_combout\,
	datac => \inst|Equal8~1_combout\,
	datad => \inst4|inst21|Mux15~1_combout\,
	combout => \inst4|inst21|SelOut[0]~86_combout\);

-- Location: LCCOMB_X41_Y36_N4
\inst4|inst8|Regist[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst8|Regist[7]~feeder_combout\ = \inst4|inst6|Regist[7]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|inst6|Regist[7]~0_combout\,
	combout => \inst4|inst8|Regist[7]~feeder_combout\);

-- Location: FF_X41_Y36_N5
\inst4|inst8|Regist[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst4|inst8|Regist[7]~feeder_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	ena => \inst4|inst8|Regist[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst8|Regist\(7));

-- Location: IOIBUF_X46_Y0_N22
\dataB[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataB(7),
	o => \dataB[7]~input_o\);

-- Location: IOIBUF_X66_Y0_N15
\dataB[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataB(6),
	o => \dataB[6]~input_o\);

-- Location: IOIBUF_X22_Y39_N15
\dataB[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataB(5),
	o => \dataB[5]~input_o\);

-- Location: IOIBUF_X18_Y0_N15
\dataB[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataB(4),
	o => \dataB[4]~input_o\);

-- Location: IOIBUF_X78_Y47_N22
\dataB[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataB(3),
	o => \dataB[3]~input_o\);

-- Location: IOIBUF_X0_Y12_N22
\dataB[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataB(2),
	o => \dataB[2]~input_o\);

-- Location: IOIBUF_X22_Y39_N22
\dataB[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataB(1),
	o => \dataB[1]~input_o\);

-- Location: IOIBUF_X58_Y0_N15
\dataB[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataB(0),
	o => \dataB[0]~input_o\);

-- Location: IOIBUF_X31_Y0_N22
\dataC[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataC(7),
	o => \dataC[7]~input_o\);

-- Location: IOIBUF_X0_Y4_N22
\dataC[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataC(6),
	o => \dataC[6]~input_o\);

-- Location: IOIBUF_X78_Y45_N15
\dataC[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataC(5),
	o => \dataC[5]~input_o\);

-- Location: IOIBUF_X20_Y0_N8
\dataC[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataC(4),
	o => \dataC[4]~input_o\);

-- Location: IOIBUF_X0_Y34_N8
\dataC[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataC(3),
	o => \dataC[3]~input_o\);

-- Location: IOIBUF_X78_Y48_N1
\dataC[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataC(2),
	o => \dataC[2]~input_o\);

-- Location: IOIBUF_X29_Y0_N22
\dataC[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataC(1),
	o => \dataC[1]~input_o\);

-- Location: IOIBUF_X22_Y0_N22
\dataC[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataC(0),
	o => \dataC[0]~input_o\);

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

ww_EnDec <= \EnDec~output_o\;

ww_SelBus(3) <= \SelBus[3]~output_o\;

ww_SelBus(2) <= \SelBus[2]~output_o\;

ww_SelBus(1) <= \SelBus[1]~output_o\;

ww_SelBus(0) <= \SelBus[0]~output_o\;

ww_WR_Output <= \WR_Output~output_o\;

ww_CacheOut(7) <= \CacheOut[7]~output_o\;

ww_CacheOut(6) <= \CacheOut[6]~output_o\;

ww_CacheOut(5) <= \CacheOut[5]~output_o\;

ww_CacheOut(4) <= \CacheOut[4]~output_o\;

ww_CacheOut(3) <= \CacheOut[3]~output_o\;

ww_CacheOut(2) <= \CacheOut[2]~output_o\;

ww_CacheOut(1) <= \CacheOut[1]~output_o\;

ww_CacheOut(0) <= \CacheOut[0]~output_o\;

ww_DataBus(7) <= \DataBus[7]~output_o\;

ww_DataBus(6) <= \DataBus[6]~output_o\;

ww_DataBus(5) <= \DataBus[5]~output_o\;

ww_DataBus(4) <= \DataBus[4]~output_o\;

ww_DataBus(3) <= \DataBus[3]~output_o\;

ww_DataBus(2) <= \DataBus[2]~output_o\;

ww_DataBus(1) <= \DataBus[1]~output_o\;

ww_DataBus(0) <= \DataBus[0]~output_o\;

ww_EnReg(15) <= \EnReg[15]~output_o\;

ww_EnReg(14) <= \EnReg[14]~output_o\;

ww_EnReg(13) <= \EnReg[13]~output_o\;

ww_EnReg(12) <= \EnReg[12]~output_o\;

ww_EnReg(11) <= \EnReg[11]~output_o\;

ww_EnReg(10) <= \EnReg[10]~output_o\;

ww_EnReg(9) <= \EnReg[9]~output_o\;

ww_EnReg(8) <= \EnReg[8]~output_o\;

ww_EnReg(7) <= \EnReg[7]~output_o\;

ww_EnReg(6) <= \EnReg[6]~output_o\;

ww_EnReg(5) <= \EnReg[5]~output_o\;

ww_EnReg(4) <= \EnReg[4]~output_o\;

ww_EnReg(3) <= \EnReg[3]~output_o\;

ww_EnReg(2) <= \EnReg[2]~output_o\;

ww_EnReg(1) <= \EnReg[1]~output_o\;

ww_EnReg(0) <= \EnReg[0]~output_o\;

ww_IROut(7) <= \IROut[7]~output_o\;

ww_IROut(6) <= \IROut[6]~output_o\;

ww_IROut(5) <= \IROut[5]~output_o\;

ww_IROut(4) <= \IROut[4]~output_o\;

ww_IROut(3) <= \IROut[3]~output_o\;

ww_IROut(2) <= \IROut[2]~output_o\;

ww_IROut(1) <= \IROut[1]~output_o\;

ww_IROut(0) <= \IROut[0]~output_o\;

ww_MAROut(7) <= \MAROut[7]~output_o\;

ww_MAROut(6) <= \MAROut[6]~output_o\;

ww_MAROut(5) <= \MAROut[5]~output_o\;

ww_MAROut(4) <= \MAROut[4]~output_o\;

ww_MAROut(3) <= \MAROut[3]~output_o\;

ww_MAROut(2) <= \MAROut[2]~output_o\;

ww_MAROut(1) <= \MAROut[1]~output_o\;

ww_MAROut(0) <= \MAROut[0]~output_o\;

ww_MDR(7) <= \MDR[7]~output_o\;

ww_MDR(6) <= \MDR[6]~output_o\;

ww_MDR(5) <= \MDR[5]~output_o\;

ww_MDR(4) <= \MDR[4]~output_o\;

ww_MDR(3) <= \MDR[3]~output_o\;

ww_MDR(2) <= \MDR[2]~output_o\;

ww_MDR(1) <= \MDR[1]~output_o\;

ww_MDR(0) <= \MDR[0]~output_o\;

ww_MSELOUT(4) <= \MSELOUT[4]~output_o\;

ww_MSELOUT(3) <= \MSELOUT[3]~output_o\;

ww_MSELOUT(2) <= \MSELOUT[2]~output_o\;

ww_MSELOUT(1) <= \MSELOUT[1]~output_o\;

ww_MSELOUT(0) <= \MSELOUT[0]~output_o\;

ww_OutBus(7) <= \OutBus[7]~output_o\;

ww_OutBus(6) <= \OutBus[6]~output_o\;

ww_OutBus(5) <= \OutBus[5]~output_o\;

ww_OutBus(4) <= \OutBus[4]~output_o\;

ww_OutBus(3) <= \OutBus[3]~output_o\;

ww_OutBus(2) <= \OutBus[2]~output_o\;

ww_OutBus(1) <= \OutBus[1]~output_o\;

ww_OutBus(0) <= \OutBus[0]~output_o\;

ww_PCOut(7) <= \PCOut[7]~output_o\;

ww_PCOut(6) <= \PCOut[6]~output_o\;

ww_PCOut(5) <= \PCOut[5]~output_o\;

ww_PCOut(4) <= \PCOut[4]~output_o\;

ww_PCOut(3) <= \PCOut[3]~output_o\;

ww_PCOut(2) <= \PCOut[2]~output_o\;

ww_PCOut(1) <= \PCOut[1]~output_o\;

ww_PCOut(0) <= \PCOut[0]~output_o\;

ww_RAMOut(7) <= \RAMOut[7]~output_o\;

ww_RAMOut(6) <= \RAMOut[6]~output_o\;

ww_RAMOut(5) <= \RAMOut[5]~output_o\;

ww_RAMOut(4) <= \RAMOut[4]~output_o\;

ww_RAMOut(3) <= \RAMOut[3]~output_o\;

ww_RAMOut(2) <= \RAMOut[2]~output_o\;

ww_RAMOut(1) <= \RAMOut[1]~output_o\;

ww_RAMOut(0) <= \RAMOut[0]~output_o\;

ww_SelRegOut(3) <= \SelRegOut[3]~output_o\;

ww_SelRegOut(2) <= \SelRegOut[2]~output_o\;

ww_SelRegOut(1) <= \SelRegOut[1]~output_o\;

ww_SelRegOut(0) <= \SelRegOut[0]~output_o\;

ww_UMemOut(64) <= \UMemOut[64]~output_o\;

ww_UMemOut(63) <= \UMemOut[63]~output_o\;

ww_UMemOut(62) <= \UMemOut[62]~output_o\;

ww_UMemOut(61) <= \UMemOut[61]~output_o\;

ww_UMemOut(60) <= \UMemOut[60]~output_o\;

ww_UMemOut(59) <= \UMemOut[59]~output_o\;

ww_UMemOut(58) <= \UMemOut[58]~output_o\;

ww_UMemOut(57) <= \UMemOut[57]~output_o\;

ww_UMemOut(56) <= \UMemOut[56]~output_o\;

ww_UMemOut(55) <= \UMemOut[55]~output_o\;

ww_UMemOut(54) <= \UMemOut[54]~output_o\;

ww_UMemOut(53) <= \UMemOut[53]~output_o\;

ww_UMemOut(52) <= \UMemOut[52]~output_o\;

ww_UMemOut(51) <= \UMemOut[51]~output_o\;

ww_UMemOut(50) <= \UMemOut[50]~output_o\;

ww_UMemOut(49) <= \UMemOut[49]~output_o\;

ww_UMemOut(48) <= \UMemOut[48]~output_o\;

ww_UMemOut(47) <= \UMemOut[47]~output_o\;

ww_UMemOut(46) <= \UMemOut[46]~output_o\;

ww_UMemOut(45) <= \UMemOut[45]~output_o\;

ww_UMemOut(44) <= \UMemOut[44]~output_o\;

ww_UMemOut(43) <= \UMemOut[43]~output_o\;

ww_UMemOut(42) <= \UMemOut[42]~output_o\;

ww_UMemOut(41) <= \UMemOut[41]~output_o\;

ww_UMemOut(40) <= \UMemOut[40]~output_o\;

ww_UMemOut(39) <= \UMemOut[39]~output_o\;

ww_UMemOut(38) <= \UMemOut[38]~output_o\;

ww_UMemOut(37) <= \UMemOut[37]~output_o\;

ww_UMemOut(36) <= \UMemOut[36]~output_o\;

ww_UMemOut(35) <= \UMemOut[35]~output_o\;

ww_UMemOut(34) <= \UMemOut[34]~output_o\;

ww_UMemOut(33) <= \UMemOut[33]~output_o\;

ww_UMemOut(32) <= \UMemOut[32]~output_o\;

ww_UMemOut(31) <= \UMemOut[31]~output_o\;

ww_UMemOut(30) <= \UMemOut[30]~output_o\;

ww_UMemOut(29) <= \UMemOut[29]~output_o\;

ww_UMemOut(28) <= \UMemOut[28]~output_o\;

ww_UMemOut(27) <= \UMemOut[27]~output_o\;

ww_UMemOut(26) <= \UMemOut[26]~output_o\;

ww_UMemOut(25) <= \UMemOut[25]~output_o\;

ww_UMemOut(24) <= \UMemOut[24]~output_o\;

ww_UMemOut(23) <= \UMemOut[23]~output_o\;

ww_UMemOut(22) <= \UMemOut[22]~output_o\;

ww_UMemOut(21) <= \UMemOut[21]~output_o\;

ww_UMemOut(20) <= \UMemOut[20]~output_o\;

ww_UMemOut(19) <= \UMemOut[19]~output_o\;

ww_UMemOut(18) <= \UMemOut[18]~output_o\;

ww_UMemOut(17) <= \UMemOut[17]~output_o\;

ww_UMemOut(16) <= \UMemOut[16]~output_o\;

ww_UMemOut(15) <= \UMemOut[15]~output_o\;

ww_UMemOut(14) <= \UMemOut[14]~output_o\;

ww_UMemOut(13) <= \UMemOut[13]~output_o\;

ww_UMemOut(12) <= \UMemOut[12]~output_o\;

ww_UMemOut(11) <= \UMemOut[11]~output_o\;

ww_UMemOut(10) <= \UMemOut[10]~output_o\;

ww_UMemOut(9) <= \UMemOut[9]~output_o\;

ww_UMemOut(8) <= \UMemOut[8]~output_o\;

ww_UMemOut(7) <= \UMemOut[7]~output_o\;

ww_UMemOut(6) <= \UMemOut[6]~output_o\;

ww_UMemOut(5) <= \UMemOut[5]~output_o\;

ww_UMemOut(4) <= \UMemOut[4]~output_o\;

ww_UMemOut(3) <= \UMemOut[3]~output_o\;

ww_UMemOut(2) <= \UMemOut[2]~output_o\;

ww_UMemOut(1) <= \UMemOut[1]~output_o\;

ww_UMemOut(0) <= \UMemOut[0]~output_o\;
END structure;


