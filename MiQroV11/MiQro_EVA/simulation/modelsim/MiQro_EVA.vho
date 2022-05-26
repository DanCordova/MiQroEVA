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

-- DATE "05/26/2022 10:38:45"

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
	OutBus : OUT std_logic_vector(7 DOWNTO 0);
	Clk : IN std_logic;
	Rst : IN std_logic;
	dataA : IN std_logic_vector(7 DOWNTO 0);
	dataB : IN std_logic_vector(7 DOWNTO 0);
	dataC : IN std_logic_vector(7 DOWNTO 0);
	UMemOut : OUT std_logic_vector(64 DOWNTO 0)
	);
END MiQro_EVA;

-- Design Ports Information
-- OutBus[7]	=>  Location: PIN_AC8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OutBus[6]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OutBus[5]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OutBus[4]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OutBus[3]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OutBus[2]	=>  Location: PIN_AD22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OutBus[1]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OutBus[0]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rst	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataA[7]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataA[6]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataA[5]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataA[4]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataA[3]	=>  Location: PIN_K25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataA[2]	=>  Location: PIN_AD20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataA[1]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataA[0]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataB[7]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataB[6]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataB[5]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataB[4]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataB[3]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataB[2]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataB[1]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataB[0]	=>  Location: PIN_F25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataC[7]	=>  Location: PIN_AF22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataC[6]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataC[5]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataC[4]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataC[3]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataC[2]	=>  Location: PIN_AD13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataC[1]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataC[0]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[64]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[63]	=>  Location: PIN_AC13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[62]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[61]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[60]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[59]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[58]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[57]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[56]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[55]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[54]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[53]	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[52]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[51]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[50]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[49]	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[48]	=>  Location: PIN_F6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[47]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[46]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[45]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[44]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[43]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[42]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[41]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[40]	=>  Location: PIN_H25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[39]	=>  Location: PIN_AC5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[38]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[37]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[36]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[35]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[34]	=>  Location: PIN_AA11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[33]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[32]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[31]	=>  Location: PIN_L23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[30]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[29]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[28]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[27]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[26]	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[25]	=>  Location: PIN_AD8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[24]	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[23]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[22]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[21]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[20]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[19]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[18]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[17]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[16]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[15]	=>  Location: PIN_H26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[14]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[13]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[12]	=>  Location: PIN_AE2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[11]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[10]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[9]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[8]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[7]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[6]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[5]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[4]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[3]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[2]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[1]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[0]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clk	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_OutBus : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Clk : std_logic;
SIGNAL ww_Rst : std_logic;
SIGNAL ww_dataA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_dataB : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_dataC : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_UMemOut : std_logic_vector(64 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Rst~input_o\ : std_logic;
SIGNAL \dataA[7]~input_o\ : std_logic;
SIGNAL \dataA[6]~input_o\ : std_logic;
SIGNAL \dataA[5]~input_o\ : std_logic;
SIGNAL \dataA[4]~input_o\ : std_logic;
SIGNAL \dataA[3]~input_o\ : std_logic;
SIGNAL \dataA[2]~input_o\ : std_logic;
SIGNAL \dataA[1]~input_o\ : std_logic;
SIGNAL \dataA[0]~input_o\ : std_logic;
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
SIGNAL \OutBus[7]~output_o\ : std_logic;
SIGNAL \OutBus[6]~output_o\ : std_logic;
SIGNAL \OutBus[5]~output_o\ : std_logic;
SIGNAL \OutBus[4]~output_o\ : std_logic;
SIGNAL \OutBus[3]~output_o\ : std_logic;
SIGNAL \OutBus[2]~output_o\ : std_logic;
SIGNAL \OutBus[1]~output_o\ : std_logic;
SIGNAL \OutBus[0]~output_o\ : std_logic;
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
SIGNAL \inst|NextAddUC[1]~feeder_combout\ : std_logic;
SIGNAL \inst|address[1]~feeder_combout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|NextAddUC[0]~0_combout\ : std_logic;
SIGNAL \inst|address[0]~feeder_combout\ : std_logic;
SIGNAL \inst|Equal1~0_combout\ : std_logic;
SIGNAL \inst|address\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst|NextAddUC\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst|ALT_INV_Equal0~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

OutBus <= ww_OutBus;
ww_Clk <= Clk;
ww_Rst <= Rst;
ww_dataA <= dataA;
ww_dataB <= dataB;
ww_dataC <= dataC;
UMemOut <= ww_UMemOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\Clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clk~input_o\);
\inst|ALT_INV_Equal0~0_combout\ <= NOT \inst|Equal0~0_combout\;
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

-- Location: IOOBUF_X26_Y0_N2
\OutBus[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \OutBus[7]~output_o\);

-- Location: IOOBUF_X34_Y39_N2
\OutBus[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \OutBus[6]~output_o\);

-- Location: IOOBUF_X0_Y28_N2
\OutBus[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \OutBus[5]~output_o\);

-- Location: IOOBUF_X49_Y54_N23
\OutBus[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \OutBus[4]~output_o\);

-- Location: IOOBUF_X78_Y47_N23
\OutBus[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \OutBus[3]~output_o\);

-- Location: IOOBUF_X69_Y0_N16
\OutBus[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \OutBus[2]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\OutBus[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \OutBus[1]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\OutBus[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \OutBus[0]~output_o\);

-- Location: IOOBUF_X60_Y54_N30
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

-- Location: IOOBUF_X49_Y0_N23
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

-- Location: IOOBUF_X16_Y0_N9
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

-- Location: IOOBUF_X56_Y0_N9
\UMemOut[61]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Equal1~0_combout\,
	devoe => ww_devoe,
	o => \UMemOut[61]~output_o\);

-- Location: IOOBUF_X60_Y0_N30
\UMemOut[60]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_Equal0~0_combout\,
	devoe => ww_devoe,
	o => \UMemOut[60]~output_o\);

-- Location: IOOBUF_X0_Y10_N2
\UMemOut[59]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \UMemOut[59]~output_o\);

-- Location: IOOBUF_X78_Y16_N9
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

-- Location: IOOBUF_X58_Y0_N30
\UMemOut[57]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Equal1~0_combout\,
	devoe => ww_devoe,
	o => \UMemOut[57]~output_o\);

-- Location: IOOBUF_X60_Y0_N9
\UMemOut[56]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_Equal0~0_combout\,
	devoe => ww_devoe,
	o => \UMemOut[56]~output_o\);

-- Location: IOOBUF_X78_Y45_N9
\UMemOut[55]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \UMemOut[55]~output_o\);

-- Location: IOOBUF_X58_Y0_N9
\UMemOut[54]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Equal1~0_combout\,
	devoe => ww_devoe,
	o => \UMemOut[54]~output_o\);

-- Location: IOOBUF_X60_Y0_N16
\UMemOut[53]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_Equal0~0_combout\,
	devoe => ww_devoe,
	o => \UMemOut[53]~output_o\);

-- Location: IOOBUF_X78_Y49_N16
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

-- Location: IOOBUF_X40_Y0_N30
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

-- Location: IOOBUF_X56_Y0_N23
\UMemOut[50]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Equal1~0_combout\,
	devoe => ww_devoe,
	o => \UMemOut[50]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\UMemOut[49]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_Equal0~0_combout\,
	devoe => ww_devoe,
	o => \UMemOut[49]~output_o\);

-- Location: IOOBUF_X0_Y35_N2
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

-- Location: IOOBUF_X56_Y0_N30
\UMemOut[47]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Equal1~0_combout\,
	devoe => ww_devoe,
	o => \UMemOut[47]~output_o\);

-- Location: IOOBUF_X58_Y0_N2
\UMemOut[46]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_Equal0~0_combout\,
	devoe => ww_devoe,
	o => \UMemOut[46]~output_o\);

-- Location: IOOBUF_X49_Y54_N9
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

-- Location: IOOBUF_X42_Y0_N23
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

-- Location: IOOBUF_X0_Y29_N9
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

-- Location: IOOBUF_X29_Y39_N9
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

-- Location: IOOBUF_X40_Y39_N2
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

-- Location: IOOBUF_X78_Y33_N9
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

-- Location: IOOBUF_X14_Y0_N9
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

-- Location: IOOBUF_X34_Y0_N2
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

-- Location: IOOBUF_X0_Y19_N16
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

-- Location: IOOBUF_X31_Y0_N2
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

-- Location: IOOBUF_X78_Y3_N2
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

-- Location: IOOBUF_X24_Y0_N9
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

-- Location: IOOBUF_X58_Y0_N23
\UMemOut[33]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Equal1~0_combout\,
	devoe => ww_devoe,
	o => \UMemOut[33]~output_o\);

-- Location: IOOBUF_X58_Y0_N16
\UMemOut[32]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_Equal0~0_combout\,
	devoe => ww_devoe,
	o => \UMemOut[32]~output_o\);

-- Location: IOOBUF_X78_Y37_N2
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

-- Location: IOOBUF_X0_Y26_N2
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

-- Location: IOOBUF_X0_Y37_N16
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

-- Location: IOOBUF_X34_Y39_N9
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

-- Location: IOOBUF_X56_Y54_N2
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

-- Location: IOOBUF_X78_Y13_N16
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

-- Location: IOOBUF_X24_Y0_N16
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

-- Location: IOOBUF_X18_Y0_N2
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

-- Location: IOOBUF_X24_Y0_N2
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

-- Location: IOOBUF_X38_Y39_N2
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

-- Location: IOOBUF_X78_Y9_N2
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

-- Location: IOOBUF_X24_Y39_N16
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

-- Location: IOOBUF_X69_Y0_N2
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

-- Location: IOOBUF_X66_Y54_N9
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

-- Location: IOOBUF_X56_Y0_N16
\UMemOut[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Equal1~0_combout\,
	devoe => ww_devoe,
	o => \UMemOut[17]~output_o\);

-- Location: IOOBUF_X62_Y0_N30
\UMemOut[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_Equal0~0_combout\,
	devoe => ww_devoe,
	o => \UMemOut[16]~output_o\);

-- Location: IOOBUF_X78_Y29_N9
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

-- Location: IOOBUF_X62_Y54_N9
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

-- Location: IOOBUF_X71_Y54_N30
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

-- Location: IOOBUF_X16_Y0_N23
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

-- Location: IOOBUF_X38_Y0_N30
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

-- Location: IOOBUF_X29_Y39_N16
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

-- Location: IOOBUF_X26_Y0_N9
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

-- Location: IOOBUF_X20_Y39_N9
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

-- Location: IOOBUF_X54_Y0_N23
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

-- Location: IOOBUF_X78_Y18_N23
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

-- Location: IOOBUF_X78_Y45_N23
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

-- Location: IOOBUF_X31_Y0_N16
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

-- Location: IOOBUF_X78_Y10_N9
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

-- Location: IOOBUF_X24_Y39_N9
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

-- Location: IOOBUF_X56_Y0_N2
\UMemOut[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Equal1~0_combout\,
	devoe => ww_devoe,
	o => \UMemOut[1]~output_o\);

-- Location: IOOBUF_X60_Y0_N2
\UMemOut[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_Equal0~0_combout\,
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

-- Location: LCCOMB_X59_Y1_N18
\inst|NextAddUC[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|NextAddUC[1]~feeder_combout\ = \inst|Equal1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Equal1~0_combout\,
	combout => \inst|NextAddUC[1]~feeder_combout\);

-- Location: FF_X59_Y1_N19
\inst|NextAddUC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst|NextAddUC[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|NextAddUC\(1));

-- Location: LCCOMB_X59_Y1_N30
\inst|address[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|address[1]~feeder_combout\ = \inst|NextAddUC\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|NextAddUC\(1),
	combout => \inst|address[1]~feeder_combout\);

-- Location: FF_X59_Y1_N31
\inst|address[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst|address[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|address\(1));

-- Location: LCCOMB_X59_Y1_N2
\inst|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = (\inst|address\(1)) # (\inst|address\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|address\(1),
	datad => \inst|address\(0),
	combout => \inst|Equal0~0_combout\);

-- Location: LCCOMB_X59_Y1_N16
\inst|NextAddUC[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|NextAddUC[0]~0_combout\ = !\inst|Equal0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Equal0~0_combout\,
	combout => \inst|NextAddUC[0]~0_combout\);

-- Location: FF_X59_Y1_N17
\inst|NextAddUC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst|NextAddUC[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|NextAddUC\(0));

-- Location: LCCOMB_X59_Y1_N28
\inst|address[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|address[0]~feeder_combout\ = \inst|NextAddUC\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|NextAddUC\(0),
	combout => \inst|address[0]~feeder_combout\);

-- Location: FF_X59_Y1_N29
\inst|address[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst|address[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|address\(0));

-- Location: LCCOMB_X59_Y1_N20
\inst|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal1~0_combout\ = (!\inst|address\(1) & \inst|address\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|address\(1),
	datad => \inst|address\(0),
	combout => \inst|Equal1~0_combout\);

-- Location: IOIBUF_X0_Y34_N15
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

-- Location: IOIBUF_X78_Y6_N15
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

-- Location: IOIBUF_X0_Y9_N22
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

-- Location: IOIBUF_X40_Y0_N15
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

-- Location: IOIBUF_X78_Y48_N1
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

-- Location: IOIBUF_X78_Y31_N22
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

-- Location: IOIBUF_X62_Y0_N1
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

-- Location: IOIBUF_X54_Y0_N29
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

-- Location: IOIBUF_X14_Y0_N15
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

-- Location: IOIBUF_X0_Y21_N15
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

-- Location: IOIBUF_X31_Y39_N8
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

-- Location: IOIBUF_X0_Y24_N8
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

-- Location: IOIBUF_X78_Y29_N15
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

-- Location: IOIBUF_X78_Y41_N23
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

-- Location: IOIBUF_X38_Y0_N1
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

-- Location: IOIBUF_X51_Y54_N1
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

-- Location: IOIBUF_X78_Y36_N1
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

-- Location: IOIBUF_X64_Y0_N8
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

-- Location: IOIBUF_X78_Y37_N8
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

-- Location: IOIBUF_X46_Y54_N1
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

-- Location: IOIBUF_X31_Y39_N29
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

-- Location: IOIBUF_X36_Y0_N1
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

-- Location: IOIBUF_X40_Y0_N8
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

-- Location: IOIBUF_X18_Y0_N8
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

-- Location: IOIBUF_X0_Y27_N8
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

ww_OutBus(7) <= \OutBus[7]~output_o\;

ww_OutBus(6) <= \OutBus[6]~output_o\;

ww_OutBus(5) <= \OutBus[5]~output_o\;

ww_OutBus(4) <= \OutBus[4]~output_o\;

ww_OutBus(3) <= \OutBus[3]~output_o\;

ww_OutBus(2) <= \OutBus[2]~output_o\;

ww_OutBus(1) <= \OutBus[1]~output_o\;

ww_OutBus(0) <= \OutBus[0]~output_o\;

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


