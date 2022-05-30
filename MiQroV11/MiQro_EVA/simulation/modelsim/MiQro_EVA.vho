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

-- DATE "05/29/2022 23:22:42"

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
	AxOut : OUT std_logic_vector(7 DOWNTO 0);
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
-- EnDec	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataB[7]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataB[6]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataB[5]	=>  Location: PIN_AC8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataB[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataB[3]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataB[2]	=>  Location: PIN_AC16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataB[1]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataB[0]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataC[7]	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataC[6]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataC[5]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataC[4]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataC[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataC[2]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataC[1]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataC[0]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SelBus[3]	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SelBus[2]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SelBus[1]	=>  Location: PIN_P23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SelBus[0]	=>  Location: PIN_P26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WR_Output	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AxOut[7]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AxOut[6]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AxOut[5]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AxOut[4]	=>  Location: PIN_W23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AxOut[3]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AxOut[2]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AxOut[1]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AxOut[0]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CacheOut[7]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CacheOut[6]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CacheOut[5]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CacheOut[4]	=>  Location: PIN_J24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CacheOut[3]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CacheOut[2]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CacheOut[1]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CacheOut[0]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataBus[7]	=>  Location: PIN_AD23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataBus[6]	=>  Location: PIN_H23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataBus[5]	=>  Location: PIN_AC20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataBus[4]	=>  Location: PIN_G25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataBus[3]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataBus[2]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataBus[1]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataBus[0]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EnReg[15]	=>  Location: PIN_J26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EnReg[14]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EnReg[13]	=>  Location: PIN_N24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EnReg[12]	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EnReg[11]	=>  Location: PIN_M26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EnReg[10]	=>  Location: PIN_N26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EnReg[9]	=>  Location: PIN_U26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EnReg[8]	=>  Location: PIN_J25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EnReg[7]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EnReg[6]	=>  Location: PIN_H26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EnReg[5]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EnReg[4]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EnReg[3]	=>  Location: PIN_T26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EnReg[2]	=>  Location: PIN_K26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EnReg[1]	=>  Location: PIN_AD9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EnReg[0]	=>  Location: PIN_K25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IROut[7]	=>  Location: PIN_K24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IROut[6]	=>  Location: PIN_N23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IROut[5]	=>  Location: PIN_F24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IROut[4]	=>  Location: PIN_D26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IROut[3]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IROut[2]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IROut[1]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IROut[0]	=>  Location: PIN_N22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAROut[7]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAROut[6]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAROut[5]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAROut[4]	=>  Location: PIN_T16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAROut[3]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAROut[2]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAROut[1]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAROut[0]	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MDR[7]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MDR[6]	=>  Location: PIN_V26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MDR[5]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MDR[4]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MDR[3]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MDR[2]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MDR[1]	=>  Location: PIN_P20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MDR[0]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSELOUT[4]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSELOUT[3]	=>  Location: PIN_N17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSELOUT[2]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSELOUT[1]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSELOUT[0]	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OutBus[7]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OutBus[6]	=>  Location: PIN_J23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OutBus[5]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OutBus[4]	=>  Location: PIN_F25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OutBus[3]	=>  Location: PIN_M25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OutBus[2]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OutBus[1]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OutBus[0]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOut[7]	=>  Location: PIN_U25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOut[6]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOut[5]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOut[4]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOut[3]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOut[2]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOut[1]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOut[0]	=>  Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMOut[7]	=>  Location: PIN_T24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMOut[6]	=>  Location: PIN_G26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMOut[5]	=>  Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMOut[4]	=>  Location: PIN_M17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMOut[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMOut[2]	=>  Location: PIN_V24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMOut[1]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMOut[0]	=>  Location: PIN_R20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SelRegOut[3]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SelRegOut[2]	=>  Location: PIN_K23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SelRegOut[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SelRegOut[0]	=>  Location: PIN_E26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[64]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[63]	=>  Location: PIN_H25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[62]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[61]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[60]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[59]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[58]	=>  Location: PIN_C26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[57]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[56]	=>  Location: PIN_F26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[55]	=>  Location: PIN_AD22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[54]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[53]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[52]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[51]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[50]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[49]	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[48]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[47]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[46]	=>  Location: PIN_AD5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[45]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[44]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[43]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[42]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[41]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[40]	=>  Location: PIN_R23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[39]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[38]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[37]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[36]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[35]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[34]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[33]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[32]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[31]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[30]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[29]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[28]	=>  Location: PIN_G24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[27]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[26]	=>  Location: PIN_AD13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[25]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[24]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[23]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[22]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[21]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[20]	=>  Location: PIN_C25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[19]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[18]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[17]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[16]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[15]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[14]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[13]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[12]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[11]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[10]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[9]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[8]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[7]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[6]	=>  Location: PIN_AC7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[5]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[4]	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[3]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[2]	=>  Location: PIN_AF22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[1]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[0]	=>  Location: PIN_L23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clk	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataA[7]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rst	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataA[6]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataA[5]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataA[4]	=>  Location: PIN_AC23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataA[3]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataA[2]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataA[1]	=>  Location: PIN_AC21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataA[0]	=>  Location: PIN_T23,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_AxOut : std_logic_vector(7 DOWNTO 0);
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
SIGNAL \inst2|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst2|inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
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
SIGNAL \AxOut[7]~output_o\ : std_logic;
SIGNAL \AxOut[6]~output_o\ : std_logic;
SIGNAL \AxOut[5]~output_o\ : std_logic;
SIGNAL \AxOut[4]~output_o\ : std_logic;
SIGNAL \AxOut[3]~output_o\ : std_logic;
SIGNAL \AxOut[2]~output_o\ : std_logic;
SIGNAL \AxOut[1]~output_o\ : std_logic;
SIGNAL \AxOut[0]~output_o\ : std_logic;
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
SIGNAL \inst|WideOr10~11_combout\ : std_logic;
SIGNAL \inst|WideOr10~12_combout\ : std_logic;
SIGNAL \inst|WideOr10~combout\ : std_logic;
SIGNAL \inst|NextAddUC[3]~feeder_combout\ : std_logic;
SIGNAL \inst|Mux13~0_combout\ : std_logic;
SIGNAL \inst|Equal13~0_combout\ : std_logic;
SIGNAL \inst|Equal19~2_combout\ : std_logic;
SIGNAL \inst|Equal22~2_combout\ : std_logic;
SIGNAL \inst|WideOr12~4_combout\ : std_logic;
SIGNAL \inst|WideOr12~11_combout\ : std_logic;
SIGNAL \inst|Equal33~2_combout\ : std_logic;
SIGNAL \inst|Equal31~0_combout\ : std_logic;
SIGNAL \inst|Equal30~0_combout\ : std_logic;
SIGNAL \inst|Equal0~1_combout\ : std_logic;
SIGNAL \inst|Equal2~0_combout\ : std_logic;
SIGNAL \inst|Equal1~1_combout\ : std_logic;
SIGNAL \inst|WideOr3~2_combout\ : std_logic;
SIGNAL \inst|WideOr10~9_combout\ : std_logic;
SIGNAL \inst|WideOr10~10_combout\ : std_logic;
SIGNAL \inst|WideOr3~3_combout\ : std_logic;
SIGNAL \inst|WideOr12~combout\ : std_logic;
SIGNAL \inst|Mux15~0_combout\ : std_logic;
SIGNAL \inst|WideOr6~5_combout\ : std_logic;
SIGNAL \inst|WideOr6~7_combout\ : std_logic;
SIGNAL \inst|WideOr6~4_combout\ : std_logic;
SIGNAL \inst|WideOr6~12_combout\ : std_logic;
SIGNAL \inst|WideOr6~13_combout\ : std_logic;
SIGNAL \inst2|inst4|Regist[0]~8_combout\ : std_logic;
SIGNAL \Rst~input_o\ : std_logic;
SIGNAL \Rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|WideOr5~0_combout\ : std_logic;
SIGNAL \inst|WideOr5~combout\ : std_logic;
SIGNAL \inst|WideOr4~15_combout\ : std_logic;
SIGNAL \inst|WideOr4~24_combout\ : std_logic;
SIGNAL \inst|Equal32~0_combout\ : std_logic;
SIGNAL \inst|WideOr4~3_combout\ : std_logic;
SIGNAL \inst|WideOr4~23_combout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|Equal7~0_combout\ : std_logic;
SIGNAL \inst|Equal8~0_combout\ : std_logic;
SIGNAL \inst|WideOr1~0_combout\ : std_logic;
SIGNAL \inst|WideOr1~1_combout\ : std_logic;
SIGNAL \inst|WideOr4~22_combout\ : std_logic;
SIGNAL \inst|Equal6~2_combout\ : std_logic;
SIGNAL \inst|Equal33~3_combout\ : std_logic;
SIGNAL \inst|Equal11~2_combout\ : std_logic;
SIGNAL \inst|Equal5~0_combout\ : std_logic;
SIGNAL \inst|WideOr12~10_combout\ : std_logic;
SIGNAL \inst|WideOr12~9_combout\ : std_logic;
SIGNAL \inst|Equal4~0_combout\ : std_logic;
SIGNAL \inst|WideOr1~2_combout\ : std_logic;
SIGNAL \inst|Equal17~0_combout\ : std_logic;
SIGNAL \inst|WideOr1~3_combout\ : std_logic;
SIGNAL \inst|WideOr2~1_combout\ : std_logic;
SIGNAL \inst|WideOr6~11_combout\ : std_logic;
SIGNAL \inst|WideOr8~0_combout\ : std_logic;
SIGNAL \inst|WideNor0~0_combout\ : std_logic;
SIGNAL \inst|WideOr2~0_combout\ : std_logic;
SIGNAL \inst|WideOr2~2_combout\ : std_logic;
SIGNAL \inst|Equal28~2_combout\ : std_logic;
SIGNAL \inst|WideOr1~5_combout\ : std_logic;
SIGNAL \inst|WideOr1~6_combout\ : std_logic;
SIGNAL \inst|Equal29~0_combout\ : std_logic;
SIGNAL \inst|Equal16~2_combout\ : std_logic;
SIGNAL \inst|WideOr10~8_combout\ : std_logic;
SIGNAL \inst|WideOr3~0_combout\ : std_logic;
SIGNAL \inst|WideOr3~1_combout\ : std_logic;
SIGNAL \inst|WideOr3~4_combout\ : std_logic;
SIGNAL \inst2|inst21|Mux11~2_combout\ : std_logic;
SIGNAL \inst2|inst3|Regist[0]~0_combout\ : std_logic;
SIGNAL \inst2|inst20|Regist[0]~8_combout\ : std_logic;
SIGNAL \inst2|inst20|Add1~0_combout\ : std_logic;
SIGNAL \inst2|inst21|Mux11~0_combout\ : std_logic;
SIGNAL \inst2|inst20|Regist[7]~24_combout\ : std_logic;
SIGNAL \inst2|inst1|Regist[0]~8_combout\ : std_logic;
SIGNAL \inst2|inst17|Regist[0]~8_combout\ : std_logic;
SIGNAL \inst2|inst21|Mux11~8_combout\ : std_logic;
SIGNAL \inst2|inst17|Regist[7]~24_combout\ : std_logic;
SIGNAL \inst2|inst1|Mux7~0_combout\ : std_logic;
SIGNAL \inst2|inst21|Mux11~7_combout\ : std_logic;
SIGNAL \inst2|inst1|Regist[7]~24_combout\ : std_logic;
SIGNAL \inst2|inst1|Regist[0]~9\ : std_logic;
SIGNAL \inst2|inst1|Regist[1]~10_combout\ : std_logic;
SIGNAL \inst2|inst17|Regist[0]~9\ : std_logic;
SIGNAL \inst2|inst17|Regist[1]~10_combout\ : std_logic;
SIGNAL \inst2|inst20|Regist[0]~9\ : std_logic;
SIGNAL \inst2|inst20|Regist[1]~10_combout\ : std_logic;
SIGNAL \inst2|inst20|Add1~1\ : std_logic;
SIGNAL \inst2|inst20|Add1~2_combout\ : std_logic;
SIGNAL \inst2|inst1|Regist[1]~11\ : std_logic;
SIGNAL \inst2|inst1|Regist[2]~12_combout\ : std_logic;
SIGNAL \inst2|inst17|Regist[1]~11\ : std_logic;
SIGNAL \inst2|inst17|Regist[2]~12_combout\ : std_logic;
SIGNAL \inst2|inst20|Regist[1]~11\ : std_logic;
SIGNAL \inst2|inst20|Regist[2]~12_combout\ : std_logic;
SIGNAL \inst2|inst20|Add1~3\ : std_logic;
SIGNAL \inst2|inst20|Add1~4_combout\ : std_logic;
SIGNAL \inst2|inst6|Regist[2]~feeder_combout\ : std_logic;
SIGNAL \dataA[2]~input_o\ : std_logic;
SIGNAL \inst|MuxA~combout\ : std_logic;
SIGNAL \inst2|inst21|Mux11~11_combout\ : std_logic;
SIGNAL \inst2|inst6|Regist[7]~8_combout\ : std_logic;
SIGNAL \inst2|inst1|Regist[2]~13\ : std_logic;
SIGNAL \inst2|inst1|Regist[3]~14_combout\ : std_logic;
SIGNAL \inst2|inst17|Regist[2]~13\ : std_logic;
SIGNAL \inst2|inst17|Regist[3]~14_combout\ : std_logic;
SIGNAL \inst2|inst20|Regist[2]~13\ : std_logic;
SIGNAL \inst2|inst20|Regist[3]~14_combout\ : std_logic;
SIGNAL \inst2|inst20|Add1~5\ : std_logic;
SIGNAL \inst2|inst20|Add1~6_combout\ : std_logic;
SIGNAL \inst2|inst1|Regist[3]~15\ : std_logic;
SIGNAL \inst2|inst1|Regist[4]~16_combout\ : std_logic;
SIGNAL \inst2|inst17|Regist[3]~15\ : std_logic;
SIGNAL \inst2|inst17|Regist[4]~16_combout\ : std_logic;
SIGNAL \inst2|inst20|Regist[3]~15\ : std_logic;
SIGNAL \inst2|inst20|Regist[4]~16_combout\ : std_logic;
SIGNAL \inst2|inst20|Add1~7\ : std_logic;
SIGNAL \inst2|inst20|Add1~8_combout\ : std_logic;
SIGNAL \inst2|inst1|Regist[4]~17\ : std_logic;
SIGNAL \inst2|inst1|Regist[5]~18_combout\ : std_logic;
SIGNAL \inst2|inst17|Regist[4]~17\ : std_logic;
SIGNAL \inst2|inst17|Regist[5]~18_combout\ : std_logic;
SIGNAL \inst2|inst20|Regist[4]~17\ : std_logic;
SIGNAL \inst2|inst20|Regist[5]~18_combout\ : std_logic;
SIGNAL \inst2|inst20|Add1~9\ : std_logic;
SIGNAL \inst2|inst20|Add1~10_combout\ : std_logic;
SIGNAL \inst2|inst1|Regist[5]~19\ : std_logic;
SIGNAL \inst2|inst1|Regist[6]~20_combout\ : std_logic;
SIGNAL \inst2|inst17|Regist[5]~19\ : std_logic;
SIGNAL \inst2|inst17|Regist[6]~20_combout\ : std_logic;
SIGNAL \inst2|inst1|Mux1~0_combout\ : std_logic;
SIGNAL \inst2|inst1|Regist[6]~21\ : std_logic;
SIGNAL \inst2|inst1|Regist[7]~22_combout\ : std_logic;
SIGNAL \inst2|inst17|Regist[6]~21\ : std_logic;
SIGNAL \inst2|inst17|Regist[7]~22_combout\ : std_logic;
SIGNAL \inst2|inst3|Regist[7]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst4|Regist[6]~21\ : std_logic;
SIGNAL \inst2|inst4|Regist[7]~22_combout\ : std_logic;
SIGNAL \inst2|inst21|Mux11~1_combout\ : std_logic;
SIGNAL \inst2|inst4|Regist[0]~24_combout\ : std_logic;
SIGNAL \inst2|inst20|Regist[5]~19\ : std_logic;
SIGNAL \inst2|inst20|Regist[6]~21\ : std_logic;
SIGNAL \inst2|inst20|Regist[7]~22_combout\ : std_logic;
SIGNAL \inst2|inst20|Add1~11\ : std_logic;
SIGNAL \inst2|inst20|Add1~13\ : std_logic;
SIGNAL \inst2|inst20|Add1~14_combout\ : std_logic;
SIGNAL \inst2|inst7|Regist[6]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst21|Mux11~6_combout\ : std_logic;
SIGNAL \inst2|inst7|Regist[7]~0_combout\ : std_logic;
SIGNAL \inst2|inst7|Regist[7]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst6|Regist[7]~feeder_combout\ : std_logic;
SIGNAL \dataA[7]~input_o\ : std_logic;
SIGNAL \inst|WideOr0~11_combout\ : std_logic;
SIGNAL \inst|WideOr0~10_combout\ : std_logic;
SIGNAL \inst|WideOr0~17_combout\ : std_logic;
SIGNAL \inst|WideOr0~18_combout\ : std_logic;
SIGNAL \inst|WideOr0~combout\ : std_logic;
SIGNAL \inst2|inst16|result[7]~256_combout\ : std_logic;
SIGNAL \inst2|inst6|Regist[7]~0_combout\ : std_logic;
SIGNAL \inst2|inst1|Mux0~0_combout\ : std_logic;
SIGNAL \inst2|inst7|Regist[5]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst6|Regist[5]~feeder_combout\ : std_logic;
SIGNAL \dataA[5]~input_o\ : std_logic;
SIGNAL \inst2|inst16|result[5]~258_combout\ : std_logic;
SIGNAL \inst2|inst6|Regist[5]~2_combout\ : std_logic;
SIGNAL \inst2|inst1|Mux2~0_combout\ : std_logic;
SIGNAL \inst2|inst7|Regist[4]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst6|Regist[4]~feeder_combout\ : std_logic;
SIGNAL \dataA[4]~input_o\ : std_logic;
SIGNAL \inst2|inst16|result[4]~259_combout\ : std_logic;
SIGNAL \inst2|inst6|Regist[4]~3_combout\ : std_logic;
SIGNAL \inst2|inst1|Mux3~0_combout\ : std_logic;
SIGNAL \inst2|inst7|Regist[3]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst6|Regist[3]~feeder_combout\ : std_logic;
SIGNAL \dataA[3]~input_o\ : std_logic;
SIGNAL \inst2|inst16|result[3]~260_combout\ : std_logic;
SIGNAL \inst2|inst6|Regist[3]~4_combout\ : std_logic;
SIGNAL \inst2|inst1|Mux4~0_combout\ : std_logic;
SIGNAL \inst2|inst7|Regist[2]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst16|result[2]~261_combout\ : std_logic;
SIGNAL \inst2|inst6|Regist[2]~5_combout\ : std_logic;
SIGNAL \inst2|inst1|Mux5~0_combout\ : std_logic;
SIGNAL \inst2|inst7|Regist[1]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst6|Regist[1]~feeder_combout\ : std_logic;
SIGNAL \dataA[1]~input_o\ : std_logic;
SIGNAL \inst2|inst16|result[1]~262_combout\ : std_logic;
SIGNAL \inst2|inst6|Regist[1]~6_combout\ : std_logic;
SIGNAL \inst2|inst1|Mux6~0_combout\ : std_logic;
SIGNAL \inst2|inst7|Regist[0]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst6|Regist[0]~feeder_combout\ : std_logic;
SIGNAL \dataA[0]~input_o\ : std_logic;
SIGNAL \inst2|inst16|result[0]~263_combout\ : std_logic;
SIGNAL \inst2|inst6|Regist[0]~7_combout\ : std_logic;
SIGNAL \inst2|inst4|Regist[0]~9\ : std_logic;
SIGNAL \inst2|inst4|Regist[1]~10_combout\ : std_logic;
SIGNAL \inst2|inst4|Regist[1]~11\ : std_logic;
SIGNAL \inst2|inst4|Regist[2]~12_combout\ : std_logic;
SIGNAL \inst2|inst4|Regist[2]~13\ : std_logic;
SIGNAL \inst2|inst4|Regist[3]~14_combout\ : std_logic;
SIGNAL \inst2|inst4|Regist[3]~15\ : std_logic;
SIGNAL \inst2|inst4|Regist[4]~16_combout\ : std_logic;
SIGNAL \inst2|inst4|Regist[4]~17\ : std_logic;
SIGNAL \inst2|inst4|Regist[5]~18_combout\ : std_logic;
SIGNAL \inst2|inst4|Regist[5]~19\ : std_logic;
SIGNAL \inst2|inst4|Regist[6]~20_combout\ : std_logic;
SIGNAL \inst2|inst20|Regist[6]~20_combout\ : std_logic;
SIGNAL \inst2|inst20|Add1~12_combout\ : std_logic;
SIGNAL \inst2|inst6|Regist[6]~feeder_combout\ : std_logic;
SIGNAL \dataA[6]~input_o\ : std_logic;
SIGNAL \inst2|inst16|result[6]~257_combout\ : std_logic;
SIGNAL \inst2|inst6|Regist[6]~1_combout\ : std_logic;
SIGNAL \inst2|inst8|Regist[6]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst21|Mux11~5_combout\ : std_logic;
SIGNAL \inst2|inst8|Regist[0]~0_combout\ : std_logic;
SIGNAL \inst2|inst8|Regist[5]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst8|Regist[4]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst8|Regist[2]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst252|ROM~0_combout\ : std_logic;
SIGNAL \inst2|inst252|ROM~2_combout\ : std_logic;
SIGNAL \inst|Mux8~0_combout\ : std_logic;
SIGNAL \inst|Equal21~0_combout\ : std_logic;
SIGNAL \inst|Equal26~2_combout\ : std_logic;
SIGNAL \inst|WideOr11~combout\ : std_logic;
SIGNAL \inst|Mux14~0_combout\ : std_logic;
SIGNAL \inst|Equal1~0_combout\ : std_logic;
SIGNAL \inst|WideOr13~1_combout\ : std_logic;
SIGNAL \inst|WideOr13~0_combout\ : std_logic;
SIGNAL \inst|WideOr13~2_combout\ : std_logic;
SIGNAL \inst|Mux16~0_combout\ : std_logic;
SIGNAL \inst|WideOr1~4_combout\ : std_logic;
SIGNAL \inst|WideOr9~combout\ : std_logic;
SIGNAL \inst|Mux12~0_combout\ : std_logic;
SIGNAL \inst|WideOr8~1_combout\ : std_logic;
SIGNAL \inst|WideOr8~2_combout\ : std_logic;
SIGNAL \inst|NextAddUC[12]~0_combout\ : std_logic;
SIGNAL \inst2|inst252|ROM~1_combout\ : std_logic;
SIGNAL \inst|Mux4~0_combout\ : std_logic;
SIGNAL \inst|Equal10~0_combout\ : std_logic;
SIGNAL \inst|UMEM~0_combout\ : std_logic;
SIGNAL \inst2|inst21|SelOut[15]~0_combout\ : std_logic;
SIGNAL \inst2|inst21|SelOut[14]~1_combout\ : std_logic;
SIGNAL \inst2|inst21|Mux11~3_combout\ : std_logic;
SIGNAL \inst2|inst21|SelOut[11]~2_combout\ : std_logic;
SIGNAL \inst2|inst21|Mux11~4_combout\ : std_logic;
SIGNAL \inst2|inst21|SelOut[10]~3_combout\ : std_logic;
SIGNAL \inst2|inst21|SelOut[9]~4_combout\ : std_logic;
SIGNAL \inst2|inst21|SelOut[8]~5_combout\ : std_logic;
SIGNAL \inst2|inst21|SelOut[7]~6_combout\ : std_logic;
SIGNAL \inst2|inst21|SelOut[6]~7_combout\ : std_logic;
SIGNAL \inst2|inst21|Mux11~9_combout\ : std_logic;
SIGNAL \inst2|inst21|SelOut[3]~8_combout\ : std_logic;
SIGNAL \inst2|inst21|Mux11~10_combout\ : std_logic;
SIGNAL \inst2|inst21|SelOut[2]~9_combout\ : std_logic;
SIGNAL \inst2|inst21|SelOut[0]~10_combout\ : std_logic;
SIGNAL \inst2|inst8|Regist[7]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|inst20|Regist\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|inst6|Regist\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|address\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst2|inst1|Regist\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|inst17|Regist\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|inst4|Regist\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|NextAddUC\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst2|inst8|Regist\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|inst7|Regist\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|MBusMux\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|UMemOut\ : std_logic_vector(64 DOWNTO 0);
SIGNAL \inst2|inst3|Regist\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_Clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_Rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|ALT_INV_WideOr6~13_combout\ : std_logic;
SIGNAL \inst|ALT_INV_WideOr4~24_combout\ : std_logic;
SIGNAL \inst|ALT_INV_WideOr8~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_WideOr2~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_WideOr5~combout\ : std_logic;
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
AxOut <= ww_AxOut;
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

\inst2|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \inst2|inst7|Regist\(7) & \inst2|inst7|Regist\(6) & \inst2|inst7|Regist\(5) & \inst2|inst7|Regist\(4) & 
\inst2|inst7|Regist\(3) & \inst2|inst7|Regist\(2) & \inst2|inst7|Regist\(1) & \inst2|inst7|Regist\(0));

\inst2|inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst2|inst1|Regist\(7) & \inst2|inst1|Regist\(6) & \inst2|inst1|Regist\(5) & \inst2|inst1|Regist\(4) & \inst2|inst1|Regist\(3) & \inst2|inst1|Regist\(2) & 
\inst2|inst1|Regist\(1) & \inst2|inst1|Regist\(0));

\inst2|inst|altsyncram_component|auto_generated|q_a\(0) <= \inst2|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst2|inst|altsyncram_component|auto_generated|q_a\(1) <= \inst2|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst2|inst|altsyncram_component|auto_generated|q_a\(2) <= \inst2|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst2|inst|altsyncram_component|auto_generated|q_a\(3) <= \inst2|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\inst2|inst|altsyncram_component|auto_generated|q_a\(4) <= \inst2|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\inst2|inst|altsyncram_component|auto_generated|q_a\(5) <= \inst2|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\inst2|inst|altsyncram_component|auto_generated|q_a\(6) <= \inst2|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\inst2|inst|altsyncram_component|auto_generated|q_a\(7) <= \inst2|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\Rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Rst~input_o\);

\Clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clk~input_o\);
\ALT_INV_Clk~inputclkctrl_outclk\ <= NOT \Clk~inputclkctrl_outclk\;
\ALT_INV_Rst~inputclkctrl_outclk\ <= NOT \Rst~inputclkctrl_outclk\;
\inst|ALT_INV_WideOr6~13_combout\ <= NOT \inst|WideOr6~13_combout\;
\inst|ALT_INV_WideOr4~24_combout\ <= NOT \inst|WideOr4~24_combout\;
\inst|ALT_INV_WideOr8~2_combout\ <= NOT \inst|WideOr8~2_combout\;
\inst|ALT_INV_WideOr2~2_combout\ <= NOT \inst|WideOr2~2_combout\;
\inst|ALT_INV_WideOr5~combout\ <= NOT \inst|WideOr5~combout\;
\inst|ALT_INV_UMEM~0_combout\ <= NOT \inst|UMEM~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N24
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

-- Location: IOOBUF_X78_Y30_N9
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

-- Location: IOOBUF_X60_Y0_N16
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

-- Location: IOOBUF_X46_Y0_N9
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

-- Location: IOOBUF_X78_Y24_N2
\SelBus[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|WideOr5~combout\,
	devoe => ww_devoe,
	o => \SelBus[1]~output_o\);

-- Location: IOOBUF_X78_Y25_N2
\SelBus[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_WideOr6~13_combout\,
	devoe => ww_devoe,
	o => \SelBus[0]~output_o\);

-- Location: IOOBUF_X0_Y10_N16
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

-- Location: IOOBUF_X78_Y16_N24
\AxOut[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst6|Regist\(7),
	devoe => ww_devoe,
	o => \AxOut[7]~output_o\);

-- Location: IOOBUF_X78_Y10_N16
\AxOut[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst6|Regist\(6),
	devoe => ww_devoe,
	o => \AxOut[6]~output_o\);

-- Location: IOOBUF_X78_Y9_N23
\AxOut[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst6|Regist\(5),
	devoe => ww_devoe,
	o => \AxOut[5]~output_o\);

-- Location: IOOBUF_X78_Y13_N23
\AxOut[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst6|Regist\(4),
	devoe => ww_devoe,
	o => \AxOut[4]~output_o\);

-- Location: IOOBUF_X78_Y4_N16
\AxOut[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst6|Regist\(3),
	devoe => ww_devoe,
	o => \AxOut[3]~output_o\);

-- Location: IOOBUF_X78_Y9_N16
\AxOut[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst6|Regist\(2),
	devoe => ww_devoe,
	o => \AxOut[2]~output_o\);

-- Location: IOOBUF_X78_Y10_N2
\AxOut[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst6|Regist\(1),
	devoe => ww_devoe,
	o => \AxOut[1]~output_o\);

-- Location: IOOBUF_X78_Y8_N9
\AxOut[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst6|Regist\(0),
	devoe => ww_devoe,
	o => \AxOut[0]~output_o\);

-- Location: IOOBUF_X0_Y15_N16
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

-- Location: IOOBUF_X31_Y0_N30
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

-- Location: IOOBUF_X46_Y54_N30
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

-- Location: IOOBUF_X78_Y33_N2
\CacheOut[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst252|ROM~1_combout\,
	devoe => ww_devoe,
	o => \CacheOut[4]~output_o\);

-- Location: IOOBUF_X58_Y0_N30
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

-- Location: IOOBUF_X66_Y54_N30
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

-- Location: IOOBUF_X46_Y0_N16
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

-- Location: IOOBUF_X78_Y23_N16
\CacheOut[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst252|ROM~2_combout\,
	devoe => ww_devoe,
	o => \CacheOut[0]~output_o\);

-- Location: IOOBUF_X78_Y5_N23
\DataBus[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst6|Regist[7]~0_combout\,
	devoe => ww_devoe,
	o => \DataBus[7]~output_o\);

-- Location: IOOBUF_X78_Y40_N16
\DataBus[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst6|Regist[6]~1_combout\,
	devoe => ww_devoe,
	o => \DataBus[6]~output_o\);

-- Location: IOOBUF_X69_Y0_N30
\DataBus[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst6|Regist[5]~2_combout\,
	devoe => ww_devoe,
	o => \DataBus[5]~output_o\);

-- Location: IOOBUF_X78_Y36_N9
\DataBus[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst6|Regist[4]~3_combout\,
	devoe => ww_devoe,
	o => \DataBus[4]~output_o\);

-- Location: IOOBUF_X78_Y30_N16
\DataBus[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst6|Regist[3]~4_combout\,
	devoe => ww_devoe,
	o => \DataBus[3]~output_o\);

-- Location: IOOBUF_X78_Y10_N23
\DataBus[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst6|Regist[2]~5_combout\,
	devoe => ww_devoe,
	o => \DataBus[2]~output_o\);

-- Location: IOOBUF_X69_Y54_N9
\DataBus[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst6|Regist[1]~6_combout\,
	devoe => ww_devoe,
	o => \DataBus[1]~output_o\);

-- Location: IOOBUF_X78_Y9_N2
\DataBus[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst6|Regist[0]~7_combout\,
	devoe => ww_devoe,
	o => \DataBus[0]~output_o\);

-- Location: IOOBUF_X78_Y27_N2
\EnReg[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst21|SelOut[15]~0_combout\,
	devoe => ww_devoe,
	o => \EnReg[15]~output_o\);

-- Location: IOOBUF_X78_Y29_N16
\EnReg[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst21|SelOut[14]~1_combout\,
	devoe => ww_devoe,
	o => \EnReg[14]~output_o\);

-- Location: IOOBUF_X78_Y29_N23
\EnReg[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst21|Mux11~2_combout\,
	devoe => ww_devoe,
	o => \EnReg[13]~output_o\);

-- Location: IOOBUF_X20_Y0_N30
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

-- Location: IOOBUF_X78_Y27_N16
\EnReg[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst21|SelOut[11]~2_combout\,
	devoe => ww_devoe,
	o => \EnReg[11]~output_o\);

-- Location: IOOBUF_X78_Y27_N23
\EnReg[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst21|SelOut[10]~3_combout\,
	devoe => ww_devoe,
	o => \EnReg[10]~output_o\);

-- Location: IOOBUF_X78_Y23_N9
\EnReg[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst21|SelOut[9]~4_combout\,
	devoe => ww_devoe,
	o => \EnReg[9]~output_o\);

-- Location: IOOBUF_X78_Y31_N16
\EnReg[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst21|SelOut[8]~5_combout\,
	devoe => ww_devoe,
	o => \EnReg[8]~output_o\);

-- Location: IOOBUF_X78_Y34_N24
\EnReg[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst21|SelOut[7]~6_combout\,
	devoe => ww_devoe,
	o => \EnReg[7]~output_o\);

-- Location: IOOBUF_X78_Y29_N9
\EnReg[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst21|SelOut[6]~7_combout\,
	devoe => ww_devoe,
	o => \EnReg[6]~output_o\);

-- Location: IOOBUF_X64_Y54_N9
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

-- Location: IOOBUF_X24_Y39_N23
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

-- Location: IOOBUF_X78_Y23_N2
\EnReg[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst21|SelOut[3]~8_combout\,
	devoe => ww_devoe,
	o => \EnReg[3]~output_o\);

-- Location: IOOBUF_X78_Y27_N9
\EnReg[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst21|SelOut[2]~9_combout\,
	devoe => ww_devoe,
	o => \EnReg[2]~output_o\);

-- Location: IOOBUF_X29_Y0_N9
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

-- Location: IOOBUF_X78_Y31_N23
\EnReg[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst21|SelOut[0]~10_combout\,
	devoe => ww_devoe,
	o => \EnReg[0]~output_o\);

-- Location: IOOBUF_X78_Y35_N23
\IROut[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst8|Regist\(7),
	devoe => ww_devoe,
	o => \IROut[7]~output_o\);

-- Location: IOOBUF_X78_Y34_N9
\IROut[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst8|Regist\(6),
	devoe => ww_devoe,
	o => \IROut[6]~output_o\);

-- Location: IOOBUF_X78_Y41_N2
\IROut[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst8|Regist\(5),
	devoe => ww_devoe,
	o => \IROut[5]~output_o\);

-- Location: IOOBUF_X78_Y35_N9
\IROut[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst8|Regist\(4),
	devoe => ww_devoe,
	o => \IROut[4]~output_o\);

-- Location: IOOBUF_X78_Y37_N9
\IROut[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst8|Regist\(3),
	devoe => ww_devoe,
	o => \IROut[3]~output_o\);

-- Location: IOOBUF_X66_Y0_N30
\IROut[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst8|Regist\(2),
	devoe => ww_devoe,
	o => \IROut[2]~output_o\);

-- Location: IOOBUF_X78_Y34_N2
\IROut[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst8|Regist\(1),
	devoe => ww_devoe,
	o => \IROut[1]~output_o\);

-- Location: IOOBUF_X78_Y34_N16
\IROut[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst8|Regist\(0),
	devoe => ww_devoe,
	o => \IROut[0]~output_o\);

-- Location: IOOBUF_X78_Y15_N2
\MAROut[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst1|Regist\(7),
	devoe => ww_devoe,
	o => \MAROut[7]~output_o\);

-- Location: IOOBUF_X78_Y15_N9
\MAROut[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst1|Regist\(6),
	devoe => ww_devoe,
	o => \MAROut[6]~output_o\);

-- Location: IOOBUF_X78_Y13_N2
\MAROut[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst1|Regist\(5),
	devoe => ww_devoe,
	o => \MAROut[5]~output_o\);

-- Location: IOOBUF_X78_Y15_N16
\MAROut[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst1|Regist\(4),
	devoe => ww_devoe,
	o => \MAROut[4]~output_o\);

-- Location: IOOBUF_X78_Y13_N9
\MAROut[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst1|Regist\(3),
	devoe => ww_devoe,
	o => \MAROut[3]~output_o\);

-- Location: IOOBUF_X78_Y16_N9
\MAROut[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst1|Regist\(2),
	devoe => ww_devoe,
	o => \MAROut[2]~output_o\);

-- Location: IOOBUF_X78_Y15_N23
\MAROut[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst1|Regist\(1),
	devoe => ww_devoe,
	o => \MAROut[1]~output_o\);

-- Location: IOOBUF_X78_Y13_N16
\MAROut[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst1|Regist\(0),
	devoe => ww_devoe,
	o => \MAROut[0]~output_o\);

-- Location: IOOBUF_X78_Y33_N16
\MDR[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst7|Regist\(7),
	devoe => ww_devoe,
	o => \MDR[7]~output_o\);

-- Location: IOOBUF_X78_Y21_N2
\MDR[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst7|Regist\(6),
	devoe => ww_devoe,
	o => \MDR[6]~output_o\);

-- Location: IOOBUF_X78_Y20_N24
\MDR[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst7|Regist\(5),
	devoe => ww_devoe,
	o => \MDR[5]~output_o\);

-- Location: IOOBUF_X78_Y18_N23
\MDR[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst7|Regist\(4),
	devoe => ww_devoe,
	o => \MDR[4]~output_o\);

-- Location: IOOBUF_X78_Y20_N9
\MDR[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst7|Regist\(3),
	devoe => ww_devoe,
	o => \MDR[3]~output_o\);

-- Location: IOOBUF_X78_Y21_N16
\MDR[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst7|Regist\(2),
	devoe => ww_devoe,
	o => \MDR[2]~output_o\);

-- Location: IOOBUF_X78_Y24_N24
\MDR[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst7|Regist\(1),
	devoe => ww_devoe,
	o => \MDR[1]~output_o\);

-- Location: IOOBUF_X78_Y21_N9
\MDR[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst7|Regist\(0),
	devoe => ww_devoe,
	o => \MDR[0]~output_o\);

-- Location: IOOBUF_X62_Y54_N9
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

-- Location: IOOBUF_X78_Y33_N23
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

-- Location: IOOBUF_X78_Y3_N9
\MSELOUT[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MBusMux\(0),
	devoe => ww_devoe,
	o => \MSELOUT[2]~output_o\);

-- Location: IOOBUF_X71_Y54_N2
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

-- Location: IOOBUF_X78_Y4_N2
\MSELOUT[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MBusMux\(0),
	devoe => ww_devoe,
	o => \MSELOUT[0]~output_o\);

-- Location: IOOBUF_X78_Y5_N16
\OutBus[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst6|Regist[7]~0_combout\,
	devoe => ww_devoe,
	o => \OutBus[7]~output_o\);

-- Location: IOOBUF_X78_Y40_N23
\OutBus[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst6|Regist[6]~1_combout\,
	devoe => ww_devoe,
	o => \OutBus[6]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\OutBus[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst6|Regist[5]~2_combout\,
	devoe => ww_devoe,
	o => \OutBus[5]~output_o\);

-- Location: IOOBUF_X78_Y36_N2
\OutBus[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst6|Regist[4]~3_combout\,
	devoe => ww_devoe,
	o => \OutBus[4]~output_o\);

-- Location: IOOBUF_X78_Y30_N23
\OutBus[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst6|Regist[3]~4_combout\,
	devoe => ww_devoe,
	o => \OutBus[3]~output_o\);

-- Location: IOOBUF_X78_Y10_N9
\OutBus[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst6|Regist[2]~5_combout\,
	devoe => ww_devoe,
	o => \OutBus[2]~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\OutBus[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst6|Regist[1]~6_combout\,
	devoe => ww_devoe,
	o => \OutBus[1]~output_o\);

-- Location: IOOBUF_X78_Y9_N9
\OutBus[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst6|Regist[0]~7_combout\,
	devoe => ww_devoe,
	o => \OutBus[0]~output_o\);

-- Location: IOOBUF_X78_Y17_N16
\PCOut[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst17|Regist\(7),
	devoe => ww_devoe,
	o => \PCOut[7]~output_o\);

-- Location: IOOBUF_X78_Y17_N9
\PCOut[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst17|Regist\(6),
	devoe => ww_devoe,
	o => \PCOut[6]~output_o\);

-- Location: IOOBUF_X78_Y17_N23
\PCOut[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst17|Regist\(5),
	devoe => ww_devoe,
	o => \PCOut[5]~output_o\);

-- Location: IOOBUF_X78_Y17_N2
\PCOut[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst17|Regist\(4),
	devoe => ww_devoe,
	o => \PCOut[4]~output_o\);

-- Location: IOOBUF_X78_Y16_N16
\PCOut[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst17|Regist\(3),
	devoe => ww_devoe,
	o => \PCOut[3]~output_o\);

-- Location: IOOBUF_X78_Y18_N16
\PCOut[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst17|Regist\(2),
	devoe => ww_devoe,
	o => \PCOut[2]~output_o\);

-- Location: IOOBUF_X78_Y18_N2
\PCOut[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst17|Regist\(1),
	devoe => ww_devoe,
	o => \PCOut[1]~output_o\);

-- Location: IOOBUF_X78_Y5_N2
\PCOut[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst17|Regist\(0),
	devoe => ww_devoe,
	o => \PCOut[0]~output_o\);

-- Location: IOOBUF_X78_Y21_N23
\RAMOut[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|altsyncram_component|auto_generated|q_a\(7),
	devoe => ww_devoe,
	o => \RAMOut[7]~output_o\);

-- Location: IOOBUF_X78_Y29_N2
\RAMOut[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|altsyncram_component|auto_generated|q_a\(6),
	devoe => ww_devoe,
	o => \RAMOut[6]~output_o\);

-- Location: IOOBUF_X78_Y25_N16
\RAMOut[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|altsyncram_component|auto_generated|q_a\(5),
	devoe => ww_devoe,
	o => \RAMOut[5]~output_o\);

-- Location: IOOBUF_X78_Y36_N24
\RAMOut[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|altsyncram_component|auto_generated|q_a\(4),
	devoe => ww_devoe,
	o => \RAMOut[4]~output_o\);

-- Location: IOOBUF_X78_Y25_N23
\RAMOut[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|altsyncram_component|auto_generated|q_a\(3),
	devoe => ww_devoe,
	o => \RAMOut[3]~output_o\);

-- Location: IOOBUF_X78_Y18_N9
\RAMOut[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|altsyncram_component|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => \RAMOut[2]~output_o\);

-- Location: IOOBUF_X78_Y24_N9
\RAMOut[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|altsyncram_component|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => \RAMOut[1]~output_o\);

-- Location: IOOBUF_X78_Y20_N16
\RAMOut[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|altsyncram_component|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => \RAMOut[0]~output_o\);

-- Location: IOOBUF_X78_Y6_N9
\SelRegOut[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|WideOr1~6_combout\,
	devoe => ww_devoe,
	o => \SelRegOut[3]~output_o\);

-- Location: IOOBUF_X78_Y35_N16
\SelRegOut[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_WideOr2~2_combout\,
	devoe => ww_devoe,
	o => \SelRegOut[2]~output_o\);

-- Location: IOOBUF_X78_Y12_N16
\SelRegOut[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|WideOr3~4_combout\,
	devoe => ww_devoe,
	o => \SelRegOut[1]~output_o\);

-- Location: IOOBUF_X78_Y31_N2
\SelRegOut[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|WideOr4~22_combout\,
	devoe => ww_devoe,
	o => \SelRegOut[0]~output_o\);

-- Location: IOOBUF_X38_Y0_N23
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

-- Location: IOOBUF_X78_Y33_N9
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

-- Location: IOOBUF_X78_Y4_N23
\UMemOut[62]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MBusMux\(0),
	devoe => ww_devoe,
	o => \UMemOut[62]~output_o\);

-- Location: IOOBUF_X42_Y0_N16
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

-- Location: IOOBUF_X78_Y3_N23
\UMemOut[60]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MBusMux\(0),
	devoe => ww_devoe,
	o => \UMemOut[60]~output_o\);

-- Location: IOOBUF_X78_Y6_N16
\UMemOut[59]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|WideOr1~6_combout\,
	devoe => ww_devoe,
	o => \UMemOut[59]~output_o\);

-- Location: IOOBUF_X78_Y35_N2
\UMemOut[58]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_WideOr2~2_combout\,
	devoe => ww_devoe,
	o => \UMemOut[58]~output_o\);

-- Location: IOOBUF_X78_Y12_N2
\UMemOut[57]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|WideOr3~4_combout\,
	devoe => ww_devoe,
	o => \UMemOut[57]~output_o\);

-- Location: IOOBUF_X78_Y31_N9
\UMemOut[56]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|WideOr4~22_combout\,
	devoe => ww_devoe,
	o => \UMemOut[56]~output_o\);

-- Location: IOOBUF_X69_Y0_N16
\UMemOut[55]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MuxA~combout\,
	devoe => ww_devoe,
	o => \UMemOut[55]~output_o\);

-- Location: IOOBUF_X34_Y0_N30
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

-- Location: IOOBUF_X0_Y25_N9
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

-- Location: IOOBUF_X51_Y0_N30
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

-- Location: IOOBUF_X71_Y54_N30
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

-- Location: IOOBUF_X78_Y24_N16
\UMemOut[50]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|WideOr5~combout\,
	devoe => ww_devoe,
	o => \UMemOut[50]~output_o\);

-- Location: IOOBUF_X78_Y25_N9
\UMemOut[49]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_WideOr6~13_combout\,
	devoe => ww_devoe,
	o => \UMemOut[49]~output_o\);

-- Location: IOOBUF_X56_Y0_N2
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

-- Location: IOOBUF_X36_Y0_N9
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

-- Location: IOOBUF_X20_Y0_N9
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

-- Location: IOOBUF_X0_Y6_N9
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

-- Location: IOOBUF_X78_Y41_N16
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

-- Location: IOOBUF_X56_Y54_N9
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

-- Location: IOOBUF_X78_Y23_N23
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

-- Location: IOOBUF_X51_Y0_N2
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

-- Location: IOOBUF_X78_Y20_N2
\UMemOut[40]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_WideOr4~24_combout\,
	devoe => ww_devoe,
	o => \UMemOut[40]~output_o\);

-- Location: IOOBUF_X34_Y39_N23
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

-- Location: IOOBUF_X0_Y6_N2
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

-- Location: IOOBUF_X0_Y30_N23
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

-- Location: IOOBUF_X78_Y30_N2
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

-- Location: IOOBUF_X56_Y0_N23
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

-- Location: IOOBUF_X49_Y0_N16
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

-- Location: IOOBUF_X40_Y0_N16
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

-- Location: IOOBUF_X0_Y18_N9
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

-- Location: IOOBUF_X20_Y0_N2
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

-- Location: IOOBUF_X0_Y37_N16
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

-- Location: IOOBUF_X0_Y15_N23
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

-- Location: IOOBUF_X78_Y41_N9
\UMemOut[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_WideOr8~2_combout\,
	devoe => ww_devoe,
	o => \UMemOut[28]~output_o\);

-- Location: IOOBUF_X69_Y54_N2
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

-- Location: IOOBUF_X40_Y0_N9
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

-- Location: IOOBUF_X78_Y45_N9
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

-- Location: IOOBUF_X66_Y0_N23
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

-- Location: IOOBUF_X0_Y10_N23
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

-- Location: IOOBUF_X22_Y0_N30
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

-- Location: IOOBUF_X22_Y0_N23
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

-- Location: IOOBUF_X78_Y40_N2
\UMemOut[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|WideOr9~combout\,
	devoe => ww_devoe,
	o => \UMemOut[20]~output_o\);

-- Location: IOOBUF_X78_Y8_N2
\UMemOut[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|WideOr10~combout\,
	devoe => ww_devoe,
	o => \UMemOut[19]~output_o\);

-- Location: IOOBUF_X64_Y0_N2
\UMemOut[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|WideOr11~combout\,
	devoe => ww_devoe,
	o => \UMemOut[18]~output_o\);

-- Location: IOOBUF_X78_Y6_N2
\UMemOut[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|WideOr12~combout\,
	devoe => ww_devoe,
	o => \UMemOut[17]~output_o\);

-- Location: IOOBUF_X78_Y37_N23
\UMemOut[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|WideOr13~2_combout\,
	devoe => ww_devoe,
	o => \UMemOut[16]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
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

-- Location: IOOBUF_X51_Y54_N16
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

-- Location: IOOBUF_X16_Y0_N9
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

-- Location: IOOBUF_X78_Y37_N16
\UMemOut[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_WideOr8~2_combout\,
	devoe => ww_devoe,
	o => \UMemOut[12]~output_o\);

-- Location: IOOBUF_X0_Y5_N2
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

-- Location: IOOBUF_X60_Y0_N30
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

-- Location: IOOBUF_X24_Y39_N30
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

-- Location: IOOBUF_X31_Y0_N2
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

-- Location: IOOBUF_X26_Y39_N2
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

-- Location: IOOBUF_X29_Y0_N30
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

-- Location: IOOBUF_X0_Y31_N16
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

-- Location: IOOBUF_X78_Y40_N9
\UMemOut[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|WideOr9~combout\,
	devoe => ww_devoe,
	o => \UMemOut[4]~output_o\);

-- Location: IOOBUF_X78_Y8_N16
\UMemOut[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|WideOr10~combout\,
	devoe => ww_devoe,
	o => \UMemOut[3]~output_o\);

-- Location: IOOBUF_X64_Y0_N9
\UMemOut[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|WideOr11~combout\,
	devoe => ww_devoe,
	o => \UMemOut[2]~output_o\);

-- Location: IOOBUF_X78_Y6_N23
\UMemOut[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|WideOr12~combout\,
	devoe => ww_devoe,
	o => \UMemOut[1]~output_o\);

-- Location: IOOBUF_X78_Y37_N2
\UMemOut[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|WideOr13~2_combout\,
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

-- Location: LCCOMB_X76_Y23_N18
\inst|WideOr10~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr10~11_combout\ = (\inst|address\(3) & (\inst|address\(12) & ((!\inst|address\(0)) # (!\inst|address\(1))))) # (!\inst|address\(3) & (\inst|address\(1) & ((\inst|address\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(1),
	datab => \inst|address\(12),
	datac => \inst|address\(0),
	datad => \inst|address\(3),
	combout => \inst|WideOr10~11_combout\);

-- Location: LCCOMB_X76_Y23_N4
\inst|WideOr10~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr10~12_combout\ = (\inst|address\(2) & (\inst|WideOr10~11_combout\ & ((\inst|address\(1)) # (\inst|address\(3))))) # (!\inst|address\(2) & (((\inst|address\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr10~11_combout\,
	datab => \inst|address\(2),
	datac => \inst|address\(1),
	datad => \inst|address\(3),
	combout => \inst|WideOr10~12_combout\);

-- Location: LCCOMB_X76_Y23_N28
\inst|WideOr10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr10~combout\ = (!\inst|address\(4) & (!\inst|address\(8) & \inst|WideOr10~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(4),
	datab => \inst|address\(8),
	datac => \inst|WideOr10~12_combout\,
	combout => \inst|WideOr10~combout\);

-- Location: LCCOMB_X76_Y23_N24
\inst|NextAddUC[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|NextAddUC[3]~feeder_combout\ = \inst|WideOr10~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|WideOr10~combout\,
	combout => \inst|NextAddUC[3]~feeder_combout\);

-- Location: FF_X76_Y23_N25
\inst|NextAddUC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst|NextAddUC[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|NextAddUC\(3));

-- Location: LCCOMB_X75_Y23_N20
\inst|Mux13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux13~0_combout\ = (\inst|NextAddUC\(3) & !\inst|UMemOut\(42))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|NextAddUC\(3),
	datad => \inst|UMemOut\(42),
	combout => \inst|Mux13~0_combout\);

-- Location: FF_X75_Y23_N21
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

-- Location: LCCOMB_X75_Y23_N24
\inst|Equal13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal13~0_combout\ = (\inst|address\(12) & (!\inst|address\(8) & (!\inst|address\(4) & !\inst|address\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(12),
	datab => \inst|address\(8),
	datac => \inst|address\(4),
	datad => \inst|address\(3),
	combout => \inst|Equal13~0_combout\);

-- Location: LCCOMB_X72_Y23_N8
\inst|Equal19~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal19~2_combout\ = (!\inst|address\(0) & (\inst|address\(1) & (\inst|address\(2) & \inst|Equal13~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(0),
	datab => \inst|address\(1),
	datac => \inst|address\(2),
	datad => \inst|Equal13~0_combout\,
	combout => \inst|Equal19~2_combout\);

-- Location: LCCOMB_X74_Y23_N14
\inst|Equal22~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal22~2_combout\ = (\inst|address\(0) & (!\inst|address\(1) & (\inst|Equal21~0_combout\ & !\inst|address\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(0),
	datab => \inst|address\(1),
	datac => \inst|Equal21~0_combout\,
	datad => \inst|address\(2),
	combout => \inst|Equal22~2_combout\);

-- Location: LCCOMB_X75_Y21_N24
\inst|WideOr12~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr12~4_combout\ = (\inst|address\(0) & ((\inst|address\(1)) # ((\inst|address\(3))))) # (!\inst|address\(0) & ((\inst|address\(12) $ (\inst|address\(3))) # (!\inst|address\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(0),
	datab => \inst|address\(1),
	datac => \inst|address\(12),
	datad => \inst|address\(3),
	combout => \inst|WideOr12~4_combout\);

-- Location: LCCOMB_X75_Y21_N22
\inst|WideOr12~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr12~11_combout\ = ((\inst|WideOr12~4_combout\) # ((\inst|address\(4)) # (\inst|address\(8)))) # (!\inst|address\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(2),
	datab => \inst|WideOr12~4_combout\,
	datac => \inst|address\(4),
	datad => \inst|address\(8),
	combout => \inst|WideOr12~11_combout\);

-- Location: LCCOMB_X75_Y23_N6
\inst|Equal33~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal33~2_combout\ = (\inst|address\(12) & (!\inst|address\(8) & (\inst|address\(4) & !\inst|address\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(12),
	datab => \inst|address\(8),
	datac => \inst|address\(4),
	datad => \inst|address\(3),
	combout => \inst|Equal33~2_combout\);

-- Location: LCCOMB_X70_Y23_N26
\inst|Equal31~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal31~0_combout\ = (\inst|address\(1) & (!\inst|address\(2) & (\inst|Equal33~2_combout\ & !\inst|address\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(1),
	datab => \inst|address\(2),
	datac => \inst|Equal33~2_combout\,
	datad => \inst|address\(0),
	combout => \inst|Equal31~0_combout\);

-- Location: LCCOMB_X74_Y23_N10
\inst|Equal30~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal30~0_combout\ = (!\inst|address\(2) & (!\inst|address\(1) & (\inst|address\(0) & \inst|Equal33~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(2),
	datab => \inst|address\(1),
	datac => \inst|address\(0),
	datad => \inst|Equal33~2_combout\,
	combout => \inst|Equal30~0_combout\);

-- Location: LCCOMB_X75_Y23_N12
\inst|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal0~1_combout\ = (!\inst|address\(12) & (!\inst|address\(8) & (!\inst|address\(4) & !\inst|address\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(12),
	datab => \inst|address\(8),
	datac => \inst|address\(4),
	datad => \inst|address\(3),
	combout => \inst|Equal0~1_combout\);

-- Location: LCCOMB_X70_Y23_N28
\inst|Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal2~0_combout\ = (!\inst|address\(2) & (\inst|address\(1) & !\inst|address\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|address\(2),
	datac => \inst|address\(1),
	datad => \inst|address\(0),
	combout => \inst|Equal2~0_combout\);

-- Location: LCCOMB_X69_Y23_N0
\inst|Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal1~1_combout\ = (!\inst|address\(2) & (\inst|address\(0) & !\inst|address\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(2),
	datac => \inst|address\(0),
	datad => \inst|address\(1),
	combout => \inst|Equal1~1_combout\);

-- Location: LCCOMB_X70_Y23_N4
\inst|WideOr3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr3~2_combout\ = (\inst|Equal0~1_combout\ & ((\inst|Equal2~0_combout\) # ((\inst|Equal1~1_combout\)))) # (!\inst|Equal0~1_combout\ & (\inst|Equal13~0_combout\ & ((\inst|Equal2~0_combout\) # (\inst|Equal1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~1_combout\,
	datab => \inst|Equal2~0_combout\,
	datac => \inst|Equal1~1_combout\,
	datad => \inst|Equal13~0_combout\,
	combout => \inst|WideOr3~2_combout\);

-- Location: LCCOMB_X75_Y23_N16
\inst|WideOr10~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr10~9_combout\ = (\inst|address\(2) & (\inst|Equal21~0_combout\ & (\inst|address\(0)))) # (!\inst|address\(2) & ((\inst|Equal10~0_combout\) # ((\inst|Equal21~0_combout\ & !\inst|address\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal21~0_combout\,
	datab => \inst|address\(0),
	datac => \inst|address\(2),
	datad => \inst|Equal10~0_combout\,
	combout => \inst|WideOr10~9_combout\);

-- Location: LCCOMB_X75_Y23_N30
\inst|WideOr10~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr10~10_combout\ = (\inst|address\(0) $ (!\inst|address\(1))) # (!\inst|WideOr10~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(0),
	datab => \inst|address\(1),
	datad => \inst|WideOr10~9_combout\,
	combout => \inst|WideOr10~10_combout\);

-- Location: LCCOMB_X70_Y23_N6
\inst|WideOr3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr3~3_combout\ = (!\inst|Equal31~0_combout\ & (!\inst|Equal30~0_combout\ & (!\inst|WideOr3~2_combout\ & \inst|WideOr10~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal31~0_combout\,
	datab => \inst|Equal30~0_combout\,
	datac => \inst|WideOr3~2_combout\,
	datad => \inst|WideOr10~10_combout\,
	combout => \inst|WideOr3~3_combout\);

-- Location: LCCOMB_X74_Y23_N26
\inst|WideOr12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr12~combout\ = (\inst|Equal19~2_combout\) # ((\inst|Equal22~2_combout\) # ((!\inst|WideOr3~3_combout\) # (!\inst|WideOr12~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal19~2_combout\,
	datab => \inst|Equal22~2_combout\,
	datac => \inst|WideOr12~11_combout\,
	datad => \inst|WideOr3~3_combout\,
	combout => \inst|WideOr12~combout\);

-- Location: FF_X74_Y23_N27
\inst|NextAddUC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst|WideOr12~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|NextAddUC\(1));

-- Location: LCCOMB_X74_Y23_N28
\inst|Mux15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux15~0_combout\ = (\inst|NextAddUC\(1) & !\inst|UMemOut\(42))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|NextAddUC\(1),
	datac => \inst|UMemOut\(42),
	combout => \inst|Mux15~0_combout\);

-- Location: FF_X74_Y23_N29
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

-- Location: LCCOMB_X75_Y21_N30
\inst|WideOr6~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr6~5_combout\ = (\inst|address\(12) & (!\inst|address\(2) & (\inst|address\(1) $ (!\inst|address\(3))))) # (!\inst|address\(12) & ((\inst|address\(2) $ (\inst|address\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(12),
	datab => \inst|address\(1),
	datac => \inst|address\(2),
	datad => \inst|address\(3),
	combout => \inst|WideOr6~5_combout\);

-- Location: LCCOMB_X75_Y21_N4
\inst|WideOr6~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr6~7_combout\ = (\inst|address\(12) & (!\inst|address\(3) & ((!\inst|address\(1)) # (!\inst|address\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(12),
	datab => \inst|address\(2),
	datac => \inst|address\(1),
	datad => \inst|address\(3),
	combout => \inst|WideOr6~7_combout\);

-- Location: LCCOMB_X75_Y21_N12
\inst|WideOr6~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr6~4_combout\ = (\inst|address\(12)) # ((!\inst|address\(2)) # (!\inst|address\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(12),
	datac => \inst|address\(1),
	datad => \inst|address\(2),
	combout => \inst|WideOr6~4_combout\);

-- Location: LCCOMB_X75_Y21_N20
\inst|WideOr6~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr6~12_combout\ = (\inst|address\(4) & (!\inst|address\(0) & (\inst|WideOr6~7_combout\))) # (!\inst|address\(4) & ((\inst|address\(0)) # ((\inst|WideOr6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(4),
	datab => \inst|address\(0),
	datac => \inst|WideOr6~7_combout\,
	datad => \inst|WideOr6~4_combout\,
	combout => \inst|WideOr6~12_combout\);

-- Location: LCCOMB_X75_Y21_N18
\inst|WideOr6~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr6~13_combout\ = (!\inst|address\(8) & (\inst|WideOr6~12_combout\ & ((\inst|WideOr6~5_combout\) # (!\inst|address\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(0),
	datab => \inst|address\(8),
	datac => \inst|WideOr6~5_combout\,
	datad => \inst|WideOr6~12_combout\,
	combout => \inst|WideOr6~13_combout\);

-- Location: LCCOMB_X72_Y23_N12
\inst2|inst4|Regist[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst4|Regist[0]~8_combout\ = \inst2|inst4|Regist\(0) $ (VCC)
-- \inst2|inst4|Regist[0]~9\ = CARRY(\inst2|inst4|Regist\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst4|Regist\(0),
	datad => VCC,
	combout => \inst2|inst4|Regist[0]~8_combout\,
	cout => \inst2|inst4|Regist[0]~9\);

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

-- Location: LCCOMB_X69_Y23_N26
\inst|WideOr5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr5~0_combout\ = (\inst|Equal1~0_combout\ & ((\inst|address\(1) & ((\inst|Equal21~0_combout\))) # (!\inst|address\(1) & (\inst|Equal10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal10~0_combout\,
	datab => \inst|address\(1),
	datac => \inst|Equal21~0_combout\,
	datad => \inst|Equal1~0_combout\,
	combout => \inst|WideOr5~0_combout\);

-- Location: LCCOMB_X69_Y23_N18
\inst|WideOr5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr5~combout\ = (\inst|WideOr5~0_combout\) # ((\inst|Equal13~0_combout\ & \inst|Equal1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal13~0_combout\,
	datac => \inst|WideOr5~0_combout\,
	datad => \inst|Equal1~1_combout\,
	combout => \inst|WideOr5~combout\);

-- Location: LCCOMB_X75_Y23_N18
\inst|WideOr4~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr4~15_combout\ = (\inst|address\(2) & (((\inst|address\(1)) # (!\inst|address\(3))) # (!\inst|address\(12)))) # (!\inst|address\(2) & ((\inst|address\(3)) # (\inst|address\(12) $ (\inst|address\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(12),
	datab => \inst|address\(2),
	datac => \inst|address\(3),
	datad => \inst|address\(1),
	combout => \inst|WideOr4~15_combout\);

-- Location: LCCOMB_X75_Y23_N4
\inst|WideOr4~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr4~24_combout\ = (\inst|address\(8)) # ((\inst|address\(4)) # (\inst|WideOr4~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|address\(8),
	datac => \inst|address\(4),
	datad => \inst|WideOr4~15_combout\,
	combout => \inst|WideOr4~24_combout\);

-- Location: LCCOMB_X70_Y23_N2
\inst|Equal32~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal32~0_combout\ = (\inst|address\(1) & (!\inst|address\(2) & (\inst|Equal33~2_combout\ & \inst|address\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(1),
	datab => \inst|address\(2),
	datac => \inst|Equal33~2_combout\,
	datad => \inst|address\(0),
	combout => \inst|Equal32~0_combout\);

-- Location: LCCOMB_X76_Y23_N10
\inst|WideOr4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr4~3_combout\ = (!\inst|address\(8) & ((\inst|address\(4) & (\inst|address\(12) & !\inst|address\(2))) # (!\inst|address\(4) & (!\inst|address\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(4),
	datab => \inst|address\(12),
	datac => \inst|address\(2),
	datad => \inst|address\(8),
	combout => \inst|WideOr4~3_combout\);

-- Location: LCCOMB_X76_Y23_N12
\inst|WideOr4~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr4~23_combout\ = (!\inst|address\(3) & (!\inst|address\(0) & (\inst|address\(1) & \inst|WideOr4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(3),
	datab => \inst|address\(0),
	datac => \inst|address\(1),
	datad => \inst|WideOr4~3_combout\,
	combout => \inst|WideOr4~23_combout\);

-- Location: LCCOMB_X69_Y23_N6
\inst|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = (!\inst|address\(1) & (!\inst|address\(0) & !\inst|address\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|address\(1),
	datac => \inst|address\(0),
	datad => \inst|address\(2),
	combout => \inst|Equal0~0_combout\);

-- Location: LCCOMB_X70_Y23_N22
\inst|Equal7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal7~0_combout\ = (\inst|address\(1) & (\inst|address\(2) & (\inst|address\(0) & \inst|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(1),
	datab => \inst|address\(2),
	datac => \inst|address\(0),
	datad => \inst|Equal0~1_combout\,
	combout => \inst|Equal7~0_combout\);

-- Location: LCCOMB_X70_Y23_N0
\inst|Equal8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal8~0_combout\ = (!\inst|address\(1) & \inst|Equal10~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|address\(1),
	datad => \inst|Equal10~0_combout\,
	combout => \inst|Equal8~0_combout\);

-- Location: LCCOMB_X70_Y23_N24
\inst|WideOr1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr1~0_combout\ = (!\inst|Equal7~0_combout\ & ((\inst|address\(0)) # ((\inst|address\(2)) # (!\inst|Equal8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(0),
	datab => \inst|address\(2),
	datac => \inst|Equal7~0_combout\,
	datad => \inst|Equal8~0_combout\,
	combout => \inst|WideOr1~0_combout\);

-- Location: LCCOMB_X70_Y23_N10
\inst|WideOr1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr1~1_combout\ = (\inst|WideOr1~0_combout\ & (((!\inst|Equal1~1_combout\ & !\inst|Equal0~0_combout\)) # (!\inst|Equal21~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal1~1_combout\,
	datab => \inst|Equal21~0_combout\,
	datac => \inst|Equal0~0_combout\,
	datad => \inst|WideOr1~0_combout\,
	combout => \inst|WideOr1~1_combout\);

-- Location: LCCOMB_X70_Y23_N8
\inst|WideOr4~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr4~22_combout\ = ((\inst|Equal32~0_combout\) # ((\inst|WideOr4~23_combout\) # (!\inst|WideOr1~1_combout\))) # (!\inst|WideOr4~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr4~24_combout\,
	datab => \inst|Equal32~0_combout\,
	datac => \inst|WideOr4~23_combout\,
	datad => \inst|WideOr1~1_combout\,
	combout => \inst|WideOr4~22_combout\);

-- Location: LCCOMB_X74_Y23_N22
\inst|Equal6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal6~2_combout\ = (!\inst|address\(0) & \inst|address\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|address\(0),
	datad => \inst|address\(2),
	combout => \inst|Equal6~2_combout\);

-- Location: LCCOMB_X74_Y23_N16
\inst|Equal33~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal33~3_combout\ = (\inst|address\(2) & (!\inst|address\(1) & (!\inst|address\(0) & \inst|Equal33~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(2),
	datab => \inst|address\(1),
	datac => \inst|address\(0),
	datad => \inst|Equal33~2_combout\,
	combout => \inst|Equal33~3_combout\);

-- Location: LCCOMB_X75_Y23_N14
\inst|Equal11~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal11~2_combout\ = (\inst|address\(0) & (\inst|address\(1) & (!\inst|address\(2) & \inst|Equal10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(0),
	datab => \inst|address\(1),
	datac => \inst|address\(2),
	datad => \inst|Equal10~0_combout\,
	combout => \inst|Equal11~2_combout\);

-- Location: LCCOMB_X74_Y23_N20
\inst|Equal5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal5~0_combout\ = (\inst|address\(0) & \inst|address\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|address\(0),
	datad => \inst|address\(2),
	combout => \inst|Equal5~0_combout\);

-- Location: LCCOMB_X71_Y23_N22
\inst|WideOr12~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr12~10_combout\ = (\inst|address\(1)) # (((!\inst|Equal13~0_combout\ & !\inst|Equal0~1_combout\)) # (!\inst|Equal5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(1),
	datab => \inst|Equal13~0_combout\,
	datac => \inst|Equal0~1_combout\,
	datad => \inst|Equal5~0_combout\,
	combout => \inst|WideOr12~10_combout\);

-- Location: LCCOMB_X71_Y23_N16
\inst|WideOr12~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr12~9_combout\ = (((!\inst|Equal0~1_combout\ & !\inst|Equal21~0_combout\)) # (!\inst|Equal6~2_combout\)) # (!\inst|address\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~1_combout\,
	datab => \inst|address\(1),
	datac => \inst|Equal21~0_combout\,
	datad => \inst|Equal6~2_combout\,
	combout => \inst|WideOr12~9_combout\);

-- Location: LCCOMB_X74_Y23_N12
\inst|Equal4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal4~0_combout\ = (\inst|address\(2) & (!\inst|address\(0) & !\inst|address\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(2),
	datac => \inst|address\(0),
	datad => \inst|address\(1),
	combout => \inst|Equal4~0_combout\);

-- Location: LCCOMB_X71_Y23_N8
\inst|WideOr1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr1~2_combout\ = ((!\inst|Equal4~0_combout\ & ((!\inst|address\(1)) # (!\inst|Equal1~0_combout\)))) # (!\inst|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal1~0_combout\,
	datab => \inst|address\(1),
	datac => \inst|Equal0~1_combout\,
	datad => \inst|Equal4~0_combout\,
	combout => \inst|WideOr1~2_combout\);

-- Location: LCCOMB_X71_Y23_N2
\inst|Equal17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal17~0_combout\ = (\inst|address\(2) & (!\inst|address\(0) & (!\inst|address\(1) & \inst|Equal13~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(2),
	datab => \inst|address\(0),
	datac => \inst|address\(1),
	datad => \inst|Equal13~0_combout\,
	combout => \inst|Equal17~0_combout\);

-- Location: LCCOMB_X71_Y23_N20
\inst|WideOr1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr1~3_combout\ = (\inst|WideOr12~10_combout\ & (\inst|WideOr12~9_combout\ & (\inst|WideOr1~2_combout\ & !\inst|Equal17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr12~10_combout\,
	datab => \inst|WideOr12~9_combout\,
	datac => \inst|WideOr1~2_combout\,
	datad => \inst|Equal17~0_combout\,
	combout => \inst|WideOr1~3_combout\);

-- Location: LCCOMB_X71_Y23_N14
\inst|WideOr2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr2~1_combout\ = (!\inst|Equal33~3_combout\ & (!\inst|Equal11~2_combout\ & (!\inst|Equal19~2_combout\ & \inst|WideOr1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal33~3_combout\,
	datab => \inst|Equal11~2_combout\,
	datac => \inst|Equal19~2_combout\,
	datad => \inst|WideOr1~3_combout\,
	combout => \inst|WideOr2~1_combout\);

-- Location: LCCOMB_X71_Y23_N24
\inst|WideOr6~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr6~11_combout\ = (((!\inst|Equal21~0_combout\ & !\inst|Equal13~0_combout\)) # (!\inst|address\(1))) # (!\inst|Equal5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal5~0_combout\,
	datab => \inst|address\(1),
	datac => \inst|Equal21~0_combout\,
	datad => \inst|Equal13~0_combout\,
	combout => \inst|WideOr6~11_combout\);

-- Location: LCCOMB_X75_Y23_N2
\inst|WideOr8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr8~0_combout\ = (\inst|address\(2) & ((\inst|address\(0)) # (\inst|address\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(0),
	datac => \inst|address\(2),
	datad => \inst|address\(1),
	combout => \inst|WideOr8~0_combout\);

-- Location: LCCOMB_X75_Y23_N8
\inst|WideNor0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideNor0~0_combout\ = (\inst|address\(3) & (!\inst|address\(4) & ((\inst|address\(12)) # (!\inst|WideOr8~0_combout\)))) # (!\inst|address\(3) & (((\inst|address\(12) & !\inst|WideOr8~0_combout\)) # (!\inst|address\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(3),
	datab => \inst|address\(4),
	datac => \inst|address\(12),
	datad => \inst|WideOr8~0_combout\,
	combout => \inst|WideNor0~0_combout\);

-- Location: LCCOMB_X71_Y23_N18
\inst|WideOr2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr2~0_combout\ = (\inst|address\(8)) # (((!\inst|WideOr1~0_combout\) # (!\inst|WideNor0~0_combout\)) # (!\inst|WideOr6~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(8),
	datab => \inst|WideOr6~11_combout\,
	datac => \inst|WideNor0~0_combout\,
	datad => \inst|WideOr1~0_combout\,
	combout => \inst|WideOr2~0_combout\);

-- Location: LCCOMB_X71_Y23_N4
\inst|WideOr2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr2~2_combout\ = ((\inst|WideOr2~0_combout\) # ((\inst|Equal8~0_combout\ & \inst|Equal6~2_combout\))) # (!\inst|WideOr2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal8~0_combout\,
	datab => \inst|Equal6~2_combout\,
	datac => \inst|WideOr2~1_combout\,
	datad => \inst|WideOr2~0_combout\,
	combout => \inst|WideOr2~2_combout\);

-- Location: LCCOMB_X74_Y23_N18
\inst|Equal28~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal28~2_combout\ = (\inst|address\(0) & (\inst|address\(1) & (\inst|Equal21~0_combout\ & \inst|address\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(0),
	datab => \inst|address\(1),
	datac => \inst|Equal21~0_combout\,
	datad => \inst|address\(2),
	combout => \inst|Equal28~2_combout\);

-- Location: LCCOMB_X74_Y23_N2
\inst|WideOr1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr1~5_combout\ = (!\inst|Equal30~0_combout\ & (\inst|WideOr1~4_combout\ & !\inst|Equal28~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal30~0_combout\,
	datac => \inst|WideOr1~4_combout\,
	datad => \inst|Equal28~2_combout\,
	combout => \inst|WideOr1~5_combout\);

-- Location: LCCOMB_X71_Y23_N26
\inst|WideOr1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr1~6_combout\ = ((!\inst|WideOr1~1_combout\) # (!\inst|WideOr1~5_combout\)) # (!\inst|WideOr1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|WideOr1~3_combout\,
	datac => \inst|WideOr1~5_combout\,
	datad => \inst|WideOr1~1_combout\,
	combout => \inst|WideOr1~6_combout\);

-- Location: LCCOMB_X70_Y23_N12
\inst|Equal29~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal29~0_combout\ = (!\inst|address\(1) & (!\inst|address\(2) & (\inst|Equal33~2_combout\ & !\inst|address\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(1),
	datab => \inst|address\(2),
	datac => \inst|Equal33~2_combout\,
	datad => \inst|address\(0),
	combout => \inst|Equal29~0_combout\);

-- Location: LCCOMB_X70_Y23_N14
\inst|Equal16~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal16~2_combout\ = (\inst|address\(1) & (!\inst|address\(2) & (\inst|address\(0) & \inst|Equal13~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(1),
	datab => \inst|address\(2),
	datac => \inst|address\(0),
	datad => \inst|Equal13~0_combout\,
	combout => \inst|Equal16~2_combout\);

-- Location: LCCOMB_X70_Y23_N18
\inst|WideOr10~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr10~8_combout\ = ((!\inst|Equal4~0_combout\ & ((!\inst|Equal1~0_combout\) # (!\inst|address\(1))))) # (!\inst|Equal21~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(1),
	datab => \inst|Equal1~0_combout\,
	datac => \inst|Equal4~0_combout\,
	datad => \inst|Equal21~0_combout\,
	combout => \inst|WideOr10~8_combout\);

-- Location: LCCOMB_X70_Y23_N16
\inst|WideOr3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr3~0_combout\ = (!\inst|Equal32~0_combout\ & (!\inst|Equal16~2_combout\ & \inst|WideOr10~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal32~0_combout\,
	datac => \inst|Equal16~2_combout\,
	datad => \inst|WideOr10~8_combout\,
	combout => \inst|WideOr3~0_combout\);

-- Location: LCCOMB_X70_Y23_N30
\inst|WideOr3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr3~1_combout\ = (\inst|Equal29~0_combout\) # (((\inst|Equal0~1_combout\ & \inst|Equal0~0_combout\)) # (!\inst|WideOr3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal29~0_combout\,
	datab => \inst|Equal0~1_combout\,
	datac => \inst|Equal0~0_combout\,
	datad => \inst|WideOr3~0_combout\,
	combout => \inst|WideOr3~1_combout\);

-- Location: LCCOMB_X70_Y23_N20
\inst|WideOr3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr3~4_combout\ = (\inst|WideOr3~1_combout\) # (((\inst|Equal13~0_combout\ & \inst|Equal0~0_combout\)) # (!\inst|WideOr3~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal13~0_combout\,
	datab => \inst|Equal0~0_combout\,
	datac => \inst|WideOr3~1_combout\,
	datad => \inst|WideOr3~3_combout\,
	combout => \inst|WideOr3~4_combout\);

-- Location: LCCOMB_X71_Y23_N6
\inst2|inst21|Mux11~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst21|Mux11~2_combout\ = (\inst|WideOr4~22_combout\ & (!\inst|WideOr2~2_combout\ & (\inst|WideOr1~6_combout\ & !\inst|WideOr3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr4~22_combout\,
	datab => \inst|WideOr2~2_combout\,
	datac => \inst|WideOr1~6_combout\,
	datad => \inst|WideOr3~4_combout\,
	combout => \inst2|inst21|Mux11~2_combout\);

-- Location: LCCOMB_X72_Y21_N2
\inst2|inst3|Regist[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst3|Regist[0]~0_combout\ = (\inst2|inst21|Mux11~2_combout\ & ((\inst|WideOr5~combout\) # (!\inst|WideOr6~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|WideOr6~13_combout\,
	datac => \inst|WideOr5~combout\,
	datad => \inst2|inst21|Mux11~2_combout\,
	combout => \inst2|inst3|Regist[0]~0_combout\);

-- Location: FF_X72_Y21_N1
\inst2|inst3|Regist[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst2|inst6|Regist[0]~7_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	ena => \inst2|inst3|Regist[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst3|Regist\(0));

-- Location: LCCOMB_X71_Y21_N0
\inst2|inst20|Regist[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst20|Regist[0]~8_combout\ = (\inst2|inst3|Regist\(0) & (\inst2|inst4|Regist\(0) $ (VCC))) # (!\inst2|inst3|Regist\(0) & (\inst2|inst4|Regist\(0) & VCC))
-- \inst2|inst20|Regist[0]~9\ = CARRY((\inst2|inst3|Regist\(0) & \inst2|inst4|Regist\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst3|Regist\(0),
	datab => \inst2|inst4|Regist\(0),
	datad => VCC,
	combout => \inst2|inst20|Regist[0]~8_combout\,
	cout => \inst2|inst20|Regist[0]~9\);

-- Location: LCCOMB_X70_Y21_N6
\inst2|inst20|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst20|Add1~0_combout\ = \inst2|inst20|Regist\(0) $ (VCC)
-- \inst2|inst20|Add1~1\ = CARRY(\inst2|inst20|Regist\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst20|Regist\(0),
	datad => VCC,
	combout => \inst2|inst20|Add1~0_combout\,
	cout => \inst2|inst20|Add1~1\);

-- Location: LCCOMB_X71_Y23_N0
\inst2|inst21|Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst21|Mux11~0_combout\ = (\inst|WideOr4~22_combout\ & (\inst|WideOr3~4_combout\ & (\inst|WideOr1~6_combout\ & !\inst|WideOr2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr4~22_combout\,
	datab => \inst|WideOr3~4_combout\,
	datac => \inst|WideOr1~6_combout\,
	datad => \inst|WideOr2~2_combout\,
	combout => \inst2|inst21|Mux11~0_combout\);

-- Location: LCCOMB_X71_Y21_N26
\inst2|inst20|Regist[7]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst20|Regist[7]~24_combout\ = (!\inst|UMEM~0_combout\ & (\inst2|inst21|Mux11~0_combout\ & ((\inst|WideOr5~combout\) # (!\inst|WideOr6~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|UMEM~0_combout\,
	datab => \inst|WideOr6~13_combout\,
	datac => \inst|WideOr5~combout\,
	datad => \inst2|inst21|Mux11~0_combout\,
	combout => \inst2|inst20|Regist[7]~24_combout\);

-- Location: FF_X71_Y21_N1
\inst2|inst20|Regist[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst2|inst20|Regist[0]~8_combout\,
	asdata => \inst2|inst20|Add1~0_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	sload => \inst|WideOr5~combout\,
	ena => \inst2|inst20|Regist[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst20|Regist\(0));

-- Location: LCCOMB_X74_Y23_N30
\inst|MBusMux[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|MBusMux\(0) = (\inst|Equal33~3_combout\) # ((\inst|address\(8)) # (!\inst|WideNor0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal33~3_combout\,
	datac => \inst|WideNor0~0_combout\,
	datad => \inst|address\(8),
	combout => \inst|MBusMux\(0));

-- Location: LCCOMB_X72_Y20_N14
\inst2|inst1|Regist[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst1|Regist[0]~8_combout\ = \inst2|inst1|Regist\(0) $ (VCC)
-- \inst2|inst1|Regist[0]~9\ = CARRY(\inst2|inst1|Regist\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst1|Regist\(0),
	datad => VCC,
	combout => \inst2|inst1|Regist[0]~8_combout\,
	cout => \inst2|inst1|Regist[0]~9\);

-- Location: LCCOMB_X72_Y21_N8
\inst2|inst17|Regist[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst17|Regist[0]~8_combout\ = \inst2|inst17|Regist\(0) $ (VCC)
-- \inst2|inst17|Regist[0]~9\ = CARRY(\inst2|inst17|Regist\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst17|Regist\(0),
	datad => VCC,
	combout => \inst2|inst17|Regist[0]~8_combout\,
	cout => \inst2|inst17|Regist[0]~9\);

-- Location: LCCOMB_X71_Y23_N30
\inst2|inst21|Mux11~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst21|Mux11~8_combout\ = (!\inst|WideOr4~22_combout\ & (!\inst|WideOr2~2_combout\ & (!\inst|WideOr1~6_combout\ & \inst|WideOr3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr4~22_combout\,
	datab => \inst|WideOr2~2_combout\,
	datac => \inst|WideOr1~6_combout\,
	datad => \inst|WideOr3~4_combout\,
	combout => \inst2|inst21|Mux11~8_combout\);

-- Location: LCCOMB_X72_Y21_N28
\inst2|inst17|Regist[7]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst17|Regist[7]~24_combout\ = (!\inst|UMEM~0_combout\ & (\inst2|inst21|Mux11~8_combout\ & ((\inst|WideOr5~combout\) # (!\inst|WideOr6~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|UMEM~0_combout\,
	datab => \inst|WideOr6~13_combout\,
	datac => \inst2|inst21|Mux11~8_combout\,
	datad => \inst|WideOr5~combout\,
	combout => \inst2|inst17|Regist[7]~24_combout\);

-- Location: FF_X72_Y21_N9
\inst2|inst17|Regist[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst2|inst17|Regist[0]~8_combout\,
	asdata => \inst2|inst6|Regist[0]~7_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	sload => \inst|ALT_INV_WideOr5~combout\,
	ena => \inst2|inst17|Regist[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst17|Regist\(0));

-- Location: LCCOMB_X72_Y21_N30
\inst2|inst1|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst1|Mux7~0_combout\ = (\inst|WideOr4~24_combout\ & ((\inst2|inst6|Regist[0]~7_combout\))) # (!\inst|WideOr4~24_combout\ & (\inst2|inst17|Regist\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst17|Regist\(0),
	datac => \inst|WideOr4~24_combout\,
	datad => \inst2|inst6|Regist[0]~7_combout\,
	combout => \inst2|inst1|Mux7~0_combout\);

-- Location: LCCOMB_X71_Y23_N12
\inst2|inst21|Mux11~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst21|Mux11~7_combout\ = (\inst|WideOr4~22_combout\ & (!\inst|WideOr2~2_combout\ & (!\inst|WideOr1~6_combout\ & \inst|WideOr3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr4~22_combout\,
	datab => \inst|WideOr2~2_combout\,
	datac => \inst|WideOr1~6_combout\,
	datad => \inst|WideOr3~4_combout\,
	combout => \inst2|inst21|Mux11~7_combout\);

-- Location: LCCOMB_X72_Y20_N6
\inst2|inst1|Regist[7]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst1|Regist[7]~24_combout\ = (!\inst|UMEM~0_combout\ & (\inst2|inst21|Mux11~7_combout\ & ((\inst|WideOr5~combout\) # (!\inst|WideOr6~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr6~13_combout\,
	datab => \inst|UMEM~0_combout\,
	datac => \inst|WideOr5~combout\,
	datad => \inst2|inst21|Mux11~7_combout\,
	combout => \inst2|inst1|Regist[7]~24_combout\);

-- Location: FF_X72_Y20_N15
\inst2|inst1|Regist[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst2|inst1|Regist[0]~8_combout\,
	asdata => \inst2|inst1|Mux7~0_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	sload => \inst|ALT_INV_WideOr5~combout\,
	ena => \inst2|inst1|Regist[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst1|Regist\(0));

-- Location: LCCOMB_X72_Y20_N16
\inst2|inst1|Regist[1]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst1|Regist[1]~10_combout\ = (\inst|WideOr6~13_combout\ & ((\inst2|inst1|Regist\(1) & (!\inst2|inst1|Regist[0]~9\)) # (!\inst2|inst1|Regist\(1) & ((\inst2|inst1|Regist[0]~9\) # (GND))))) # (!\inst|WideOr6~13_combout\ & ((\inst2|inst1|Regist\(1) & 
-- (\inst2|inst1|Regist[0]~9\ & VCC)) # (!\inst2|inst1|Regist\(1) & (!\inst2|inst1|Regist[0]~9\))))
-- \inst2|inst1|Regist[1]~11\ = CARRY((\inst|WideOr6~13_combout\ & ((!\inst2|inst1|Regist[0]~9\) # (!\inst2|inst1|Regist\(1)))) # (!\inst|WideOr6~13_combout\ & (!\inst2|inst1|Regist\(1) & !\inst2|inst1|Regist[0]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr6~13_combout\,
	datab => \inst2|inst1|Regist\(1),
	datad => VCC,
	cin => \inst2|inst1|Regist[0]~9\,
	combout => \inst2|inst1|Regist[1]~10_combout\,
	cout => \inst2|inst1|Regist[1]~11\);

-- Location: LCCOMB_X72_Y21_N10
\inst2|inst17|Regist[1]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst17|Regist[1]~10_combout\ = (\inst2|inst17|Regist\(1) & ((\inst|WideOr6~13_combout\ & (!\inst2|inst17|Regist[0]~9\)) # (!\inst|WideOr6~13_combout\ & (\inst2|inst17|Regist[0]~9\ & VCC)))) # (!\inst2|inst17|Regist\(1) & ((\inst|WideOr6~13_combout\ 
-- & ((\inst2|inst17|Regist[0]~9\) # (GND))) # (!\inst|WideOr6~13_combout\ & (!\inst2|inst17|Regist[0]~9\))))
-- \inst2|inst17|Regist[1]~11\ = CARRY((\inst2|inst17|Regist\(1) & (\inst|WideOr6~13_combout\ & !\inst2|inst17|Regist[0]~9\)) # (!\inst2|inst17|Regist\(1) & ((\inst|WideOr6~13_combout\) # (!\inst2|inst17|Regist[0]~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst17|Regist\(1),
	datab => \inst|WideOr6~13_combout\,
	datad => VCC,
	cin => \inst2|inst17|Regist[0]~9\,
	combout => \inst2|inst17|Regist[1]~10_combout\,
	cout => \inst2|inst17|Regist[1]~11\);

-- Location: FF_X72_Y21_N27
\inst2|inst3|Regist[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst2|inst6|Regist[1]~6_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	ena => \inst2|inst3|Regist[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst3|Regist\(1));

-- Location: LCCOMB_X71_Y21_N2
\inst2|inst20|Regist[1]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst20|Regist[1]~10_combout\ = (\inst2|inst3|Regist\(1) & ((\inst2|inst4|Regist\(1) & (\inst2|inst20|Regist[0]~9\ & VCC)) # (!\inst2|inst4|Regist\(1) & (!\inst2|inst20|Regist[0]~9\)))) # (!\inst2|inst3|Regist\(1) & ((\inst2|inst4|Regist\(1) & 
-- (!\inst2|inst20|Regist[0]~9\)) # (!\inst2|inst4|Regist\(1) & ((\inst2|inst20|Regist[0]~9\) # (GND)))))
-- \inst2|inst20|Regist[1]~11\ = CARRY((\inst2|inst3|Regist\(1) & (!\inst2|inst4|Regist\(1) & !\inst2|inst20|Regist[0]~9\)) # (!\inst2|inst3|Regist\(1) & ((!\inst2|inst20|Regist[0]~9\) # (!\inst2|inst4|Regist\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst3|Regist\(1),
	datab => \inst2|inst4|Regist\(1),
	datad => VCC,
	cin => \inst2|inst20|Regist[0]~9\,
	combout => \inst2|inst20|Regist[1]~10_combout\,
	cout => \inst2|inst20|Regist[1]~11\);

-- Location: LCCOMB_X70_Y21_N8
\inst2|inst20|Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst20|Add1~2_combout\ = (\inst2|inst20|Regist\(1) & ((\inst|WideOr6~13_combout\ & (!\inst2|inst20|Add1~1\)) # (!\inst|WideOr6~13_combout\ & (\inst2|inst20|Add1~1\ & VCC)))) # (!\inst2|inst20|Regist\(1) & ((\inst|WideOr6~13_combout\ & 
-- ((\inst2|inst20|Add1~1\) # (GND))) # (!\inst|WideOr6~13_combout\ & (!\inst2|inst20|Add1~1\))))
-- \inst2|inst20|Add1~3\ = CARRY((\inst2|inst20|Regist\(1) & (\inst|WideOr6~13_combout\ & !\inst2|inst20|Add1~1\)) # (!\inst2|inst20|Regist\(1) & ((\inst|WideOr6~13_combout\) # (!\inst2|inst20|Add1~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst20|Regist\(1),
	datab => \inst|WideOr6~13_combout\,
	datad => VCC,
	cin => \inst2|inst20|Add1~1\,
	combout => \inst2|inst20|Add1~2_combout\,
	cout => \inst2|inst20|Add1~3\);

-- Location: FF_X71_Y21_N3
\inst2|inst20|Regist[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst2|inst20|Regist[1]~10_combout\,
	asdata => \inst2|inst20|Add1~2_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	sload => \inst|WideOr5~combout\,
	ena => \inst2|inst20|Regist[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst20|Regist\(1));

-- Location: LCCOMB_X72_Y20_N18
\inst2|inst1|Regist[2]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst1|Regist[2]~12_combout\ = ((\inst|WideOr6~13_combout\ $ (\inst2|inst1|Regist\(2) $ (\inst2|inst1|Regist[1]~11\)))) # (GND)
-- \inst2|inst1|Regist[2]~13\ = CARRY((\inst|WideOr6~13_combout\ & (\inst2|inst1|Regist\(2) & !\inst2|inst1|Regist[1]~11\)) # (!\inst|WideOr6~13_combout\ & ((\inst2|inst1|Regist\(2)) # (!\inst2|inst1|Regist[1]~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr6~13_combout\,
	datab => \inst2|inst1|Regist\(2),
	datad => VCC,
	cin => \inst2|inst1|Regist[1]~11\,
	combout => \inst2|inst1|Regist[2]~12_combout\,
	cout => \inst2|inst1|Regist[2]~13\);

-- Location: LCCOMB_X72_Y21_N12
\inst2|inst17|Regist[2]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst17|Regist[2]~12_combout\ = ((\inst2|inst17|Regist\(2) $ (\inst|WideOr6~13_combout\ $ (\inst2|inst17|Regist[1]~11\)))) # (GND)
-- \inst2|inst17|Regist[2]~13\ = CARRY((\inst2|inst17|Regist\(2) & ((!\inst2|inst17|Regist[1]~11\) # (!\inst|WideOr6~13_combout\))) # (!\inst2|inst17|Regist\(2) & (!\inst|WideOr6~13_combout\ & !\inst2|inst17|Regist[1]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst17|Regist\(2),
	datab => \inst|WideOr6~13_combout\,
	datad => VCC,
	cin => \inst2|inst17|Regist[1]~11\,
	combout => \inst2|inst17|Regist[2]~12_combout\,
	cout => \inst2|inst17|Regist[2]~13\);

-- Location: FF_X71_Y21_N31
\inst2|inst3|Regist[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst2|inst6|Regist[2]~5_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	ena => \inst2|inst3|Regist[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst3|Regist\(2));

-- Location: LCCOMB_X71_Y21_N4
\inst2|inst20|Regist[2]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst20|Regist[2]~12_combout\ = ((\inst2|inst3|Regist\(2) $ (\inst2|inst4|Regist\(2) $ (!\inst2|inst20|Regist[1]~11\)))) # (GND)
-- \inst2|inst20|Regist[2]~13\ = CARRY((\inst2|inst3|Regist\(2) & ((\inst2|inst4|Regist\(2)) # (!\inst2|inst20|Regist[1]~11\))) # (!\inst2|inst3|Regist\(2) & (\inst2|inst4|Regist\(2) & !\inst2|inst20|Regist[1]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst3|Regist\(2),
	datab => \inst2|inst4|Regist\(2),
	datad => VCC,
	cin => \inst2|inst20|Regist[1]~11\,
	combout => \inst2|inst20|Regist[2]~12_combout\,
	cout => \inst2|inst20|Regist[2]~13\);

-- Location: LCCOMB_X70_Y21_N10
\inst2|inst20|Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst20|Add1~4_combout\ = ((\inst2|inst20|Regist\(2) $ (\inst|WideOr6~13_combout\ $ (\inst2|inst20|Add1~3\)))) # (GND)
-- \inst2|inst20|Add1~5\ = CARRY((\inst2|inst20|Regist\(2) & ((!\inst2|inst20|Add1~3\) # (!\inst|WideOr6~13_combout\))) # (!\inst2|inst20|Regist\(2) & (!\inst|WideOr6~13_combout\ & !\inst2|inst20|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst20|Regist\(2),
	datab => \inst|WideOr6~13_combout\,
	datad => VCC,
	cin => \inst2|inst20|Add1~3\,
	combout => \inst2|inst20|Add1~4_combout\,
	cout => \inst2|inst20|Add1~5\);

-- Location: FF_X71_Y21_N5
\inst2|inst20|Regist[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst2|inst20|Regist[2]~12_combout\,
	asdata => \inst2|inst20|Add1~4_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	sload => \inst|WideOr5~combout\,
	ena => \inst2|inst20|Regist[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst20|Regist\(2));

-- Location: LCCOMB_X71_Y20_N22
\inst2|inst6|Regist[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst6|Regist[2]~feeder_combout\ = \inst2|inst6|Regist[2]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst6|Regist[2]~5_combout\,
	combout => \inst2|inst6|Regist[2]~feeder_combout\);

-- Location: IOIBUF_X78_Y8_N22
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

-- Location: LCCOMB_X72_Y23_N0
\inst|MuxA\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|MuxA~combout\ = (\inst|Equal13~0_combout\ & (\inst|address\(1) & ((\inst|Equal5~0_combout\) # (\inst|Equal6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal5~0_combout\,
	datab => \inst|Equal13~0_combout\,
	datac => \inst|address\(1),
	datad => \inst|Equal6~2_combout\,
	combout => \inst|MuxA~combout\);

-- Location: LCCOMB_X72_Y23_N6
\inst2|inst21|Mux11~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst21|Mux11~11_combout\ = (!\inst|WideOr1~6_combout\ & (\inst|WideOr2~2_combout\ & (!\inst|WideOr4~22_combout\ & !\inst|WideOr3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr1~6_combout\,
	datab => \inst|WideOr2~2_combout\,
	datac => \inst|WideOr4~22_combout\,
	datad => \inst|WideOr3~4_combout\,
	combout => \inst2|inst21|Mux11~11_combout\);

-- Location: LCCOMB_X72_Y23_N4
\inst2|inst6|Regist[7]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst6|Regist[7]~8_combout\ = (!\inst|UMEM~0_combout\ & (\inst2|inst21|Mux11~11_combout\ & ((\inst|WideOr5~combout\) # (!\inst|WideOr6~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr5~combout\,
	datab => \inst|WideOr6~13_combout\,
	datac => \inst|UMEM~0_combout\,
	datad => \inst2|inst21|Mux11~11_combout\,
	combout => \inst2|inst6|Regist[7]~8_combout\);

-- Location: FF_X71_Y20_N23
\inst2|inst6|Regist[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst2|inst6|Regist[2]~feeder_combout\,
	asdata => \dataA[2]~input_o\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	sload => \inst|MuxA~combout\,
	ena => \inst2|inst6|Regist[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|Regist\(2));

-- Location: LCCOMB_X72_Y20_N20
\inst2|inst1|Regist[3]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst1|Regist[3]~14_combout\ = (\inst|WideOr6~13_combout\ & ((\inst2|inst1|Regist\(3) & (!\inst2|inst1|Regist[2]~13\)) # (!\inst2|inst1|Regist\(3) & ((\inst2|inst1|Regist[2]~13\) # (GND))))) # (!\inst|WideOr6~13_combout\ & ((\inst2|inst1|Regist\(3) 
-- & (\inst2|inst1|Regist[2]~13\ & VCC)) # (!\inst2|inst1|Regist\(3) & (!\inst2|inst1|Regist[2]~13\))))
-- \inst2|inst1|Regist[3]~15\ = CARRY((\inst|WideOr6~13_combout\ & ((!\inst2|inst1|Regist[2]~13\) # (!\inst2|inst1|Regist\(3)))) # (!\inst|WideOr6~13_combout\ & (!\inst2|inst1|Regist\(3) & !\inst2|inst1|Regist[2]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr6~13_combout\,
	datab => \inst2|inst1|Regist\(3),
	datad => VCC,
	cin => \inst2|inst1|Regist[2]~13\,
	combout => \inst2|inst1|Regist[3]~14_combout\,
	cout => \inst2|inst1|Regist[3]~15\);

-- Location: LCCOMB_X72_Y21_N14
\inst2|inst17|Regist[3]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst17|Regist[3]~14_combout\ = (\inst2|inst17|Regist\(3) & ((\inst|WideOr6~13_combout\ & (!\inst2|inst17|Regist[2]~13\)) # (!\inst|WideOr6~13_combout\ & (\inst2|inst17|Regist[2]~13\ & VCC)))) # (!\inst2|inst17|Regist\(3) & 
-- ((\inst|WideOr6~13_combout\ & ((\inst2|inst17|Regist[2]~13\) # (GND))) # (!\inst|WideOr6~13_combout\ & (!\inst2|inst17|Regist[2]~13\))))
-- \inst2|inst17|Regist[3]~15\ = CARRY((\inst2|inst17|Regist\(3) & (\inst|WideOr6~13_combout\ & !\inst2|inst17|Regist[2]~13\)) # (!\inst2|inst17|Regist\(3) & ((\inst|WideOr6~13_combout\) # (!\inst2|inst17|Regist[2]~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst17|Regist\(3),
	datab => \inst|WideOr6~13_combout\,
	datad => VCC,
	cin => \inst2|inst17|Regist[2]~13\,
	combout => \inst2|inst17|Regist[3]~14_combout\,
	cout => \inst2|inst17|Regist[3]~15\);

-- Location: FF_X72_Y21_N25
\inst2|inst3|Regist[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst2|inst6|Regist[3]~4_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	ena => \inst2|inst3|Regist[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst3|Regist\(3));

-- Location: LCCOMB_X71_Y21_N6
\inst2|inst20|Regist[3]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst20|Regist[3]~14_combout\ = (\inst2|inst3|Regist\(3) & ((\inst2|inst4|Regist\(3) & (\inst2|inst20|Regist[2]~13\ & VCC)) # (!\inst2|inst4|Regist\(3) & (!\inst2|inst20|Regist[2]~13\)))) # (!\inst2|inst3|Regist\(3) & ((\inst2|inst4|Regist\(3) & 
-- (!\inst2|inst20|Regist[2]~13\)) # (!\inst2|inst4|Regist\(3) & ((\inst2|inst20|Regist[2]~13\) # (GND)))))
-- \inst2|inst20|Regist[3]~15\ = CARRY((\inst2|inst3|Regist\(3) & (!\inst2|inst4|Regist\(3) & !\inst2|inst20|Regist[2]~13\)) # (!\inst2|inst3|Regist\(3) & ((!\inst2|inst20|Regist[2]~13\) # (!\inst2|inst4|Regist\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst3|Regist\(3),
	datab => \inst2|inst4|Regist\(3),
	datad => VCC,
	cin => \inst2|inst20|Regist[2]~13\,
	combout => \inst2|inst20|Regist[3]~14_combout\,
	cout => \inst2|inst20|Regist[3]~15\);

-- Location: LCCOMB_X70_Y21_N12
\inst2|inst20|Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst20|Add1~6_combout\ = (\inst2|inst20|Regist\(3) & ((\inst|WideOr6~13_combout\ & (!\inst2|inst20|Add1~5\)) # (!\inst|WideOr6~13_combout\ & (\inst2|inst20|Add1~5\ & VCC)))) # (!\inst2|inst20|Regist\(3) & ((\inst|WideOr6~13_combout\ & 
-- ((\inst2|inst20|Add1~5\) # (GND))) # (!\inst|WideOr6~13_combout\ & (!\inst2|inst20|Add1~5\))))
-- \inst2|inst20|Add1~7\ = CARRY((\inst2|inst20|Regist\(3) & (\inst|WideOr6~13_combout\ & !\inst2|inst20|Add1~5\)) # (!\inst2|inst20|Regist\(3) & ((\inst|WideOr6~13_combout\) # (!\inst2|inst20|Add1~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst20|Regist\(3),
	datab => \inst|WideOr6~13_combout\,
	datad => VCC,
	cin => \inst2|inst20|Add1~5\,
	combout => \inst2|inst20|Add1~6_combout\,
	cout => \inst2|inst20|Add1~7\);

-- Location: FF_X71_Y21_N7
\inst2|inst20|Regist[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst2|inst20|Regist[3]~14_combout\,
	asdata => \inst2|inst20|Add1~6_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	sload => \inst|WideOr5~combout\,
	ena => \inst2|inst20|Regist[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst20|Regist\(3));

-- Location: LCCOMB_X72_Y20_N22
\inst2|inst1|Regist[4]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst1|Regist[4]~16_combout\ = ((\inst|WideOr6~13_combout\ $ (\inst2|inst1|Regist\(4) $ (\inst2|inst1|Regist[3]~15\)))) # (GND)
-- \inst2|inst1|Regist[4]~17\ = CARRY((\inst|WideOr6~13_combout\ & (\inst2|inst1|Regist\(4) & !\inst2|inst1|Regist[3]~15\)) # (!\inst|WideOr6~13_combout\ & ((\inst2|inst1|Regist\(4)) # (!\inst2|inst1|Regist[3]~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr6~13_combout\,
	datab => \inst2|inst1|Regist\(4),
	datad => VCC,
	cin => \inst2|inst1|Regist[3]~15\,
	combout => \inst2|inst1|Regist[4]~16_combout\,
	cout => \inst2|inst1|Regist[4]~17\);

-- Location: LCCOMB_X72_Y21_N16
\inst2|inst17|Regist[4]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst17|Regist[4]~16_combout\ = ((\inst2|inst17|Regist\(4) $ (\inst|WideOr6~13_combout\ $ (\inst2|inst17|Regist[3]~15\)))) # (GND)
-- \inst2|inst17|Regist[4]~17\ = CARRY((\inst2|inst17|Regist\(4) & ((!\inst2|inst17|Regist[3]~15\) # (!\inst|WideOr6~13_combout\))) # (!\inst2|inst17|Regist\(4) & (!\inst|WideOr6~13_combout\ & !\inst2|inst17|Regist[3]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst17|Regist\(4),
	datab => \inst|WideOr6~13_combout\,
	datad => VCC,
	cin => \inst2|inst17|Regist[3]~15\,
	combout => \inst2|inst17|Regist[4]~16_combout\,
	cout => \inst2|inst17|Regist[4]~17\);

-- Location: FF_X72_Y21_N7
\inst2|inst3|Regist[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst2|inst6|Regist[4]~3_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	ena => \inst2|inst3|Regist[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst3|Regist\(4));

-- Location: LCCOMB_X71_Y21_N8
\inst2|inst20|Regist[4]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst20|Regist[4]~16_combout\ = ((\inst2|inst3|Regist\(4) $ (\inst2|inst4|Regist\(4) $ (!\inst2|inst20|Regist[3]~15\)))) # (GND)
-- \inst2|inst20|Regist[4]~17\ = CARRY((\inst2|inst3|Regist\(4) & ((\inst2|inst4|Regist\(4)) # (!\inst2|inst20|Regist[3]~15\))) # (!\inst2|inst3|Regist\(4) & (\inst2|inst4|Regist\(4) & !\inst2|inst20|Regist[3]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst3|Regist\(4),
	datab => \inst2|inst4|Regist\(4),
	datad => VCC,
	cin => \inst2|inst20|Regist[3]~15\,
	combout => \inst2|inst20|Regist[4]~16_combout\,
	cout => \inst2|inst20|Regist[4]~17\);

-- Location: LCCOMB_X70_Y21_N14
\inst2|inst20|Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst20|Add1~8_combout\ = ((\inst2|inst20|Regist\(4) $ (\inst|WideOr6~13_combout\ $ (\inst2|inst20|Add1~7\)))) # (GND)
-- \inst2|inst20|Add1~9\ = CARRY((\inst2|inst20|Regist\(4) & ((!\inst2|inst20|Add1~7\) # (!\inst|WideOr6~13_combout\))) # (!\inst2|inst20|Regist\(4) & (!\inst|WideOr6~13_combout\ & !\inst2|inst20|Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst20|Regist\(4),
	datab => \inst|WideOr6~13_combout\,
	datad => VCC,
	cin => \inst2|inst20|Add1~7\,
	combout => \inst2|inst20|Add1~8_combout\,
	cout => \inst2|inst20|Add1~9\);

-- Location: FF_X71_Y21_N9
\inst2|inst20|Regist[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst2|inst20|Regist[4]~16_combout\,
	asdata => \inst2|inst20|Add1~8_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	sload => \inst|WideOr5~combout\,
	ena => \inst2|inst20|Regist[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst20|Regist\(4));

-- Location: LCCOMB_X72_Y20_N24
\inst2|inst1|Regist[5]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst1|Regist[5]~18_combout\ = (\inst|WideOr6~13_combout\ & ((\inst2|inst1|Regist\(5) & (!\inst2|inst1|Regist[4]~17\)) # (!\inst2|inst1|Regist\(5) & ((\inst2|inst1|Regist[4]~17\) # (GND))))) # (!\inst|WideOr6~13_combout\ & ((\inst2|inst1|Regist\(5) 
-- & (\inst2|inst1|Regist[4]~17\ & VCC)) # (!\inst2|inst1|Regist\(5) & (!\inst2|inst1|Regist[4]~17\))))
-- \inst2|inst1|Regist[5]~19\ = CARRY((\inst|WideOr6~13_combout\ & ((!\inst2|inst1|Regist[4]~17\) # (!\inst2|inst1|Regist\(5)))) # (!\inst|WideOr6~13_combout\ & (!\inst2|inst1|Regist\(5) & !\inst2|inst1|Regist[4]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr6~13_combout\,
	datab => \inst2|inst1|Regist\(5),
	datad => VCC,
	cin => \inst2|inst1|Regist[4]~17\,
	combout => \inst2|inst1|Regist[5]~18_combout\,
	cout => \inst2|inst1|Regist[5]~19\);

-- Location: LCCOMB_X72_Y21_N18
\inst2|inst17|Regist[5]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst17|Regist[5]~18_combout\ = (\inst2|inst17|Regist\(5) & ((\inst|WideOr6~13_combout\ & (!\inst2|inst17|Regist[4]~17\)) # (!\inst|WideOr6~13_combout\ & (\inst2|inst17|Regist[4]~17\ & VCC)))) # (!\inst2|inst17|Regist\(5) & 
-- ((\inst|WideOr6~13_combout\ & ((\inst2|inst17|Regist[4]~17\) # (GND))) # (!\inst|WideOr6~13_combout\ & (!\inst2|inst17|Regist[4]~17\))))
-- \inst2|inst17|Regist[5]~19\ = CARRY((\inst2|inst17|Regist\(5) & (\inst|WideOr6~13_combout\ & !\inst2|inst17|Regist[4]~17\)) # (!\inst2|inst17|Regist\(5) & ((\inst|WideOr6~13_combout\) # (!\inst2|inst17|Regist[4]~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst17|Regist\(5),
	datab => \inst|WideOr6~13_combout\,
	datad => VCC,
	cin => \inst2|inst17|Regist[4]~17\,
	combout => \inst2|inst17|Regist[5]~18_combout\,
	cout => \inst2|inst17|Regist[5]~19\);

-- Location: FF_X72_Y21_N5
\inst2|inst3|Regist[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst2|inst6|Regist[5]~2_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	ena => \inst2|inst3|Regist[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst3|Regist\(5));

-- Location: LCCOMB_X71_Y21_N10
\inst2|inst20|Regist[5]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst20|Regist[5]~18_combout\ = (\inst2|inst4|Regist\(5) & ((\inst2|inst3|Regist\(5) & (\inst2|inst20|Regist[4]~17\ & VCC)) # (!\inst2|inst3|Regist\(5) & (!\inst2|inst20|Regist[4]~17\)))) # (!\inst2|inst4|Regist\(5) & ((\inst2|inst3|Regist\(5) & 
-- (!\inst2|inst20|Regist[4]~17\)) # (!\inst2|inst3|Regist\(5) & ((\inst2|inst20|Regist[4]~17\) # (GND)))))
-- \inst2|inst20|Regist[5]~19\ = CARRY((\inst2|inst4|Regist\(5) & (!\inst2|inst3|Regist\(5) & !\inst2|inst20|Regist[4]~17\)) # (!\inst2|inst4|Regist\(5) & ((!\inst2|inst20|Regist[4]~17\) # (!\inst2|inst3|Regist\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst4|Regist\(5),
	datab => \inst2|inst3|Regist\(5),
	datad => VCC,
	cin => \inst2|inst20|Regist[4]~17\,
	combout => \inst2|inst20|Regist[5]~18_combout\,
	cout => \inst2|inst20|Regist[5]~19\);

-- Location: LCCOMB_X70_Y21_N16
\inst2|inst20|Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst20|Add1~10_combout\ = (\inst2|inst20|Regist\(5) & ((\inst|WideOr6~13_combout\ & (!\inst2|inst20|Add1~9\)) # (!\inst|WideOr6~13_combout\ & (\inst2|inst20|Add1~9\ & VCC)))) # (!\inst2|inst20|Regist\(5) & ((\inst|WideOr6~13_combout\ & 
-- ((\inst2|inst20|Add1~9\) # (GND))) # (!\inst|WideOr6~13_combout\ & (!\inst2|inst20|Add1~9\))))
-- \inst2|inst20|Add1~11\ = CARRY((\inst2|inst20|Regist\(5) & (\inst|WideOr6~13_combout\ & !\inst2|inst20|Add1~9\)) # (!\inst2|inst20|Regist\(5) & ((\inst|WideOr6~13_combout\) # (!\inst2|inst20|Add1~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst20|Regist\(5),
	datab => \inst|WideOr6~13_combout\,
	datad => VCC,
	cin => \inst2|inst20|Add1~9\,
	combout => \inst2|inst20|Add1~10_combout\,
	cout => \inst2|inst20|Add1~11\);

-- Location: FF_X71_Y21_N11
\inst2|inst20|Regist[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst2|inst20|Regist[5]~18_combout\,
	asdata => \inst2|inst20|Add1~10_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	sload => \inst|WideOr5~combout\,
	ena => \inst2|inst20|Regist[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst20|Regist\(5));

-- Location: LCCOMB_X72_Y20_N26
\inst2|inst1|Regist[6]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst1|Regist[6]~20_combout\ = ((\inst|WideOr6~13_combout\ $ (\inst2|inst1|Regist\(6) $ (\inst2|inst1|Regist[5]~19\)))) # (GND)
-- \inst2|inst1|Regist[6]~21\ = CARRY((\inst|WideOr6~13_combout\ & (\inst2|inst1|Regist\(6) & !\inst2|inst1|Regist[5]~19\)) # (!\inst|WideOr6~13_combout\ & ((\inst2|inst1|Regist\(6)) # (!\inst2|inst1|Regist[5]~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr6~13_combout\,
	datab => \inst2|inst1|Regist\(6),
	datad => VCC,
	cin => \inst2|inst1|Regist[5]~19\,
	combout => \inst2|inst1|Regist[6]~20_combout\,
	cout => \inst2|inst1|Regist[6]~21\);

-- Location: LCCOMB_X72_Y21_N20
\inst2|inst17|Regist[6]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst17|Regist[6]~20_combout\ = ((\inst2|inst17|Regist\(6) $ (\inst|WideOr6~13_combout\ $ (\inst2|inst17|Regist[5]~19\)))) # (GND)
-- \inst2|inst17|Regist[6]~21\ = CARRY((\inst2|inst17|Regist\(6) & ((!\inst2|inst17|Regist[5]~19\) # (!\inst|WideOr6~13_combout\))) # (!\inst2|inst17|Regist\(6) & (!\inst|WideOr6~13_combout\ & !\inst2|inst17|Regist[5]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst17|Regist\(6),
	datab => \inst|WideOr6~13_combout\,
	datad => VCC,
	cin => \inst2|inst17|Regist[5]~19\,
	combout => \inst2|inst17|Regist[6]~20_combout\,
	cout => \inst2|inst17|Regist[6]~21\);

-- Location: FF_X72_Y21_N21
\inst2|inst17|Regist[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst2|inst17|Regist[6]~20_combout\,
	asdata => \inst2|inst6|Regist[6]~1_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	sload => \inst|ALT_INV_WideOr5~combout\,
	ena => \inst2|inst17|Regist[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst17|Regist\(6));

-- Location: LCCOMB_X72_Y20_N12
\inst2|inst1|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst1|Mux1~0_combout\ = (\inst|WideOr4~24_combout\ & ((\inst2|inst6|Regist[6]~1_combout\))) # (!\inst|WideOr4~24_combout\ & (\inst2|inst17|Regist\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|WideOr4~24_combout\,
	datac => \inst2|inst17|Regist\(6),
	datad => \inst2|inst6|Regist[6]~1_combout\,
	combout => \inst2|inst1|Mux1~0_combout\);

-- Location: FF_X72_Y20_N27
\inst2|inst1|Regist[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst2|inst1|Regist[6]~20_combout\,
	asdata => \inst2|inst1|Mux1~0_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	sload => \inst|ALT_INV_WideOr5~combout\,
	ena => \inst2|inst1|Regist[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst1|Regist\(6));

-- Location: LCCOMB_X72_Y20_N28
\inst2|inst1|Regist[7]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst1|Regist[7]~22_combout\ = \inst2|inst1|Regist\(7) $ (\inst2|inst1|Regist[6]~21\ $ (!\inst|WideOr6~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst1|Regist\(7),
	datad => \inst|WideOr6~13_combout\,
	cin => \inst2|inst1|Regist[6]~21\,
	combout => \inst2|inst1|Regist[7]~22_combout\);

-- Location: LCCOMB_X72_Y21_N22
\inst2|inst17|Regist[7]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst17|Regist[7]~22_combout\ = \inst2|inst17|Regist\(7) $ (\inst2|inst17|Regist[6]~21\ $ (!\inst|WideOr6~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst17|Regist\(7),
	datad => \inst|WideOr6~13_combout\,
	cin => \inst2|inst17|Regist[6]~21\,
	combout => \inst2|inst17|Regist[7]~22_combout\);

-- Location: LCCOMB_X71_Y21_N24
\inst2|inst3|Regist[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst3|Regist[7]~feeder_combout\ = \inst2|inst6|Regist[7]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst6|Regist[7]~0_combout\,
	combout => \inst2|inst3|Regist[7]~feeder_combout\);

-- Location: FF_X71_Y21_N25
\inst2|inst3|Regist[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst2|inst3|Regist[7]~feeder_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	ena => \inst2|inst3|Regist[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst3|Regist\(7));

-- Location: LCCOMB_X72_Y23_N24
\inst2|inst4|Regist[6]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst4|Regist[6]~20_combout\ = ((\inst2|inst4|Regist\(6) $ (\inst|WideOr6~13_combout\ $ (\inst2|inst4|Regist[5]~19\)))) # (GND)
-- \inst2|inst4|Regist[6]~21\ = CARRY((\inst2|inst4|Regist\(6) & ((!\inst2|inst4|Regist[5]~19\) # (!\inst|WideOr6~13_combout\))) # (!\inst2|inst4|Regist\(6) & (!\inst|WideOr6~13_combout\ & !\inst2|inst4|Regist[5]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst4|Regist\(6),
	datab => \inst|WideOr6~13_combout\,
	datad => VCC,
	cin => \inst2|inst4|Regist[5]~19\,
	combout => \inst2|inst4|Regist[6]~20_combout\,
	cout => \inst2|inst4|Regist[6]~21\);

-- Location: LCCOMB_X72_Y23_N26
\inst2|inst4|Regist[7]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst4|Regist[7]~22_combout\ = \inst2|inst4|Regist\(7) $ (\inst2|inst4|Regist[6]~21\ $ (!\inst|WideOr6~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst4|Regist\(7),
	datad => \inst|WideOr6~13_combout\,
	cin => \inst2|inst4|Regist[6]~21\,
	combout => \inst2|inst4|Regist[7]~22_combout\);

-- Location: LCCOMB_X72_Y23_N28
\inst2|inst21|Mux11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst21|Mux11~1_combout\ = (\inst|WideOr1~6_combout\ & (\inst|WideOr3~4_combout\ & (!\inst|WideOr4~22_combout\ & !\inst|WideOr2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr1~6_combout\,
	datab => \inst|WideOr3~4_combout\,
	datac => \inst|WideOr4~22_combout\,
	datad => \inst|WideOr2~2_combout\,
	combout => \inst2|inst21|Mux11~1_combout\);

-- Location: LCCOMB_X72_Y23_N30
\inst2|inst4|Regist[0]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst4|Regist[0]~24_combout\ = (!\inst|UMEM~0_combout\ & (\inst2|inst21|Mux11~1_combout\ & ((\inst|WideOr5~combout\) # (!\inst|WideOr6~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr5~combout\,
	datab => \inst|WideOr6~13_combout\,
	datac => \inst|UMEM~0_combout\,
	datad => \inst2|inst21|Mux11~1_combout\,
	combout => \inst2|inst4|Regist[0]~24_combout\);

-- Location: FF_X72_Y23_N27
\inst2|inst4|Regist[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst2|inst4|Regist[7]~22_combout\,
	asdata => \inst2|inst6|Regist[7]~0_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	sload => \inst|ALT_INV_WideOr5~combout\,
	ena => \inst2|inst4|Regist[0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst4|Regist\(7));

-- Location: FF_X71_Y21_N17
\inst2|inst3|Regist[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst2|inst6|Regist[6]~1_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	ena => \inst2|inst3|Regist[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst3|Regist\(6));

-- Location: LCCOMB_X71_Y21_N12
\inst2|inst20|Regist[6]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst20|Regist[6]~20_combout\ = ((\inst2|inst4|Regist\(6) $ (\inst2|inst3|Regist\(6) $ (!\inst2|inst20|Regist[5]~19\)))) # (GND)
-- \inst2|inst20|Regist[6]~21\ = CARRY((\inst2|inst4|Regist\(6) & ((\inst2|inst3|Regist\(6)) # (!\inst2|inst20|Regist[5]~19\))) # (!\inst2|inst4|Regist\(6) & (\inst2|inst3|Regist\(6) & !\inst2|inst20|Regist[5]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst4|Regist\(6),
	datab => \inst2|inst3|Regist\(6),
	datad => VCC,
	cin => \inst2|inst20|Regist[5]~19\,
	combout => \inst2|inst20|Regist[6]~20_combout\,
	cout => \inst2|inst20|Regist[6]~21\);

-- Location: LCCOMB_X71_Y21_N14
\inst2|inst20|Regist[7]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst20|Regist[7]~22_combout\ = \inst2|inst3|Regist\(7) $ (\inst2|inst20|Regist[6]~21\ $ (\inst2|inst4|Regist\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst3|Regist\(7),
	datad => \inst2|inst4|Regist\(7),
	cin => \inst2|inst20|Regist[6]~21\,
	combout => \inst2|inst20|Regist[7]~22_combout\);

-- Location: LCCOMB_X70_Y21_N18
\inst2|inst20|Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst20|Add1~12_combout\ = ((\inst2|inst20|Regist\(6) $ (\inst|WideOr6~13_combout\ $ (\inst2|inst20|Add1~11\)))) # (GND)
-- \inst2|inst20|Add1~13\ = CARRY((\inst2|inst20|Regist\(6) & ((!\inst2|inst20|Add1~11\) # (!\inst|WideOr6~13_combout\))) # (!\inst2|inst20|Regist\(6) & (!\inst|WideOr6~13_combout\ & !\inst2|inst20|Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst20|Regist\(6),
	datab => \inst|WideOr6~13_combout\,
	datad => VCC,
	cin => \inst2|inst20|Add1~11\,
	combout => \inst2|inst20|Add1~12_combout\,
	cout => \inst2|inst20|Add1~13\);

-- Location: LCCOMB_X70_Y21_N20
\inst2|inst20|Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst20|Add1~14_combout\ = \inst2|inst20|Regist\(7) $ (\inst2|inst20|Add1~13\ $ (!\inst|WideOr6~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst20|Regist\(7),
	datad => \inst|WideOr6~13_combout\,
	cin => \inst2|inst20|Add1~13\,
	combout => \inst2|inst20|Add1~14_combout\);

-- Location: FF_X71_Y21_N15
\inst2|inst20|Regist[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst2|inst20|Regist[7]~22_combout\,
	asdata => \inst2|inst20|Add1~14_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	sload => \inst|WideOr5~combout\,
	ena => \inst2|inst20|Regist[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst20|Regist\(7));

-- Location: M9K_X73_Y21_N0
\inst2|inst|altsyncram_component|auto_generated|ram_block1a0\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000C00004000B000280001000240008000040007000180001000140004000040003000080001",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "MiQro_EVA.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ElMicro:inst2|RP:inst|altsyncram:altsyncram_component|altsyncram_2vq3:auto_generated|ALTSYNCRAM",
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
	portadatain => \inst2|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \inst2|inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst2|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X74_Y21_N14
\inst2|inst7|Regist[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst7|Regist[6]~feeder_combout\ = \inst2|inst|altsyncram_component|auto_generated|q_a\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|altsyncram_component|auto_generated|q_a\(6),
	combout => \inst2|inst7|Regist[6]~feeder_combout\);

-- Location: LCCOMB_X71_Y23_N10
\inst2|inst21|Mux11~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst21|Mux11~6_combout\ = (!\inst|WideOr4~22_combout\ & (\inst|WideOr2~2_combout\ & (\inst|WideOr1~6_combout\ & !\inst|WideOr3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr4~22_combout\,
	datab => \inst|WideOr2~2_combout\,
	datac => \inst|WideOr1~6_combout\,
	datad => \inst|WideOr3~4_combout\,
	combout => \inst2|inst21|Mux11~6_combout\);

-- Location: LCCOMB_X74_Y21_N4
\inst2|inst7|Regist[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst7|Regist[7]~0_combout\ = (!\inst|UMEM~0_combout\ & (\inst2|inst21|Mux11~6_combout\ & ((\inst|WideOr5~combout\) # (!\inst|WideOr6~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|UMEM~0_combout\,
	datab => \inst|WideOr6~13_combout\,
	datac => \inst|WideOr5~combout\,
	datad => \inst2|inst21|Mux11~6_combout\,
	combout => \inst2|inst7|Regist[7]~0_combout\);

-- Location: FF_X74_Y21_N15
\inst2|inst7|Regist[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst2|inst7|Regist[6]~feeder_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	ena => \inst2|inst7|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst7|Regist\(6));

-- Location: LCCOMB_X74_Y21_N6
\inst2|inst7|Regist[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst7|Regist[7]~feeder_combout\ = \inst2|inst|altsyncram_component|auto_generated|q_a\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|altsyncram_component|auto_generated|q_a\(7),
	combout => \inst2|inst7|Regist[7]~feeder_combout\);

-- Location: FF_X74_Y21_N7
\inst2|inst7|Regist[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst2|inst7|Regist[7]~feeder_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	ena => \inst2|inst7|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst7|Regist\(7));

-- Location: LCCOMB_X71_Y20_N8
\inst2|inst6|Regist[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst6|Regist[7]~feeder_combout\ = \inst2|inst6|Regist[7]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst6|Regist[7]~0_combout\,
	combout => \inst2|inst6|Regist[7]~feeder_combout\);

-- Location: IOIBUF_X78_Y12_N8
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

-- Location: FF_X71_Y20_N9
\inst2|inst6|Regist[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst2|inst6|Regist[7]~feeder_combout\,
	asdata => \dataA[7]~input_o\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	sload => \inst|MuxA~combout\,
	ena => \inst2|inst6|Regist[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|Regist\(7));

-- Location: LCCOMB_X75_Y21_N2
\inst|WideOr0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr0~11_combout\ = (\inst|address\(1) & ((\inst|address\(3) & ((\inst|address\(4)))) # (!\inst|address\(3) & (!\inst|address\(12))))) # (!\inst|address\(1) & (((\inst|address\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(12),
	datab => \inst|address\(4),
	datac => \inst|address\(1),
	datad => \inst|address\(3),
	combout => \inst|WideOr0~11_combout\);

-- Location: LCCOMB_X75_Y21_N14
\inst|WideOr0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr0~10_combout\ = (\inst|address\(2) & (((\inst|address\(4))) # (!\inst|address\(12)))) # (!\inst|address\(2) & (((\inst|WideOr0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(12),
	datab => \inst|address\(4),
	datac => \inst|address\(2),
	datad => \inst|WideOr0~11_combout\,
	combout => \inst|WideOr0~10_combout\);

-- Location: LCCOMB_X75_Y21_N0
\inst|WideOr0~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr0~17_combout\ = (\inst|address\(12) & (\inst|address\(4) & ((\inst|address\(2)) # (!\inst|address\(1))))) # (!\inst|address\(12) & ((\inst|address\(4)) # ((\inst|address\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(12),
	datab => \inst|address\(4),
	datac => \inst|address\(2),
	datad => \inst|address\(1),
	combout => \inst|WideOr0~17_combout\);

-- Location: LCCOMB_X75_Y21_N6
\inst|WideOr0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr0~18_combout\ = (\inst|address\(1) & ((\inst|WideOr0~17_combout\) # ((\inst|address\(3) & \inst|address\(4))))) # (!\inst|address\(1) & (\inst|WideOr0~17_combout\ & ((\inst|address\(4)) # (!\inst|address\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(1),
	datab => \inst|address\(3),
	datac => \inst|address\(4),
	datad => \inst|WideOr0~17_combout\,
	combout => \inst|WideOr0~18_combout\);

-- Location: LCCOMB_X75_Y21_N28
\inst|WideOr0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr0~combout\ = (\inst|address\(8)) # ((\inst|address\(0) & (\inst|WideOr0~10_combout\)) # (!\inst|address\(0) & ((\inst|WideOr0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(0),
	datab => \inst|address\(8),
	datac => \inst|WideOr0~10_combout\,
	datad => \inst|WideOr0~18_combout\,
	combout => \inst|WideOr0~combout\);

-- Location: LCCOMB_X74_Y21_N0
\inst2|inst16|result[7]~256\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst16|result[7]~256_combout\ = (\inst|WideOr0~combout\ & (\inst2|inst7|Regist\(7))) # (!\inst|WideOr0~combout\ & ((\inst2|inst6|Regist\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst7|Regist\(7),
	datac => \inst2|inst6|Regist\(7),
	datad => \inst|WideOr0~combout\,
	combout => \inst2|inst16|result[7]~256_combout\);

-- Location: LCCOMB_X74_Y21_N16
\inst2|inst6|Regist[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst6|Regist[7]~0_combout\ = (\inst|MBusMux\(0) & (\inst2|inst20|Regist\(7))) # (!\inst|MBusMux\(0) & ((\inst2|inst16|result[7]~256_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst20|Regist\(7),
	datac => \inst|MBusMux\(0),
	datad => \inst2|inst16|result[7]~256_combout\,
	combout => \inst2|inst6|Regist[7]~0_combout\);

-- Location: FF_X72_Y21_N23
\inst2|inst17|Regist[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst2|inst17|Regist[7]~22_combout\,
	asdata => \inst2|inst6|Regist[7]~0_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	sload => \inst|ALT_INV_WideOr5~combout\,
	ena => \inst2|inst17|Regist[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst17|Regist\(7));

-- Location: LCCOMB_X72_Y20_N8
\inst2|inst1|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst1|Mux0~0_combout\ = (\inst|WideOr4~24_combout\ & ((\inst2|inst6|Regist[7]~0_combout\))) # (!\inst|WideOr4~24_combout\ & (\inst2|inst17|Regist\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|WideOr4~24_combout\,
	datac => \inst2|inst17|Regist\(7),
	datad => \inst2|inst6|Regist[7]~0_combout\,
	combout => \inst2|inst1|Mux0~0_combout\);

-- Location: FF_X72_Y20_N29
\inst2|inst1|Regist[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst2|inst1|Regist[7]~22_combout\,
	asdata => \inst2|inst1|Mux0~0_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	sload => \inst|ALT_INV_WideOr5~combout\,
	ena => \inst2|inst1|Regist[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst1|Regist\(7));

-- Location: LCCOMB_X74_Y21_N28
\inst2|inst7|Regist[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst7|Regist[5]~feeder_combout\ = \inst2|inst|altsyncram_component|auto_generated|q_a\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|altsyncram_component|auto_generated|q_a\(5),
	combout => \inst2|inst7|Regist[5]~feeder_combout\);

-- Location: FF_X74_Y21_N29
\inst2|inst7|Regist[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst2|inst7|Regist[5]~feeder_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	ena => \inst2|inst7|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst7|Regist\(5));

-- Location: LCCOMB_X71_Y20_N0
\inst2|inst6|Regist[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst6|Regist[5]~feeder_combout\ = \inst2|inst6|Regist[5]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst6|Regist[5]~2_combout\,
	combout => \inst2|inst6|Regist[5]~feeder_combout\);

-- Location: IOIBUF_X69_Y0_N8
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

-- Location: FF_X71_Y20_N1
\inst2|inst6|Regist[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst2|inst6|Regist[5]~feeder_combout\,
	asdata => \dataA[5]~input_o\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	sload => \inst|MuxA~combout\,
	ena => \inst2|inst6|Regist[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|Regist\(5));

-- Location: LCCOMB_X74_Y21_N22
\inst2|inst16|result[5]~258\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst16|result[5]~258_combout\ = (\inst|WideOr0~combout\ & (\inst2|inst7|Regist\(5))) # (!\inst|WideOr0~combout\ & ((\inst2|inst6|Regist\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst7|Regist\(5),
	datac => \inst2|inst6|Regist\(5),
	datad => \inst|WideOr0~combout\,
	combout => \inst2|inst16|result[5]~258_combout\);

-- Location: LCCOMB_X72_Y21_N4
\inst2|inst6|Regist[5]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst6|Regist[5]~2_combout\ = (\inst|MBusMux\(0) & (\inst2|inst20|Regist\(5))) # (!\inst|MBusMux\(0) & ((\inst2|inst16|result[5]~258_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|MBusMux\(0),
	datac => \inst2|inst20|Regist\(5),
	datad => \inst2|inst16|result[5]~258_combout\,
	combout => \inst2|inst6|Regist[5]~2_combout\);

-- Location: FF_X72_Y21_N19
\inst2|inst17|Regist[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst2|inst17|Regist[5]~18_combout\,
	asdata => \inst2|inst6|Regist[5]~2_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	sload => \inst|ALT_INV_WideOr5~combout\,
	ena => \inst2|inst17|Regist[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst17|Regist\(5));

-- Location: LCCOMB_X72_Y20_N10
\inst2|inst1|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst1|Mux2~0_combout\ = (\inst|WideOr4~24_combout\ & ((\inst2|inst6|Regist[5]~2_combout\))) # (!\inst|WideOr4~24_combout\ & (\inst2|inst17|Regist\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst17|Regist\(5),
	datac => \inst|WideOr4~24_combout\,
	datad => \inst2|inst6|Regist[5]~2_combout\,
	combout => \inst2|inst1|Mux2~0_combout\);

-- Location: FF_X72_Y20_N25
\inst2|inst1|Regist[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst2|inst1|Regist[5]~18_combout\,
	asdata => \inst2|inst1|Mux2~0_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	sload => \inst|ALT_INV_WideOr5~combout\,
	ena => \inst2|inst1|Regist[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst1|Regist\(5));

-- Location: LCCOMB_X74_Y21_N20
\inst2|inst7|Regist[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst7|Regist[4]~feeder_combout\ = \inst2|inst|altsyncram_component|auto_generated|q_a\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|altsyncram_component|auto_generated|q_a\(4),
	combout => \inst2|inst7|Regist[4]~feeder_combout\);

-- Location: FF_X74_Y21_N21
\inst2|inst7|Regist[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst2|inst7|Regist[4]~feeder_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	ena => \inst2|inst7|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst7|Regist\(4));

-- Location: LCCOMB_X71_Y20_N6
\inst2|inst6|Regist[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst6|Regist[4]~feeder_combout\ = \inst2|inst6|Regist[4]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst6|Regist[4]~3_combout\,
	combout => \inst2|inst6|Regist[4]~feeder_combout\);

-- Location: IOIBUF_X78_Y4_N8
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

-- Location: FF_X71_Y20_N7
\inst2|inst6|Regist[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst2|inst6|Regist[4]~feeder_combout\,
	asdata => \dataA[4]~input_o\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	sload => \inst|MuxA~combout\,
	ena => \inst2|inst6|Regist[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|Regist\(4));

-- Location: LCCOMB_X74_Y21_N30
\inst2|inst16|result[4]~259\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst16|result[4]~259_combout\ = (\inst|WideOr0~combout\ & (\inst2|inst7|Regist\(4))) # (!\inst|WideOr0~combout\ & ((\inst2|inst6|Regist\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst7|Regist\(4),
	datac => \inst2|inst6|Regist\(4),
	datad => \inst|WideOr0~combout\,
	combout => \inst2|inst16|result[4]~259_combout\);

-- Location: LCCOMB_X72_Y21_N6
\inst2|inst6|Regist[4]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst6|Regist[4]~3_combout\ = (\inst|MBusMux\(0) & (\inst2|inst20|Regist\(4))) # (!\inst|MBusMux\(0) & ((\inst2|inst16|result[4]~259_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst20|Regist\(4),
	datab => \inst|MBusMux\(0),
	datad => \inst2|inst16|result[4]~259_combout\,
	combout => \inst2|inst6|Regist[4]~3_combout\);

-- Location: FF_X72_Y21_N17
\inst2|inst17|Regist[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst2|inst17|Regist[4]~16_combout\,
	asdata => \inst2|inst6|Regist[4]~3_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	sload => \inst|ALT_INV_WideOr5~combout\,
	ena => \inst2|inst17|Regist[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst17|Regist\(4));

-- Location: LCCOMB_X72_Y20_N4
\inst2|inst1|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst1|Mux3~0_combout\ = (\inst|WideOr4~24_combout\ & ((\inst2|inst6|Regist[4]~3_combout\))) # (!\inst|WideOr4~24_combout\ & (\inst2|inst17|Regist\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst17|Regist\(4),
	datac => \inst|WideOr4~24_combout\,
	datad => \inst2|inst6|Regist[4]~3_combout\,
	combout => \inst2|inst1|Mux3~0_combout\);

-- Location: FF_X72_Y20_N23
\inst2|inst1|Regist[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst2|inst1|Regist[4]~16_combout\,
	asdata => \inst2|inst1|Mux3~0_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	sload => \inst|ALT_INV_WideOr5~combout\,
	ena => \inst2|inst1|Regist[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst1|Regist\(4));

-- Location: LCCOMB_X74_Y21_N12
\inst2|inst7|Regist[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst7|Regist[3]~feeder_combout\ = \inst2|inst|altsyncram_component|auto_generated|q_a\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|altsyncram_component|auto_generated|q_a\(3),
	combout => \inst2|inst7|Regist[3]~feeder_combout\);

-- Location: FF_X74_Y21_N13
\inst2|inst7|Regist[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst2|inst7|Regist[3]~feeder_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	ena => \inst2|inst7|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst7|Regist\(3));

-- Location: LCCOMB_X71_Y20_N12
\inst2|inst6|Regist[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst6|Regist[3]~feeder_combout\ = \inst2|inst6|Regist[3]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst6|Regist[3]~4_combout\,
	combout => \inst2|inst6|Regist[3]~feeder_combout\);

-- Location: IOIBUF_X78_Y12_N23
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

-- Location: FF_X71_Y20_N13
\inst2|inst6|Regist[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst2|inst6|Regist[3]~feeder_combout\,
	asdata => \dataA[3]~input_o\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	sload => \inst|MuxA~combout\,
	ena => \inst2|inst6|Regist[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|Regist\(3));

-- Location: LCCOMB_X74_Y21_N18
\inst2|inst16|result[3]~260\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst16|result[3]~260_combout\ = (\inst|WideOr0~combout\ & (\inst2|inst7|Regist\(3))) # (!\inst|WideOr0~combout\ & ((\inst2|inst6|Regist\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst7|Regist\(3),
	datac => \inst2|inst6|Regist\(3),
	datad => \inst|WideOr0~combout\,
	combout => \inst2|inst16|result[3]~260_combout\);

-- Location: LCCOMB_X72_Y21_N24
\inst2|inst6|Regist[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst6|Regist[3]~4_combout\ = (\inst|MBusMux\(0) & (\inst2|inst20|Regist\(3))) # (!\inst|MBusMux\(0) & ((\inst2|inst16|result[3]~260_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|MBusMux\(0),
	datac => \inst2|inst20|Regist\(3),
	datad => \inst2|inst16|result[3]~260_combout\,
	combout => \inst2|inst6|Regist[3]~4_combout\);

-- Location: FF_X72_Y21_N15
\inst2|inst17|Regist[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst2|inst17|Regist[3]~14_combout\,
	asdata => \inst2|inst6|Regist[3]~4_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	sload => \inst|ALT_INV_WideOr5~combout\,
	ena => \inst2|inst17|Regist[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst17|Regist\(3));

-- Location: LCCOMB_X72_Y20_N30
\inst2|inst1|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst1|Mux4~0_combout\ = (\inst|WideOr4~24_combout\ & ((\inst2|inst6|Regist[3]~4_combout\))) # (!\inst|WideOr4~24_combout\ & (\inst2|inst17|Regist\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst17|Regist\(3),
	datab => \inst|WideOr4~24_combout\,
	datac => \inst2|inst6|Regist[3]~4_combout\,
	combout => \inst2|inst1|Mux4~0_combout\);

-- Location: FF_X72_Y20_N21
\inst2|inst1|Regist[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst2|inst1|Regist[3]~14_combout\,
	asdata => \inst2|inst1|Mux4~0_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	sload => \inst|ALT_INV_WideOr5~combout\,
	ena => \inst2|inst1|Regist[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst1|Regist\(3));

-- Location: LCCOMB_X74_Y21_N24
\inst2|inst7|Regist[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst7|Regist[2]~feeder_combout\ = \inst2|inst|altsyncram_component|auto_generated|q_a\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|altsyncram_component|auto_generated|q_a\(2),
	combout => \inst2|inst7|Regist[2]~feeder_combout\);

-- Location: FF_X74_Y21_N25
\inst2|inst7|Regist[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst2|inst7|Regist[2]~feeder_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	ena => \inst2|inst7|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst7|Regist\(2));

-- Location: LCCOMB_X71_Y21_N18
\inst2|inst16|result[2]~261\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst16|result[2]~261_combout\ = (\inst|WideOr0~combout\ & ((\inst2|inst7|Regist\(2)))) # (!\inst|WideOr0~combout\ & (\inst2|inst6|Regist\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst6|Regist\(2),
	datac => \inst2|inst7|Regist\(2),
	datad => \inst|WideOr0~combout\,
	combout => \inst2|inst16|result[2]~261_combout\);

-- Location: LCCOMB_X71_Y21_N30
\inst2|inst6|Regist[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst6|Regist[2]~5_combout\ = (\inst|MBusMux\(0) & (\inst2|inst20|Regist\(2))) # (!\inst|MBusMux\(0) & ((\inst2|inst16|result[2]~261_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MBusMux\(0),
	datab => \inst2|inst20|Regist\(2),
	datad => \inst2|inst16|result[2]~261_combout\,
	combout => \inst2|inst6|Regist[2]~5_combout\);

-- Location: FF_X72_Y21_N13
\inst2|inst17|Regist[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst2|inst17|Regist[2]~12_combout\,
	asdata => \inst2|inst6|Regist[2]~5_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	sload => \inst|ALT_INV_WideOr5~combout\,
	ena => \inst2|inst17|Regist[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst17|Regist\(2));

-- Location: LCCOMB_X72_Y20_N0
\inst2|inst1|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst1|Mux5~0_combout\ = (\inst|WideOr4~24_combout\ & ((\inst2|inst6|Regist[2]~5_combout\))) # (!\inst|WideOr4~24_combout\ & (\inst2|inst17|Regist\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|WideOr4~24_combout\,
	datac => \inst2|inst17|Regist\(2),
	datad => \inst2|inst6|Regist[2]~5_combout\,
	combout => \inst2|inst1|Mux5~0_combout\);

-- Location: FF_X72_Y20_N19
\inst2|inst1|Regist[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst2|inst1|Regist[2]~12_combout\,
	asdata => \inst2|inst1|Mux5~0_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	sload => \inst|ALT_INV_WideOr5~combout\,
	ena => \inst2|inst1|Regist[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst1|Regist\(2));

-- Location: LCCOMB_X74_Y21_N10
\inst2|inst7|Regist[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst7|Regist[1]~feeder_combout\ = \inst2|inst|altsyncram_component|auto_generated|q_a\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|altsyncram_component|auto_generated|q_a\(1),
	combout => \inst2|inst7|Regist[1]~feeder_combout\);

-- Location: FF_X74_Y21_N11
\inst2|inst7|Regist[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst2|inst7|Regist[1]~feeder_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	ena => \inst2|inst7|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst7|Regist\(1));

-- Location: LCCOMB_X71_Y20_N16
\inst2|inst6|Regist[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst6|Regist[1]~feeder_combout\ = \inst2|inst6|Regist[1]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst6|Regist[1]~6_combout\,
	combout => \inst2|inst6|Regist[1]~feeder_combout\);

-- Location: IOIBUF_X69_Y0_N22
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

-- Location: FF_X71_Y20_N17
\inst2|inst6|Regist[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst2|inst6|Regist[1]~feeder_combout\,
	asdata => \dataA[1]~input_o\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	sload => \inst|MuxA~combout\,
	ena => \inst2|inst6|Regist[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|Regist\(1));

-- Location: LCCOMB_X74_Y21_N8
\inst2|inst16|result[1]~262\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst16|result[1]~262_combout\ = (\inst|WideOr0~combout\ & (\inst2|inst7|Regist\(1))) # (!\inst|WideOr0~combout\ & ((\inst2|inst6|Regist\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst7|Regist\(1),
	datac => \inst2|inst6|Regist\(1),
	datad => \inst|WideOr0~combout\,
	combout => \inst2|inst16|result[1]~262_combout\);

-- Location: LCCOMB_X72_Y21_N26
\inst2|inst6|Regist[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst6|Regist[1]~6_combout\ = (\inst|MBusMux\(0) & (\inst2|inst20|Regist\(1))) # (!\inst|MBusMux\(0) & ((\inst2|inst16|result[1]~262_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst20|Regist\(1),
	datab => \inst|MBusMux\(0),
	datad => \inst2|inst16|result[1]~262_combout\,
	combout => \inst2|inst6|Regist[1]~6_combout\);

-- Location: FF_X72_Y21_N11
\inst2|inst17|Regist[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst2|inst17|Regist[1]~10_combout\,
	asdata => \inst2|inst6|Regist[1]~6_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	sload => \inst|ALT_INV_WideOr5~combout\,
	ena => \inst2|inst17|Regist[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst17|Regist\(1));

-- Location: LCCOMB_X72_Y20_N2
\inst2|inst1|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst1|Mux6~0_combout\ = (\inst|WideOr4~24_combout\ & ((\inst2|inst6|Regist[1]~6_combout\))) # (!\inst|WideOr4~24_combout\ & (\inst2|inst17|Regist\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|WideOr4~24_combout\,
	datac => \inst2|inst17|Regist\(1),
	datad => \inst2|inst6|Regist[1]~6_combout\,
	combout => \inst2|inst1|Mux6~0_combout\);

-- Location: FF_X72_Y20_N17
\inst2|inst1|Regist[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst2|inst1|Regist[1]~10_combout\,
	asdata => \inst2|inst1|Mux6~0_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	sload => \inst|ALT_INV_WideOr5~combout\,
	ena => \inst2|inst1|Regist[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst1|Regist\(1));

-- Location: LCCOMB_X74_Y21_N26
\inst2|inst7|Regist[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst7|Regist[0]~feeder_combout\ = \inst2|inst|altsyncram_component|auto_generated|q_a\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|altsyncram_component|auto_generated|q_a\(0),
	combout => \inst2|inst7|Regist[0]~feeder_combout\);

-- Location: FF_X74_Y21_N27
\inst2|inst7|Regist[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst2|inst7|Regist[0]~feeder_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	ena => \inst2|inst7|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst7|Regist\(0));

-- Location: LCCOMB_X71_Y20_N26
\inst2|inst6|Regist[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst6|Regist[0]~feeder_combout\ = \inst2|inst6|Regist[0]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst6|Regist[0]~7_combout\,
	combout => \inst2|inst6|Regist[0]~feeder_combout\);

-- Location: IOIBUF_X78_Y16_N1
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

-- Location: FF_X71_Y20_N27
\inst2|inst6|Regist[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst2|inst6|Regist[0]~feeder_combout\,
	asdata => \dataA[0]~input_o\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	sload => \inst|MuxA~combout\,
	ena => \inst2|inst6|Regist[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|Regist\(0));

-- Location: LCCOMB_X75_Y21_N16
\inst2|inst16|result[0]~263\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst16|result[0]~263_combout\ = (\inst|WideOr0~combout\ & (\inst2|inst7|Regist\(0))) # (!\inst|WideOr0~combout\ & ((\inst2|inst6|Regist\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst7|Regist\(0),
	datab => \inst|WideOr0~combout\,
	datad => \inst2|inst6|Regist\(0),
	combout => \inst2|inst16|result[0]~263_combout\);

-- Location: LCCOMB_X72_Y21_N0
\inst2|inst6|Regist[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst6|Regist[0]~7_combout\ = (\inst|MBusMux\(0) & (\inst2|inst20|Regist\(0))) # (!\inst|MBusMux\(0) & ((\inst2|inst16|result[0]~263_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst20|Regist\(0),
	datab => \inst|MBusMux\(0),
	datad => \inst2|inst16|result[0]~263_combout\,
	combout => \inst2|inst6|Regist[0]~7_combout\);

-- Location: FF_X72_Y23_N13
\inst2|inst4|Regist[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst2|inst4|Regist[0]~8_combout\,
	asdata => \inst2|inst6|Regist[0]~7_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	sload => \inst|ALT_INV_WideOr5~combout\,
	ena => \inst2|inst4|Regist[0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst4|Regist\(0));

-- Location: LCCOMB_X72_Y23_N14
\inst2|inst4|Regist[1]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst4|Regist[1]~10_combout\ = (\inst2|inst4|Regist\(1) & ((\inst|WideOr6~13_combout\ & (!\inst2|inst4|Regist[0]~9\)) # (!\inst|WideOr6~13_combout\ & (\inst2|inst4|Regist[0]~9\ & VCC)))) # (!\inst2|inst4|Regist\(1) & ((\inst|WideOr6~13_combout\ & 
-- ((\inst2|inst4|Regist[0]~9\) # (GND))) # (!\inst|WideOr6~13_combout\ & (!\inst2|inst4|Regist[0]~9\))))
-- \inst2|inst4|Regist[1]~11\ = CARRY((\inst2|inst4|Regist\(1) & (\inst|WideOr6~13_combout\ & !\inst2|inst4|Regist[0]~9\)) # (!\inst2|inst4|Regist\(1) & ((\inst|WideOr6~13_combout\) # (!\inst2|inst4|Regist[0]~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst4|Regist\(1),
	datab => \inst|WideOr6~13_combout\,
	datad => VCC,
	cin => \inst2|inst4|Regist[0]~9\,
	combout => \inst2|inst4|Regist[1]~10_combout\,
	cout => \inst2|inst4|Regist[1]~11\);

-- Location: FF_X72_Y23_N15
\inst2|inst4|Regist[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst2|inst4|Regist[1]~10_combout\,
	asdata => \inst2|inst6|Regist[1]~6_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	sload => \inst|ALT_INV_WideOr5~combout\,
	ena => \inst2|inst4|Regist[0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst4|Regist\(1));

-- Location: LCCOMB_X72_Y23_N16
\inst2|inst4|Regist[2]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst4|Regist[2]~12_combout\ = ((\inst2|inst4|Regist\(2) $ (\inst|WideOr6~13_combout\ $ (\inst2|inst4|Regist[1]~11\)))) # (GND)
-- \inst2|inst4|Regist[2]~13\ = CARRY((\inst2|inst4|Regist\(2) & ((!\inst2|inst4|Regist[1]~11\) # (!\inst|WideOr6~13_combout\))) # (!\inst2|inst4|Regist\(2) & (!\inst|WideOr6~13_combout\ & !\inst2|inst4|Regist[1]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst4|Regist\(2),
	datab => \inst|WideOr6~13_combout\,
	datad => VCC,
	cin => \inst2|inst4|Regist[1]~11\,
	combout => \inst2|inst4|Regist[2]~12_combout\,
	cout => \inst2|inst4|Regist[2]~13\);

-- Location: FF_X72_Y23_N17
\inst2|inst4|Regist[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst2|inst4|Regist[2]~12_combout\,
	asdata => \inst2|inst6|Regist[2]~5_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	sload => \inst|ALT_INV_WideOr5~combout\,
	ena => \inst2|inst4|Regist[0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst4|Regist\(2));

-- Location: LCCOMB_X72_Y23_N18
\inst2|inst4|Regist[3]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst4|Regist[3]~14_combout\ = (\inst2|inst4|Regist\(3) & ((\inst|WideOr6~13_combout\ & (!\inst2|inst4|Regist[2]~13\)) # (!\inst|WideOr6~13_combout\ & (\inst2|inst4|Regist[2]~13\ & VCC)))) # (!\inst2|inst4|Regist\(3) & ((\inst|WideOr6~13_combout\ & 
-- ((\inst2|inst4|Regist[2]~13\) # (GND))) # (!\inst|WideOr6~13_combout\ & (!\inst2|inst4|Regist[2]~13\))))
-- \inst2|inst4|Regist[3]~15\ = CARRY((\inst2|inst4|Regist\(3) & (\inst|WideOr6~13_combout\ & !\inst2|inst4|Regist[2]~13\)) # (!\inst2|inst4|Regist\(3) & ((\inst|WideOr6~13_combout\) # (!\inst2|inst4|Regist[2]~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst4|Regist\(3),
	datab => \inst|WideOr6~13_combout\,
	datad => VCC,
	cin => \inst2|inst4|Regist[2]~13\,
	combout => \inst2|inst4|Regist[3]~14_combout\,
	cout => \inst2|inst4|Regist[3]~15\);

-- Location: FF_X72_Y23_N19
\inst2|inst4|Regist[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst2|inst4|Regist[3]~14_combout\,
	asdata => \inst2|inst6|Regist[3]~4_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	sload => \inst|ALT_INV_WideOr5~combout\,
	ena => \inst2|inst4|Regist[0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst4|Regist\(3));

-- Location: LCCOMB_X72_Y23_N20
\inst2|inst4|Regist[4]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst4|Regist[4]~16_combout\ = ((\inst2|inst4|Regist\(4) $ (\inst|WideOr6~13_combout\ $ (\inst2|inst4|Regist[3]~15\)))) # (GND)
-- \inst2|inst4|Regist[4]~17\ = CARRY((\inst2|inst4|Regist\(4) & ((!\inst2|inst4|Regist[3]~15\) # (!\inst|WideOr6~13_combout\))) # (!\inst2|inst4|Regist\(4) & (!\inst|WideOr6~13_combout\ & !\inst2|inst4|Regist[3]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst4|Regist\(4),
	datab => \inst|WideOr6~13_combout\,
	datad => VCC,
	cin => \inst2|inst4|Regist[3]~15\,
	combout => \inst2|inst4|Regist[4]~16_combout\,
	cout => \inst2|inst4|Regist[4]~17\);

-- Location: FF_X72_Y23_N21
\inst2|inst4|Regist[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst2|inst4|Regist[4]~16_combout\,
	asdata => \inst2|inst6|Regist[4]~3_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	sload => \inst|ALT_INV_WideOr5~combout\,
	ena => \inst2|inst4|Regist[0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst4|Regist\(4));

-- Location: LCCOMB_X72_Y23_N22
\inst2|inst4|Regist[5]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst4|Regist[5]~18_combout\ = (\inst2|inst4|Regist\(5) & ((\inst|WideOr6~13_combout\ & (!\inst2|inst4|Regist[4]~17\)) # (!\inst|WideOr6~13_combout\ & (\inst2|inst4|Regist[4]~17\ & VCC)))) # (!\inst2|inst4|Regist\(5) & ((\inst|WideOr6~13_combout\ & 
-- ((\inst2|inst4|Regist[4]~17\) # (GND))) # (!\inst|WideOr6~13_combout\ & (!\inst2|inst4|Regist[4]~17\))))
-- \inst2|inst4|Regist[5]~19\ = CARRY((\inst2|inst4|Regist\(5) & (\inst|WideOr6~13_combout\ & !\inst2|inst4|Regist[4]~17\)) # (!\inst2|inst4|Regist\(5) & ((\inst|WideOr6~13_combout\) # (!\inst2|inst4|Regist[4]~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst4|Regist\(5),
	datab => \inst|WideOr6~13_combout\,
	datad => VCC,
	cin => \inst2|inst4|Regist[4]~17\,
	combout => \inst2|inst4|Regist[5]~18_combout\,
	cout => \inst2|inst4|Regist[5]~19\);

-- Location: FF_X72_Y23_N23
\inst2|inst4|Regist[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst2|inst4|Regist[5]~18_combout\,
	asdata => \inst2|inst6|Regist[5]~2_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	sload => \inst|ALT_INV_WideOr5~combout\,
	ena => \inst2|inst4|Regist[0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst4|Regist\(5));

-- Location: FF_X72_Y23_N25
\inst2|inst4|Regist[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst2|inst4|Regist[6]~20_combout\,
	asdata => \inst2|inst6|Regist[6]~1_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	sload => \inst|ALT_INV_WideOr5~combout\,
	ena => \inst2|inst4|Regist[0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst4|Regist\(6));

-- Location: FF_X71_Y21_N13
\inst2|inst20|Regist[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst2|inst20|Regist[6]~20_combout\,
	asdata => \inst2|inst20|Add1~12_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	sload => \inst|WideOr5~combout\,
	ena => \inst2|inst20|Regist[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst20|Regist\(6));

-- Location: LCCOMB_X71_Y20_N10
\inst2|inst6|Regist[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst6|Regist[6]~feeder_combout\ = \inst2|inst6|Regist[6]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst6|Regist[6]~1_combout\,
	combout => \inst2|inst6|Regist[6]~feeder_combout\);

-- Location: IOIBUF_X78_Y36_N15
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

-- Location: FF_X71_Y20_N11
\inst2|inst6|Regist[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst2|inst6|Regist[6]~feeder_combout\,
	asdata => \dataA[6]~input_o\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	sload => \inst|MuxA~combout\,
	ena => \inst2|inst6|Regist[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|Regist\(6));

-- Location: LCCOMB_X71_Y21_N28
\inst2|inst16|result[6]~257\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst16|result[6]~257_combout\ = (\inst|WideOr0~combout\ & (\inst2|inst7|Regist\(6))) # (!\inst|WideOr0~combout\ & ((\inst2|inst6|Regist\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst7|Regist\(6),
	datac => \inst2|inst6|Regist\(6),
	datad => \inst|WideOr0~combout\,
	combout => \inst2|inst16|result[6]~257_combout\);

-- Location: LCCOMB_X71_Y21_N16
\inst2|inst6|Regist[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst6|Regist[6]~1_combout\ = (\inst|MBusMux\(0) & (\inst2|inst20|Regist\(6))) # (!\inst|MBusMux\(0) & ((\inst2|inst16|result[6]~257_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst20|Regist\(6),
	datac => \inst|MBusMux\(0),
	datad => \inst2|inst16|result[6]~257_combout\,
	combout => \inst2|inst6|Regist[6]~1_combout\);

-- Location: LCCOMB_X69_Y23_N30
\inst2|inst8|Regist[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst8|Regist[6]~feeder_combout\ = \inst2|inst6|Regist[6]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst6|Regist[6]~1_combout\,
	combout => \inst2|inst8|Regist[6]~feeder_combout\);

-- Location: LCCOMB_X71_Y23_N28
\inst2|inst21|Mux11~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst21|Mux11~5_combout\ = (\inst|WideOr4~22_combout\ & (!\inst|WideOr3~4_combout\ & (\inst|WideOr1~6_combout\ & \inst|WideOr2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr4~22_combout\,
	datab => \inst|WideOr3~4_combout\,
	datac => \inst|WideOr1~6_combout\,
	datad => \inst|WideOr2~2_combout\,
	combout => \inst2|inst21|Mux11~5_combout\);

-- Location: LCCOMB_X69_Y23_N4
\inst2|inst8|Regist[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst8|Regist[0]~0_combout\ = (!\inst|UMEM~0_combout\ & (\inst2|inst21|Mux11~5_combout\ & ((\inst|WideOr5~combout\) # (!\inst|WideOr6~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr6~13_combout\,
	datab => \inst|UMEM~0_combout\,
	datac => \inst|WideOr5~combout\,
	datad => \inst2|inst21|Mux11~5_combout\,
	combout => \inst2|inst8|Regist[0]~0_combout\);

-- Location: FF_X69_Y23_N31
\inst2|inst8|Regist[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst2|inst8|Regist[6]~feeder_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	ena => \inst2|inst8|Regist[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst8|Regist\(6));

-- Location: FF_X69_Y23_N21
\inst2|inst8|Regist[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \inst2|inst6|Regist[1]~6_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst2|inst8|Regist[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst8|Regist\(1));

-- Location: FF_X69_Y23_N25
\inst2|inst8|Regist[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \inst2|inst6|Regist[0]~7_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst2|inst8|Regist[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst8|Regist\(0));

-- Location: LCCOMB_X69_Y23_N10
\inst2|inst8|Regist[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst8|Regist[5]~feeder_combout\ = \inst2|inst6|Regist[5]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst6|Regist[5]~2_combout\,
	combout => \inst2|inst8|Regist[5]~feeder_combout\);

-- Location: FF_X69_Y23_N11
\inst2|inst8|Regist[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst2|inst8|Regist[5]~feeder_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	ena => \inst2|inst8|Regist[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst8|Regist\(5));

-- Location: LCCOMB_X69_Y23_N16
\inst2|inst8|Regist[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst8|Regist[4]~feeder_combout\ = \inst2|inst6|Regist[4]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst6|Regist[4]~3_combout\,
	combout => \inst2|inst8|Regist[4]~feeder_combout\);

-- Location: FF_X69_Y23_N17
\inst2|inst8|Regist[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst2|inst8|Regist[4]~feeder_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	ena => \inst2|inst8|Regist[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst8|Regist\(4));

-- Location: FF_X69_Y23_N3
\inst2|inst8|Regist[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \inst2|inst6|Regist[3]~4_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst2|inst8|Regist[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst8|Regist\(3));

-- Location: LCCOMB_X69_Y23_N12
\inst2|inst8|Regist[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst8|Regist[2]~feeder_combout\ = \inst2|inst6|Regist[2]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst6|Regist[2]~5_combout\,
	combout => \inst2|inst8|Regist[2]~feeder_combout\);

-- Location: FF_X69_Y23_N13
\inst2|inst8|Regist[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst2|inst8|Regist[2]~feeder_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	ena => \inst2|inst8|Regist[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst8|Regist\(2));

-- Location: LCCOMB_X69_Y23_N2
\inst2|inst252|ROM~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst252|ROM~0_combout\ = (!\inst2|inst8|Regist\(5) & (!\inst2|inst8|Regist\(4) & (!\inst2|inst8|Regist\(3) & !\inst2|inst8|Regist\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst8|Regist\(5),
	datab => \inst2|inst8|Regist\(4),
	datac => \inst2|inst8|Regist\(3),
	datad => \inst2|inst8|Regist\(2),
	combout => \inst2|inst252|ROM~0_combout\);

-- Location: LCCOMB_X69_Y23_N24
\inst2|inst252|ROM~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst252|ROM~2_combout\ = (!\inst2|inst8|Regist\(6) & (\inst2|inst8|Regist\(1) & (!\inst2|inst8|Regist\(0) & \inst2|inst252|ROM~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst8|Regist\(6),
	datab => \inst2|inst8|Regist\(1),
	datac => \inst2|inst8|Regist\(0),
	datad => \inst2|inst252|ROM~0_combout\,
	combout => \inst2|inst252|ROM~2_combout\);

-- Location: LCCOMB_X75_Y23_N28
\inst|Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux8~0_combout\ = (\inst2|inst252|ROM~2_combout\ & \inst|UMemOut\(42))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst252|ROM~2_combout\,
	datad => \inst|UMemOut\(42),
	combout => \inst|Mux8~0_combout\);

-- Location: FF_X75_Y23_N29
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

-- Location: LCCOMB_X75_Y23_N10
\inst|Equal21~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal21~0_combout\ = (\inst|address\(12) & (!\inst|address\(8) & (!\inst|address\(4) & \inst|address\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(12),
	datab => \inst|address\(8),
	datac => \inst|address\(4),
	datad => \inst|address\(3),
	combout => \inst|Equal21~0_combout\);

-- Location: LCCOMB_X69_Y23_N22
\inst|Equal26~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal26~2_combout\ = (\inst|address\(2) & (\inst|Equal21~0_combout\ & (\inst|address\(0) & !\inst|address\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(2),
	datab => \inst|Equal21~0_combout\,
	datac => \inst|address\(0),
	datad => \inst|address\(1),
	combout => \inst|Equal26~2_combout\);

-- Location: LCCOMB_X69_Y23_N14
\inst|WideOr11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr11~combout\ = (\inst|Equal26~2_combout\) # ((!\inst|WideOr3~0_combout\) # (!\inst|WideOr2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal26~2_combout\,
	datac => \inst|WideOr2~1_combout\,
	datad => \inst|WideOr3~0_combout\,
	combout => \inst|WideOr11~combout\);

-- Location: FF_X69_Y23_N15
\inst|NextAddUC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst|WideOr11~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|NextAddUC\(2));

-- Location: LCCOMB_X74_Y23_N6
\inst|Mux14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux14~0_combout\ = (!\inst|UMemOut\(42) & \inst|NextAddUC\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|UMemOut\(42),
	datad => \inst|NextAddUC\(2),
	combout => \inst|Mux14~0_combout\);

-- Location: FF_X74_Y23_N7
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

-- Location: LCCOMB_X74_Y23_N24
\inst|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal1~0_combout\ = (\inst|address\(0) & !\inst|address\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|address\(0),
	datad => \inst|address\(2),
	combout => \inst|Equal1~0_combout\);

-- Location: LCCOMB_X72_Y23_N2
\inst|UMemOut[42]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|UMemOut\(42) = (\inst|Equal10~0_combout\ & ((\inst|Equal2~0_combout\) # ((\inst|Equal1~0_combout\ & \inst|address\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal10~0_combout\,
	datab => \inst|Equal1~0_combout\,
	datac => \inst|address\(1),
	datad => \inst|Equal2~0_combout\,
	combout => \inst|UMemOut\(42));

-- Location: LCCOMB_X75_Y21_N8
\inst|WideOr13~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr13~1_combout\ = (!\inst|address\(3) & (\inst|address\(12) & ((!\inst|address\(2)) # (!\inst|address\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(1),
	datab => \inst|address\(3),
	datac => \inst|address\(2),
	datad => \inst|address\(12),
	combout => \inst|WideOr13~1_combout\);

-- Location: LCCOMB_X75_Y21_N10
\inst|WideOr13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr13~0_combout\ = (!\inst|address\(4) & ((\inst|address\(12)) # ((!\inst|address\(3)) # (!\inst|address\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(12),
	datab => \inst|address\(4),
	datac => \inst|address\(2),
	datad => \inst|address\(3),
	combout => \inst|WideOr13~0_combout\);

-- Location: LCCOMB_X75_Y21_N26
\inst|WideOr13~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr13~2_combout\ = (!\inst|address\(0) & (!\inst|address\(8) & ((\inst|WideOr13~1_combout\) # (\inst|WideOr13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(0),
	datab => \inst|address\(8),
	datac => \inst|WideOr13~1_combout\,
	datad => \inst|WideOr13~0_combout\,
	combout => \inst|WideOr13~2_combout\);

-- Location: FF_X74_Y23_N25
\inst|NextAddUC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \inst|WideOr13~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|NextAddUC\(0));

-- Location: LCCOMB_X74_Y23_N8
\inst|Mux16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux16~0_combout\ = (!\inst|UMemOut\(42) & \inst|NextAddUC\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|UMemOut\(42),
	datad => \inst|NextAddUC\(0),
	combout => \inst|Mux16~0_combout\);

-- Location: FF_X74_Y23_N9
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

-- Location: LCCOMB_X74_Y23_N4
\inst|WideOr1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr1~4_combout\ = (\inst|address\(2)) # (((\inst|address\(0) & !\inst|address\(1))) # (!\inst|Equal33~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(0),
	datab => \inst|address\(1),
	datac => \inst|address\(2),
	datad => \inst|Equal33~2_combout\,
	combout => \inst|WideOr1~4_combout\);

-- Location: LCCOMB_X74_Y23_N0
\inst|WideOr9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr9~combout\ = ((\inst|Equal33~3_combout\) # ((\inst|Equal28~2_combout\) # (\inst|Equal30~0_combout\))) # (!\inst|WideOr1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr1~4_combout\,
	datab => \inst|Equal33~3_combout\,
	datac => \inst|Equal28~2_combout\,
	datad => \inst|Equal30~0_combout\,
	combout => \inst|WideOr9~combout\);

-- Location: FF_X74_Y23_N1
\inst|NextAddUC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst|WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|NextAddUC\(4));

-- Location: LCCOMB_X75_Y23_N26
\inst|Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux12~0_combout\ = (\inst|NextAddUC\(4) & !\inst|UMemOut\(42))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|NextAddUC\(4),
	datad => \inst|UMemOut\(42),
	combout => \inst|Mux12~0_combout\);

-- Location: FF_X75_Y23_N27
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

-- Location: LCCOMB_X76_Y23_N16
\inst|WideOr8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr8~1_combout\ = (\inst|address\(3)) # ((\inst|address\(2) & ((\inst|address\(1)) # (\inst|address\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(1),
	datab => \inst|address\(2),
	datac => \inst|address\(0),
	datad => \inst|address\(3),
	combout => \inst|WideOr8~1_combout\);

-- Location: LCCOMB_X76_Y23_N2
\inst|WideOr8~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr8~2_combout\ = (\inst|address\(8)) # (((\inst|address\(4) & \inst|WideOr8~1_combout\)) # (!\inst|address\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(4),
	datab => \inst|address\(8),
	datac => \inst|WideOr8~1_combout\,
	datad => \inst|address\(12),
	combout => \inst|WideOr8~2_combout\);

-- Location: LCCOMB_X76_Y23_N22
\inst|NextAddUC[12]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|NextAddUC[12]~0_combout\ = !\inst|WideOr8~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|WideOr8~2_combout\,
	combout => \inst|NextAddUC[12]~0_combout\);

-- Location: FF_X76_Y23_N23
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

-- Location: LCCOMB_X69_Y23_N20
\inst2|inst252|ROM~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst252|ROM~1_combout\ = (!\inst2|inst8|Regist\(6) & (\inst2|inst8|Regist\(0) & (!\inst2|inst8|Regist\(1) & \inst2|inst252|ROM~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst8|Regist\(6),
	datab => \inst2|inst8|Regist\(0),
	datac => \inst2|inst8|Regist\(1),
	datad => \inst2|inst252|ROM~0_combout\,
	combout => \inst2|inst252|ROM~1_combout\);

-- Location: LCCOMB_X75_Y23_N22
\inst|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux4~0_combout\ = (\inst|UMemOut\(42) & ((\inst2|inst252|ROM~1_combout\))) # (!\inst|UMemOut\(42) & (\inst|NextAddUC\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|NextAddUC\(12),
	datac => \inst2|inst252|ROM~1_combout\,
	datad => \inst|UMemOut\(42),
	combout => \inst|Mux4~0_combout\);

-- Location: FF_X75_Y23_N23
\inst|address[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk~inputclkctrl_outclk\,
	d => \inst|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|address\(12));

-- Location: LCCOMB_X75_Y23_N0
\inst|Equal10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal10~0_combout\ = (!\inst|address\(12) & (!\inst|address\(8) & (!\inst|address\(4) & \inst|address\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|address\(12),
	datab => \inst|address\(8),
	datac => \inst|address\(4),
	datad => \inst|address\(3),
	combout => \inst|Equal10~0_combout\);

-- Location: LCCOMB_X69_Y23_N8
\inst|UMEM~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|UMEM~0_combout\ = (\inst|Equal10~0_combout\ & ((\inst|Equal2~0_combout\) # ((!\inst|address\(1) & \inst|Equal6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal10~0_combout\,
	datab => \inst|address\(1),
	datac => \inst|Equal2~0_combout\,
	datad => \inst|Equal6~2_combout\,
	combout => \inst|UMEM~0_combout\);

-- Location: LCCOMB_X77_Y23_N20
\inst2|inst21|SelOut[15]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst21|SelOut[15]~0_combout\ = (!\inst|UMEM~0_combout\ & \inst2|inst21|Mux11~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|UMEM~0_combout\,
	datad => \inst2|inst21|Mux11~0_combout\,
	combout => \inst2|inst21|SelOut[15]~0_combout\);

-- Location: LCCOMB_X77_Y29_N16
\inst2|inst21|SelOut[14]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst21|SelOut[14]~1_combout\ = (!\inst|UMEM~0_combout\ & \inst2|inst21|Mux11~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|UMEM~0_combout\,
	datad => \inst2|inst21|Mux11~1_combout\,
	combout => \inst2|inst21|SelOut[14]~1_combout\);

-- Location: LCCOMB_X77_Y23_N18
\inst2|inst21|Mux11~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst21|Mux11~3_combout\ = (\inst|WideOr3~4_combout\ & (\inst|WideOr4~22_combout\ & (\inst|WideOr2~2_combout\ & \inst|WideOr1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr3~4_combout\,
	datab => \inst|WideOr4~22_combout\,
	datac => \inst|WideOr2~2_combout\,
	datad => \inst|WideOr1~6_combout\,
	combout => \inst2|inst21|Mux11~3_combout\);

-- Location: LCCOMB_X77_Y23_N12
\inst2|inst21|SelOut[11]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst21|SelOut[11]~2_combout\ = (!\inst|UMEM~0_combout\ & \inst2|inst21|Mux11~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|UMEM~0_combout\,
	datad => \inst2|inst21|Mux11~3_combout\,
	combout => \inst2|inst21|SelOut[11]~2_combout\);

-- Location: LCCOMB_X77_Y23_N10
\inst2|inst21|Mux11~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst21|Mux11~4_combout\ = (\inst|WideOr3~4_combout\ & (!\inst|WideOr4~22_combout\ & (\inst|WideOr2~2_combout\ & \inst|WideOr1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr3~4_combout\,
	datab => \inst|WideOr4~22_combout\,
	datac => \inst|WideOr2~2_combout\,
	datad => \inst|WideOr1~6_combout\,
	combout => \inst2|inst21|Mux11~4_combout\);

-- Location: LCCOMB_X77_Y23_N4
\inst2|inst21|SelOut[10]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst21|SelOut[10]~3_combout\ = (!\inst|UMEM~0_combout\ & \inst2|inst21|Mux11~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|UMEM~0_combout\,
	datad => \inst2|inst21|Mux11~4_combout\,
	combout => \inst2|inst21|SelOut[10]~3_combout\);

-- Location: LCCOMB_X77_Y23_N14
\inst2|inst21|SelOut[9]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst21|SelOut[9]~4_combout\ = (!\inst|UMEM~0_combout\ & \inst2|inst21|Mux11~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|UMEM~0_combout\,
	datad => \inst2|inst21|Mux11~5_combout\,
	combout => \inst2|inst21|SelOut[9]~4_combout\);

-- Location: LCCOMB_X77_Y23_N8
\inst2|inst21|SelOut[8]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst21|SelOut[8]~5_combout\ = (!\inst|UMEM~0_combout\ & \inst2|inst21|Mux11~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|UMEM~0_combout\,
	datad => \inst2|inst21|Mux11~6_combout\,
	combout => \inst2|inst21|SelOut[8]~5_combout\);

-- Location: LCCOMB_X77_Y23_N2
\inst2|inst21|SelOut[7]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst21|SelOut[7]~6_combout\ = (!\inst|UMEM~0_combout\ & \inst2|inst21|Mux11~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|UMEM~0_combout\,
	datac => \inst2|inst21|Mux11~7_combout\,
	combout => \inst2|inst21|SelOut[7]~6_combout\);

-- Location: LCCOMB_X77_Y29_N14
\inst2|inst21|SelOut[6]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst21|SelOut[6]~7_combout\ = (!\inst|UMEM~0_combout\ & \inst2|inst21|Mux11~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|UMEM~0_combout\,
	datac => \inst2|inst21|Mux11~8_combout\,
	combout => \inst2|inst21|SelOut[6]~7_combout\);

-- Location: LCCOMB_X77_Y23_N16
\inst2|inst21|Mux11~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst21|Mux11~9_combout\ = (\inst|WideOr3~4_combout\ & (\inst|WideOr4~22_combout\ & (\inst|WideOr2~2_combout\ & !\inst|WideOr1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr3~4_combout\,
	datab => \inst|WideOr4~22_combout\,
	datac => \inst|WideOr2~2_combout\,
	datad => \inst|WideOr1~6_combout\,
	combout => \inst2|inst21|Mux11~9_combout\);

-- Location: LCCOMB_X77_Y23_N22
\inst2|inst21|SelOut[3]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst21|SelOut[3]~8_combout\ = (!\inst|UMEM~0_combout\ & \inst2|inst21|Mux11~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|UMEM~0_combout\,
	datad => \inst2|inst21|Mux11~9_combout\,
	combout => \inst2|inst21|SelOut[3]~8_combout\);

-- Location: LCCOMB_X77_Y23_N28
\inst2|inst21|Mux11~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst21|Mux11~10_combout\ = (\inst|WideOr3~4_combout\ & (!\inst|WideOr4~22_combout\ & (\inst|WideOr2~2_combout\ & !\inst|WideOr1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr3~4_combout\,
	datab => \inst|WideOr4~22_combout\,
	datac => \inst|WideOr2~2_combout\,
	datad => \inst|WideOr1~6_combout\,
	combout => \inst2|inst21|Mux11~10_combout\);

-- Location: LCCOMB_X77_Y23_N26
\inst2|inst21|SelOut[2]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst21|SelOut[2]~9_combout\ = (!\inst|UMEM~0_combout\ & \inst2|inst21|Mux11~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|UMEM~0_combout\,
	datad => \inst2|inst21|Mux11~10_combout\,
	combout => \inst2|inst21|SelOut[2]~9_combout\);

-- Location: LCCOMB_X77_Y23_N24
\inst2|inst21|SelOut[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst21|SelOut[0]~10_combout\ = (\inst2|inst21|Mux11~11_combout\ & !\inst|UMEM~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst21|Mux11~11_combout\,
	datad => \inst|UMEM~0_combout\,
	combout => \inst2|inst21|SelOut[0]~10_combout\);

-- Location: LCCOMB_X69_Y23_N28
\inst2|inst8|Regist[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst8|Regist[7]~feeder_combout\ = \inst2|inst6|Regist[7]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst6|Regist[7]~0_combout\,
	combout => \inst2|inst8|Regist[7]~feeder_combout\);

-- Location: FF_X69_Y23_N29
\inst2|inst8|Regist[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst2|inst8|Regist[7]~feeder_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	ena => \inst2|inst8|Regist[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst8|Regist\(7));

-- Location: IOIBUF_X22_Y39_N29
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

-- Location: IOIBUF_X51_Y0_N8
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

-- Location: IOIBUF_X26_Y0_N1
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

-- Location: IOIBUF_X66_Y54_N22
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

-- Location: IOIBUF_X78_Y42_N15
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

-- Location: IOIBUF_X64_Y0_N15
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

-- Location: IOIBUF_X0_Y28_N8
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

-- Location: IOIBUF_X38_Y0_N8
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

-- Location: IOIBUF_X34_Y0_N22
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

-- Location: IOIBUF_X0_Y30_N1
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

-- Location: IOIBUF_X36_Y39_N8
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

-- Location: IOIBUF_X29_Y39_N8
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

-- Location: IOIBUF_X58_Y54_N29
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

-- Location: IOIBUF_X0_Y8_N22
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

-- Location: IOIBUF_X16_Y0_N29
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

-- Location: IOIBUF_X56_Y0_N15
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

ww_AxOut(7) <= \AxOut[7]~output_o\;

ww_AxOut(6) <= \AxOut[6]~output_o\;

ww_AxOut(5) <= \AxOut[5]~output_o\;

ww_AxOut(4) <= \AxOut[4]~output_o\;

ww_AxOut(3) <= \AxOut[3]~output_o\;

ww_AxOut(2) <= \AxOut[2]~output_o\;

ww_AxOut(1) <= \AxOut[1]~output_o\;

ww_AxOut(0) <= \AxOut[0]~output_o\;

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


