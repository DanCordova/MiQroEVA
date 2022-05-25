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

-- DATE "05/24/2022 20:46:44"

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


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ElMicro IS
    PORT (
	cacheOut : OUT std_logic_vector(7 DOWNTO 0);
	CLK : IN std_logic;
	CLR : IN std_logic;
	EnDec : IN std_logic;
	SelRegD : IN std_logic_vector(3 DOWNTO 0);
	MUX_A : IN std_logic;
	dataA : IN std_logic_vector(7 DOWNTO 0);
	SelBus : IN std_logic_vector(3 DOWNTO 0);
	MUX_B : IN std_logic;
	dataB : IN std_logic_vector(7 DOWNTO 0);
	AluSel : IN std_logic_vector(3 DOWNTO 0);
	WR : IN std_logic;
	MUX_RAM : IN std_logic;
	MUX_MAR : IN std_logic;
	MUX_MDR : IN std_logic;
	muxSel : IN std_logic_vector(4 DOWNTO 0);
	Outd : OUT std_logic_vector(7 DOWNTO 0)
	);
END ElMicro;

-- Design Ports Information
-- cacheOut[7]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cacheOut[6]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cacheOut[5]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cacheOut[4]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cacheOut[3]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cacheOut[2]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cacheOut[1]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cacheOut[0]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Outd[7]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Outd[6]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Outd[5]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Outd[4]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Outd[3]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Outd[2]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Outd[1]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Outd[0]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- muxSel[1]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- muxSel[0]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- muxSel[4]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- muxSel[3]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- muxSel[2]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SelBus[1]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SelBus[3]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SelBus[2]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SelBus[0]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLR	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SelRegD[0]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SelRegD[1]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SelRegD[2]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SelRegD[3]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EnDec	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MUX_MAR	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataA[7]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MUX_A	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataA[6]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataA[5]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataA[4]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataA[3]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataA[2]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataA[1]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataA[0]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataB[7]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MUX_B	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataB[6]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataB[5]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataB[4]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataB[3]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataB[2]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataB[1]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataB[0]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MUX_MDR	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WR	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MUX_RAM	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AluSel[3]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AluSel[1]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AluSel[0]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AluSel[2]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ElMicro IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_cacheOut : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_CLK : std_logic;
SIGNAL ww_CLR : std_logic;
SIGNAL ww_EnDec : std_logic;
SIGNAL ww_SelRegD : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_MUX_A : std_logic;
SIGNAL ww_dataA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_SelBus : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_MUX_B : std_logic;
SIGNAL ww_dataB : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_AluSel : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_WR : std_logic;
SIGNAL ww_MUX_RAM : std_logic;
SIGNAL ww_MUX_MAR : std_logic;
SIGNAL ww_MUX_MDR : std_logic;
SIGNAL ww_muxSel : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_Outd : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst24|Mux17~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLR~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \cacheOut[7]~output_o\ : std_logic;
SIGNAL \cacheOut[6]~output_o\ : std_logic;
SIGNAL \cacheOut[5]~output_o\ : std_logic;
SIGNAL \cacheOut[4]~output_o\ : std_logic;
SIGNAL \cacheOut[3]~output_o\ : std_logic;
SIGNAL \cacheOut[2]~output_o\ : std_logic;
SIGNAL \cacheOut[1]~output_o\ : std_logic;
SIGNAL \cacheOut[0]~output_o\ : std_logic;
SIGNAL \Outd[7]~output_o\ : std_logic;
SIGNAL \Outd[6]~output_o\ : std_logic;
SIGNAL \Outd[5]~output_o\ : std_logic;
SIGNAL \Outd[4]~output_o\ : std_logic;
SIGNAL \Outd[3]~output_o\ : std_logic;
SIGNAL \Outd[2]~output_o\ : std_logic;
SIGNAL \Outd[1]~output_o\ : std_logic;
SIGNAL \Outd[0]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \SelBus[2]~input_o\ : std_logic;
SIGNAL \SelBus[3]~input_o\ : std_logic;
SIGNAL \SelBus[1]~input_o\ : std_logic;
SIGNAL \SelBus[0]~input_o\ : std_logic;
SIGNAL \inst8|Mux6~2_combout\ : std_logic;
SIGNAL \inst6|Mux0~0_combout\ : std_logic;
SIGNAL \inst6|Regist[0]~0_combout\ : std_logic;
SIGNAL \inst3|Regist[7]~0_combout\ : std_logic;
SIGNAL \inst6|Regist[0]~2_combout\ : std_logic;
SIGNAL \inst8|Mux7~2_combout\ : std_logic;
SIGNAL \inst8|Add0~1_combout\ : std_logic;
SIGNAL \muxSel[2]~input_o\ : std_logic;
SIGNAL \muxSel[1]~input_o\ : std_logic;
SIGNAL \muxSel[4]~input_o\ : std_logic;
SIGNAL \muxSel[3]~input_o\ : std_logic;
SIGNAL \muxSel[0]~input_o\ : std_logic;
SIGNAL \inst12|_~20_combout\ : std_logic;
SIGNAL \inst12|_~22_combout\ : std_logic;
SIGNAL \inst12|_~21_combout\ : std_logic;
SIGNAL \inst6|Regist[0]~1_combout\ : std_logic;
SIGNAL \inst2|Regist[4]~0_combout\ : std_logic;
SIGNAL \inst1|Add0~0_combout\ : std_logic;
SIGNAL \MUX_MAR~input_o\ : std_logic;
SIGNAL \inst13|$00000|auto_generated|result_node[7]~0_combout\ : std_logic;
SIGNAL \inst1|Add0~1_combout\ : std_logic;
SIGNAL \inst12|_~30_combout\ : std_logic;
SIGNAL \inst12|_~36_combout\ : std_logic;
SIGNAL \inst12|_~27_combout\ : std_logic;
SIGNAL \inst12|_~37_combout\ : std_logic;
SIGNAL \inst2|Regist[4]~1_combout\ : std_logic;
SIGNAL \MUX_MDR~input_o\ : std_logic;
SIGNAL \WR~input_o\ : std_logic;
SIGNAL \MUX_RAM~input_o\ : std_logic;
SIGNAL \inst2|Regist[4]~2_combout\ : std_logic;
SIGNAL \inst1|Mux1~0_combout\ : std_logic;
SIGNAL \inst1|Add0~2_combout\ : std_logic;
SIGNAL \inst12|_~35_combout\ : std_logic;
SIGNAL \inst12|_~26_combout\ : std_logic;
SIGNAL \inst12|_~34_combout\ : std_logic;
SIGNAL \MUX_B~input_o\ : std_logic;
SIGNAL \dataB[3]~input_o\ : std_logic;
SIGNAL \MUX_A~input_o\ : std_logic;
SIGNAL \dataA[2]~input_o\ : std_logic;
SIGNAL \inst12|_~29_combout\ : std_logic;
SIGNAL \inst12|_~28_combout\ : std_logic;
SIGNAL \inst18|Add0~7_combout\ : std_logic;
SIGNAL \inst18|Add0~8_combout\ : std_logic;
SIGNAL \inst18|Mux7~0_combout\ : std_logic;
SIGNAL \inst12|_~23_combout\ : std_logic;
SIGNAL \inst12|_~25_combout\ : std_logic;
SIGNAL \inst12|_~24_combout\ : std_logic;
SIGNAL \inst10|Mux7~0_combout\ : std_logic;
SIGNAL \inst10|Mux7~1_combout\ : std_logic;
SIGNAL \inst10|Add0~7_combout\ : std_logic;
SIGNAL \inst10|Add0~8_combout\ : std_logic;
SIGNAL \inst10|Mux7~2_combout\ : std_logic;
SIGNAL \CLR~input_o\ : std_logic;
SIGNAL \CLR~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst8|Regist[0]~0_combout\ : std_logic;
SIGNAL \EnDec~input_o\ : std_logic;
SIGNAL \SelRegD[0]~input_o\ : std_logic;
SIGNAL \SelRegD[3]~input_o\ : std_logic;
SIGNAL \SelRegD[1]~input_o\ : std_logic;
SIGNAL \SelRegD[2]~input_o\ : std_logic;
SIGNAL \inst21|Mux15~4_combout\ : std_logic;
SIGNAL \inst10|Regist[7]~0_combout\ : std_logic;
SIGNAL \inst10|Mux0~0_combout\ : std_logic;
SIGNAL \inst10|Mux0~1_combout\ : std_logic;
SIGNAL \inst10|Add0~0_combout\ : std_logic;
SIGNAL \inst8|Add0~28_combout\ : std_logic;
SIGNAL \inst8|Add0~25_combout\ : std_logic;
SIGNAL \inst10|Add0~1_combout\ : std_logic;
SIGNAL \inst8|Add0~21_combout\ : std_logic;
SIGNAL \inst10|Add0~2_combout\ : std_logic;
SIGNAL \inst8|Add0~17_combout\ : std_logic;
SIGNAL \inst10|Add0~3_combout\ : std_logic;
SIGNAL \inst10|Add0~4_combout\ : std_logic;
SIGNAL \inst8|Add0~13_combout\ : std_logic;
SIGNAL \inst8|Add0~9_combout\ : std_logic;
SIGNAL \inst10|Add0~5_combout\ : std_logic;
SIGNAL \inst8|Add0~5_combout\ : std_logic;
SIGNAL \inst10|Add0~6_combout\ : std_logic;
SIGNAL \inst10|Add0~9\ : std_logic;
SIGNAL \inst10|Add0~11\ : std_logic;
SIGNAL \inst10|Add0~13\ : std_logic;
SIGNAL \inst10|Add0~15\ : std_logic;
SIGNAL \inst10|Add0~17\ : std_logic;
SIGNAL \inst10|Add0~19\ : std_logic;
SIGNAL \inst10|Add0~21\ : std_logic;
SIGNAL \inst10|Add0~22_combout\ : std_logic;
SIGNAL \inst10|Mux0~2_combout\ : std_logic;
SIGNAL \inst10|Mux1~0_combout\ : std_logic;
SIGNAL \inst10|Add0~20_combout\ : std_logic;
SIGNAL \inst10|Mux1~1_combout\ : std_logic;
SIGNAL \inst10|Mux1~2_combout\ : std_logic;
SIGNAL \inst10|Add0~18_combout\ : std_logic;
SIGNAL \inst10|Mux2~0_combout\ : std_logic;
SIGNAL \inst10|Mux2~1_combout\ : std_logic;
SIGNAL \inst10|Mux2~2_combout\ : std_logic;
SIGNAL \inst10|Add0~16_combout\ : std_logic;
SIGNAL \inst10|Mux3~0_combout\ : std_logic;
SIGNAL \inst10|Mux3~1_combout\ : std_logic;
SIGNAL \inst10|Mux3~2_combout\ : std_logic;
SIGNAL \inst10|Add0~14_combout\ : std_logic;
SIGNAL \inst10|Mux4~0_combout\ : std_logic;
SIGNAL \inst10|Mux4~1_combout\ : std_logic;
SIGNAL \inst10|Mux4~2_combout\ : std_logic;
SIGNAL \inst10|Add0~12_combout\ : std_logic;
SIGNAL \inst10|Mux5~0_combout\ : std_logic;
SIGNAL \inst10|Mux5~1_combout\ : std_logic;
SIGNAL \inst10|Mux5~2_combout\ : std_logic;
SIGNAL \inst10|Add0~10_combout\ : std_logic;
SIGNAL \inst10|Mux6~0_combout\ : std_logic;
SIGNAL \inst10|Mux6~1_combout\ : std_logic;
SIGNAL \inst10|Mux6~2_combout\ : std_logic;
SIGNAL \inst12|result[1]~216_combout\ : std_logic;
SIGNAL \inst12|result[1]~217_combout\ : std_logic;
SIGNAL \inst12|result[1]~238_combout\ : std_logic;
SIGNAL \inst9|Add0~0_combout\ : std_logic;
SIGNAL \inst9|Add0~1_combout\ : std_logic;
SIGNAL \inst9|Add0~2_combout\ : std_logic;
SIGNAL \inst9|Add0~3_combout\ : std_logic;
SIGNAL \inst9|Add0~4_combout\ : std_logic;
SIGNAL \inst9|Add0~5_combout\ : std_logic;
SIGNAL \inst9|Add0~6_combout\ : std_logic;
SIGNAL \inst9|Add0~8_combout\ : std_logic;
SIGNAL \inst9|Mux7~0_combout\ : std_logic;
SIGNAL \inst9|Mux7~1_combout\ : std_logic;
SIGNAL \inst9|Mux7~2_combout\ : std_logic;
SIGNAL \inst21|Mux15~2_combout\ : std_logic;
SIGNAL \inst9|Regist[7]~0_combout\ : std_logic;
SIGNAL \inst9|Add0~7_combout\ : std_logic;
SIGNAL \inst9|Add0~9\ : std_logic;
SIGNAL \inst9|Add0~11\ : std_logic;
SIGNAL \inst9|Add0~13\ : std_logic;
SIGNAL \inst9|Add0~15\ : std_logic;
SIGNAL \inst9|Add0~17\ : std_logic;
SIGNAL \inst9|Add0~19\ : std_logic;
SIGNAL \inst9|Add0~21\ : std_logic;
SIGNAL \inst9|Add0~22_combout\ : std_logic;
SIGNAL \inst9|Mux0~0_combout\ : std_logic;
SIGNAL \inst9|Mux0~1_combout\ : std_logic;
SIGNAL \inst9|Mux0~2_combout\ : std_logic;
SIGNAL \inst9|Add0~20_combout\ : std_logic;
SIGNAL \inst9|Mux1~0_combout\ : std_logic;
SIGNAL \inst9|Mux1~1_combout\ : std_logic;
SIGNAL \inst9|Mux1~2_combout\ : std_logic;
SIGNAL \inst9|Add0~18_combout\ : std_logic;
SIGNAL \inst9|Mux2~0_combout\ : std_logic;
SIGNAL \inst9|Mux2~1_combout\ : std_logic;
SIGNAL \inst9|Mux2~2_combout\ : std_logic;
SIGNAL \inst9|Add0~16_combout\ : std_logic;
SIGNAL \inst9|Mux3~0_combout\ : std_logic;
SIGNAL \inst9|Mux3~1_combout\ : std_logic;
SIGNAL \inst9|Mux3~2_combout\ : std_logic;
SIGNAL \inst9|Add0~14_combout\ : std_logic;
SIGNAL \inst9|Mux4~0_combout\ : std_logic;
SIGNAL \inst9|Mux4~1_combout\ : std_logic;
SIGNAL \inst9|Mux4~2_combout\ : std_logic;
SIGNAL \inst9|Add0~12_combout\ : std_logic;
SIGNAL \inst9|Mux5~0_combout\ : std_logic;
SIGNAL \inst9|Mux5~1_combout\ : std_logic;
SIGNAL \inst9|Mux5~2_combout\ : std_logic;
SIGNAL \inst9|Add0~10_combout\ : std_logic;
SIGNAL \inst9|Mux6~0_combout\ : std_logic;
SIGNAL \inst9|Mux6~1_combout\ : std_logic;
SIGNAL \inst9|Mux6~2_combout\ : std_logic;
SIGNAL \inst12|result[1]~215_combout\ : std_logic;
SIGNAL \inst12|result[1]~218_combout\ : std_logic;
SIGNAL \inst12|_~38_combout\ : std_logic;
SIGNAL \inst12|_~32_combout\ : std_logic;
SIGNAL \inst3|Add0~0_combout\ : std_logic;
SIGNAL \inst3|Add0~1_combout\ : std_logic;
SIGNAL \inst3|Add0~2_combout\ : std_logic;
SIGNAL \inst3|Add0~7_combout\ : std_logic;
SIGNAL \inst3|Add0~8_combout\ : std_logic;
SIGNAL \inst3|Mux7~0_combout\ : std_logic;
SIGNAL \inst3|Mux7~1_combout\ : std_logic;
SIGNAL \inst3|Mux7~2_combout\ : std_logic;
SIGNAL \inst21|Mux15~15_combout\ : std_logic;
SIGNAL \inst3|Regist[0]~1_combout\ : std_logic;
SIGNAL \inst3|Add0~6_combout\ : std_logic;
SIGNAL \inst3|Add0~9\ : std_logic;
SIGNAL \inst3|Add0~10_combout\ : std_logic;
SIGNAL \inst3|Mux6~0_combout\ : std_logic;
SIGNAL \inst3|Mux6~1_combout\ : std_logic;
SIGNAL \inst3|Mux6~2_combout\ : std_logic;
SIGNAL \inst3|Add0~5_combout\ : std_logic;
SIGNAL \inst3|Add0~11\ : std_logic;
SIGNAL \inst3|Add0~12_combout\ : std_logic;
SIGNAL \inst3|Mux5~0_combout\ : std_logic;
SIGNAL \inst3|Mux5~1_combout\ : std_logic;
SIGNAL \inst3|Mux5~2_combout\ : std_logic;
SIGNAL \inst3|Add0~4_combout\ : std_logic;
SIGNAL \inst3|Add0~13\ : std_logic;
SIGNAL \inst3|Add0~14_combout\ : std_logic;
SIGNAL \inst3|Mux4~0_combout\ : std_logic;
SIGNAL \inst3|Mux4~1_combout\ : std_logic;
SIGNAL \inst3|Mux4~2_combout\ : std_logic;
SIGNAL \inst3|Add0~15\ : std_logic;
SIGNAL \inst3|Add0~16_combout\ : std_logic;
SIGNAL \inst3|Mux3~0_combout\ : std_logic;
SIGNAL \inst3|Mux3~1_combout\ : std_logic;
SIGNAL \inst3|Mux3~2_combout\ : std_logic;
SIGNAL \inst3|Add0~3_combout\ : std_logic;
SIGNAL \inst3|Add0~17\ : std_logic;
SIGNAL \inst3|Add0~19\ : std_logic;
SIGNAL \inst3|Add0~21\ : std_logic;
SIGNAL \inst3|Add0~22_combout\ : std_logic;
SIGNAL \inst3|Mux0~0_combout\ : std_logic;
SIGNAL \inst3|Mux0~1_combout\ : std_logic;
SIGNAL \inst3|Mux0~2_combout\ : std_logic;
SIGNAL \inst3|Add0~20_combout\ : std_logic;
SIGNAL \inst3|Mux1~0_combout\ : std_logic;
SIGNAL \inst3|Mux1~1_combout\ : std_logic;
SIGNAL \inst3|Mux1~2_combout\ : std_logic;
SIGNAL \inst3|Add0~18_combout\ : std_logic;
SIGNAL \inst3|Mux2~0_combout\ : std_logic;
SIGNAL \inst3|Mux2~1_combout\ : std_logic;
SIGNAL \inst3|Mux2~2_combout\ : std_logic;
SIGNAL \AluSel[0]~input_o\ : std_logic;
SIGNAL \AluSel[3]~input_o\ : std_logic;
SIGNAL \inst4|Add0~0_combout\ : std_logic;
SIGNAL \inst4|Add0~1_combout\ : std_logic;
SIGNAL \inst4|Add0~2_combout\ : std_logic;
SIGNAL \inst4|Mux7~0_combout\ : std_logic;
SIGNAL \inst4|Mux7~1_combout\ : std_logic;
SIGNAL \inst4|Add0~7_combout\ : std_logic;
SIGNAL \inst4|Add0~8_combout\ : std_logic;
SIGNAL \inst4|Mux7~2_combout\ : std_logic;
SIGNAL \inst21|Mux15~14_combout\ : std_logic;
SIGNAL \inst4|Regist[0]~0_combout\ : std_logic;
SIGNAL \inst4|Add0~6_combout\ : std_logic;
SIGNAL \inst4|Add0~9\ : std_logic;
SIGNAL \inst4|Add0~10_combout\ : std_logic;
SIGNAL \inst4|Mux6~0_combout\ : std_logic;
SIGNAL \inst4|Mux6~1_combout\ : std_logic;
SIGNAL \inst4|Mux6~2_combout\ : std_logic;
SIGNAL \inst4|Add0~5_combout\ : std_logic;
SIGNAL \inst4|Add0~11\ : std_logic;
SIGNAL \inst4|Add0~12_combout\ : std_logic;
SIGNAL \inst4|Mux5~0_combout\ : std_logic;
SIGNAL \inst4|Mux5~1_combout\ : std_logic;
SIGNAL \inst4|Mux5~2_combout\ : std_logic;
SIGNAL \inst4|Add0~4_combout\ : std_logic;
SIGNAL \inst4|Add0~13\ : std_logic;
SIGNAL \inst4|Add0~14_combout\ : std_logic;
SIGNAL \inst4|Mux4~0_combout\ : std_logic;
SIGNAL \inst4|Mux4~1_combout\ : std_logic;
SIGNAL \inst4|Mux4~2_combout\ : std_logic;
SIGNAL \inst4|Add0~15\ : std_logic;
SIGNAL \inst4|Add0~16_combout\ : std_logic;
SIGNAL \inst4|Mux3~0_combout\ : std_logic;
SIGNAL \inst4|Mux3~1_combout\ : std_logic;
SIGNAL \inst4|Mux3~2_combout\ : std_logic;
SIGNAL \inst4|Add0~3_combout\ : std_logic;
SIGNAL \inst4|Add0~17\ : std_logic;
SIGNAL \inst4|Add0~19\ : std_logic;
SIGNAL \inst4|Add0~21\ : std_logic;
SIGNAL \inst4|Add0~22_combout\ : std_logic;
SIGNAL \inst4|Mux0~0_combout\ : std_logic;
SIGNAL \inst4|Mux0~1_combout\ : std_logic;
SIGNAL \inst4|Mux0~2_combout\ : std_logic;
SIGNAL \inst4|Add0~20_combout\ : std_logic;
SIGNAL \inst4|Mux1~0_combout\ : std_logic;
SIGNAL \inst4|Mux1~1_combout\ : std_logic;
SIGNAL \inst4|Mux1~2_combout\ : std_logic;
SIGNAL \inst4|Add0~18_combout\ : std_logic;
SIGNAL \inst4|Mux2~0_combout\ : std_logic;
SIGNAL \inst4|Mux2~1_combout\ : std_logic;
SIGNAL \inst4|Mux2~2_combout\ : std_logic;
SIGNAL \inst24|Add0~2_combout\ : std_logic;
SIGNAL \inst24|Add0~3_combout\ : std_logic;
SIGNAL \inst24|Add0~4_combout\ : std_logic;
SIGNAL \inst24|Add0~5_combout\ : std_logic;
SIGNAL \inst24|Add0~6_combout\ : std_logic;
SIGNAL \inst24|Add0~7_combout\ : std_logic;
SIGNAL \inst24|Add0~9_cout\ : std_logic;
SIGNAL \inst24|Add0~11\ : std_logic;
SIGNAL \inst24|Add0~13\ : std_logic;
SIGNAL \inst24|Add0~15\ : std_logic;
SIGNAL \inst24|Add0~17\ : std_logic;
SIGNAL \inst24|Add0~19\ : std_logic;
SIGNAL \inst24|Add0~20_combout\ : std_logic;
SIGNAL \AluSel[2]~input_o\ : std_logic;
SIGNAL \AluSel[1]~input_o\ : std_logic;
SIGNAL \inst24|Mux11~1_combout\ : std_logic;
SIGNAL \inst24|Mux11~0_combout\ : std_logic;
SIGNAL \inst24|Mux14~0_combout\ : std_logic;
SIGNAL \inst24|Mux14~1_combout\ : std_logic;
SIGNAL \inst24|Mux17~0_combout\ : std_logic;
SIGNAL \inst24|Mux17~0clkctrl_outclk\ : std_logic;
SIGNAL \inst20|Mux2~0_combout\ : std_logic;
SIGNAL \inst20|Add0~4_combout\ : std_logic;
SIGNAL \inst20|Add0~5_combout\ : std_logic;
SIGNAL \inst20|Add0~6_combout\ : std_logic;
SIGNAL \inst24|Add0~18_combout\ : std_logic;
SIGNAL \inst24|Mux13~0_combout\ : std_logic;
SIGNAL \inst24|Mux13~1_combout\ : std_logic;
SIGNAL \inst20|Add0~7_combout\ : std_logic;
SIGNAL \inst24|Add0~16_combout\ : std_logic;
SIGNAL \inst24|Mux12~0_combout\ : std_logic;
SIGNAL \inst24|Mux12~1_combout\ : std_logic;
SIGNAL \inst20|Add0~9_combout\ : std_logic;
SIGNAL \inst20|Add0~8_combout\ : std_logic;
SIGNAL \inst20|Add0~10_combout\ : std_logic;
SIGNAL \inst24|Add0~14_combout\ : std_logic;
SIGNAL \inst24|Mux11~2_combout\ : std_logic;
SIGNAL \inst24|Mux11~3_combout\ : std_logic;
SIGNAL \inst20|Add0~11_combout\ : std_logic;
SIGNAL \inst20|Add0~12_combout\ : std_logic;
SIGNAL \inst24|Add0~12_combout\ : std_logic;
SIGNAL \inst24|Mux10~0_combout\ : std_logic;
SIGNAL \inst24|Mux10~1_combout\ : std_logic;
SIGNAL \inst20|Add0~13_combout\ : std_logic;
SIGNAL \inst24|Add0~10_combout\ : std_logic;
SIGNAL \inst24|Mux9~0_combout\ : std_logic;
SIGNAL \inst24|Mux9~1_combout\ : std_logic;
SIGNAL \inst20|Add0~14_combout\ : std_logic;
SIGNAL \inst20|Add0~16_combout\ : std_logic;
SIGNAL \inst20|Add0~0_combout\ : std_logic;
SIGNAL \inst24|Add0~0_combout\ : std_logic;
SIGNAL \inst24|Add0~1_combout\ : std_logic;
SIGNAL \inst24|Add0~21\ : std_logic;
SIGNAL \inst24|Add0~23\ : std_logic;
SIGNAL \inst24|Add0~24_combout\ : std_logic;
SIGNAL \inst24|Mux16~0_combout\ : std_logic;
SIGNAL \inst24|Mux16~1_combout\ : std_logic;
SIGNAL \inst20|Add0~1_combout\ : std_logic;
SIGNAL \inst24|Add0~22_combout\ : std_logic;
SIGNAL \inst24|Mux15~0_combout\ : std_logic;
SIGNAL \inst24|Mux15~1_combout\ : std_logic;
SIGNAL \inst20|Add0~3_combout\ : std_logic;
SIGNAL \inst20|Mux1~0_combout\ : std_logic;
SIGNAL \inst20|Add0~27\ : std_logic;
SIGNAL \inst20|Add0~28_combout\ : std_logic;
SIGNAL \inst20|Mux1~1_combout\ : std_logic;
SIGNAL \inst20|Mux1~2_combout\ : std_logic;
SIGNAL \inst21|Mux15~12_combout\ : std_logic;
SIGNAL \inst20|Regist[7]~0_combout\ : std_logic;
SIGNAL \inst20|Add0~2_combout\ : std_logic;
SIGNAL \inst20|Add0~29\ : std_logic;
SIGNAL \inst20|Add0~30_combout\ : std_logic;
SIGNAL \inst20|Mux0~0_combout\ : std_logic;
SIGNAL \inst20|Mux0~1_combout\ : std_logic;
SIGNAL \inst20|Mux0~2_combout\ : std_logic;
SIGNAL \inst20|Mux7~0_combout\ : std_logic;
SIGNAL \inst20|Mux7~1_combout\ : std_logic;
SIGNAL \inst20|Mux7~2_combout\ : std_logic;
SIGNAL \inst20|Add0~15_combout\ : std_logic;
SIGNAL \inst20|Add0~17\ : std_logic;
SIGNAL \inst20|Add0~19\ : std_logic;
SIGNAL \inst20|Add0~21\ : std_logic;
SIGNAL \inst20|Add0~23\ : std_logic;
SIGNAL \inst20|Add0~25\ : std_logic;
SIGNAL \inst20|Add0~26_combout\ : std_logic;
SIGNAL \inst20|Mux2~1_combout\ : std_logic;
SIGNAL \inst20|Mux2~2_combout\ : std_logic;
SIGNAL \inst20|Add0~24_combout\ : std_logic;
SIGNAL \inst20|Mux3~0_combout\ : std_logic;
SIGNAL \inst20|Mux3~1_combout\ : std_logic;
SIGNAL \inst20|Mux3~2_combout\ : std_logic;
SIGNAL \inst20|Add0~22_combout\ : std_logic;
SIGNAL \inst20|Mux4~0_combout\ : std_logic;
SIGNAL \inst20|Mux4~1_combout\ : std_logic;
SIGNAL \inst20|Mux4~2_combout\ : std_logic;
SIGNAL \inst20|Add0~20_combout\ : std_logic;
SIGNAL \inst20|Mux5~0_combout\ : std_logic;
SIGNAL \inst20|Mux5~1_combout\ : std_logic;
SIGNAL \inst20|Mux5~2_combout\ : std_logic;
SIGNAL \inst20|Add0~18_combout\ : std_logic;
SIGNAL \inst20|Mux6~0_combout\ : std_logic;
SIGNAL \inst20|Mux6~1_combout\ : std_logic;
SIGNAL \inst20|Mux6~2_combout\ : std_logic;
SIGNAL \inst2|Add0~2_combout\ : std_logic;
SIGNAL \inst2|Add0~3_combout\ : std_logic;
SIGNAL \inst2|Add0~4_combout\ : std_logic;
SIGNAL \inst2|Add0~5_combout\ : std_logic;
SIGNAL \inst2|Add0~6_combout\ : std_logic;
SIGNAL \inst2|Mux0~0_combout\ : std_logic;
SIGNAL \inst2|Mux1~0_combout\ : std_logic;
SIGNAL \inst2|Add0~1_combout\ : std_logic;
SIGNAL \inst2|Add0~19\ : std_logic;
SIGNAL \inst2|Add0~20_combout\ : std_logic;
SIGNAL \inst2|Mux1~1_combout\ : std_logic;
SIGNAL \inst2|Mux1~2_combout\ : std_logic;
SIGNAL \inst21|Mux15~13_combout\ : std_logic;
SIGNAL \inst2|Regist[7]~3_combout\ : std_logic;
SIGNAL \inst2|Mux0~1_combout\ : std_logic;
SIGNAL \inst2|Add0~0_combout\ : std_logic;
SIGNAL \inst2|Add0~21\ : std_logic;
SIGNAL \inst2|Add0~22_combout\ : std_logic;
SIGNAL \inst2|Mux0~2_combout\ : std_logic;
SIGNAL \inst2|Mux7~0_combout\ : std_logic;
SIGNAL \inst2|Mux7~1_combout\ : std_logic;
SIGNAL \inst2|Add0~8_combout\ : std_logic;
SIGNAL \inst2|Mux7~2_combout\ : std_logic;
SIGNAL \inst2|Add0~7_combout\ : std_logic;
SIGNAL \inst2|Add0~9\ : std_logic;
SIGNAL \inst2|Add0~11\ : std_logic;
SIGNAL \inst2|Add0~13\ : std_logic;
SIGNAL \inst2|Add0~15\ : std_logic;
SIGNAL \inst2|Add0~17\ : std_logic;
SIGNAL \inst2|Add0~18_combout\ : std_logic;
SIGNAL \inst2|Mux2~0_combout\ : std_logic;
SIGNAL \inst2|Mux2~1_combout\ : std_logic;
SIGNAL \inst2|Mux2~2_combout\ : std_logic;
SIGNAL \inst2|Add0~16_combout\ : std_logic;
SIGNAL \inst2|Mux3~0_combout\ : std_logic;
SIGNAL \inst2|Mux3~1_combout\ : std_logic;
SIGNAL \inst2|Mux3~2_combout\ : std_logic;
SIGNAL \inst2|Add0~14_combout\ : std_logic;
SIGNAL \inst2|Mux4~0_combout\ : std_logic;
SIGNAL \inst2|Mux4~1_combout\ : std_logic;
SIGNAL \inst2|Mux4~2_combout\ : std_logic;
SIGNAL \inst2|Add0~12_combout\ : std_logic;
SIGNAL \inst2|Mux5~0_combout\ : std_logic;
SIGNAL \inst2|Mux5~1_combout\ : std_logic;
SIGNAL \inst2|Mux5~2_combout\ : std_logic;
SIGNAL \inst2|Add0~10_combout\ : std_logic;
SIGNAL \inst2|Mux6~0_combout\ : std_logic;
SIGNAL \inst2|Mux6~1_combout\ : std_logic;
SIGNAL \inst2|Mux6~2_combout\ : std_logic;
SIGNAL \inst12|result[1]~219_combout\ : std_logic;
SIGNAL \inst12|result[1]~220_combout\ : std_logic;
SIGNAL \inst12|_~33_combout\ : std_logic;
SIGNAL \inst8|Add0~16_combout\ : std_logic;
SIGNAL \inst8|Add0~12_combout\ : std_logic;
SIGNAL \inst8|Add0~8_combout\ : std_logic;
SIGNAL \inst8|Add0~4_combout\ : std_logic;
SIGNAL \inst8|Add0~3\ : std_logic;
SIGNAL \inst8|Add0~7\ : std_logic;
SIGNAL \inst8|Add0~11\ : std_logic;
SIGNAL \inst8|Add0~15\ : std_logic;
SIGNAL \inst8|Add0~18_combout\ : std_logic;
SIGNAL \inst8|Mux3~0_combout\ : std_logic;
SIGNAL \inst8|Mux3~1_combout\ : std_logic;
SIGNAL \inst8|Mux3~2_combout\ : std_logic;
SIGNAL \inst21|Mux15~0_combout\ : std_logic;
SIGNAL \inst8|Regist[0]~1_combout\ : std_logic;
SIGNAL \inst8|Add0~14_combout\ : std_logic;
SIGNAL \inst8|Mux4~0_combout\ : std_logic;
SIGNAL \inst8|Mux4~1_combout\ : std_logic;
SIGNAL \inst8|Mux4~2_combout\ : std_logic;
SIGNAL \inst8|Add0~10_combout\ : std_logic;
SIGNAL \inst8|Mux5~0_combout\ : std_logic;
SIGNAL \inst8|Mux5~1_combout\ : std_logic;
SIGNAL \inst8|Mux5~2_combout\ : std_logic;
SIGNAL \inst8|Add0~6_combout\ : std_logic;
SIGNAL \inst8|Mux6~0_combout\ : std_logic;
SIGNAL \inst8|Mux6~1_combout\ : std_logic;
SIGNAL \inst8|Mux6~3_combout\ : std_logic;
SIGNAL \inst12|result[1]~213_combout\ : std_logic;
SIGNAL \inst11|Add0~0_combout\ : std_logic;
SIGNAL \inst11|Add0~1_combout\ : std_logic;
SIGNAL \inst11|Add0~2_combout\ : std_logic;
SIGNAL \inst11|Add0~3_combout\ : std_logic;
SIGNAL \inst11|Add0~4_combout\ : std_logic;
SIGNAL \inst11|Add0~5_combout\ : std_logic;
SIGNAL \inst11|Add0~6_combout\ : std_logic;
SIGNAL \inst11|Mux7~0_combout\ : std_logic;
SIGNAL \inst11|Mux7~1_combout\ : std_logic;
SIGNAL \inst11|Add0~8_combout\ : std_logic;
SIGNAL \inst11|Mux7~2_combout\ : std_logic;
SIGNAL \inst21|Mux15~7_combout\ : std_logic;
SIGNAL \inst11|Regist[7]~0_combout\ : std_logic;
SIGNAL \inst11|Add0~7_combout\ : std_logic;
SIGNAL \inst11|Add0~9\ : std_logic;
SIGNAL \inst11|Add0~11\ : std_logic;
SIGNAL \inst11|Add0~13\ : std_logic;
SIGNAL \inst11|Add0~15\ : std_logic;
SIGNAL \inst11|Add0~17\ : std_logic;
SIGNAL \inst11|Add0~19\ : std_logic;
SIGNAL \inst11|Add0~21\ : std_logic;
SIGNAL \inst11|Add0~22_combout\ : std_logic;
SIGNAL \inst11|Mux0~0_combout\ : std_logic;
SIGNAL \inst11|Mux0~1_combout\ : std_logic;
SIGNAL \inst11|Mux0~2_combout\ : std_logic;
SIGNAL \inst11|Mux1~0_combout\ : std_logic;
SIGNAL \inst11|Add0~20_combout\ : std_logic;
SIGNAL \inst11|Mux1~1_combout\ : std_logic;
SIGNAL \inst11|Mux1~2_combout\ : std_logic;
SIGNAL \inst11|Add0~18_combout\ : std_logic;
SIGNAL \inst11|Mux2~0_combout\ : std_logic;
SIGNAL \inst11|Mux2~1_combout\ : std_logic;
SIGNAL \inst11|Mux2~2_combout\ : std_logic;
SIGNAL \inst11|Add0~16_combout\ : std_logic;
SIGNAL \inst11|Mux3~0_combout\ : std_logic;
SIGNAL \inst11|Mux3~1_combout\ : std_logic;
SIGNAL \inst11|Mux3~2_combout\ : std_logic;
SIGNAL \inst11|Add0~14_combout\ : std_logic;
SIGNAL \inst11|Mux4~0_combout\ : std_logic;
SIGNAL \inst11|Mux4~1_combout\ : std_logic;
SIGNAL \inst11|Mux4~2_combout\ : std_logic;
SIGNAL \inst11|Add0~12_combout\ : std_logic;
SIGNAL \inst11|Mux5~0_combout\ : std_logic;
SIGNAL \inst11|Mux5~1_combout\ : std_logic;
SIGNAL \inst11|Mux5~2_combout\ : std_logic;
SIGNAL \inst11|Add0~10_combout\ : std_logic;
SIGNAL \inst11|Mux6~0_combout\ : std_logic;
SIGNAL \inst11|Mux6~1_combout\ : std_logic;
SIGNAL \inst11|Mux6~2_combout\ : std_logic;
SIGNAL \inst12|result[1]~212_combout\ : std_logic;
SIGNAL \inst12|_~31_combout\ : std_logic;
SIGNAL \inst22|$00000|auto_generated|result_node[1]~1_combout\ : std_logic;
SIGNAL \inst22|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \inst22|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \inst22|$00000|auto_generated|result_node[4]~4_combout\ : std_logic;
SIGNAL \inst22|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \inst22|$00000|auto_generated|result_node[6]~6_combout\ : std_logic;
SIGNAL \inst22|$00000|auto_generated|result_node[7]~7_combout\ : std_logic;
SIGNAL \inst19|Add0~7_combout\ : std_logic;
SIGNAL \inst19|Add0~8_combout\ : std_logic;
SIGNAL \inst19|Mux7~0_combout\ : std_logic;
SIGNAL \inst19|Mux7~1_combout\ : std_logic;
SIGNAL \inst19|Mux7~2_combout\ : std_logic;
SIGNAL \inst21|Mux15~11_combout\ : std_logic;
SIGNAL \inst19|Regist[7]~0_combout\ : std_logic;
SIGNAL \inst19|Mux0~0_combout\ : std_logic;
SIGNAL \inst19|Mux0~1_combout\ : std_logic;
SIGNAL \inst19|Add0~0_combout\ : std_logic;
SIGNAL \inst19|Add0~1_combout\ : std_logic;
SIGNAL \inst19|Add0~2_combout\ : std_logic;
SIGNAL \inst19|Add0~3_combout\ : std_logic;
SIGNAL \inst19|Add0~4_combout\ : std_logic;
SIGNAL \inst19|Add0~5_combout\ : std_logic;
SIGNAL \inst19|Add0~6_combout\ : std_logic;
SIGNAL \inst19|Add0~9\ : std_logic;
SIGNAL \inst19|Add0~11\ : std_logic;
SIGNAL \inst19|Add0~13\ : std_logic;
SIGNAL \inst19|Add0~15\ : std_logic;
SIGNAL \inst19|Add0~17\ : std_logic;
SIGNAL \inst19|Add0~19\ : std_logic;
SIGNAL \inst19|Add0~21\ : std_logic;
SIGNAL \inst19|Add0~22_combout\ : std_logic;
SIGNAL \inst19|Mux0~2_combout\ : std_logic;
SIGNAL \inst19|Mux1~0_combout\ : std_logic;
SIGNAL \inst19|Add0~20_combout\ : std_logic;
SIGNAL \inst19|Mux1~1_combout\ : std_logic;
SIGNAL \inst19|Mux1~2_combout\ : std_logic;
SIGNAL \inst19|Add0~18_combout\ : std_logic;
SIGNAL \inst19|Mux2~0_combout\ : std_logic;
SIGNAL \inst19|Mux2~1_combout\ : std_logic;
SIGNAL \inst19|Mux2~2_combout\ : std_logic;
SIGNAL \inst19|Add0~16_combout\ : std_logic;
SIGNAL \inst19|Mux3~0_combout\ : std_logic;
SIGNAL \inst19|Mux3~1_combout\ : std_logic;
SIGNAL \inst19|Mux3~2_combout\ : std_logic;
SIGNAL \inst19|Add0~14_combout\ : std_logic;
SIGNAL \inst19|Mux4~0_combout\ : std_logic;
SIGNAL \inst19|Mux4~1_combout\ : std_logic;
SIGNAL \inst19|Mux4~2_combout\ : std_logic;
SIGNAL \inst19|Add0~12_combout\ : std_logic;
SIGNAL \inst19|Mux5~0_combout\ : std_logic;
SIGNAL \inst19|Mux5~1_combout\ : std_logic;
SIGNAL \inst19|Mux5~2_combout\ : std_logic;
SIGNAL \inst19|Add0~10_combout\ : std_logic;
SIGNAL \inst19|Mux6~0_combout\ : std_logic;
SIGNAL \inst19|Mux6~1_combout\ : std_logic;
SIGNAL \inst19|Mux6~2_combout\ : std_logic;
SIGNAL \inst12|result[1]~214_combout\ : std_logic;
SIGNAL \inst12|result[1]~221_combout\ : std_logic;
SIGNAL \inst18|Add0~6_combout\ : std_logic;
SIGNAL \inst18|Add0~9\ : std_logic;
SIGNAL \inst18|Add0~10_combout\ : std_logic;
SIGNAL \inst18|Mux6~0_combout\ : std_logic;
SIGNAL \inst18|Mux6~1_combout\ : std_logic;
SIGNAL \inst18|Mux6~2_combout\ : std_logic;
SIGNAL \inst21|Mux15~6_combout\ : std_logic;
SIGNAL \inst18|Regist[7]~0_combout\ : std_logic;
SIGNAL \inst18|Mux7~1_combout\ : std_logic;
SIGNAL \inst18|Mux7~2_combout\ : std_logic;
SIGNAL \inst18|Mux0~0_combout\ : std_logic;
SIGNAL \inst18|Mux0~1_combout\ : std_logic;
SIGNAL \inst18|Add0~0_combout\ : std_logic;
SIGNAL \inst18|Add0~1_combout\ : std_logic;
SIGNAL \inst18|Add0~2_combout\ : std_logic;
SIGNAL \inst18|Add0~3_combout\ : std_logic;
SIGNAL \inst18|Add0~4_combout\ : std_logic;
SIGNAL \inst18|Add0~5_combout\ : std_logic;
SIGNAL \inst18|Add0~11\ : std_logic;
SIGNAL \inst18|Add0~13\ : std_logic;
SIGNAL \inst18|Add0~15\ : std_logic;
SIGNAL \inst18|Add0~17\ : std_logic;
SIGNAL \inst18|Add0~19\ : std_logic;
SIGNAL \inst18|Add0~21\ : std_logic;
SIGNAL \inst18|Add0~22_combout\ : std_logic;
SIGNAL \inst18|Mux0~2_combout\ : std_logic;
SIGNAL \inst18|Add0~20_combout\ : std_logic;
SIGNAL \inst18|Mux1~0_combout\ : std_logic;
SIGNAL \inst18|Mux1~1_combout\ : std_logic;
SIGNAL \inst18|Mux1~2_combout\ : std_logic;
SIGNAL \inst18|Add0~18_combout\ : std_logic;
SIGNAL \inst18|Mux2~0_combout\ : std_logic;
SIGNAL \inst18|Mux2~1_combout\ : std_logic;
SIGNAL \inst18|Mux2~2_combout\ : std_logic;
SIGNAL \inst18|Add0~16_combout\ : std_logic;
SIGNAL \inst18|Mux3~0_combout\ : std_logic;
SIGNAL \inst18|Mux3~1_combout\ : std_logic;
SIGNAL \inst18|Mux3~2_combout\ : std_logic;
SIGNAL \inst18|Add0~14_combout\ : std_logic;
SIGNAL \inst18|Mux4~0_combout\ : std_logic;
SIGNAL \inst18|Mux4~1_combout\ : std_logic;
SIGNAL \inst18|Mux4~2_combout\ : std_logic;
SIGNAL \inst18|Add0~12_combout\ : std_logic;
SIGNAL \inst18|Mux5~0_combout\ : std_logic;
SIGNAL \inst18|Mux5~1_combout\ : std_logic;
SIGNAL \inst18|Mux5~2_combout\ : std_logic;
SIGNAL \inst12|result[2]~204_combout\ : std_logic;
SIGNAL \inst12|result[2]~203_combout\ : std_logic;
SIGNAL \inst12|result[2]~237_combout\ : std_logic;
SIGNAL \inst12|result[2]~202_combout\ : std_logic;
SIGNAL \inst12|result[2]~205_combout\ : std_logic;
SIGNAL \inst12|result[2]~206_combout\ : std_logic;
SIGNAL \inst12|result[2]~207_combout\ : std_logic;
SIGNAL \inst12|result[2]~208_combout\ : std_logic;
SIGNAL \inst12|result[2]~209_combout\ : std_logic;
SIGNAL \inst12|result[2]~210_combout\ : std_logic;
SIGNAL \inst12|result[2]~211_combout\ : std_logic;
SIGNAL \inst15|$00000|auto_generated|result_node[2]~5_combout\ : std_logic;
SIGNAL \inst6|Add0~10_combout\ : std_logic;
SIGNAL \inst6|Add0~11_combout\ : std_logic;
SIGNAL \dataA[1]~input_o\ : std_logic;
SIGNAL \inst6|Add0~13_combout\ : std_logic;
SIGNAL \inst6|Add0~14_combout\ : std_logic;
SIGNAL \inst6|Add0~12_combout\ : std_logic;
SIGNAL \dataA[0]~input_o\ : std_logic;
SIGNAL \inst6|Add0~15_combout\ : std_logic;
SIGNAL \inst6|Add0~16_combout\ : std_logic;
SIGNAL \inst6|Add0~17_combout\ : std_logic;
SIGNAL \inst6|Add0~19\ : std_logic;
SIGNAL \inst6|Add0~21\ : std_logic;
SIGNAL \inst6|Add0~22_combout\ : std_logic;
SIGNAL \inst6|Mux5~0_combout\ : std_logic;
SIGNAL \inst6|Mux5~1_combout\ : std_logic;
SIGNAL \inst6|Mux5~2_combout\ : std_logic;
SIGNAL \inst21|Mux15~5_combout\ : std_logic;
SIGNAL \inst6|Regist[7]~3_combout\ : std_logic;
SIGNAL \inst15|$00000|auto_generated|result_node[1]~6_combout\ : std_logic;
SIGNAL \inst6|Add0~20_combout\ : std_logic;
SIGNAL \inst6|Mux6~0_combout\ : std_logic;
SIGNAL \inst6|Mux6~1_combout\ : std_logic;
SIGNAL \inst6|Mux6~2_combout\ : std_logic;
SIGNAL \inst15|$00000|auto_generated|result_node[0]~7_combout\ : std_logic;
SIGNAL \inst6|Mux7~0_combout\ : std_logic;
SIGNAL \inst6|Mux7~1_combout\ : std_logic;
SIGNAL \inst6|Add0~18_combout\ : std_logic;
SIGNAL \inst6|Mux7~2_combout\ : std_logic;
SIGNAL \dataA[7]~input_o\ : std_logic;
SIGNAL \inst15|$00000|auto_generated|result_node[7]~0_combout\ : std_logic;
SIGNAL \inst6|Mux0~1_combout\ : std_logic;
SIGNAL \inst6|Mux0~2_combout\ : std_logic;
SIGNAL \inst6|Add0~0_combout\ : std_logic;
SIGNAL \inst6|Add0~1_combout\ : std_logic;
SIGNAL \dataA[6]~input_o\ : std_logic;
SIGNAL \inst15|$00000|auto_generated|result_node[6]~1_combout\ : std_logic;
SIGNAL \inst6|Add0~3_combout\ : std_logic;
SIGNAL \inst6|Add0~2_combout\ : std_logic;
SIGNAL \inst6|Add0~4_combout\ : std_logic;
SIGNAL \dataA[5]~input_o\ : std_logic;
SIGNAL \inst15|$00000|auto_generated|result_node[5]~2_combout\ : std_logic;
SIGNAL \inst6|Add0~5_combout\ : std_logic;
SIGNAL \inst6|Add0~6_combout\ : std_logic;
SIGNAL \dataA[4]~input_o\ : std_logic;
SIGNAL \inst15|$00000|auto_generated|result_node[4]~3_combout\ : std_logic;
SIGNAL \inst6|Add0~7_combout\ : std_logic;
SIGNAL \dataA[3]~input_o\ : std_logic;
SIGNAL \inst15|$00000|auto_generated|result_node[3]~4_combout\ : std_logic;
SIGNAL \inst6|Add0~9_combout\ : std_logic;
SIGNAL \inst6|Add0~8_combout\ : std_logic;
SIGNAL \inst6|Add0~23\ : std_logic;
SIGNAL \inst6|Add0~25\ : std_logic;
SIGNAL \inst6|Add0~27\ : std_logic;
SIGNAL \inst6|Add0~29\ : std_logic;
SIGNAL \inst6|Add0~31\ : std_logic;
SIGNAL \inst6|Add0~32_combout\ : std_logic;
SIGNAL \inst6|Mux0~3_combout\ : std_logic;
SIGNAL \inst6|Mux1~0_combout\ : std_logic;
SIGNAL \inst6|Add0~30_combout\ : std_logic;
SIGNAL \inst6|Mux1~1_combout\ : std_logic;
SIGNAL \inst6|Mux1~2_combout\ : std_logic;
SIGNAL \inst6|Mux2~0_combout\ : std_logic;
SIGNAL \inst6|Add0~28_combout\ : std_logic;
SIGNAL \inst6|Mux2~1_combout\ : std_logic;
SIGNAL \inst6|Mux2~2_combout\ : std_logic;
SIGNAL \inst6|Add0~26_combout\ : std_logic;
SIGNAL \inst6|Mux3~0_combout\ : std_logic;
SIGNAL \inst6|Mux3~1_combout\ : std_logic;
SIGNAL \inst6|Mux3~2_combout\ : std_logic;
SIGNAL \inst6|Add0~24_combout\ : std_logic;
SIGNAL \inst6|Mux4~0_combout\ : std_logic;
SIGNAL \inst6|Mux4~1_combout\ : std_logic;
SIGNAL \inst6|Mux4~2_combout\ : std_logic;
SIGNAL \inst12|result[3]~236_combout\ : std_logic;
SIGNAL \inst12|result[3]~194_combout\ : std_logic;
SIGNAL \inst12|result[3]~192_combout\ : std_logic;
SIGNAL \inst12|result[3]~193_combout\ : std_logic;
SIGNAL \inst12|result[3]~195_combout\ : std_logic;
SIGNAL \inst12|result[3]~196_combout\ : std_logic;
SIGNAL \inst12|result[3]~197_combout\ : std_logic;
SIGNAL \inst12|result[3]~199_combout\ : std_logic;
SIGNAL \inst12|result[3]~198_combout\ : std_logic;
SIGNAL \inst12|result[3]~200_combout\ : std_logic;
SIGNAL \inst12|result[3]~201_combout\ : std_logic;
SIGNAL \inst200|$00000|auto_generated|result_node[3]~4_combout\ : std_logic;
SIGNAL \inst5|Add0~8_combout\ : std_logic;
SIGNAL \inst5|Add0~9_combout\ : std_logic;
SIGNAL \inst5|Add0~10_combout\ : std_logic;
SIGNAL \dataB[2]~input_o\ : std_logic;
SIGNAL \inst200|$00000|auto_generated|result_node[2]~5_combout\ : std_logic;
SIGNAL \inst5|Add0~11_combout\ : std_logic;
SIGNAL \dataB[1]~input_o\ : std_logic;
SIGNAL \inst5|Add0~13_combout\ : std_logic;
SIGNAL \inst5|Add0~14_combout\ : std_logic;
SIGNAL \inst5|Add0~12_combout\ : std_logic;
SIGNAL \inst5|Add0~17_combout\ : std_logic;
SIGNAL \dataB[0]~input_o\ : std_logic;
SIGNAL \inst5|Add0~15_combout\ : std_logic;
SIGNAL \inst5|Add0~16_combout\ : std_logic;
SIGNAL \inst5|Add0~19\ : std_logic;
SIGNAL \inst5|Add0~21\ : std_logic;
SIGNAL \inst5|Add0~23\ : std_logic;
SIGNAL \inst5|Add0~24_combout\ : std_logic;
SIGNAL \inst5|Mux4~0_combout\ : std_logic;
SIGNAL \inst5|Mux4~1_combout\ : std_logic;
SIGNAL \inst5|Mux4~2_combout\ : std_logic;
SIGNAL \inst21|Mux15~8_combout\ : std_logic;
SIGNAL \inst5|Regist[7]~0_combout\ : std_logic;
SIGNAL \inst5|Add0~22_combout\ : std_logic;
SIGNAL \inst5|Mux5~0_combout\ : std_logic;
SIGNAL \inst5|Mux5~1_combout\ : std_logic;
SIGNAL \inst5|Mux5~2_combout\ : std_logic;
SIGNAL \inst200|$00000|auto_generated|result_node[1]~6_combout\ : std_logic;
SIGNAL \inst5|Add0~20_combout\ : std_logic;
SIGNAL \inst5|Mux6~0_combout\ : std_logic;
SIGNAL \inst5|Mux6~1_combout\ : std_logic;
SIGNAL \inst5|Mux6~2_combout\ : std_logic;
SIGNAL \inst200|$00000|auto_generated|result_node[0]~7_combout\ : std_logic;
SIGNAL \inst5|Mux7~0_combout\ : std_logic;
SIGNAL \inst5|Mux7~1_combout\ : std_logic;
SIGNAL \inst5|Add0~18_combout\ : std_logic;
SIGNAL \inst5|Mux7~2_combout\ : std_logic;
SIGNAL \dataB[7]~input_o\ : std_logic;
SIGNAL \inst200|$00000|auto_generated|result_node[7]~0_combout\ : std_logic;
SIGNAL \inst5|Mux0~0_combout\ : std_logic;
SIGNAL \inst5|Mux0~1_combout\ : std_logic;
SIGNAL \inst5|Add0~0_combout\ : std_logic;
SIGNAL \inst5|Add0~1_combout\ : std_logic;
SIGNAL \inst5|Add0~2_combout\ : std_logic;
SIGNAL \dataB[6]~input_o\ : std_logic;
SIGNAL \inst200|$00000|auto_generated|result_node[6]~1_combout\ : std_logic;
SIGNAL \inst5|Add0~3_combout\ : std_logic;
SIGNAL \inst5|Add0~4_combout\ : std_logic;
SIGNAL \dataB[5]~input_o\ : std_logic;
SIGNAL \inst200|$00000|auto_generated|result_node[5]~2_combout\ : std_logic;
SIGNAL \inst5|Add0~5_combout\ : std_logic;
SIGNAL \inst5|Add0~6_combout\ : std_logic;
SIGNAL \dataB[4]~input_o\ : std_logic;
SIGNAL \inst200|$00000|auto_generated|result_node[4]~3_combout\ : std_logic;
SIGNAL \inst5|Add0~7_combout\ : std_logic;
SIGNAL \inst5|Add0~25\ : std_logic;
SIGNAL \inst5|Add0~27\ : std_logic;
SIGNAL \inst5|Add0~29\ : std_logic;
SIGNAL \inst5|Add0~31\ : std_logic;
SIGNAL \inst5|Add0~32_combout\ : std_logic;
SIGNAL \inst5|Mux0~2_combout\ : std_logic;
SIGNAL \inst5|Mux1~0_combout\ : std_logic;
SIGNAL \inst5|Add0~30_combout\ : std_logic;
SIGNAL \inst5|Mux1~1_combout\ : std_logic;
SIGNAL \inst5|Mux1~2_combout\ : std_logic;
SIGNAL \inst5|Mux2~0_combout\ : std_logic;
SIGNAL \inst5|Add0~28_combout\ : std_logic;
SIGNAL \inst5|Mux2~1_combout\ : std_logic;
SIGNAL \inst5|Mux2~2_combout\ : std_logic;
SIGNAL \inst5|Add0~26_combout\ : std_logic;
SIGNAL \inst5|Mux3~0_combout\ : std_logic;
SIGNAL \inst5|Mux3~1_combout\ : std_logic;
SIGNAL \inst5|Mux3~2_combout\ : std_logic;
SIGNAL \inst12|result[4]~186_combout\ : std_logic;
SIGNAL \inst12|result[4]~183_combout\ : std_logic;
SIGNAL \inst12|result[4]~184_combout\ : std_logic;
SIGNAL \inst12|result[4]~182_combout\ : std_logic;
SIGNAL \inst12|result[4]~235_combout\ : std_logic;
SIGNAL \inst12|result[4]~185_combout\ : std_logic;
SIGNAL \inst12|result[4]~187_combout\ : std_logic;
SIGNAL \inst12|result[4]~189_combout\ : std_logic;
SIGNAL \inst12|result[4]~188_combout\ : std_logic;
SIGNAL \inst12|result[4]~190_combout\ : std_logic;
SIGNAL \inst12|result[4]~191_combout\ : std_logic;
SIGNAL \inst14|Add0~3_combout\ : std_logic;
SIGNAL \inst14|Add0~4_combout\ : std_logic;
SIGNAL \inst14|Add0~5_combout\ : std_logic;
SIGNAL \inst14|Add0~6_combout\ : std_logic;
SIGNAL \inst14|Add0~7_combout\ : std_logic;
SIGNAL \inst14|Add0~9\ : std_logic;
SIGNAL \inst14|Add0~11\ : std_logic;
SIGNAL \inst14|Add0~13\ : std_logic;
SIGNAL \inst14|Add0~15\ : std_logic;
SIGNAL \inst14|Add0~16_combout\ : std_logic;
SIGNAL \inst14|Mux3~0_combout\ : std_logic;
SIGNAL \inst14|Mux3~1_combout\ : std_logic;
SIGNAL \inst14|Mux3~2_combout\ : std_logic;
SIGNAL \inst21|Mux15~10_combout\ : std_logic;
SIGNAL \inst14|Regist[7]~0_combout\ : std_logic;
SIGNAL \inst14|Add0~14_combout\ : std_logic;
SIGNAL \inst14|Mux4~0_combout\ : std_logic;
SIGNAL \inst14|Mux4~1_combout\ : std_logic;
SIGNAL \inst14|Mux4~2_combout\ : std_logic;
SIGNAL \inst14|Add0~12_combout\ : std_logic;
SIGNAL \inst14|Mux5~0_combout\ : std_logic;
SIGNAL \inst14|Mux5~1_combout\ : std_logic;
SIGNAL \inst14|Mux5~2_combout\ : std_logic;
SIGNAL \inst14|Add0~10_combout\ : std_logic;
SIGNAL \inst14|Mux6~0_combout\ : std_logic;
SIGNAL \inst14|Mux6~1_combout\ : std_logic;
SIGNAL \inst14|Mux6~2_combout\ : std_logic;
SIGNAL \inst14|Mux7~0_combout\ : std_logic;
SIGNAL \inst14|Mux7~1_combout\ : std_logic;
SIGNAL \inst14|Add0~8_combout\ : std_logic;
SIGNAL \inst14|Mux7~2_combout\ : std_logic;
SIGNAL \inst14|Mux0~0_combout\ : std_logic;
SIGNAL \inst14|Mux0~1_combout\ : std_logic;
SIGNAL \inst14|Add0~0_combout\ : std_logic;
SIGNAL \inst14|Add0~1_combout\ : std_logic;
SIGNAL \inst14|Add0~2_combout\ : std_logic;
SIGNAL \inst14|Add0~17\ : std_logic;
SIGNAL \inst14|Add0~19\ : std_logic;
SIGNAL \inst14|Add0~21\ : std_logic;
SIGNAL \inst14|Add0~22_combout\ : std_logic;
SIGNAL \inst14|Mux0~2_combout\ : std_logic;
SIGNAL \inst14|Add0~20_combout\ : std_logic;
SIGNAL \inst14|Mux1~0_combout\ : std_logic;
SIGNAL \inst14|Mux1~1_combout\ : std_logic;
SIGNAL \inst14|Mux1~2_combout\ : std_logic;
SIGNAL \inst14|Add0~18_combout\ : std_logic;
SIGNAL \inst14|Mux2~0_combout\ : std_logic;
SIGNAL \inst14|Mux2~1_combout\ : std_logic;
SIGNAL \inst14|Mux2~2_combout\ : std_logic;
SIGNAL \inst12|result[5]~177_combout\ : std_logic;
SIGNAL \inst12|result[5]~234_combout\ : std_logic;
SIGNAL \inst12|result[5]~172_combout\ : std_logic;
SIGNAL \inst12|result[5]~174_combout\ : std_logic;
SIGNAL \inst12|result[5]~173_combout\ : std_logic;
SIGNAL \inst12|result[5]~175_combout\ : std_logic;
SIGNAL \inst12|result[5]~176_combout\ : std_logic;
SIGNAL \inst12|result[5]~179_combout\ : std_logic;
SIGNAL \inst12|result[5]~178_combout\ : std_logic;
SIGNAL \inst12|result[5]~180_combout\ : std_logic;
SIGNAL \inst12|result[5]~181_combout\ : std_logic;
SIGNAL \inst13|$00000|auto_generated|result_node[5]~2_combout\ : std_logic;
SIGNAL \inst1|Add0~5_combout\ : std_logic;
SIGNAL \inst1|Add0~4_combout\ : std_logic;
SIGNAL \inst13|$00000|auto_generated|result_node[4]~3_combout\ : std_logic;
SIGNAL \inst1|Add0~7_combout\ : std_logic;
SIGNAL \inst1|Add0~6_combout\ : std_logic;
SIGNAL \inst13|$00000|auto_generated|result_node[3]~4_combout\ : std_logic;
SIGNAL \inst1|Add0~9_combout\ : std_logic;
SIGNAL \inst1|Add0~8_combout\ : std_logic;
SIGNAL \inst13|$00000|auto_generated|result_node[2]~5_combout\ : std_logic;
SIGNAL \inst1|Add0~11_combout\ : std_logic;
SIGNAL \inst1|Add0~10_combout\ : std_logic;
SIGNAL \inst1|Add0~13_combout\ : std_logic;
SIGNAL \inst1|Add0~14_combout\ : std_logic;
SIGNAL \inst1|Add0~12_combout\ : std_logic;
SIGNAL \inst1|Add0~17_combout\ : std_logic;
SIGNAL \inst1|Add0~15_combout\ : std_logic;
SIGNAL \inst1|Add0~16_combout\ : std_logic;
SIGNAL \inst1|Add0~19\ : std_logic;
SIGNAL \inst1|Add0~21\ : std_logic;
SIGNAL \inst1|Add0~23\ : std_logic;
SIGNAL \inst1|Add0~25\ : std_logic;
SIGNAL \inst1|Add0~27\ : std_logic;
SIGNAL \inst1|Add0~29\ : std_logic;
SIGNAL \inst1|Add0~30_combout\ : std_logic;
SIGNAL \inst1|Mux1~1_combout\ : std_logic;
SIGNAL \inst1|Mux1~2_combout\ : std_logic;
SIGNAL \inst21|Mux15~3_combout\ : std_logic;
SIGNAL \inst1|Regist[7]~0_combout\ : std_logic;
SIGNAL \inst1|Mux2~0_combout\ : std_logic;
SIGNAL \inst1|Add0~28_combout\ : std_logic;
SIGNAL \inst1|Mux2~1_combout\ : std_logic;
SIGNAL \inst1|Mux2~2_combout\ : std_logic;
SIGNAL \inst1|Mux3~0_combout\ : std_logic;
SIGNAL \inst1|Add0~26_combout\ : std_logic;
SIGNAL \inst1|Mux3~1_combout\ : std_logic;
SIGNAL \inst1|Mux3~2_combout\ : std_logic;
SIGNAL \inst1|Add0~24_combout\ : std_logic;
SIGNAL \inst1|Mux4~0_combout\ : std_logic;
SIGNAL \inst1|Mux4~1_combout\ : std_logic;
SIGNAL \inst1|Mux4~2_combout\ : std_logic;
SIGNAL \inst1|Add0~22_combout\ : std_logic;
SIGNAL \inst1|Mux5~0_combout\ : std_logic;
SIGNAL \inst1|Mux5~1_combout\ : std_logic;
SIGNAL \inst1|Mux5~2_combout\ : std_logic;
SIGNAL \inst13|$00000|auto_generated|result_node[1]~6_combout\ : std_logic;
SIGNAL \inst1|Add0~20_combout\ : std_logic;
SIGNAL \inst1|Mux6~0_combout\ : std_logic;
SIGNAL \inst1|Mux6~1_combout\ : std_logic;
SIGNAL \inst1|Mux6~2_combout\ : std_logic;
SIGNAL \inst13|$00000|auto_generated|result_node[0]~7_combout\ : std_logic;
SIGNAL \inst1|Mux7~0_combout\ : std_logic;
SIGNAL \inst1|Mux7~1_combout\ : std_logic;
SIGNAL \inst1|Add0~18_combout\ : std_logic;
SIGNAL \inst1|Mux7~2_combout\ : std_logic;
SIGNAL \inst22|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst23|$00000|auto_generated|result_node[5]~2_combout\ : std_logic;
SIGNAL \inst7|Mux2~0_combout\ : std_logic;
SIGNAL \inst7|Add0~5_combout\ : std_logic;
SIGNAL \inst7|Add0~4_combout\ : std_logic;
SIGNAL \inst23|$00000|auto_generated|result_node[4]~3_combout\ : std_logic;
SIGNAL \inst7|Add0~7_combout\ : std_logic;
SIGNAL \inst7|Add0~6_combout\ : std_logic;
SIGNAL \inst7|Add0~8_combout\ : std_logic;
SIGNAL \inst23|$00000|auto_generated|result_node[3]~4_combout\ : std_logic;
SIGNAL \inst7|Add0~9_combout\ : std_logic;
SIGNAL \inst23|$00000|auto_generated|result_node[2]~5_combout\ : std_logic;
SIGNAL \inst7|Add0~11_combout\ : std_logic;
SIGNAL \inst7|Add0~10_combout\ : std_logic;
SIGNAL \inst7|Add0~13_combout\ : std_logic;
SIGNAL \inst7|Add0~14_combout\ : std_logic;
SIGNAL \inst7|Add0~12_combout\ : std_logic;
SIGNAL \inst7|Add0~16_combout\ : std_logic;
SIGNAL \inst7|Add0~15_combout\ : std_logic;
SIGNAL \inst7|Add0~18\ : std_logic;
SIGNAL \inst7|Add0~20\ : std_logic;
SIGNAL \inst7|Add0~22\ : std_logic;
SIGNAL \inst7|Add0~24\ : std_logic;
SIGNAL \inst7|Add0~26\ : std_logic;
SIGNAL \inst7|Add0~27_combout\ : std_logic;
SIGNAL \inst7|Mux2~1_combout\ : std_logic;
SIGNAL \inst7|Mux2~2_combout\ : std_logic;
SIGNAL \inst21|Mux15~9_combout\ : std_logic;
SIGNAL \inst7|Regist[7]~0_combout\ : std_logic;
SIGNAL \inst7|Add0~25_combout\ : std_logic;
SIGNAL \inst7|Mux3~0_combout\ : std_logic;
SIGNAL \inst7|Mux3~1_combout\ : std_logic;
SIGNAL \inst7|Mux3~2_combout\ : std_logic;
SIGNAL \inst7|Add0~23_combout\ : std_logic;
SIGNAL \inst7|Mux4~0_combout\ : std_logic;
SIGNAL \inst7|Mux4~1_combout\ : std_logic;
SIGNAL \inst7|Mux4~2_combout\ : std_logic;
SIGNAL \inst7|Add0~21_combout\ : std_logic;
SIGNAL \inst7|Mux5~0_combout\ : std_logic;
SIGNAL \inst7|Mux5~1_combout\ : std_logic;
SIGNAL \inst7|Mux5~2_combout\ : std_logic;
SIGNAL \inst23|$00000|auto_generated|result_node[1]~6_combout\ : std_logic;
SIGNAL \inst7|Add0~19_combout\ : std_logic;
SIGNAL \inst7|Mux6~0_combout\ : std_logic;
SIGNAL \inst7|Mux6~1_combout\ : std_logic;
SIGNAL \inst7|Mux6~2_combout\ : std_logic;
SIGNAL \inst23|$00000|auto_generated|result_node[0]~7_combout\ : std_logic;
SIGNAL \inst7|Mux7~0_combout\ : std_logic;
SIGNAL \inst7|Mux7~1_combout\ : std_logic;
SIGNAL \inst7|Add0~17_combout\ : std_logic;
SIGNAL \inst7|Mux7~2_combout\ : std_logic;
SIGNAL \inst23|$00000|auto_generated|result_node[7]~0_combout\ : std_logic;
SIGNAL \inst7|Mux0~0_combout\ : std_logic;
SIGNAL \inst7|Mux0~1_combout\ : std_logic;
SIGNAL \inst7|Add0~0_combout\ : std_logic;
SIGNAL \inst7|Add0~1_combout\ : std_logic;
SIGNAL \inst23|$00000|auto_generated|result_node[6]~1_combout\ : std_logic;
SIGNAL \inst7|Add0~3_combout\ : std_logic;
SIGNAL \inst7|Add0~2_combout\ : std_logic;
SIGNAL \inst7|Add0~28\ : std_logic;
SIGNAL \inst7|Add0~30\ : std_logic;
SIGNAL \inst7|Add0~31_combout\ : std_logic;
SIGNAL \inst7|Mux0~2_combout\ : std_logic;
SIGNAL \inst7|Mux1~0_combout\ : std_logic;
SIGNAL \inst7|Add0~29_combout\ : std_logic;
SIGNAL \inst7|Mux1~1_combout\ : std_logic;
SIGNAL \inst7|Mux1~2_combout\ : std_logic;
SIGNAL \inst12|result[6]~167_combout\ : std_logic;
SIGNAL \inst12|result[6]~164_combout\ : std_logic;
SIGNAL \inst12|result[6]~233_combout\ : std_logic;
SIGNAL \inst12|result[6]~162_combout\ : std_logic;
SIGNAL \inst12|result[6]~163_combout\ : std_logic;
SIGNAL \inst12|result[6]~165_combout\ : std_logic;
SIGNAL \inst12|result[6]~166_combout\ : std_logic;
SIGNAL \inst12|result[6]~169_combout\ : std_logic;
SIGNAL \inst12|result[6]~168_combout\ : std_logic;
SIGNAL \inst12|result[6]~170_combout\ : std_logic;
SIGNAL \inst12|result[6]~171_combout\ : std_logic;
SIGNAL \inst13|$00000|auto_generated|result_node[6]~1_combout\ : std_logic;
SIGNAL \inst1|Add0~3_combout\ : std_logic;
SIGNAL \inst1|Add0~31\ : std_logic;
SIGNAL \inst1|Add0~32_combout\ : std_logic;
SIGNAL \inst1|Mux0~0_combout\ : std_logic;
SIGNAL \inst1|Mux0~1_combout\ : std_logic;
SIGNAL \inst1|Mux0~2_combout\ : std_logic;
SIGNAL \inst12|result[7]~153_combout\ : std_logic;
SIGNAL \inst12|result[7]~152_combout\ : std_logic;
SIGNAL \inst12|result[7]~232_combout\ : std_logic;
SIGNAL \inst12|result[7]~154_combout\ : std_logic;
SIGNAL \inst12|result[7]~155_combout\ : std_logic;
SIGNAL \inst12|result[7]~156_combout\ : std_logic;
SIGNAL \inst12|result[7]~157_combout\ : std_logic;
SIGNAL \inst12|result[7]~159_combout\ : std_logic;
SIGNAL \inst12|result[7]~158_combout\ : std_logic;
SIGNAL \inst12|result[7]~160_combout\ : std_logic;
SIGNAL \inst12|result[7]~161_combout\ : std_logic;
SIGNAL \inst17|Mux0~0_combout\ : std_logic;
SIGNAL \inst17|Mux0~1_combout\ : std_logic;
SIGNAL \inst17|Add0~0_combout\ : std_logic;
SIGNAL \inst17|Add0~1_combout\ : std_logic;
SIGNAL \inst17|Add0~2_combout\ : std_logic;
SIGNAL \inst17|Add0~3_combout\ : std_logic;
SIGNAL \inst17|Add0~4_combout\ : std_logic;
SIGNAL \inst17|Add0~5_combout\ : std_logic;
SIGNAL \inst17|Add0~6_combout\ : std_logic;
SIGNAL \inst17|Add0~7_combout\ : std_logic;
SIGNAL \inst17|Add0~9\ : std_logic;
SIGNAL \inst17|Add0~11\ : std_logic;
SIGNAL \inst17|Add0~13\ : std_logic;
SIGNAL \inst17|Add0~15\ : std_logic;
SIGNAL \inst17|Add0~17\ : std_logic;
SIGNAL \inst17|Add0~19\ : std_logic;
SIGNAL \inst17|Add0~21\ : std_logic;
SIGNAL \inst17|Add0~22_combout\ : std_logic;
SIGNAL \inst17|Mux0~2_combout\ : std_logic;
SIGNAL \inst21|Mux15~1_combout\ : std_logic;
SIGNAL \inst17|Regist[7]~0_combout\ : std_logic;
SIGNAL \inst17|Add0~20_combout\ : std_logic;
SIGNAL \inst17|Mux1~0_combout\ : std_logic;
SIGNAL \inst17|Mux1~1_combout\ : std_logic;
SIGNAL \inst17|Mux1~2_combout\ : std_logic;
SIGNAL \inst17|Add0~18_combout\ : std_logic;
SIGNAL \inst17|Mux2~0_combout\ : std_logic;
SIGNAL \inst17|Mux2~1_combout\ : std_logic;
SIGNAL \inst17|Mux2~2_combout\ : std_logic;
SIGNAL \inst17|Add0~16_combout\ : std_logic;
SIGNAL \inst17|Mux3~0_combout\ : std_logic;
SIGNAL \inst17|Mux3~1_combout\ : std_logic;
SIGNAL \inst17|Mux3~2_combout\ : std_logic;
SIGNAL \inst17|Add0~14_combout\ : std_logic;
SIGNAL \inst17|Mux4~0_combout\ : std_logic;
SIGNAL \inst17|Mux4~1_combout\ : std_logic;
SIGNAL \inst17|Mux4~2_combout\ : std_logic;
SIGNAL \inst17|Add0~12_combout\ : std_logic;
SIGNAL \inst17|Mux5~0_combout\ : std_logic;
SIGNAL \inst17|Mux5~1_combout\ : std_logic;
SIGNAL \inst17|Mux5~2_combout\ : std_logic;
SIGNAL \inst17|Add0~10_combout\ : std_logic;
SIGNAL \inst17|Mux6~0_combout\ : std_logic;
SIGNAL \inst17|Mux6~1_combout\ : std_logic;
SIGNAL \inst17|Mux6~2_combout\ : std_logic;
SIGNAL \inst17|Mux7~0_combout\ : std_logic;
SIGNAL \inst17|Mux7~1_combout\ : std_logic;
SIGNAL \inst17|Add0~8_combout\ : std_logic;
SIGNAL \inst17|Mux7~2_combout\ : std_logic;
SIGNAL \inst12|result[0]~222_combout\ : std_logic;
SIGNAL \inst12|result[0]~239_combout\ : std_logic;
SIGNAL \inst12|result[0]~224_combout\ : std_logic;
SIGNAL \inst12|result[0]~223_combout\ : std_logic;
SIGNAL \inst12|result[0]~225_combout\ : std_logic;
SIGNAL \inst12|result[0]~227_combout\ : std_logic;
SIGNAL \inst12|result[0]~226_combout\ : std_logic;
SIGNAL \inst12|result[0]~229_combout\ : std_logic;
SIGNAL \inst12|result[0]~228_combout\ : std_logic;
SIGNAL \inst12|result[0]~230_combout\ : std_logic;
SIGNAL \inst12|result[0]~231_combout\ : std_logic;
SIGNAL \inst8|Add0~0_combout\ : std_logic;
SIGNAL \inst8|Add0~2_combout\ : std_logic;
SIGNAL \inst8|Mux7~0_combout\ : std_logic;
SIGNAL \inst8|Mux7~1_combout\ : std_logic;
SIGNAL \inst8|Mux7~3_combout\ : std_logic;
SIGNAL \inst8|Mux0~0_combout\ : std_logic;
SIGNAL \inst8|Mux0~1_combout\ : std_logic;
SIGNAL \inst8|Add0~29_combout\ : std_logic;
SIGNAL \inst8|Add0~24_combout\ : std_logic;
SIGNAL \inst8|Add0~20_combout\ : std_logic;
SIGNAL \inst8|Add0~19\ : std_logic;
SIGNAL \inst8|Add0~23\ : std_logic;
SIGNAL \inst8|Add0~27\ : std_logic;
SIGNAL \inst8|Add0~30_combout\ : std_logic;
SIGNAL \inst8|Mux0~2_combout\ : std_logic;
SIGNAL \inst8|Mux1~0_combout\ : std_logic;
SIGNAL \inst8|Add0~26_combout\ : std_logic;
SIGNAL \inst8|Mux1~1_combout\ : std_logic;
SIGNAL \inst8|Mux1~2_combout\ : std_logic;
SIGNAL \inst8|Add0~22_combout\ : std_logic;
SIGNAL \inst8|Mux2~0_combout\ : std_logic;
SIGNAL \inst8|Mux2~1_combout\ : std_logic;
SIGNAL \inst8|Mux2~2_combout\ : std_logic;
SIGNAL \inst25|ROM~0_combout\ : std_logic;
SIGNAL \inst25|ROM~1_combout\ : std_logic;
SIGNAL \inst25|data_out[6]~feeder_combout\ : std_logic;
SIGNAL \inst25|data_out[5]~feeder_combout\ : std_logic;
SIGNAL \inst25|data_out[0]~feeder_combout\ : std_logic;
SIGNAL \inst6|Regist\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst18|Regist\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst17|Regist\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst25|data_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst8|Regist\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|Regist\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst9|Regist\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst10|Regist\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst11|Regist\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst5|Regist\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst7|Regist\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst14|Regist\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst19|Regist\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst20|Regist\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|Regist\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst4|Regist\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst3|Regist\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst24|ALU_Result\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_CLR~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

cacheOut <= ww_cacheOut;
ww_CLK <= CLK;
ww_CLR <= CLR;
ww_EnDec <= EnDec;
ww_SelRegD <= SelRegD;
ww_MUX_A <= MUX_A;
ww_dataA <= dataA;
ww_SelBus <= SelBus;
ww_MUX_B <= MUX_B;
ww_dataB <= dataB;
ww_AluSel <= AluSel;
ww_WR <= WR;
ww_MUX_RAM <= MUX_RAM;
ww_MUX_MAR <= MUX_MAR;
ww_MUX_MDR <= MUX_MDR;
ww_muxSel <= muxSel;
Outd <= ww_Outd;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \inst7|Regist\(7) & \inst7|Regist\(6) & \inst7|Regist\(5) & \inst7|Regist\(4) & \inst7|Regist\(3) & 
\inst7|Regist\(2) & \inst7|Regist\(1) & \inst7|Regist\(0));

\inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst22|$00000|auto_generated|result_node[7]~7_combout\ & \inst22|$00000|auto_generated|result_node[6]~6_combout\ & \inst22|$00000|auto_generated|result_node[5]~5_combout\ & 
\inst22|$00000|auto_generated|result_node[4]~4_combout\ & \inst22|$00000|auto_generated|result_node[3]~3_combout\ & \inst22|$00000|auto_generated|result_node[2]~2_combout\ & \inst22|$00000|auto_generated|result_node[1]~1_combout\ & 
\inst22|$00000|auto_generated|result_node[0]~0_combout\);

\inst|altsyncram_component|auto_generated|q_a\(0) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst|altsyncram_component|auto_generated|q_a\(1) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst|altsyncram_component|auto_generated|q_a\(2) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst|altsyncram_component|auto_generated|q_a\(3) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\inst|altsyncram_component|auto_generated|q_a\(4) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\inst|altsyncram_component|auto_generated|q_a\(5) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\inst|altsyncram_component|auto_generated|q_a\(6) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\inst|altsyncram_component|auto_generated|q_a\(7) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\inst24|Mux17~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst24|Mux17~0_combout\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);

\CLR~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLR~input_o\);
\ALT_INV_CLR~inputclkctrl_outclk\ <= NOT \CLR~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y44_N20
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

-- Location: IOOBUF_X78_Y16_N9
\cacheOut[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \cacheOut[7]~output_o\);

-- Location: IOOBUF_X46_Y54_N16
\cacheOut[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst25|data_out\(6),
	devoe => ww_devoe,
	o => \cacheOut[6]~output_o\);

-- Location: IOOBUF_X36_Y39_N16
\cacheOut[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst25|data_out\(5),
	devoe => ww_devoe,
	o => \cacheOut[5]~output_o\);

-- Location: IOOBUF_X56_Y54_N23
\cacheOut[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \cacheOut[4]~output_o\);

-- Location: IOOBUF_X66_Y54_N16
\cacheOut[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \cacheOut[3]~output_o\);

-- Location: IOOBUF_X66_Y54_N23
\cacheOut[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \cacheOut[2]~output_o\);

-- Location: IOOBUF_X29_Y0_N30
\cacheOut[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \cacheOut[1]~output_o\);

-- Location: IOOBUF_X40_Y0_N30
\cacheOut[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst25|data_out\(0),
	devoe => ww_devoe,
	o => \cacheOut[0]~output_o\);

-- Location: IOOBUF_X24_Y39_N16
\Outd[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|result[7]~161_combout\,
	devoe => ww_devoe,
	o => \Outd[7]~output_o\);

-- Location: IOOBUF_X24_Y39_N2
\Outd[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|result[6]~171_combout\,
	devoe => ww_devoe,
	o => \Outd[6]~output_o\);

-- Location: IOOBUF_X34_Y39_N30
\Outd[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|result[5]~181_combout\,
	devoe => ww_devoe,
	o => \Outd[5]~output_o\);

-- Location: IOOBUF_X0_Y34_N2
\Outd[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|result[4]~191_combout\,
	devoe => ww_devoe,
	o => \Outd[4]~output_o\);

-- Location: IOOBUF_X0_Y34_N9
\Outd[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|result[3]~201_combout\,
	devoe => ww_devoe,
	o => \Outd[3]~output_o\);

-- Location: IOOBUF_X20_Y39_N16
\Outd[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|result[2]~211_combout\,
	devoe => ww_devoe,
	o => \Outd[2]~output_o\);

-- Location: IOOBUF_X20_Y39_N9
\Outd[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|result[1]~221_combout\,
	devoe => ww_devoe,
	o => \Outd[1]~output_o\);

-- Location: IOOBUF_X36_Y39_N30
\Outd[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|result[0]~231_combout\,
	devoe => ww_devoe,
	o => \Outd[0]~output_o\);

-- Location: IOIBUF_X0_Y18_N15
\CLK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G3
\CLK~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y37_N1
\SelBus[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SelBus(2),
	o => \SelBus[2]~input_o\);

-- Location: IOIBUF_X34_Y39_N1
\SelBus[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SelBus(3),
	o => \SelBus[3]~input_o\);

-- Location: IOIBUF_X22_Y39_N29
\SelBus[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SelBus(1),
	o => \SelBus[1]~input_o\);

-- Location: IOIBUF_X24_Y39_N8
\SelBus[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SelBus(0),
	o => \SelBus[0]~input_o\);

-- Location: LCCOMB_X31_Y33_N30
\inst8|Mux6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux6~2_combout\ = (\SelBus[0]~input_o\ & ((\SelBus[2]~input_o\) # ((\SelBus[3]~input_o\ & !\SelBus[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[2]~input_o\,
	datab => \SelBus[3]~input_o\,
	datac => \SelBus[1]~input_o\,
	datad => \SelBus[0]~input_o\,
	combout => \inst8|Mux6~2_combout\);

-- Location: LCCOMB_X25_Y36_N28
\inst6|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Mux0~0_combout\ = (\SelBus[0]~input_o\ & (\SelBus[1]~input_o\ $ (((\SelBus[2]~input_o\) # (\SelBus[3]~input_o\))))) # (!\SelBus[0]~input_o\ & ((\SelBus[3]~input_o\) # ((!\SelBus[2]~input_o\ & \SelBus[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[0]~input_o\,
	datab => \SelBus[2]~input_o\,
	datac => \SelBus[3]~input_o\,
	datad => \SelBus[1]~input_o\,
	combout => \inst6|Mux0~0_combout\);

-- Location: LCCOMB_X25_Y36_N30
\inst6|Regist[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Regist[0]~0_combout\ = (\SelBus[3]~input_o\ & (!\SelBus[0]~input_o\)) # (!\SelBus[3]~input_o\ & (((!\SelBus[2]~input_o\ & \SelBus[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[0]~input_o\,
	datab => \SelBus[2]~input_o\,
	datac => \SelBus[3]~input_o\,
	datad => \SelBus[1]~input_o\,
	combout => \inst6|Regist[0]~0_combout\);

-- Location: LCCOMB_X31_Y37_N26
\inst3|Regist[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Regist[7]~0_combout\ = (\SelBus[3]~input_o\) # ((\SelBus[2]~input_o\ & !\SelBus[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SelBus[3]~input_o\,
	datac => \SelBus[2]~input_o\,
	datad => \SelBus[0]~input_o\,
	combout => \inst3|Regist[7]~0_combout\);

-- Location: LCCOMB_X25_Y36_N14
\inst6|Regist[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Regist[0]~2_combout\ = (!\SelBus[3]~input_o\ & \SelBus[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[3]~input_o\,
	datac => \SelBus[2]~input_o\,
	combout => \inst6|Regist[0]~2_combout\);

-- Location: LCCOMB_X32_Y34_N8
\inst8|Mux7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux7~2_combout\ = (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\)) # (!\SelBus[0]~input_o\))) # (!\SelBus[3]~input_o\ & ((\SelBus[2]~input_o\ & (!\SelBus[0]~input_o\ & !\SelBus[1]~input_o\)) # (!\SelBus[2]~input_o\ & ((\SelBus[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[0]~input_o\,
	datab => \SelBus[2]~input_o\,
	datac => \SelBus[3]~input_o\,
	datad => \SelBus[1]~input_o\,
	combout => \inst8|Mux7~2_combout\);

-- Location: LCCOMB_X32_Y34_N6
\inst8|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Add0~1_combout\ = \inst8|Regist\(0) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[3]~input_o\,
	datac => \SelBus[1]~input_o\,
	datad => \inst8|Regist\(0),
	combout => \inst8|Add0~1_combout\);

-- Location: IOIBUF_X26_Y39_N29
\muxSel[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_muxSel(2),
	o => \muxSel[2]~input_o\);

-- Location: IOIBUF_X26_Y39_N1
\muxSel[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_muxSel(1),
	o => \muxSel[1]~input_o\);

-- Location: IOIBUF_X0_Y35_N1
\muxSel[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_muxSel(4),
	o => \muxSel[4]~input_o\);

-- Location: IOIBUF_X31_Y0_N8
\muxSel[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_muxSel(3),
	o => \muxSel[3]~input_o\);

-- Location: IOIBUF_X31_Y39_N1
\muxSel[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_muxSel(0),
	o => \muxSel[0]~input_o\);

-- Location: LCCOMB_X31_Y34_N22
\inst12|_~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|_~20_combout\ = (!\muxSel[4]~input_o\ & (!\muxSel[3]~input_o\ & !\muxSel[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \muxSel[4]~input_o\,
	datab => \muxSel[3]~input_o\,
	datac => \muxSel[0]~input_o\,
	combout => \inst12|_~20_combout\);

-- Location: LCCOMB_X27_Y35_N26
\inst12|_~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|_~22_combout\ = (\muxSel[2]~input_o\ & (\muxSel[1]~input_o\ & \inst12|_~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \muxSel[2]~input_o\,
	datac => \muxSel[1]~input_o\,
	datad => \inst12|_~20_combout\,
	combout => \inst12|_~22_combout\);

-- Location: LCCOMB_X27_Y35_N4
\inst12|_~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|_~21_combout\ = (!\muxSel[2]~input_o\ & (\muxSel[1]~input_o\ & \inst12|_~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \muxSel[2]~input_o\,
	datac => \muxSel[1]~input_o\,
	datad => \inst12|_~20_combout\,
	combout => \inst12|_~21_combout\);

-- Location: LCCOMB_X25_Y36_N8
\inst6|Regist[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Regist[0]~1_combout\ = (\SelBus[3]~input_o\) # ((\SelBus[0]~input_o\ & \SelBus[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[0]~input_o\,
	datab => \SelBus[2]~input_o\,
	datac => \SelBus[3]~input_o\,
	combout => \inst6|Regist[0]~1_combout\);

-- Location: LCCOMB_X27_Y33_N0
\inst2|Regist[4]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Regist[4]~0_combout\ = (\SelBus[2]~input_o\ & \SelBus[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SelBus[2]~input_o\,
	datad => \SelBus[0]~input_o\,
	combout => \inst2|Regist[4]~0_combout\);

-- Location: LCCOMB_X27_Y37_N4
\inst1|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~0_combout\ = \inst1|Regist\(7) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Regist\(7),
	datac => \SelBus[1]~input_o\,
	datad => \SelBus[3]~input_o\,
	combout => \inst1|Add0~0_combout\);

-- Location: IOIBUF_X31_Y39_N15
\MUX_MAR~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MUX_MAR,
	o => \MUX_MAR~input_o\);

-- Location: LCCOMB_X25_Y37_N6
\inst13|$00000|auto_generated|result_node[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|$00000|auto_generated|result_node[7]~0_combout\ = (\MUX_MAR~input_o\ & (\inst17|Regist\(7))) # (!\MUX_MAR~input_o\ & ((\inst12|result[7]~161_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_MAR~input_o\,
	datac => \inst17|Regist\(7),
	datad => \inst12|result[7]~161_combout\,
	combout => \inst13|$00000|auto_generated|result_node[7]~0_combout\);

-- Location: LCCOMB_X25_Y37_N20
\inst1|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~1_combout\ = (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst13|$00000|auto_generated|result_node[7]~0_combout\)))) # (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[1]~input_o\,
	datab => \SelBus[3]~input_o\,
	datac => \SelBus[0]~input_o\,
	datad => \inst13|$00000|auto_generated|result_node[7]~0_combout\,
	combout => \inst1|Add0~1_combout\);

-- Location: LCCOMB_X31_Y35_N8
\inst12|_~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|_~30_combout\ = (\muxSel[2]~input_o\ & !\muxSel[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \muxSel[2]~input_o\,
	datad => \muxSel[1]~input_o\,
	combout => \inst12|_~30_combout\);

-- Location: LCCOMB_X30_Y34_N14
\inst12|_~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|_~36_combout\ = (!\muxSel[4]~input_o\ & (!\muxSel[3]~input_o\ & (\muxSel[0]~input_o\ & \inst12|_~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \muxSel[4]~input_o\,
	datab => \muxSel[3]~input_o\,
	datac => \muxSel[0]~input_o\,
	datad => \inst12|_~30_combout\,
	combout => \inst12|_~36_combout\);

-- Location: LCCOMB_X31_Y35_N26
\inst12|_~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|_~27_combout\ = (\muxSel[3]~input_o\ & (!\muxSel[4]~input_o\ & !\muxSel[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \muxSel[3]~input_o\,
	datac => \muxSel[4]~input_o\,
	datad => \muxSel[0]~input_o\,
	combout => \inst12|_~27_combout\);

-- Location: LCCOMB_X31_Y35_N16
\inst12|_~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|_~37_combout\ = (\inst12|_~27_combout\ & (!\muxSel[2]~input_o\ & !\muxSel[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|_~27_combout\,
	datab => \muxSel[2]~input_o\,
	datad => \muxSel[1]~input_o\,
	combout => \inst12|_~37_combout\);

-- Location: LCCOMB_X29_Y33_N16
\inst2|Regist[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Regist[4]~1_combout\ = (\SelBus[2]~input_o\) # ((\SelBus[1]~input_o\ & (\SelBus[0]~input_o\ & \SelBus[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[2]~input_o\,
	datab => \SelBus[1]~input_o\,
	datac => \SelBus[0]~input_o\,
	datad => \SelBus[3]~input_o\,
	combout => \inst2|Regist[4]~1_combout\);

-- Location: IOIBUF_X34_Y39_N8
\MUX_MDR~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MUX_MDR,
	o => \MUX_MDR~input_o\);

-- Location: IOIBUF_X34_Y0_N22
\WR~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WR,
	o => \WR~input_o\);

-- Location: IOIBUF_X0_Y36_N1
\MUX_RAM~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MUX_RAM,
	o => \MUX_RAM~input_o\);

-- Location: LCCOMB_X29_Y33_N30
\inst2|Regist[4]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Regist[4]~2_combout\ = (!\SelBus[2]~input_o\ & ((\SelBus[3]~input_o\ & ((\SelBus[0]~input_o\))) # (!\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[2]~input_o\,
	datab => \SelBus[1]~input_o\,
	datac => \SelBus[0]~input_o\,
	datad => \SelBus[3]~input_o\,
	combout => \inst2|Regist[4]~2_combout\);

-- Location: LCCOMB_X25_Y37_N26
\inst1|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Mux1~0_combout\ = (\inst2|Regist[4]~1_combout\ & (!\inst1|Regist\(6) & (\inst2|Regist[4]~2_combout\))) # (!\inst2|Regist[4]~1_combout\ & (((\inst13|$00000|auto_generated|result_node[6]~1_combout\) # (!\inst2|Regist[4]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~1_combout\,
	datab => \inst1|Regist\(6),
	datac => \inst2|Regist[4]~2_combout\,
	datad => \inst13|$00000|auto_generated|result_node[6]~1_combout\,
	combout => \inst1|Mux1~0_combout\);

-- Location: LCCOMB_X25_Y37_N22
\inst1|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~2_combout\ = \inst1|Regist\(6) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011110000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[1]~input_o\,
	datab => \SelBus[3]~input_o\,
	datac => \inst1|Regist\(6),
	combout => \inst1|Add0~2_combout\);

-- Location: LCCOMB_X31_Y35_N14
\inst12|_~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|_~35_combout\ = (\inst12|_~30_combout\ & (!\muxSel[3]~input_o\ & (!\muxSel[4]~input_o\ & !\muxSel[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|_~30_combout\,
	datab => \muxSel[3]~input_o\,
	datac => \muxSel[4]~input_o\,
	datad => \muxSel[0]~input_o\,
	combout => \inst12|_~35_combout\);

-- Location: LCCOMB_X31_Y35_N4
\inst12|_~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|_~26_combout\ = (!\muxSel[2]~input_o\ & !\muxSel[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \muxSel[2]~input_o\,
	datad => \muxSel[1]~input_o\,
	combout => \inst12|_~26_combout\);

-- Location: LCCOMB_X30_Y34_N16
\inst12|_~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|_~34_combout\ = (!\muxSel[4]~input_o\ & (!\muxSel[3]~input_o\ & (\muxSel[0]~input_o\ & \inst12|_~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \muxSel[4]~input_o\,
	datab => \muxSel[3]~input_o\,
	datac => \muxSel[0]~input_o\,
	datad => \inst12|_~26_combout\,
	combout => \inst12|_~34_combout\);

-- Location: IOIBUF_X31_Y39_N29
\MUX_B~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MUX_B,
	o => \MUX_B~input_o\);

-- Location: IOIBUF_X34_Y39_N15
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

-- Location: IOIBUF_X29_Y39_N8
\MUX_A~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MUX_A,
	o => \MUX_A~input_o\);

-- Location: IOIBUF_X78_Y36_N1
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

-- Location: LCCOMB_X31_Y35_N18
\inst12|_~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|_~29_combout\ = (\inst12|_~27_combout\ & (\muxSel[2]~input_o\ & \muxSel[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|_~27_combout\,
	datab => \muxSel[2]~input_o\,
	datad => \muxSel[1]~input_o\,
	combout => \inst12|_~29_combout\);

-- Location: LCCOMB_X31_Y35_N12
\inst12|_~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|_~28_combout\ = (\inst12|_~27_combout\ & (!\muxSel[2]~input_o\ & \muxSel[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|_~27_combout\,
	datab => \muxSel[2]~input_o\,
	datad => \muxSel[1]~input_o\,
	combout => \inst12|_~28_combout\);

-- Location: LCCOMB_X29_Y37_N14
\inst18|Add0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst18|Add0~7_combout\ = \inst18|Regist\(0) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SelBus[1]~input_o\,
	datac => \inst18|Regist\(0),
	datad => \SelBus[3]~input_o\,
	combout => \inst18|Add0~7_combout\);

-- Location: LCCOMB_X30_Y37_N12
\inst18|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst18|Add0~8_combout\ = (\inst18|Add0~7_combout\ & (\inst8|Add0~0_combout\ & VCC)) # (!\inst18|Add0~7_combout\ & (\inst8|Add0~0_combout\ $ (VCC)))
-- \inst18|Add0~9\ = CARRY((!\inst18|Add0~7_combout\ & \inst8|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Add0~7_combout\,
	datab => \inst8|Add0~0_combout\,
	datad => VCC,
	combout => \inst18|Add0~8_combout\,
	cout => \inst18|Add0~9\);

-- Location: LCCOMB_X29_Y37_N12
\inst18|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst18|Mux7~0_combout\ = (\inst6|Regist[0]~2_combout\ & (((\inst18|Regist\(7)) # (\inst6|Regist[0]~1_combout\)))) # (!\inst6|Regist[0]~2_combout\ & (\inst12|result[0]~231_combout\ & ((!\inst6|Regist[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|result[0]~231_combout\,
	datab => \inst18|Regist\(7),
	datac => \inst6|Regist[0]~2_combout\,
	datad => \inst6|Regist[0]~1_combout\,
	combout => \inst18|Mux7~0_combout\);

-- Location: LCCOMB_X31_Y35_N28
\inst12|_~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|_~23_combout\ = (!\muxSel[3]~input_o\ & (!\muxSel[4]~input_o\ & \muxSel[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \muxSel[3]~input_o\,
	datac => \muxSel[4]~input_o\,
	datad => \muxSel[0]~input_o\,
	combout => \inst12|_~23_combout\);

-- Location: LCCOMB_X31_Y35_N30
\inst12|_~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|_~25_combout\ = (\muxSel[1]~input_o\ & (\muxSel[2]~input_o\ & \inst12|_~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \muxSel[1]~input_o\,
	datab => \muxSel[2]~input_o\,
	datad => \inst12|_~23_combout\,
	combout => \inst12|_~25_combout\);

-- Location: LCCOMB_X25_Y37_N16
\inst12|_~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|_~24_combout\ = (!\muxSel[2]~input_o\ & (\muxSel[1]~input_o\ & \inst12|_~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \muxSel[2]~input_o\,
	datac => \muxSel[1]~input_o\,
	datad => \inst12|_~23_combout\,
	combout => \inst12|_~24_combout\);

-- Location: LCCOMB_X25_Y35_N20
\inst10|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|Mux7~0_combout\ = (\inst6|Regist[0]~1_combout\ & (((\inst6|Regist[0]~2_combout\)))) # (!\inst6|Regist[0]~1_combout\ & ((\inst6|Regist[0]~2_combout\ & (\inst10|Regist\(7))) # (!\inst6|Regist[0]~2_combout\ & ((\inst12|result[0]~231_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Regist[0]~1_combout\,
	datab => \inst10|Regist\(7),
	datac => \inst12|result[0]~231_combout\,
	datad => \inst6|Regist[0]~2_combout\,
	combout => \inst10|Mux7~0_combout\);

-- Location: LCCOMB_X25_Y35_N22
\inst10|Mux7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|Mux7~1_combout\ = (\inst6|Regist[0]~1_combout\ & ((\inst10|Mux7~0_combout\ & (\inst10|Regist\(1))) # (!\inst10|Mux7~0_combout\ & ((!\inst10|Regist\(0)))))) # (!\inst6|Regist[0]~1_combout\ & (((\inst10|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Regist\(1),
	datab => \inst10|Regist\(0),
	datac => \inst6|Regist[0]~1_combout\,
	datad => \inst10|Mux7~0_combout\,
	combout => \inst10|Mux7~1_combout\);

-- Location: LCCOMB_X26_Y35_N24
\inst10|Add0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|Add0~7_combout\ = \inst10|Regist\(0) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SelBus[1]~input_o\,
	datac => \SelBus[3]~input_o\,
	datad => \inst10|Regist\(0),
	combout => \inst10|Add0~7_combout\);

-- Location: LCCOMB_X25_Y34_N12
\inst10|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|Add0~8_combout\ = (\inst8|Add0~0_combout\ & (\inst10|Add0~7_combout\ $ (GND))) # (!\inst8|Add0~0_combout\ & (!\inst10|Add0~7_combout\ & VCC))
-- \inst10|Add0~9\ = CARRY((\inst8|Add0~0_combout\ & !\inst10|Add0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add0~0_combout\,
	datab => \inst10|Add0~7_combout\,
	datad => VCC,
	combout => \inst10|Add0~8_combout\,
	cout => \inst10|Add0~9\);

-- Location: LCCOMB_X25_Y35_N24
\inst10|Mux7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|Mux7~2_combout\ = (\inst10|Mux7~1_combout\ & (((\inst6|Regist[0]~0_combout\ & \inst10|Add0~8_combout\)) # (!\inst8|Mux7~2_combout\))) # (!\inst10|Mux7~1_combout\ & (\inst6|Regist[0]~0_combout\ & ((\inst10|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Mux7~1_combout\,
	datab => \inst6|Regist[0]~0_combout\,
	datac => \inst8|Mux7~2_combout\,
	datad => \inst10|Add0~8_combout\,
	combout => \inst10|Mux7~2_combout\);

-- Location: IOIBUF_X0_Y18_N22
\CLR~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLR,
	o => \CLR~input_o\);

-- Location: CLKCTRL_G1
\CLR~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLR~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLR~inputclkctrl_outclk\);

-- Location: LCCOMB_X32_Y34_N22
\inst8|Regist[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Regist[0]~0_combout\ = (\SelBus[2]~input_o\ & (((!\SelBus[3]~input_o\)))) # (!\SelBus[2]~input_o\ & ((\SelBus[0]~input_o\) # ((\SelBus[3]~input_o\) # (\SelBus[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[0]~input_o\,
	datab => \SelBus[2]~input_o\,
	datac => \SelBus[3]~input_o\,
	datad => \SelBus[1]~input_o\,
	combout => \inst8|Regist[0]~0_combout\);

-- Location: IOIBUF_X20_Y39_N1
\EnDec~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EnDec,
	o => \EnDec~input_o\);

-- Location: IOIBUF_X26_Y0_N22
\SelRegD[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SelRegD(0),
	o => \SelRegD[0]~input_o\);

-- Location: IOIBUF_X26_Y39_N15
\SelRegD[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SelRegD(3),
	o => \SelRegD[3]~input_o\);

-- Location: IOIBUF_X22_Y39_N22
\SelRegD[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SelRegD(1),
	o => \SelRegD[1]~input_o\);

-- Location: IOIBUF_X26_Y39_N22
\SelRegD[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SelRegD(2),
	o => \SelRegD[2]~input_o\);

-- Location: LCCOMB_X26_Y38_N16
\inst21|Mux15~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst21|Mux15~4_combout\ = (\SelRegD[0]~input_o\ & (!\SelRegD[3]~input_o\ & (\SelRegD[1]~input_o\ & !\SelRegD[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelRegD[0]~input_o\,
	datab => \SelRegD[3]~input_o\,
	datac => \SelRegD[1]~input_o\,
	datad => \SelRegD[2]~input_o\,
	combout => \inst21|Mux15~4_combout\);

-- Location: LCCOMB_X24_Y36_N30
\inst10|Regist[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|Regist[7]~0_combout\ = (\inst8|Regist[0]~0_combout\ & (\EnDec~input_o\ & \inst21|Mux15~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Regist[0]~0_combout\,
	datab => \EnDec~input_o\,
	datad => \inst21|Mux15~4_combout\,
	combout => \inst10|Regist[7]~0_combout\);

-- Location: FF_X25_Y35_N25
\inst10|Regist[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|Mux7~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst10|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|Regist\(0));

-- Location: LCCOMB_X25_Y35_N0
\inst10|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|Mux0~0_combout\ = (\inst3|Regist[7]~0_combout\ & (\inst6|Regist[0]~2_combout\)) # (!\inst3|Regist[7]~0_combout\ & ((\inst6|Regist[0]~2_combout\ & ((\inst10|Regist\(0)))) # (!\inst6|Regist[0]~2_combout\ & (\inst12|result[7]~161_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Regist[7]~0_combout\,
	datab => \inst6|Regist[0]~2_combout\,
	datac => \inst12|result[7]~161_combout\,
	datad => \inst10|Regist\(0),
	combout => \inst10|Mux0~0_combout\);

-- Location: LCCOMB_X25_Y35_N6
\inst10|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|Mux0~1_combout\ = (\inst3|Regist[7]~0_combout\ & ((\inst10|Mux0~0_combout\ & (\inst10|Regist\(6))) # (!\inst10|Mux0~0_combout\ & ((!\inst10|Regist\(7)))))) # (!\inst3|Regist[7]~0_combout\ & (((\inst10|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Regist\(6),
	datab => \inst10|Regist\(7),
	datac => \inst3|Regist[7]~0_combout\,
	datad => \inst10|Mux0~0_combout\,
	combout => \inst10|Mux0~1_combout\);

-- Location: LCCOMB_X24_Y36_N8
\inst10|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|Add0~0_combout\ = \inst10|Regist\(7) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SelBus[1]~input_o\,
	datac => \inst10|Regist\(7),
	datad => \SelBus[3]~input_o\,
	combout => \inst10|Add0~0_combout\);

-- Location: LCCOMB_X29_Y34_N30
\inst8|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Add0~28_combout\ = (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst12|result[7]~161_combout\)))) # (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[0]~input_o\,
	datab => \SelBus[3]~input_o\,
	datac => \SelBus[1]~input_o\,
	datad => \inst12|result[7]~161_combout\,
	combout => \inst8|Add0~28_combout\);

-- Location: LCCOMB_X31_Y33_N4
\inst8|Add0~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Add0~25_combout\ = (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst12|result[6]~171_combout\)))) # (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[0]~input_o\,
	datab => \SelBus[3]~input_o\,
	datac => \SelBus[1]~input_o\,
	datad => \inst12|result[6]~171_combout\,
	combout => \inst8|Add0~25_combout\);

-- Location: LCCOMB_X24_Y36_N14
\inst10|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|Add0~1_combout\ = \inst10|Regist\(6) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SelBus[3]~input_o\,
	datac => \SelBus[1]~input_o\,
	datad => \inst10|Regist\(6),
	combout => \inst10|Add0~1_combout\);

-- Location: LCCOMB_X31_Y34_N26
\inst8|Add0~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Add0~21_combout\ = (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst12|result[5]~181_combout\)))) # (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[0]~input_o\,
	datab => \SelBus[3]~input_o\,
	datac => \SelBus[1]~input_o\,
	datad => \inst12|result[5]~181_combout\,
	combout => \inst8|Add0~21_combout\);

-- Location: LCCOMB_X25_Y36_N20
\inst10|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|Add0~2_combout\ = \inst10|Regist\(5) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[3]~input_o\,
	datac => \inst10|Regist\(5),
	datad => \SelBus[1]~input_o\,
	combout => \inst10|Add0~2_combout\);

-- Location: LCCOMB_X31_Y33_N26
\inst8|Add0~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Add0~17_combout\ = (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst12|result[4]~191_combout\)))) # (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[0]~input_o\,
	datab => \SelBus[3]~input_o\,
	datac => \SelBus[1]~input_o\,
	datad => \inst12|result[4]~191_combout\,
	combout => \inst8|Add0~17_combout\);

-- Location: LCCOMB_X25_Y34_N28
\inst10|Add0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|Add0~3_combout\ = \inst10|Regist\(4) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001110010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[3]~input_o\,
	datab => \inst10|Regist\(4),
	datac => \SelBus[1]~input_o\,
	combout => \inst10|Add0~3_combout\);

-- Location: LCCOMB_X25_Y34_N6
\inst10|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|Add0~4_combout\ = \inst10|Regist\(3) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001110010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[3]~input_o\,
	datab => \inst10|Regist\(3),
	datac => \SelBus[1]~input_o\,
	combout => \inst10|Add0~4_combout\);

-- Location: LCCOMB_X30_Y36_N0
\inst8|Add0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Add0~13_combout\ = (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst12|result[3]~201_combout\)))) # (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[0]~input_o\,
	datab => \SelBus[1]~input_o\,
	datac => \SelBus[3]~input_o\,
	datad => \inst12|result[3]~201_combout\,
	combout => \inst8|Add0~13_combout\);

-- Location: LCCOMB_X31_Y34_N30
\inst8|Add0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Add0~9_combout\ = (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst12|result[2]~211_combout\)))) # (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[0]~input_o\,
	datab => \SelBus[3]~input_o\,
	datac => \SelBus[1]~input_o\,
	datad => \inst12|result[2]~211_combout\,
	combout => \inst8|Add0~9_combout\);

-- Location: LCCOMB_X25_Y34_N0
\inst10|Add0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|Add0~5_combout\ = \inst10|Regist\(2) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[1]~input_o\,
	datac => \inst10|Regist\(2),
	datad => \SelBus[3]~input_o\,
	combout => \inst10|Add0~5_combout\);

-- Location: LCCOMB_X30_Y34_N30
\inst8|Add0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Add0~5_combout\ = (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst12|result[1]~221_combout\)))) # (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[0]~input_o\,
	datab => \SelBus[3]~input_o\,
	datac => \SelBus[1]~input_o\,
	datad => \inst12|result[1]~221_combout\,
	combout => \inst8|Add0~5_combout\);

-- Location: LCCOMB_X24_Y36_N28
\inst10|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|Add0~6_combout\ = \inst10|Regist\(1) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Regist\(1),
	datab => \SelBus[3]~input_o\,
	datad => \SelBus[1]~input_o\,
	combout => \inst10|Add0~6_combout\);

-- Location: LCCOMB_X25_Y34_N14
\inst10|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|Add0~10_combout\ = (\inst8|Add0~5_combout\ & ((\inst10|Add0~6_combout\ & (!\inst10|Add0~9\)) # (!\inst10|Add0~6_combout\ & (\inst10|Add0~9\ & VCC)))) # (!\inst8|Add0~5_combout\ & ((\inst10|Add0~6_combout\ & ((\inst10|Add0~9\) # (GND))) # 
-- (!\inst10|Add0~6_combout\ & (!\inst10|Add0~9\))))
-- \inst10|Add0~11\ = CARRY((\inst8|Add0~5_combout\ & (\inst10|Add0~6_combout\ & !\inst10|Add0~9\)) # (!\inst8|Add0~5_combout\ & ((\inst10|Add0~6_combout\) # (!\inst10|Add0~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add0~5_combout\,
	datab => \inst10|Add0~6_combout\,
	datad => VCC,
	cin => \inst10|Add0~9\,
	combout => \inst10|Add0~10_combout\,
	cout => \inst10|Add0~11\);

-- Location: LCCOMB_X25_Y34_N16
\inst10|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|Add0~12_combout\ = ((\inst8|Add0~9_combout\ $ (\inst10|Add0~5_combout\ $ (\inst10|Add0~11\)))) # (GND)
-- \inst10|Add0~13\ = CARRY((\inst8|Add0~9_combout\ & ((!\inst10|Add0~11\) # (!\inst10|Add0~5_combout\))) # (!\inst8|Add0~9_combout\ & (!\inst10|Add0~5_combout\ & !\inst10|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add0~9_combout\,
	datab => \inst10|Add0~5_combout\,
	datad => VCC,
	cin => \inst10|Add0~11\,
	combout => \inst10|Add0~12_combout\,
	cout => \inst10|Add0~13\);

-- Location: LCCOMB_X25_Y34_N18
\inst10|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|Add0~14_combout\ = (\inst10|Add0~4_combout\ & ((\inst8|Add0~13_combout\ & (!\inst10|Add0~13\)) # (!\inst8|Add0~13_combout\ & ((\inst10|Add0~13\) # (GND))))) # (!\inst10|Add0~4_combout\ & ((\inst8|Add0~13_combout\ & (\inst10|Add0~13\ & VCC)) # 
-- (!\inst8|Add0~13_combout\ & (!\inst10|Add0~13\))))
-- \inst10|Add0~15\ = CARRY((\inst10|Add0~4_combout\ & ((!\inst10|Add0~13\) # (!\inst8|Add0~13_combout\))) # (!\inst10|Add0~4_combout\ & (!\inst8|Add0~13_combout\ & !\inst10|Add0~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Add0~4_combout\,
	datab => \inst8|Add0~13_combout\,
	datad => VCC,
	cin => \inst10|Add0~13\,
	combout => \inst10|Add0~14_combout\,
	cout => \inst10|Add0~15\);

-- Location: LCCOMB_X25_Y34_N20
\inst10|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|Add0~16_combout\ = ((\inst8|Add0~17_combout\ $ (\inst10|Add0~3_combout\ $ (\inst10|Add0~15\)))) # (GND)
-- \inst10|Add0~17\ = CARRY((\inst8|Add0~17_combout\ & ((!\inst10|Add0~15\) # (!\inst10|Add0~3_combout\))) # (!\inst8|Add0~17_combout\ & (!\inst10|Add0~3_combout\ & !\inst10|Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add0~17_combout\,
	datab => \inst10|Add0~3_combout\,
	datad => VCC,
	cin => \inst10|Add0~15\,
	combout => \inst10|Add0~16_combout\,
	cout => \inst10|Add0~17\);

-- Location: LCCOMB_X25_Y34_N22
\inst10|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|Add0~18_combout\ = (\inst8|Add0~21_combout\ & ((\inst10|Add0~2_combout\ & (!\inst10|Add0~17\)) # (!\inst10|Add0~2_combout\ & (\inst10|Add0~17\ & VCC)))) # (!\inst8|Add0~21_combout\ & ((\inst10|Add0~2_combout\ & ((\inst10|Add0~17\) # (GND))) # 
-- (!\inst10|Add0~2_combout\ & (!\inst10|Add0~17\))))
-- \inst10|Add0~19\ = CARRY((\inst8|Add0~21_combout\ & (\inst10|Add0~2_combout\ & !\inst10|Add0~17\)) # (!\inst8|Add0~21_combout\ & ((\inst10|Add0~2_combout\) # (!\inst10|Add0~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add0~21_combout\,
	datab => \inst10|Add0~2_combout\,
	datad => VCC,
	cin => \inst10|Add0~17\,
	combout => \inst10|Add0~18_combout\,
	cout => \inst10|Add0~19\);

-- Location: LCCOMB_X25_Y34_N24
\inst10|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|Add0~20_combout\ = ((\inst8|Add0~25_combout\ $ (\inst10|Add0~1_combout\ $ (\inst10|Add0~19\)))) # (GND)
-- \inst10|Add0~21\ = CARRY((\inst8|Add0~25_combout\ & ((!\inst10|Add0~19\) # (!\inst10|Add0~1_combout\))) # (!\inst8|Add0~25_combout\ & (!\inst10|Add0~1_combout\ & !\inst10|Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add0~25_combout\,
	datab => \inst10|Add0~1_combout\,
	datad => VCC,
	cin => \inst10|Add0~19\,
	combout => \inst10|Add0~20_combout\,
	cout => \inst10|Add0~21\);

-- Location: LCCOMB_X25_Y34_N26
\inst10|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|Add0~22_combout\ = \inst10|Add0~0_combout\ $ (\inst10|Add0~21\ $ (!\inst8|Add0~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|Add0~0_combout\,
	datad => \inst8|Add0~28_combout\,
	cin => \inst10|Add0~21\,
	combout => \inst10|Add0~22_combout\);

-- Location: LCCOMB_X25_Y35_N28
\inst10|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|Mux0~2_combout\ = (\inst10|Mux0~1_combout\ & (((\inst6|Regist[0]~0_combout\ & \inst10|Add0~22_combout\)) # (!\inst6|Mux0~0_combout\))) # (!\inst10|Mux0~1_combout\ & (\inst6|Regist[0]~0_combout\ & ((\inst10|Add0~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Mux0~1_combout\,
	datab => \inst6|Regist[0]~0_combout\,
	datac => \inst6|Mux0~0_combout\,
	datad => \inst10|Add0~22_combout\,
	combout => \inst10|Mux0~2_combout\);

-- Location: FF_X25_Y35_N29
\inst10|Regist[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|Mux0~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst10|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|Regist\(7));

-- Location: LCCOMB_X24_Y36_N18
\inst10|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|Mux1~0_combout\ = (\inst2|Regist[4]~1_combout\ & (((\inst2|Regist[4]~2_combout\ & !\inst10|Regist\(6))))) # (!\inst2|Regist[4]~1_combout\ & ((\inst12|result[6]~171_combout\) # ((!\inst2|Regist[4]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001111100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|result[6]~171_combout\,
	datab => \inst2|Regist[4]~1_combout\,
	datac => \inst2|Regist[4]~2_combout\,
	datad => \inst10|Regist\(6),
	combout => \inst10|Mux1~0_combout\);

-- Location: LCCOMB_X24_Y36_N0
\inst10|Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|Mux1~1_combout\ = (\inst10|Mux1~0_combout\ & (((\inst2|Regist[4]~2_combout\) # (\inst10|Add0~20_combout\)))) # (!\inst10|Mux1~0_combout\ & (\inst10|Regist\(5) & (!\inst2|Regist[4]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Regist\(5),
	datab => \inst10|Mux1~0_combout\,
	datac => \inst2|Regist[4]~2_combout\,
	datad => \inst10|Add0~20_combout\,
	combout => \inst10|Mux1~1_combout\);

-- Location: LCCOMB_X24_Y36_N24
\inst10|Mux1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|Mux1~2_combout\ = (\inst2|Regist[4]~0_combout\ & ((\inst10|Regist\(7)) # ((!\inst8|Mux6~2_combout\ & \inst10|Mux1~1_combout\)))) # (!\inst2|Regist[4]~0_combout\ & (!\inst8|Mux6~2_combout\ & ((\inst10|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~0_combout\,
	datab => \inst8|Mux6~2_combout\,
	datac => \inst10|Regist\(7),
	datad => \inst10|Mux1~1_combout\,
	combout => \inst10|Mux1~2_combout\);

-- Location: FF_X24_Y36_N25
\inst10|Regist[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|Mux1~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst10|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|Regist\(6));

-- Location: LCCOMB_X24_Y36_N2
\inst10|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|Mux2~0_combout\ = (\inst2|Regist[4]~2_combout\ & ((\inst12|result[5]~181_combout\) # ((\inst2|Regist[4]~1_combout\)))) # (!\inst2|Regist[4]~2_combout\ & (((\inst10|Add0~18_combout\ & !\inst2|Regist[4]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|result[5]~181_combout\,
	datab => \inst2|Regist[4]~2_combout\,
	datac => \inst10|Add0~18_combout\,
	datad => \inst2|Regist[4]~1_combout\,
	combout => \inst10|Mux2~0_combout\);

-- Location: LCCOMB_X24_Y36_N12
\inst10|Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|Mux2~1_combout\ = (\inst2|Regist[4]~1_combout\ & ((\inst10|Mux2~0_combout\ & (!\inst10|Regist\(5))) # (!\inst10|Mux2~0_combout\ & ((\inst10|Regist\(4)))))) # (!\inst2|Regist[4]~1_combout\ & (((\inst10|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Regist\(5),
	datab => \inst2|Regist[4]~1_combout\,
	datac => \inst10|Regist\(4),
	datad => \inst10|Mux2~0_combout\,
	combout => \inst10|Mux2~1_combout\);

-- Location: LCCOMB_X24_Y36_N26
\inst10|Mux2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|Mux2~2_combout\ = (\inst2|Regist[4]~0_combout\ & ((\inst10|Regist\(6)) # ((!\inst8|Mux6~2_combout\ & \inst10|Mux2~1_combout\)))) # (!\inst2|Regist[4]~0_combout\ & (((!\inst8|Mux6~2_combout\ & \inst10|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~0_combout\,
	datab => \inst10|Regist\(6),
	datac => \inst8|Mux6~2_combout\,
	datad => \inst10|Mux2~1_combout\,
	combout => \inst10|Mux2~2_combout\);

-- Location: FF_X24_Y36_N27
\inst10|Regist[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|Mux2~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst10|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|Regist\(5));

-- Location: LCCOMB_X25_Y34_N10
\inst10|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|Mux3~0_combout\ = (\inst2|Regist[4]~2_combout\ & (((\inst2|Regist[4]~1_combout\)))) # (!\inst2|Regist[4]~2_combout\ & ((\inst2|Regist[4]~1_combout\ & (\inst10|Regist\(3))) # (!\inst2|Regist[4]~1_combout\ & ((\inst10|Add0~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~2_combout\,
	datab => \inst10|Regist\(3),
	datac => \inst2|Regist[4]~1_combout\,
	datad => \inst10|Add0~16_combout\,
	combout => \inst10|Mux3~0_combout\);

-- Location: LCCOMB_X25_Y34_N8
\inst10|Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|Mux3~1_combout\ = (\inst2|Regist[4]~2_combout\ & ((\inst10|Mux3~0_combout\ & ((!\inst10|Regist\(4)))) # (!\inst10|Mux3~0_combout\ & (\inst12|result[4]~191_combout\)))) # (!\inst2|Regist[4]~2_combout\ & (((\inst10|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|result[4]~191_combout\,
	datab => \inst2|Regist[4]~2_combout\,
	datac => \inst10|Regist\(4),
	datad => \inst10|Mux3~0_combout\,
	combout => \inst10|Mux3~1_combout\);

-- Location: LCCOMB_X26_Y34_N0
\inst10|Mux3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|Mux3~2_combout\ = (\inst8|Mux6~2_combout\ & (\inst10|Regist\(5) & (\inst2|Regist[4]~0_combout\))) # (!\inst8|Mux6~2_combout\ & ((\inst10|Mux3~1_combout\) # ((\inst10|Regist\(5) & \inst2|Regist[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Mux6~2_combout\,
	datab => \inst10|Regist\(5),
	datac => \inst2|Regist[4]~0_combout\,
	datad => \inst10|Mux3~1_combout\,
	combout => \inst10|Mux3~2_combout\);

-- Location: FF_X26_Y34_N1
\inst10|Regist[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|Mux3~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst10|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|Regist\(4));

-- Location: LCCOMB_X25_Y34_N2
\inst10|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|Mux4~0_combout\ = (\inst2|Regist[4]~2_combout\ & ((\inst12|result[3]~201_combout\) # ((\inst2|Regist[4]~1_combout\)))) # (!\inst2|Regist[4]~2_combout\ & (((!\inst2|Regist[4]~1_combout\ & \inst10|Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|result[3]~201_combout\,
	datab => \inst2|Regist[4]~2_combout\,
	datac => \inst2|Regist[4]~1_combout\,
	datad => \inst10|Add0~14_combout\,
	combout => \inst10|Mux4~0_combout\);

-- Location: LCCOMB_X25_Y34_N4
\inst10|Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|Mux4~1_combout\ = (\inst2|Regist[4]~1_combout\ & ((\inst10|Mux4~0_combout\ & ((!\inst10|Regist\(3)))) # (!\inst10|Mux4~0_combout\ & (\inst10|Regist\(2))))) # (!\inst2|Regist[4]~1_combout\ & (((\inst10|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Regist\(2),
	datab => \inst2|Regist[4]~1_combout\,
	datac => \inst10|Regist\(3),
	datad => \inst10|Mux4~0_combout\,
	combout => \inst10|Mux4~1_combout\);

-- Location: LCCOMB_X26_Y35_N30
\inst10|Mux4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|Mux4~2_combout\ = (\inst10|Regist\(4) & ((\inst2|Regist[4]~0_combout\) # ((!\inst8|Mux6~2_combout\ & \inst10|Mux4~1_combout\)))) # (!\inst10|Regist\(4) & (((!\inst8|Mux6~2_combout\ & \inst10|Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Regist\(4),
	datab => \inst2|Regist[4]~0_combout\,
	datac => \inst8|Mux6~2_combout\,
	datad => \inst10|Mux4~1_combout\,
	combout => \inst10|Mux4~2_combout\);

-- Location: FF_X26_Y35_N31
\inst10|Regist[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|Mux4~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst10|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|Regist\(3));

-- Location: LCCOMB_X24_Y36_N10
\inst10|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|Mux5~0_combout\ = (\inst2|Regist[4]~1_combout\ & ((\inst10|Regist\(1)) # ((\inst2|Regist[4]~2_combout\)))) # (!\inst2|Regist[4]~1_combout\ & (((!\inst2|Regist[4]~2_combout\ & \inst10|Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Regist\(1),
	datab => \inst2|Regist[4]~1_combout\,
	datac => \inst2|Regist[4]~2_combout\,
	datad => \inst10|Add0~12_combout\,
	combout => \inst10|Mux5~0_combout\);

-- Location: LCCOMB_X24_Y36_N16
\inst10|Mux5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|Mux5~1_combout\ = (\inst2|Regist[4]~2_combout\ & ((\inst10|Mux5~0_combout\ & ((!\inst10|Regist\(2)))) # (!\inst10|Mux5~0_combout\ & (\inst12|result[2]~211_combout\)))) # (!\inst2|Regist[4]~2_combout\ & (((\inst10|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|result[2]~211_combout\,
	datab => \inst10|Regist\(2),
	datac => \inst2|Regist[4]~2_combout\,
	datad => \inst10|Mux5~0_combout\,
	combout => \inst10|Mux5~1_combout\);

-- Location: LCCOMB_X24_Y36_N4
\inst10|Mux5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|Mux5~2_combout\ = (\inst2|Regist[4]~0_combout\ & ((\inst10|Regist\(3)) # ((!\inst8|Mux6~2_combout\ & \inst10|Mux5~1_combout\)))) # (!\inst2|Regist[4]~0_combout\ & (!\inst8|Mux6~2_combout\ & ((\inst10|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~0_combout\,
	datab => \inst8|Mux6~2_combout\,
	datac => \inst10|Regist\(3),
	datad => \inst10|Mux5~1_combout\,
	combout => \inst10|Mux5~2_combout\);

-- Location: FF_X24_Y36_N5
\inst10|Regist[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|Mux5~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst10|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|Regist\(2));

-- Location: LCCOMB_X26_Y35_N2
\inst10|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|Mux6~0_combout\ = (\inst2|Regist[4]~2_combout\ & ((\inst12|result[1]~221_combout\) # ((\inst2|Regist[4]~1_combout\)))) # (!\inst2|Regist[4]~2_combout\ & (((!\inst2|Regist[4]~1_combout\ & \inst10|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|result[1]~221_combout\,
	datab => \inst2|Regist[4]~2_combout\,
	datac => \inst2|Regist[4]~1_combout\,
	datad => \inst10|Add0~10_combout\,
	combout => \inst10|Mux6~0_combout\);

-- Location: LCCOMB_X26_Y35_N20
\inst10|Mux6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|Mux6~1_combout\ = (\inst2|Regist[4]~1_combout\ & ((\inst10|Mux6~0_combout\ & (!\inst10|Regist\(1))) # (!\inst10|Mux6~0_combout\ & ((\inst10|Regist\(0)))))) # (!\inst2|Regist[4]~1_combout\ & (((\inst10|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Regist\(1),
	datab => \inst10|Regist\(0),
	datac => \inst2|Regist[4]~1_combout\,
	datad => \inst10|Mux6~0_combout\,
	combout => \inst10|Mux6~1_combout\);

-- Location: LCCOMB_X26_Y35_N16
\inst10|Mux6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|Mux6~2_combout\ = (\inst10|Regist\(2) & ((\inst2|Regist[4]~0_combout\) # ((!\inst8|Mux6~2_combout\ & \inst10|Mux6~1_combout\)))) # (!\inst10|Regist\(2) & (((!\inst8|Mux6~2_combout\ & \inst10|Mux6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Regist\(2),
	datab => \inst2|Regist[4]~0_combout\,
	datac => \inst8|Mux6~2_combout\,
	datad => \inst10|Mux6~1_combout\,
	combout => \inst10|Mux6~2_combout\);

-- Location: FF_X26_Y35_N17
\inst10|Regist[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|Mux6~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst10|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|Regist\(1));

-- Location: LCCOMB_X26_Y35_N26
\inst12|result[1]~216\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|result[1]~216_combout\ = (\inst12|_~25_combout\ & ((\inst1|Regist\(1)) # ((\inst12|_~24_combout\ & \inst10|Regist\(1))))) # (!\inst12|_~25_combout\ & (\inst12|_~24_combout\ & ((\inst10|Regist\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|_~25_combout\,
	datab => \inst12|_~24_combout\,
	datac => \inst1|Regist\(1),
	datad => \inst10|Regist\(1),
	combout => \inst12|result[1]~216_combout\);

-- Location: LCCOMB_X27_Y37_N18
\inst12|result[1]~217\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|result[1]~217_combout\ = (\inst12|_~29_combout\ & ((\inst12|result[1]~221_combout\) # ((\inst12|_~28_combout\ & \inst18|Regist\(1))))) # (!\inst12|_~29_combout\ & (\inst12|_~28_combout\ & ((\inst18|Regist\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|_~29_combout\,
	datab => \inst12|_~28_combout\,
	datac => \inst12|result[1]~221_combout\,
	datad => \inst18|Regist\(1),
	combout => \inst12|result[1]~217_combout\);

-- Location: LCCOMB_X26_Y36_N30
\inst12|result[1]~238\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|result[1]~238_combout\ = (!\muxSel[1]~input_o\ & (\inst12|_~20_combout\ & (!\muxSel[2]~input_o\ & \inst6|Regist\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \muxSel[1]~input_o\,
	datab => \inst12|_~20_combout\,
	datac => \muxSel[2]~input_o\,
	datad => \inst6|Regist\(1),
	combout => \inst12|result[1]~238_combout\);

-- Location: LCCOMB_X27_Y35_N16
\inst9|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|Add0~0_combout\ = \inst9|Regist\(7) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[3]~input_o\,
	datac => \SelBus[1]~input_o\,
	datad => \inst9|Regist\(7),
	combout => \inst9|Add0~0_combout\);

-- Location: LCCOMB_X30_Y34_N20
\inst9|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|Add0~1_combout\ = \inst9|Regist\(6) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[1]~input_o\,
	datab => \SelBus[3]~input_o\,
	datad => \inst9|Regist\(6),
	combout => \inst9|Add0~1_combout\);

-- Location: LCCOMB_X30_Y34_N18
\inst9|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|Add0~2_combout\ = \inst9|Regist\(5) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[1]~input_o\,
	datac => \inst9|Regist\(5),
	datad => \SelBus[3]~input_o\,
	combout => \inst9|Add0~2_combout\);

-- Location: LCCOMB_X29_Y34_N8
\inst9|Add0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|Add0~3_combout\ = \inst9|Regist\(4) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|Regist\(4),
	datac => \SelBus[1]~input_o\,
	datad => \SelBus[3]~input_o\,
	combout => \inst9|Add0~3_combout\);

-- Location: LCCOMB_X27_Y38_N20
\inst9|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|Add0~4_combout\ = \inst9|Regist\(3) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SelBus[1]~input_o\,
	datac => \inst9|Regist\(3),
	datad => \SelBus[3]~input_o\,
	combout => \inst9|Add0~4_combout\);

-- Location: LCCOMB_X27_Y34_N4
\inst9|Add0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|Add0~5_combout\ = \inst9|Regist\(2) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[3]~input_o\,
	datab => \SelBus[1]~input_o\,
	datad => \inst9|Regist\(2),
	combout => \inst9|Add0~5_combout\);

-- Location: LCCOMB_X27_Y35_N30
\inst9|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|Add0~6_combout\ = \inst9|Regist\(1) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[3]~input_o\,
	datac => \SelBus[1]~input_o\,
	datad => \inst9|Regist\(1),
	combout => \inst9|Add0~6_combout\);

-- Location: LCCOMB_X27_Y34_N8
\inst9|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|Add0~8_combout\ = (\inst8|Add0~0_combout\ & (\inst9|Add0~7_combout\ $ (GND))) # (!\inst8|Add0~0_combout\ & (!\inst9|Add0~7_combout\ & VCC))
-- \inst9|Add0~9\ = CARRY((\inst8|Add0~0_combout\ & !\inst9|Add0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add0~0_combout\,
	datab => \inst9|Add0~7_combout\,
	datad => VCC,
	combout => \inst9|Add0~8_combout\,
	cout => \inst9|Add0~9\);

-- Location: LCCOMB_X27_Y35_N14
\inst9|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|Mux7~0_combout\ = (\inst6|Regist[0]~1_combout\ & (((\inst6|Regist[0]~2_combout\)))) # (!\inst6|Regist[0]~1_combout\ & ((\inst6|Regist[0]~2_combout\ & ((\inst9|Regist\(7)))) # (!\inst6|Regist[0]~2_combout\ & (\inst12|result[0]~231_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|result[0]~231_combout\,
	datab => \inst6|Regist[0]~1_combout\,
	datac => \inst6|Regist[0]~2_combout\,
	datad => \inst9|Regist\(7),
	combout => \inst9|Mux7~0_combout\);

-- Location: LCCOMB_X27_Y35_N24
\inst9|Mux7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|Mux7~1_combout\ = (\inst6|Regist[0]~1_combout\ & ((\inst9|Mux7~0_combout\ & (\inst9|Regist\(1))) # (!\inst9|Mux7~0_combout\ & ((!\inst9|Regist\(0)))))) # (!\inst6|Regist[0]~1_combout\ & (((\inst9|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Regist\(1),
	datab => \inst6|Regist[0]~1_combout\,
	datac => \inst9|Mux7~0_combout\,
	datad => \inst9|Regist\(0),
	combout => \inst9|Mux7~1_combout\);

-- Location: LCCOMB_X27_Y35_N20
\inst9|Mux7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|Mux7~2_combout\ = (\inst6|Regist[0]~0_combout\ & ((\inst9|Add0~8_combout\) # ((!\inst8|Mux7~2_combout\ & \inst9|Mux7~1_combout\)))) # (!\inst6|Regist[0]~0_combout\ & (!\inst8|Mux7~2_combout\ & ((\inst9|Mux7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Regist[0]~0_combout\,
	datab => \inst8|Mux7~2_combout\,
	datac => \inst9|Add0~8_combout\,
	datad => \inst9|Mux7~1_combout\,
	combout => \inst9|Mux7~2_combout\);

-- Location: LCCOMB_X26_Y38_N8
\inst21|Mux15~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst21|Mux15~2_combout\ = (!\SelRegD[0]~input_o\ & (!\SelRegD[3]~input_o\ & (\SelRegD[1]~input_o\ & !\SelRegD[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelRegD[0]~input_o\,
	datab => \SelRegD[3]~input_o\,
	datac => \SelRegD[1]~input_o\,
	datad => \SelRegD[2]~input_o\,
	combout => \inst21|Mux15~2_combout\);

-- Location: LCCOMB_X21_Y38_N0
\inst9|Regist[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|Regist[7]~0_combout\ = (\inst8|Regist[0]~0_combout\ & (\EnDec~input_o\ & \inst21|Mux15~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Regist[0]~0_combout\,
	datac => \EnDec~input_o\,
	datad => \inst21|Mux15~2_combout\,
	combout => \inst9|Regist[7]~0_combout\);

-- Location: FF_X27_Y35_N21
\inst9|Regist[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst9|Mux7~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst9|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|Regist\(0));

-- Location: LCCOMB_X27_Y35_N8
\inst9|Add0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|Add0~7_combout\ = \inst9|Regist\(0) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[3]~input_o\,
	datac => \SelBus[1]~input_o\,
	datad => \inst9|Regist\(0),
	combout => \inst9|Add0~7_combout\);

-- Location: LCCOMB_X27_Y34_N10
\inst9|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|Add0~10_combout\ = (\inst8|Add0~5_combout\ & ((\inst9|Add0~6_combout\ & (!\inst9|Add0~9\)) # (!\inst9|Add0~6_combout\ & (\inst9|Add0~9\ & VCC)))) # (!\inst8|Add0~5_combout\ & ((\inst9|Add0~6_combout\ & ((\inst9|Add0~9\) # (GND))) # 
-- (!\inst9|Add0~6_combout\ & (!\inst9|Add0~9\))))
-- \inst9|Add0~11\ = CARRY((\inst8|Add0~5_combout\ & (\inst9|Add0~6_combout\ & !\inst9|Add0~9\)) # (!\inst8|Add0~5_combout\ & ((\inst9|Add0~6_combout\) # (!\inst9|Add0~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add0~5_combout\,
	datab => \inst9|Add0~6_combout\,
	datad => VCC,
	cin => \inst9|Add0~9\,
	combout => \inst9|Add0~10_combout\,
	cout => \inst9|Add0~11\);

-- Location: LCCOMB_X27_Y34_N12
\inst9|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|Add0~12_combout\ = ((\inst9|Add0~5_combout\ $ (\inst8|Add0~9_combout\ $ (\inst9|Add0~11\)))) # (GND)
-- \inst9|Add0~13\ = CARRY((\inst9|Add0~5_combout\ & (\inst8|Add0~9_combout\ & !\inst9|Add0~11\)) # (!\inst9|Add0~5_combout\ & ((\inst8|Add0~9_combout\) # (!\inst9|Add0~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Add0~5_combout\,
	datab => \inst8|Add0~9_combout\,
	datad => VCC,
	cin => \inst9|Add0~11\,
	combout => \inst9|Add0~12_combout\,
	cout => \inst9|Add0~13\);

-- Location: LCCOMB_X27_Y34_N14
\inst9|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|Add0~14_combout\ = (\inst8|Add0~13_combout\ & ((\inst9|Add0~4_combout\ & (!\inst9|Add0~13\)) # (!\inst9|Add0~4_combout\ & (\inst9|Add0~13\ & VCC)))) # (!\inst8|Add0~13_combout\ & ((\inst9|Add0~4_combout\ & ((\inst9|Add0~13\) # (GND))) # 
-- (!\inst9|Add0~4_combout\ & (!\inst9|Add0~13\))))
-- \inst9|Add0~15\ = CARRY((\inst8|Add0~13_combout\ & (\inst9|Add0~4_combout\ & !\inst9|Add0~13\)) # (!\inst8|Add0~13_combout\ & ((\inst9|Add0~4_combout\) # (!\inst9|Add0~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add0~13_combout\,
	datab => \inst9|Add0~4_combout\,
	datad => VCC,
	cin => \inst9|Add0~13\,
	combout => \inst9|Add0~14_combout\,
	cout => \inst9|Add0~15\);

-- Location: LCCOMB_X27_Y34_N16
\inst9|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|Add0~16_combout\ = ((\inst9|Add0~3_combout\ $ (\inst8|Add0~17_combout\ $ (\inst9|Add0~15\)))) # (GND)
-- \inst9|Add0~17\ = CARRY((\inst9|Add0~3_combout\ & (\inst8|Add0~17_combout\ & !\inst9|Add0~15\)) # (!\inst9|Add0~3_combout\ & ((\inst8|Add0~17_combout\) # (!\inst9|Add0~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Add0~3_combout\,
	datab => \inst8|Add0~17_combout\,
	datad => VCC,
	cin => \inst9|Add0~15\,
	combout => \inst9|Add0~16_combout\,
	cout => \inst9|Add0~17\);

-- Location: LCCOMB_X27_Y34_N18
\inst9|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|Add0~18_combout\ = (\inst8|Add0~21_combout\ & ((\inst9|Add0~2_combout\ & (!\inst9|Add0~17\)) # (!\inst9|Add0~2_combout\ & (\inst9|Add0~17\ & VCC)))) # (!\inst8|Add0~21_combout\ & ((\inst9|Add0~2_combout\ & ((\inst9|Add0~17\) # (GND))) # 
-- (!\inst9|Add0~2_combout\ & (!\inst9|Add0~17\))))
-- \inst9|Add0~19\ = CARRY((\inst8|Add0~21_combout\ & (\inst9|Add0~2_combout\ & !\inst9|Add0~17\)) # (!\inst8|Add0~21_combout\ & ((\inst9|Add0~2_combout\) # (!\inst9|Add0~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add0~21_combout\,
	datab => \inst9|Add0~2_combout\,
	datad => VCC,
	cin => \inst9|Add0~17\,
	combout => \inst9|Add0~18_combout\,
	cout => \inst9|Add0~19\);

-- Location: LCCOMB_X27_Y34_N20
\inst9|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|Add0~20_combout\ = ((\inst9|Add0~1_combout\ $ (\inst8|Add0~25_combout\ $ (\inst9|Add0~19\)))) # (GND)
-- \inst9|Add0~21\ = CARRY((\inst9|Add0~1_combout\ & (\inst8|Add0~25_combout\ & !\inst9|Add0~19\)) # (!\inst9|Add0~1_combout\ & ((\inst8|Add0~25_combout\) # (!\inst9|Add0~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Add0~1_combout\,
	datab => \inst8|Add0~25_combout\,
	datad => VCC,
	cin => \inst9|Add0~19\,
	combout => \inst9|Add0~20_combout\,
	cout => \inst9|Add0~21\);

-- Location: LCCOMB_X27_Y34_N22
\inst9|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|Add0~22_combout\ = \inst9|Add0~0_combout\ $ (\inst9|Add0~21\ $ (!\inst8|Add0~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|Add0~0_combout\,
	datad => \inst8|Add0~28_combout\,
	cin => \inst9|Add0~21\,
	combout => \inst9|Add0~22_combout\);

-- Location: LCCOMB_X27_Y35_N22
\inst9|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|Mux0~0_combout\ = (\inst3|Regist[7]~0_combout\ & (((\inst6|Regist[0]~2_combout\)))) # (!\inst3|Regist[7]~0_combout\ & ((\inst6|Regist[0]~2_combout\ & (\inst9|Regist\(0))) # (!\inst6|Regist[0]~2_combout\ & ((\inst12|result[7]~161_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Regist[7]~0_combout\,
	datab => \inst9|Regist\(0),
	datac => \inst6|Regist[0]~2_combout\,
	datad => \inst12|result[7]~161_combout\,
	combout => \inst9|Mux0~0_combout\);

-- Location: LCCOMB_X27_Y35_N12
\inst9|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|Mux0~1_combout\ = (\inst3|Regist[7]~0_combout\ & ((\inst9|Mux0~0_combout\ & (\inst9|Regist\(6))) # (!\inst9|Mux0~0_combout\ & ((!\inst9|Regist\(7)))))) # (!\inst3|Regist[7]~0_combout\ & (((\inst9|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Regist[7]~0_combout\,
	datab => \inst9|Regist\(6),
	datac => \inst9|Mux0~0_combout\,
	datad => \inst9|Regist\(7),
	combout => \inst9|Mux0~1_combout\);

-- Location: LCCOMB_X27_Y35_N28
\inst9|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|Mux0~2_combout\ = (\inst6|Regist[0]~0_combout\ & ((\inst9|Add0~22_combout\) # ((!\inst6|Mux0~0_combout\ & \inst9|Mux0~1_combout\)))) # (!\inst6|Regist[0]~0_combout\ & (!\inst6|Mux0~0_combout\ & ((\inst9|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Regist[0]~0_combout\,
	datab => \inst6|Mux0~0_combout\,
	datac => \inst9|Add0~22_combout\,
	datad => \inst9|Mux0~1_combout\,
	combout => \inst9|Mux0~2_combout\);

-- Location: FF_X27_Y35_N29
\inst9|Regist[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst9|Mux0~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst9|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|Regist\(7));

-- Location: LCCOMB_X27_Y34_N30
\inst9|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|Mux1~0_combout\ = (\inst2|Regist[4]~1_combout\ & (((\inst2|Regist[4]~2_combout\)))) # (!\inst2|Regist[4]~1_combout\ & ((\inst2|Regist[4]~2_combout\ & (\inst12|result[6]~171_combout\)) # (!\inst2|Regist[4]~2_combout\ & ((\inst9|Add0~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~1_combout\,
	datab => \inst12|result[6]~171_combout\,
	datac => \inst2|Regist[4]~2_combout\,
	datad => \inst9|Add0~20_combout\,
	combout => \inst9|Mux1~0_combout\);

-- Location: LCCOMB_X27_Y34_N28
\inst9|Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|Mux1~1_combout\ = (\inst2|Regist[4]~1_combout\ & ((\inst9|Mux1~0_combout\ & ((!\inst9|Regist\(6)))) # (!\inst9|Mux1~0_combout\ & (\inst9|Regist\(5))))) # (!\inst2|Regist[4]~1_combout\ & (((\inst9|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Regist\(5),
	datab => \inst9|Regist\(6),
	datac => \inst2|Regist[4]~1_combout\,
	datad => \inst9|Mux1~0_combout\,
	combout => \inst9|Mux1~1_combout\);

-- Location: LCCOMB_X27_Y34_N0
\inst9|Mux1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|Mux1~2_combout\ = (\inst9|Regist\(7) & ((\inst2|Regist[4]~0_combout\) # ((!\inst8|Mux6~2_combout\ & \inst9|Mux1~1_combout\)))) # (!\inst9|Regist\(7) & (((!\inst8|Mux6~2_combout\ & \inst9|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Regist\(7),
	datab => \inst2|Regist[4]~0_combout\,
	datac => \inst8|Mux6~2_combout\,
	datad => \inst9|Mux1~1_combout\,
	combout => \inst9|Mux1~2_combout\);

-- Location: FF_X27_Y34_N1
\inst9|Regist[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst9|Mux1~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst9|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|Regist\(6));

-- Location: LCCOMB_X27_Y34_N2
\inst9|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|Mux2~0_combout\ = (\inst2|Regist[4]~1_combout\ & ((\inst2|Regist[4]~2_combout\) # ((\inst9|Regist\(4))))) # (!\inst2|Regist[4]~1_combout\ & (!\inst2|Regist[4]~2_combout\ & ((\inst9|Add0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~1_combout\,
	datab => \inst2|Regist[4]~2_combout\,
	datac => \inst9|Regist\(4),
	datad => \inst9|Add0~18_combout\,
	combout => \inst9|Mux2~0_combout\);

-- Location: LCCOMB_X27_Y34_N24
\inst9|Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|Mux2~1_combout\ = (\inst2|Regist[4]~2_combout\ & ((\inst9|Mux2~0_combout\ & ((!\inst9|Regist\(5)))) # (!\inst9|Mux2~0_combout\ & (\inst12|result[5]~181_combout\)))) # (!\inst2|Regist[4]~2_combout\ & (((\inst9|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|result[5]~181_combout\,
	datab => \inst2|Regist[4]~2_combout\,
	datac => \inst9|Regist\(5),
	datad => \inst9|Mux2~0_combout\,
	combout => \inst9|Mux2~1_combout\);

-- Location: LCCOMB_X27_Y34_N26
\inst9|Mux2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|Mux2~2_combout\ = (\inst9|Regist\(6) & ((\inst2|Regist[4]~0_combout\) # ((!\inst8|Mux6~2_combout\ & \inst9|Mux2~1_combout\)))) # (!\inst9|Regist\(6) & (((!\inst8|Mux6~2_combout\ & \inst9|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Regist\(6),
	datab => \inst2|Regist[4]~0_combout\,
	datac => \inst8|Mux6~2_combout\,
	datad => \inst9|Mux2~1_combout\,
	combout => \inst9|Mux2~2_combout\);

-- Location: FF_X27_Y34_N27
\inst9|Regist[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst9|Mux2~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst9|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|Regist\(5));

-- Location: LCCOMB_X29_Y34_N24
\inst9|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|Mux3~0_combout\ = (\inst2|Regist[4]~2_combout\ & ((\inst2|Regist[4]~1_combout\) # ((\inst12|result[4]~191_combout\)))) # (!\inst2|Regist[4]~2_combout\ & (!\inst2|Regist[4]~1_combout\ & ((\inst9|Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~2_combout\,
	datab => \inst2|Regist[4]~1_combout\,
	datac => \inst12|result[4]~191_combout\,
	datad => \inst9|Add0~16_combout\,
	combout => \inst9|Mux3~0_combout\);

-- Location: LCCOMB_X29_Y34_N18
\inst9|Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|Mux3~1_combout\ = (\inst2|Regist[4]~1_combout\ & ((\inst9|Mux3~0_combout\ & (!\inst9|Regist\(4))) # (!\inst9|Mux3~0_combout\ & ((\inst9|Regist\(3)))))) # (!\inst2|Regist[4]~1_combout\ & (((\inst9|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Regist\(4),
	datab => \inst9|Regist\(3),
	datac => \inst2|Regist[4]~1_combout\,
	datad => \inst9|Mux3~0_combout\,
	combout => \inst9|Mux3~1_combout\);

-- Location: LCCOMB_X29_Y34_N16
\inst9|Mux3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|Mux3~2_combout\ = (\inst2|Regist[4]~0_combout\ & ((\inst9|Regist\(5)) # ((!\inst8|Mux6~2_combout\ & \inst9|Mux3~1_combout\)))) # (!\inst2|Regist[4]~0_combout\ & (((!\inst8|Mux6~2_combout\ & \inst9|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~0_combout\,
	datab => \inst9|Regist\(5),
	datac => \inst8|Mux6~2_combout\,
	datad => \inst9|Mux3~1_combout\,
	combout => \inst9|Mux3~2_combout\);

-- Location: FF_X29_Y34_N17
\inst9|Regist[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst9|Mux3~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst9|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|Regist\(4));

-- Location: LCCOMB_X27_Y34_N6
\inst9|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|Mux4~0_combout\ = (\inst2|Regist[4]~1_combout\ & ((\inst9|Regist\(2)) # ((\inst2|Regist[4]~2_combout\)))) # (!\inst2|Regist[4]~1_combout\ & (((\inst9|Add0~14_combout\ & !\inst2|Regist[4]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~1_combout\,
	datab => \inst9|Regist\(2),
	datac => \inst9|Add0~14_combout\,
	datad => \inst2|Regist[4]~2_combout\,
	combout => \inst9|Mux4~0_combout\);

-- Location: LCCOMB_X29_Y34_N20
\inst9|Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|Mux4~1_combout\ = (\inst2|Regist[4]~2_combout\ & ((\inst9|Mux4~0_combout\ & (!\inst9|Regist\(3))) # (!\inst9|Mux4~0_combout\ & ((\inst12|result[3]~201_combout\))))) # (!\inst2|Regist[4]~2_combout\ & (((\inst9|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~2_combout\,
	datab => \inst9|Regist\(3),
	datac => \inst12|result[3]~201_combout\,
	datad => \inst9|Mux4~0_combout\,
	combout => \inst9|Mux4~1_combout\);

-- Location: LCCOMB_X29_Y34_N0
\inst9|Mux4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|Mux4~2_combout\ = (\inst2|Regist[4]~0_combout\ & ((\inst9|Regist\(4)) # ((!\inst8|Mux6~2_combout\ & \inst9|Mux4~1_combout\)))) # (!\inst2|Regist[4]~0_combout\ & (((!\inst8|Mux6~2_combout\ & \inst9|Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~0_combout\,
	datab => \inst9|Regist\(4),
	datac => \inst8|Mux6~2_combout\,
	datad => \inst9|Mux4~1_combout\,
	combout => \inst9|Mux4~2_combout\);

-- Location: FF_X29_Y34_N1
\inst9|Regist[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst9|Mux4~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst9|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|Regist\(3));

-- Location: LCCOMB_X26_Y36_N6
\inst9|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|Mux5~0_combout\ = (\inst2|Regist[4]~1_combout\ & (((\inst2|Regist[4]~2_combout\)))) # (!\inst2|Regist[4]~1_combout\ & ((\inst2|Regist[4]~2_combout\ & (\inst12|result[2]~211_combout\)) # (!\inst2|Regist[4]~2_combout\ & ((\inst9|Add0~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|result[2]~211_combout\,
	datab => \inst2|Regist[4]~1_combout\,
	datac => \inst9|Add0~12_combout\,
	datad => \inst2|Regist[4]~2_combout\,
	combout => \inst9|Mux5~0_combout\);

-- Location: LCCOMB_X26_Y36_N0
\inst9|Mux5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|Mux5~1_combout\ = (\inst2|Regist[4]~1_combout\ & ((\inst9|Mux5~0_combout\ & (!\inst9|Regist\(2))) # (!\inst9|Mux5~0_combout\ & ((\inst9|Regist\(1)))))) # (!\inst2|Regist[4]~1_combout\ & (((\inst9|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Regist\(2),
	datab => \inst9|Regist\(1),
	datac => \inst2|Regist[4]~1_combout\,
	datad => \inst9|Mux5~0_combout\,
	combout => \inst9|Mux5~1_combout\);

-- Location: LCCOMB_X26_Y36_N12
\inst9|Mux5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|Mux5~2_combout\ = (\inst8|Mux6~2_combout\ & (\inst2|Regist[4]~0_combout\ & (\inst9|Regist\(3)))) # (!\inst8|Mux6~2_combout\ & ((\inst9|Mux5~1_combout\) # ((\inst2|Regist[4]~0_combout\ & \inst9|Regist\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Mux6~2_combout\,
	datab => \inst2|Regist[4]~0_combout\,
	datac => \inst9|Regist\(3),
	datad => \inst9|Mux5~1_combout\,
	combout => \inst9|Mux5~2_combout\);

-- Location: FF_X26_Y36_N13
\inst9|Regist[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst9|Mux5~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst9|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|Regist\(2));

-- Location: LCCOMB_X26_Y35_N6
\inst9|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|Mux6~0_combout\ = (\inst2|Regist[4]~2_combout\ & (((\inst2|Regist[4]~1_combout\)))) # (!\inst2|Regist[4]~2_combout\ & ((\inst2|Regist[4]~1_combout\ & (\inst9|Regist\(0))) # (!\inst2|Regist[4]~1_combout\ & ((\inst9|Add0~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Regist\(0),
	datab => \inst2|Regist[4]~2_combout\,
	datac => \inst2|Regist[4]~1_combout\,
	datad => \inst9|Add0~10_combout\,
	combout => \inst9|Mux6~0_combout\);

-- Location: LCCOMB_X26_Y35_N12
\inst9|Mux6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|Mux6~1_combout\ = (\inst2|Regist[4]~2_combout\ & ((\inst9|Mux6~0_combout\ & ((!\inst9|Regist\(1)))) # (!\inst9|Mux6~0_combout\ & (\inst12|result[1]~221_combout\)))) # (!\inst2|Regist[4]~2_combout\ & (((\inst9|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|result[1]~221_combout\,
	datab => \inst9|Regist\(1),
	datac => \inst2|Regist[4]~2_combout\,
	datad => \inst9|Mux6~0_combout\,
	combout => \inst9|Mux6~1_combout\);

-- Location: LCCOMB_X26_Y35_N8
\inst9|Mux6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|Mux6~2_combout\ = (\inst9|Regist\(2) & ((\inst2|Regist[4]~0_combout\) # ((!\inst8|Mux6~2_combout\ & \inst9|Mux6~1_combout\)))) # (!\inst9|Regist\(2) & (((!\inst8|Mux6~2_combout\ & \inst9|Mux6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Regist\(2),
	datab => \inst2|Regist[4]~0_combout\,
	datac => \inst8|Mux6~2_combout\,
	datad => \inst9|Mux6~1_combout\,
	combout => \inst9|Mux6~2_combout\);

-- Location: FF_X26_Y35_N9
\inst9|Regist[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst9|Mux6~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst9|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|Regist\(1));

-- Location: LCCOMB_X26_Y35_N18
\inst12|result[1]~215\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|result[1]~215_combout\ = (\inst12|_~21_combout\ & ((\inst9|Regist\(1)) # ((\inst12|_~22_combout\ & \inst17|Regist\(1))))) # (!\inst12|_~21_combout\ & (\inst12|_~22_combout\ & ((\inst17|Regist\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|_~21_combout\,
	datab => \inst12|_~22_combout\,
	datac => \inst9|Regist\(1),
	datad => \inst17|Regist\(1),
	combout => \inst12|result[1]~215_combout\);

-- Location: LCCOMB_X26_Y35_N0
\inst12|result[1]~218\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|result[1]~218_combout\ = (\inst12|result[1]~216_combout\) # ((\inst12|result[1]~217_combout\) # ((\inst12|result[1]~238_combout\) # (\inst12|result[1]~215_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|result[1]~216_combout\,
	datab => \inst12|result[1]~217_combout\,
	datac => \inst12|result[1]~238_combout\,
	datad => \inst12|result[1]~215_combout\,
	combout => \inst12|result[1]~218_combout\);

-- Location: LCCOMB_X31_Y35_N10
\inst12|_~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|_~38_combout\ = (\inst12|_~30_combout\ & (\muxSel[3]~input_o\ & (!\muxSel[4]~input_o\ & !\muxSel[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|_~30_combout\,
	datab => \muxSel[3]~input_o\,
	datac => \muxSel[4]~input_o\,
	datad => \muxSel[0]~input_o\,
	combout => \inst12|_~38_combout\);

-- Location: LCCOMB_X30_Y34_N26
\inst12|_~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|_~32_combout\ = (!\muxSel[4]~input_o\ & (\muxSel[3]~input_o\ & (\muxSel[0]~input_o\ & \inst12|_~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \muxSel[4]~input_o\,
	datab => \muxSel[3]~input_o\,
	datac => \muxSel[0]~input_o\,
	datad => \inst12|_~30_combout\,
	combout => \inst12|_~32_combout\);

-- Location: LCCOMB_X23_Y38_N30
\inst3|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Add0~0_combout\ = \inst3|Regist\(7) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[3]~input_o\,
	datac => \SelBus[1]~input_o\,
	datad => \inst3|Regist\(7),
	combout => \inst3|Add0~0_combout\);

-- Location: LCCOMB_X24_Y38_N22
\inst3|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Add0~1_combout\ = \inst3|Regist\(6) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[3]~input_o\,
	datab => \SelBus[1]~input_o\,
	datad => \inst3|Regist\(6),
	combout => \inst3|Add0~1_combout\);

-- Location: LCCOMB_X23_Y36_N4
\inst3|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Add0~2_combout\ = \inst3|Regist\(5) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011110000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[1]~input_o\,
	datab => \SelBus[3]~input_o\,
	datac => \inst3|Regist\(5),
	combout => \inst3|Add0~2_combout\);

-- Location: LCCOMB_X23_Y38_N26
\inst3|Add0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Add0~7_combout\ = \inst3|Regist\(0) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[1]~input_o\,
	datac => \inst3|Regist\(0),
	datad => \SelBus[3]~input_o\,
	combout => \inst3|Add0~7_combout\);

-- Location: LCCOMB_X23_Y36_N16
\inst3|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Add0~8_combout\ = (\inst8|Add0~0_combout\ & (\inst3|Add0~7_combout\ $ (GND))) # (!\inst8|Add0~0_combout\ & (!\inst3|Add0~7_combout\ & VCC))
-- \inst3|Add0~9\ = CARRY((\inst8|Add0~0_combout\ & !\inst3|Add0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add0~0_combout\,
	datab => \inst3|Add0~7_combout\,
	datad => VCC,
	combout => \inst3|Add0~8_combout\,
	cout => \inst3|Add0~9\);

-- Location: LCCOMB_X24_Y38_N12
\inst3|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Mux7~0_combout\ = (\inst6|Regist[0]~2_combout\ & ((\inst3|Regist\(7)) # ((\inst6|Regist[0]~1_combout\)))) # (!\inst6|Regist[0]~2_combout\ & (((\inst12|result[0]~231_combout\ & !\inst6|Regist[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Regist[0]~2_combout\,
	datab => \inst3|Regist\(7),
	datac => \inst12|result[0]~231_combout\,
	datad => \inst6|Regist[0]~1_combout\,
	combout => \inst3|Mux7~0_combout\);

-- Location: LCCOMB_X24_Y38_N18
\inst3|Mux7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Mux7~1_combout\ = (\inst6|Regist[0]~1_combout\ & ((\inst3|Mux7~0_combout\ & (\inst3|Regist\(1))) # (!\inst3|Mux7~0_combout\ & ((!\inst3|Regist\(0)))))) # (!\inst6|Regist[0]~1_combout\ & (((\inst3|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Regist[0]~1_combout\,
	datab => \inst3|Regist\(1),
	datac => \inst3|Regist\(0),
	datad => \inst3|Mux7~0_combout\,
	combout => \inst3|Mux7~1_combout\);

-- Location: LCCOMB_X24_Y38_N30
\inst3|Mux7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Mux7~2_combout\ = (\inst8|Mux7~2_combout\ & (\inst6|Regist[0]~0_combout\ & (\inst3|Add0~8_combout\))) # (!\inst8|Mux7~2_combout\ & ((\inst3|Mux7~1_combout\) # ((\inst6|Regist[0]~0_combout\ & \inst3|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Mux7~2_combout\,
	datab => \inst6|Regist[0]~0_combout\,
	datac => \inst3|Add0~8_combout\,
	datad => \inst3|Mux7~1_combout\,
	combout => \inst3|Mux7~2_combout\);

-- Location: LCCOMB_X26_Y38_N10
\inst21|Mux15~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst21|Mux15~15_combout\ = (\SelRegD[0]~input_o\ & (\SelRegD[3]~input_o\ & (!\SelRegD[1]~input_o\ & \SelRegD[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelRegD[0]~input_o\,
	datab => \SelRegD[3]~input_o\,
	datac => \SelRegD[1]~input_o\,
	datad => \SelRegD[2]~input_o\,
	combout => \inst21|Mux15~15_combout\);

-- Location: LCCOMB_X22_Y36_N12
\inst3|Regist[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Regist[0]~1_combout\ = (\inst8|Regist[0]~0_combout\ & (\EnDec~input_o\ & \inst21|Mux15~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Regist[0]~0_combout\,
	datac => \EnDec~input_o\,
	datad => \inst21|Mux15~15_combout\,
	combout => \inst3|Regist[0]~1_combout\);

-- Location: FF_X24_Y38_N31
\inst3|Regist[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|Mux7~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst3|Regist[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|Regist\(0));

-- Location: LCCOMB_X25_Y36_N0
\inst3|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Add0~6_combout\ = \inst3|Regist\(1) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010110010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Regist\(1),
	datab => \SelBus[1]~input_o\,
	datac => \SelBus[3]~input_o\,
	combout => \inst3|Add0~6_combout\);

-- Location: LCCOMB_X23_Y36_N18
\inst3|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Add0~10_combout\ = (\inst8|Add0~5_combout\ & ((\inst3|Add0~6_combout\ & (!\inst3|Add0~9\)) # (!\inst3|Add0~6_combout\ & (\inst3|Add0~9\ & VCC)))) # (!\inst8|Add0~5_combout\ & ((\inst3|Add0~6_combout\ & ((\inst3|Add0~9\) # (GND))) # 
-- (!\inst3|Add0~6_combout\ & (!\inst3|Add0~9\))))
-- \inst3|Add0~11\ = CARRY((\inst8|Add0~5_combout\ & (\inst3|Add0~6_combout\ & !\inst3|Add0~9\)) # (!\inst8|Add0~5_combout\ & ((\inst3|Add0~6_combout\) # (!\inst3|Add0~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add0~5_combout\,
	datab => \inst3|Add0~6_combout\,
	datad => VCC,
	cin => \inst3|Add0~9\,
	combout => \inst3|Add0~10_combout\,
	cout => \inst3|Add0~11\);

-- Location: LCCOMB_X22_Y36_N18
\inst3|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Mux6~0_combout\ = (\inst2|Regist[4]~1_combout\ & (((\inst2|Regist[4]~2_combout\)))) # (!\inst2|Regist[4]~1_combout\ & ((\inst2|Regist[4]~2_combout\ & (\inst12|result[1]~221_combout\)) # (!\inst2|Regist[4]~2_combout\ & ((\inst3|Add0~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|result[1]~221_combout\,
	datab => \inst2|Regist[4]~1_combout\,
	datac => \inst2|Regist[4]~2_combout\,
	datad => \inst3|Add0~10_combout\,
	combout => \inst3|Mux6~0_combout\);

-- Location: LCCOMB_X22_Y36_N28
\inst3|Mux6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Mux6~1_combout\ = (\inst2|Regist[4]~1_combout\ & ((\inst3|Mux6~0_combout\ & ((!\inst3|Regist\(1)))) # (!\inst3|Mux6~0_combout\ & (\inst3|Regist\(0))))) # (!\inst2|Regist[4]~1_combout\ & (((\inst3|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Regist\(0),
	datab => \inst2|Regist[4]~1_combout\,
	datac => \inst3|Regist\(1),
	datad => \inst3|Mux6~0_combout\,
	combout => \inst3|Mux6~1_combout\);

-- Location: LCCOMB_X22_Y36_N30
\inst3|Mux6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Mux6~2_combout\ = (\inst2|Regist[4]~0_combout\ & ((\inst3|Regist\(2)) # ((!\inst8|Mux6~2_combout\ & \inst3|Mux6~1_combout\)))) # (!\inst2|Regist[4]~0_combout\ & (!\inst8|Mux6~2_combout\ & ((\inst3|Mux6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~0_combout\,
	datab => \inst8|Mux6~2_combout\,
	datac => \inst3|Regist\(2),
	datad => \inst3|Mux6~1_combout\,
	combout => \inst3|Mux6~2_combout\);

-- Location: FF_X22_Y36_N31
\inst3|Regist[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|Mux6~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst3|Regist[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|Regist\(1));

-- Location: LCCOMB_X22_Y36_N22
\inst3|Add0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Add0~5_combout\ = \inst3|Regist\(2) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011110000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[3]~input_o\,
	datab => \SelBus[1]~input_o\,
	datac => \inst3|Regist\(2),
	combout => \inst3|Add0~5_combout\);

-- Location: LCCOMB_X23_Y36_N20
\inst3|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Add0~12_combout\ = ((\inst8|Add0~9_combout\ $ (\inst3|Add0~5_combout\ $ (\inst3|Add0~11\)))) # (GND)
-- \inst3|Add0~13\ = CARRY((\inst8|Add0~9_combout\ & ((!\inst3|Add0~11\) # (!\inst3|Add0~5_combout\))) # (!\inst8|Add0~9_combout\ & (!\inst3|Add0~5_combout\ & !\inst3|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add0~9_combout\,
	datab => \inst3|Add0~5_combout\,
	datad => VCC,
	cin => \inst3|Add0~11\,
	combout => \inst3|Add0~12_combout\,
	cout => \inst3|Add0~13\);

-- Location: LCCOMB_X22_Y36_N2
\inst3|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Mux5~0_combout\ = (\inst2|Regist[4]~2_combout\ & (((\inst2|Regist[4]~1_combout\)))) # (!\inst2|Regist[4]~2_combout\ & ((\inst2|Regist[4]~1_combout\ & (\inst3|Regist\(1))) # (!\inst2|Regist[4]~1_combout\ & ((\inst3|Add0~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Regist\(1),
	datab => \inst2|Regist[4]~2_combout\,
	datac => \inst3|Add0~12_combout\,
	datad => \inst2|Regist[4]~1_combout\,
	combout => \inst3|Mux5~0_combout\);

-- Location: LCCOMB_X22_Y36_N20
\inst3|Mux5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Mux5~1_combout\ = (\inst2|Regist[4]~2_combout\ & ((\inst3|Mux5~0_combout\ & ((!\inst3|Regist\(2)))) # (!\inst3|Mux5~0_combout\ & (\inst12|result[2]~211_combout\)))) # (!\inst2|Regist[4]~2_combout\ & (((\inst3|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|result[2]~211_combout\,
	datab => \inst3|Regist\(2),
	datac => \inst2|Regist[4]~2_combout\,
	datad => \inst3|Mux5~0_combout\,
	combout => \inst3|Mux5~1_combout\);

-- Location: LCCOMB_X22_Y36_N8
\inst3|Mux5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Mux5~2_combout\ = (\inst2|Regist[4]~0_combout\ & ((\inst3|Regist\(3)) # ((!\inst8|Mux6~2_combout\ & \inst3|Mux5~1_combout\)))) # (!\inst2|Regist[4]~0_combout\ & (!\inst8|Mux6~2_combout\ & ((\inst3|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~0_combout\,
	datab => \inst8|Mux6~2_combout\,
	datac => \inst3|Regist\(3),
	datad => \inst3|Mux5~1_combout\,
	combout => \inst3|Mux5~2_combout\);

-- Location: FF_X22_Y36_N9
\inst3|Regist[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|Mux5~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst3|Regist[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|Regist\(2));

-- Location: LCCOMB_X23_Y36_N10
\inst3|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Add0~4_combout\ = \inst3|Regist\(3) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[1]~input_o\,
	datac => \inst3|Regist\(3),
	datad => \SelBus[3]~input_o\,
	combout => \inst3|Add0~4_combout\);

-- Location: LCCOMB_X23_Y36_N22
\inst3|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Add0~14_combout\ = (\inst3|Add0~4_combout\ & ((\inst8|Add0~13_combout\ & (!\inst3|Add0~13\)) # (!\inst8|Add0~13_combout\ & ((\inst3|Add0~13\) # (GND))))) # (!\inst3|Add0~4_combout\ & ((\inst8|Add0~13_combout\ & (\inst3|Add0~13\ & VCC)) # 
-- (!\inst8|Add0~13_combout\ & (!\inst3|Add0~13\))))
-- \inst3|Add0~15\ = CARRY((\inst3|Add0~4_combout\ & ((!\inst3|Add0~13\) # (!\inst8|Add0~13_combout\))) # (!\inst3|Add0~4_combout\ & (!\inst8|Add0~13_combout\ & !\inst3|Add0~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~4_combout\,
	datab => \inst8|Add0~13_combout\,
	datad => VCC,
	cin => \inst3|Add0~13\,
	combout => \inst3|Add0~14_combout\,
	cout => \inst3|Add0~15\);

-- Location: LCCOMB_X22_Y36_N6
\inst3|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Mux4~0_combout\ = (\inst2|Regist[4]~1_combout\ & (((\inst2|Regist[4]~2_combout\)))) # (!\inst2|Regist[4]~1_combout\ & ((\inst2|Regist[4]~2_combout\ & (\inst12|result[3]~201_combout\)) # (!\inst2|Regist[4]~2_combout\ & ((\inst3|Add0~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|result[3]~201_combout\,
	datab => \inst2|Regist[4]~1_combout\,
	datac => \inst2|Regist[4]~2_combout\,
	datad => \inst3|Add0~14_combout\,
	combout => \inst3|Mux4~0_combout\);

-- Location: LCCOMB_X22_Y36_N24
\inst3|Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Mux4~1_combout\ = (\inst2|Regist[4]~1_combout\ & ((\inst3|Mux4~0_combout\ & (!\inst3|Regist\(3))) # (!\inst3|Mux4~0_combout\ & ((\inst3|Regist\(2)))))) # (!\inst2|Regist[4]~1_combout\ & (((\inst3|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Regist\(3),
	datab => \inst2|Regist[4]~1_combout\,
	datac => \inst3|Regist\(2),
	datad => \inst3|Mux4~0_combout\,
	combout => \inst3|Mux4~1_combout\);

-- Location: LCCOMB_X22_Y36_N26
\inst3|Mux4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Mux4~2_combout\ = (\inst2|Regist[4]~0_combout\ & ((\inst3|Regist\(4)) # ((!\inst8|Mux6~2_combout\ & \inst3|Mux4~1_combout\)))) # (!\inst2|Regist[4]~0_combout\ & (!\inst8|Mux6~2_combout\ & ((\inst3|Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~0_combout\,
	datab => \inst8|Mux6~2_combout\,
	datac => \inst3|Regist\(4),
	datad => \inst3|Mux4~1_combout\,
	combout => \inst3|Mux4~2_combout\);

-- Location: FF_X22_Y36_N27
\inst3|Regist[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|Mux4~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst3|Regist[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|Regist\(3));

-- Location: LCCOMB_X23_Y36_N24
\inst3|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Add0~16_combout\ = ((\inst8|Add0~17_combout\ $ (\inst3|Add0~3_combout\ $ (\inst3|Add0~15\)))) # (GND)
-- \inst3|Add0~17\ = CARRY((\inst8|Add0~17_combout\ & ((!\inst3|Add0~15\) # (!\inst3|Add0~3_combout\))) # (!\inst8|Add0~17_combout\ & (!\inst3|Add0~3_combout\ & !\inst3|Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add0~17_combout\,
	datab => \inst3|Add0~3_combout\,
	datad => VCC,
	cin => \inst3|Add0~15\,
	combout => \inst3|Add0~16_combout\,
	cout => \inst3|Add0~17\);

-- Location: LCCOMB_X22_Y36_N10
\inst3|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Mux3~0_combout\ = (\inst2|Regist[4]~1_combout\ & ((\inst3|Regist\(3)) # ((\inst2|Regist[4]~2_combout\)))) # (!\inst2|Regist[4]~1_combout\ & (((!\inst2|Regist[4]~2_combout\ & \inst3|Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Regist\(3),
	datab => \inst2|Regist[4]~1_combout\,
	datac => \inst2|Regist[4]~2_combout\,
	datad => \inst3|Add0~16_combout\,
	combout => \inst3|Mux3~0_combout\);

-- Location: LCCOMB_X22_Y36_N16
\inst3|Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Mux3~1_combout\ = (\inst2|Regist[4]~2_combout\ & ((\inst3|Mux3~0_combout\ & ((!\inst3|Regist\(4)))) # (!\inst3|Mux3~0_combout\ & (\inst12|result[4]~191_combout\)))) # (!\inst2|Regist[4]~2_combout\ & (((\inst3|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|result[4]~191_combout\,
	datab => \inst3|Regist\(4),
	datac => \inst2|Regist[4]~2_combout\,
	datad => \inst3|Mux3~0_combout\,
	combout => \inst3|Mux3~1_combout\);

-- Location: LCCOMB_X22_Y36_N0
\inst3|Mux3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Mux3~2_combout\ = (\inst2|Regist[4]~0_combout\ & ((\inst3|Regist\(5)) # ((!\inst8|Mux6~2_combout\ & \inst3|Mux3~1_combout\)))) # (!\inst2|Regist[4]~0_combout\ & (!\inst8|Mux6~2_combout\ & ((\inst3|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~0_combout\,
	datab => \inst8|Mux6~2_combout\,
	datac => \inst3|Regist\(5),
	datad => \inst3|Mux3~1_combout\,
	combout => \inst3|Mux3~2_combout\);

-- Location: FF_X22_Y36_N1
\inst3|Regist[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|Mux3~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst3|Regist[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|Regist\(4));

-- Location: LCCOMB_X22_Y36_N4
\inst3|Add0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Add0~3_combout\ = \inst3|Regist\(4) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[3]~input_o\,
	datac => \SelBus[1]~input_o\,
	datad => \inst3|Regist\(4),
	combout => \inst3|Add0~3_combout\);

-- Location: LCCOMB_X23_Y36_N26
\inst3|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Add0~18_combout\ = (\inst8|Add0~21_combout\ & ((\inst3|Add0~2_combout\ & (!\inst3|Add0~17\)) # (!\inst3|Add0~2_combout\ & (\inst3|Add0~17\ & VCC)))) # (!\inst8|Add0~21_combout\ & ((\inst3|Add0~2_combout\ & ((\inst3|Add0~17\) # (GND))) # 
-- (!\inst3|Add0~2_combout\ & (!\inst3|Add0~17\))))
-- \inst3|Add0~19\ = CARRY((\inst8|Add0~21_combout\ & (\inst3|Add0~2_combout\ & !\inst3|Add0~17\)) # (!\inst8|Add0~21_combout\ & ((\inst3|Add0~2_combout\) # (!\inst3|Add0~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add0~21_combout\,
	datab => \inst3|Add0~2_combout\,
	datad => VCC,
	cin => \inst3|Add0~17\,
	combout => \inst3|Add0~18_combout\,
	cout => \inst3|Add0~19\);

-- Location: LCCOMB_X23_Y36_N28
\inst3|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Add0~20_combout\ = ((\inst8|Add0~25_combout\ $ (\inst3|Add0~1_combout\ $ (\inst3|Add0~19\)))) # (GND)
-- \inst3|Add0~21\ = CARRY((\inst8|Add0~25_combout\ & ((!\inst3|Add0~19\) # (!\inst3|Add0~1_combout\))) # (!\inst8|Add0~25_combout\ & (!\inst3|Add0~1_combout\ & !\inst3|Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add0~25_combout\,
	datab => \inst3|Add0~1_combout\,
	datad => VCC,
	cin => \inst3|Add0~19\,
	combout => \inst3|Add0~20_combout\,
	cout => \inst3|Add0~21\);

-- Location: LCCOMB_X23_Y36_N30
\inst3|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Add0~22_combout\ = \inst3|Add0~0_combout\ $ (\inst3|Add0~21\ $ (!\inst8|Add0~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Add0~0_combout\,
	datad => \inst8|Add0~28_combout\,
	cin => \inst3|Add0~21\,
	combout => \inst3|Add0~22_combout\);

-- Location: LCCOMB_X24_Y38_N28
\inst3|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Mux0~0_combout\ = (\inst6|Regist[0]~2_combout\ & (((\inst3|Regist\(0)) # (\inst3|Regist[7]~0_combout\)))) # (!\inst6|Regist[0]~2_combout\ & (\inst12|result[7]~161_combout\ & ((!\inst3|Regist[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|result[7]~161_combout\,
	datab => \inst3|Regist\(0),
	datac => \inst6|Regist[0]~2_combout\,
	datad => \inst3|Regist[7]~0_combout\,
	combout => \inst3|Mux0~0_combout\);

-- Location: LCCOMB_X24_Y38_N10
\inst3|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Mux0~1_combout\ = (\inst3|Mux0~0_combout\ & (((\inst3|Regist\(6))) # (!\inst3|Regist[7]~0_combout\))) # (!\inst3|Mux0~0_combout\ & (\inst3|Regist[7]~0_combout\ & (!\inst3|Regist\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux0~0_combout\,
	datab => \inst3|Regist[7]~0_combout\,
	datac => \inst3|Regist\(7),
	datad => \inst3|Regist\(6),
	combout => \inst3|Mux0~1_combout\);

-- Location: LCCOMB_X24_Y38_N4
\inst3|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Mux0~2_combout\ = (\inst6|Mux0~0_combout\ & (\inst6|Regist[0]~0_combout\ & (\inst3|Add0~22_combout\))) # (!\inst6|Mux0~0_combout\ & ((\inst3|Mux0~1_combout\) # ((\inst6|Regist[0]~0_combout\ & \inst3|Add0~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mux0~0_combout\,
	datab => \inst6|Regist[0]~0_combout\,
	datac => \inst3|Add0~22_combout\,
	datad => \inst3|Mux0~1_combout\,
	combout => \inst3|Mux0~2_combout\);

-- Location: FF_X24_Y38_N5
\inst3|Regist[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|Mux0~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst3|Regist[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|Regist\(7));

-- Location: LCCOMB_X23_Y36_N0
\inst3|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Mux1~0_combout\ = (\inst2|Regist[4]~2_combout\ & (\inst2|Regist[4]~1_combout\)) # (!\inst2|Regist[4]~2_combout\ & ((\inst2|Regist[4]~1_combout\ & (\inst3|Regist\(5))) # (!\inst2|Regist[4]~1_combout\ & ((\inst3|Add0~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~2_combout\,
	datab => \inst2|Regist[4]~1_combout\,
	datac => \inst3|Regist\(5),
	datad => \inst3|Add0~20_combout\,
	combout => \inst3|Mux1~0_combout\);

-- Location: LCCOMB_X23_Y36_N2
\inst3|Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Mux1~1_combout\ = (\inst2|Regist[4]~2_combout\ & ((\inst3|Mux1~0_combout\ & (!\inst3|Regist\(6))) # (!\inst3|Mux1~0_combout\ & ((\inst12|result[6]~171_combout\))))) # (!\inst2|Regist[4]~2_combout\ & (((\inst3|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~2_combout\,
	datab => \inst3|Regist\(6),
	datac => \inst12|result[6]~171_combout\,
	datad => \inst3|Mux1~0_combout\,
	combout => \inst3|Mux1~1_combout\);

-- Location: LCCOMB_X23_Y36_N8
\inst3|Mux1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Mux1~2_combout\ = (\inst2|Regist[4]~0_combout\ & ((\inst3|Regist\(7)) # ((!\inst8|Mux6~2_combout\ & \inst3|Mux1~1_combout\)))) # (!\inst2|Regist[4]~0_combout\ & (((!\inst8|Mux6~2_combout\ & \inst3|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~0_combout\,
	datab => \inst3|Regist\(7),
	datac => \inst8|Mux6~2_combout\,
	datad => \inst3|Mux1~1_combout\,
	combout => \inst3|Mux1~2_combout\);

-- Location: FF_X23_Y36_N9
\inst3|Regist[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|Mux1~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst3|Regist[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|Regist\(6));

-- Location: LCCOMB_X23_Y36_N12
\inst3|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Mux2~0_combout\ = (\inst2|Regist[4]~2_combout\ & ((\inst2|Regist[4]~1_combout\) # ((\inst12|result[5]~181_combout\)))) # (!\inst2|Regist[4]~2_combout\ & (!\inst2|Regist[4]~1_combout\ & (\inst3|Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~2_combout\,
	datab => \inst2|Regist[4]~1_combout\,
	datac => \inst3|Add0~18_combout\,
	datad => \inst12|result[5]~181_combout\,
	combout => \inst3|Mux2~0_combout\);

-- Location: LCCOMB_X23_Y36_N6
\inst3|Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Mux2~1_combout\ = (\inst2|Regist[4]~1_combout\ & ((\inst3|Mux2~0_combout\ & ((!\inst3|Regist\(5)))) # (!\inst3|Mux2~0_combout\ & (\inst3|Regist\(4))))) # (!\inst2|Regist[4]~1_combout\ & (((\inst3|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Regist\(4),
	datab => \inst2|Regist[4]~1_combout\,
	datac => \inst3|Regist\(5),
	datad => \inst3|Mux2~0_combout\,
	combout => \inst3|Mux2~1_combout\);

-- Location: LCCOMB_X23_Y36_N14
\inst3|Mux2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Mux2~2_combout\ = (\inst2|Regist[4]~0_combout\ & ((\inst3|Regist\(6)) # ((!\inst8|Mux6~2_combout\ & \inst3|Mux2~1_combout\)))) # (!\inst2|Regist[4]~0_combout\ & (((!\inst8|Mux6~2_combout\ & \inst3|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~0_combout\,
	datab => \inst3|Regist\(6),
	datac => \inst8|Mux6~2_combout\,
	datad => \inst3|Mux2~1_combout\,
	combout => \inst3|Mux2~2_combout\);

-- Location: FF_X23_Y36_N15
\inst3|Regist[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|Mux2~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst3|Regist[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|Regist\(5));

-- Location: IOIBUF_X24_Y39_N29
\AluSel[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AluSel(0),
	o => \AluSel[0]~input_o\);

-- Location: IOIBUF_X24_Y39_N22
\AluSel[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AluSel(3),
	o => \AluSel[3]~input_o\);

-- Location: LCCOMB_X23_Y38_N22
\inst4|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add0~0_combout\ = \inst4|Regist\(7) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[3]~input_o\,
	datac => \SelBus[1]~input_o\,
	datad => \inst4|Regist\(7),
	combout => \inst4|Add0~0_combout\);

-- Location: LCCOMB_X23_Y38_N16
\inst4|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add0~1_combout\ = \inst4|Regist\(6) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001110010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[3]~input_o\,
	datab => \inst4|Regist\(6),
	datac => \SelBus[1]~input_o\,
	combout => \inst4|Add0~1_combout\);

-- Location: LCCOMB_X24_Y38_N20
\inst4|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add0~2_combout\ = \inst4|Regist\(5) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011110000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[3]~input_o\,
	datab => \SelBus[1]~input_o\,
	datac => \inst4|Regist\(5),
	combout => \inst4|Add0~2_combout\);

-- Location: LCCOMB_X24_Y37_N8
\inst4|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux7~0_combout\ = (\inst6|Regist[0]~2_combout\ & (((\inst6|Regist[0]~1_combout\) # (\inst4|Regist\(7))))) # (!\inst6|Regist[0]~2_combout\ & (\inst12|result[0]~231_combout\ & (!\inst6|Regist[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|result[0]~231_combout\,
	datab => \inst6|Regist[0]~2_combout\,
	datac => \inst6|Regist[0]~1_combout\,
	datad => \inst4|Regist\(7),
	combout => \inst4|Mux7~0_combout\);

-- Location: LCCOMB_X24_Y37_N14
\inst4|Mux7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux7~1_combout\ = (\inst4|Mux7~0_combout\ & (((\inst4|Regist\(1)) # (!\inst6|Regist[0]~1_combout\)))) # (!\inst4|Mux7~0_combout\ & (!\inst4|Regist\(0) & (\inst6|Regist[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Regist\(0),
	datab => \inst4|Mux7~0_combout\,
	datac => \inst6|Regist[0]~1_combout\,
	datad => \inst4|Regist\(1),
	combout => \inst4|Mux7~1_combout\);

-- Location: LCCOMB_X23_Y38_N12
\inst4|Add0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add0~7_combout\ = \inst4|Regist\(0) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[3]~input_o\,
	datac => \SelBus[1]~input_o\,
	datad => \inst4|Regist\(0),
	combout => \inst4|Add0~7_combout\);

-- Location: LCCOMB_X24_Y34_N0
\inst4|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add0~8_combout\ = (\inst4|Add0~7_combout\ & (\inst8|Add0~0_combout\ & VCC)) # (!\inst4|Add0~7_combout\ & (\inst8|Add0~0_combout\ $ (VCC)))
-- \inst4|Add0~9\ = CARRY((!\inst4|Add0~7_combout\ & \inst8|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add0~7_combout\,
	datab => \inst8|Add0~0_combout\,
	datad => VCC,
	combout => \inst4|Add0~8_combout\,
	cout => \inst4|Add0~9\);

-- Location: LCCOMB_X24_Y37_N6
\inst4|Mux7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux7~2_combout\ = (\inst8|Mux7~2_combout\ & (\inst6|Regist[0]~0_combout\ & ((\inst4|Add0~8_combout\)))) # (!\inst8|Mux7~2_combout\ & ((\inst4|Mux7~1_combout\) # ((\inst6|Regist[0]~0_combout\ & \inst4|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Mux7~2_combout\,
	datab => \inst6|Regist[0]~0_combout\,
	datac => \inst4|Mux7~1_combout\,
	datad => \inst4|Add0~8_combout\,
	combout => \inst4|Mux7~2_combout\);

-- Location: LCCOMB_X26_Y38_N20
\inst21|Mux15~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst21|Mux15~14_combout\ = (!\SelRegD[0]~input_o\ & (\SelRegD[3]~input_o\ & (\SelRegD[1]~input_o\ & \SelRegD[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelRegD[0]~input_o\,
	datab => \SelRegD[3]~input_o\,
	datac => \SelRegD[1]~input_o\,
	datad => \SelRegD[2]~input_o\,
	combout => \inst21|Mux15~14_combout\);

-- Location: LCCOMB_X24_Y36_N22
\inst4|Regist[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Regist[0]~0_combout\ = (\inst8|Regist[0]~0_combout\ & (\EnDec~input_o\ & \inst21|Mux15~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Regist[0]~0_combout\,
	datab => \EnDec~input_o\,
	datad => \inst21|Mux15~14_combout\,
	combout => \inst4|Regist[0]~0_combout\);

-- Location: FF_X24_Y37_N7
\inst4|Regist[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst4|Mux7~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst4|Regist[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Regist\(0));

-- Location: LCCOMB_X23_Y35_N4
\inst4|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add0~6_combout\ = \inst4|Regist\(1) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[3]~input_o\,
	datab => \SelBus[1]~input_o\,
	datad => \inst4|Regist\(1),
	combout => \inst4|Add0~6_combout\);

-- Location: LCCOMB_X24_Y34_N2
\inst4|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add0~10_combout\ = (\inst8|Add0~5_combout\ & ((\inst4|Add0~6_combout\ & (!\inst4|Add0~9\)) # (!\inst4|Add0~6_combout\ & (\inst4|Add0~9\ & VCC)))) # (!\inst8|Add0~5_combout\ & ((\inst4|Add0~6_combout\ & ((\inst4|Add0~9\) # (GND))) # 
-- (!\inst4|Add0~6_combout\ & (!\inst4|Add0~9\))))
-- \inst4|Add0~11\ = CARRY((\inst8|Add0~5_combout\ & (\inst4|Add0~6_combout\ & !\inst4|Add0~9\)) # (!\inst8|Add0~5_combout\ & ((\inst4|Add0~6_combout\) # (!\inst4|Add0~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add0~5_combout\,
	datab => \inst4|Add0~6_combout\,
	datad => VCC,
	cin => \inst4|Add0~9\,
	combout => \inst4|Add0~10_combout\,
	cout => \inst4|Add0~11\);

-- Location: LCCOMB_X24_Y37_N28
\inst4|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux6~0_combout\ = (\inst2|Regist[4]~2_combout\ & ((\inst2|Regist[4]~1_combout\) # ((\inst12|result[1]~221_combout\)))) # (!\inst2|Regist[4]~2_combout\ & (!\inst2|Regist[4]~1_combout\ & (\inst4|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~2_combout\,
	datab => \inst2|Regist[4]~1_combout\,
	datac => \inst4|Add0~10_combout\,
	datad => \inst12|result[1]~221_combout\,
	combout => \inst4|Mux6~0_combout\);

-- Location: LCCOMB_X24_Y37_N18
\inst4|Mux6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux6~1_combout\ = (\inst2|Regist[4]~1_combout\ & ((\inst4|Mux6~0_combout\ & (!\inst4|Regist\(1))) # (!\inst4|Mux6~0_combout\ & ((\inst4|Regist\(0)))))) # (!\inst2|Regist[4]~1_combout\ & (((\inst4|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Regist\(1),
	datab => \inst2|Regist[4]~1_combout\,
	datac => \inst4|Regist\(0),
	datad => \inst4|Mux6~0_combout\,
	combout => \inst4|Mux6~1_combout\);

-- Location: LCCOMB_X24_Y37_N16
\inst4|Mux6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux6~2_combout\ = (\inst4|Regist\(2) & ((\inst2|Regist[4]~0_combout\) # ((!\inst8|Mux6~2_combout\ & \inst4|Mux6~1_combout\)))) # (!\inst4|Regist\(2) & (!\inst8|Mux6~2_combout\ & ((\inst4|Mux6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Regist\(2),
	datab => \inst8|Mux6~2_combout\,
	datac => \inst2|Regist[4]~0_combout\,
	datad => \inst4|Mux6~1_combout\,
	combout => \inst4|Mux6~2_combout\);

-- Location: FF_X24_Y37_N17
\inst4|Regist[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst4|Mux6~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst4|Regist[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Regist\(1));

-- Location: LCCOMB_X23_Y34_N14
\inst4|Add0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add0~5_combout\ = \inst4|Regist\(2) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[1]~input_o\,
	datac => \SelBus[3]~input_o\,
	datad => \inst4|Regist\(2),
	combout => \inst4|Add0~5_combout\);

-- Location: LCCOMB_X24_Y34_N4
\inst4|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add0~12_combout\ = ((\inst4|Add0~5_combout\ $ (\inst8|Add0~9_combout\ $ (\inst4|Add0~11\)))) # (GND)
-- \inst4|Add0~13\ = CARRY((\inst4|Add0~5_combout\ & (\inst8|Add0~9_combout\ & !\inst4|Add0~11\)) # (!\inst4|Add0~5_combout\ & ((\inst8|Add0~9_combout\) # (!\inst4|Add0~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add0~5_combout\,
	datab => \inst8|Add0~9_combout\,
	datad => VCC,
	cin => \inst4|Add0~11\,
	combout => \inst4|Add0~12_combout\,
	cout => \inst4|Add0~13\);

-- Location: LCCOMB_X24_Y37_N20
\inst4|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux5~0_combout\ = (\inst2|Regist[4]~1_combout\ & ((\inst4|Regist\(1)) # ((\inst2|Regist[4]~2_combout\)))) # (!\inst2|Regist[4]~1_combout\ & (((!\inst2|Regist[4]~2_combout\ & \inst4|Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Regist\(1),
	datab => \inst2|Regist[4]~1_combout\,
	datac => \inst2|Regist[4]~2_combout\,
	datad => \inst4|Add0~12_combout\,
	combout => \inst4|Mux5~0_combout\);

-- Location: LCCOMB_X24_Y37_N10
\inst4|Mux5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux5~1_combout\ = (\inst2|Regist[4]~2_combout\ & ((\inst4|Mux5~0_combout\ & ((!\inst4|Regist\(2)))) # (!\inst4|Mux5~0_combout\ & (\inst12|result[2]~211_combout\)))) # (!\inst2|Regist[4]~2_combout\ & (((\inst4|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~2_combout\,
	datab => \inst12|result[2]~211_combout\,
	datac => \inst4|Regist\(2),
	datad => \inst4|Mux5~0_combout\,
	combout => \inst4|Mux5~1_combout\);

-- Location: LCCOMB_X24_Y37_N26
\inst4|Mux5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux5~2_combout\ = (\inst8|Mux6~2_combout\ & (\inst4|Regist\(3) & (\inst2|Regist[4]~0_combout\))) # (!\inst8|Mux6~2_combout\ & ((\inst4|Mux5~1_combout\) # ((\inst4|Regist\(3) & \inst2|Regist[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Mux6~2_combout\,
	datab => \inst4|Regist\(3),
	datac => \inst2|Regist[4]~0_combout\,
	datad => \inst4|Mux5~1_combout\,
	combout => \inst4|Mux5~2_combout\);

-- Location: FF_X24_Y37_N27
\inst4|Regist[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst4|Mux5~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst4|Regist[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Regist\(2));

-- Location: LCCOMB_X23_Y34_N16
\inst4|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add0~4_combout\ = \inst4|Regist\(3) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[1]~input_o\,
	datac => \SelBus[3]~input_o\,
	datad => \inst4|Regist\(3),
	combout => \inst4|Add0~4_combout\);

-- Location: LCCOMB_X24_Y34_N6
\inst4|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add0~14_combout\ = (\inst4|Add0~4_combout\ & ((\inst8|Add0~13_combout\ & (!\inst4|Add0~13\)) # (!\inst8|Add0~13_combout\ & ((\inst4|Add0~13\) # (GND))))) # (!\inst4|Add0~4_combout\ & ((\inst8|Add0~13_combout\ & (\inst4|Add0~13\ & VCC)) # 
-- (!\inst8|Add0~13_combout\ & (!\inst4|Add0~13\))))
-- \inst4|Add0~15\ = CARRY((\inst4|Add0~4_combout\ & ((!\inst4|Add0~13\) # (!\inst8|Add0~13_combout\))) # (!\inst4|Add0~4_combout\ & (!\inst8|Add0~13_combout\ & !\inst4|Add0~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add0~4_combout\,
	datab => \inst8|Add0~13_combout\,
	datad => VCC,
	cin => \inst4|Add0~13\,
	combout => \inst4|Add0~14_combout\,
	cout => \inst4|Add0~15\);

-- Location: LCCOMB_X24_Y34_N20
\inst4|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux4~0_combout\ = (\inst2|Regist[4]~1_combout\ & (((\inst2|Regist[4]~2_combout\)))) # (!\inst2|Regist[4]~1_combout\ & ((\inst2|Regist[4]~2_combout\ & (\inst12|result[3]~201_combout\)) # (!\inst2|Regist[4]~2_combout\ & ((\inst4|Add0~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~1_combout\,
	datab => \inst12|result[3]~201_combout\,
	datac => \inst2|Regist[4]~2_combout\,
	datad => \inst4|Add0~14_combout\,
	combout => \inst4|Mux4~0_combout\);

-- Location: LCCOMB_X24_Y34_N26
\inst4|Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux4~1_combout\ = (\inst2|Regist[4]~1_combout\ & ((\inst4|Mux4~0_combout\ & ((!\inst4|Regist\(3)))) # (!\inst4|Mux4~0_combout\ & (\inst4|Regist\(2))))) # (!\inst2|Regist[4]~1_combout\ & (((\inst4|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~1_combout\,
	datab => \inst4|Regist\(2),
	datac => \inst4|Regist\(3),
	datad => \inst4|Mux4~0_combout\,
	combout => \inst4|Mux4~1_combout\);

-- Location: LCCOMB_X24_Y37_N4
\inst4|Mux4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux4~2_combout\ = (\inst4|Regist\(4) & ((\inst2|Regist[4]~0_combout\) # ((!\inst8|Mux6~2_combout\ & \inst4|Mux4~1_combout\)))) # (!\inst4|Regist\(4) & (!\inst8|Mux6~2_combout\ & ((\inst4|Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Regist\(4),
	datab => \inst8|Mux6~2_combout\,
	datac => \inst2|Regist[4]~0_combout\,
	datad => \inst4|Mux4~1_combout\,
	combout => \inst4|Mux4~2_combout\);

-- Location: FF_X24_Y37_N5
\inst4|Regist[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst4|Mux4~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst4|Regist[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Regist\(3));

-- Location: LCCOMB_X24_Y34_N8
\inst4|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add0~16_combout\ = ((\inst8|Add0~17_combout\ $ (\inst4|Add0~3_combout\ $ (\inst4|Add0~15\)))) # (GND)
-- \inst4|Add0~17\ = CARRY((\inst8|Add0~17_combout\ & ((!\inst4|Add0~15\) # (!\inst4|Add0~3_combout\))) # (!\inst8|Add0~17_combout\ & (!\inst4|Add0~3_combout\ & !\inst4|Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add0~17_combout\,
	datab => \inst4|Add0~3_combout\,
	datad => VCC,
	cin => \inst4|Add0~15\,
	combout => \inst4|Add0~16_combout\,
	cout => \inst4|Add0~17\);

-- Location: LCCOMB_X24_Y37_N24
\inst4|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux3~0_combout\ = (\inst2|Regist[4]~2_combout\ & (\inst2|Regist[4]~1_combout\)) # (!\inst2|Regist[4]~2_combout\ & ((\inst2|Regist[4]~1_combout\ & (\inst4|Regist\(3))) # (!\inst2|Regist[4]~1_combout\ & ((\inst4|Add0~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~2_combout\,
	datab => \inst2|Regist[4]~1_combout\,
	datac => \inst4|Regist\(3),
	datad => \inst4|Add0~16_combout\,
	combout => \inst4|Mux3~0_combout\);

-- Location: LCCOMB_X24_Y37_N2
\inst4|Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux3~1_combout\ = (\inst2|Regist[4]~2_combout\ & ((\inst4|Mux3~0_combout\ & (!\inst4|Regist\(4))) # (!\inst4|Mux3~0_combout\ & ((\inst12|result[4]~191_combout\))))) # (!\inst2|Regist[4]~2_combout\ & (((\inst4|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Regist\(4),
	datab => \inst12|result[4]~191_combout\,
	datac => \inst2|Regist[4]~2_combout\,
	datad => \inst4|Mux3~0_combout\,
	combout => \inst4|Mux3~1_combout\);

-- Location: LCCOMB_X24_Y37_N12
\inst4|Mux3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux3~2_combout\ = (\inst4|Regist\(5) & ((\inst2|Regist[4]~0_combout\) # ((!\inst8|Mux6~2_combout\ & \inst4|Mux3~1_combout\)))) # (!\inst4|Regist\(5) & (!\inst8|Mux6~2_combout\ & ((\inst4|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Regist\(5),
	datab => \inst8|Mux6~2_combout\,
	datac => \inst2|Regist[4]~0_combout\,
	datad => \inst4|Mux3~1_combout\,
	combout => \inst4|Mux3~2_combout\);

-- Location: FF_X24_Y37_N13
\inst4|Regist[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst4|Mux3~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst4|Regist[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Regist\(4));

-- Location: LCCOMB_X22_Y37_N4
\inst4|Add0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add0~3_combout\ = \inst4|Regist\(4) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SelBus[1]~input_o\,
	datac => \SelBus[3]~input_o\,
	datad => \inst4|Regist\(4),
	combout => \inst4|Add0~3_combout\);

-- Location: LCCOMB_X24_Y34_N10
\inst4|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add0~18_combout\ = (\inst4|Add0~2_combout\ & ((\inst8|Add0~21_combout\ & (!\inst4|Add0~17\)) # (!\inst8|Add0~21_combout\ & ((\inst4|Add0~17\) # (GND))))) # (!\inst4|Add0~2_combout\ & ((\inst8|Add0~21_combout\ & (\inst4|Add0~17\ & VCC)) # 
-- (!\inst8|Add0~21_combout\ & (!\inst4|Add0~17\))))
-- \inst4|Add0~19\ = CARRY((\inst4|Add0~2_combout\ & ((!\inst4|Add0~17\) # (!\inst8|Add0~21_combout\))) # (!\inst4|Add0~2_combout\ & (!\inst8|Add0~21_combout\ & !\inst4|Add0~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add0~2_combout\,
	datab => \inst8|Add0~21_combout\,
	datad => VCC,
	cin => \inst4|Add0~17\,
	combout => \inst4|Add0~18_combout\,
	cout => \inst4|Add0~19\);

-- Location: LCCOMB_X24_Y34_N12
\inst4|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add0~20_combout\ = ((\inst8|Add0~25_combout\ $ (\inst4|Add0~1_combout\ $ (\inst4|Add0~19\)))) # (GND)
-- \inst4|Add0~21\ = CARRY((\inst8|Add0~25_combout\ & ((!\inst4|Add0~19\) # (!\inst4|Add0~1_combout\))) # (!\inst8|Add0~25_combout\ & (!\inst4|Add0~1_combout\ & !\inst4|Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add0~25_combout\,
	datab => \inst4|Add0~1_combout\,
	datad => VCC,
	cin => \inst4|Add0~19\,
	combout => \inst4|Add0~20_combout\,
	cout => \inst4|Add0~21\);

-- Location: LCCOMB_X24_Y34_N14
\inst4|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add0~22_combout\ = \inst8|Add0~28_combout\ $ (\inst4|Add0~21\ $ (!\inst4|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add0~28_combout\,
	datad => \inst4|Add0~0_combout\,
	cin => \inst4|Add0~21\,
	combout => \inst4|Add0~22_combout\);

-- Location: LCCOMB_X24_Y38_N6
\inst4|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux0~0_combout\ = (\inst6|Regist[0]~2_combout\ & ((\inst3|Regist[7]~0_combout\) # ((\inst4|Regist\(0))))) # (!\inst6|Regist[0]~2_combout\ & (!\inst3|Regist[7]~0_combout\ & (\inst12|result[7]~161_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Regist[0]~2_combout\,
	datab => \inst3|Regist[7]~0_combout\,
	datac => \inst12|result[7]~161_combout\,
	datad => \inst4|Regist\(0),
	combout => \inst4|Mux0~0_combout\);

-- Location: LCCOMB_X24_Y38_N24
\inst4|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux0~1_combout\ = (\inst3|Regist[7]~0_combout\ & ((\inst4|Mux0~0_combout\ & (\inst4|Regist\(6))) # (!\inst4|Mux0~0_combout\ & ((!\inst4|Regist\(7)))))) # (!\inst3|Regist[7]~0_combout\ & (((\inst4|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Regist\(6),
	datab => \inst3|Regist[7]~0_combout\,
	datac => \inst4|Regist\(7),
	datad => \inst4|Mux0~0_combout\,
	combout => \inst4|Mux0~1_combout\);

-- Location: LCCOMB_X24_Y37_N0
\inst4|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux0~2_combout\ = (\inst6|Mux0~0_combout\ & (\inst6|Regist[0]~0_combout\ & (\inst4|Add0~22_combout\))) # (!\inst6|Mux0~0_combout\ & ((\inst4|Mux0~1_combout\) # ((\inst6|Regist[0]~0_combout\ & \inst4|Add0~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mux0~0_combout\,
	datab => \inst6|Regist[0]~0_combout\,
	datac => \inst4|Add0~22_combout\,
	datad => \inst4|Mux0~1_combout\,
	combout => \inst4|Mux0~2_combout\);

-- Location: FF_X24_Y37_N1
\inst4|Regist[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst4|Mux0~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst4|Regist[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Regist\(7));

-- Location: LCCOMB_X24_Y34_N24
\inst4|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux1~0_combout\ = (\inst2|Regist[4]~1_combout\ & ((\inst4|Regist\(5)) # ((\inst2|Regist[4]~2_combout\)))) # (!\inst2|Regist[4]~1_combout\ & (((!\inst2|Regist[4]~2_combout\ & \inst4|Add0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~1_combout\,
	datab => \inst4|Regist\(5),
	datac => \inst2|Regist[4]~2_combout\,
	datad => \inst4|Add0~20_combout\,
	combout => \inst4|Mux1~0_combout\);

-- Location: LCCOMB_X24_Y34_N30
\inst4|Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux1~1_combout\ = (\inst2|Regist[4]~2_combout\ & ((\inst4|Mux1~0_combout\ & ((!\inst4|Regist\(6)))) # (!\inst4|Mux1~0_combout\ & (\inst12|result[6]~171_combout\)))) # (!\inst2|Regist[4]~2_combout\ & (((\inst4|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|result[6]~171_combout\,
	datab => \inst4|Regist\(6),
	datac => \inst2|Regist[4]~2_combout\,
	datad => \inst4|Mux1~0_combout\,
	combout => \inst4|Mux1~1_combout\);

-- Location: LCCOMB_X24_Y34_N28
\inst4|Mux1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux1~2_combout\ = (\inst4|Regist\(7) & ((\inst2|Regist[4]~0_combout\) # ((!\inst8|Mux6~2_combout\ & \inst4|Mux1~1_combout\)))) # (!\inst4|Regist\(7) & (!\inst8|Mux6~2_combout\ & (\inst4|Mux1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Regist\(7),
	datab => \inst8|Mux6~2_combout\,
	datac => \inst4|Mux1~1_combout\,
	datad => \inst2|Regist[4]~0_combout\,
	combout => \inst4|Mux1~2_combout\);

-- Location: FF_X24_Y34_N29
\inst4|Regist[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst4|Mux1~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst4|Regist[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Regist\(6));

-- Location: LCCOMB_X24_Y34_N16
\inst4|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux2~0_combout\ = (\inst2|Regist[4]~1_combout\ & (((\inst2|Regist[4]~2_combout\)))) # (!\inst2|Regist[4]~1_combout\ & ((\inst2|Regist[4]~2_combout\ & (\inst12|result[5]~181_combout\)) # (!\inst2|Regist[4]~2_combout\ & ((\inst4|Add0~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~1_combout\,
	datab => \inst12|result[5]~181_combout\,
	datac => \inst2|Regist[4]~2_combout\,
	datad => \inst4|Add0~18_combout\,
	combout => \inst4|Mux2~0_combout\);

-- Location: LCCOMB_X24_Y34_N18
\inst4|Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux2~1_combout\ = (\inst2|Regist[4]~1_combout\ & ((\inst4|Mux2~0_combout\ & ((!\inst4|Regist\(5)))) # (!\inst4|Mux2~0_combout\ & (\inst4|Regist\(4))))) # (!\inst2|Regist[4]~1_combout\ & (((\inst4|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~1_combout\,
	datab => \inst4|Regist\(4),
	datac => \inst4|Regist\(5),
	datad => \inst4|Mux2~0_combout\,
	combout => \inst4|Mux2~1_combout\);

-- Location: LCCOMB_X24_Y34_N22
\inst4|Mux2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux2~2_combout\ = (\inst2|Regist[4]~0_combout\ & ((\inst4|Regist\(6)) # ((!\inst8|Mux6~2_combout\ & \inst4|Mux2~1_combout\)))) # (!\inst2|Regist[4]~0_combout\ & (((!\inst8|Mux6~2_combout\ & \inst4|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~0_combout\,
	datab => \inst4|Regist\(6),
	datac => \inst8|Mux6~2_combout\,
	datad => \inst4|Mux2~1_combout\,
	combout => \inst4|Mux2~2_combout\);

-- Location: FF_X24_Y34_N23
\inst4|Regist[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst4|Mux2~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst4|Regist[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Regist\(5));

-- Location: LCCOMB_X23_Y37_N30
\inst24|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|Add0~2_combout\ = \inst4|Regist\(5) $ (((\AluSel[3]~input_o\) # (!\AluSel[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AluSel[0]~input_o\,
	datac => \AluSel[3]~input_o\,
	datad => \inst4|Regist\(5),
	combout => \inst24|Add0~2_combout\);

-- Location: LCCOMB_X24_Y37_N30
\inst24|Add0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|Add0~3_combout\ = \inst4|Regist\(4) $ (((\AluSel[3]~input_o\) # (!\AluSel[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AluSel[0]~input_o\,
	datac => \AluSel[3]~input_o\,
	datad => \inst4|Regist\(4),
	combout => \inst24|Add0~3_combout\);

-- Location: LCCOMB_X23_Y37_N22
\inst24|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|Add0~4_combout\ = \inst4|Regist\(3) $ (((\AluSel[3]~input_o\) # (!\AluSel[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AluSel[0]~input_o\,
	datac => \AluSel[3]~input_o\,
	datad => \inst4|Regist\(3),
	combout => \inst24|Add0~4_combout\);

-- Location: LCCOMB_X23_Y37_N24
\inst24|Add0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|Add0~5_combout\ = \inst4|Regist\(2) $ (((\AluSel[3]~input_o\) # (!\AluSel[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AluSel[0]~input_o\,
	datac => \AluSel[3]~input_o\,
	datad => \inst4|Regist\(2),
	combout => \inst24|Add0~5_combout\);

-- Location: LCCOMB_X23_Y37_N2
\inst24|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|Add0~6_combout\ = \inst4|Regist\(1) $ (((\AluSel[3]~input_o\) # (!\AluSel[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AluSel[3]~input_o\,
	datac => \AluSel[0]~input_o\,
	datad => \inst4|Regist\(1),
	combout => \inst24|Add0~6_combout\);

-- Location: LCCOMB_X23_Y37_N0
\inst24|Add0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|Add0~7_combout\ = \inst4|Regist\(0) $ (((\AluSel[3]~input_o\) # (!\AluSel[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AluSel[3]~input_o\,
	datac => \AluSel[0]~input_o\,
	datad => \inst4|Regist\(0),
	combout => \inst24|Add0~7_combout\);

-- Location: LCCOMB_X23_Y37_N4
\inst24|Add0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|Add0~9_cout\ = CARRY((!\AluSel[3]~input_o\ & \AluSel[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AluSel[3]~input_o\,
	datab => \AluSel[0]~input_o\,
	datad => VCC,
	cout => \inst24|Add0~9_cout\);

-- Location: LCCOMB_X23_Y37_N6
\inst24|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|Add0~10_combout\ = (\inst3|Regist\(0) & ((\inst24|Add0~7_combout\ & (!\inst24|Add0~9_cout\)) # (!\inst24|Add0~7_combout\ & (\inst24|Add0~9_cout\ & VCC)))) # (!\inst3|Regist\(0) & ((\inst24|Add0~7_combout\ & ((\inst24|Add0~9_cout\) # (GND))) # 
-- (!\inst24|Add0~7_combout\ & (!\inst24|Add0~9_cout\))))
-- \inst24|Add0~11\ = CARRY((\inst3|Regist\(0) & (\inst24|Add0~7_combout\ & !\inst24|Add0~9_cout\)) # (!\inst3|Regist\(0) & ((\inst24|Add0~7_combout\) # (!\inst24|Add0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Regist\(0),
	datab => \inst24|Add0~7_combout\,
	datad => VCC,
	cin => \inst24|Add0~9_cout\,
	combout => \inst24|Add0~10_combout\,
	cout => \inst24|Add0~11\);

-- Location: LCCOMB_X23_Y37_N8
\inst24|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|Add0~12_combout\ = ((\inst24|Add0~6_combout\ $ (\inst3|Regist\(1) $ (\inst24|Add0~11\)))) # (GND)
-- \inst24|Add0~13\ = CARRY((\inst24|Add0~6_combout\ & (\inst3|Regist\(1) & !\inst24|Add0~11\)) # (!\inst24|Add0~6_combout\ & ((\inst3|Regist\(1)) # (!\inst24|Add0~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|Add0~6_combout\,
	datab => \inst3|Regist\(1),
	datad => VCC,
	cin => \inst24|Add0~11\,
	combout => \inst24|Add0~12_combout\,
	cout => \inst24|Add0~13\);

-- Location: LCCOMB_X23_Y37_N10
\inst24|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|Add0~14_combout\ = (\inst24|Add0~5_combout\ & ((\inst3|Regist\(2) & (!\inst24|Add0~13\)) # (!\inst3|Regist\(2) & ((\inst24|Add0~13\) # (GND))))) # (!\inst24|Add0~5_combout\ & ((\inst3|Regist\(2) & (\inst24|Add0~13\ & VCC)) # (!\inst3|Regist\(2) & 
-- (!\inst24|Add0~13\))))
-- \inst24|Add0~15\ = CARRY((\inst24|Add0~5_combout\ & ((!\inst24|Add0~13\) # (!\inst3|Regist\(2)))) # (!\inst24|Add0~5_combout\ & (!\inst3|Regist\(2) & !\inst24|Add0~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|Add0~5_combout\,
	datab => \inst3|Regist\(2),
	datad => VCC,
	cin => \inst24|Add0~13\,
	combout => \inst24|Add0~14_combout\,
	cout => \inst24|Add0~15\);

-- Location: LCCOMB_X23_Y37_N12
\inst24|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|Add0~16_combout\ = ((\inst24|Add0~4_combout\ $ (\inst3|Regist\(3) $ (\inst24|Add0~15\)))) # (GND)
-- \inst24|Add0~17\ = CARRY((\inst24|Add0~4_combout\ & (\inst3|Regist\(3) & !\inst24|Add0~15\)) # (!\inst24|Add0~4_combout\ & ((\inst3|Regist\(3)) # (!\inst24|Add0~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|Add0~4_combout\,
	datab => \inst3|Regist\(3),
	datad => VCC,
	cin => \inst24|Add0~15\,
	combout => \inst24|Add0~16_combout\,
	cout => \inst24|Add0~17\);

-- Location: LCCOMB_X23_Y37_N14
\inst24|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|Add0~18_combout\ = (\inst3|Regist\(4) & ((\inst24|Add0~3_combout\ & (!\inst24|Add0~17\)) # (!\inst24|Add0~3_combout\ & (\inst24|Add0~17\ & VCC)))) # (!\inst3|Regist\(4) & ((\inst24|Add0~3_combout\ & ((\inst24|Add0~17\) # (GND))) # 
-- (!\inst24|Add0~3_combout\ & (!\inst24|Add0~17\))))
-- \inst24|Add0~19\ = CARRY((\inst3|Regist\(4) & (\inst24|Add0~3_combout\ & !\inst24|Add0~17\)) # (!\inst3|Regist\(4) & ((\inst24|Add0~3_combout\) # (!\inst24|Add0~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Regist\(4),
	datab => \inst24|Add0~3_combout\,
	datad => VCC,
	cin => \inst24|Add0~17\,
	combout => \inst24|Add0~18_combout\,
	cout => \inst24|Add0~19\);

-- Location: LCCOMB_X23_Y37_N16
\inst24|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|Add0~20_combout\ = ((\inst3|Regist\(5) $ (\inst24|Add0~2_combout\ $ (\inst24|Add0~19\)))) # (GND)
-- \inst24|Add0~21\ = CARRY((\inst3|Regist\(5) & ((!\inst24|Add0~19\) # (!\inst24|Add0~2_combout\))) # (!\inst3|Regist\(5) & (!\inst24|Add0~2_combout\ & !\inst24|Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Regist\(5),
	datab => \inst24|Add0~2_combout\,
	datad => VCC,
	cin => \inst24|Add0~19\,
	combout => \inst24|Add0~20_combout\,
	cout => \inst24|Add0~21\);

-- Location: IOIBUF_X22_Y39_N15
\AluSel[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AluSel(2),
	o => \AluSel[2]~input_o\);

-- Location: IOIBUF_X0_Y37_N8
\AluSel[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AluSel(1),
	o => \AluSel[1]~input_o\);

-- Location: LCCOMB_X23_Y38_N6
\inst24|Mux11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|Mux11~1_combout\ = (\AluSel[2]~input_o\) # ((\AluSel[3]~input_o\) # (!\AluSel[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AluSel[2]~input_o\,
	datac => \AluSel[1]~input_o\,
	datad => \AluSel[3]~input_o\,
	combout => \inst24|Mux11~1_combout\);

-- Location: LCCOMB_X23_Y38_N14
\inst24|Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|Mux11~0_combout\ = (\AluSel[3]~input_o\) # ((\AluSel[2]~input_o\ & ((\AluSel[1]~input_o\))) # (!\AluSel[2]~input_o\ & ((\AluSel[0]~input_o\) # (!\AluSel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AluSel[0]~input_o\,
	datab => \AluSel[2]~input_o\,
	datac => \AluSel[1]~input_o\,
	datad => \AluSel[3]~input_o\,
	combout => \inst24|Mux11~0_combout\);

-- Location: LCCOMB_X22_Y35_N6
\inst24|Mux14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|Mux14~0_combout\ = (\inst24|Mux11~1_combout\ & ((\inst24|Mux11~0_combout\ & (\inst24|Add0~20_combout\)) # (!\inst24|Mux11~0_combout\ & ((\inst4|Regist\(5)))))) # (!\inst24|Mux11~1_combout\ & (((\inst4|Regist\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|Add0~20_combout\,
	datab => \inst24|Mux11~1_combout\,
	datac => \inst4|Regist\(5),
	datad => \inst24|Mux11~0_combout\,
	combout => \inst24|Mux14~0_combout\);

-- Location: LCCOMB_X22_Y35_N8
\inst24|Mux14~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|Mux14~1_combout\ = (\inst24|Mux14~0_combout\ & ((\inst24|Mux11~0_combout\) # (\inst3|Regist\(5) $ (\inst24|Mux11~1_combout\)))) # (!\inst24|Mux14~0_combout\ & (\inst3|Regist\(5) & (\inst24|Mux11~0_combout\ $ (\inst24|Mux11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Regist\(5),
	datab => \inst24|Mux14~0_combout\,
	datac => \inst24|Mux11~0_combout\,
	datad => \inst24|Mux11~1_combout\,
	combout => \inst24|Mux14~1_combout\);

-- Location: LCCOMB_X23_Y38_N0
\inst24|Mux17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|Mux17~0_combout\ = (\AluSel[2]~input_o\ & (!\AluSel[3]~input_o\ & ((\AluSel[0]~input_o\)))) # (!\AluSel[2]~input_o\ & (\AluSel[3]~input_o\ & (!\AluSel[1]~input_o\ & !\AluSel[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AluSel[2]~input_o\,
	datab => \AluSel[3]~input_o\,
	datac => \AluSel[1]~input_o\,
	datad => \AluSel[0]~input_o\,
	combout => \inst24|Mux17~0_combout\);

-- Location: CLKCTRL_G2
\inst24|Mux17~0clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst24|Mux17~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst24|Mux17~0clkctrl_outclk\);

-- Location: LCCOMB_X22_Y35_N2
\inst24|ALU_Result[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|ALU_Result\(5) = (GLOBAL(\inst24|Mux17~0clkctrl_outclk\) & ((\inst24|ALU_Result\(5)))) # (!GLOBAL(\inst24|Mux17~0clkctrl_outclk\) & (\inst24|Mux14~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|Mux14~1_combout\,
	datab => \inst24|ALU_Result\(5),
	datad => \inst24|Mux17~0clkctrl_outclk\,
	combout => \inst24|ALU_Result\(5));

-- Location: LCCOMB_X21_Y35_N22
\inst20|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst20|Mux2~0_combout\ = (\inst2|Regist[4]~1_combout\ & (!\inst20|Regist\(5) & (\inst2|Regist[4]~2_combout\))) # (!\inst2|Regist[4]~1_combout\ & (((\inst24|ALU_Result\(5)) # (!\inst2|Regist[4]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Regist\(5),
	datab => \inst2|Regist[4]~1_combout\,
	datac => \inst2|Regist[4]~2_combout\,
	datad => \inst24|ALU_Result\(5),
	combout => \inst20|Mux2~0_combout\);

-- Location: LCCOMB_X24_Y35_N12
\inst20|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst20|Add0~4_combout\ = \inst20|Regist\(5) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011110000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[1]~input_o\,
	datab => \SelBus[3]~input_o\,
	datac => \inst20|Regist\(5),
	combout => \inst20|Add0~4_combout\);

-- Location: LCCOMB_X22_Y35_N28
\inst20|Add0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst20|Add0~5_combout\ = (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst24|ALU_Result\(5))))) # (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[1]~input_o\,
	datab => \SelBus[0]~input_o\,
	datac => \SelBus[3]~input_o\,
	datad => \inst24|ALU_Result\(5),
	combout => \inst20|Add0~5_combout\);

-- Location: LCCOMB_X22_Y35_N30
\inst20|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst20|Add0~6_combout\ = \inst20|Regist\(4) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[1]~input_o\,
	datab => \SelBus[3]~input_o\,
	datad => \inst20|Regist\(4),
	combout => \inst20|Add0~6_combout\);

-- Location: LCCOMB_X22_Y37_N10
\inst24|Mux13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|Mux13~0_combout\ = (\inst24|Mux11~1_combout\ & ((\inst24|Mux11~0_combout\ & ((\inst24|Add0~18_combout\))) # (!\inst24|Mux11~0_combout\ & (\inst4|Regist\(4))))) # (!\inst24|Mux11~1_combout\ & (\inst4|Regist\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Regist\(4),
	datab => \inst24|Mux11~1_combout\,
	datac => \inst24|Mux11~0_combout\,
	datad => \inst24|Add0~18_combout\,
	combout => \inst24|Mux13~0_combout\);

-- Location: LCCOMB_X22_Y37_N20
\inst24|Mux13~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|Mux13~1_combout\ = (\inst24|Mux13~0_combout\ & ((\inst24|Mux11~0_combout\) # (\inst3|Regist\(4) $ (\inst24|Mux11~1_combout\)))) # (!\inst24|Mux13~0_combout\ & (\inst3|Regist\(4) & (\inst24|Mux11~1_combout\ $ (\inst24|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Regist\(4),
	datab => \inst24|Mux11~1_combout\,
	datac => \inst24|Mux13~0_combout\,
	datad => \inst24|Mux11~0_combout\,
	combout => \inst24|Mux13~1_combout\);

-- Location: LCCOMB_X22_Y37_N18
\inst24|ALU_Result[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|ALU_Result\(4) = (GLOBAL(\inst24|Mux17~0clkctrl_outclk\) & (\inst24|ALU_Result\(4))) # (!GLOBAL(\inst24|Mux17~0clkctrl_outclk\) & ((\inst24|Mux13~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst24|ALU_Result\(4),
	datac => \inst24|Mux13~1_combout\,
	datad => \inst24|Mux17~0clkctrl_outclk\,
	combout => \inst24|ALU_Result\(4));

-- Location: LCCOMB_X22_Y37_N28
\inst20|Add0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst20|Add0~7_combout\ = (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst24|ALU_Result\(4))))) # (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[0]~input_o\,
	datab => \SelBus[1]~input_o\,
	datac => \SelBus[3]~input_o\,
	datad => \inst24|ALU_Result\(4),
	combout => \inst20|Add0~7_combout\);

-- Location: LCCOMB_X22_Y37_N30
\inst24|Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|Mux12~0_combout\ = (\inst24|Mux11~1_combout\ & ((\inst24|Mux11~0_combout\ & ((\inst24|Add0~16_combout\))) # (!\inst24|Mux11~0_combout\ & (\inst4|Regist\(3))))) # (!\inst24|Mux11~1_combout\ & (\inst4|Regist\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Regist\(3),
	datab => \inst24|Mux11~1_combout\,
	datac => \inst24|Add0~16_combout\,
	datad => \inst24|Mux11~0_combout\,
	combout => \inst24|Mux12~0_combout\);

-- Location: LCCOMB_X22_Y37_N0
\inst24|Mux12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|Mux12~1_combout\ = (\inst24|Mux12~0_combout\ & ((\inst24|Mux11~0_combout\) # (\inst3|Regist\(3) $ (\inst24|Mux11~1_combout\)))) # (!\inst24|Mux12~0_combout\ & (\inst3|Regist\(3) & (\inst24|Mux11~1_combout\ $ (\inst24|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Regist\(3),
	datab => \inst24|Mux11~1_combout\,
	datac => \inst24|Mux12~0_combout\,
	datad => \inst24|Mux11~0_combout\,
	combout => \inst24|Mux12~1_combout\);

-- Location: LCCOMB_X22_Y37_N16
\inst24|ALU_Result[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|ALU_Result\(3) = (GLOBAL(\inst24|Mux17~0clkctrl_outclk\) & (\inst24|ALU_Result\(3))) # (!GLOBAL(\inst24|Mux17~0clkctrl_outclk\) & ((\inst24|Mux12~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst24|ALU_Result\(3),
	datac => \inst24|Mux12~1_combout\,
	datad => \inst24|Mux17~0clkctrl_outclk\,
	combout => \inst24|ALU_Result\(3));

-- Location: LCCOMB_X22_Y37_N26
\inst20|Add0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst20|Add0~9_combout\ = (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst24|ALU_Result\(3))))) # (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[0]~input_o\,
	datab => \SelBus[1]~input_o\,
	datac => \SelBus[3]~input_o\,
	datad => \inst24|ALU_Result\(3),
	combout => \inst20|Add0~9_combout\);

-- Location: LCCOMB_X24_Y35_N10
\inst20|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst20|Add0~8_combout\ = \inst20|Regist\(3) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[1]~input_o\,
	datab => \SelBus[3]~input_o\,
	datad => \inst20|Regist\(3),
	combout => \inst20|Add0~8_combout\);

-- Location: LCCOMB_X23_Y35_N30
\inst20|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst20|Add0~10_combout\ = \inst20|Regist\(2) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst20|Regist\(2),
	datac => \SelBus[1]~input_o\,
	datad => \SelBus[3]~input_o\,
	combout => \inst20|Add0~10_combout\);

-- Location: LCCOMB_X23_Y37_N26
\inst24|Mux11~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|Mux11~2_combout\ = (\inst24|Mux11~1_combout\ & ((\inst24|Mux11~0_combout\ & (\inst24|Add0~14_combout\)) # (!\inst24|Mux11~0_combout\ & ((\inst4|Regist\(2)))))) # (!\inst24|Mux11~1_combout\ & (((\inst4|Regist\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|Mux11~1_combout\,
	datab => \inst24|Add0~14_combout\,
	datac => \inst24|Mux11~0_combout\,
	datad => \inst4|Regist\(2),
	combout => \inst24|Mux11~2_combout\);

-- Location: LCCOMB_X23_Y35_N2
\inst24|Mux11~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|Mux11~3_combout\ = (\inst24|Mux11~2_combout\ & ((\inst24|Mux11~0_combout\) # (\inst24|Mux11~1_combout\ $ (\inst3|Regist\(2))))) # (!\inst24|Mux11~2_combout\ & (\inst3|Regist\(2) & (\inst24|Mux11~1_combout\ $ (\inst24|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|Mux11~2_combout\,
	datab => \inst24|Mux11~1_combout\,
	datac => \inst24|Mux11~0_combout\,
	datad => \inst3|Regist\(2),
	combout => \inst24|Mux11~3_combout\);

-- Location: LCCOMB_X23_Y35_N28
\inst24|ALU_Result[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|ALU_Result\(2) = (GLOBAL(\inst24|Mux17~0clkctrl_outclk\) & (\inst24|ALU_Result\(2))) # (!GLOBAL(\inst24|Mux17~0clkctrl_outclk\) & ((\inst24|Mux11~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst24|ALU_Result\(2),
	datac => \inst24|Mux11~3_combout\,
	datad => \inst24|Mux17~0clkctrl_outclk\,
	combout => \inst24|ALU_Result\(2));

-- Location: LCCOMB_X22_Y35_N0
\inst20|Add0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst20|Add0~11_combout\ = (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst24|ALU_Result\(2))))) # (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[1]~input_o\,
	datab => \SelBus[0]~input_o\,
	datac => \SelBus[3]~input_o\,
	datad => \inst24|ALU_Result\(2),
	combout => \inst20|Add0~11_combout\);

-- Location: LCCOMB_X23_Y35_N20
\inst20|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst20|Add0~12_combout\ = \inst20|Regist\(1) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SelBus[1]~input_o\,
	datac => \inst20|Regist\(1),
	datad => \SelBus[3]~input_o\,
	combout => \inst20|Add0~12_combout\);

-- Location: LCCOMB_X23_Y35_N14
\inst24|Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|Mux10~0_combout\ = (\inst24|Mux11~0_combout\ & ((\inst24|Mux11~1_combout\ & (\inst24|Add0~12_combout\)) # (!\inst24|Mux11~1_combout\ & ((\inst4|Regist\(1)))))) # (!\inst24|Mux11~0_combout\ & (((\inst4|Regist\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|Mux11~0_combout\,
	datab => \inst24|Add0~12_combout\,
	datac => \inst24|Mux11~1_combout\,
	datad => \inst4|Regist\(1),
	combout => \inst24|Mux10~0_combout\);

-- Location: LCCOMB_X23_Y35_N24
\inst24|Mux10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|Mux10~1_combout\ = (\inst24|Mux10~0_combout\ & ((\inst24|Mux11~0_combout\) # (\inst24|Mux11~1_combout\ $ (\inst3|Regist\(1))))) # (!\inst24|Mux10~0_combout\ & (\inst3|Regist\(1) & (\inst24|Mux11~1_combout\ $ (\inst24|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|Mux10~0_combout\,
	datab => \inst24|Mux11~1_combout\,
	datac => \inst24|Mux11~0_combout\,
	datad => \inst3|Regist\(1),
	combout => \inst24|Mux10~1_combout\);

-- Location: LCCOMB_X23_Y35_N10
\inst24|ALU_Result[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|ALU_Result\(1) = (GLOBAL(\inst24|Mux17~0clkctrl_outclk\) & (\inst24|ALU_Result\(1))) # (!GLOBAL(\inst24|Mux17~0clkctrl_outclk\) & ((\inst24|Mux10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|ALU_Result\(1),
	datac => \inst24|Mux10~1_combout\,
	datad => \inst24|Mux17~0clkctrl_outclk\,
	combout => \inst24|ALU_Result\(1));

-- Location: LCCOMB_X23_Y35_N26
\inst20|Add0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst20|Add0~13_combout\ = (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst24|ALU_Result\(1))))) # (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[3]~input_o\,
	datab => \SelBus[0]~input_o\,
	datac => \SelBus[1]~input_o\,
	datad => \inst24|ALU_Result\(1),
	combout => \inst20|Add0~13_combout\);

-- Location: LCCOMB_X22_Y38_N10
\inst24|Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|Mux9~0_combout\ = (\inst24|Mux11~0_combout\ & ((\inst24|Mux11~1_combout\ & (\inst24|Add0~10_combout\)) # (!\inst24|Mux11~1_combout\ & ((\inst4|Regist\(0)))))) # (!\inst24|Mux11~0_combout\ & (((\inst4|Regist\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|Mux11~0_combout\,
	datab => \inst24|Add0~10_combout\,
	datac => \inst24|Mux11~1_combout\,
	datad => \inst4|Regist\(0),
	combout => \inst24|Mux9~0_combout\);

-- Location: LCCOMB_X22_Y38_N0
\inst24|Mux9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|Mux9~1_combout\ = (\inst24|Mux9~0_combout\ & ((\inst24|Mux11~0_combout\) # (\inst24|Mux11~1_combout\ $ (\inst3|Regist\(0))))) # (!\inst24|Mux9~0_combout\ & (\inst3|Regist\(0) & (\inst24|Mux11~1_combout\ $ (\inst24|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|Mux11~1_combout\,
	datab => \inst3|Regist\(0),
	datac => \inst24|Mux9~0_combout\,
	datad => \inst24|Mux11~0_combout\,
	combout => \inst24|Mux9~1_combout\);

-- Location: LCCOMB_X22_Y38_N18
\inst24|ALU_Result[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|ALU_Result\(0) = (GLOBAL(\inst24|Mux17~0clkctrl_outclk\) & ((\inst24|ALU_Result\(0)))) # (!GLOBAL(\inst24|Mux17~0clkctrl_outclk\) & (\inst24|Mux9~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst24|Mux9~1_combout\,
	datac => \inst24|ALU_Result\(0),
	datad => \inst24|Mux17~0clkctrl_outclk\,
	combout => \inst24|ALU_Result\(0));

-- Location: LCCOMB_X22_Y38_N20
\inst20|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst20|Add0~14_combout\ = ((\SelBus[1]~input_o\) # (\inst24|ALU_Result\(0))) # (!\SelBus[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SelBus[3]~input_o\,
	datac => \SelBus[1]~input_o\,
	datad => \inst24|ALU_Result\(0),
	combout => \inst20|Add0~14_combout\);

-- Location: LCCOMB_X22_Y35_N12
\inst20|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst20|Add0~16_combout\ = (\inst20|Add0~14_combout\ & (\inst20|Add0~15_combout\ $ (GND))) # (!\inst20|Add0~14_combout\ & (!\inst20|Add0~15_combout\ & VCC))
-- \inst20|Add0~17\ = CARRY((\inst20|Add0~14_combout\ & !\inst20|Add0~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Add0~14_combout\,
	datab => \inst20|Add0~15_combout\,
	datad => VCC,
	combout => \inst20|Add0~16_combout\,
	cout => \inst20|Add0~17\);

-- Location: LCCOMB_X22_Y35_N10
\inst20|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst20|Add0~0_combout\ = \inst20|Regist\(7) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst20|Regist\(7),
	datac => \SelBus[3]~input_o\,
	datad => \SelBus[1]~input_o\,
	combout => \inst20|Add0~0_combout\);

-- Location: LCCOMB_X24_Y37_N22
\inst24|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|Add0~0_combout\ = \inst4|Regist\(7) $ (((\AluSel[3]~input_o\) # (!\AluSel[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AluSel[0]~input_o\,
	datab => \AluSel[3]~input_o\,
	datad => \inst4|Regist\(7),
	combout => \inst24|Add0~0_combout\);

-- Location: LCCOMB_X23_Y37_N28
\inst24|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|Add0~1_combout\ = \inst4|Regist\(6) $ (((\AluSel[3]~input_o\) # (!\AluSel[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AluSel[0]~input_o\,
	datac => \AluSel[3]~input_o\,
	datad => \inst4|Regist\(6),
	combout => \inst24|Add0~1_combout\);

-- Location: LCCOMB_X23_Y37_N18
\inst24|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|Add0~22_combout\ = (\inst24|Add0~1_combout\ & ((\inst3|Regist\(6) & (!\inst24|Add0~21\)) # (!\inst3|Regist\(6) & ((\inst24|Add0~21\) # (GND))))) # (!\inst24|Add0~1_combout\ & ((\inst3|Regist\(6) & (\inst24|Add0~21\ & VCC)) # (!\inst3|Regist\(6) & 
-- (!\inst24|Add0~21\))))
-- \inst24|Add0~23\ = CARRY((\inst24|Add0~1_combout\ & ((!\inst24|Add0~21\) # (!\inst3|Regist\(6)))) # (!\inst24|Add0~1_combout\ & (!\inst3|Regist\(6) & !\inst24|Add0~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|Add0~1_combout\,
	datab => \inst3|Regist\(6),
	datad => VCC,
	cin => \inst24|Add0~21\,
	combout => \inst24|Add0~22_combout\,
	cout => \inst24|Add0~23\);

-- Location: LCCOMB_X23_Y37_N20
\inst24|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|Add0~24_combout\ = \inst3|Regist\(7) $ (\inst24|Add0~23\ $ (\inst24|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Regist\(7),
	datad => \inst24|Add0~0_combout\,
	cin => \inst24|Add0~23\,
	combout => \inst24|Add0~24_combout\);

-- Location: LCCOMB_X23_Y38_N24
\inst24|Mux16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|Mux16~0_combout\ = (\inst24|Mux11~1_combout\ & ((\inst24|Mux11~0_combout\) # (\inst4|Regist\(7) $ (\inst3|Regist\(7))))) # (!\inst24|Mux11~1_combout\ & ((\inst4|Regist\(7) & ((\inst24|Mux11~0_combout\) # (\inst3|Regist\(7)))) # (!\inst4|Regist\(7) 
-- & (\inst24|Mux11~0_combout\ & \inst3|Regist\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|Mux11~1_combout\,
	datab => \inst4|Regist\(7),
	datac => \inst24|Mux11~0_combout\,
	datad => \inst3|Regist\(7),
	combout => \inst24|Mux16~0_combout\);

-- Location: LCCOMB_X22_Y37_N24
\inst24|Mux16~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|Mux16~1_combout\ = (\inst24|Mux16~0_combout\ & ((\inst24|Add0~24_combout\) # ((!\inst24|Mux11~1_combout\) # (!\inst24|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|Add0~24_combout\,
	datab => \inst24|Mux11~0_combout\,
	datac => \inst24|Mux16~0_combout\,
	datad => \inst24|Mux11~1_combout\,
	combout => \inst24|Mux16~1_combout\);

-- Location: LCCOMB_X22_Y37_N22
\inst24|ALU_Result[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|ALU_Result\(7) = (GLOBAL(\inst24|Mux17~0clkctrl_outclk\) & (\inst24|ALU_Result\(7))) # (!GLOBAL(\inst24|Mux17~0clkctrl_outclk\) & ((\inst24|Mux16~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|ALU_Result\(7),
	datac => \inst24|Mux16~1_combout\,
	datad => \inst24|Mux17~0clkctrl_outclk\,
	combout => \inst24|ALU_Result\(7));

-- Location: LCCOMB_X22_Y37_N8
\inst20|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst20|Add0~1_combout\ = (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst24|ALU_Result\(7))))) # (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[0]~input_o\,
	datab => \SelBus[1]~input_o\,
	datac => \SelBus[3]~input_o\,
	datad => \inst24|ALU_Result\(7),
	combout => \inst20|Add0~1_combout\);

-- Location: LCCOMB_X23_Y38_N10
\inst24|Mux15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|Mux15~0_combout\ = (\inst24|Mux11~0_combout\ & ((\inst24|Mux11~1_combout\) # ((\inst4|Regist\(6)) # (\inst3|Regist\(6))))) # (!\inst24|Mux11~0_combout\ & ((\inst24|Mux11~1_combout\ & (\inst4|Regist\(6) $ (\inst3|Regist\(6)))) # 
-- (!\inst24|Mux11~1_combout\ & (\inst4|Regist\(6) & \inst3|Regist\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|Mux11~0_combout\,
	datab => \inst24|Mux11~1_combout\,
	datac => \inst4|Regist\(6),
	datad => \inst3|Regist\(6),
	combout => \inst24|Mux15~0_combout\);

-- Location: LCCOMB_X22_Y37_N6
\inst24|Mux15~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|Mux15~1_combout\ = (\inst24|Mux15~0_combout\ & (((\inst24|Add0~22_combout\) # (!\inst24|Mux11~0_combout\)) # (!\inst24|Mux11~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|Mux11~1_combout\,
	datab => \inst24|Add0~22_combout\,
	datac => \inst24|Mux15~0_combout\,
	datad => \inst24|Mux11~0_combout\,
	combout => \inst24|Mux15~1_combout\);

-- Location: LCCOMB_X22_Y37_N12
\inst24|ALU_Result[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|ALU_Result\(6) = (GLOBAL(\inst24|Mux17~0clkctrl_outclk\) & (\inst24|ALU_Result\(6))) # (!GLOBAL(\inst24|Mux17~0clkctrl_outclk\) & ((\inst24|Mux15~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|ALU_Result\(6),
	datac => \inst24|Mux15~1_combout\,
	datad => \inst24|Mux17~0clkctrl_outclk\,
	combout => \inst24|ALU_Result\(6));

-- Location: LCCOMB_X22_Y37_N14
\inst20|Add0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst20|Add0~3_combout\ = (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst24|ALU_Result\(6))))) # (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[0]~input_o\,
	datab => \SelBus[1]~input_o\,
	datac => \SelBus[3]~input_o\,
	datad => \inst24|ALU_Result\(6),
	combout => \inst20|Add0~3_combout\);

-- Location: LCCOMB_X21_Y35_N26
\inst20|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst20|Mux1~0_combout\ = (\inst2|Regist[4]~2_combout\ & (((!\inst20|Regist\(6) & \inst2|Regist[4]~1_combout\)))) # (!\inst2|Regist[4]~2_combout\ & ((\inst20|Regist\(5)) # ((!\inst2|Regist[4]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Regist\(5),
	datab => \inst20|Regist\(6),
	datac => \inst2|Regist[4]~2_combout\,
	datad => \inst2|Regist[4]~1_combout\,
	combout => \inst20|Mux1~0_combout\);

-- Location: LCCOMB_X22_Y35_N22
\inst20|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst20|Add0~26_combout\ = (\inst20|Add0~4_combout\ & ((\inst20|Add0~5_combout\ & (!\inst20|Add0~25\)) # (!\inst20|Add0~5_combout\ & ((\inst20|Add0~25\) # (GND))))) # (!\inst20|Add0~4_combout\ & ((\inst20|Add0~5_combout\ & (\inst20|Add0~25\ & VCC)) # 
-- (!\inst20|Add0~5_combout\ & (!\inst20|Add0~25\))))
-- \inst20|Add0~27\ = CARRY((\inst20|Add0~4_combout\ & ((!\inst20|Add0~25\) # (!\inst20|Add0~5_combout\))) # (!\inst20|Add0~4_combout\ & (!\inst20|Add0~5_combout\ & !\inst20|Add0~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Add0~4_combout\,
	datab => \inst20|Add0~5_combout\,
	datad => VCC,
	cin => \inst20|Add0~25\,
	combout => \inst20|Add0~26_combout\,
	cout => \inst20|Add0~27\);

-- Location: LCCOMB_X22_Y35_N24
\inst20|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst20|Add0~28_combout\ = ((\inst20|Add0~3_combout\ $ (\inst20|Add0~2_combout\ $ (\inst20|Add0~27\)))) # (GND)
-- \inst20|Add0~29\ = CARRY((\inst20|Add0~3_combout\ & ((!\inst20|Add0~27\) # (!\inst20|Add0~2_combout\))) # (!\inst20|Add0~3_combout\ & (!\inst20|Add0~2_combout\ & !\inst20|Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Add0~3_combout\,
	datab => \inst20|Add0~2_combout\,
	datad => VCC,
	cin => \inst20|Add0~27\,
	combout => \inst20|Add0~28_combout\,
	cout => \inst20|Add0~29\);

-- Location: LCCOMB_X21_Y35_N20
\inst20|Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst20|Mux1~1_combout\ = (\inst2|Regist[4]~1_combout\ & (((\inst20|Mux1~0_combout\)))) # (!\inst2|Regist[4]~1_combout\ & ((\inst20|Mux1~0_combout\ & ((\inst20|Add0~28_combout\))) # (!\inst20|Mux1~0_combout\ & (\inst24|ALU_Result\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|ALU_Result\(6),
	datab => \inst2|Regist[4]~1_combout\,
	datac => \inst20|Mux1~0_combout\,
	datad => \inst20|Add0~28_combout\,
	combout => \inst20|Mux1~1_combout\);

-- Location: LCCOMB_X21_Y35_N16
\inst20|Mux1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst20|Mux1~2_combout\ = (\inst2|Regist[4]~0_combout\ & ((\inst20|Regist\(7)) # ((!\inst8|Mux6~2_combout\ & \inst20|Mux1~1_combout\)))) # (!\inst2|Regist[4]~0_combout\ & (!\inst8|Mux6~2_combout\ & ((\inst20|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~0_combout\,
	datab => \inst8|Mux6~2_combout\,
	datac => \inst20|Regist\(7),
	datad => \inst20|Mux1~1_combout\,
	combout => \inst20|Mux1~2_combout\);

-- Location: LCCOMB_X26_Y38_N28
\inst21|Mux15~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst21|Mux15~12_combout\ = (\SelRegD[0]~input_o\ & (\SelRegD[3]~input_o\ & (\SelRegD[1]~input_o\ & \SelRegD[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelRegD[0]~input_o\,
	datab => \SelRegD[3]~input_o\,
	datac => \SelRegD[1]~input_o\,
	datad => \SelRegD[2]~input_o\,
	combout => \inst21|Mux15~12_combout\);

-- Location: LCCOMB_X21_Y35_N12
\inst20|Regist[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst20|Regist[7]~0_combout\ = (\inst8|Regist[0]~0_combout\ & (\inst21|Mux15~12_combout\ & \EnDec~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|Regist[0]~0_combout\,
	datac => \inst21|Mux15~12_combout\,
	datad => \EnDec~input_o\,
	combout => \inst20|Regist[7]~0_combout\);

-- Location: FF_X21_Y35_N17
\inst20|Regist[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst20|Mux1~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst20|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|Regist\(6));

-- Location: LCCOMB_X23_Y34_N0
\inst20|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst20|Add0~2_combout\ = \inst20|Regist\(6) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[1]~input_o\,
	datac => \SelBus[3]~input_o\,
	datad => \inst20|Regist\(6),
	combout => \inst20|Add0~2_combout\);

-- Location: LCCOMB_X22_Y35_N26
\inst20|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst20|Add0~30_combout\ = \inst20|Add0~0_combout\ $ (\inst20|Add0~29\ $ (!\inst20|Add0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Add0~0_combout\,
	datad => \inst20|Add0~1_combout\,
	cin => \inst20|Add0~29\,
	combout => \inst20|Add0~30_combout\);

-- Location: LCCOMB_X23_Y34_N12
\inst20|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst20|Mux0~0_combout\ = (\inst3|Regist[7]~0_combout\ & (\inst6|Regist[0]~2_combout\)) # (!\inst3|Regist[7]~0_combout\ & ((\inst6|Regist[0]~2_combout\ & (\inst20|Regist\(0))) # (!\inst6|Regist[0]~2_combout\ & ((\inst24|ALU_Result\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Regist[7]~0_combout\,
	datab => \inst6|Regist[0]~2_combout\,
	datac => \inst20|Regist\(0),
	datad => \inst24|ALU_Result\(7),
	combout => \inst20|Mux0~0_combout\);

-- Location: LCCOMB_X23_Y34_N6
\inst20|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst20|Mux0~1_combout\ = (\inst3|Regist[7]~0_combout\ & ((\inst20|Mux0~0_combout\ & ((\inst20|Regist\(6)))) # (!\inst20|Mux0~0_combout\ & (!\inst20|Regist\(7))))) # (!\inst3|Regist[7]~0_combout\ & (((\inst20|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Regist\(7),
	datab => \inst20|Regist\(6),
	datac => \inst3|Regist[7]~0_combout\,
	datad => \inst20|Mux0~0_combout\,
	combout => \inst20|Mux0~1_combout\);

-- Location: LCCOMB_X22_Y35_N4
\inst20|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst20|Mux0~2_combout\ = (\inst20|Add0~30_combout\ & ((\inst6|Regist[0]~0_combout\) # ((\inst20|Mux0~1_combout\ & !\inst6|Mux0~0_combout\)))) # (!\inst20|Add0~30_combout\ & (((\inst20|Mux0~1_combout\ & !\inst6|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Add0~30_combout\,
	datab => \inst6|Regist[0]~0_combout\,
	datac => \inst20|Mux0~1_combout\,
	datad => \inst6|Mux0~0_combout\,
	combout => \inst20|Mux0~2_combout\);

-- Location: FF_X22_Y35_N5
\inst20|Regist[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst20|Mux0~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst20|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|Regist\(7));

-- Location: LCCOMB_X23_Y34_N28
\inst20|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst20|Mux7~0_combout\ = (\inst6|Regist[0]~1_combout\ & (((\inst6|Regist[0]~2_combout\)))) # (!\inst6|Regist[0]~1_combout\ & ((\inst6|Regist[0]~2_combout\ & (\inst20|Regist\(7))) # (!\inst6|Regist[0]~2_combout\ & ((\inst24|ALU_Result\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Regist\(7),
	datab => \inst6|Regist[0]~1_combout\,
	datac => \inst24|ALU_Result\(0),
	datad => \inst6|Regist[0]~2_combout\,
	combout => \inst20|Mux7~0_combout\);

-- Location: LCCOMB_X23_Y34_N10
\inst20|Mux7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst20|Mux7~1_combout\ = (\inst6|Regist[0]~1_combout\ & ((\inst20|Mux7~0_combout\ & ((\inst20|Regist\(1)))) # (!\inst20|Mux7~0_combout\ & (!\inst20|Regist\(0))))) # (!\inst6|Regist[0]~1_combout\ & (((\inst20|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Regist\(0),
	datab => \inst6|Regist[0]~1_combout\,
	datac => \inst20|Regist\(1),
	datad => \inst20|Mux7~0_combout\,
	combout => \inst20|Mux7~1_combout\);

-- Location: LCCOMB_X23_Y35_N16
\inst20|Mux7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst20|Mux7~2_combout\ = (\inst20|Add0~16_combout\ & ((\inst6|Regist[0]~0_combout\) # ((!\inst8|Mux7~2_combout\ & \inst20|Mux7~1_combout\)))) # (!\inst20|Add0~16_combout\ & (((!\inst8|Mux7~2_combout\ & \inst20|Mux7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Add0~16_combout\,
	datab => \inst6|Regist[0]~0_combout\,
	datac => \inst8|Mux7~2_combout\,
	datad => \inst20|Mux7~1_combout\,
	combout => \inst20|Mux7~2_combout\);

-- Location: FF_X23_Y35_N17
\inst20|Regist[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst20|Mux7~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst20|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|Regist\(0));

-- Location: LCCOMB_X23_Y34_N2
\inst20|Add0~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst20|Add0~15_combout\ = \inst20|Regist\(0) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[1]~input_o\,
	datac => \inst20|Regist\(0),
	datad => \SelBus[3]~input_o\,
	combout => \inst20|Add0~15_combout\);

-- Location: LCCOMB_X22_Y35_N14
\inst20|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst20|Add0~18_combout\ = (\inst20|Add0~12_combout\ & ((\inst20|Add0~13_combout\ & (!\inst20|Add0~17\)) # (!\inst20|Add0~13_combout\ & ((\inst20|Add0~17\) # (GND))))) # (!\inst20|Add0~12_combout\ & ((\inst20|Add0~13_combout\ & (\inst20|Add0~17\ & VCC)) # 
-- (!\inst20|Add0~13_combout\ & (!\inst20|Add0~17\))))
-- \inst20|Add0~19\ = CARRY((\inst20|Add0~12_combout\ & ((!\inst20|Add0~17\) # (!\inst20|Add0~13_combout\))) # (!\inst20|Add0~12_combout\ & (!\inst20|Add0~13_combout\ & !\inst20|Add0~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Add0~12_combout\,
	datab => \inst20|Add0~13_combout\,
	datad => VCC,
	cin => \inst20|Add0~17\,
	combout => \inst20|Add0~18_combout\,
	cout => \inst20|Add0~19\);

-- Location: LCCOMB_X22_Y35_N16
\inst20|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst20|Add0~20_combout\ = ((\inst20|Add0~10_combout\ $ (\inst20|Add0~11_combout\ $ (\inst20|Add0~19\)))) # (GND)
-- \inst20|Add0~21\ = CARRY((\inst20|Add0~10_combout\ & (\inst20|Add0~11_combout\ & !\inst20|Add0~19\)) # (!\inst20|Add0~10_combout\ & ((\inst20|Add0~11_combout\) # (!\inst20|Add0~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Add0~10_combout\,
	datab => \inst20|Add0~11_combout\,
	datad => VCC,
	cin => \inst20|Add0~19\,
	combout => \inst20|Add0~20_combout\,
	cout => \inst20|Add0~21\);

-- Location: LCCOMB_X22_Y35_N18
\inst20|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst20|Add0~22_combout\ = (\inst20|Add0~9_combout\ & ((\inst20|Add0~8_combout\ & (!\inst20|Add0~21\)) # (!\inst20|Add0~8_combout\ & (\inst20|Add0~21\ & VCC)))) # (!\inst20|Add0~9_combout\ & ((\inst20|Add0~8_combout\ & ((\inst20|Add0~21\) # (GND))) # 
-- (!\inst20|Add0~8_combout\ & (!\inst20|Add0~21\))))
-- \inst20|Add0~23\ = CARRY((\inst20|Add0~9_combout\ & (\inst20|Add0~8_combout\ & !\inst20|Add0~21\)) # (!\inst20|Add0~9_combout\ & ((\inst20|Add0~8_combout\) # (!\inst20|Add0~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Add0~9_combout\,
	datab => \inst20|Add0~8_combout\,
	datad => VCC,
	cin => \inst20|Add0~21\,
	combout => \inst20|Add0~22_combout\,
	cout => \inst20|Add0~23\);

-- Location: LCCOMB_X22_Y35_N20
\inst20|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst20|Add0~24_combout\ = ((\inst20|Add0~6_combout\ $ (\inst20|Add0~7_combout\ $ (\inst20|Add0~23\)))) # (GND)
-- \inst20|Add0~25\ = CARRY((\inst20|Add0~6_combout\ & (\inst20|Add0~7_combout\ & !\inst20|Add0~23\)) # (!\inst20|Add0~6_combout\ & ((\inst20|Add0~7_combout\) # (!\inst20|Add0~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Add0~6_combout\,
	datab => \inst20|Add0~7_combout\,
	datad => VCC,
	cin => \inst20|Add0~23\,
	combout => \inst20|Add0~24_combout\,
	cout => \inst20|Add0~25\);

-- Location: LCCOMB_X21_Y35_N4
\inst20|Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst20|Mux2~1_combout\ = (\inst20|Mux2~0_combout\ & ((\inst2|Regist[4]~2_combout\) # ((\inst20|Add0~26_combout\)))) # (!\inst20|Mux2~0_combout\ & (!\inst2|Regist[4]~2_combout\ & (\inst20|Regist\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Mux2~0_combout\,
	datab => \inst2|Regist[4]~2_combout\,
	datac => \inst20|Regist\(4),
	datad => \inst20|Add0~26_combout\,
	combout => \inst20|Mux2~1_combout\);

-- Location: LCCOMB_X21_Y35_N10
\inst20|Mux2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst20|Mux2~2_combout\ = (\inst2|Regist[4]~0_combout\ & ((\inst20|Regist\(6)) # ((!\inst8|Mux6~2_combout\ & \inst20|Mux2~1_combout\)))) # (!\inst2|Regist[4]~0_combout\ & (!\inst8|Mux6~2_combout\ & (\inst20|Mux2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~0_combout\,
	datab => \inst8|Mux6~2_combout\,
	datac => \inst20|Mux2~1_combout\,
	datad => \inst20|Regist\(6),
	combout => \inst20|Mux2~2_combout\);

-- Location: FF_X21_Y35_N11
\inst20|Regist[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst20|Mux2~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst20|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|Regist\(5));

-- Location: LCCOMB_X21_Y35_N2
\inst20|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst20|Mux3~0_combout\ = (\inst2|Regist[4]~2_combout\ & ((\inst24|ALU_Result\(4)) # ((\inst2|Regist[4]~1_combout\)))) # (!\inst2|Regist[4]~2_combout\ & (((\inst20|Add0~24_combout\ & !\inst2|Regist[4]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|ALU_Result\(4),
	datab => \inst2|Regist[4]~2_combout\,
	datac => \inst20|Add0~24_combout\,
	datad => \inst2|Regist[4]~1_combout\,
	combout => \inst20|Mux3~0_combout\);

-- Location: LCCOMB_X21_Y35_N28
\inst20|Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst20|Mux3~1_combout\ = (\inst2|Regist[4]~1_combout\ & ((\inst20|Mux3~0_combout\ & (!\inst20|Regist\(4))) # (!\inst20|Mux3~0_combout\ & ((\inst20|Regist\(3)))))) # (!\inst2|Regist[4]~1_combout\ & (((\inst20|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Regist\(4),
	datab => \inst2|Regist[4]~1_combout\,
	datac => \inst20|Regist\(3),
	datad => \inst20|Mux3~0_combout\,
	combout => \inst20|Mux3~1_combout\);

-- Location: LCCOMB_X21_Y35_N0
\inst20|Mux3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst20|Mux3~2_combout\ = (\inst20|Regist\(5) & ((\inst2|Regist[4]~0_combout\) # ((!\inst8|Mux6~2_combout\ & \inst20|Mux3~1_combout\)))) # (!\inst20|Regist\(5) & (!\inst8|Mux6~2_combout\ & ((\inst20|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Regist\(5),
	datab => \inst8|Mux6~2_combout\,
	datac => \inst2|Regist[4]~0_combout\,
	datad => \inst20|Mux3~1_combout\,
	combout => \inst20|Mux3~2_combout\);

-- Location: FF_X21_Y35_N1
\inst20|Regist[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst20|Mux3~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst20|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|Regist\(4));

-- Location: LCCOMB_X21_Y35_N6
\inst20|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst20|Mux4~0_combout\ = (\inst2|Regist[4]~1_combout\ & ((\inst20|Regist\(2)) # ((\inst2|Regist[4]~2_combout\)))) # (!\inst2|Regist[4]~1_combout\ & (((!\inst2|Regist[4]~2_combout\ & \inst20|Add0~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Regist\(2),
	datab => \inst2|Regist[4]~1_combout\,
	datac => \inst2|Regist[4]~2_combout\,
	datad => \inst20|Add0~22_combout\,
	combout => \inst20|Mux4~0_combout\);

-- Location: LCCOMB_X21_Y35_N24
\inst20|Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst20|Mux4~1_combout\ = (\inst2|Regist[4]~2_combout\ & ((\inst20|Mux4~0_combout\ & ((!\inst20|Regist\(3)))) # (!\inst20|Mux4~0_combout\ & (\inst24|ALU_Result\(3))))) # (!\inst2|Regist[4]~2_combout\ & (((\inst20|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|ALU_Result\(3),
	datab => \inst2|Regist[4]~2_combout\,
	datac => \inst20|Regist\(3),
	datad => \inst20|Mux4~0_combout\,
	combout => \inst20|Mux4~1_combout\);

-- Location: LCCOMB_X21_Y35_N14
\inst20|Mux4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst20|Mux4~2_combout\ = (\inst2|Regist[4]~0_combout\ & ((\inst20|Regist\(4)) # ((!\inst8|Mux6~2_combout\ & \inst20|Mux4~1_combout\)))) # (!\inst2|Regist[4]~0_combout\ & (!\inst8|Mux6~2_combout\ & ((\inst20|Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~0_combout\,
	datab => \inst8|Mux6~2_combout\,
	datac => \inst20|Regist\(4),
	datad => \inst20|Mux4~1_combout\,
	combout => \inst20|Mux4~2_combout\);

-- Location: FF_X21_Y35_N15
\inst20|Regist[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst20|Mux4~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst20|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|Regist\(3));

-- Location: LCCOMB_X23_Y35_N12
\inst20|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst20|Mux5~0_combout\ = (\inst2|Regist[4]~2_combout\ & ((\inst24|ALU_Result\(2)) # ((\inst2|Regist[4]~1_combout\)))) # (!\inst2|Regist[4]~2_combout\ & (((\inst20|Add0~20_combout\ & !\inst2|Regist[4]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~2_combout\,
	datab => \inst24|ALU_Result\(2),
	datac => \inst20|Add0~20_combout\,
	datad => \inst2|Regist[4]~1_combout\,
	combout => \inst20|Mux5~0_combout\);

-- Location: LCCOMB_X23_Y35_N18
\inst20|Mux5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst20|Mux5~1_combout\ = (\inst2|Regist[4]~1_combout\ & ((\inst20|Mux5~0_combout\ & (!\inst20|Regist\(2))) # (!\inst20|Mux5~0_combout\ & ((\inst20|Regist\(1)))))) # (!\inst2|Regist[4]~1_combout\ & (((\inst20|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Regist\(2),
	datab => \inst2|Regist[4]~1_combout\,
	datac => \inst20|Regist\(1),
	datad => \inst20|Mux5~0_combout\,
	combout => \inst20|Mux5~1_combout\);

-- Location: LCCOMB_X23_Y35_N8
\inst20|Mux5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst20|Mux5~2_combout\ = (\inst2|Regist[4]~0_combout\ & ((\inst20|Regist\(3)) # ((!\inst8|Mux6~2_combout\ & \inst20|Mux5~1_combout\)))) # (!\inst2|Regist[4]~0_combout\ & (((!\inst8|Mux6~2_combout\ & \inst20|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~0_combout\,
	datab => \inst20|Regist\(3),
	datac => \inst8|Mux6~2_combout\,
	datad => \inst20|Mux5~1_combout\,
	combout => \inst20|Mux5~2_combout\);

-- Location: FF_X23_Y35_N9
\inst20|Regist[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst20|Mux5~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst20|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|Regist\(2));

-- Location: LCCOMB_X23_Y35_N0
\inst20|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst20|Mux6~0_combout\ = (\inst2|Regist[4]~1_combout\ & ((\inst20|Regist\(0)) # ((\inst2|Regist[4]~2_combout\)))) # (!\inst2|Regist[4]~1_combout\ & (((!\inst2|Regist[4]~2_combout\ & \inst20|Add0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Regist\(0),
	datab => \inst2|Regist[4]~1_combout\,
	datac => \inst2|Regist[4]~2_combout\,
	datad => \inst20|Add0~18_combout\,
	combout => \inst20|Mux6~0_combout\);

-- Location: LCCOMB_X23_Y35_N6
\inst20|Mux6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst20|Mux6~1_combout\ = (\inst2|Regist[4]~2_combout\ & ((\inst20|Mux6~0_combout\ & ((!\inst20|Regist\(1)))) # (!\inst20|Mux6~0_combout\ & (\inst24|ALU_Result\(1))))) # (!\inst2|Regist[4]~2_combout\ & (((\inst20|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|ALU_Result\(1),
	datab => \inst2|Regist[4]~2_combout\,
	datac => \inst20|Regist\(1),
	datad => \inst20|Mux6~0_combout\,
	combout => \inst20|Mux6~1_combout\);

-- Location: LCCOMB_X23_Y35_N22
\inst20|Mux6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst20|Mux6~2_combout\ = (\inst2|Regist[4]~0_combout\ & ((\inst20|Regist\(2)) # ((!\inst8|Mux6~2_combout\ & \inst20|Mux6~1_combout\)))) # (!\inst2|Regist[4]~0_combout\ & (((!\inst8|Mux6~2_combout\ & \inst20|Mux6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~0_combout\,
	datab => \inst20|Regist\(2),
	datac => \inst8|Mux6~2_combout\,
	datad => \inst20|Mux6~1_combout\,
	combout => \inst20|Mux6~2_combout\);

-- Location: FF_X23_Y35_N23
\inst20|Regist[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst20|Mux6~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst20|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|Regist\(1));

-- Location: LCCOMB_X31_Y33_N8
\inst2|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Add0~2_combout\ = \inst2|Regist\(5) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist\(5),
	datac => \SelBus[1]~input_o\,
	datad => \SelBus[3]~input_o\,
	combout => \inst2|Add0~2_combout\);

-- Location: LCCOMB_X30_Y33_N22
\inst2|Add0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Add0~3_combout\ = \inst2|Regist\(4) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SelBus[3]~input_o\,
	datac => \SelBus[1]~input_o\,
	datad => \inst2|Regist\(4),
	combout => \inst2|Add0~3_combout\);

-- Location: LCCOMB_X31_Y33_N2
\inst2|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Add0~4_combout\ = \inst2|Regist\(3) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010110010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist\(3),
	datab => \SelBus[3]~input_o\,
	datac => \SelBus[1]~input_o\,
	combout => \inst2|Add0~4_combout\);

-- Location: LCCOMB_X27_Y33_N18
\inst2|Add0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Add0~5_combout\ = \inst2|Regist\(2) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SelBus[1]~input_o\,
	datac => \inst2|Regist\(2),
	datad => \SelBus[3]~input_o\,
	combout => \inst2|Add0~5_combout\);

-- Location: LCCOMB_X27_Y33_N28
\inst2|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Add0~6_combout\ = \inst2|Regist\(1) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SelBus[1]~input_o\,
	datac => \inst2|Regist\(1),
	datad => \SelBus[3]~input_o\,
	combout => \inst2|Add0~6_combout\);

-- Location: LCCOMB_X27_Y33_N22
\inst2|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mux0~0_combout\ = (\inst6|Regist[0]~2_combout\ & ((\inst3|Regist[7]~0_combout\) # ((\inst2|Regist\(0))))) # (!\inst6|Regist[0]~2_combout\ & (!\inst3|Regist[7]~0_combout\ & (\inst12|result[7]~161_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Regist[0]~2_combout\,
	datab => \inst3|Regist[7]~0_combout\,
	datac => \inst12|result[7]~161_combout\,
	datad => \inst2|Regist\(0),
	combout => \inst2|Mux0~0_combout\);

-- Location: LCCOMB_X27_Y33_N24
\inst2|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mux1~0_combout\ = (\inst2|Regist[4]~2_combout\ & ((\inst2|Regist[4]~1_combout\ & (!\inst2|Regist\(6))) # (!\inst2|Regist[4]~1_combout\ & ((\inst12|result[6]~171_combout\))))) # (!\inst2|Regist[4]~2_combout\ & (((!\inst2|Regist[4]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist\(6),
	datab => \inst2|Regist[4]~2_combout\,
	datac => \inst12|result[6]~171_combout\,
	datad => \inst2|Regist[4]~1_combout\,
	combout => \inst2|Mux1~0_combout\);

-- Location: LCCOMB_X30_Y33_N4
\inst2|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Add0~1_combout\ = \inst2|Regist\(6) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010110010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist\(6),
	datab => \SelBus[3]~input_o\,
	datac => \SelBus[1]~input_o\,
	combout => \inst2|Add0~1_combout\);

-- Location: LCCOMB_X30_Y33_N16
\inst2|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Add0~18_combout\ = (\inst2|Add0~2_combout\ & ((\inst8|Add0~21_combout\ & (!\inst2|Add0~17\)) # (!\inst8|Add0~21_combout\ & ((\inst2|Add0~17\) # (GND))))) # (!\inst2|Add0~2_combout\ & ((\inst8|Add0~21_combout\ & (\inst2|Add0~17\ & VCC)) # 
-- (!\inst8|Add0~21_combout\ & (!\inst2|Add0~17\))))
-- \inst2|Add0~19\ = CARRY((\inst2|Add0~2_combout\ & ((!\inst2|Add0~17\) # (!\inst8|Add0~21_combout\))) # (!\inst2|Add0~2_combout\ & (!\inst8|Add0~21_combout\ & !\inst2|Add0~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~2_combout\,
	datab => \inst8|Add0~21_combout\,
	datad => VCC,
	cin => \inst2|Add0~17\,
	combout => \inst2|Add0~18_combout\,
	cout => \inst2|Add0~19\);

-- Location: LCCOMB_X30_Y33_N18
\inst2|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Add0~20_combout\ = ((\inst8|Add0~25_combout\ $ (\inst2|Add0~1_combout\ $ (\inst2|Add0~19\)))) # (GND)
-- \inst2|Add0~21\ = CARRY((\inst8|Add0~25_combout\ & ((!\inst2|Add0~19\) # (!\inst2|Add0~1_combout\))) # (!\inst8|Add0~25_combout\ & (!\inst2|Add0~1_combout\ & !\inst2|Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add0~25_combout\,
	datab => \inst2|Add0~1_combout\,
	datad => VCC,
	cin => \inst2|Add0~19\,
	combout => \inst2|Add0~20_combout\,
	cout => \inst2|Add0~21\);

-- Location: LCCOMB_X29_Y33_N2
\inst2|Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mux1~1_combout\ = (\inst2|Regist[4]~2_combout\ & (((\inst2|Mux1~0_combout\)))) # (!\inst2|Regist[4]~2_combout\ & ((\inst2|Mux1~0_combout\ & ((\inst2|Add0~20_combout\))) # (!\inst2|Mux1~0_combout\ & (\inst2|Regist\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~2_combout\,
	datab => \inst2|Regist\(5),
	datac => \inst2|Mux1~0_combout\,
	datad => \inst2|Add0~20_combout\,
	combout => \inst2|Mux1~1_combout\);

-- Location: LCCOMB_X29_Y33_N12
\inst2|Mux1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mux1~2_combout\ = (\inst2|Regist[4]~0_combout\ & ((\inst2|Regist\(7)) # ((!\inst8|Mux6~2_combout\ & \inst2|Mux1~1_combout\)))) # (!\inst2|Regist[4]~0_combout\ & (!\inst8|Mux6~2_combout\ & ((\inst2|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~0_combout\,
	datab => \inst8|Mux6~2_combout\,
	datac => \inst2|Regist\(7),
	datad => \inst2|Mux1~1_combout\,
	combout => \inst2|Mux1~2_combout\);

-- Location: LCCOMB_X26_Y38_N30
\inst21|Mux15~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst21|Mux15~13_combout\ = (!\SelRegD[0]~input_o\ & (\SelRegD[3]~input_o\ & (!\SelRegD[1]~input_o\ & \SelRegD[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelRegD[0]~input_o\,
	datab => \SelRegD[3]~input_o\,
	datac => \SelRegD[1]~input_o\,
	datad => \SelRegD[2]~input_o\,
	combout => \inst21|Mux15~13_combout\);

-- Location: LCCOMB_X27_Y33_N6
\inst2|Regist[7]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Regist[7]~3_combout\ = (\EnDec~input_o\ & (\inst8|Regist[0]~0_combout\ & \inst21|Mux15~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EnDec~input_o\,
	datac => \inst8|Regist[0]~0_combout\,
	datad => \inst21|Mux15~13_combout\,
	combout => \inst2|Regist[7]~3_combout\);

-- Location: FF_X29_Y33_N13
\inst2|Regist[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst2|Mux1~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst2|Regist[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|Regist\(6));

-- Location: LCCOMB_X27_Y33_N4
\inst2|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mux0~1_combout\ = (\inst2|Mux0~0_combout\ & (((\inst2|Regist\(6))) # (!\inst3|Regist[7]~0_combout\))) # (!\inst2|Mux0~0_combout\ & (\inst3|Regist[7]~0_combout\ & ((!\inst2|Regist\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux0~0_combout\,
	datab => \inst3|Regist[7]~0_combout\,
	datac => \inst2|Regist\(6),
	datad => \inst2|Regist\(7),
	combout => \inst2|Mux0~1_combout\);

-- Location: LCCOMB_X29_Y33_N24
\inst2|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Add0~0_combout\ = \inst2|Regist\(7) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist\(7),
	datab => \SelBus[1]~input_o\,
	datad => \SelBus[3]~input_o\,
	combout => \inst2|Add0~0_combout\);

-- Location: LCCOMB_X30_Y33_N20
\inst2|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Add0~22_combout\ = \inst8|Add0~28_combout\ $ (\inst2|Add0~21\ $ (!\inst2|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|Add0~28_combout\,
	datad => \inst2|Add0~0_combout\,
	cin => \inst2|Add0~21\,
	combout => \inst2|Add0~22_combout\);

-- Location: LCCOMB_X27_Y33_N20
\inst2|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mux0~2_combout\ = (\inst6|Regist[0]~0_combout\ & ((\inst2|Add0~22_combout\) # ((!\inst6|Mux0~0_combout\ & \inst2|Mux0~1_combout\)))) # (!\inst6|Regist[0]~0_combout\ & (!\inst6|Mux0~0_combout\ & (\inst2|Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Regist[0]~0_combout\,
	datab => \inst6|Mux0~0_combout\,
	datac => \inst2|Mux0~1_combout\,
	datad => \inst2|Add0~22_combout\,
	combout => \inst2|Mux0~2_combout\);

-- Location: FF_X27_Y33_N21
\inst2|Regist[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst2|Mux0~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst2|Regist[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|Regist\(7));

-- Location: LCCOMB_X27_Y33_N10
\inst2|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mux7~0_combout\ = (\inst6|Regist[0]~2_combout\ & ((\inst2|Regist\(7)) # ((\inst6|Regist[0]~1_combout\)))) # (!\inst6|Regist[0]~2_combout\ & (((!\inst6|Regist[0]~1_combout\ & \inst12|result[0]~231_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Regist[0]~2_combout\,
	datab => \inst2|Regist\(7),
	datac => \inst6|Regist[0]~1_combout\,
	datad => \inst12|result[0]~231_combout\,
	combout => \inst2|Mux7~0_combout\);

-- Location: LCCOMB_X27_Y33_N12
\inst2|Mux7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mux7~1_combout\ = (\inst6|Regist[0]~1_combout\ & ((\inst2|Mux7~0_combout\ & (\inst2|Regist\(1))) # (!\inst2|Mux7~0_combout\ & ((!\inst2|Regist\(0)))))) # (!\inst6|Regist[0]~1_combout\ & (((\inst2|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist\(1),
	datab => \inst2|Regist\(0),
	datac => \inst6|Regist[0]~1_combout\,
	datad => \inst2|Mux7~0_combout\,
	combout => \inst2|Mux7~1_combout\);

-- Location: LCCOMB_X30_Y33_N6
\inst2|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Add0~8_combout\ = (\inst2|Add0~7_combout\ & (\inst8|Add0~0_combout\ & VCC)) # (!\inst2|Add0~7_combout\ & (\inst8|Add0~0_combout\ $ (VCC)))
-- \inst2|Add0~9\ = CARRY((!\inst2|Add0~7_combout\ & \inst8|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~7_combout\,
	datab => \inst8|Add0~0_combout\,
	datad => VCC,
	combout => \inst2|Add0~8_combout\,
	cout => \inst2|Add0~9\);

-- Location: LCCOMB_X27_Y33_N2
\inst2|Mux7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mux7~2_combout\ = (\inst2|Mux7~1_combout\ & (((\inst6|Regist[0]~0_combout\ & \inst2|Add0~8_combout\)) # (!\inst8|Mux7~2_combout\))) # (!\inst2|Mux7~1_combout\ & (((\inst6|Regist[0]~0_combout\ & \inst2|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux7~1_combout\,
	datab => \inst8|Mux7~2_combout\,
	datac => \inst6|Regist[0]~0_combout\,
	datad => \inst2|Add0~8_combout\,
	combout => \inst2|Mux7~2_combout\);

-- Location: FF_X27_Y33_N3
\inst2|Regist[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst2|Mux7~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst2|Regist[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|Regist\(0));

-- Location: LCCOMB_X31_Y33_N20
\inst2|Add0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Add0~7_combout\ = \inst2|Regist\(0) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SelBus[1]~input_o\,
	datac => \inst2|Regist\(0),
	datad => \SelBus[3]~input_o\,
	combout => \inst2|Add0~7_combout\);

-- Location: LCCOMB_X30_Y33_N8
\inst2|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Add0~10_combout\ = (\inst8|Add0~5_combout\ & ((\inst2|Add0~6_combout\ & (!\inst2|Add0~9\)) # (!\inst2|Add0~6_combout\ & (\inst2|Add0~9\ & VCC)))) # (!\inst8|Add0~5_combout\ & ((\inst2|Add0~6_combout\ & ((\inst2|Add0~9\) # (GND))) # 
-- (!\inst2|Add0~6_combout\ & (!\inst2|Add0~9\))))
-- \inst2|Add0~11\ = CARRY((\inst8|Add0~5_combout\ & (\inst2|Add0~6_combout\ & !\inst2|Add0~9\)) # (!\inst8|Add0~5_combout\ & ((\inst2|Add0~6_combout\) # (!\inst2|Add0~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add0~5_combout\,
	datab => \inst2|Add0~6_combout\,
	datad => VCC,
	cin => \inst2|Add0~9\,
	combout => \inst2|Add0~10_combout\,
	cout => \inst2|Add0~11\);

-- Location: LCCOMB_X30_Y33_N10
\inst2|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Add0~12_combout\ = ((\inst2|Add0~5_combout\ $ (\inst8|Add0~9_combout\ $ (\inst2|Add0~11\)))) # (GND)
-- \inst2|Add0~13\ = CARRY((\inst2|Add0~5_combout\ & (\inst8|Add0~9_combout\ & !\inst2|Add0~11\)) # (!\inst2|Add0~5_combout\ & ((\inst8|Add0~9_combout\) # (!\inst2|Add0~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~5_combout\,
	datab => \inst8|Add0~9_combout\,
	datad => VCC,
	cin => \inst2|Add0~11\,
	combout => \inst2|Add0~12_combout\,
	cout => \inst2|Add0~13\);

-- Location: LCCOMB_X30_Y33_N12
\inst2|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Add0~14_combout\ = (\inst2|Add0~4_combout\ & ((\inst8|Add0~13_combout\ & (!\inst2|Add0~13\)) # (!\inst8|Add0~13_combout\ & ((\inst2|Add0~13\) # (GND))))) # (!\inst2|Add0~4_combout\ & ((\inst8|Add0~13_combout\ & (\inst2|Add0~13\ & VCC)) # 
-- (!\inst8|Add0~13_combout\ & (!\inst2|Add0~13\))))
-- \inst2|Add0~15\ = CARRY((\inst2|Add0~4_combout\ & ((!\inst2|Add0~13\) # (!\inst8|Add0~13_combout\))) # (!\inst2|Add0~4_combout\ & (!\inst8|Add0~13_combout\ & !\inst2|Add0~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~4_combout\,
	datab => \inst8|Add0~13_combout\,
	datad => VCC,
	cin => \inst2|Add0~13\,
	combout => \inst2|Add0~14_combout\,
	cout => \inst2|Add0~15\);

-- Location: LCCOMB_X30_Y33_N14
\inst2|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Add0~16_combout\ = ((\inst2|Add0~3_combout\ $ (\inst8|Add0~17_combout\ $ (\inst2|Add0~15\)))) # (GND)
-- \inst2|Add0~17\ = CARRY((\inst2|Add0~3_combout\ & (\inst8|Add0~17_combout\ & !\inst2|Add0~15\)) # (!\inst2|Add0~3_combout\ & ((\inst8|Add0~17_combout\) # (!\inst2|Add0~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~3_combout\,
	datab => \inst8|Add0~17_combout\,
	datad => VCC,
	cin => \inst2|Add0~15\,
	combout => \inst2|Add0~16_combout\,
	cout => \inst2|Add0~17\);

-- Location: LCCOMB_X30_Y33_N24
\inst2|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mux2~0_combout\ = (\inst2|Regist[4]~1_combout\ & (\inst2|Regist[4]~2_combout\)) # (!\inst2|Regist[4]~1_combout\ & ((\inst2|Regist[4]~2_combout\ & (\inst12|result[5]~181_combout\)) # (!\inst2|Regist[4]~2_combout\ & ((\inst2|Add0~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~1_combout\,
	datab => \inst2|Regist[4]~2_combout\,
	datac => \inst12|result[5]~181_combout\,
	datad => \inst2|Add0~18_combout\,
	combout => \inst2|Mux2~0_combout\);

-- Location: LCCOMB_X30_Y33_N30
\inst2|Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mux2~1_combout\ = (\inst2|Regist[4]~1_combout\ & ((\inst2|Mux2~0_combout\ & (!\inst2|Regist\(5))) # (!\inst2|Mux2~0_combout\ & ((\inst2|Regist\(4)))))) # (!\inst2|Regist[4]~1_combout\ & (((\inst2|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist\(5),
	datab => \inst2|Regist\(4),
	datac => \inst2|Regist[4]~1_combout\,
	datad => \inst2|Mux2~0_combout\,
	combout => \inst2|Mux2~1_combout\);

-- Location: LCCOMB_X30_Y33_N0
\inst2|Mux2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mux2~2_combout\ = (\inst8|Mux6~2_combout\ & (\inst2|Regist[4]~0_combout\ & ((\inst2|Regist\(6))))) # (!\inst8|Mux6~2_combout\ & ((\inst2|Mux2~1_combout\) # ((\inst2|Regist[4]~0_combout\ & \inst2|Regist\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Mux6~2_combout\,
	datab => \inst2|Regist[4]~0_combout\,
	datac => \inst2|Mux2~1_combout\,
	datad => \inst2|Regist\(6),
	combout => \inst2|Mux2~2_combout\);

-- Location: FF_X30_Y33_N1
\inst2|Regist[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst2|Mux2~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst2|Regist[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|Regist\(5));

-- Location: LCCOMB_X29_Y33_N0
\inst2|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mux3~0_combout\ = (\inst2|Regist[4]~2_combout\ & (((\inst2|Regist[4]~1_combout\)))) # (!\inst2|Regist[4]~2_combout\ & ((\inst2|Regist[4]~1_combout\ & (\inst2|Regist\(3))) # (!\inst2|Regist[4]~1_combout\ & ((\inst2|Add0~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist\(3),
	datab => \inst2|Regist[4]~2_combout\,
	datac => \inst2|Add0~16_combout\,
	datad => \inst2|Regist[4]~1_combout\,
	combout => \inst2|Mux3~0_combout\);

-- Location: LCCOMB_X29_Y33_N10
\inst2|Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mux3~1_combout\ = (\inst2|Regist[4]~2_combout\ & ((\inst2|Mux3~0_combout\ & (!\inst2|Regist\(4))) # (!\inst2|Mux3~0_combout\ & ((\inst12|result[4]~191_combout\))))) # (!\inst2|Regist[4]~2_combout\ & (((\inst2|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist\(4),
	datab => \inst12|result[4]~191_combout\,
	datac => \inst2|Regist[4]~2_combout\,
	datad => \inst2|Mux3~0_combout\,
	combout => \inst2|Mux3~1_combout\);

-- Location: LCCOMB_X29_Y33_N22
\inst2|Mux3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mux3~2_combout\ = (\inst2|Regist[4]~0_combout\ & ((\inst2|Regist\(5)) # ((!\inst8|Mux6~2_combout\ & \inst2|Mux3~1_combout\)))) # (!\inst2|Regist[4]~0_combout\ & (!\inst8|Mux6~2_combout\ & ((\inst2|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~0_combout\,
	datab => \inst8|Mux6~2_combout\,
	datac => \inst2|Regist\(5),
	datad => \inst2|Mux3~1_combout\,
	combout => \inst2|Mux3~2_combout\);

-- Location: FF_X29_Y33_N23
\inst2|Regist[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst2|Mux3~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst2|Regist[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|Regist\(4));

-- Location: LCCOMB_X30_Y33_N28
\inst2|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mux4~0_combout\ = (\inst2|Regist[4]~1_combout\ & (\inst2|Regist[4]~2_combout\)) # (!\inst2|Regist[4]~1_combout\ & ((\inst2|Regist[4]~2_combout\ & (\inst12|result[3]~201_combout\)) # (!\inst2|Regist[4]~2_combout\ & ((\inst2|Add0~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~1_combout\,
	datab => \inst2|Regist[4]~2_combout\,
	datac => \inst12|result[3]~201_combout\,
	datad => \inst2|Add0~14_combout\,
	combout => \inst2|Mux4~0_combout\);

-- Location: LCCOMB_X30_Y33_N2
\inst2|Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mux4~1_combout\ = (\inst2|Regist[4]~1_combout\ & ((\inst2|Mux4~0_combout\ & ((!\inst2|Regist\(3)))) # (!\inst2|Mux4~0_combout\ & (\inst2|Regist\(2))))) # (!\inst2|Regist[4]~1_combout\ & (((\inst2|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist\(2),
	datab => \inst2|Regist\(3),
	datac => \inst2|Regist[4]~1_combout\,
	datad => \inst2|Mux4~0_combout\,
	combout => \inst2|Mux4~1_combout\);

-- Location: LCCOMB_X30_Y33_N26
\inst2|Mux4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mux4~2_combout\ = (\inst8|Mux6~2_combout\ & (\inst2|Regist\(4) & (\inst2|Regist[4]~0_combout\))) # (!\inst8|Mux6~2_combout\ & ((\inst2|Mux4~1_combout\) # ((\inst2|Regist\(4) & \inst2|Regist[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Mux6~2_combout\,
	datab => \inst2|Regist\(4),
	datac => \inst2|Regist[4]~0_combout\,
	datad => \inst2|Mux4~1_combout\,
	combout => \inst2|Mux4~2_combout\);

-- Location: FF_X30_Y33_N27
\inst2|Regist[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst2|Mux4~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst2|Regist[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|Regist\(3));

-- Location: LCCOMB_X29_Y33_N20
\inst2|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mux5~0_combout\ = (\inst2|Regist[4]~2_combout\ & (((\inst2|Regist[4]~1_combout\)))) # (!\inst2|Regist[4]~2_combout\ & ((\inst2|Regist[4]~1_combout\ & (\inst2|Regist\(1))) # (!\inst2|Regist[4]~1_combout\ & ((\inst2|Add0~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~2_combout\,
	datab => \inst2|Regist\(1),
	datac => \inst2|Add0~12_combout\,
	datad => \inst2|Regist[4]~1_combout\,
	combout => \inst2|Mux5~0_combout\);

-- Location: LCCOMB_X29_Y33_N6
\inst2|Mux5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mux5~1_combout\ = (\inst2|Regist[4]~2_combout\ & ((\inst2|Mux5~0_combout\ & (!\inst2|Regist\(2))) # (!\inst2|Mux5~0_combout\ & ((\inst12|result[2]~211_combout\))))) # (!\inst2|Regist[4]~2_combout\ & (((\inst2|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~2_combout\,
	datab => \inst2|Regist\(2),
	datac => \inst12|result[2]~211_combout\,
	datad => \inst2|Mux5~0_combout\,
	combout => \inst2|Mux5~1_combout\);

-- Location: LCCOMB_X29_Y33_N8
\inst2|Mux5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mux5~2_combout\ = (\inst2|Regist\(3) & ((\inst2|Regist[4]~0_combout\) # ((!\inst8|Mux6~2_combout\ & \inst2|Mux5~1_combout\)))) # (!\inst2|Regist\(3) & (!\inst8|Mux6~2_combout\ & ((\inst2|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist\(3),
	datab => \inst8|Mux6~2_combout\,
	datac => \inst2|Regist[4]~0_combout\,
	datad => \inst2|Mux5~1_combout\,
	combout => \inst2|Mux5~2_combout\);

-- Location: FF_X29_Y33_N9
\inst2|Regist[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst2|Mux5~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst2|Regist[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|Regist\(2));

-- Location: LCCOMB_X29_Y33_N28
\inst2|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mux6~0_combout\ = (\inst2|Regist[4]~1_combout\ & (((\inst2|Regist[4]~2_combout\)))) # (!\inst2|Regist[4]~1_combout\ & ((\inst2|Regist[4]~2_combout\ & (\inst12|result[1]~221_combout\)) # (!\inst2|Regist[4]~2_combout\ & ((\inst2|Add0~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|result[1]~221_combout\,
	datab => \inst2|Regist[4]~1_combout\,
	datac => \inst2|Add0~10_combout\,
	datad => \inst2|Regist[4]~2_combout\,
	combout => \inst2|Mux6~0_combout\);

-- Location: LCCOMB_X29_Y33_N18
\inst2|Mux6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mux6~1_combout\ = (\inst2|Regist[4]~1_combout\ & ((\inst2|Mux6~0_combout\ & ((!\inst2|Regist\(1)))) # (!\inst2|Mux6~0_combout\ & (\inst2|Regist\(0))))) # (!\inst2|Regist[4]~1_combout\ & (((\inst2|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist\(0),
	datab => \inst2|Regist[4]~1_combout\,
	datac => \inst2|Regist\(1),
	datad => \inst2|Mux6~0_combout\,
	combout => \inst2|Mux6~1_combout\);

-- Location: LCCOMB_X29_Y33_N26
\inst2|Mux6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mux6~2_combout\ = (\inst2|Regist[4]~0_combout\ & ((\inst2|Regist\(2)) # ((!\inst8|Mux6~2_combout\ & \inst2|Mux6~1_combout\)))) # (!\inst2|Regist[4]~0_combout\ & (!\inst8|Mux6~2_combout\ & ((\inst2|Mux6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~0_combout\,
	datab => \inst8|Mux6~2_combout\,
	datac => \inst2|Regist\(2),
	datad => \inst2|Mux6~1_combout\,
	combout => \inst2|Mux6~2_combout\);

-- Location: FF_X29_Y33_N27
\inst2|Regist[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst2|Mux6~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst2|Regist[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|Regist\(1));

-- Location: LCCOMB_X35_Y36_N18
\inst12|result[1]~219\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|result[1]~219_combout\ = (\inst12|_~38_combout\ & ((\inst2|Regist\(1)) # ((\inst12|_~32_combout\ & \inst20|Regist\(1))))) # (!\inst12|_~38_combout\ & (\inst12|_~32_combout\ & (\inst20|Regist\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|_~38_combout\,
	datab => \inst12|_~32_combout\,
	datac => \inst20|Regist\(1),
	datad => \inst2|Regist\(1),
	combout => \inst12|result[1]~219_combout\);

-- Location: LCCOMB_X35_Y36_N24
\inst12|result[1]~220\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|result[1]~220_combout\ = (\inst12|result[1]~218_combout\) # ((\inst12|result[1]~219_combout\) # ((\inst12|_~37_combout\ & \inst7|Regist\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|_~37_combout\,
	datab => \inst7|Regist\(1),
	datac => \inst12|result[1]~218_combout\,
	datad => \inst12|result[1]~219_combout\,
	combout => \inst12|result[1]~220_combout\);

-- Location: LCCOMB_X30_Y34_N12
\inst12|_~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|_~33_combout\ = (!\muxSel[4]~input_o\ & (\muxSel[3]~input_o\ & (\muxSel[0]~input_o\ & \inst12|_~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \muxSel[4]~input_o\,
	datab => \muxSel[3]~input_o\,
	datac => \muxSel[0]~input_o\,
	datad => \inst12|_~26_combout\,
	combout => \inst12|_~33_combout\);

-- Location: LCCOMB_X31_Y33_N0
\inst8|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Add0~16_combout\ = \inst8|Regist\(4) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SelBus[3]~input_o\,
	datac => \SelBus[1]~input_o\,
	datad => \inst8|Regist\(4),
	combout => \inst8|Add0~16_combout\);

-- Location: LCCOMB_X32_Y34_N16
\inst8|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Add0~12_combout\ = \inst8|Regist\(3) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[3]~input_o\,
	datac => \SelBus[1]~input_o\,
	datad => \inst8|Regist\(3),
	combout => \inst8|Add0~12_combout\);

-- Location: LCCOMB_X32_Y34_N14
\inst8|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Add0~8_combout\ = \inst8|Regist\(2) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[3]~input_o\,
	datac => \inst8|Regist\(2),
	datad => \SelBus[1]~input_o\,
	combout => \inst8|Add0~8_combout\);

-- Location: LCCOMB_X32_Y34_N4
\inst8|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Add0~4_combout\ = \inst8|Regist\(1) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[3]~input_o\,
	datac => \SelBus[1]~input_o\,
	datad => \inst8|Regist\(1),
	combout => \inst8|Add0~4_combout\);

-- Location: LCCOMB_X31_Y34_N0
\inst8|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Add0~2_combout\ = (\inst8|Add0~1_combout\ & (\inst8|Add0~0_combout\ & VCC)) # (!\inst8|Add0~1_combout\ & (\inst8|Add0~0_combout\ $ (VCC)))
-- \inst8|Add0~3\ = CARRY((!\inst8|Add0~1_combout\ & \inst8|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add0~1_combout\,
	datab => \inst8|Add0~0_combout\,
	datad => VCC,
	combout => \inst8|Add0~2_combout\,
	cout => \inst8|Add0~3\);

-- Location: LCCOMB_X31_Y34_N2
\inst8|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Add0~6_combout\ = (\inst8|Add0~4_combout\ & ((\inst8|Add0~5_combout\ & (!\inst8|Add0~3\)) # (!\inst8|Add0~5_combout\ & ((\inst8|Add0~3\) # (GND))))) # (!\inst8|Add0~4_combout\ & ((\inst8|Add0~5_combout\ & (\inst8|Add0~3\ & VCC)) # 
-- (!\inst8|Add0~5_combout\ & (!\inst8|Add0~3\))))
-- \inst8|Add0~7\ = CARRY((\inst8|Add0~4_combout\ & ((!\inst8|Add0~3\) # (!\inst8|Add0~5_combout\))) # (!\inst8|Add0~4_combout\ & (!\inst8|Add0~5_combout\ & !\inst8|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add0~4_combout\,
	datab => \inst8|Add0~5_combout\,
	datad => VCC,
	cin => \inst8|Add0~3\,
	combout => \inst8|Add0~6_combout\,
	cout => \inst8|Add0~7\);

-- Location: LCCOMB_X31_Y34_N4
\inst8|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Add0~10_combout\ = ((\inst8|Add0~9_combout\ $ (\inst8|Add0~8_combout\ $ (\inst8|Add0~7\)))) # (GND)
-- \inst8|Add0~11\ = CARRY((\inst8|Add0~9_combout\ & ((!\inst8|Add0~7\) # (!\inst8|Add0~8_combout\))) # (!\inst8|Add0~9_combout\ & (!\inst8|Add0~8_combout\ & !\inst8|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add0~9_combout\,
	datab => \inst8|Add0~8_combout\,
	datad => VCC,
	cin => \inst8|Add0~7\,
	combout => \inst8|Add0~10_combout\,
	cout => \inst8|Add0~11\);

-- Location: LCCOMB_X31_Y34_N6
\inst8|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Add0~14_combout\ = (\inst8|Add0~13_combout\ & ((\inst8|Add0~12_combout\ & (!\inst8|Add0~11\)) # (!\inst8|Add0~12_combout\ & (\inst8|Add0~11\ & VCC)))) # (!\inst8|Add0~13_combout\ & ((\inst8|Add0~12_combout\ & ((\inst8|Add0~11\) # (GND))) # 
-- (!\inst8|Add0~12_combout\ & (!\inst8|Add0~11\))))
-- \inst8|Add0~15\ = CARRY((\inst8|Add0~13_combout\ & (\inst8|Add0~12_combout\ & !\inst8|Add0~11\)) # (!\inst8|Add0~13_combout\ & ((\inst8|Add0~12_combout\) # (!\inst8|Add0~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add0~13_combout\,
	datab => \inst8|Add0~12_combout\,
	datad => VCC,
	cin => \inst8|Add0~11\,
	combout => \inst8|Add0~14_combout\,
	cout => \inst8|Add0~15\);

-- Location: LCCOMB_X31_Y34_N8
\inst8|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Add0~18_combout\ = ((\inst8|Add0~17_combout\ $ (\inst8|Add0~16_combout\ $ (\inst8|Add0~15\)))) # (GND)
-- \inst8|Add0~19\ = CARRY((\inst8|Add0~17_combout\ & ((!\inst8|Add0~15\) # (!\inst8|Add0~16_combout\))) # (!\inst8|Add0~17_combout\ & (!\inst8|Add0~16_combout\ & !\inst8|Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add0~17_combout\,
	datab => \inst8|Add0~16_combout\,
	datad => VCC,
	cin => \inst8|Add0~15\,
	combout => \inst8|Add0~18_combout\,
	cout => \inst8|Add0~19\);

-- Location: LCCOMB_X31_Y32_N0
\inst8|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux3~0_combout\ = (\inst2|Regist[4]~1_combout\ & ((\inst2|Regist[4]~2_combout\) # ((\inst8|Regist\(3))))) # (!\inst2|Regist[4]~1_combout\ & (!\inst2|Regist[4]~2_combout\ & (\inst8|Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~1_combout\,
	datab => \inst2|Regist[4]~2_combout\,
	datac => \inst8|Add0~18_combout\,
	datad => \inst8|Regist\(3),
	combout => \inst8|Mux3~0_combout\);

-- Location: LCCOMB_X31_Y32_N6
\inst8|Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux3~1_combout\ = (\inst2|Regist[4]~2_combout\ & ((\inst8|Mux3~0_combout\ & (!\inst8|Regist\(4))) # (!\inst8|Mux3~0_combout\ & ((\inst12|result[4]~191_combout\))))) # (!\inst2|Regist[4]~2_combout\ & (((\inst8|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Regist\(4),
	datab => \inst2|Regist[4]~2_combout\,
	datac => \inst12|result[4]~191_combout\,
	datad => \inst8|Mux3~0_combout\,
	combout => \inst8|Mux3~1_combout\);

-- Location: LCCOMB_X31_Y32_N12
\inst8|Mux3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux3~2_combout\ = (\inst8|Mux6~2_combout\ & (\inst2|Regist[4]~0_combout\ & (\inst8|Regist\(5)))) # (!\inst8|Mux6~2_combout\ & ((\inst8|Mux3~1_combout\) # ((\inst2|Regist[4]~0_combout\ & \inst8|Regist\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Mux6~2_combout\,
	datab => \inst2|Regist[4]~0_combout\,
	datac => \inst8|Regist\(5),
	datad => \inst8|Mux3~1_combout\,
	combout => \inst8|Mux3~2_combout\);

-- Location: LCCOMB_X26_Y38_N4
\inst21|Mux15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst21|Mux15~0_combout\ = (\SelRegD[0]~input_o\ & (\SelRegD[3]~input_o\ & (!\SelRegD[1]~input_o\ & !\SelRegD[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelRegD[0]~input_o\,
	datab => \SelRegD[3]~input_o\,
	datac => \SelRegD[1]~input_o\,
	datad => \SelRegD[2]~input_o\,
	combout => \inst21|Mux15~0_combout\);

-- Location: LCCOMB_X30_Y38_N16
\inst8|Regist[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Regist[0]~1_combout\ = (\inst21|Mux15~0_combout\ & (\EnDec~input_o\ & \inst8|Regist[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst21|Mux15~0_combout\,
	datac => \EnDec~input_o\,
	datad => \inst8|Regist[0]~0_combout\,
	combout => \inst8|Regist[0]~1_combout\);

-- Location: FF_X31_Y32_N13
\inst8|Regist[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|Mux3~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst8|Regist[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|Regist\(4));

-- Location: LCCOMB_X31_Y32_N20
\inst8|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux4~0_combout\ = (\inst2|Regist[4]~1_combout\ & (((\inst2|Regist[4]~2_combout\)))) # (!\inst2|Regist[4]~1_combout\ & ((\inst2|Regist[4]~2_combout\ & (\inst12|result[3]~201_combout\)) # (!\inst2|Regist[4]~2_combout\ & ((\inst8|Add0~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|result[3]~201_combout\,
	datab => \inst2|Regist[4]~1_combout\,
	datac => \inst2|Regist[4]~2_combout\,
	datad => \inst8|Add0~14_combout\,
	combout => \inst8|Mux4~0_combout\);

-- Location: LCCOMB_X31_Y32_N22
\inst8|Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux4~1_combout\ = (\inst2|Regist[4]~1_combout\ & ((\inst8|Mux4~0_combout\ & (!\inst8|Regist\(3))) # (!\inst8|Mux4~0_combout\ & ((\inst8|Regist\(2)))))) # (!\inst2|Regist[4]~1_combout\ & (((\inst8|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Regist\(3),
	datab => \inst8|Regist\(2),
	datac => \inst2|Regist[4]~1_combout\,
	datad => \inst8|Mux4~0_combout\,
	combout => \inst8|Mux4~1_combout\);

-- Location: LCCOMB_X31_Y32_N10
\inst8|Mux4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux4~2_combout\ = (\inst8|Mux6~2_combout\ & (\inst8|Regist\(4) & ((\inst2|Regist[4]~0_combout\)))) # (!\inst8|Mux6~2_combout\ & ((\inst8|Mux4~1_combout\) # ((\inst8|Regist\(4) & \inst2|Regist[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Mux6~2_combout\,
	datab => \inst8|Regist\(4),
	datac => \inst8|Mux4~1_combout\,
	datad => \inst2|Regist[4]~0_combout\,
	combout => \inst8|Mux4~2_combout\);

-- Location: FF_X31_Y32_N11
\inst8|Regist[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|Mux4~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst8|Regist[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|Regist\(3));

-- Location: LCCOMB_X31_Y34_N28
\inst8|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux5~0_combout\ = (\inst2|Regist[4]~2_combout\ & (\inst2|Regist[4]~1_combout\)) # (!\inst2|Regist[4]~2_combout\ & ((\inst2|Regist[4]~1_combout\ & ((\inst8|Regist\(1)))) # (!\inst2|Regist[4]~1_combout\ & (\inst8|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~2_combout\,
	datab => \inst2|Regist[4]~1_combout\,
	datac => \inst8|Add0~10_combout\,
	datad => \inst8|Regist\(1),
	combout => \inst8|Mux5~0_combout\);

-- Location: LCCOMB_X31_Y32_N2
\inst8|Mux5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux5~1_combout\ = (\inst2|Regist[4]~2_combout\ & ((\inst8|Mux5~0_combout\ & ((!\inst8|Regist\(2)))) # (!\inst8|Mux5~0_combout\ & (\inst12|result[2]~211_combout\)))) # (!\inst2|Regist[4]~2_combout\ & (((\inst8|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|result[2]~211_combout\,
	datab => \inst8|Regist\(2),
	datac => \inst2|Regist[4]~2_combout\,
	datad => \inst8|Mux5~0_combout\,
	combout => \inst8|Mux5~1_combout\);

-- Location: LCCOMB_X31_Y32_N28
\inst8|Mux5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux5~2_combout\ = (\inst8|Regist\(3) & ((\inst2|Regist[4]~0_combout\) # ((!\inst8|Mux6~2_combout\ & \inst8|Mux5~1_combout\)))) # (!\inst8|Regist\(3) & (((!\inst8|Mux6~2_combout\ & \inst8|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Regist\(3),
	datab => \inst2|Regist[4]~0_combout\,
	datac => \inst8|Mux6~2_combout\,
	datad => \inst8|Mux5~1_combout\,
	combout => \inst8|Mux5~2_combout\);

-- Location: FF_X31_Y32_N29
\inst8|Regist[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|Mux5~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst8|Regist[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|Regist\(2));

-- Location: LCCOMB_X31_Y34_N18
\inst8|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux6~0_combout\ = (\inst2|Regist[4]~2_combout\ & ((\inst2|Regist[4]~1_combout\) # ((\inst12|result[1]~221_combout\)))) # (!\inst2|Regist[4]~2_combout\ & (!\inst2|Regist[4]~1_combout\ & ((\inst8|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~2_combout\,
	datab => \inst2|Regist[4]~1_combout\,
	datac => \inst12|result[1]~221_combout\,
	datad => \inst8|Add0~6_combout\,
	combout => \inst8|Mux6~0_combout\);

-- Location: LCCOMB_X31_Y34_N20
\inst8|Mux6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux6~1_combout\ = (\inst2|Regist[4]~1_combout\ & ((\inst8|Mux6~0_combout\ & ((!\inst8|Regist\(1)))) # (!\inst8|Mux6~0_combout\ & (\inst8|Regist\(0))))) # (!\inst2|Regist[4]~1_combout\ & (((\inst8|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Regist\(0),
	datab => \inst8|Regist\(1),
	datac => \inst2|Regist[4]~1_combout\,
	datad => \inst8|Mux6~0_combout\,
	combout => \inst8|Mux6~1_combout\);

-- Location: LCCOMB_X31_Y34_N24
\inst8|Mux6~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux6~3_combout\ = (\inst2|Regist[4]~0_combout\ & ((\inst8|Regist\(2)) # ((!\inst8|Mux6~2_combout\ & \inst8|Mux6~1_combout\)))) # (!\inst2|Regist[4]~0_combout\ & (!\inst8|Mux6~2_combout\ & ((\inst8|Mux6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~0_combout\,
	datab => \inst8|Mux6~2_combout\,
	datac => \inst8|Regist\(2),
	datad => \inst8|Mux6~1_combout\,
	combout => \inst8|Mux6~3_combout\);

-- Location: FF_X31_Y34_N25
\inst8|Regist[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|Mux6~3_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst8|Regist[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|Regist\(1));

-- Location: LCCOMB_X30_Y34_N4
\inst12|result[1]~213\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|result[1]~213_combout\ = (\inst12|_~36_combout\ & ((\inst14|Regist\(1)) # ((\inst12|_~33_combout\ & \inst8|Regist\(1))))) # (!\inst12|_~36_combout\ & (\inst12|_~33_combout\ & ((\inst8|Regist\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|_~36_combout\,
	datab => \inst12|_~33_combout\,
	datac => \inst14|Regist\(1),
	datad => \inst8|Regist\(1),
	combout => \inst12|result[1]~213_combout\);

-- Location: LCCOMB_X34_Y37_N8
\inst11|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|Add0~0_combout\ = \inst11|Regist\(7) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SelBus[3]~input_o\,
	datac => \inst11|Regist\(7),
	datad => \SelBus[1]~input_o\,
	combout => \inst11|Add0~0_combout\);

-- Location: LCCOMB_X34_Y37_N14
\inst11|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|Add0~1_combout\ = \inst11|Regist\(6) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SelBus[3]~input_o\,
	datac => \SelBus[1]~input_o\,
	datad => \inst11|Regist\(6),
	combout => \inst11|Add0~1_combout\);

-- Location: LCCOMB_X34_Y37_N28
\inst11|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|Add0~2_combout\ = \inst11|Regist\(5) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Regist\(5),
	datab => \SelBus[3]~input_o\,
	datad => \SelBus[1]~input_o\,
	combout => \inst11|Add0~2_combout\);

-- Location: LCCOMB_X36_Y37_N22
\inst11|Add0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|Add0~3_combout\ = \inst11|Regist\(4) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SelBus[1]~input_o\,
	datac => \inst11|Regist\(4),
	datad => \SelBus[3]~input_o\,
	combout => \inst11|Add0~3_combout\);

-- Location: LCCOMB_X36_Y37_N20
\inst11|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|Add0~4_combout\ = \inst11|Regist\(3) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SelBus[3]~input_o\,
	datac => \inst11|Regist\(3),
	datad => \SelBus[1]~input_o\,
	combout => \inst11|Add0~4_combout\);

-- Location: LCCOMB_X36_Y37_N14
\inst11|Add0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|Add0~5_combout\ = \inst11|Regist\(2) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SelBus[1]~input_o\,
	datac => \inst11|Regist\(2),
	datad => \SelBus[3]~input_o\,
	combout => \inst11|Add0~5_combout\);

-- Location: LCCOMB_X36_Y36_N8
\inst11|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|Add0~6_combout\ = \inst11|Regist\(1) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SelBus[1]~input_o\,
	datac => \SelBus[3]~input_o\,
	datad => \inst11|Regist\(1),
	combout => \inst11|Add0~6_combout\);

-- Location: LCCOMB_X34_Y37_N4
\inst11|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|Mux7~0_combout\ = (\inst6|Regist[0]~2_combout\ & ((\inst11|Regist\(7)) # ((\inst6|Regist[0]~1_combout\)))) # (!\inst6|Regist[0]~2_combout\ & (((\inst12|result[0]~231_combout\ & !\inst6|Regist[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Regist[0]~2_combout\,
	datab => \inst11|Regist\(7),
	datac => \inst12|result[0]~231_combout\,
	datad => \inst6|Regist[0]~1_combout\,
	combout => \inst11|Mux7~0_combout\);

-- Location: LCCOMB_X34_Y37_N22
\inst11|Mux7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|Mux7~1_combout\ = (\inst11|Mux7~0_combout\ & (((\inst11|Regist\(1)) # (!\inst6|Regist[0]~1_combout\)))) # (!\inst11|Mux7~0_combout\ & (!\inst11|Regist\(0) & ((\inst6|Regist[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Regist\(0),
	datab => \inst11|Regist\(1),
	datac => \inst11|Mux7~0_combout\,
	datad => \inst6|Regist[0]~1_combout\,
	combout => \inst11|Mux7~1_combout\);

-- Location: LCCOMB_X35_Y37_N8
\inst11|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|Add0~8_combout\ = (\inst8|Add0~0_combout\ & (\inst11|Add0~7_combout\ $ (GND))) # (!\inst8|Add0~0_combout\ & (!\inst11|Add0~7_combout\ & VCC))
-- \inst11|Add0~9\ = CARRY((\inst8|Add0~0_combout\ & !\inst11|Add0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add0~0_combout\,
	datab => \inst11|Add0~7_combout\,
	datad => VCC,
	combout => \inst11|Add0~8_combout\,
	cout => \inst11|Add0~9\);

-- Location: LCCOMB_X34_Y37_N26
\inst11|Mux7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|Mux7~2_combout\ = (\inst11|Mux7~1_combout\ & (((\inst11|Add0~8_combout\ & \inst6|Regist[0]~0_combout\)) # (!\inst8|Mux7~2_combout\))) # (!\inst11|Mux7~1_combout\ & (((\inst11|Add0~8_combout\ & \inst6|Regist[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Mux7~1_combout\,
	datab => \inst8|Mux7~2_combout\,
	datac => \inst11|Add0~8_combout\,
	datad => \inst6|Regist[0]~0_combout\,
	combout => \inst11|Mux7~2_combout\);

-- Location: LCCOMB_X26_Y38_N26
\inst21|Mux15~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst21|Mux15~7_combout\ = (!\SelRegD[0]~input_o\ & (!\SelRegD[3]~input_o\ & (!\SelRegD[1]~input_o\ & \SelRegD[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelRegD[0]~input_o\,
	datab => \SelRegD[3]~input_o\,
	datac => \SelRegD[1]~input_o\,
	datad => \SelRegD[2]~input_o\,
	combout => \inst21|Mux15~7_combout\);

-- Location: LCCOMB_X37_Y38_N20
\inst11|Regist[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|Regist[7]~0_combout\ = (\inst21|Mux15~7_combout\ & (\EnDec~input_o\ & \inst8|Regist[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst21|Mux15~7_combout\,
	datac => \EnDec~input_o\,
	datad => \inst8|Regist[0]~0_combout\,
	combout => \inst11|Regist[7]~0_combout\);

-- Location: FF_X34_Y37_N27
\inst11|Regist[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst11|Mux7~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst11|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|Regist\(0));

-- Location: LCCOMB_X36_Y37_N12
\inst11|Add0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|Add0~7_combout\ = \inst11|Regist\(0) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SelBus[3]~input_o\,
	datac => \inst11|Regist\(0),
	datad => \SelBus[1]~input_o\,
	combout => \inst11|Add0~7_combout\);

-- Location: LCCOMB_X35_Y37_N10
\inst11|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|Add0~10_combout\ = (\inst8|Add0~5_combout\ & ((\inst11|Add0~6_combout\ & (!\inst11|Add0~9\)) # (!\inst11|Add0~6_combout\ & (\inst11|Add0~9\ & VCC)))) # (!\inst8|Add0~5_combout\ & ((\inst11|Add0~6_combout\ & ((\inst11|Add0~9\) # (GND))) # 
-- (!\inst11|Add0~6_combout\ & (!\inst11|Add0~9\))))
-- \inst11|Add0~11\ = CARRY((\inst8|Add0~5_combout\ & (\inst11|Add0~6_combout\ & !\inst11|Add0~9\)) # (!\inst8|Add0~5_combout\ & ((\inst11|Add0~6_combout\) # (!\inst11|Add0~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add0~5_combout\,
	datab => \inst11|Add0~6_combout\,
	datad => VCC,
	cin => \inst11|Add0~9\,
	combout => \inst11|Add0~10_combout\,
	cout => \inst11|Add0~11\);

-- Location: LCCOMB_X35_Y37_N12
\inst11|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|Add0~12_combout\ = ((\inst8|Add0~9_combout\ $ (\inst11|Add0~5_combout\ $ (\inst11|Add0~11\)))) # (GND)
-- \inst11|Add0~13\ = CARRY((\inst8|Add0~9_combout\ & ((!\inst11|Add0~11\) # (!\inst11|Add0~5_combout\))) # (!\inst8|Add0~9_combout\ & (!\inst11|Add0~5_combout\ & !\inst11|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add0~9_combout\,
	datab => \inst11|Add0~5_combout\,
	datad => VCC,
	cin => \inst11|Add0~11\,
	combout => \inst11|Add0~12_combout\,
	cout => \inst11|Add0~13\);

-- Location: LCCOMB_X35_Y37_N14
\inst11|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|Add0~14_combout\ = (\inst11|Add0~4_combout\ & ((\inst8|Add0~13_combout\ & (!\inst11|Add0~13\)) # (!\inst8|Add0~13_combout\ & ((\inst11|Add0~13\) # (GND))))) # (!\inst11|Add0~4_combout\ & ((\inst8|Add0~13_combout\ & (\inst11|Add0~13\ & VCC)) # 
-- (!\inst8|Add0~13_combout\ & (!\inst11|Add0~13\))))
-- \inst11|Add0~15\ = CARRY((\inst11|Add0~4_combout\ & ((!\inst11|Add0~13\) # (!\inst8|Add0~13_combout\))) # (!\inst11|Add0~4_combout\ & (!\inst8|Add0~13_combout\ & !\inst11|Add0~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add0~4_combout\,
	datab => \inst8|Add0~13_combout\,
	datad => VCC,
	cin => \inst11|Add0~13\,
	combout => \inst11|Add0~14_combout\,
	cout => \inst11|Add0~15\);

-- Location: LCCOMB_X35_Y37_N16
\inst11|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|Add0~16_combout\ = ((\inst8|Add0~17_combout\ $ (\inst11|Add0~3_combout\ $ (\inst11|Add0~15\)))) # (GND)
-- \inst11|Add0~17\ = CARRY((\inst8|Add0~17_combout\ & ((!\inst11|Add0~15\) # (!\inst11|Add0~3_combout\))) # (!\inst8|Add0~17_combout\ & (!\inst11|Add0~3_combout\ & !\inst11|Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add0~17_combout\,
	datab => \inst11|Add0~3_combout\,
	datad => VCC,
	cin => \inst11|Add0~15\,
	combout => \inst11|Add0~16_combout\,
	cout => \inst11|Add0~17\);

-- Location: LCCOMB_X35_Y37_N18
\inst11|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|Add0~18_combout\ = (\inst8|Add0~21_combout\ & ((\inst11|Add0~2_combout\ & (!\inst11|Add0~17\)) # (!\inst11|Add0~2_combout\ & (\inst11|Add0~17\ & VCC)))) # (!\inst8|Add0~21_combout\ & ((\inst11|Add0~2_combout\ & ((\inst11|Add0~17\) # (GND))) # 
-- (!\inst11|Add0~2_combout\ & (!\inst11|Add0~17\))))
-- \inst11|Add0~19\ = CARRY((\inst8|Add0~21_combout\ & (\inst11|Add0~2_combout\ & !\inst11|Add0~17\)) # (!\inst8|Add0~21_combout\ & ((\inst11|Add0~2_combout\) # (!\inst11|Add0~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add0~21_combout\,
	datab => \inst11|Add0~2_combout\,
	datad => VCC,
	cin => \inst11|Add0~17\,
	combout => \inst11|Add0~18_combout\,
	cout => \inst11|Add0~19\);

-- Location: LCCOMB_X35_Y37_N20
\inst11|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|Add0~20_combout\ = ((\inst11|Add0~1_combout\ $ (\inst8|Add0~25_combout\ $ (\inst11|Add0~19\)))) # (GND)
-- \inst11|Add0~21\ = CARRY((\inst11|Add0~1_combout\ & (\inst8|Add0~25_combout\ & !\inst11|Add0~19\)) # (!\inst11|Add0~1_combout\ & ((\inst8|Add0~25_combout\) # (!\inst11|Add0~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add0~1_combout\,
	datab => \inst8|Add0~25_combout\,
	datad => VCC,
	cin => \inst11|Add0~19\,
	combout => \inst11|Add0~20_combout\,
	cout => \inst11|Add0~21\);

-- Location: LCCOMB_X35_Y37_N22
\inst11|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|Add0~22_combout\ = \inst11|Add0~0_combout\ $ (\inst11|Add0~21\ $ (!\inst8|Add0~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add0~0_combout\,
	datad => \inst8|Add0~28_combout\,
	cin => \inst11|Add0~21\,
	combout => \inst11|Add0~22_combout\);

-- Location: LCCOMB_X34_Y37_N18
\inst11|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|Mux0~0_combout\ = (\inst3|Regist[7]~0_combout\ & (((\inst6|Regist[0]~2_combout\)))) # (!\inst3|Regist[7]~0_combout\ & ((\inst6|Regist[0]~2_combout\ & ((\inst11|Regist\(0)))) # (!\inst6|Regist[0]~2_combout\ & (\inst12|result[7]~161_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Regist[7]~0_combout\,
	datab => \inst12|result[7]~161_combout\,
	datac => \inst11|Regist\(0),
	datad => \inst6|Regist[0]~2_combout\,
	combout => \inst11|Mux0~0_combout\);

-- Location: LCCOMB_X34_Y37_N24
\inst11|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|Mux0~1_combout\ = (\inst3|Regist[7]~0_combout\ & ((\inst11|Mux0~0_combout\ & (\inst11|Regist\(6))) # (!\inst11|Mux0~0_combout\ & ((!\inst11|Regist\(7)))))) # (!\inst3|Regist[7]~0_combout\ & (((\inst11|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Regist[7]~0_combout\,
	datab => \inst11|Regist\(6),
	datac => \inst11|Regist\(7),
	datad => \inst11|Mux0~0_combout\,
	combout => \inst11|Mux0~1_combout\);

-- Location: LCCOMB_X35_Y37_N0
\inst11|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|Mux0~2_combout\ = (\inst6|Mux0~0_combout\ & (\inst6|Regist[0]~0_combout\ & (\inst11|Add0~22_combout\))) # (!\inst6|Mux0~0_combout\ & ((\inst11|Mux0~1_combout\) # ((\inst6|Regist[0]~0_combout\ & \inst11|Add0~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mux0~0_combout\,
	datab => \inst6|Regist[0]~0_combout\,
	datac => \inst11|Add0~22_combout\,
	datad => \inst11|Mux0~1_combout\,
	combout => \inst11|Mux0~2_combout\);

-- Location: FF_X35_Y37_N1
\inst11|Regist[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst11|Mux0~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst11|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|Regist\(7));

-- Location: LCCOMB_X34_Y37_N30
\inst11|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|Mux1~0_combout\ = (\inst2|Regist[4]~1_combout\ & ((\inst2|Regist[4]~2_combout\ & ((!\inst11|Regist\(6)))) # (!\inst2|Regist[4]~2_combout\ & (\inst11|Regist\(5))))) # (!\inst2|Regist[4]~1_combout\ & (((!\inst2|Regist[4]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Regist\(5),
	datab => \inst2|Regist[4]~1_combout\,
	datac => \inst2|Regist[4]~2_combout\,
	datad => \inst11|Regist\(6),
	combout => \inst11|Mux1~0_combout\);

-- Location: LCCOMB_X34_Y37_N12
\inst11|Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|Mux1~1_combout\ = (\inst11|Mux1~0_combout\ & ((\inst2|Regist[4]~1_combout\) # ((\inst11|Add0~20_combout\)))) # (!\inst11|Mux1~0_combout\ & (!\inst2|Regist[4]~1_combout\ & ((\inst12|result[6]~171_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Mux1~0_combout\,
	datab => \inst2|Regist[4]~1_combout\,
	datac => \inst11|Add0~20_combout\,
	datad => \inst12|result[6]~171_combout\,
	combout => \inst11|Mux1~1_combout\);

-- Location: LCCOMB_X34_Y37_N16
\inst11|Mux1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|Mux1~2_combout\ = (\inst8|Mux6~2_combout\ & (\inst2|Regist[4]~0_combout\ & (\inst11|Regist\(7)))) # (!\inst8|Mux6~2_combout\ & ((\inst11|Mux1~1_combout\) # ((\inst2|Regist[4]~0_combout\ & \inst11|Regist\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Mux6~2_combout\,
	datab => \inst2|Regist[4]~0_combout\,
	datac => \inst11|Regist\(7),
	datad => \inst11|Mux1~1_combout\,
	combout => \inst11|Mux1~2_combout\);

-- Location: FF_X34_Y37_N17
\inst11|Regist[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst11|Mux1~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst11|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|Regist\(6));

-- Location: LCCOMB_X35_Y37_N2
\inst11|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|Mux2~0_combout\ = (\inst2|Regist[4]~2_combout\ & (((\inst2|Regist[4]~1_combout\)))) # (!\inst2|Regist[4]~2_combout\ & ((\inst2|Regist[4]~1_combout\ & (\inst11|Regist\(4))) # (!\inst2|Regist[4]~1_combout\ & ((\inst11|Add0~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Regist\(4),
	datab => \inst2|Regist[4]~2_combout\,
	datac => \inst2|Regist[4]~1_combout\,
	datad => \inst11|Add0~18_combout\,
	combout => \inst11|Mux2~0_combout\);

-- Location: LCCOMB_X35_Y37_N24
\inst11|Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|Mux2~1_combout\ = (\inst2|Regist[4]~2_combout\ & ((\inst11|Mux2~0_combout\ & (!\inst11|Regist\(5))) # (!\inst11|Mux2~0_combout\ & ((\inst12|result[5]~181_combout\))))) # (!\inst2|Regist[4]~2_combout\ & (((\inst11|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Regist\(5),
	datab => \inst2|Regist[4]~2_combout\,
	datac => \inst12|result[5]~181_combout\,
	datad => \inst11|Mux2~0_combout\,
	combout => \inst11|Mux2~1_combout\);

-- Location: LCCOMB_X35_Y37_N6
\inst11|Mux2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|Mux2~2_combout\ = (\inst11|Regist\(6) & ((\inst2|Regist[4]~0_combout\) # ((!\inst8|Mux6~2_combout\ & \inst11|Mux2~1_combout\)))) # (!\inst11|Regist\(6) & (!\inst8|Mux6~2_combout\ & ((\inst11|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Regist\(6),
	datab => \inst8|Mux6~2_combout\,
	datac => \inst2|Regist[4]~0_combout\,
	datad => \inst11|Mux2~1_combout\,
	combout => \inst11|Mux2~2_combout\);

-- Location: FF_X35_Y37_N7
\inst11|Regist[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst11|Mux2~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst11|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|Regist\(5));

-- Location: LCCOMB_X34_Y37_N10
\inst11|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|Mux3~0_combout\ = (\inst2|Regist[4]~1_combout\ & (((\inst2|Regist[4]~2_combout\)))) # (!\inst2|Regist[4]~1_combout\ & ((\inst2|Regist[4]~2_combout\ & (\inst12|result[4]~191_combout\)) # (!\inst2|Regist[4]~2_combout\ & 
-- ((\inst11|Add0~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|result[4]~191_combout\,
	datab => \inst2|Regist[4]~1_combout\,
	datac => \inst2|Regist[4]~2_combout\,
	datad => \inst11|Add0~16_combout\,
	combout => \inst11|Mux3~0_combout\);

-- Location: LCCOMB_X34_Y37_N0
\inst11|Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|Mux3~1_combout\ = (\inst2|Regist[4]~1_combout\ & ((\inst11|Mux3~0_combout\ & ((!\inst11|Regist\(4)))) # (!\inst11|Mux3~0_combout\ & (\inst11|Regist\(3))))) # (!\inst2|Regist[4]~1_combout\ & (((\inst11|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Regist\(3),
	datab => \inst2|Regist[4]~1_combout\,
	datac => \inst11|Regist\(4),
	datad => \inst11|Mux3~0_combout\,
	combout => \inst11|Mux3~1_combout\);

-- Location: LCCOMB_X34_Y37_N2
\inst11|Mux3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|Mux3~2_combout\ = (\inst11|Regist\(5) & ((\inst2|Regist[4]~0_combout\) # ((!\inst8|Mux6~2_combout\ & \inst11|Mux3~1_combout\)))) # (!\inst11|Regist\(5) & (((!\inst8|Mux6~2_combout\ & \inst11|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Regist\(5),
	datab => \inst2|Regist[4]~0_combout\,
	datac => \inst8|Mux6~2_combout\,
	datad => \inst11|Mux3~1_combout\,
	combout => \inst11|Mux3~2_combout\);

-- Location: FF_X34_Y37_N3
\inst11|Regist[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst11|Mux3~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst11|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|Regist\(4));

-- Location: LCCOMB_X35_Y37_N30
\inst11|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|Mux4~0_combout\ = (\inst2|Regist[4]~1_combout\ & ((\inst2|Regist[4]~2_combout\) # ((\inst11|Regist\(2))))) # (!\inst2|Regist[4]~1_combout\ & (!\inst2|Regist[4]~2_combout\ & (\inst11|Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~1_combout\,
	datab => \inst2|Regist[4]~2_combout\,
	datac => \inst11|Add0~14_combout\,
	datad => \inst11|Regist\(2),
	combout => \inst11|Mux4~0_combout\);

-- Location: LCCOMB_X35_Y37_N28
\inst11|Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|Mux4~1_combout\ = (\inst2|Regist[4]~2_combout\ & ((\inst11|Mux4~0_combout\ & (!\inst11|Regist\(3))) # (!\inst11|Mux4~0_combout\ & ((\inst12|result[3]~201_combout\))))) # (!\inst2|Regist[4]~2_combout\ & (((\inst11|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Regist\(3),
	datab => \inst2|Regist[4]~2_combout\,
	datac => \inst11|Mux4~0_combout\,
	datad => \inst12|result[3]~201_combout\,
	combout => \inst11|Mux4~1_combout\);

-- Location: LCCOMB_X35_Y37_N4
\inst11|Mux4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|Mux4~2_combout\ = (\inst11|Regist\(4) & ((\inst2|Regist[4]~0_combout\) # ((!\inst8|Mux6~2_combout\ & \inst11|Mux4~1_combout\)))) # (!\inst11|Regist\(4) & (!\inst8|Mux6~2_combout\ & ((\inst11|Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Regist\(4),
	datab => \inst8|Mux6~2_combout\,
	datac => \inst2|Regist[4]~0_combout\,
	datad => \inst11|Mux4~1_combout\,
	combout => \inst11|Mux4~2_combout\);

-- Location: FF_X35_Y37_N5
\inst11|Regist[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst11|Mux4~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst11|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|Regist\(3));

-- Location: LCCOMB_X36_Y36_N18
\inst11|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|Mux5~0_combout\ = (\inst2|Regist[4]~1_combout\ & (\inst2|Regist[4]~2_combout\)) # (!\inst2|Regist[4]~1_combout\ & ((\inst2|Regist[4]~2_combout\ & (\inst12|result[2]~211_combout\)) # (!\inst2|Regist[4]~2_combout\ & ((\inst11|Add0~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~1_combout\,
	datab => \inst2|Regist[4]~2_combout\,
	datac => \inst12|result[2]~211_combout\,
	datad => \inst11|Add0~12_combout\,
	combout => \inst11|Mux5~0_combout\);

-- Location: LCCOMB_X36_Y36_N0
\inst11|Mux5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|Mux5~1_combout\ = (\inst2|Regist[4]~1_combout\ & ((\inst11|Mux5~0_combout\ & ((!\inst11|Regist\(2)))) # (!\inst11|Mux5~0_combout\ & (\inst11|Regist\(1))))) # (!\inst2|Regist[4]~1_combout\ & (((\inst11|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Regist\(1),
	datab => \inst11|Regist\(2),
	datac => \inst2|Regist[4]~1_combout\,
	datad => \inst11|Mux5~0_combout\,
	combout => \inst11|Mux5~1_combout\);

-- Location: LCCOMB_X36_Y36_N20
\inst11|Mux5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|Mux5~2_combout\ = (\inst8|Mux6~2_combout\ & (\inst2|Regist[4]~0_combout\ & (\inst11|Regist\(3)))) # (!\inst8|Mux6~2_combout\ & ((\inst11|Mux5~1_combout\) # ((\inst2|Regist[4]~0_combout\ & \inst11|Regist\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Mux6~2_combout\,
	datab => \inst2|Regist[4]~0_combout\,
	datac => \inst11|Regist\(3),
	datad => \inst11|Mux5~1_combout\,
	combout => \inst11|Mux5~2_combout\);

-- Location: FF_X36_Y36_N21
\inst11|Regist[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst11|Mux5~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst11|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|Regist\(2));

-- Location: LCCOMB_X35_Y37_N26
\inst11|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|Mux6~0_combout\ = (\inst2|Regist[4]~1_combout\ & ((\inst2|Regist[4]~2_combout\) # ((\inst11|Regist\(0))))) # (!\inst2|Regist[4]~1_combout\ & (!\inst2|Regist[4]~2_combout\ & ((\inst11|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~1_combout\,
	datab => \inst2|Regist[4]~2_combout\,
	datac => \inst11|Regist\(0),
	datad => \inst11|Add0~10_combout\,
	combout => \inst11|Mux6~0_combout\);

-- Location: LCCOMB_X34_Y37_N6
\inst11|Mux6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|Mux6~1_combout\ = (\inst2|Regist[4]~2_combout\ & ((\inst11|Mux6~0_combout\ & ((!\inst11|Regist\(1)))) # (!\inst11|Mux6~0_combout\ & (\inst12|result[1]~221_combout\)))) # (!\inst2|Regist[4]~2_combout\ & (((\inst11|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|result[1]~221_combout\,
	datab => \inst11|Regist\(1),
	datac => \inst2|Regist[4]~2_combout\,
	datad => \inst11|Mux6~0_combout\,
	combout => \inst11|Mux6~1_combout\);

-- Location: LCCOMB_X34_Y37_N20
\inst11|Mux6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|Mux6~2_combout\ = (\inst2|Regist[4]~0_combout\ & ((\inst11|Regist\(2)) # ((!\inst8|Mux6~2_combout\ & \inst11|Mux6~1_combout\)))) # (!\inst2|Regist[4]~0_combout\ & (((!\inst8|Mux6~2_combout\ & \inst11|Mux6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~0_combout\,
	datab => \inst11|Regist\(2),
	datac => \inst8|Mux6~2_combout\,
	datad => \inst11|Mux6~1_combout\,
	combout => \inst11|Mux6~2_combout\);

-- Location: FF_X34_Y37_N21
\inst11|Regist[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst11|Mux6~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst11|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|Regist\(1));

-- Location: LCCOMB_X30_Y34_N22
\inst12|result[1]~212\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|result[1]~212_combout\ = (\inst12|_~35_combout\ & ((\inst11|Regist\(1)) # ((\inst12|_~34_combout\ & \inst5|Regist\(1))))) # (!\inst12|_~35_combout\ & (\inst12|_~34_combout\ & (\inst5|Regist\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|_~35_combout\,
	datab => \inst12|_~34_combout\,
	datac => \inst5|Regist\(1),
	datad => \inst11|Regist\(1),
	combout => \inst12|result[1]~212_combout\);

-- Location: LCCOMB_X30_Y34_N8
\inst12|_~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|_~31_combout\ = (\muxSel[0]~input_o\ & (\muxSel[3]~input_o\ & (\muxSel[1]~input_o\ & !\muxSel[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \muxSel[0]~input_o\,
	datab => \muxSel[3]~input_o\,
	datac => \muxSel[1]~input_o\,
	datad => \muxSel[4]~input_o\,
	combout => \inst12|_~31_combout\);

-- Location: LCCOMB_X27_Y36_N8
\inst22|$00000|auto_generated|result_node[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst22|$00000|auto_generated|result_node[1]~1_combout\ = (\MUX_RAM~input_o\ & (\inst2|Regist\(1))) # (!\MUX_RAM~input_o\ & ((\inst1|Regist\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_RAM~input_o\,
	datac => \inst2|Regist\(1),
	datad => \inst1|Regist\(1),
	combout => \inst22|$00000|auto_generated|result_node[1]~1_combout\);

-- Location: LCCOMB_X27_Y36_N22
\inst22|$00000|auto_generated|result_node[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst22|$00000|auto_generated|result_node[2]~2_combout\ = (\MUX_RAM~input_o\ & ((\inst2|Regist\(2)))) # (!\MUX_RAM~input_o\ & (\inst1|Regist\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_RAM~input_o\,
	datab => \inst1|Regist\(2),
	datac => \inst2|Regist\(2),
	combout => \inst22|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X27_Y36_N16
\inst22|$00000|auto_generated|result_node[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst22|$00000|auto_generated|result_node[3]~3_combout\ = (\MUX_RAM~input_o\ & ((\inst2|Regist\(3)))) # (!\MUX_RAM~input_o\ & (\inst1|Regist\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_RAM~input_o\,
	datac => \inst1|Regist\(3),
	datad => \inst2|Regist\(3),
	combout => \inst22|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X27_Y36_N14
\inst22|$00000|auto_generated|result_node[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst22|$00000|auto_generated|result_node[4]~4_combout\ = (\MUX_RAM~input_o\ & ((\inst2|Regist\(4)))) # (!\MUX_RAM~input_o\ & (\inst1|Regist\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_RAM~input_o\,
	datab => \inst1|Regist\(4),
	datad => \inst2|Regist\(4),
	combout => \inst22|$00000|auto_generated|result_node[4]~4_combout\);

-- Location: LCCOMB_X26_Y34_N16
\inst22|$00000|auto_generated|result_node[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst22|$00000|auto_generated|result_node[5]~5_combout\ = (\MUX_RAM~input_o\ & (\inst2|Regist\(5))) # (!\MUX_RAM~input_o\ & ((\inst1|Regist\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_RAM~input_o\,
	datab => \inst2|Regist\(5),
	datac => \inst1|Regist\(5),
	combout => \inst22|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X30_Y34_N6
\inst22|$00000|auto_generated|result_node[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst22|$00000|auto_generated|result_node[6]~6_combout\ = (\MUX_RAM~input_o\ & ((\inst2|Regist\(6)))) # (!\MUX_RAM~input_o\ & (\inst1|Regist\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Regist\(6),
	datac => \MUX_RAM~input_o\,
	datad => \inst2|Regist\(6),
	combout => \inst22|$00000|auto_generated|result_node[6]~6_combout\);

-- Location: LCCOMB_X27_Y36_N4
\inst22|$00000|auto_generated|result_node[7]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst22|$00000|auto_generated|result_node[7]~7_combout\ = (\MUX_RAM~input_o\ & ((\inst2|Regist\(7)))) # (!\MUX_RAM~input_o\ & (\inst1|Regist\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_RAM~input_o\,
	datac => \inst1|Regist\(7),
	datad => \inst2|Regist\(7),
	combout => \inst22|$00000|auto_generated|result_node[7]~7_combout\);

-- Location: M9K_X33_Y36_N0
\inst|altsyncram_component|auto_generated|ram_block1a0\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RP:inst|altsyncram:altsyncram_component|altsyncram_1jo3:auto_generated|ALTSYNCRAM",
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
	portawe => \WR~input_o\,
	portare => VCC,
	clk0 => \CLK~inputclkctrl_outclk\,
	portadatain => \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X34_Y35_N2
\inst19|Add0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst19|Add0~7_combout\ = \inst19|Regist\(0) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011110000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[1]~input_o\,
	datab => \SelBus[3]~input_o\,
	datac => \inst19|Regist\(0),
	combout => \inst19|Add0~7_combout\);

-- Location: LCCOMB_X35_Y35_N12
\inst19|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst19|Add0~8_combout\ = (\inst19|Add0~7_combout\ & (\inst8|Add0~0_combout\ & VCC)) # (!\inst19|Add0~7_combout\ & (\inst8|Add0~0_combout\ $ (VCC)))
-- \inst19|Add0~9\ = CARRY((!\inst19|Add0~7_combout\ & \inst8|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~7_combout\,
	datab => \inst8|Add0~0_combout\,
	datad => VCC,
	combout => \inst19|Add0~8_combout\,
	cout => \inst19|Add0~9\);

-- Location: LCCOMB_X34_Y35_N16
\inst19|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst19|Mux7~0_combout\ = (\inst6|Regist[0]~2_combout\ & ((\inst6|Regist[0]~1_combout\) # ((\inst19|Regist\(7))))) # (!\inst6|Regist[0]~2_combout\ & (!\inst6|Regist[0]~1_combout\ & (\inst12|result[0]~231_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Regist[0]~2_combout\,
	datab => \inst6|Regist[0]~1_combout\,
	datac => \inst12|result[0]~231_combout\,
	datad => \inst19|Regist\(7),
	combout => \inst19|Mux7~0_combout\);

-- Location: LCCOMB_X34_Y35_N18
\inst19|Mux7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst19|Mux7~1_combout\ = (\inst6|Regist[0]~1_combout\ & ((\inst19|Mux7~0_combout\ & (\inst19|Regist\(1))) # (!\inst19|Mux7~0_combout\ & ((!\inst19|Regist\(0)))))) # (!\inst6|Regist[0]~1_combout\ & (((\inst19|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Regist\(1),
	datab => \inst6|Regist[0]~1_combout\,
	datac => \inst19|Regist\(0),
	datad => \inst19|Mux7~0_combout\,
	combout => \inst19|Mux7~1_combout\);

-- Location: LCCOMB_X34_Y35_N4
\inst19|Mux7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst19|Mux7~2_combout\ = (\inst8|Mux7~2_combout\ & (\inst6|Regist[0]~0_combout\ & (\inst19|Add0~8_combout\))) # (!\inst8|Mux7~2_combout\ & ((\inst19|Mux7~1_combout\) # ((\inst6|Regist[0]~0_combout\ & \inst19|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Mux7~2_combout\,
	datab => \inst6|Regist[0]~0_combout\,
	datac => \inst19|Add0~8_combout\,
	datad => \inst19|Mux7~1_combout\,
	combout => \inst19|Mux7~2_combout\);

-- Location: LCCOMB_X26_Y38_N18
\inst21|Mux15~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst21|Mux15~11_combout\ = (\SelRegD[0]~input_o\ & (\SelRegD[3]~input_o\ & (\SelRegD[1]~input_o\ & !\SelRegD[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelRegD[0]~input_o\,
	datab => \SelRegD[3]~input_o\,
	datac => \SelRegD[1]~input_o\,
	datad => \SelRegD[2]~input_o\,
	combout => \inst21|Mux15~11_combout\);

-- Location: LCCOMB_X34_Y38_N12
\inst19|Regist[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst19|Regist[7]~0_combout\ = (\EnDec~input_o\ & (\inst8|Regist[0]~0_combout\ & \inst21|Mux15~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EnDec~input_o\,
	datab => \inst8|Regist[0]~0_combout\,
	datad => \inst21|Mux15~11_combout\,
	combout => \inst19|Regist[7]~0_combout\);

-- Location: FF_X34_Y35_N5
\inst19|Regist[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst19|Mux7~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst19|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|Regist\(0));

-- Location: LCCOMB_X34_Y35_N8
\inst19|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst19|Mux0~0_combout\ = (\inst3|Regist[7]~0_combout\ & (((\inst6|Regist[0]~2_combout\)))) # (!\inst3|Regist[7]~0_combout\ & ((\inst6|Regist[0]~2_combout\ & (\inst19|Regist\(0))) # (!\inst6|Regist[0]~2_combout\ & ((\inst12|result[7]~161_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Regist[7]~0_combout\,
	datab => \inst19|Regist\(0),
	datac => \inst12|result[7]~161_combout\,
	datad => \inst6|Regist[0]~2_combout\,
	combout => \inst19|Mux0~0_combout\);

-- Location: LCCOMB_X34_Y35_N26
\inst19|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst19|Mux0~1_combout\ = (\inst19|Mux0~0_combout\ & ((\inst19|Regist\(6)) # ((!\inst3|Regist[7]~0_combout\)))) # (!\inst19|Mux0~0_combout\ & (((\inst3|Regist[7]~0_combout\ & !\inst19|Regist\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Regist\(6),
	datab => \inst19|Mux0~0_combout\,
	datac => \inst3|Regist[7]~0_combout\,
	datad => \inst19|Regist\(7),
	combout => \inst19|Mux0~1_combout\);

-- Location: LCCOMB_X34_Y35_N14
\inst19|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst19|Add0~0_combout\ = \inst19|Regist\(7) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SelBus[3]~input_o\,
	datac => \SelBus[1]~input_o\,
	datad => \inst19|Regist\(7),
	combout => \inst19|Add0~0_combout\);

-- Location: LCCOMB_X34_Y35_N28
\inst19|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst19|Add0~1_combout\ = \inst19|Regist\(6) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010110010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Regist\(6),
	datab => \SelBus[3]~input_o\,
	datac => \SelBus[1]~input_o\,
	combout => \inst19|Add0~1_combout\);

-- Location: LCCOMB_X36_Y35_N4
\inst19|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst19|Add0~2_combout\ = \inst19|Regist\(5) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[3]~input_o\,
	datab => \SelBus[1]~input_o\,
	datad => \inst19|Regist\(5),
	combout => \inst19|Add0~2_combout\);

-- Location: LCCOMB_X36_Y35_N6
\inst19|Add0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst19|Add0~3_combout\ = \inst19|Regist\(4) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SelBus[1]~input_o\,
	datac => \inst19|Regist\(4),
	datad => \SelBus[3]~input_o\,
	combout => \inst19|Add0~3_combout\);

-- Location: LCCOMB_X36_Y35_N20
\inst19|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst19|Add0~4_combout\ = \inst19|Regist\(3) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[3]~input_o\,
	datab => \SelBus[1]~input_o\,
	datad => \inst19|Regist\(3),
	combout => \inst19|Add0~4_combout\);

-- Location: LCCOMB_X36_Y35_N14
\inst19|Add0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst19|Add0~5_combout\ = \inst19|Regist\(2) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[3]~input_o\,
	datab => \SelBus[1]~input_o\,
	datad => \inst19|Regist\(2),
	combout => \inst19|Add0~5_combout\);

-- Location: LCCOMB_X36_Y35_N24
\inst19|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst19|Add0~6_combout\ = \inst19|Regist\(1) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SelBus[1]~input_o\,
	datac => \inst19|Regist\(1),
	datad => \SelBus[3]~input_o\,
	combout => \inst19|Add0~6_combout\);

-- Location: LCCOMB_X35_Y35_N14
\inst19|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst19|Add0~10_combout\ = (\inst8|Add0~5_combout\ & ((\inst19|Add0~6_combout\ & (!\inst19|Add0~9\)) # (!\inst19|Add0~6_combout\ & (\inst19|Add0~9\ & VCC)))) # (!\inst8|Add0~5_combout\ & ((\inst19|Add0~6_combout\ & ((\inst19|Add0~9\) # (GND))) # 
-- (!\inst19|Add0~6_combout\ & (!\inst19|Add0~9\))))
-- \inst19|Add0~11\ = CARRY((\inst8|Add0~5_combout\ & (\inst19|Add0~6_combout\ & !\inst19|Add0~9\)) # (!\inst8|Add0~5_combout\ & ((\inst19|Add0~6_combout\) # (!\inst19|Add0~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add0~5_combout\,
	datab => \inst19|Add0~6_combout\,
	datad => VCC,
	cin => \inst19|Add0~9\,
	combout => \inst19|Add0~10_combout\,
	cout => \inst19|Add0~11\);

-- Location: LCCOMB_X35_Y35_N16
\inst19|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst19|Add0~12_combout\ = ((\inst8|Add0~9_combout\ $ (\inst19|Add0~5_combout\ $ (\inst19|Add0~11\)))) # (GND)
-- \inst19|Add0~13\ = CARRY((\inst8|Add0~9_combout\ & ((!\inst19|Add0~11\) # (!\inst19|Add0~5_combout\))) # (!\inst8|Add0~9_combout\ & (!\inst19|Add0~5_combout\ & !\inst19|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add0~9_combout\,
	datab => \inst19|Add0~5_combout\,
	datad => VCC,
	cin => \inst19|Add0~11\,
	combout => \inst19|Add0~12_combout\,
	cout => \inst19|Add0~13\);

-- Location: LCCOMB_X35_Y35_N18
\inst19|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst19|Add0~14_combout\ = (\inst19|Add0~4_combout\ & ((\inst8|Add0~13_combout\ & (!\inst19|Add0~13\)) # (!\inst8|Add0~13_combout\ & ((\inst19|Add0~13\) # (GND))))) # (!\inst19|Add0~4_combout\ & ((\inst8|Add0~13_combout\ & (\inst19|Add0~13\ & VCC)) # 
-- (!\inst8|Add0~13_combout\ & (!\inst19|Add0~13\))))
-- \inst19|Add0~15\ = CARRY((\inst19|Add0~4_combout\ & ((!\inst19|Add0~13\) # (!\inst8|Add0~13_combout\))) # (!\inst19|Add0~4_combout\ & (!\inst8|Add0~13_combout\ & !\inst19|Add0~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~4_combout\,
	datab => \inst8|Add0~13_combout\,
	datad => VCC,
	cin => \inst19|Add0~13\,
	combout => \inst19|Add0~14_combout\,
	cout => \inst19|Add0~15\);

-- Location: LCCOMB_X35_Y35_N20
\inst19|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst19|Add0~16_combout\ = ((\inst19|Add0~3_combout\ $ (\inst8|Add0~17_combout\ $ (\inst19|Add0~15\)))) # (GND)
-- \inst19|Add0~17\ = CARRY((\inst19|Add0~3_combout\ & (\inst8|Add0~17_combout\ & !\inst19|Add0~15\)) # (!\inst19|Add0~3_combout\ & ((\inst8|Add0~17_combout\) # (!\inst19|Add0~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~3_combout\,
	datab => \inst8|Add0~17_combout\,
	datad => VCC,
	cin => \inst19|Add0~15\,
	combout => \inst19|Add0~16_combout\,
	cout => \inst19|Add0~17\);

-- Location: LCCOMB_X35_Y35_N22
\inst19|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst19|Add0~18_combout\ = (\inst19|Add0~2_combout\ & ((\inst8|Add0~21_combout\ & (!\inst19|Add0~17\)) # (!\inst8|Add0~21_combout\ & ((\inst19|Add0~17\) # (GND))))) # (!\inst19|Add0~2_combout\ & ((\inst8|Add0~21_combout\ & (\inst19|Add0~17\ & VCC)) # 
-- (!\inst8|Add0~21_combout\ & (!\inst19|Add0~17\))))
-- \inst19|Add0~19\ = CARRY((\inst19|Add0~2_combout\ & ((!\inst19|Add0~17\) # (!\inst8|Add0~21_combout\))) # (!\inst19|Add0~2_combout\ & (!\inst8|Add0~21_combout\ & !\inst19|Add0~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~2_combout\,
	datab => \inst8|Add0~21_combout\,
	datad => VCC,
	cin => \inst19|Add0~17\,
	combout => \inst19|Add0~18_combout\,
	cout => \inst19|Add0~19\);

-- Location: LCCOMB_X35_Y35_N24
\inst19|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst19|Add0~20_combout\ = ((\inst8|Add0~25_combout\ $ (\inst19|Add0~1_combout\ $ (\inst19|Add0~19\)))) # (GND)
-- \inst19|Add0~21\ = CARRY((\inst8|Add0~25_combout\ & ((!\inst19|Add0~19\) # (!\inst19|Add0~1_combout\))) # (!\inst8|Add0~25_combout\ & (!\inst19|Add0~1_combout\ & !\inst19|Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add0~25_combout\,
	datab => \inst19|Add0~1_combout\,
	datad => VCC,
	cin => \inst19|Add0~19\,
	combout => \inst19|Add0~20_combout\,
	cout => \inst19|Add0~21\);

-- Location: LCCOMB_X35_Y35_N26
\inst19|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst19|Add0~22_combout\ = \inst19|Add0~0_combout\ $ (\inst19|Add0~21\ $ (!\inst8|Add0~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~0_combout\,
	datad => \inst8|Add0~28_combout\,
	cin => \inst19|Add0~21\,
	combout => \inst19|Add0~22_combout\);

-- Location: LCCOMB_X34_Y35_N20
\inst19|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst19|Mux0~2_combout\ = (\inst6|Mux0~0_combout\ & (\inst6|Regist[0]~0_combout\ & ((\inst19|Add0~22_combout\)))) # (!\inst6|Mux0~0_combout\ & ((\inst19|Mux0~1_combout\) # ((\inst6|Regist[0]~0_combout\ & \inst19|Add0~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mux0~0_combout\,
	datab => \inst6|Regist[0]~0_combout\,
	datac => \inst19|Mux0~1_combout\,
	datad => \inst19|Add0~22_combout\,
	combout => \inst19|Mux0~2_combout\);

-- Location: FF_X34_Y35_N21
\inst19|Regist[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst19|Mux0~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst19|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|Regist\(7));

-- Location: LCCOMB_X34_Y35_N12
\inst19|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst19|Mux1~0_combout\ = (\inst2|Regist[4]~1_combout\ & ((\inst2|Regist[4]~2_combout\ & (!\inst19|Regist\(6))) # (!\inst2|Regist[4]~2_combout\ & ((\inst19|Regist\(5)))))) # (!\inst2|Regist[4]~1_combout\ & (((!\inst2|Regist[4]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Regist\(6),
	datab => \inst2|Regist[4]~1_combout\,
	datac => \inst2|Regist[4]~2_combout\,
	datad => \inst19|Regist\(5),
	combout => \inst19|Mux1~0_combout\);

-- Location: LCCOMB_X34_Y35_N10
\inst19|Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst19|Mux1~1_combout\ = (\inst19|Mux1~0_combout\ & ((\inst2|Regist[4]~1_combout\) # ((\inst19|Add0~20_combout\)))) # (!\inst19|Mux1~0_combout\ & (!\inst2|Regist[4]~1_combout\ & (\inst12|result[6]~171_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Mux1~0_combout\,
	datab => \inst2|Regist[4]~1_combout\,
	datac => \inst12|result[6]~171_combout\,
	datad => \inst19|Add0~20_combout\,
	combout => \inst19|Mux1~1_combout\);

-- Location: LCCOMB_X34_Y35_N22
\inst19|Mux1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst19|Mux1~2_combout\ = (\inst8|Mux6~2_combout\ & (\inst19|Regist\(7) & (\inst2|Regist[4]~0_combout\))) # (!\inst8|Mux6~2_combout\ & ((\inst19|Mux1~1_combout\) # ((\inst19|Regist\(7) & \inst2|Regist[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Mux6~2_combout\,
	datab => \inst19|Regist\(7),
	datac => \inst2|Regist[4]~0_combout\,
	datad => \inst19|Mux1~1_combout\,
	combout => \inst19|Mux1~2_combout\);

-- Location: FF_X34_Y35_N23
\inst19|Regist[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst19|Mux1~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst19|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|Regist\(6));

-- Location: LCCOMB_X35_Y35_N0
\inst19|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst19|Mux2~0_combout\ = (\inst2|Regist[4]~2_combout\ & (((\inst2|Regist[4]~1_combout\)))) # (!\inst2|Regist[4]~2_combout\ & ((\inst2|Regist[4]~1_combout\ & (\inst19|Regist\(4))) # (!\inst2|Regist[4]~1_combout\ & ((\inst19|Add0~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~2_combout\,
	datab => \inst19|Regist\(4),
	datac => \inst19|Add0~18_combout\,
	datad => \inst2|Regist[4]~1_combout\,
	combout => \inst19|Mux2~0_combout\);

-- Location: LCCOMB_X35_Y35_N6
\inst19|Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst19|Mux2~1_combout\ = (\inst2|Regist[4]~2_combout\ & ((\inst19|Mux2~0_combout\ & (!\inst19|Regist\(5))) # (!\inst19|Mux2~0_combout\ & ((\inst12|result[5]~181_combout\))))) # (!\inst2|Regist[4]~2_combout\ & (((\inst19|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Regist\(5),
	datab => \inst12|result[5]~181_combout\,
	datac => \inst2|Regist[4]~2_combout\,
	datad => \inst19|Mux2~0_combout\,
	combout => \inst19|Mux2~1_combout\);

-- Location: LCCOMB_X34_Y35_N0
\inst19|Mux2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst19|Mux2~2_combout\ = (\inst8|Mux6~2_combout\ & (\inst2|Regist[4]~0_combout\ & (\inst19|Regist\(6)))) # (!\inst8|Mux6~2_combout\ & ((\inst19|Mux2~1_combout\) # ((\inst2|Regist[4]~0_combout\ & \inst19|Regist\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Mux6~2_combout\,
	datab => \inst2|Regist[4]~0_combout\,
	datac => \inst19|Regist\(6),
	datad => \inst19|Mux2~1_combout\,
	combout => \inst19|Mux2~2_combout\);

-- Location: FF_X34_Y35_N1
\inst19|Regist[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst19|Mux2~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst19|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|Regist\(5));

-- Location: LCCOMB_X35_Y35_N28
\inst19|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst19|Mux3~0_combout\ = (\inst2|Regist[4]~2_combout\ & ((\inst2|Regist[4]~1_combout\) # ((\inst12|result[4]~191_combout\)))) # (!\inst2|Regist[4]~2_combout\ & (!\inst2|Regist[4]~1_combout\ & ((\inst19|Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~2_combout\,
	datab => \inst2|Regist[4]~1_combout\,
	datac => \inst12|result[4]~191_combout\,
	datad => \inst19|Add0~16_combout\,
	combout => \inst19|Mux3~0_combout\);

-- Location: LCCOMB_X35_Y35_N2
\inst19|Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst19|Mux3~1_combout\ = (\inst2|Regist[4]~1_combout\ & ((\inst19|Mux3~0_combout\ & ((!\inst19|Regist\(4)))) # (!\inst19|Mux3~0_combout\ & (\inst19|Regist\(3))))) # (!\inst2|Regist[4]~1_combout\ & (((\inst19|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Regist\(3),
	datab => \inst2|Regist[4]~1_combout\,
	datac => \inst19|Regist\(4),
	datad => \inst19|Mux3~0_combout\,
	combout => \inst19|Mux3~1_combout\);

-- Location: LCCOMB_X35_Y35_N4
\inst19|Mux3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst19|Mux3~2_combout\ = (\inst2|Regist[4]~0_combout\ & ((\inst19|Regist\(5)) # ((!\inst8|Mux6~2_combout\ & \inst19|Mux3~1_combout\)))) # (!\inst2|Regist[4]~0_combout\ & (!\inst8|Mux6~2_combout\ & ((\inst19|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~0_combout\,
	datab => \inst8|Mux6~2_combout\,
	datac => \inst19|Regist\(5),
	datad => \inst19|Mux3~1_combout\,
	combout => \inst19|Mux3~2_combout\);

-- Location: FF_X35_Y35_N5
\inst19|Regist[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst19|Mux3~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst19|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|Regist\(4));

-- Location: LCCOMB_X35_Y35_N8
\inst19|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst19|Mux4~0_combout\ = (\inst2|Regist[4]~2_combout\ & (\inst2|Regist[4]~1_combout\)) # (!\inst2|Regist[4]~2_combout\ & ((\inst2|Regist[4]~1_combout\ & (\inst19|Regist\(2))) # (!\inst2|Regist[4]~1_combout\ & ((\inst19|Add0~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~2_combout\,
	datab => \inst2|Regist[4]~1_combout\,
	datac => \inst19|Regist\(2),
	datad => \inst19|Add0~14_combout\,
	combout => \inst19|Mux4~0_combout\);

-- Location: LCCOMB_X35_Y35_N10
\inst19|Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst19|Mux4~1_combout\ = (\inst19|Mux4~0_combout\ & (((!\inst2|Regist[4]~2_combout\)) # (!\inst19|Regist\(3)))) # (!\inst19|Mux4~0_combout\ & (((\inst12|result[3]~201_combout\ & \inst2|Regist[4]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Regist\(3),
	datab => \inst12|result[3]~201_combout\,
	datac => \inst19|Mux4~0_combout\,
	datad => \inst2|Regist[4]~2_combout\,
	combout => \inst19|Mux4~1_combout\);

-- Location: LCCOMB_X35_Y35_N30
\inst19|Mux4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst19|Mux4~2_combout\ = (\inst2|Regist[4]~0_combout\ & ((\inst19|Regist\(4)) # ((!\inst8|Mux6~2_combout\ & \inst19|Mux4~1_combout\)))) # (!\inst2|Regist[4]~0_combout\ & (((!\inst8|Mux6~2_combout\ & \inst19|Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~0_combout\,
	datab => \inst19|Regist\(4),
	datac => \inst8|Mux6~2_combout\,
	datad => \inst19|Mux4~1_combout\,
	combout => \inst19|Mux4~2_combout\);

-- Location: FF_X35_Y35_N31
\inst19|Regist[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst19|Mux4~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst19|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|Regist\(3));

-- Location: LCCOMB_X36_Y36_N2
\inst19|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst19|Mux5~0_combout\ = (\inst2|Regist[4]~1_combout\ & (\inst2|Regist[4]~2_combout\)) # (!\inst2|Regist[4]~1_combout\ & ((\inst2|Regist[4]~2_combout\ & (\inst12|result[2]~211_combout\)) # (!\inst2|Regist[4]~2_combout\ & ((\inst19|Add0~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~1_combout\,
	datab => \inst2|Regist[4]~2_combout\,
	datac => \inst12|result[2]~211_combout\,
	datad => \inst19|Add0~12_combout\,
	combout => \inst19|Mux5~0_combout\);

-- Location: LCCOMB_X36_Y36_N12
\inst19|Mux5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst19|Mux5~1_combout\ = (\inst2|Regist[4]~1_combout\ & ((\inst19|Mux5~0_combout\ & (!\inst19|Regist\(2))) # (!\inst19|Mux5~0_combout\ & ((\inst19|Regist\(1)))))) # (!\inst2|Regist[4]~1_combout\ & (((\inst19|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Regist\(2),
	datab => \inst19|Regist\(1),
	datac => \inst2|Regist[4]~1_combout\,
	datad => \inst19|Mux5~0_combout\,
	combout => \inst19|Mux5~1_combout\);

-- Location: LCCOMB_X36_Y36_N6
\inst19|Mux5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst19|Mux5~2_combout\ = (\inst8|Mux6~2_combout\ & (\inst2|Regist[4]~0_combout\ & (\inst19|Regist\(3)))) # (!\inst8|Mux6~2_combout\ & ((\inst19|Mux5~1_combout\) # ((\inst2|Regist[4]~0_combout\ & \inst19|Regist\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Mux6~2_combout\,
	datab => \inst2|Regist[4]~0_combout\,
	datac => \inst19|Regist\(3),
	datad => \inst19|Mux5~1_combout\,
	combout => \inst19|Mux5~2_combout\);

-- Location: FF_X36_Y36_N7
\inst19|Regist[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst19|Mux5~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst19|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|Regist\(2));

-- Location: LCCOMB_X34_Y35_N24
\inst19|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst19|Mux6~0_combout\ = (\inst2|Regist[4]~2_combout\ & (\inst2|Regist[4]~1_combout\)) # (!\inst2|Regist[4]~2_combout\ & ((\inst2|Regist[4]~1_combout\ & (\inst19|Regist\(0))) # (!\inst2|Regist[4]~1_combout\ & ((\inst19|Add0~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~2_combout\,
	datab => \inst2|Regist[4]~1_combout\,
	datac => \inst19|Regist\(0),
	datad => \inst19|Add0~10_combout\,
	combout => \inst19|Mux6~0_combout\);

-- Location: LCCOMB_X34_Y35_N6
\inst19|Mux6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst19|Mux6~1_combout\ = (\inst2|Regist[4]~2_combout\ & ((\inst19|Mux6~0_combout\ & ((!\inst19|Regist\(1)))) # (!\inst19|Mux6~0_combout\ & (\inst12|result[1]~221_combout\)))) # (!\inst2|Regist[4]~2_combout\ & (((\inst19|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|result[1]~221_combout\,
	datab => \inst2|Regist[4]~2_combout\,
	datac => \inst19|Regist\(1),
	datad => \inst19|Mux6~0_combout\,
	combout => \inst19|Mux6~1_combout\);

-- Location: LCCOMB_X34_Y35_N30
\inst19|Mux6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst19|Mux6~2_combout\ = (\inst8|Mux6~2_combout\ & (\inst19|Regist\(2) & (\inst2|Regist[4]~0_combout\))) # (!\inst8|Mux6~2_combout\ & ((\inst19|Mux6~1_combout\) # ((\inst19|Regist\(2) & \inst2|Regist[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Mux6~2_combout\,
	datab => \inst19|Regist\(2),
	datac => \inst2|Regist[4]~0_combout\,
	datad => \inst19|Mux6~1_combout\,
	combout => \inst19|Mux6~2_combout\);

-- Location: FF_X34_Y35_N31
\inst19|Regist[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst19|Mux6~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst19|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|Regist\(1));

-- Location: LCCOMB_X30_Y34_N10
\inst12|result[1]~214\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|result[1]~214_combout\ = (\inst12|_~31_combout\ & ((\muxSel[2]~input_o\ & (\inst|altsyncram_component|auto_generated|q_a\(1))) # (!\muxSel[2]~input_o\ & ((\inst19|Regist\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \muxSel[2]~input_o\,
	datab => \inst12|_~31_combout\,
	datac => \inst|altsyncram_component|auto_generated|q_a\(1),
	datad => \inst19|Regist\(1),
	combout => \inst12|result[1]~214_combout\);

-- Location: LCCOMB_X30_Y34_N24
\inst12|result[1]~221\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|result[1]~221_combout\ = (\inst12|result[1]~220_combout\) # ((\inst12|result[1]~213_combout\) # ((\inst12|result[1]~212_combout\) # (\inst12|result[1]~214_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|result[1]~220_combout\,
	datab => \inst12|result[1]~213_combout\,
	datac => \inst12|result[1]~212_combout\,
	datad => \inst12|result[1]~214_combout\,
	combout => \inst12|result[1]~221_combout\);

-- Location: LCCOMB_X29_Y37_N4
\inst18|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst18|Add0~6_combout\ = \inst18|Regist\(1) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Regist\(1),
	datab => \SelBus[1]~input_o\,
	datad => \SelBus[3]~input_o\,
	combout => \inst18|Add0~6_combout\);

-- Location: LCCOMB_X30_Y37_N14
\inst18|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst18|Add0~10_combout\ = (\inst8|Add0~5_combout\ & ((\inst18|Add0~6_combout\ & (!\inst18|Add0~9\)) # (!\inst18|Add0~6_combout\ & (\inst18|Add0~9\ & VCC)))) # (!\inst8|Add0~5_combout\ & ((\inst18|Add0~6_combout\ & ((\inst18|Add0~9\) # (GND))) # 
-- (!\inst18|Add0~6_combout\ & (!\inst18|Add0~9\))))
-- \inst18|Add0~11\ = CARRY((\inst8|Add0~5_combout\ & (\inst18|Add0~6_combout\ & !\inst18|Add0~9\)) # (!\inst8|Add0~5_combout\ & ((\inst18|Add0~6_combout\) # (!\inst18|Add0~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add0~5_combout\,
	datab => \inst18|Add0~6_combout\,
	datad => VCC,
	cin => \inst18|Add0~9\,
	combout => \inst18|Add0~10_combout\,
	cout => \inst18|Add0~11\);

-- Location: LCCOMB_X27_Y37_N28
\inst18|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst18|Mux6~0_combout\ = (\inst2|Regist[4]~1_combout\ & (\inst2|Regist[4]~2_combout\)) # (!\inst2|Regist[4]~1_combout\ & ((\inst2|Regist[4]~2_combout\ & (\inst12|result[1]~221_combout\)) # (!\inst2|Regist[4]~2_combout\ & ((\inst18|Add0~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~1_combout\,
	datab => \inst2|Regist[4]~2_combout\,
	datac => \inst12|result[1]~221_combout\,
	datad => \inst18|Add0~10_combout\,
	combout => \inst18|Mux6~0_combout\);

-- Location: LCCOMB_X27_Y37_N6
\inst18|Mux6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst18|Mux6~1_combout\ = (\inst2|Regist[4]~1_combout\ & ((\inst18|Mux6~0_combout\ & (!\inst18|Regist\(1))) # (!\inst18|Mux6~0_combout\ & ((\inst18|Regist\(0)))))) # (!\inst2|Regist[4]~1_combout\ & (((\inst18|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~1_combout\,
	datab => \inst18|Regist\(1),
	datac => \inst18|Regist\(0),
	datad => \inst18|Mux6~0_combout\,
	combout => \inst18|Mux6~1_combout\);

-- Location: LCCOMB_X27_Y37_N0
\inst18|Mux6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst18|Mux6~2_combout\ = (\inst8|Mux6~2_combout\ & (\inst18|Regist\(2) & (\inst2|Regist[4]~0_combout\))) # (!\inst8|Mux6~2_combout\ & ((\inst18|Mux6~1_combout\) # ((\inst18|Regist\(2) & \inst2|Regist[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Mux6~2_combout\,
	datab => \inst18|Regist\(2),
	datac => \inst2|Regist[4]~0_combout\,
	datad => \inst18|Mux6~1_combout\,
	combout => \inst18|Mux6~2_combout\);

-- Location: LCCOMB_X26_Y38_N12
\inst21|Mux15~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst21|Mux15~6_combout\ = (!\SelRegD[0]~input_o\ & (\SelRegD[3]~input_o\ & (\SelRegD[1]~input_o\ & !\SelRegD[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelRegD[0]~input_o\,
	datab => \SelRegD[3]~input_o\,
	datac => \SelRegD[1]~input_o\,
	datad => \SelRegD[2]~input_o\,
	combout => \inst21|Mux15~6_combout\);

-- Location: LCCOMB_X27_Y38_N30
\inst18|Regist[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst18|Regist[7]~0_combout\ = (\inst8|Regist[0]~0_combout\ & (\EnDec~input_o\ & \inst21|Mux15~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|Regist[0]~0_combout\,
	datac => \EnDec~input_o\,
	datad => \inst21|Mux15~6_combout\,
	combout => \inst18|Regist[7]~0_combout\);

-- Location: FF_X27_Y37_N1
\inst18|Regist[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst18|Mux6~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst18|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|Regist\(1));

-- Location: LCCOMB_X29_Y37_N10
\inst18|Mux7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst18|Mux7~1_combout\ = (\inst6|Regist[0]~1_combout\ & ((\inst18|Mux7~0_combout\ & ((\inst18|Regist\(1)))) # (!\inst18|Mux7~0_combout\ & (!\inst18|Regist\(0))))) # (!\inst6|Regist[0]~1_combout\ & (((\inst18|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Regist[0]~1_combout\,
	datab => \inst18|Regist\(0),
	datac => \inst18|Mux7~0_combout\,
	datad => \inst18|Regist\(1),
	combout => \inst18|Mux7~1_combout\);

-- Location: LCCOMB_X29_Y37_N18
\inst18|Mux7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst18|Mux7~2_combout\ = (\inst6|Regist[0]~0_combout\ & ((\inst18|Add0~8_combout\) # ((!\inst8|Mux7~2_combout\ & \inst18|Mux7~1_combout\)))) # (!\inst6|Regist[0]~0_combout\ & (!\inst8|Mux7~2_combout\ & ((\inst18|Mux7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Regist[0]~0_combout\,
	datab => \inst8|Mux7~2_combout\,
	datac => \inst18|Add0~8_combout\,
	datad => \inst18|Mux7~1_combout\,
	combout => \inst18|Mux7~2_combout\);

-- Location: FF_X29_Y37_N19
\inst18|Regist[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst18|Mux7~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst18|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|Regist\(0));

-- Location: LCCOMB_X29_Y37_N8
\inst18|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst18|Mux0~0_combout\ = (\inst3|Regist[7]~0_combout\ & (((\inst6|Regist[0]~2_combout\)))) # (!\inst3|Regist[7]~0_combout\ & ((\inst6|Regist[0]~2_combout\ & (\inst18|Regist\(0))) # (!\inst6|Regist[0]~2_combout\ & ((\inst12|result[7]~161_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Regist\(0),
	datab => \inst3|Regist[7]~0_combout\,
	datac => \inst6|Regist[0]~2_combout\,
	datad => \inst12|result[7]~161_combout\,
	combout => \inst18|Mux0~0_combout\);

-- Location: LCCOMB_X29_Y37_N30
\inst18|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst18|Mux0~1_combout\ = (\inst3|Regist[7]~0_combout\ & ((\inst18|Mux0~0_combout\ & (\inst18|Regist\(6))) # (!\inst18|Mux0~0_combout\ & ((!\inst18|Regist\(7)))))) # (!\inst3|Regist[7]~0_combout\ & (((\inst18|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Regist\(6),
	datab => \inst3|Regist[7]~0_combout\,
	datac => \inst18|Mux0~0_combout\,
	datad => \inst18|Regist\(7),
	combout => \inst18|Mux0~1_combout\);

-- Location: LCCOMB_X31_Y37_N24
\inst18|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst18|Add0~0_combout\ = \inst18|Regist\(7) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SelBus[1]~input_o\,
	datac => \SelBus[3]~input_o\,
	datad => \inst18|Regist\(7),
	combout => \inst18|Add0~0_combout\);

-- Location: LCCOMB_X29_Y37_N6
\inst18|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst18|Add0~1_combout\ = \inst18|Regist\(6) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Regist\(6),
	datab => \SelBus[1]~input_o\,
	datad => \SelBus[3]~input_o\,
	combout => \inst18|Add0~1_combout\);

-- Location: LCCOMB_X29_Y37_N16
\inst18|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst18|Add0~2_combout\ = \inst18|Regist\(5) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Regist\(5),
	datab => \SelBus[1]~input_o\,
	datad => \SelBus[3]~input_o\,
	combout => \inst18|Add0~2_combout\);

-- Location: LCCOMB_X31_Y37_N14
\inst18|Add0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst18|Add0~3_combout\ = \inst18|Regist\(4) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SelBus[3]~input_o\,
	datac => \inst18|Regist\(4),
	datad => \SelBus[1]~input_o\,
	combout => \inst18|Add0~3_combout\);

-- Location: LCCOMB_X29_Y37_N2
\inst18|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst18|Add0~4_combout\ = \inst18|Regist\(3) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SelBus[1]~input_o\,
	datac => \inst18|Regist\(3),
	datad => \SelBus[3]~input_o\,
	combout => \inst18|Add0~4_combout\);

-- Location: LCCOMB_X27_Y37_N14
\inst18|Add0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst18|Add0~5_combout\ = \inst18|Regist\(2) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst18|Regist\(2),
	datac => \SelBus[1]~input_o\,
	datad => \SelBus[3]~input_o\,
	combout => \inst18|Add0~5_combout\);

-- Location: LCCOMB_X30_Y37_N16
\inst18|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst18|Add0~12_combout\ = ((\inst8|Add0~9_combout\ $ (\inst18|Add0~5_combout\ $ (\inst18|Add0~11\)))) # (GND)
-- \inst18|Add0~13\ = CARRY((\inst8|Add0~9_combout\ & ((!\inst18|Add0~11\) # (!\inst18|Add0~5_combout\))) # (!\inst8|Add0~9_combout\ & (!\inst18|Add0~5_combout\ & !\inst18|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add0~9_combout\,
	datab => \inst18|Add0~5_combout\,
	datad => VCC,
	cin => \inst18|Add0~11\,
	combout => \inst18|Add0~12_combout\,
	cout => \inst18|Add0~13\);

-- Location: LCCOMB_X30_Y37_N18
\inst18|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst18|Add0~14_combout\ = (\inst18|Add0~4_combout\ & ((\inst8|Add0~13_combout\ & (!\inst18|Add0~13\)) # (!\inst8|Add0~13_combout\ & ((\inst18|Add0~13\) # (GND))))) # (!\inst18|Add0~4_combout\ & ((\inst8|Add0~13_combout\ & (\inst18|Add0~13\ & VCC)) # 
-- (!\inst8|Add0~13_combout\ & (!\inst18|Add0~13\))))
-- \inst18|Add0~15\ = CARRY((\inst18|Add0~4_combout\ & ((!\inst18|Add0~13\) # (!\inst8|Add0~13_combout\))) # (!\inst18|Add0~4_combout\ & (!\inst8|Add0~13_combout\ & !\inst18|Add0~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Add0~4_combout\,
	datab => \inst8|Add0~13_combout\,
	datad => VCC,
	cin => \inst18|Add0~13\,
	combout => \inst18|Add0~14_combout\,
	cout => \inst18|Add0~15\);

-- Location: LCCOMB_X30_Y37_N20
\inst18|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst18|Add0~16_combout\ = ((\inst8|Add0~17_combout\ $ (\inst18|Add0~3_combout\ $ (\inst18|Add0~15\)))) # (GND)
-- \inst18|Add0~17\ = CARRY((\inst8|Add0~17_combout\ & ((!\inst18|Add0~15\) # (!\inst18|Add0~3_combout\))) # (!\inst8|Add0~17_combout\ & (!\inst18|Add0~3_combout\ & !\inst18|Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add0~17_combout\,
	datab => \inst18|Add0~3_combout\,
	datad => VCC,
	cin => \inst18|Add0~15\,
	combout => \inst18|Add0~16_combout\,
	cout => \inst18|Add0~17\);

-- Location: LCCOMB_X30_Y37_N22
\inst18|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst18|Add0~18_combout\ = (\inst18|Add0~2_combout\ & ((\inst8|Add0~21_combout\ & (!\inst18|Add0~17\)) # (!\inst8|Add0~21_combout\ & ((\inst18|Add0~17\) # (GND))))) # (!\inst18|Add0~2_combout\ & ((\inst8|Add0~21_combout\ & (\inst18|Add0~17\ & VCC)) # 
-- (!\inst8|Add0~21_combout\ & (!\inst18|Add0~17\))))
-- \inst18|Add0~19\ = CARRY((\inst18|Add0~2_combout\ & ((!\inst18|Add0~17\) # (!\inst8|Add0~21_combout\))) # (!\inst18|Add0~2_combout\ & (!\inst8|Add0~21_combout\ & !\inst18|Add0~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Add0~2_combout\,
	datab => \inst8|Add0~21_combout\,
	datad => VCC,
	cin => \inst18|Add0~17\,
	combout => \inst18|Add0~18_combout\,
	cout => \inst18|Add0~19\);

-- Location: LCCOMB_X30_Y37_N24
\inst18|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst18|Add0~20_combout\ = ((\inst8|Add0~25_combout\ $ (\inst18|Add0~1_combout\ $ (\inst18|Add0~19\)))) # (GND)
-- \inst18|Add0~21\ = CARRY((\inst8|Add0~25_combout\ & ((!\inst18|Add0~19\) # (!\inst18|Add0~1_combout\))) # (!\inst8|Add0~25_combout\ & (!\inst18|Add0~1_combout\ & !\inst18|Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add0~25_combout\,
	datab => \inst18|Add0~1_combout\,
	datad => VCC,
	cin => \inst18|Add0~19\,
	combout => \inst18|Add0~20_combout\,
	cout => \inst18|Add0~21\);

-- Location: LCCOMB_X30_Y37_N26
\inst18|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst18|Add0~22_combout\ = \inst8|Add0~28_combout\ $ (\inst18|Add0~0_combout\ $ (!\inst18|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add0~28_combout\,
	datab => \inst18|Add0~0_combout\,
	cin => \inst18|Add0~21\,
	combout => \inst18|Add0~22_combout\);

-- Location: LCCOMB_X29_Y37_N28
\inst18|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst18|Mux0~2_combout\ = (\inst6|Regist[0]~0_combout\ & ((\inst18|Add0~22_combout\) # ((!\inst6|Mux0~0_combout\ & \inst18|Mux0~1_combout\)))) # (!\inst6|Regist[0]~0_combout\ & (!\inst6|Mux0~0_combout\ & (\inst18|Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Regist[0]~0_combout\,
	datab => \inst6|Mux0~0_combout\,
	datac => \inst18|Mux0~1_combout\,
	datad => \inst18|Add0~22_combout\,
	combout => \inst18|Mux0~2_combout\);

-- Location: FF_X29_Y37_N29
\inst18|Regist[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst18|Mux0~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst18|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|Regist\(7));

-- Location: LCCOMB_X30_Y37_N28
\inst18|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst18|Mux1~0_combout\ = (\inst2|Regist[4]~1_combout\ & ((\inst18|Regist\(5)) # ((\inst2|Regist[4]~2_combout\)))) # (!\inst2|Regist[4]~1_combout\ & (((!\inst2|Regist[4]~2_combout\ & \inst18|Add0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Regist\(5),
	datab => \inst2|Regist[4]~1_combout\,
	datac => \inst2|Regist[4]~2_combout\,
	datad => \inst18|Add0~20_combout\,
	combout => \inst18|Mux1~0_combout\);

-- Location: LCCOMB_X30_Y37_N10
\inst18|Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst18|Mux1~1_combout\ = (\inst2|Regist[4]~2_combout\ & ((\inst18|Mux1~0_combout\ & ((!\inst18|Regist\(6)))) # (!\inst18|Mux1~0_combout\ & (\inst12|result[6]~171_combout\)))) # (!\inst2|Regist[4]~2_combout\ & (((\inst18|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|result[6]~171_combout\,
	datab => \inst2|Regist[4]~2_combout\,
	datac => \inst18|Regist\(6),
	datad => \inst18|Mux1~0_combout\,
	combout => \inst18|Mux1~1_combout\);

-- Location: LCCOMB_X30_Y37_N4
\inst18|Mux1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst18|Mux1~2_combout\ = (\inst18|Regist\(7) & ((\inst2|Regist[4]~0_combout\) # ((!\inst8|Mux6~2_combout\ & \inst18|Mux1~1_combout\)))) # (!\inst18|Regist\(7) & (!\inst8|Mux6~2_combout\ & ((\inst18|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Regist\(7),
	datab => \inst8|Mux6~2_combout\,
	datac => \inst2|Regist[4]~0_combout\,
	datad => \inst18|Mux1~1_combout\,
	combout => \inst18|Mux1~2_combout\);

-- Location: FF_X30_Y37_N5
\inst18|Regist[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst18|Mux1~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst18|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|Regist\(6));

-- Location: LCCOMB_X30_Y37_N8
\inst18|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst18|Mux2~0_combout\ = (\inst2|Regist[4]~2_combout\ & ((\inst12|result[5]~181_combout\) # ((\inst2|Regist[4]~1_combout\)))) # (!\inst2|Regist[4]~2_combout\ & (((\inst18|Add0~18_combout\ & !\inst2|Regist[4]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|result[5]~181_combout\,
	datab => \inst2|Regist[4]~2_combout\,
	datac => \inst18|Add0~18_combout\,
	datad => \inst2|Regist[4]~1_combout\,
	combout => \inst18|Mux2~0_combout\);

-- Location: LCCOMB_X30_Y37_N30
\inst18|Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst18|Mux2~1_combout\ = (\inst2|Regist[4]~1_combout\ & ((\inst18|Mux2~0_combout\ & (!\inst18|Regist\(5))) # (!\inst18|Mux2~0_combout\ & ((\inst18|Regist\(4)))))) # (!\inst2|Regist[4]~1_combout\ & (((\inst18|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Regist\(5),
	datab => \inst2|Regist[4]~1_combout\,
	datac => \inst18|Regist\(4),
	datad => \inst18|Mux2~0_combout\,
	combout => \inst18|Mux2~1_combout\);

-- Location: LCCOMB_X30_Y37_N6
\inst18|Mux2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst18|Mux2~2_combout\ = (\inst2|Regist[4]~0_combout\ & ((\inst18|Regist\(6)) # ((\inst18|Mux2~1_combout\ & !\inst8|Mux6~2_combout\)))) # (!\inst2|Regist[4]~0_combout\ & (((\inst18|Mux2~1_combout\ & !\inst8|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~0_combout\,
	datab => \inst18|Regist\(6),
	datac => \inst18|Mux2~1_combout\,
	datad => \inst8|Mux6~2_combout\,
	combout => \inst18|Mux2~2_combout\);

-- Location: FF_X30_Y37_N7
\inst18|Regist[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst18|Mux2~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst18|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|Regist\(5));

-- Location: LCCOMB_X27_Y37_N16
\inst18|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst18|Mux3~0_combout\ = (\inst2|Regist[4]~2_combout\ & (((\inst2|Regist[4]~1_combout\)))) # (!\inst2|Regist[4]~2_combout\ & ((\inst2|Regist[4]~1_combout\ & (\inst18|Regist\(3))) # (!\inst2|Regist[4]~1_combout\ & ((\inst18|Add0~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Regist\(3),
	datab => \inst2|Regist[4]~2_combout\,
	datac => \inst2|Regist[4]~1_combout\,
	datad => \inst18|Add0~16_combout\,
	combout => \inst18|Mux3~0_combout\);

-- Location: LCCOMB_X27_Y37_N2
\inst18|Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst18|Mux3~1_combout\ = (\inst2|Regist[4]~2_combout\ & ((\inst18|Mux3~0_combout\ & (!\inst18|Regist\(4))) # (!\inst18|Mux3~0_combout\ & ((\inst12|result[4]~191_combout\))))) # (!\inst2|Regist[4]~2_combout\ & (((\inst18|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Regist\(4),
	datab => \inst2|Regist[4]~2_combout\,
	datac => \inst12|result[4]~191_combout\,
	datad => \inst18|Mux3~0_combout\,
	combout => \inst18|Mux3~1_combout\);

-- Location: LCCOMB_X27_Y37_N12
\inst18|Mux3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst18|Mux3~2_combout\ = (\inst18|Regist\(5) & ((\inst2|Regist[4]~0_combout\) # ((!\inst8|Mux6~2_combout\ & \inst18|Mux3~1_combout\)))) # (!\inst18|Regist\(5) & (!\inst8|Mux6~2_combout\ & ((\inst18|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Regist\(5),
	datab => \inst8|Mux6~2_combout\,
	datac => \inst2|Regist[4]~0_combout\,
	datad => \inst18|Mux3~1_combout\,
	combout => \inst18|Mux3~2_combout\);

-- Location: FF_X27_Y37_N13
\inst18|Regist[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst18|Mux3~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst18|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|Regist\(4));

-- Location: LCCOMB_X30_Y37_N0
\inst18|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst18|Mux4~0_combout\ = (\inst2|Regist[4]~2_combout\ & ((\inst2|Regist[4]~1_combout\) # ((\inst12|result[3]~201_combout\)))) # (!\inst2|Regist[4]~2_combout\ & (!\inst2|Regist[4]~1_combout\ & ((\inst18|Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~2_combout\,
	datab => \inst2|Regist[4]~1_combout\,
	datac => \inst12|result[3]~201_combout\,
	datad => \inst18|Add0~14_combout\,
	combout => \inst18|Mux4~0_combout\);

-- Location: LCCOMB_X30_Y37_N2
\inst18|Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst18|Mux4~1_combout\ = (\inst2|Regist[4]~1_combout\ & ((\inst18|Mux4~0_combout\ & ((!\inst18|Regist\(3)))) # (!\inst18|Mux4~0_combout\ & (\inst18|Regist\(2))))) # (!\inst2|Regist[4]~1_combout\ & (((\inst18|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Regist\(2),
	datab => \inst2|Regist[4]~1_combout\,
	datac => \inst18|Regist\(3),
	datad => \inst18|Mux4~0_combout\,
	combout => \inst18|Mux4~1_combout\);

-- Location: LCCOMB_X27_Y37_N8
\inst18|Mux4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst18|Mux4~2_combout\ = (\inst18|Regist\(4) & ((\inst2|Regist[4]~0_combout\) # ((!\inst8|Mux6~2_combout\ & \inst18|Mux4~1_combout\)))) # (!\inst18|Regist\(4) & (!\inst8|Mux6~2_combout\ & ((\inst18|Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Regist\(4),
	datab => \inst8|Mux6~2_combout\,
	datac => \inst2|Regist[4]~0_combout\,
	datad => \inst18|Mux4~1_combout\,
	combout => \inst18|Mux4~2_combout\);

-- Location: FF_X27_Y37_N9
\inst18|Regist[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst18|Mux4~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst18|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|Regist\(3));

-- Location: LCCOMB_X27_Y37_N24
\inst18|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst18|Mux5~0_combout\ = (\inst2|Regist[4]~2_combout\ & (((\inst2|Regist[4]~1_combout\)))) # (!\inst2|Regist[4]~2_combout\ & ((\inst2|Regist[4]~1_combout\ & (\inst18|Regist\(1))) # (!\inst2|Regist[4]~1_combout\ & ((\inst18|Add0~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~2_combout\,
	datab => \inst18|Regist\(1),
	datac => \inst2|Regist[4]~1_combout\,
	datad => \inst18|Add0~12_combout\,
	combout => \inst18|Mux5~0_combout\);

-- Location: LCCOMB_X27_Y37_N10
\inst18|Mux5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst18|Mux5~1_combout\ = (\inst2|Regist[4]~2_combout\ & ((\inst18|Mux5~0_combout\ & (!\inst18|Regist\(2))) # (!\inst18|Mux5~0_combout\ & ((\inst12|result[2]~211_combout\))))) # (!\inst2|Regist[4]~2_combout\ & (((\inst18|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~2_combout\,
	datab => \inst18|Regist\(2),
	datac => \inst12|result[2]~211_combout\,
	datad => \inst18|Mux5~0_combout\,
	combout => \inst18|Mux5~1_combout\);

-- Location: LCCOMB_X27_Y37_N20
\inst18|Mux5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst18|Mux5~2_combout\ = (\inst18|Regist\(3) & ((\inst2|Regist[4]~0_combout\) # ((!\inst8|Mux6~2_combout\ & \inst18|Mux5~1_combout\)))) # (!\inst18|Regist\(3) & (!\inst8|Mux6~2_combout\ & ((\inst18|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Regist\(3),
	datab => \inst8|Mux6~2_combout\,
	datac => \inst2|Regist[4]~0_combout\,
	datad => \inst18|Mux5~1_combout\,
	combout => \inst18|Mux5~2_combout\);

-- Location: FF_X27_Y37_N21
\inst18|Regist[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst18|Mux5~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst18|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|Regist\(2));

-- Location: LCCOMB_X27_Y37_N30
\inst12|result[2]~204\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|result[2]~204_combout\ = (\inst12|_~29_combout\ & ((\inst12|result[2]~211_combout\) # ((\inst12|_~28_combout\ & \inst18|Regist\(2))))) # (!\inst12|_~29_combout\ & (\inst12|_~28_combout\ & ((\inst18|Regist\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|_~29_combout\,
	datab => \inst12|_~28_combout\,
	datac => \inst12|result[2]~211_combout\,
	datad => \inst18|Regist\(2),
	combout => \inst12|result[2]~204_combout\);

-- Location: LCCOMB_X26_Y36_N8
\inst12|result[2]~203\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|result[2]~203_combout\ = (\inst12|_~24_combout\ & ((\inst10|Regist\(2)) # ((\inst12|_~25_combout\ & \inst1|Regist\(2))))) # (!\inst12|_~24_combout\ & (\inst12|_~25_combout\ & (\inst1|Regist\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|_~24_combout\,
	datab => \inst12|_~25_combout\,
	datac => \inst1|Regist\(2),
	datad => \inst10|Regist\(2),
	combout => \inst12|result[2]~203_combout\);

-- Location: LCCOMB_X26_Y36_N4
\inst12|result[2]~237\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|result[2]~237_combout\ = (\inst6|Regist\(2) & (\inst12|_~20_combout\ & (!\muxSel[2]~input_o\ & !\muxSel[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Regist\(2),
	datab => \inst12|_~20_combout\,
	datac => \muxSel[2]~input_o\,
	datad => \muxSel[1]~input_o\,
	combout => \inst12|result[2]~237_combout\);

-- Location: LCCOMB_X26_Y36_N18
\inst12|result[2]~202\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|result[2]~202_combout\ = (\inst12|_~22_combout\ & ((\inst17|Regist\(2)) # ((\inst12|_~21_combout\ & \inst9|Regist\(2))))) # (!\inst12|_~22_combout\ & (\inst12|_~21_combout\ & ((\inst9|Regist\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|_~22_combout\,
	datab => \inst12|_~21_combout\,
	datac => \inst17|Regist\(2),
	datad => \inst9|Regist\(2),
	combout => \inst12|result[2]~202_combout\);

-- Location: LCCOMB_X26_Y36_N20
\inst12|result[2]~205\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|result[2]~205_combout\ = (\inst12|result[2]~204_combout\) # ((\inst12|result[2]~203_combout\) # ((\inst12|result[2]~237_combout\) # (\inst12|result[2]~202_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|result[2]~204_combout\,
	datab => \inst12|result[2]~203_combout\,
	datac => \inst12|result[2]~237_combout\,
	datad => \inst12|result[2]~202_combout\,
	combout => \inst12|result[2]~205_combout\);

-- Location: LCCOMB_X32_Y36_N4
\inst12|result[2]~206\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|result[2]~206_combout\ = (\inst12|_~35_combout\ & ((\inst11|Regist\(2)) # ((\inst12|_~34_combout\ & \inst5|Regist\(2))))) # (!\inst12|_~35_combout\ & (\inst12|_~34_combout\ & (\inst5|Regist\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|_~35_combout\,
	datab => \inst12|_~34_combout\,
	datac => \inst5|Regist\(2),
	datad => \inst11|Regist\(2),
	combout => \inst12|result[2]~206_combout\);

-- Location: LCCOMB_X31_Y36_N16
\inst12|result[2]~207\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|result[2]~207_combout\ = (\inst12|_~36_combout\ & ((\inst14|Regist\(2)) # ((\inst12|_~37_combout\ & \inst7|Regist\(2))))) # (!\inst12|_~36_combout\ & (\inst12|_~37_combout\ & ((\inst7|Regist\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|_~36_combout\,
	datab => \inst12|_~37_combout\,
	datac => \inst14|Regist\(2),
	datad => \inst7|Regist\(2),
	combout => \inst12|result[2]~207_combout\);

-- Location: LCCOMB_X32_Y36_N30
\inst12|result[2]~208\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|result[2]~208_combout\ = (\inst12|_~31_combout\ & ((\muxSel[2]~input_o\ & (\inst|altsyncram_component|auto_generated|q_a\(2))) # (!\muxSel[2]~input_o\ & ((\inst19|Regist\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \muxSel[2]~input_o\,
	datab => \inst12|_~31_combout\,
	datac => \inst|altsyncram_component|auto_generated|q_a\(2),
	datad => \inst19|Regist\(2),
	combout => \inst12|result[2]~208_combout\);

-- Location: LCCOMB_X31_Y35_N2
\inst12|result[2]~209\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|result[2]~209_combout\ = (\inst12|_~38_combout\ & ((\inst2|Regist\(2)) # ((\inst12|_~32_combout\ & \inst20|Regist\(2))))) # (!\inst12|_~38_combout\ & (\inst12|_~32_combout\ & ((\inst20|Regist\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|_~38_combout\,
	datab => \inst12|_~32_combout\,
	datac => \inst2|Regist\(2),
	datad => \inst20|Regist\(2),
	combout => \inst12|result[2]~209_combout\);

-- Location: LCCOMB_X32_Y36_N0
\inst12|result[2]~210\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|result[2]~210_combout\ = (\inst12|result[2]~208_combout\) # ((\inst12|result[2]~209_combout\) # ((\inst12|_~33_combout\ & \inst8|Regist\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|result[2]~208_combout\,
	datab => \inst12|_~33_combout\,
	datac => \inst12|result[2]~209_combout\,
	datad => \inst8|Regist\(2),
	combout => \inst12|result[2]~210_combout\);

-- Location: LCCOMB_X32_Y36_N10
\inst12|result[2]~211\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|result[2]~211_combout\ = (\inst12|result[2]~205_combout\) # ((\inst12|result[2]~206_combout\) # ((\inst12|result[2]~207_combout\) # (\inst12|result[2]~210_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|result[2]~205_combout\,
	datab => \inst12|result[2]~206_combout\,
	datac => \inst12|result[2]~207_combout\,
	datad => \inst12|result[2]~210_combout\,
	combout => \inst12|result[2]~211_combout\);

-- Location: LCCOMB_X32_Y36_N24
\inst15|$00000|auto_generated|result_node[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst15|$00000|auto_generated|result_node[2]~5_combout\ = (\MUX_A~input_o\ & (\dataA[2]~input_o\)) # (!\MUX_A~input_o\ & ((\inst12|result[2]~211_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A~input_o\,
	datab => \dataA[2]~input_o\,
	datad => \inst12|result[2]~211_combout\,
	combout => \inst15|$00000|auto_generated|result_node[2]~5_combout\);

-- Location: LCCOMB_X26_Y36_N24
\inst6|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Add0~10_combout\ = \inst6|Regist\(2) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Regist\(2),
	datac => \SelBus[3]~input_o\,
	datad => \SelBus[1]~input_o\,
	combout => \inst6|Add0~10_combout\);

-- Location: LCCOMB_X32_Y36_N14
\inst6|Add0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Add0~11_combout\ = (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst15|$00000|auto_generated|result_node[2]~5_combout\)))) # (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[3]~input_o\,
	datab => \SelBus[0]~input_o\,
	datac => \SelBus[1]~input_o\,
	datad => \inst15|$00000|auto_generated|result_node[2]~5_combout\,
	combout => \inst6|Add0~11_combout\);

-- Location: IOIBUF_X0_Y36_N15
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

-- Location: LCCOMB_X29_Y36_N24
\inst6|Add0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Add0~13_combout\ = (\MUX_A~input_o\ & (\dataA[1]~input_o\)) # (!\MUX_A~input_o\ & ((\inst12|result[1]~221_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A~input_o\,
	datab => \dataA[1]~input_o\,
	datad => \inst12|result[1]~221_combout\,
	combout => \inst6|Add0~13_combout\);

-- Location: LCCOMB_X29_Y36_N26
\inst6|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Add0~14_combout\ = (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst6|Add0~13_combout\)))) # (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[1]~input_o\,
	datab => \SelBus[0]~input_o\,
	datac => \SelBus[3]~input_o\,
	datad => \inst6|Add0~13_combout\,
	combout => \inst6|Add0~14_combout\);

-- Location: LCCOMB_X27_Y36_N12
\inst6|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Add0~12_combout\ = \inst6|Regist\(1) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Regist\(1),
	datac => \SelBus[3]~input_o\,
	datad => \SelBus[1]~input_o\,
	combout => \inst6|Add0~12_combout\);

-- Location: IOIBUF_X26_Y39_N8
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

-- Location: LCCOMB_X30_Y36_N2
\inst6|Add0~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Add0~15_combout\ = ((\dataA[0]~input_o\ & \MUX_A~input_o\)) # (!\SelBus[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataA[0]~input_o\,
	datac => \SelBus[3]~input_o\,
	datad => \MUX_A~input_o\,
	combout => \inst6|Add0~15_combout\);

-- Location: LCCOMB_X31_Y37_N30
\inst6|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Add0~16_combout\ = (\inst6|Add0~15_combout\) # ((\SelBus[1]~input_o\) # ((!\MUX_A~input_o\ & \inst12|result[0]~231_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add0~15_combout\,
	datab => \MUX_A~input_o\,
	datac => \SelBus[1]~input_o\,
	datad => \inst12|result[0]~231_combout\,
	combout => \inst6|Add0~16_combout\);

-- Location: LCCOMB_X24_Y36_N20
\inst6|Add0~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Add0~17_combout\ = \inst6|Regist\(0) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SelBus[1]~input_o\,
	datac => \inst6|Regist\(0),
	datad => \SelBus[3]~input_o\,
	combout => \inst6|Add0~17_combout\);

-- Location: LCCOMB_X29_Y36_N6
\inst6|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Add0~18_combout\ = (\inst6|Add0~16_combout\ & (\inst6|Add0~17_combout\ $ (GND))) # (!\inst6|Add0~16_combout\ & (!\inst6|Add0~17_combout\ & VCC))
-- \inst6|Add0~19\ = CARRY((\inst6|Add0~16_combout\ & !\inst6|Add0~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add0~16_combout\,
	datab => \inst6|Add0~17_combout\,
	datad => VCC,
	combout => \inst6|Add0~18_combout\,
	cout => \inst6|Add0~19\);

-- Location: LCCOMB_X29_Y36_N8
\inst6|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Add0~20_combout\ = (\inst6|Add0~14_combout\ & ((\inst6|Add0~12_combout\ & (!\inst6|Add0~19\)) # (!\inst6|Add0~12_combout\ & (\inst6|Add0~19\ & VCC)))) # (!\inst6|Add0~14_combout\ & ((\inst6|Add0~12_combout\ & ((\inst6|Add0~19\) # (GND))) # 
-- (!\inst6|Add0~12_combout\ & (!\inst6|Add0~19\))))
-- \inst6|Add0~21\ = CARRY((\inst6|Add0~14_combout\ & (\inst6|Add0~12_combout\ & !\inst6|Add0~19\)) # (!\inst6|Add0~14_combout\ & ((\inst6|Add0~12_combout\) # (!\inst6|Add0~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add0~14_combout\,
	datab => \inst6|Add0~12_combout\,
	datad => VCC,
	cin => \inst6|Add0~19\,
	combout => \inst6|Add0~20_combout\,
	cout => \inst6|Add0~21\);

-- Location: LCCOMB_X29_Y36_N10
\inst6|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Add0~22_combout\ = ((\inst6|Add0~10_combout\ $ (\inst6|Add0~11_combout\ $ (\inst6|Add0~21\)))) # (GND)
-- \inst6|Add0~23\ = CARRY((\inst6|Add0~10_combout\ & (\inst6|Add0~11_combout\ & !\inst6|Add0~21\)) # (!\inst6|Add0~10_combout\ & ((\inst6|Add0~11_combout\) # (!\inst6|Add0~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add0~10_combout\,
	datab => \inst6|Add0~11_combout\,
	datad => VCC,
	cin => \inst6|Add0~21\,
	combout => \inst6|Add0~22_combout\,
	cout => \inst6|Add0~23\);

-- Location: LCCOMB_X26_Y36_N2
\inst6|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Mux5~0_combout\ = (\inst2|Regist[4]~2_combout\ & ((\inst15|$00000|auto_generated|result_node[2]~5_combout\) # ((\inst2|Regist[4]~1_combout\)))) # (!\inst2|Regist[4]~2_combout\ & (((!\inst2|Regist[4]~1_combout\ & \inst6|Add0~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|$00000|auto_generated|result_node[2]~5_combout\,
	datab => \inst2|Regist[4]~2_combout\,
	datac => \inst2|Regist[4]~1_combout\,
	datad => \inst6|Add0~22_combout\,
	combout => \inst6|Mux5~0_combout\);

-- Location: LCCOMB_X26_Y36_N28
\inst6|Mux5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Mux5~1_combout\ = (\inst2|Regist[4]~1_combout\ & ((\inst6|Mux5~0_combout\ & ((!\inst6|Regist\(2)))) # (!\inst6|Mux5~0_combout\ & (\inst6|Regist\(1))))) # (!\inst2|Regist[4]~1_combout\ & (((\inst6|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Regist\(1),
	datab => \inst2|Regist[4]~1_combout\,
	datac => \inst6|Regist\(2),
	datad => \inst6|Mux5~0_combout\,
	combout => \inst6|Mux5~1_combout\);

-- Location: LCCOMB_X26_Y36_N26
\inst6|Mux5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Mux5~2_combout\ = (\inst8|Mux6~2_combout\ & (\inst2|Regist[4]~0_combout\ & (\inst6|Regist\(3)))) # (!\inst8|Mux6~2_combout\ & ((\inst6|Mux5~1_combout\) # ((\inst2|Regist[4]~0_combout\ & \inst6|Regist\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Mux6~2_combout\,
	datab => \inst2|Regist[4]~0_combout\,
	datac => \inst6|Regist\(3),
	datad => \inst6|Mux5~1_combout\,
	combout => \inst6|Mux5~2_combout\);

-- Location: LCCOMB_X26_Y38_N2
\inst21|Mux15~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst21|Mux15~5_combout\ = (!\SelRegD[0]~input_o\ & (!\SelRegD[3]~input_o\ & (!\SelRegD[1]~input_o\ & !\SelRegD[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelRegD[0]~input_o\,
	datab => \SelRegD[3]~input_o\,
	datac => \SelRegD[1]~input_o\,
	datad => \SelRegD[2]~input_o\,
	combout => \inst21|Mux15~5_combout\);

-- Location: LCCOMB_X27_Y38_N12
\inst6|Regist[7]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Regist[7]~3_combout\ = (\inst8|Regist[0]~0_combout\ & (\EnDec~input_o\ & \inst21|Mux15~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|Regist[0]~0_combout\,
	datac => \EnDec~input_o\,
	datad => \inst21|Mux15~5_combout\,
	combout => \inst6|Regist[7]~3_combout\);

-- Location: FF_X26_Y36_N27
\inst6|Regist[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst6|Mux5~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst6|Regist[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|Regist\(2));

-- Location: LCCOMB_X26_Y36_N22
\inst15|$00000|auto_generated|result_node[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst15|$00000|auto_generated|result_node[1]~6_combout\ = (\MUX_A~input_o\ & ((\dataA[1]~input_o\))) # (!\MUX_A~input_o\ & (\inst12|result[1]~221_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MUX_A~input_o\,
	datac => \inst12|result[1]~221_combout\,
	datad => \dataA[1]~input_o\,
	combout => \inst15|$00000|auto_generated|result_node[1]~6_combout\);

-- Location: LCCOMB_X26_Y36_N16
\inst6|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Mux6~0_combout\ = (\inst2|Regist[4]~2_combout\ & (((\inst2|Regist[4]~1_combout\)))) # (!\inst2|Regist[4]~2_combout\ & ((\inst2|Regist[4]~1_combout\ & (\inst6|Regist\(0))) # (!\inst2|Regist[4]~1_combout\ & ((\inst6|Add0~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Regist\(0),
	datab => \inst2|Regist[4]~2_combout\,
	datac => \inst2|Regist[4]~1_combout\,
	datad => \inst6|Add0~20_combout\,
	combout => \inst6|Mux6~0_combout\);

-- Location: LCCOMB_X26_Y36_N14
\inst6|Mux6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Mux6~1_combout\ = (\inst2|Regist[4]~2_combout\ & ((\inst6|Mux6~0_combout\ & (!\inst6|Regist\(1))) # (!\inst6|Mux6~0_combout\ & ((\inst15|$00000|auto_generated|result_node[1]~6_combout\))))) # (!\inst2|Regist[4]~2_combout\ & 
-- (((\inst6|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Regist\(1),
	datab => \inst2|Regist[4]~2_combout\,
	datac => \inst15|$00000|auto_generated|result_node[1]~6_combout\,
	datad => \inst6|Mux6~0_combout\,
	combout => \inst6|Mux6~1_combout\);

-- Location: LCCOMB_X26_Y36_N10
\inst6|Mux6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Mux6~2_combout\ = (\inst6|Regist\(2) & ((\inst2|Regist[4]~0_combout\) # ((\inst6|Mux6~1_combout\ & !\inst8|Mux6~2_combout\)))) # (!\inst6|Regist\(2) & (((\inst6|Mux6~1_combout\ & !\inst8|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Regist\(2),
	datab => \inst2|Regist[4]~0_combout\,
	datac => \inst6|Mux6~1_combout\,
	datad => \inst8|Mux6~2_combout\,
	combout => \inst6|Mux6~2_combout\);

-- Location: FF_X26_Y36_N11
\inst6|Regist[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst6|Mux6~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst6|Regist[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|Regist\(1));

-- Location: LCCOMB_X27_Y36_N18
\inst15|$00000|auto_generated|result_node[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst15|$00000|auto_generated|result_node[0]~7_combout\ = (\MUX_A~input_o\ & (\dataA[0]~input_o\)) # (!\MUX_A~input_o\ & ((\inst12|result[0]~231_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataA[0]~input_o\,
	datac => \MUX_A~input_o\,
	datad => \inst12|result[0]~231_combout\,
	combout => \inst15|$00000|auto_generated|result_node[0]~7_combout\);

-- Location: LCCOMB_X27_Y36_N28
\inst6|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Mux7~0_combout\ = (\inst6|Regist[0]~2_combout\ & (((\inst6|Regist[0]~1_combout\) # (\inst6|Regist\(7))))) # (!\inst6|Regist[0]~2_combout\ & (\inst15|$00000|auto_generated|result_node[0]~7_combout\ & (!\inst6|Regist[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Regist[0]~2_combout\,
	datab => \inst15|$00000|auto_generated|result_node[0]~7_combout\,
	datac => \inst6|Regist[0]~1_combout\,
	datad => \inst6|Regist\(7),
	combout => \inst6|Mux7~0_combout\);

-- Location: LCCOMB_X27_Y36_N30
\inst6|Mux7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Mux7~1_combout\ = (\inst6|Regist[0]~1_combout\ & ((\inst6|Mux7~0_combout\ & (\inst6|Regist\(1))) # (!\inst6|Mux7~0_combout\ & ((!\inst6|Regist\(0)))))) # (!\inst6|Regist[0]~1_combout\ & (((\inst6|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Regist\(1),
	datab => \inst6|Regist[0]~1_combout\,
	datac => \inst6|Regist\(0),
	datad => \inst6|Mux7~0_combout\,
	combout => \inst6|Mux7~1_combout\);

-- Location: LCCOMB_X27_Y35_N0
\inst6|Mux7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Mux7~2_combout\ = (\inst6|Regist[0]~0_combout\ & ((\inst6|Add0~18_combout\) # ((!\inst8|Mux7~2_combout\ & \inst6|Mux7~1_combout\)))) # (!\inst6|Regist[0]~0_combout\ & (!\inst8|Mux7~2_combout\ & (\inst6|Mux7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Regist[0]~0_combout\,
	datab => \inst8|Mux7~2_combout\,
	datac => \inst6|Mux7~1_combout\,
	datad => \inst6|Add0~18_combout\,
	combout => \inst6|Mux7~2_combout\);

-- Location: FF_X27_Y35_N1
\inst6|Regist[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst6|Mux7~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst6|Regist[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|Regist\(0));

-- Location: IOIBUF_X0_Y35_N22
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

-- Location: LCCOMB_X25_Y36_N18
\inst15|$00000|auto_generated|result_node[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst15|$00000|auto_generated|result_node[7]~0_combout\ = (\MUX_A~input_o\ & (\dataA[7]~input_o\)) # (!\MUX_A~input_o\ & ((\inst12|result[7]~161_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MUX_A~input_o\,
	datac => \dataA[7]~input_o\,
	datad => \inst12|result[7]~161_combout\,
	combout => \inst15|$00000|auto_generated|result_node[7]~0_combout\);

-- Location: LCCOMB_X25_Y36_N24
\inst6|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Mux0~1_combout\ = (\inst3|Regist[7]~0_combout\ & (\inst6|Regist[0]~2_combout\)) # (!\inst3|Regist[7]~0_combout\ & ((\inst6|Regist[0]~2_combout\ & (\inst6|Regist\(0))) # (!\inst6|Regist[0]~2_combout\ & 
-- ((\inst15|$00000|auto_generated|result_node[7]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Regist[7]~0_combout\,
	datab => \inst6|Regist[0]~2_combout\,
	datac => \inst6|Regist\(0),
	datad => \inst15|$00000|auto_generated|result_node[7]~0_combout\,
	combout => \inst6|Mux0~1_combout\);

-- Location: LCCOMB_X25_Y36_N10
\inst6|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Mux0~2_combout\ = (\inst3|Regist[7]~0_combout\ & ((\inst6|Mux0~1_combout\ & (\inst6|Regist\(6))) # (!\inst6|Mux0~1_combout\ & ((!\inst6|Regist\(7)))))) # (!\inst3|Regist[7]~0_combout\ & (((\inst6|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Regist[7]~0_combout\,
	datab => \inst6|Regist\(6),
	datac => \inst6|Regist\(7),
	datad => \inst6|Mux0~1_combout\,
	combout => \inst6|Mux0~2_combout\);

-- Location: LCCOMB_X29_Y35_N0
\inst6|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Add0~0_combout\ = \inst6|Regist\(7) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Regist\(7),
	datac => \SelBus[1]~input_o\,
	datad => \SelBus[3]~input_o\,
	combout => \inst6|Add0~0_combout\);

-- Location: LCCOMB_X25_Y36_N16
\inst6|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Add0~1_combout\ = (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst15|$00000|auto_generated|result_node[7]~0_combout\)))) # (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[0]~input_o\,
	datab => \SelBus[1]~input_o\,
	datac => \SelBus[3]~input_o\,
	datad => \inst15|$00000|auto_generated|result_node[7]~0_combout\,
	combout => \inst6|Add0~1_combout\);

-- Location: IOIBUF_X29_Y39_N1
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

-- Location: LCCOMB_X29_Y38_N20
\inst15|$00000|auto_generated|result_node[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst15|$00000|auto_generated|result_node[6]~1_combout\ = (\MUX_A~input_o\ & (\dataA[6]~input_o\)) # (!\MUX_A~input_o\ & ((\inst12|result[6]~171_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataA[6]~input_o\,
	datab => \MUX_A~input_o\,
	datad => \inst12|result[6]~171_combout\,
	combout => \inst15|$00000|auto_generated|result_node[6]~1_combout\);

-- Location: LCCOMB_X29_Y38_N26
\inst6|Add0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Add0~3_combout\ = (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst15|$00000|auto_generated|result_node[6]~1_combout\)))) # (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[3]~input_o\,
	datab => \SelBus[0]~input_o\,
	datac => \SelBus[1]~input_o\,
	datad => \inst15|$00000|auto_generated|result_node[6]~1_combout\,
	combout => \inst6|Add0~3_combout\);

-- Location: LCCOMB_X29_Y34_N10
\inst6|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Add0~2_combout\ = \inst6|Regist\(6) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Regist\(6),
	datac => \SelBus[1]~input_o\,
	datad => \SelBus[3]~input_o\,
	combout => \inst6|Add0~2_combout\);

-- Location: LCCOMB_X30_Y34_N28
\inst6|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Add0~4_combout\ = \inst6|Regist\(5) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Regist\(5),
	datac => \SelBus[1]~input_o\,
	datad => \SelBus[3]~input_o\,
	combout => \inst6|Add0~4_combout\);

-- Location: IOIBUF_X29_Y39_N15
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

-- Location: LCCOMB_X29_Y38_N28
\inst15|$00000|auto_generated|result_node[5]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst15|$00000|auto_generated|result_node[5]~2_combout\ = (\MUX_A~input_o\ & (\dataA[5]~input_o\)) # (!\MUX_A~input_o\ & ((\inst12|result[5]~181_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MUX_A~input_o\,
	datac => \dataA[5]~input_o\,
	datad => \inst12|result[5]~181_combout\,
	combout => \inst15|$00000|auto_generated|result_node[5]~2_combout\);

-- Location: LCCOMB_X29_Y38_N18
\inst6|Add0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Add0~5_combout\ = (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst15|$00000|auto_generated|result_node[5]~2_combout\)))) # (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[3]~input_o\,
	datab => \SelBus[0]~input_o\,
	datac => \SelBus[1]~input_o\,
	datad => \inst15|$00000|auto_generated|result_node[5]~2_combout\,
	combout => \inst6|Add0~5_combout\);

-- Location: LCCOMB_X25_Y36_N26
\inst6|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Add0~6_combout\ = \inst6|Regist\(4) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SelBus[1]~input_o\,
	datac => \SelBus[3]~input_o\,
	datad => \inst6|Regist\(4),
	combout => \inst6|Add0~6_combout\);

-- Location: IOIBUF_X78_Y36_N15
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

-- Location: LCCOMB_X30_Y36_N6
\inst15|$00000|auto_generated|result_node[4]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst15|$00000|auto_generated|result_node[4]~3_combout\ = (\MUX_A~input_o\ & ((\dataA[4]~input_o\))) # (!\MUX_A~input_o\ & (\inst12|result[4]~191_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|result[4]~191_combout\,
	datab => \dataA[4]~input_o\,
	datad => \MUX_A~input_o\,
	combout => \inst15|$00000|auto_generated|result_node[4]~3_combout\);

-- Location: LCCOMB_X30_Y36_N8
\inst6|Add0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Add0~7_combout\ = (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst15|$00000|auto_generated|result_node[4]~3_combout\)))) # (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[0]~input_o\,
	datab => \SelBus[1]~input_o\,
	datac => \SelBus[3]~input_o\,
	datad => \inst15|$00000|auto_generated|result_node[4]~3_combout\,
	combout => \inst6|Add0~7_combout\);

-- Location: IOIBUF_X0_Y36_N22
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

-- Location: LCCOMB_X30_Y36_N18
\inst15|$00000|auto_generated|result_node[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst15|$00000|auto_generated|result_node[3]~4_combout\ = (\MUX_A~input_o\ & (\dataA[3]~input_o\)) # (!\MUX_A~input_o\ & ((\inst12|result[3]~201_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A~input_o\,
	datac => \dataA[3]~input_o\,
	datad => \inst12|result[3]~201_combout\,
	combout => \inst15|$00000|auto_generated|result_node[3]~4_combout\);

-- Location: LCCOMB_X30_Y36_N4
\inst6|Add0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Add0~9_combout\ = (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst15|$00000|auto_generated|result_node[3]~4_combout\)))) # (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[0]~input_o\,
	datab => \SelBus[1]~input_o\,
	datac => \SelBus[3]~input_o\,
	datad => \inst15|$00000|auto_generated|result_node[3]~4_combout\,
	combout => \inst6|Add0~9_combout\);

-- Location: LCCOMB_X27_Y36_N26
\inst6|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Add0~8_combout\ = \inst6|Regist\(3) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[1]~input_o\,
	datac => \SelBus[3]~input_o\,
	datad => \inst6|Regist\(3),
	combout => \inst6|Add0~8_combout\);

-- Location: LCCOMB_X29_Y36_N12
\inst6|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Add0~24_combout\ = (\inst6|Add0~9_combout\ & ((\inst6|Add0~8_combout\ & (!\inst6|Add0~23\)) # (!\inst6|Add0~8_combout\ & (\inst6|Add0~23\ & VCC)))) # (!\inst6|Add0~9_combout\ & ((\inst6|Add0~8_combout\ & ((\inst6|Add0~23\) # (GND))) # 
-- (!\inst6|Add0~8_combout\ & (!\inst6|Add0~23\))))
-- \inst6|Add0~25\ = CARRY((\inst6|Add0~9_combout\ & (\inst6|Add0~8_combout\ & !\inst6|Add0~23\)) # (!\inst6|Add0~9_combout\ & ((\inst6|Add0~8_combout\) # (!\inst6|Add0~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add0~9_combout\,
	datab => \inst6|Add0~8_combout\,
	datad => VCC,
	cin => \inst6|Add0~23\,
	combout => \inst6|Add0~24_combout\,
	cout => \inst6|Add0~25\);

-- Location: LCCOMB_X29_Y36_N14
\inst6|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Add0~26_combout\ = ((\inst6|Add0~6_combout\ $ (\inst6|Add0~7_combout\ $ (\inst6|Add0~25\)))) # (GND)
-- \inst6|Add0~27\ = CARRY((\inst6|Add0~6_combout\ & (\inst6|Add0~7_combout\ & !\inst6|Add0~25\)) # (!\inst6|Add0~6_combout\ & ((\inst6|Add0~7_combout\) # (!\inst6|Add0~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add0~6_combout\,
	datab => \inst6|Add0~7_combout\,
	datad => VCC,
	cin => \inst6|Add0~25\,
	combout => \inst6|Add0~26_combout\,
	cout => \inst6|Add0~27\);

-- Location: LCCOMB_X29_Y36_N16
\inst6|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Add0~28_combout\ = (\inst6|Add0~4_combout\ & ((\inst6|Add0~5_combout\ & (!\inst6|Add0~27\)) # (!\inst6|Add0~5_combout\ & ((\inst6|Add0~27\) # (GND))))) # (!\inst6|Add0~4_combout\ & ((\inst6|Add0~5_combout\ & (\inst6|Add0~27\ & VCC)) # 
-- (!\inst6|Add0~5_combout\ & (!\inst6|Add0~27\))))
-- \inst6|Add0~29\ = CARRY((\inst6|Add0~4_combout\ & ((!\inst6|Add0~27\) # (!\inst6|Add0~5_combout\))) # (!\inst6|Add0~4_combout\ & (!\inst6|Add0~5_combout\ & !\inst6|Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add0~4_combout\,
	datab => \inst6|Add0~5_combout\,
	datad => VCC,
	cin => \inst6|Add0~27\,
	combout => \inst6|Add0~28_combout\,
	cout => \inst6|Add0~29\);

-- Location: LCCOMB_X29_Y36_N18
\inst6|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Add0~30_combout\ = ((\inst6|Add0~3_combout\ $ (\inst6|Add0~2_combout\ $ (\inst6|Add0~29\)))) # (GND)
-- \inst6|Add0~31\ = CARRY((\inst6|Add0~3_combout\ & ((!\inst6|Add0~29\) # (!\inst6|Add0~2_combout\))) # (!\inst6|Add0~3_combout\ & (!\inst6|Add0~2_combout\ & !\inst6|Add0~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add0~3_combout\,
	datab => \inst6|Add0~2_combout\,
	datad => VCC,
	cin => \inst6|Add0~29\,
	combout => \inst6|Add0~30_combout\,
	cout => \inst6|Add0~31\);

-- Location: LCCOMB_X29_Y36_N20
\inst6|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Add0~32_combout\ = \inst6|Add0~0_combout\ $ (\inst6|Add0~31\ $ (!\inst6|Add0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add0~0_combout\,
	datad => \inst6|Add0~1_combout\,
	cin => \inst6|Add0~31\,
	combout => \inst6|Add0~32_combout\);

-- Location: LCCOMB_X29_Y36_N4
\inst6|Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Mux0~3_combout\ = (\inst6|Mux0~0_combout\ & (((\inst6|Regist[0]~0_combout\ & \inst6|Add0~32_combout\)))) # (!\inst6|Mux0~0_combout\ & ((\inst6|Mux0~2_combout\) # ((\inst6|Regist[0]~0_combout\ & \inst6|Add0~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mux0~0_combout\,
	datab => \inst6|Mux0~2_combout\,
	datac => \inst6|Regist[0]~0_combout\,
	datad => \inst6|Add0~32_combout\,
	combout => \inst6|Mux0~3_combout\);

-- Location: FF_X29_Y36_N5
\inst6|Regist[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst6|Mux0~3_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst6|Regist[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|Regist\(7));

-- Location: LCCOMB_X29_Y34_N12
\inst6|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Mux1~0_combout\ = (\inst2|Regist[4]~2_combout\ & (!\inst6|Regist\(6) & ((\inst2|Regist[4]~1_combout\)))) # (!\inst2|Regist[4]~2_combout\ & (((\inst6|Regist\(5)) # (!\inst2|Regist[4]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~2_combout\,
	datab => \inst6|Regist\(6),
	datac => \inst6|Regist\(5),
	datad => \inst2|Regist[4]~1_combout\,
	combout => \inst6|Mux1~0_combout\);

-- Location: LCCOMB_X29_Y34_N6
\inst6|Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Mux1~1_combout\ = (\inst6|Mux1~0_combout\ & ((\inst2|Regist[4]~1_combout\) # ((\inst6|Add0~30_combout\)))) # (!\inst6|Mux1~0_combout\ & (!\inst2|Regist[4]~1_combout\ & (\inst15|$00000|auto_generated|result_node[6]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mux1~0_combout\,
	datab => \inst2|Regist[4]~1_combout\,
	datac => \inst15|$00000|auto_generated|result_node[6]~1_combout\,
	datad => \inst6|Add0~30_combout\,
	combout => \inst6|Mux1~1_combout\);

-- Location: LCCOMB_X29_Y34_N28
\inst6|Mux1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Mux1~2_combout\ = (\inst6|Regist\(7) & ((\inst2|Regist[4]~0_combout\) # ((!\inst8|Mux6~2_combout\ & \inst6|Mux1~1_combout\)))) # (!\inst6|Regist\(7) & (((!\inst8|Mux6~2_combout\ & \inst6|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Regist\(7),
	datab => \inst2|Regist[4]~0_combout\,
	datac => \inst8|Mux6~2_combout\,
	datad => \inst6|Mux1~1_combout\,
	combout => \inst6|Mux1~2_combout\);

-- Location: FF_X29_Y34_N29
\inst6|Regist[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst6|Mux1~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst6|Regist[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|Regist\(6));

-- Location: LCCOMB_X29_Y34_N4
\inst6|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Mux2~0_combout\ = (\inst2|Regist[4]~2_combout\ & (((!\inst6|Regist\(5) & \inst2|Regist[4]~1_combout\)))) # (!\inst2|Regist[4]~2_combout\ & ((\inst6|Regist\(4)) # ((!\inst2|Regist[4]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Regist\(4),
	datab => \inst6|Regist\(5),
	datac => \inst2|Regist[4]~2_combout\,
	datad => \inst2|Regist[4]~1_combout\,
	combout => \inst6|Mux2~0_combout\);

-- Location: LCCOMB_X29_Y34_N2
\inst6|Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Mux2~1_combout\ = (\inst2|Regist[4]~1_combout\ & (\inst6|Mux2~0_combout\)) # (!\inst2|Regist[4]~1_combout\ & ((\inst6|Mux2~0_combout\ & (\inst6|Add0~28_combout\)) # (!\inst6|Mux2~0_combout\ & 
-- ((\inst15|$00000|auto_generated|result_node[5]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~1_combout\,
	datab => \inst6|Mux2~0_combout\,
	datac => \inst6|Add0~28_combout\,
	datad => \inst15|$00000|auto_generated|result_node[5]~2_combout\,
	combout => \inst6|Mux2~1_combout\);

-- Location: LCCOMB_X29_Y34_N14
\inst6|Mux2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Mux2~2_combout\ = (\inst2|Regist[4]~0_combout\ & ((\inst6|Regist\(6)) # ((!\inst8|Mux6~2_combout\ & \inst6|Mux2~1_combout\)))) # (!\inst2|Regist[4]~0_combout\ & (((!\inst8|Mux6~2_combout\ & \inst6|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~0_combout\,
	datab => \inst6|Regist\(6),
	datac => \inst8|Mux6~2_combout\,
	datad => \inst6|Mux2~1_combout\,
	combout => \inst6|Mux2~2_combout\);

-- Location: FF_X29_Y34_N15
\inst6|Regist[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst6|Mux2~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst6|Regist[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|Regist\(5));

-- Location: LCCOMB_X29_Y36_N0
\inst6|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Mux3~0_combout\ = (\inst2|Regist[4]~1_combout\ & (((\inst2|Regist[4]~2_combout\)))) # (!\inst2|Regist[4]~1_combout\ & ((\inst2|Regist[4]~2_combout\ & (\inst15|$00000|auto_generated|result_node[4]~3_combout\)) # (!\inst2|Regist[4]~2_combout\ & 
-- ((\inst6|Add0~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|$00000|auto_generated|result_node[4]~3_combout\,
	datab => \inst2|Regist[4]~1_combout\,
	datac => \inst6|Add0~26_combout\,
	datad => \inst2|Regist[4]~2_combout\,
	combout => \inst6|Mux3~0_combout\);

-- Location: LCCOMB_X29_Y36_N22
\inst6|Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Mux3~1_combout\ = (\inst2|Regist[4]~1_combout\ & ((\inst6|Mux3~0_combout\ & (!\inst6|Regist\(4))) # (!\inst6|Mux3~0_combout\ & ((\inst6|Regist\(3)))))) # (!\inst2|Regist[4]~1_combout\ & (((\inst6|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Regist\(4),
	datab => \inst2|Regist[4]~1_combout\,
	datac => \inst6|Regist\(3),
	datad => \inst6|Mux3~0_combout\,
	combout => \inst6|Mux3~1_combout\);

-- Location: LCCOMB_X29_Y34_N26
\inst6|Mux3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Mux3~2_combout\ = (\inst2|Regist[4]~0_combout\ & ((\inst6|Regist\(5)) # ((!\inst8|Mux6~2_combout\ & \inst6|Mux3~1_combout\)))) # (!\inst2|Regist[4]~0_combout\ & (((!\inst8|Mux6~2_combout\ & \inst6|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~0_combout\,
	datab => \inst6|Regist\(5),
	datac => \inst8|Mux6~2_combout\,
	datad => \inst6|Mux3~1_combout\,
	combout => \inst6|Mux3~2_combout\);

-- Location: FF_X29_Y34_N27
\inst6|Regist[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst6|Mux3~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst6|Regist[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|Regist\(4));

-- Location: LCCOMB_X29_Y36_N28
\inst6|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Mux4~0_combout\ = (\inst2|Regist[4]~2_combout\ & (\inst2|Regist[4]~1_combout\)) # (!\inst2|Regist[4]~2_combout\ & ((\inst2|Regist[4]~1_combout\ & (\inst6|Regist\(2))) # (!\inst2|Regist[4]~1_combout\ & ((\inst6|Add0~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~2_combout\,
	datab => \inst2|Regist[4]~1_combout\,
	datac => \inst6|Regist\(2),
	datad => \inst6|Add0~24_combout\,
	combout => \inst6|Mux4~0_combout\);

-- Location: LCCOMB_X29_Y36_N2
\inst6|Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Mux4~1_combout\ = (\inst2|Regist[4]~2_combout\ & ((\inst6|Mux4~0_combout\ & ((!\inst6|Regist\(3)))) # (!\inst6|Mux4~0_combout\ & (\inst15|$00000|auto_generated|result_node[3]~4_combout\)))) # (!\inst2|Regist[4]~2_combout\ & 
-- (((\inst6|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~2_combout\,
	datab => \inst15|$00000|auto_generated|result_node[3]~4_combout\,
	datac => \inst6|Regist\(3),
	datad => \inst6|Mux4~0_combout\,
	combout => \inst6|Mux4~1_combout\);

-- Location: LCCOMB_X29_Y36_N30
\inst6|Mux4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Mux4~2_combout\ = (\inst6|Regist\(4) & ((\inst2|Regist[4]~0_combout\) # ((!\inst8|Mux6~2_combout\ & \inst6|Mux4~1_combout\)))) # (!\inst6|Regist\(4) & (!\inst8|Mux6~2_combout\ & ((\inst6|Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Regist\(4),
	datab => \inst8|Mux6~2_combout\,
	datac => \inst2|Regist[4]~0_combout\,
	datad => \inst6|Mux4~1_combout\,
	combout => \inst6|Mux4~2_combout\);

-- Location: FF_X29_Y36_N31
\inst6|Regist[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst6|Mux4~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst6|Regist[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|Regist\(3));

-- Location: LCCOMB_X26_Y35_N10
\inst12|result[3]~236\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|result[3]~236_combout\ = (\inst12|_~20_combout\ & (!\muxSel[2]~input_o\ & (\inst6|Regist\(3) & !\muxSel[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|_~20_combout\,
	datab => \muxSel[2]~input_o\,
	datac => \inst6|Regist\(3),
	datad => \muxSel[1]~input_o\,
	combout => \inst12|result[3]~236_combout\);

-- Location: LCCOMB_X27_Y37_N22
\inst12|result[3]~194\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|result[3]~194_combout\ = (\inst12|_~29_combout\ & ((\inst12|result[3]~201_combout\) # ((\inst12|_~28_combout\ & \inst18|Regist\(3))))) # (!\inst12|_~29_combout\ & (\inst12|_~28_combout\ & (\inst18|Regist\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|_~29_combout\,
	datab => \inst12|_~28_combout\,
	datac => \inst18|Regist\(3),
	datad => \inst12|result[3]~201_combout\,
	combout => \inst12|result[3]~194_combout\);

-- Location: LCCOMB_X26_Y35_N4
\inst12|result[3]~192\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|result[3]~192_combout\ = (\inst12|_~21_combout\ & ((\inst9|Regist\(3)) # ((\inst12|_~22_combout\ & \inst17|Regist\(3))))) # (!\inst12|_~21_combout\ & (\inst12|_~22_combout\ & (\inst17|Regist\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|_~21_combout\,
	datab => \inst12|_~22_combout\,
	datac => \inst17|Regist\(3),
	datad => \inst9|Regist\(3),
	combout => \inst12|result[3]~192_combout\);

-- Location: LCCOMB_X26_Y35_N28
\inst12|result[3]~193\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|result[3]~193_combout\ = (\inst12|_~25_combout\ & ((\inst1|Regist\(3)) # ((\inst12|_~24_combout\ & \inst10|Regist\(3))))) # (!\inst12|_~25_combout\ & (\inst12|_~24_combout\ & (\inst10|Regist\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|_~25_combout\,
	datab => \inst12|_~24_combout\,
	datac => \inst10|Regist\(3),
	datad => \inst1|Regist\(3),
	combout => \inst12|result[3]~193_combout\);

-- Location: LCCOMB_X26_Y35_N22
\inst12|result[3]~195\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|result[3]~195_combout\ = (\inst12|result[3]~236_combout\) # ((\inst12|result[3]~194_combout\) # ((\inst12|result[3]~192_combout\) # (\inst12|result[3]~193_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|result[3]~236_combout\,
	datab => \inst12|result[3]~194_combout\,
	datac => \inst12|result[3]~192_combout\,
	datad => \inst12|result[3]~193_combout\,
	combout => \inst12|result[3]~195_combout\);

-- Location: LCCOMB_X32_Y37_N30
\inst12|result[3]~196\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|result[3]~196_combout\ = (\inst12|_~35_combout\ & ((\inst11|Regist\(3)) # ((\inst12|_~34_combout\ & \inst5|Regist\(3))))) # (!\inst12|_~35_combout\ & (\inst12|_~34_combout\ & ((\inst5|Regist\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|_~35_combout\,
	datab => \inst12|_~34_combout\,
	datac => \inst11|Regist\(3),
	datad => \inst5|Regist\(3),
	combout => \inst12|result[3]~196_combout\);

-- Location: LCCOMB_X31_Y36_N26
\inst12|result[3]~197\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|result[3]~197_combout\ = (\inst12|_~36_combout\ & ((\inst14|Regist\(3)) # ((\inst12|_~37_combout\ & \inst7|Regist\(3))))) # (!\inst12|_~36_combout\ & (\inst12|_~37_combout\ & (\inst7|Regist\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|_~36_combout\,
	datab => \inst12|_~37_combout\,
	datac => \inst7|Regist\(3),
	datad => \inst14|Regist\(3),
	combout => \inst12|result[3]~197_combout\);

-- Location: LCCOMB_X31_Y36_N30
\inst12|result[3]~199\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|result[3]~199_combout\ = (\inst12|_~38_combout\ & ((\inst2|Regist\(3)) # ((\inst12|_~32_combout\ & \inst20|Regist\(3))))) # (!\inst12|_~38_combout\ & (\inst12|_~32_combout\ & ((\inst20|Regist\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|_~38_combout\,
	datab => \inst12|_~32_combout\,
	datac => \inst2|Regist\(3),
	datad => \inst20|Regist\(3),
	combout => \inst12|result[3]~199_combout\);

-- Location: LCCOMB_X31_Y36_N24
\inst12|result[3]~198\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|result[3]~198_combout\ = (\inst12|_~31_combout\ & ((\muxSel[2]~input_o\ & (\inst|altsyncram_component|auto_generated|q_a\(3))) # (!\muxSel[2]~input_o\ & ((\inst19|Regist\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \muxSel[2]~input_o\,
	datab => \inst12|_~31_combout\,
	datac => \inst|altsyncram_component|auto_generated|q_a\(3),
	datad => \inst19|Regist\(3),
	combout => \inst12|result[3]~198_combout\);

-- Location: LCCOMB_X31_Y36_N20
\inst12|result[3]~200\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|result[3]~200_combout\ = (\inst12|result[3]~199_combout\) # ((\inst12|result[3]~198_combout\) # ((\inst12|_~33_combout\ & \inst8|Regist\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|_~33_combout\,
	datab => \inst8|Regist\(3),
	datac => \inst12|result[3]~199_combout\,
	datad => \inst12|result[3]~198_combout\,
	combout => \inst12|result[3]~200_combout\);

-- Location: LCCOMB_X31_Y36_N6
\inst12|result[3]~201\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|result[3]~201_combout\ = (\inst12|result[3]~195_combout\) # ((\inst12|result[3]~196_combout\) # ((\inst12|result[3]~197_combout\) # (\inst12|result[3]~200_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|result[3]~195_combout\,
	datab => \inst12|result[3]~196_combout\,
	datac => \inst12|result[3]~197_combout\,
	datad => \inst12|result[3]~200_combout\,
	combout => \inst12|result[3]~201_combout\);

-- Location: LCCOMB_X30_Y38_N24
\inst200|$00000|auto_generated|result_node[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst200|$00000|auto_generated|result_node[3]~4_combout\ = (\MUX_B~input_o\ & (\dataB[3]~input_o\)) # (!\MUX_B~input_o\ & ((\inst12|result[3]~201_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B~input_o\,
	datac => \dataB[3]~input_o\,
	datad => \inst12|result[3]~201_combout\,
	combout => \inst200|$00000|auto_generated|result_node[3]~4_combout\);

-- Location: LCCOMB_X32_Y38_N30
\inst5|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~8_combout\ = \inst5|Regist\(3) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[3]~input_o\,
	datac => \inst5|Regist\(3),
	datad => \SelBus[1]~input_o\,
	combout => \inst5|Add0~8_combout\);

-- Location: LCCOMB_X30_Y38_N6
\inst5|Add0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~9_combout\ = (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst200|$00000|auto_generated|result_node[3]~4_combout\)))) # (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[3]~input_o\,
	datab => \SelBus[0]~input_o\,
	datac => \SelBus[1]~input_o\,
	datad => \inst200|$00000|auto_generated|result_node[3]~4_combout\,
	combout => \inst5|Add0~9_combout\);

-- Location: LCCOMB_X30_Y38_N8
\inst5|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~10_combout\ = \inst5|Regist\(2) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[3]~input_o\,
	datac => \SelBus[1]~input_o\,
	datad => \inst5|Regist\(2),
	combout => \inst5|Add0~10_combout\);

-- Location: IOIBUF_X46_Y54_N22
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

-- Location: LCCOMB_X32_Y38_N0
\inst200|$00000|auto_generated|result_node[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst200|$00000|auto_generated|result_node[2]~5_combout\ = (\MUX_B~input_o\ & (\dataB[2]~input_o\)) # (!\MUX_B~input_o\ & ((\inst12|result[2]~211_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B~input_o\,
	datac => \dataB[2]~input_o\,
	datad => \inst12|result[2]~211_combout\,
	combout => \inst200|$00000|auto_generated|result_node[2]~5_combout\);

-- Location: LCCOMB_X32_Y38_N22
\inst5|Add0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~11_combout\ = (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst200|$00000|auto_generated|result_node[2]~5_combout\)))) # (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[0]~input_o\,
	datab => \SelBus[1]~input_o\,
	datac => \SelBus[3]~input_o\,
	datad => \inst200|$00000|auto_generated|result_node[2]~5_combout\,
	combout => \inst5|Add0~11_combout\);

-- Location: IOIBUF_X34_Y39_N22
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

-- Location: LCCOMB_X31_Y38_N16
\inst5|Add0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~13_combout\ = (\MUX_B~input_o\ & (\dataB[1]~input_o\)) # (!\MUX_B~input_o\ & ((\inst12|result[1]~221_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B~input_o\,
	datab => \dataB[1]~input_o\,
	datad => \inst12|result[1]~221_combout\,
	combout => \inst5|Add0~13_combout\);

-- Location: LCCOMB_X31_Y38_N22
\inst5|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~14_combout\ = (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst5|Add0~13_combout\)))) # (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[1]~input_o\,
	datab => \SelBus[0]~input_o\,
	datac => \SelBus[3]~input_o\,
	datad => \inst5|Add0~13_combout\,
	combout => \inst5|Add0~14_combout\);

-- Location: LCCOMB_X30_Y38_N22
\inst5|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~12_combout\ = \inst5|Regist\(1) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[3]~input_o\,
	datac => \SelBus[1]~input_o\,
	datad => \inst5|Regist\(1),
	combout => \inst5|Add0~12_combout\);

-- Location: LCCOMB_X32_Y38_N4
\inst5|Add0~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~17_combout\ = \inst5|Regist\(0) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SelBus[1]~input_o\,
	datac => \SelBus[3]~input_o\,
	datad => \inst5|Regist\(0),
	combout => \inst5|Add0~17_combout\);

-- Location: IOIBUF_X31_Y39_N8
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

-- Location: LCCOMB_X32_Y37_N8
\inst5|Add0~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~15_combout\ = ((\MUX_B~input_o\ & \dataB[0]~input_o\)) # (!\SelBus[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B~input_o\,
	datab => \dataB[0]~input_o\,
	datad => \SelBus[3]~input_o\,
	combout => \inst5|Add0~15_combout\);

-- Location: LCCOMB_X31_Y37_N0
\inst5|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~16_combout\ = (\SelBus[1]~input_o\) # ((\inst5|Add0~15_combout\) # ((!\MUX_B~input_o\ & \inst12|result[0]~231_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B~input_o\,
	datab => \SelBus[1]~input_o\,
	datac => \inst5|Add0~15_combout\,
	datad => \inst12|result[0]~231_combout\,
	combout => \inst5|Add0~16_combout\);

-- Location: LCCOMB_X31_Y38_N0
\inst5|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~18_combout\ = (\inst5|Add0~17_combout\ & (\inst5|Add0~16_combout\ & VCC)) # (!\inst5|Add0~17_combout\ & (\inst5|Add0~16_combout\ $ (VCC)))
-- \inst5|Add0~19\ = CARRY((!\inst5|Add0~17_combout\ & \inst5|Add0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add0~17_combout\,
	datab => \inst5|Add0~16_combout\,
	datad => VCC,
	combout => \inst5|Add0~18_combout\,
	cout => \inst5|Add0~19\);

-- Location: LCCOMB_X31_Y38_N2
\inst5|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~20_combout\ = (\inst5|Add0~14_combout\ & ((\inst5|Add0~12_combout\ & (!\inst5|Add0~19\)) # (!\inst5|Add0~12_combout\ & (\inst5|Add0~19\ & VCC)))) # (!\inst5|Add0~14_combout\ & ((\inst5|Add0~12_combout\ & ((\inst5|Add0~19\) # (GND))) # 
-- (!\inst5|Add0~12_combout\ & (!\inst5|Add0~19\))))
-- \inst5|Add0~21\ = CARRY((\inst5|Add0~14_combout\ & (\inst5|Add0~12_combout\ & !\inst5|Add0~19\)) # (!\inst5|Add0~14_combout\ & ((\inst5|Add0~12_combout\) # (!\inst5|Add0~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add0~14_combout\,
	datab => \inst5|Add0~12_combout\,
	datad => VCC,
	cin => \inst5|Add0~19\,
	combout => \inst5|Add0~20_combout\,
	cout => \inst5|Add0~21\);

-- Location: LCCOMB_X31_Y38_N4
\inst5|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~22_combout\ = ((\inst5|Add0~10_combout\ $ (\inst5|Add0~11_combout\ $ (\inst5|Add0~21\)))) # (GND)
-- \inst5|Add0~23\ = CARRY((\inst5|Add0~10_combout\ & (\inst5|Add0~11_combout\ & !\inst5|Add0~21\)) # (!\inst5|Add0~10_combout\ & ((\inst5|Add0~11_combout\) # (!\inst5|Add0~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add0~10_combout\,
	datab => \inst5|Add0~11_combout\,
	datad => VCC,
	cin => \inst5|Add0~21\,
	combout => \inst5|Add0~22_combout\,
	cout => \inst5|Add0~23\);

-- Location: LCCOMB_X31_Y38_N6
\inst5|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~24_combout\ = (\inst5|Add0~8_combout\ & ((\inst5|Add0~9_combout\ & (!\inst5|Add0~23\)) # (!\inst5|Add0~9_combout\ & ((\inst5|Add0~23\) # (GND))))) # (!\inst5|Add0~8_combout\ & ((\inst5|Add0~9_combout\ & (\inst5|Add0~23\ & VCC)) # 
-- (!\inst5|Add0~9_combout\ & (!\inst5|Add0~23\))))
-- \inst5|Add0~25\ = CARRY((\inst5|Add0~8_combout\ & ((!\inst5|Add0~23\) # (!\inst5|Add0~9_combout\))) # (!\inst5|Add0~8_combout\ & (!\inst5|Add0~9_combout\ & !\inst5|Add0~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add0~8_combout\,
	datab => \inst5|Add0~9_combout\,
	datad => VCC,
	cin => \inst5|Add0~23\,
	combout => \inst5|Add0~24_combout\,
	cout => \inst5|Add0~25\);

-- Location: LCCOMB_X31_Y38_N24
\inst5|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Mux4~0_combout\ = (\inst2|Regist[4]~1_combout\ & (((\inst2|Regist[4]~2_combout\)))) # (!\inst2|Regist[4]~1_combout\ & ((\inst2|Regist[4]~2_combout\ & (\inst200|$00000|auto_generated|result_node[3]~4_combout\)) # (!\inst2|Regist[4]~2_combout\ & 
-- ((\inst5|Add0~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~1_combout\,
	datab => \inst200|$00000|auto_generated|result_node[3]~4_combout\,
	datac => \inst2|Regist[4]~2_combout\,
	datad => \inst5|Add0~24_combout\,
	combout => \inst5|Mux4~0_combout\);

-- Location: LCCOMB_X31_Y38_N18
\inst5|Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Mux4~1_combout\ = (\inst2|Regist[4]~1_combout\ & ((\inst5|Mux4~0_combout\ & (!\inst5|Regist\(3))) # (!\inst5|Mux4~0_combout\ & ((\inst5|Regist\(2)))))) # (!\inst2|Regist[4]~1_combout\ & (((\inst5|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Regist\(3),
	datab => \inst5|Regist\(2),
	datac => \inst2|Regist[4]~1_combout\,
	datad => \inst5|Mux4~0_combout\,
	combout => \inst5|Mux4~1_combout\);

-- Location: LCCOMB_X31_Y38_N26
\inst5|Mux4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Mux4~2_combout\ = (\inst8|Mux6~2_combout\ & (\inst5|Regist\(4) & (\inst2|Regist[4]~0_combout\))) # (!\inst8|Mux6~2_combout\ & ((\inst5|Mux4~1_combout\) # ((\inst5|Regist\(4) & \inst2|Regist[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Mux6~2_combout\,
	datab => \inst5|Regist\(4),
	datac => \inst2|Regist[4]~0_combout\,
	datad => \inst5|Mux4~1_combout\,
	combout => \inst5|Mux4~2_combout\);

-- Location: LCCOMB_X26_Y38_N24
\inst21|Mux15~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst21|Mux15~8_combout\ = (\SelRegD[0]~input_o\ & (!\SelRegD[3]~input_o\ & (!\SelRegD[1]~input_o\ & !\SelRegD[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelRegD[0]~input_o\,
	datab => \SelRegD[3]~input_o\,
	datac => \SelRegD[1]~input_o\,
	datad => \SelRegD[2]~input_o\,
	combout => \inst21|Mux15~8_combout\);

-- Location: LCCOMB_X27_Y38_N28
\inst5|Regist[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Regist[7]~0_combout\ = (\inst8|Regist[0]~0_combout\ & (\EnDec~input_o\ & \inst21|Mux15~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|Regist[0]~0_combout\,
	datac => \EnDec~input_o\,
	datad => \inst21|Mux15~8_combout\,
	combout => \inst5|Regist[7]~0_combout\);

-- Location: FF_X31_Y38_N27
\inst5|Regist[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|Mux4~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst5|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|Regist\(3));

-- Location: LCCOMB_X32_Y38_N20
\inst5|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Mux5~0_combout\ = (\inst2|Regist[4]~2_combout\ & (\inst2|Regist[4]~1_combout\)) # (!\inst2|Regist[4]~2_combout\ & ((\inst2|Regist[4]~1_combout\ & ((\inst5|Regist\(1)))) # (!\inst2|Regist[4]~1_combout\ & (\inst5|Add0~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~2_combout\,
	datab => \inst2|Regist[4]~1_combout\,
	datac => \inst5|Add0~22_combout\,
	datad => \inst5|Regist\(1),
	combout => \inst5|Mux5~0_combout\);

-- Location: LCCOMB_X32_Y38_N2
\inst5|Mux5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Mux5~1_combout\ = (\inst2|Regist[4]~2_combout\ & ((\inst5|Mux5~0_combout\ & ((!\inst5|Regist\(2)))) # (!\inst5|Mux5~0_combout\ & (\inst200|$00000|auto_generated|result_node[2]~5_combout\)))) # (!\inst2|Regist[4]~2_combout\ & 
-- (((\inst5|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~2_combout\,
	datab => \inst200|$00000|auto_generated|result_node[2]~5_combout\,
	datac => \inst5|Regist\(2),
	datad => \inst5|Mux5~0_combout\,
	combout => \inst5|Mux5~1_combout\);

-- Location: LCCOMB_X32_Y38_N24
\inst5|Mux5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Mux5~2_combout\ = (\inst8|Mux6~2_combout\ & (\inst2|Regist[4]~0_combout\ & (\inst5|Regist\(3)))) # (!\inst8|Mux6~2_combout\ & ((\inst5|Mux5~1_combout\) # ((\inst2|Regist[4]~0_combout\ & \inst5|Regist\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Mux6~2_combout\,
	datab => \inst2|Regist[4]~0_combout\,
	datac => \inst5|Regist\(3),
	datad => \inst5|Mux5~1_combout\,
	combout => \inst5|Mux5~2_combout\);

-- Location: FF_X32_Y38_N25
\inst5|Regist[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|Mux5~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst5|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|Regist\(2));

-- Location: LCCOMB_X32_Y37_N10
\inst200|$00000|auto_generated|result_node[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst200|$00000|auto_generated|result_node[1]~6_combout\ = (\MUX_B~input_o\ & (\dataB[1]~input_o\)) # (!\MUX_B~input_o\ & ((\inst12|result[1]~221_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B~input_o\,
	datab => \dataB[1]~input_o\,
	datad => \inst12|result[1]~221_combout\,
	combout => \inst200|$00000|auto_generated|result_node[1]~6_combout\);

-- Location: LCCOMB_X32_Y38_N8
\inst5|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Mux6~0_combout\ = (\inst2|Regist[4]~2_combout\ & ((\inst2|Regist[4]~1_combout\) # ((\inst200|$00000|auto_generated|result_node[1]~6_combout\)))) # (!\inst2|Regist[4]~2_combout\ & (!\inst2|Regist[4]~1_combout\ & ((\inst5|Add0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~2_combout\,
	datab => \inst2|Regist[4]~1_combout\,
	datac => \inst200|$00000|auto_generated|result_node[1]~6_combout\,
	datad => \inst5|Add0~20_combout\,
	combout => \inst5|Mux6~0_combout\);

-- Location: LCCOMB_X32_Y38_N6
\inst5|Mux6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Mux6~1_combout\ = (\inst5|Mux6~0_combout\ & (((!\inst2|Regist[4]~1_combout\)) # (!\inst5|Regist\(1)))) # (!\inst5|Mux6~0_combout\ & (((\inst5|Regist\(0) & \inst2|Regist[4]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Regist\(1),
	datab => \inst5|Regist\(0),
	datac => \inst5|Mux6~0_combout\,
	datad => \inst2|Regist[4]~1_combout\,
	combout => \inst5|Mux6~1_combout\);

-- Location: LCCOMB_X32_Y38_N10
\inst5|Mux6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Mux6~2_combout\ = (\inst8|Mux6~2_combout\ & (\inst5|Regist\(2) & (\inst2|Regist[4]~0_combout\))) # (!\inst8|Mux6~2_combout\ & ((\inst5|Mux6~1_combout\) # ((\inst5|Regist\(2) & \inst2|Regist[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Mux6~2_combout\,
	datab => \inst5|Regist\(2),
	datac => \inst2|Regist[4]~0_combout\,
	datad => \inst5|Mux6~1_combout\,
	combout => \inst5|Mux6~2_combout\);

-- Location: FF_X32_Y38_N11
\inst5|Regist[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|Mux6~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst5|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|Regist\(1));

-- Location: LCCOMB_X32_Y35_N22
\inst200|$00000|auto_generated|result_node[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst200|$00000|auto_generated|result_node[0]~7_combout\ = (\MUX_B~input_o\ & (\dataB[0]~input_o\)) # (!\MUX_B~input_o\ & ((\inst12|result[0]~231_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataB[0]~input_o\,
	datab => \MUX_B~input_o\,
	datad => \inst12|result[0]~231_combout\,
	combout => \inst200|$00000|auto_generated|result_node[0]~7_combout\);

-- Location: LCCOMB_X32_Y38_N28
\inst5|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Mux7~0_combout\ = (\inst6|Regist[0]~1_combout\ & (((\inst6|Regist[0]~2_combout\)))) # (!\inst6|Regist[0]~1_combout\ & ((\inst6|Regist[0]~2_combout\ & (\inst5|Regist\(7))) # (!\inst6|Regist[0]~2_combout\ & 
-- ((\inst200|$00000|auto_generated|result_node[0]~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Regist\(7),
	datab => \inst6|Regist[0]~1_combout\,
	datac => \inst6|Regist[0]~2_combout\,
	datad => \inst200|$00000|auto_generated|result_node[0]~7_combout\,
	combout => \inst5|Mux7~0_combout\);

-- Location: LCCOMB_X32_Y38_N26
\inst5|Mux7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Mux7~1_combout\ = (\inst5|Mux7~0_combout\ & ((\inst5|Regist\(1)) # ((!\inst6|Regist[0]~1_combout\)))) # (!\inst5|Mux7~0_combout\ & (((\inst6|Regist[0]~1_combout\ & !\inst5|Regist\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Regist\(1),
	datab => \inst5|Mux7~0_combout\,
	datac => \inst6|Regist[0]~1_combout\,
	datad => \inst5|Regist\(0),
	combout => \inst5|Mux7~1_combout\);

-- Location: LCCOMB_X32_Y38_N12
\inst5|Mux7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Mux7~2_combout\ = (\inst8|Mux7~2_combout\ & (\inst6|Regist[0]~0_combout\ & ((\inst5|Add0~18_combout\)))) # (!\inst8|Mux7~2_combout\ & ((\inst5|Mux7~1_combout\) # ((\inst6|Regist[0]~0_combout\ & \inst5|Add0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Mux7~2_combout\,
	datab => \inst6|Regist[0]~0_combout\,
	datac => \inst5|Mux7~1_combout\,
	datad => \inst5|Add0~18_combout\,
	combout => \inst5|Mux7~2_combout\);

-- Location: FF_X32_Y38_N13
\inst5|Regist[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|Mux7~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst5|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|Regist\(0));

-- Location: IOIBUF_X46_Y54_N29
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

-- Location: LCCOMB_X32_Y38_N18
\inst200|$00000|auto_generated|result_node[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst200|$00000|auto_generated|result_node[7]~0_combout\ = (\MUX_B~input_o\ & (\dataB[7]~input_o\)) # (!\MUX_B~input_o\ & ((\inst12|result[7]~161_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B~input_o\,
	datab => \dataB[7]~input_o\,
	datad => \inst12|result[7]~161_combout\,
	combout => \inst200|$00000|auto_generated|result_node[7]~0_combout\);

-- Location: LCCOMB_X32_Y38_N14
\inst5|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Mux0~0_combout\ = (\inst3|Regist[7]~0_combout\ & (((\inst6|Regist[0]~2_combout\)))) # (!\inst3|Regist[7]~0_combout\ & ((\inst6|Regist[0]~2_combout\ & (\inst5|Regist\(0))) # (!\inst6|Regist[0]~2_combout\ & 
-- ((\inst200|$00000|auto_generated|result_node[7]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Regist\(0),
	datab => \inst3|Regist[7]~0_combout\,
	datac => \inst6|Regist[0]~2_combout\,
	datad => \inst200|$00000|auto_generated|result_node[7]~0_combout\,
	combout => \inst5|Mux0~0_combout\);

-- Location: LCCOMB_X34_Y38_N28
\inst5|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Mux0~1_combout\ = (\inst3|Regist[7]~0_combout\ & ((\inst5|Mux0~0_combout\ & (\inst5|Regist\(6))) # (!\inst5|Mux0~0_combout\ & ((!\inst5|Regist\(7)))))) # (!\inst3|Regist[7]~0_combout\ & (((\inst5|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Regist[7]~0_combout\,
	datab => \inst5|Regist\(6),
	datac => \inst5|Mux0~0_combout\,
	datad => \inst5|Regist\(7),
	combout => \inst5|Mux0~1_combout\);

-- Location: LCCOMB_X30_Y38_N14
\inst5|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~0_combout\ = \inst5|Regist\(7) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[3]~input_o\,
	datac => \SelBus[1]~input_o\,
	datad => \inst5|Regist\(7),
	combout => \inst5|Add0~0_combout\);

-- Location: LCCOMB_X32_Y38_N16
\inst5|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~1_combout\ = (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst200|$00000|auto_generated|result_node[7]~0_combout\)))) # (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[0]~input_o\,
	datab => \SelBus[1]~input_o\,
	datac => \SelBus[3]~input_o\,
	datad => \inst200|$00000|auto_generated|result_node[7]~0_combout\,
	combout => \inst5|Add0~1_combout\);

-- Location: LCCOMB_X34_Y38_N10
\inst5|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~2_combout\ = \inst5|Regist\(6) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[1]~input_o\,
	datab => \SelBus[3]~input_o\,
	datad => \inst5|Regist\(6),
	combout => \inst5|Add0~2_combout\);

-- Location: IOIBUF_X36_Y39_N22
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

-- Location: LCCOMB_X32_Y36_N20
\inst200|$00000|auto_generated|result_node[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst200|$00000|auto_generated|result_node[6]~1_combout\ = (\MUX_B~input_o\ & ((\dataB[6]~input_o\))) # (!\MUX_B~input_o\ & (\inst12|result[6]~171_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B~input_o\,
	datac => \inst12|result[6]~171_combout\,
	datad => \dataB[6]~input_o\,
	combout => \inst200|$00000|auto_generated|result_node[6]~1_combout\);

-- Location: LCCOMB_X32_Y36_N22
\inst5|Add0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~3_combout\ = (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst200|$00000|auto_generated|result_node[6]~1_combout\)))) # (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[3]~input_o\,
	datab => \SelBus[0]~input_o\,
	datac => \SelBus[1]~input_o\,
	datad => \inst200|$00000|auto_generated|result_node[6]~1_combout\,
	combout => \inst5|Add0~3_combout\);

-- Location: LCCOMB_X34_Y38_N4
\inst5|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~4_combout\ = \inst5|Regist\(5) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010110010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Regist\(5),
	datab => \SelBus[3]~input_o\,
	datac => \SelBus[1]~input_o\,
	combout => \inst5|Add0~4_combout\);

-- Location: IOIBUF_X78_Y35_N15
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

-- Location: LCCOMB_X32_Y35_N10
\inst200|$00000|auto_generated|result_node[5]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst200|$00000|auto_generated|result_node[5]~2_combout\ = (\MUX_B~input_o\ & (\dataB[5]~input_o\)) # (!\MUX_B~input_o\ & ((\inst12|result[5]~181_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataB[5]~input_o\,
	datac => \inst12|result[5]~181_combout\,
	datad => \MUX_B~input_o\,
	combout => \inst200|$00000|auto_generated|result_node[5]~2_combout\);

-- Location: LCCOMB_X32_Y35_N12
\inst5|Add0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~5_combout\ = (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst200|$00000|auto_generated|result_node[5]~2_combout\)))) # (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[0]~input_o\,
	datab => \SelBus[3]~input_o\,
	datac => \SelBus[1]~input_o\,
	datad => \inst200|$00000|auto_generated|result_node[5]~2_combout\,
	combout => \inst5|Add0~5_combout\);

-- Location: LCCOMB_X34_Y38_N18
\inst5|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~6_combout\ = \inst5|Regist\(4) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SelBus[3]~input_o\,
	datac => \SelBus[1]~input_o\,
	datad => \inst5|Regist\(4),
	combout => \inst5|Add0~6_combout\);

-- Location: IOIBUF_X31_Y39_N22
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

-- Location: LCCOMB_X30_Y36_N20
\inst200|$00000|auto_generated|result_node[4]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst200|$00000|auto_generated|result_node[4]~3_combout\ = (\MUX_B~input_o\ & ((\dataB[4]~input_o\))) # (!\MUX_B~input_o\ & (\inst12|result[4]~191_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B~input_o\,
	datac => \inst12|result[4]~191_combout\,
	datad => \dataB[4]~input_o\,
	combout => \inst200|$00000|auto_generated|result_node[4]~3_combout\);

-- Location: LCCOMB_X30_Y36_N26
\inst5|Add0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~7_combout\ = (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst200|$00000|auto_generated|result_node[4]~3_combout\)))) # (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[0]~input_o\,
	datab => \SelBus[1]~input_o\,
	datac => \SelBus[3]~input_o\,
	datad => \inst200|$00000|auto_generated|result_node[4]~3_combout\,
	combout => \inst5|Add0~7_combout\);

-- Location: LCCOMB_X31_Y38_N8
\inst5|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~26_combout\ = ((\inst5|Add0~6_combout\ $ (\inst5|Add0~7_combout\ $ (\inst5|Add0~25\)))) # (GND)
-- \inst5|Add0~27\ = CARRY((\inst5|Add0~6_combout\ & (\inst5|Add0~7_combout\ & !\inst5|Add0~25\)) # (!\inst5|Add0~6_combout\ & ((\inst5|Add0~7_combout\) # (!\inst5|Add0~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add0~6_combout\,
	datab => \inst5|Add0~7_combout\,
	datad => VCC,
	cin => \inst5|Add0~25\,
	combout => \inst5|Add0~26_combout\,
	cout => \inst5|Add0~27\);

-- Location: LCCOMB_X31_Y38_N10
\inst5|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~28_combout\ = (\inst5|Add0~4_combout\ & ((\inst5|Add0~5_combout\ & (!\inst5|Add0~27\)) # (!\inst5|Add0~5_combout\ & ((\inst5|Add0~27\) # (GND))))) # (!\inst5|Add0~4_combout\ & ((\inst5|Add0~5_combout\ & (\inst5|Add0~27\ & VCC)) # 
-- (!\inst5|Add0~5_combout\ & (!\inst5|Add0~27\))))
-- \inst5|Add0~29\ = CARRY((\inst5|Add0~4_combout\ & ((!\inst5|Add0~27\) # (!\inst5|Add0~5_combout\))) # (!\inst5|Add0~4_combout\ & (!\inst5|Add0~5_combout\ & !\inst5|Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add0~4_combout\,
	datab => \inst5|Add0~5_combout\,
	datad => VCC,
	cin => \inst5|Add0~27\,
	combout => \inst5|Add0~28_combout\,
	cout => \inst5|Add0~29\);

-- Location: LCCOMB_X31_Y38_N12
\inst5|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~30_combout\ = ((\inst5|Add0~2_combout\ $ (\inst5|Add0~3_combout\ $ (\inst5|Add0~29\)))) # (GND)
-- \inst5|Add0~31\ = CARRY((\inst5|Add0~2_combout\ & (\inst5|Add0~3_combout\ & !\inst5|Add0~29\)) # (!\inst5|Add0~2_combout\ & ((\inst5|Add0~3_combout\) # (!\inst5|Add0~29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add0~2_combout\,
	datab => \inst5|Add0~3_combout\,
	datad => VCC,
	cin => \inst5|Add0~29\,
	combout => \inst5|Add0~30_combout\,
	cout => \inst5|Add0~31\);

-- Location: LCCOMB_X31_Y38_N14
\inst5|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~32_combout\ = \inst5|Add0~0_combout\ $ (\inst5|Add0~31\ $ (!\inst5|Add0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add0~0_combout\,
	datad => \inst5|Add0~1_combout\,
	cin => \inst5|Add0~31\,
	combout => \inst5|Add0~32_combout\);

-- Location: LCCOMB_X34_Y38_N24
\inst5|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Mux0~2_combout\ = (\inst6|Mux0~0_combout\ & (((\inst6|Regist[0]~0_combout\ & \inst5|Add0~32_combout\)))) # (!\inst6|Mux0~0_combout\ & ((\inst5|Mux0~1_combout\) # ((\inst6|Regist[0]~0_combout\ & \inst5|Add0~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mux0~0_combout\,
	datab => \inst5|Mux0~1_combout\,
	datac => \inst6|Regist[0]~0_combout\,
	datad => \inst5|Add0~32_combout\,
	combout => \inst5|Mux0~2_combout\);

-- Location: FF_X34_Y38_N25
\inst5|Regist[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|Mux0~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst5|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|Regist\(7));

-- Location: LCCOMB_X34_Y38_N22
\inst5|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Mux1~0_combout\ = (\inst2|Regist[4]~1_combout\ & (!\inst5|Regist\(6) & (\inst2|Regist[4]~2_combout\))) # (!\inst2|Regist[4]~1_combout\ & (((\inst200|$00000|auto_generated|result_node[6]~1_combout\) # (!\inst2|Regist[4]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~1_combout\,
	datab => \inst5|Regist\(6),
	datac => \inst2|Regist[4]~2_combout\,
	datad => \inst200|$00000|auto_generated|result_node[6]~1_combout\,
	combout => \inst5|Mux1~0_combout\);

-- Location: LCCOMB_X34_Y38_N0
\inst5|Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Mux1~1_combout\ = (\inst5|Mux1~0_combout\ & (((\inst2|Regist[4]~2_combout\) # (\inst5|Add0~30_combout\)))) # (!\inst5|Mux1~0_combout\ & (\inst5|Regist\(5) & (!\inst2|Regist[4]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mux1~0_combout\,
	datab => \inst5|Regist\(5),
	datac => \inst2|Regist[4]~2_combout\,
	datad => \inst5|Add0~30_combout\,
	combout => \inst5|Mux1~1_combout\);

-- Location: LCCOMB_X34_Y38_N20
\inst5|Mux1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Mux1~2_combout\ = (\inst2|Regist[4]~0_combout\ & ((\inst5|Regist\(7)) # ((!\inst8|Mux6~2_combout\ & \inst5|Mux1~1_combout\)))) # (!\inst2|Regist[4]~0_combout\ & (((!\inst8|Mux6~2_combout\ & \inst5|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~0_combout\,
	datab => \inst5|Regist\(7),
	datac => \inst8|Mux6~2_combout\,
	datad => \inst5|Mux1~1_combout\,
	combout => \inst5|Mux1~2_combout\);

-- Location: FF_X34_Y38_N21
\inst5|Regist[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|Mux1~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst5|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|Regist\(6));

-- Location: LCCOMB_X34_Y38_N14
\inst5|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Mux2~0_combout\ = (\inst2|Regist[4]~1_combout\ & ((\inst2|Regist[4]~2_combout\ & (!\inst5|Regist\(5))) # (!\inst2|Regist[4]~2_combout\ & ((\inst5|Regist\(4)))))) # (!\inst2|Regist[4]~1_combout\ & (((!\inst2|Regist[4]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~1_combout\,
	datab => \inst5|Regist\(5),
	datac => \inst2|Regist[4]~2_combout\,
	datad => \inst5|Regist\(4),
	combout => \inst5|Mux2~0_combout\);

-- Location: LCCOMB_X34_Y38_N16
\inst5|Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Mux2~1_combout\ = (\inst5|Mux2~0_combout\ & (((\inst2|Regist[4]~1_combout\) # (\inst5|Add0~28_combout\)))) # (!\inst5|Mux2~0_combout\ & (\inst200|$00000|auto_generated|result_node[5]~2_combout\ & (!\inst2|Regist[4]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst200|$00000|auto_generated|result_node[5]~2_combout\,
	datab => \inst5|Mux2~0_combout\,
	datac => \inst2|Regist[4]~1_combout\,
	datad => \inst5|Add0~28_combout\,
	combout => \inst5|Mux2~1_combout\);

-- Location: LCCOMB_X34_Y38_N26
\inst5|Mux2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Mux2~2_combout\ = (\inst2|Regist[4]~0_combout\ & ((\inst5|Regist\(6)) # ((!\inst8|Mux6~2_combout\ & \inst5|Mux2~1_combout\)))) # (!\inst2|Regist[4]~0_combout\ & (((!\inst8|Mux6~2_combout\ & \inst5|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~0_combout\,
	datab => \inst5|Regist\(6),
	datac => \inst8|Mux6~2_combout\,
	datad => \inst5|Mux2~1_combout\,
	combout => \inst5|Mux2~2_combout\);

-- Location: FF_X34_Y38_N27
\inst5|Regist[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|Mux2~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst5|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|Regist\(5));

-- Location: LCCOMB_X31_Y38_N28
\inst5|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Mux3~0_combout\ = (\inst2|Regist[4]~2_combout\ & (((\inst2|Regist[4]~1_combout\)))) # (!\inst2|Regist[4]~2_combout\ & ((\inst2|Regist[4]~1_combout\ & (\inst5|Regist\(3))) # (!\inst2|Regist[4]~1_combout\ & ((\inst5|Add0~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Regist\(3),
	datab => \inst2|Regist[4]~2_combout\,
	datac => \inst5|Add0~26_combout\,
	datad => \inst2|Regist[4]~1_combout\,
	combout => \inst5|Mux3~0_combout\);

-- Location: LCCOMB_X31_Y38_N30
\inst5|Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Mux3~1_combout\ = (\inst2|Regist[4]~2_combout\ & ((\inst5|Mux3~0_combout\ & ((!\inst5|Regist\(4)))) # (!\inst5|Mux3~0_combout\ & (\inst200|$00000|auto_generated|result_node[4]~3_combout\)))) # (!\inst2|Regist[4]~2_combout\ & 
-- (((\inst5|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst200|$00000|auto_generated|result_node[4]~3_combout\,
	datab => \inst5|Regist\(4),
	datac => \inst2|Regist[4]~2_combout\,
	datad => \inst5|Mux3~0_combout\,
	combout => \inst5|Mux3~1_combout\);

-- Location: LCCOMB_X31_Y38_N20
\inst5|Mux3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Mux3~2_combout\ = (\inst5|Regist\(5) & ((\inst2|Regist[4]~0_combout\) # ((!\inst8|Mux6~2_combout\ & \inst5|Mux3~1_combout\)))) # (!\inst5|Regist\(5) & (!\inst8|Mux6~2_combout\ & (\inst5|Mux3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Regist\(5),
	datab => \inst8|Mux6~2_combout\,
	datac => \inst5|Mux3~1_combout\,
	datad => \inst2|Regist[4]~0_combout\,
	combout => \inst5|Mux3~2_combout\);

-- Location: FF_X31_Y38_N21
\inst5|Regist[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|Mux3~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst5|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|Regist\(4));

-- Location: LCCOMB_X31_Y37_N28
\inst12|result[4]~186\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|result[4]~186_combout\ = (\inst12|_~35_combout\ & ((\inst11|Regist\(4)) # ((\inst12|_~34_combout\ & \inst5|Regist\(4))))) # (!\inst12|_~35_combout\ & (\inst12|_~34_combout\ & (\inst5|Regist\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|_~35_combout\,
	datab => \inst12|_~34_combout\,
	datac => \inst5|Regist\(4),
	datad => \inst11|Regist\(4),
	combout => \inst12|result[4]~186_combout\);

-- Location: LCCOMB_X26_Y34_N10
\inst12|result[4]~183\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|result[4]~183_combout\ = (\inst12|_~24_combout\ & ((\inst10|Regist\(4)) # ((\inst12|_~25_combout\ & \inst1|Regist\(4))))) # (!\inst12|_~24_combout\ & (\inst12|_~25_combout\ & (\inst1|Regist\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|_~24_combout\,
	datab => \inst12|_~25_combout\,
	datac => \inst1|Regist\(4),
	datad => \inst10|Regist\(4),
	combout => \inst12|result[4]~183_combout\);

-- Location: LCCOMB_X27_Y37_N26
\inst12|result[4]~184\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|result[4]~184_combout\ = (\inst12|_~29_combout\ & ((\inst12|result[4]~191_combout\) # ((\inst12|_~28_combout\ & \inst18|Regist\(4))))) # (!\inst12|_~29_combout\ & (\inst12|_~28_combout\ & ((\inst18|Regist\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|_~29_combout\,
	datab => \inst12|_~28_combout\,
	datac => \inst12|result[4]~191_combout\,
	datad => \inst18|Regist\(4),
	combout => \inst12|result[4]~184_combout\);

-- Location: LCCOMB_X26_Y34_N8
\inst12|result[4]~182\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|result[4]~182_combout\ = (\inst12|_~22_combout\ & ((\inst17|Regist\(4)) # ((\inst12|_~21_combout\ & \inst9|Regist\(4))))) # (!\inst12|_~22_combout\ & (\inst12|_~21_combout\ & ((\inst9|Regist\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|_~22_combout\,
	datab => \inst12|_~21_combout\,
	datac => \inst17|Regist\(4),
	datad => \inst9|Regist\(4),
	combout => \inst12|result[4]~182_combout\);

-- Location: LCCOMB_X26_Y34_N18
\inst12|result[4]~235\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|result[4]~235_combout\ = (!\muxSel[2]~input_o\ & (\inst12|_~20_combout\ & (!\muxSel[1]~input_o\ & \inst6|Regist\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \muxSel[2]~input_o\,
	datab => \inst12|_~20_combout\,
	datac => \muxSel[1]~input_o\,
	datad => \inst6|Regist\(4),
	combout => \inst12|result[4]~235_combout\);

-- Location: LCCOMB_X26_Y34_N4
\inst12|result[4]~185\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|result[4]~185_combout\ = (\inst12|result[4]~183_combout\) # ((\inst12|result[4]~184_combout\) # ((\inst12|result[4]~182_combout\) # (\inst12|result[4]~235_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|result[4]~183_combout\,
	datab => \inst12|result[4]~184_combout\,
	datac => \inst12|result[4]~182_combout\,
	datad => \inst12|result[4]~235_combout\,
	combout => \inst12|result[4]~185_combout\);

-- Location: LCCOMB_X31_Y36_N0
\inst12|result[4]~187\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|result[4]~187_combout\ = (\inst12|_~36_combout\ & ((\inst14|Regist\(4)) # ((\inst12|_~37_combout\ & \inst7|Regist\(4))))) # (!\inst12|_~36_combout\ & (\inst12|_~37_combout\ & ((\inst7|Regist\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|_~36_combout\,
	datab => \inst12|_~37_combout\,
	datac => \inst14|Regist\(4),
	datad => \inst7|Regist\(4),
	combout => \inst12|result[4]~187_combout\);

-- Location: LCCOMB_X30_Y36_N14
\inst12|result[4]~189\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|result[4]~189_combout\ = (\inst12|_~38_combout\ & ((\inst2|Regist\(4)) # ((\inst12|_~32_combout\ & \inst20|Regist\(4))))) # (!\inst12|_~38_combout\ & (\inst12|_~32_combout\ & ((\inst20|Regist\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|_~38_combout\,
	datab => \inst12|_~32_combout\,
	datac => \inst2|Regist\(4),
	datad => \inst20|Regist\(4),
	combout => \inst12|result[4]~189_combout\);

-- Location: LCCOMB_X30_Y36_N28
\inst12|result[4]~188\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|result[4]~188_combout\ = (\inst12|_~31_combout\ & ((\muxSel[2]~input_o\ & (\inst|altsyncram_component|auto_generated|q_a\(4))) # (!\muxSel[2]~input_o\ & ((\inst19|Regist\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \muxSel[2]~input_o\,
	datab => \inst12|_~31_combout\,
	datac => \inst|altsyncram_component|auto_generated|q_a\(4),
	datad => \inst19|Regist\(4),
	combout => \inst12|result[4]~188_combout\);

-- Location: LCCOMB_X30_Y36_N24
\inst12|result[4]~190\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|result[4]~190_combout\ = (\inst12|result[4]~189_combout\) # ((\inst12|result[4]~188_combout\) # ((\inst12|_~33_combout\ & \inst8|Regist\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|_~33_combout\,
	datab => \inst8|Regist\(4),
	datac => \inst12|result[4]~189_combout\,
	datad => \inst12|result[4]~188_combout\,
	combout => \inst12|result[4]~190_combout\);

-- Location: LCCOMB_X30_Y36_N22
\inst12|result[4]~191\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|result[4]~191_combout\ = (\inst12|result[4]~186_combout\) # ((\inst12|result[4]~185_combout\) # ((\inst12|result[4]~187_combout\) # (\inst12|result[4]~190_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|result[4]~186_combout\,
	datab => \inst12|result[4]~185_combout\,
	datac => \inst12|result[4]~187_combout\,
	datad => \inst12|result[4]~190_combout\,
	combout => \inst12|result[4]~191_combout\);

-- Location: LCCOMB_X31_Y33_N16
\inst14|Add0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Add0~3_combout\ = \inst14|Regist\(4) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SelBus[1]~input_o\,
	datac => \inst14|Regist\(4),
	datad => \SelBus[3]~input_o\,
	combout => \inst14|Add0~3_combout\);

-- Location: LCCOMB_X31_Y33_N10
\inst14|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Add0~4_combout\ = \inst14|Regist\(3) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SelBus[3]~input_o\,
	datac => \SelBus[1]~input_o\,
	datad => \inst14|Regist\(3),
	combout => \inst14|Add0~4_combout\);

-- Location: LCCOMB_X34_Y33_N26
\inst14|Add0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Add0~5_combout\ = \inst14|Regist\(2) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010110010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|Regist\(2),
	datab => \SelBus[3]~input_o\,
	datac => \SelBus[1]~input_o\,
	combout => \inst14|Add0~5_combout\);

-- Location: LCCOMB_X34_Y33_N20
\inst14|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Add0~6_combout\ = \inst14|Regist\(1) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SelBus[3]~input_o\,
	datac => \SelBus[1]~input_o\,
	datad => \inst14|Regist\(1),
	combout => \inst14|Add0~6_combout\);

-- Location: LCCOMB_X34_Y33_N10
\inst14|Add0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Add0~7_combout\ = \inst14|Regist\(0) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SelBus[3]~input_o\,
	datac => \SelBus[1]~input_o\,
	datad => \inst14|Regist\(0),
	combout => \inst14|Add0~7_combout\);

-- Location: LCCOMB_X32_Y33_N6
\inst14|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Add0~8_combout\ = (\inst8|Add0~0_combout\ & (\inst14|Add0~7_combout\ $ (GND))) # (!\inst8|Add0~0_combout\ & (!\inst14|Add0~7_combout\ & VCC))
-- \inst14|Add0~9\ = CARRY((\inst8|Add0~0_combout\ & !\inst14|Add0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add0~0_combout\,
	datab => \inst14|Add0~7_combout\,
	datad => VCC,
	combout => \inst14|Add0~8_combout\,
	cout => \inst14|Add0~9\);

-- Location: LCCOMB_X32_Y33_N8
\inst14|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Add0~10_combout\ = (\inst8|Add0~5_combout\ & ((\inst14|Add0~6_combout\ & (!\inst14|Add0~9\)) # (!\inst14|Add0~6_combout\ & (\inst14|Add0~9\ & VCC)))) # (!\inst8|Add0~5_combout\ & ((\inst14|Add0~6_combout\ & ((\inst14|Add0~9\) # (GND))) # 
-- (!\inst14|Add0~6_combout\ & (!\inst14|Add0~9\))))
-- \inst14|Add0~11\ = CARRY((\inst8|Add0~5_combout\ & (\inst14|Add0~6_combout\ & !\inst14|Add0~9\)) # (!\inst8|Add0~5_combout\ & ((\inst14|Add0~6_combout\) # (!\inst14|Add0~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add0~5_combout\,
	datab => \inst14|Add0~6_combout\,
	datad => VCC,
	cin => \inst14|Add0~9\,
	combout => \inst14|Add0~10_combout\,
	cout => \inst14|Add0~11\);

-- Location: LCCOMB_X32_Y33_N10
\inst14|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Add0~12_combout\ = ((\inst8|Add0~9_combout\ $ (\inst14|Add0~5_combout\ $ (\inst14|Add0~11\)))) # (GND)
-- \inst14|Add0~13\ = CARRY((\inst8|Add0~9_combout\ & ((!\inst14|Add0~11\) # (!\inst14|Add0~5_combout\))) # (!\inst8|Add0~9_combout\ & (!\inst14|Add0~5_combout\ & !\inst14|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add0~9_combout\,
	datab => \inst14|Add0~5_combout\,
	datad => VCC,
	cin => \inst14|Add0~11\,
	combout => \inst14|Add0~12_combout\,
	cout => \inst14|Add0~13\);

-- Location: LCCOMB_X32_Y33_N12
\inst14|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Add0~14_combout\ = (\inst14|Add0~4_combout\ & ((\inst8|Add0~13_combout\ & (!\inst14|Add0~13\)) # (!\inst8|Add0~13_combout\ & ((\inst14|Add0~13\) # (GND))))) # (!\inst14|Add0~4_combout\ & ((\inst8|Add0~13_combout\ & (\inst14|Add0~13\ & VCC)) # 
-- (!\inst8|Add0~13_combout\ & (!\inst14|Add0~13\))))
-- \inst14|Add0~15\ = CARRY((\inst14|Add0~4_combout\ & ((!\inst14|Add0~13\) # (!\inst8|Add0~13_combout\))) # (!\inst14|Add0~4_combout\ & (!\inst8|Add0~13_combout\ & !\inst14|Add0~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|Add0~4_combout\,
	datab => \inst8|Add0~13_combout\,
	datad => VCC,
	cin => \inst14|Add0~13\,
	combout => \inst14|Add0~14_combout\,
	cout => \inst14|Add0~15\);

-- Location: LCCOMB_X32_Y33_N14
\inst14|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Add0~16_combout\ = ((\inst14|Add0~3_combout\ $ (\inst8|Add0~17_combout\ $ (\inst14|Add0~15\)))) # (GND)
-- \inst14|Add0~17\ = CARRY((\inst14|Add0~3_combout\ & (\inst8|Add0~17_combout\ & !\inst14|Add0~15\)) # (!\inst14|Add0~3_combout\ & ((\inst8|Add0~17_combout\) # (!\inst14|Add0~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|Add0~3_combout\,
	datab => \inst8|Add0~17_combout\,
	datad => VCC,
	cin => \inst14|Add0~15\,
	combout => \inst14|Add0~16_combout\,
	cout => \inst14|Add0~17\);

-- Location: LCCOMB_X31_Y36_N12
\inst14|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Mux3~0_combout\ = (\inst2|Regist[4]~1_combout\ & ((\inst14|Regist\(3)) # ((\inst2|Regist[4]~2_combout\)))) # (!\inst2|Regist[4]~1_combout\ & (((\inst14|Add0~16_combout\ & !\inst2|Regist[4]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~1_combout\,
	datab => \inst14|Regist\(3),
	datac => \inst14|Add0~16_combout\,
	datad => \inst2|Regist[4]~2_combout\,
	combout => \inst14|Mux3~0_combout\);

-- Location: LCCOMB_X31_Y36_N2
\inst14|Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Mux3~1_combout\ = (\inst2|Regist[4]~2_combout\ & ((\inst14|Mux3~0_combout\ & ((!\inst14|Regist\(4)))) # (!\inst14|Mux3~0_combout\ & (\inst12|result[4]~191_combout\)))) # (!\inst2|Regist[4]~2_combout\ & (((\inst14|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~2_combout\,
	datab => \inst12|result[4]~191_combout\,
	datac => \inst14|Regist\(4),
	datad => \inst14|Mux3~0_combout\,
	combout => \inst14|Mux3~1_combout\);

-- Location: LCCOMB_X31_Y36_N14
\inst14|Mux3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Mux3~2_combout\ = (\inst8|Mux6~2_combout\ & (\inst2|Regist[4]~0_combout\ & (\inst14|Regist\(5)))) # (!\inst8|Mux6~2_combout\ & ((\inst14|Mux3~1_combout\) # ((\inst2|Regist[4]~0_combout\ & \inst14|Regist\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Mux6~2_combout\,
	datab => \inst2|Regist[4]~0_combout\,
	datac => \inst14|Regist\(5),
	datad => \inst14|Mux3~1_combout\,
	combout => \inst14|Mux3~2_combout\);

-- Location: LCCOMB_X26_Y38_N0
\inst21|Mux15~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst21|Mux15~10_combout\ = (\SelRegD[0]~input_o\ & (!\SelRegD[3]~input_o\ & (!\SelRegD[1]~input_o\ & \SelRegD[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelRegD[0]~input_o\,
	datab => \SelRegD[3]~input_o\,
	datac => \SelRegD[1]~input_o\,
	datad => \SelRegD[2]~input_o\,
	combout => \inst21|Mux15~10_combout\);

-- Location: LCCOMB_X34_Y38_N6
\inst14|Regist[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Regist[7]~0_combout\ = (\inst8|Regist[0]~0_combout\ & (\EnDec~input_o\ & \inst21|Mux15~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|Regist[0]~0_combout\,
	datac => \EnDec~input_o\,
	datad => \inst21|Mux15~10_combout\,
	combout => \inst14|Regist[7]~0_combout\);

-- Location: FF_X31_Y36_N15
\inst14|Regist[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|Mux3~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst14|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|Regist\(4));

-- Location: LCCOMB_X32_Y33_N28
\inst14|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Mux4~0_combout\ = (\inst2|Regist[4]~2_combout\ & ((\inst2|Regist[4]~1_combout\) # ((\inst12|result[3]~201_combout\)))) # (!\inst2|Regist[4]~2_combout\ & (!\inst2|Regist[4]~1_combout\ & ((\inst14|Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~2_combout\,
	datab => \inst2|Regist[4]~1_combout\,
	datac => \inst12|result[3]~201_combout\,
	datad => \inst14|Add0~14_combout\,
	combout => \inst14|Mux4~0_combout\);

-- Location: LCCOMB_X32_Y33_N2
\inst14|Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Mux4~1_combout\ = (\inst2|Regist[4]~1_combout\ & ((\inst14|Mux4~0_combout\ & (!\inst14|Regist\(3))) # (!\inst14|Mux4~0_combout\ & ((\inst14|Regist\(2)))))) # (!\inst2|Regist[4]~1_combout\ & (((\inst14|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|Regist\(3),
	datab => \inst2|Regist[4]~1_combout\,
	datac => \inst14|Regist\(2),
	datad => \inst14|Mux4~0_combout\,
	combout => \inst14|Mux4~1_combout\);

-- Location: LCCOMB_X32_Y33_N22
\inst14|Mux4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Mux4~2_combout\ = (\inst14|Regist\(4) & ((\inst2|Regist[4]~0_combout\) # ((!\inst8|Mux6~2_combout\ & \inst14|Mux4~1_combout\)))) # (!\inst14|Regist\(4) & (((!\inst8|Mux6~2_combout\ & \inst14|Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|Regist\(4),
	datab => \inst2|Regist[4]~0_combout\,
	datac => \inst8|Mux6~2_combout\,
	datad => \inst14|Mux4~1_combout\,
	combout => \inst14|Mux4~2_combout\);

-- Location: FF_X32_Y33_N23
\inst14|Regist[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|Mux4~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst14|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|Regist\(3));

-- Location: LCCOMB_X34_Y33_N16
\inst14|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Mux5~0_combout\ = (\inst2|Regist[4]~2_combout\ & (((\inst2|Regist[4]~1_combout\)))) # (!\inst2|Regist[4]~2_combout\ & ((\inst2|Regist[4]~1_combout\ & (\inst14|Regist\(1))) # (!\inst2|Regist[4]~1_combout\ & ((\inst14|Add0~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~2_combout\,
	datab => \inst14|Regist\(1),
	datac => \inst2|Regist[4]~1_combout\,
	datad => \inst14|Add0~12_combout\,
	combout => \inst14|Mux5~0_combout\);

-- Location: LCCOMB_X34_Y33_N2
\inst14|Mux5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Mux5~1_combout\ = (\inst2|Regist[4]~2_combout\ & ((\inst14|Mux5~0_combout\ & (!\inst14|Regist\(2))) # (!\inst14|Mux5~0_combout\ & ((\inst12|result[2]~211_combout\))))) # (!\inst2|Regist[4]~2_combout\ & (((\inst14|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|Regist\(2),
	datab => \inst2|Regist[4]~2_combout\,
	datac => \inst12|result[2]~211_combout\,
	datad => \inst14|Mux5~0_combout\,
	combout => \inst14|Mux5~1_combout\);

-- Location: LCCOMB_X34_Y33_N22
\inst14|Mux5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Mux5~2_combout\ = (\inst14|Regist\(3) & ((\inst2|Regist[4]~0_combout\) # ((!\inst8|Mux6~2_combout\ & \inst14|Mux5~1_combout\)))) # (!\inst14|Regist\(3) & (!\inst8|Mux6~2_combout\ & ((\inst14|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|Regist\(3),
	datab => \inst8|Mux6~2_combout\,
	datac => \inst2|Regist[4]~0_combout\,
	datad => \inst14|Mux5~1_combout\,
	combout => \inst14|Mux5~2_combout\);

-- Location: FF_X34_Y33_N23
\inst14|Regist[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|Mux5~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst14|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|Regist\(2));

-- Location: LCCOMB_X34_Y33_N12
\inst14|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Mux6~0_combout\ = (\inst2|Regist[4]~1_combout\ & (\inst2|Regist[4]~2_combout\)) # (!\inst2|Regist[4]~1_combout\ & ((\inst2|Regist[4]~2_combout\ & (\inst12|result[1]~221_combout\)) # (!\inst2|Regist[4]~2_combout\ & ((\inst14|Add0~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~1_combout\,
	datab => \inst2|Regist[4]~2_combout\,
	datac => \inst12|result[1]~221_combout\,
	datad => \inst14|Add0~10_combout\,
	combout => \inst14|Mux6~0_combout\);

-- Location: LCCOMB_X34_Y33_N6
\inst14|Mux6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Mux6~1_combout\ = (\inst2|Regist[4]~1_combout\ & ((\inst14|Mux6~0_combout\ & ((!\inst14|Regist\(1)))) # (!\inst14|Mux6~0_combout\ & (\inst14|Regist\(0))))) # (!\inst2|Regist[4]~1_combout\ & (((\inst14|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|Regist\(0),
	datab => \inst14|Regist\(1),
	datac => \inst2|Regist[4]~1_combout\,
	datad => \inst14|Mux6~0_combout\,
	combout => \inst14|Mux6~1_combout\);

-- Location: LCCOMB_X34_Y33_N0
\inst14|Mux6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Mux6~2_combout\ = (\inst14|Regist\(2) & ((\inst2|Regist[4]~0_combout\) # ((!\inst8|Mux6~2_combout\ & \inst14|Mux6~1_combout\)))) # (!\inst14|Regist\(2) & (!\inst8|Mux6~2_combout\ & ((\inst14|Mux6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|Regist\(2),
	datab => \inst8|Mux6~2_combout\,
	datac => \inst2|Regist[4]~0_combout\,
	datad => \inst14|Mux6~1_combout\,
	combout => \inst14|Mux6~2_combout\);

-- Location: FF_X34_Y33_N1
\inst14|Regist[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|Mux6~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst14|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|Regist\(1));

-- Location: LCCOMB_X34_Y33_N8
\inst14|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Mux7~0_combout\ = (\inst6|Regist[0]~1_combout\ & (((\inst6|Regist[0]~2_combout\)))) # (!\inst6|Regist[0]~1_combout\ & ((\inst6|Regist[0]~2_combout\ & (\inst14|Regist\(7))) # (!\inst6|Regist[0]~2_combout\ & ((\inst12|result[0]~231_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Regist[0]~1_combout\,
	datab => \inst14|Regist\(7),
	datac => \inst6|Regist[0]~2_combout\,
	datad => \inst12|result[0]~231_combout\,
	combout => \inst14|Mux7~0_combout\);

-- Location: LCCOMB_X34_Y33_N30
\inst14|Mux7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Mux7~1_combout\ = (\inst6|Regist[0]~1_combout\ & ((\inst14|Mux7~0_combout\ & (\inst14|Regist\(1))) # (!\inst14|Mux7~0_combout\ & ((!\inst14|Regist\(0)))))) # (!\inst6|Regist[0]~1_combout\ & (((\inst14|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Regist[0]~1_combout\,
	datab => \inst14|Regist\(1),
	datac => \inst14|Mux7~0_combout\,
	datad => \inst14|Regist\(0),
	combout => \inst14|Mux7~1_combout\);

-- Location: LCCOMB_X34_Y33_N18
\inst14|Mux7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Mux7~2_combout\ = (\inst6|Regist[0]~0_combout\ & ((\inst14|Add0~8_combout\) # ((!\inst8|Mux7~2_combout\ & \inst14|Mux7~1_combout\)))) # (!\inst6|Regist[0]~0_combout\ & (!\inst8|Mux7~2_combout\ & (\inst14|Mux7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Regist[0]~0_combout\,
	datab => \inst8|Mux7~2_combout\,
	datac => \inst14|Mux7~1_combout\,
	datad => \inst14|Add0~8_combout\,
	combout => \inst14|Mux7~2_combout\);

-- Location: FF_X34_Y33_N19
\inst14|Regist[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|Mux7~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst14|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|Regist\(0));

-- Location: LCCOMB_X34_Y33_N4
\inst14|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Mux0~0_combout\ = (\inst3|Regist[7]~0_combout\ & (((\inst6|Regist[0]~2_combout\)))) # (!\inst3|Regist[7]~0_combout\ & ((\inst6|Regist[0]~2_combout\ & (\inst14|Regist\(0))) # (!\inst6|Regist[0]~2_combout\ & ((\inst12|result[7]~161_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Regist[7]~0_combout\,
	datab => \inst14|Regist\(0),
	datac => \inst6|Regist[0]~2_combout\,
	datad => \inst12|result[7]~161_combout\,
	combout => \inst14|Mux0~0_combout\);

-- Location: LCCOMB_X34_Y33_N14
\inst14|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Mux0~1_combout\ = (\inst3|Regist[7]~0_combout\ & ((\inst14|Mux0~0_combout\ & ((\inst14|Regist\(6)))) # (!\inst14|Mux0~0_combout\ & (!\inst14|Regist\(7))))) # (!\inst3|Regist[7]~0_combout\ & (((\inst14|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Regist[7]~0_combout\,
	datab => \inst14|Regist\(7),
	datac => \inst14|Mux0~0_combout\,
	datad => \inst14|Regist\(6),
	combout => \inst14|Mux0~1_combout\);

-- Location: LCCOMB_X31_Y33_N18
\inst14|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Add0~0_combout\ = \inst14|Regist\(7) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010110010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|Regist\(7),
	datab => \SelBus[3]~input_o\,
	datac => \SelBus[1]~input_o\,
	combout => \inst14|Add0~0_combout\);

-- Location: LCCOMB_X35_Y33_N16
\inst14|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Add0~1_combout\ = \inst14|Regist\(6) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010110010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|Regist\(6),
	datab => \SelBus[3]~input_o\,
	datac => \SelBus[1]~input_o\,
	combout => \inst14|Add0~1_combout\);

-- Location: LCCOMB_X34_Y33_N28
\inst14|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Add0~2_combout\ = \inst14|Regist\(5) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SelBus[3]~input_o\,
	datac => \SelBus[1]~input_o\,
	datad => \inst14|Regist\(5),
	combout => \inst14|Add0~2_combout\);

-- Location: LCCOMB_X32_Y33_N16
\inst14|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Add0~18_combout\ = (\inst14|Add0~2_combout\ & ((\inst8|Add0~21_combout\ & (!\inst14|Add0~17\)) # (!\inst8|Add0~21_combout\ & ((\inst14|Add0~17\) # (GND))))) # (!\inst14|Add0~2_combout\ & ((\inst8|Add0~21_combout\ & (\inst14|Add0~17\ & VCC)) # 
-- (!\inst8|Add0~21_combout\ & (!\inst14|Add0~17\))))
-- \inst14|Add0~19\ = CARRY((\inst14|Add0~2_combout\ & ((!\inst14|Add0~17\) # (!\inst8|Add0~21_combout\))) # (!\inst14|Add0~2_combout\ & (!\inst8|Add0~21_combout\ & !\inst14|Add0~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|Add0~2_combout\,
	datab => \inst8|Add0~21_combout\,
	datad => VCC,
	cin => \inst14|Add0~17\,
	combout => \inst14|Add0~18_combout\,
	cout => \inst14|Add0~19\);

-- Location: LCCOMB_X32_Y33_N18
\inst14|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Add0~20_combout\ = ((\inst14|Add0~1_combout\ $ (\inst8|Add0~25_combout\ $ (\inst14|Add0~19\)))) # (GND)
-- \inst14|Add0~21\ = CARRY((\inst14|Add0~1_combout\ & (\inst8|Add0~25_combout\ & !\inst14|Add0~19\)) # (!\inst14|Add0~1_combout\ & ((\inst8|Add0~25_combout\) # (!\inst14|Add0~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|Add0~1_combout\,
	datab => \inst8|Add0~25_combout\,
	datad => VCC,
	cin => \inst14|Add0~19\,
	combout => \inst14|Add0~20_combout\,
	cout => \inst14|Add0~21\);

-- Location: LCCOMB_X32_Y33_N20
\inst14|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Add0~22_combout\ = \inst14|Add0~0_combout\ $ (\inst14|Add0~21\ $ (!\inst8|Add0~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|Add0~0_combout\,
	datad => \inst8|Add0~28_combout\,
	cin => \inst14|Add0~21\,
	combout => \inst14|Add0~22_combout\);

-- Location: LCCOMB_X34_Y33_N24
\inst14|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Mux0~2_combout\ = (\inst6|Regist[0]~0_combout\ & ((\inst14|Add0~22_combout\) # ((\inst14|Mux0~1_combout\ & !\inst6|Mux0~0_combout\)))) # (!\inst6|Regist[0]~0_combout\ & (\inst14|Mux0~1_combout\ & (!\inst6|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Regist[0]~0_combout\,
	datab => \inst14|Mux0~1_combout\,
	datac => \inst6|Mux0~0_combout\,
	datad => \inst14|Add0~22_combout\,
	combout => \inst14|Mux0~2_combout\);

-- Location: FF_X34_Y33_N25
\inst14|Regist[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|Mux0~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst14|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|Regist\(7));

-- Location: LCCOMB_X32_Y33_N24
\inst14|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Mux1~0_combout\ = (\inst2|Regist[4]~2_combout\ & (\inst2|Regist[4]~1_combout\)) # (!\inst2|Regist[4]~2_combout\ & ((\inst2|Regist[4]~1_combout\ & (\inst14|Regist\(5))) # (!\inst2|Regist[4]~1_combout\ & ((\inst14|Add0~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~2_combout\,
	datab => \inst2|Regist[4]~1_combout\,
	datac => \inst14|Regist\(5),
	datad => \inst14|Add0~20_combout\,
	combout => \inst14|Mux1~0_combout\);

-- Location: LCCOMB_X32_Y33_N26
\inst14|Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Mux1~1_combout\ = (\inst2|Regist[4]~2_combout\ & ((\inst14|Mux1~0_combout\ & ((!\inst14|Regist\(6)))) # (!\inst14|Mux1~0_combout\ & (\inst12|result[6]~171_combout\)))) # (!\inst2|Regist[4]~2_combout\ & (((\inst14|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~2_combout\,
	datab => \inst12|result[6]~171_combout\,
	datac => \inst14|Regist\(6),
	datad => \inst14|Mux1~0_combout\,
	combout => \inst14|Mux1~1_combout\);

-- Location: LCCOMB_X31_Y33_N24
\inst14|Mux1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Mux1~2_combout\ = (\inst2|Regist[4]~0_combout\ & ((\inst14|Regist\(7)) # ((!\inst8|Mux6~2_combout\ & \inst14|Mux1~1_combout\)))) # (!\inst2|Regist[4]~0_combout\ & (!\inst8|Mux6~2_combout\ & ((\inst14|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~0_combout\,
	datab => \inst8|Mux6~2_combout\,
	datac => \inst14|Regist\(7),
	datad => \inst14|Mux1~1_combout\,
	combout => \inst14|Mux1~2_combout\);

-- Location: FF_X31_Y33_N25
\inst14|Regist[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|Mux1~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst14|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|Regist\(6));

-- Location: LCCOMB_X32_Y33_N0
\inst14|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Mux2~0_combout\ = (\inst2|Regist[4]~1_combout\ & (((\inst2|Regist[4]~2_combout\)))) # (!\inst2|Regist[4]~1_combout\ & ((\inst2|Regist[4]~2_combout\ & (\inst12|result[5]~181_combout\)) # (!\inst2|Regist[4]~2_combout\ & 
-- ((\inst14|Add0~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|result[5]~181_combout\,
	datab => \inst2|Regist[4]~1_combout\,
	datac => \inst2|Regist[4]~2_combout\,
	datad => \inst14|Add0~18_combout\,
	combout => \inst14|Mux2~0_combout\);

-- Location: LCCOMB_X32_Y33_N30
\inst14|Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Mux2~1_combout\ = (\inst2|Regist[4]~1_combout\ & ((\inst14|Mux2~0_combout\ & ((!\inst14|Regist\(5)))) # (!\inst14|Mux2~0_combout\ & (\inst14|Regist\(4))))) # (!\inst2|Regist[4]~1_combout\ & (((\inst14|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|Regist\(4),
	datab => \inst2|Regist[4]~1_combout\,
	datac => \inst14|Regist\(5),
	datad => \inst14|Mux2~0_combout\,
	combout => \inst14|Mux2~1_combout\);

-- Location: LCCOMB_X32_Y33_N4
\inst14|Mux2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Mux2~2_combout\ = (\inst14|Regist\(6) & ((\inst2|Regist[4]~0_combout\) # ((!\inst8|Mux6~2_combout\ & \inst14|Mux2~1_combout\)))) # (!\inst14|Regist\(6) & (!\inst8|Mux6~2_combout\ & (\inst14|Mux2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|Regist\(6),
	datab => \inst8|Mux6~2_combout\,
	datac => \inst14|Mux2~1_combout\,
	datad => \inst2|Regist[4]~0_combout\,
	combout => \inst14|Mux2~2_combout\);

-- Location: FF_X32_Y33_N5
\inst14|Regist[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|Mux2~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst14|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|Regist\(5));

-- Location: LCCOMB_X32_Y35_N26
\inst12|result[5]~177\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|result[5]~177_combout\ = (\inst12|_~36_combout\ & ((\inst14|Regist\(5)) # ((\inst12|_~37_combout\ & \inst7|Regist\(5))))) # (!\inst12|_~36_combout\ & (\inst12|_~37_combout\ & (\inst7|Regist\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|_~36_combout\,
	datab => \inst12|_~37_combout\,
	datac => \inst7|Regist\(5),
	datad => \inst14|Regist\(5),
	combout => \inst12|result[5]~177_combout\);

-- Location: LCCOMB_X29_Y34_N22
\inst12|result[5]~234\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|result[5]~234_combout\ = (!\muxSel[1]~input_o\ & (!\muxSel[2]~input_o\ & (\inst6|Regist\(5) & \inst12|_~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \muxSel[1]~input_o\,
	datab => \muxSel[2]~input_o\,
	datac => \inst6|Regist\(5),
	datad => \inst12|_~20_combout\,
	combout => \inst12|result[5]~234_combout\);

-- Location: LCCOMB_X26_Y34_N28
\inst12|result[5]~172\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|result[5]~172_combout\ = (\inst17|Regist\(5) & ((\inst12|_~22_combout\) # ((\inst12|_~21_combout\ & \inst9|Regist\(5))))) # (!\inst17|Regist\(5) & (\inst12|_~21_combout\ & ((\inst9|Regist\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Regist\(5),
	datab => \inst12|_~21_combout\,
	datac => \inst12|_~22_combout\,
	datad => \inst9|Regist\(5),
	combout => \inst12|result[5]~172_combout\);

-- Location: LCCOMB_X29_Y37_N20
\inst12|result[5]~174\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|result[5]~174_combout\ = (\inst12|_~29_combout\ & ((\inst12|result[5]~181_combout\) # ((\inst12|_~28_combout\ & \inst18|Regist\(5))))) # (!\inst12|_~29_combout\ & (\inst12|_~28_combout\ & ((\inst18|Regist\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|_~29_combout\,
	datab => \inst12|_~28_combout\,
	datac => \inst12|result[5]~181_combout\,
	datad => \inst18|Regist\(5),
	combout => \inst12|result[5]~174_combout\);

-- Location: LCCOMB_X26_Y34_N24
\inst12|result[5]~173\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|result[5]~173_combout\ = (\inst12|_~24_combout\ & ((\inst10|Regist\(5)) # ((\inst12|_~25_combout\ & \inst1|Regist\(5))))) # (!\inst12|_~24_combout\ & (\inst12|_~25_combout\ & (\inst1|Regist\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|_~24_combout\,
	datab => \inst12|_~25_combout\,
	datac => \inst1|Regist\(5),
	datad => \inst10|Regist\(5),
	combout => \inst12|result[5]~173_combout\);

-- Location: LCCOMB_X26_Y34_N2
\inst12|result[5]~175\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|result[5]~175_combout\ = (\inst12|result[5]~234_combout\) # ((\inst12|result[5]~172_combout\) # ((\inst12|result[5]~174_combout\) # (\inst12|result[5]~173_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|result[5]~234_combout\,
	datab => \inst12|result[5]~172_combout\,
	datac => \inst12|result[5]~174_combout\,
	datad => \inst12|result[5]~173_combout\,
	combout => \inst12|result[5]~175_combout\);

-- Location: LCCOMB_X34_Y38_N8
\inst12|result[5]~176\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|result[5]~176_combout\ = (\inst12|_~35_combout\ & ((\inst11|Regist\(5)) # ((\inst12|_~34_combout\ & \inst5|Regist\(5))))) # (!\inst12|_~35_combout\ & (\inst12|_~34_combout\ & (\inst5|Regist\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|_~35_combout\,
	datab => \inst12|_~34_combout\,
	datac => \inst5|Regist\(5),
	datad => \inst11|Regist\(5),
	combout => \inst12|result[5]~176_combout\);

-- Location: LCCOMB_X32_Y35_N14
\inst12|result[5]~179\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|result[5]~179_combout\ = (\inst12|_~38_combout\ & ((\inst2|Regist\(5)) # ((\inst12|_~32_combout\ & \inst20|Regist\(5))))) # (!\inst12|_~38_combout\ & (\inst12|_~32_combout\ & (\inst20|Regist\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|_~38_combout\,
	datab => \inst12|_~32_combout\,
	datac => \inst20|Regist\(5),
	datad => \inst2|Regist\(5),
	combout => \inst12|result[5]~179_combout\);

-- Location: LCCOMB_X32_Y35_N28
\inst12|result[5]~178\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|result[5]~178_combout\ = (\inst12|_~31_combout\ & ((\muxSel[2]~input_o\ & (\inst|altsyncram_component|auto_generated|q_a\(5))) # (!\muxSel[2]~input_o\ & ((\inst19|Regist\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \muxSel[2]~input_o\,
	datab => \inst12|_~31_combout\,
	datac => \inst|altsyncram_component|auto_generated|q_a\(5),
	datad => \inst19|Regist\(5),
	combout => \inst12|result[5]~178_combout\);

-- Location: LCCOMB_X32_Y35_N16
\inst12|result[5]~180\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|result[5]~180_combout\ = (\inst12|result[5]~179_combout\) # ((\inst12|result[5]~178_combout\) # ((\inst8|Regist\(5) & \inst12|_~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Regist\(5),
	datab => \inst12|_~33_combout\,
	datac => \inst12|result[5]~179_combout\,
	datad => \inst12|result[5]~178_combout\,
	combout => \inst12|result[5]~180_combout\);

-- Location: LCCOMB_X32_Y35_N30
\inst12|result[5]~181\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|result[5]~181_combout\ = (\inst12|result[5]~177_combout\) # ((\inst12|result[5]~175_combout\) # ((\inst12|result[5]~176_combout\) # (\inst12|result[5]~180_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|result[5]~177_combout\,
	datab => \inst12|result[5]~175_combout\,
	datac => \inst12|result[5]~176_combout\,
	datad => \inst12|result[5]~180_combout\,
	combout => \inst12|result[5]~181_combout\);

-- Location: LCCOMB_X32_Y35_N6
\inst13|$00000|auto_generated|result_node[5]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|$00000|auto_generated|result_node[5]~2_combout\ = (\MUX_MAR~input_o\ & (\inst17|Regist\(5))) # (!\MUX_MAR~input_o\ & ((\inst12|result[5]~181_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_MAR~input_o\,
	datab => \inst17|Regist\(5),
	datac => \inst12|result[5]~181_combout\,
	combout => \inst13|$00000|auto_generated|result_node[5]~2_combout\);

-- Location: LCCOMB_X32_Y35_N8
\inst1|Add0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~5_combout\ = (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst13|$00000|auto_generated|result_node[5]~2_combout\)))) # (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[0]~input_o\,
	datab => \SelBus[3]~input_o\,
	datac => \SelBus[1]~input_o\,
	datad => \inst13|$00000|auto_generated|result_node[5]~2_combout\,
	combout => \inst1|Add0~5_combout\);

-- Location: LCCOMB_X26_Y34_N6
\inst1|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~4_combout\ = \inst1|Regist\(5) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011110000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[1]~input_o\,
	datab => \SelBus[3]~input_o\,
	datac => \inst1|Regist\(5),
	combout => \inst1|Add0~4_combout\);

-- Location: LCCOMB_X30_Y36_N10
\inst13|$00000|auto_generated|result_node[4]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|$00000|auto_generated|result_node[4]~3_combout\ = (\MUX_MAR~input_o\ & ((\inst17|Regist\(4)))) # (!\MUX_MAR~input_o\ & (\inst12|result[4]~191_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_MAR~input_o\,
	datac => \inst12|result[4]~191_combout\,
	datad => \inst17|Regist\(4),
	combout => \inst13|$00000|auto_generated|result_node[4]~3_combout\);

-- Location: LCCOMB_X30_Y36_N16
\inst1|Add0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~7_combout\ = (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst13|$00000|auto_generated|result_node[4]~3_combout\)))) # (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[0]~input_o\,
	datab => \SelBus[1]~input_o\,
	datac => \SelBus[3]~input_o\,
	datad => \inst13|$00000|auto_generated|result_node[4]~3_combout\,
	combout => \inst1|Add0~7_combout\);

-- Location: LCCOMB_X27_Y36_N24
\inst1|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~6_combout\ = \inst1|Regist\(4) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[1]~input_o\,
	datac => \SelBus[3]~input_o\,
	datad => \inst1|Regist\(4),
	combout => \inst1|Add0~6_combout\);

-- Location: LCCOMB_X27_Y36_N2
\inst13|$00000|auto_generated|result_node[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|$00000|auto_generated|result_node[3]~4_combout\ = (\MUX_MAR~input_o\ & (\inst17|Regist\(3))) # (!\MUX_MAR~input_o\ & ((\inst12|result[3]~201_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MUX_MAR~input_o\,
	datac => \inst17|Regist\(3),
	datad => \inst12|result[3]~201_combout\,
	combout => \inst13|$00000|auto_generated|result_node[3]~4_combout\);

-- Location: LCCOMB_X27_Y36_N0
\inst1|Add0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~9_combout\ = (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst13|$00000|auto_generated|result_node[3]~4_combout\)))) # (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[1]~input_o\,
	datab => \SelBus[0]~input_o\,
	datac => \SelBus[3]~input_o\,
	datad => \inst13|$00000|auto_generated|result_node[3]~4_combout\,
	combout => \inst1|Add0~9_combout\);

-- Location: LCCOMB_X25_Y37_N4
\inst1|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~8_combout\ = \inst1|Regist\(3) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SelBus[3]~input_o\,
	datac => \inst1|Regist\(3),
	datad => \SelBus[1]~input_o\,
	combout => \inst1|Add0~8_combout\);

-- Location: LCCOMB_X25_Y37_N18
\inst13|$00000|auto_generated|result_node[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|$00000|auto_generated|result_node[2]~5_combout\ = (\MUX_MAR~input_o\ & (\inst17|Regist\(2))) # (!\MUX_MAR~input_o\ & ((\inst12|result[2]~211_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_MAR~input_o\,
	datac => \inst17|Regist\(2),
	datad => \inst12|result[2]~211_combout\,
	combout => \inst13|$00000|auto_generated|result_node[2]~5_combout\);

-- Location: LCCOMB_X25_Y37_N0
\inst1|Add0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~11_combout\ = (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst13|$00000|auto_generated|result_node[2]~5_combout\)))) # (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[1]~input_o\,
	datab => \SelBus[3]~input_o\,
	datac => \SelBus[0]~input_o\,
	datad => \inst13|$00000|auto_generated|result_node[2]~5_combout\,
	combout => \inst1|Add0~11_combout\);

-- Location: LCCOMB_X26_Y35_N14
\inst1|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~10_combout\ = \inst1|Regist\(2) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010110010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Regist\(2),
	datab => \SelBus[3]~input_o\,
	datac => \SelBus[1]~input_o\,
	combout => \inst1|Add0~10_combout\);

-- Location: LCCOMB_X26_Y37_N12
\inst1|Add0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~13_combout\ = (\MUX_MAR~input_o\ & (\inst17|Regist\(1))) # (!\MUX_MAR~input_o\ & ((\inst12|result[1]~221_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_MAR~input_o\,
	datac => \inst17|Regist\(1),
	datad => \inst12|result[1]~221_combout\,
	combout => \inst1|Add0~13_combout\);

-- Location: LCCOMB_X26_Y37_N6
\inst1|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~14_combout\ = (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst1|Add0~13_combout\)))) # (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[0]~input_o\,
	datab => \SelBus[1]~input_o\,
	datac => \SelBus[3]~input_o\,
	datad => \inst1|Add0~13_combout\,
	combout => \inst1|Add0~14_combout\);

-- Location: LCCOMB_X24_Y36_N6
\inst1|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~12_combout\ = \inst1|Regist\(1) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SelBus[1]~input_o\,
	datac => \inst1|Regist\(1),
	datad => \SelBus[3]~input_o\,
	combout => \inst1|Add0~12_combout\);

-- Location: LCCOMB_X25_Y36_N22
\inst1|Add0~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~17_combout\ = \inst1|Regist\(0) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Regist\(0),
	datac => \SelBus[3]~input_o\,
	datad => \SelBus[1]~input_o\,
	combout => \inst1|Add0~17_combout\);

-- Location: LCCOMB_X36_Y37_N8
\inst1|Add0~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~15_combout\ = (\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SelBus[1]~input_o\,
	datad => \SelBus[3]~input_o\,
	combout => \inst1|Add0~15_combout\);

-- Location: LCCOMB_X31_Y37_N16
\inst1|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~16_combout\ = (\inst1|Add0~15_combout\) # ((\MUX_MAR~input_o\ & ((\inst17|Regist\(0)))) # (!\MUX_MAR~input_o\ & (\inst12|result[0]~231_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|result[0]~231_combout\,
	datab => \inst1|Add0~15_combout\,
	datac => \MUX_MAR~input_o\,
	datad => \inst17|Regist\(0),
	combout => \inst1|Add0~16_combout\);

-- Location: LCCOMB_X26_Y37_N14
\inst1|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~18_combout\ = (\inst1|Add0~17_combout\ & (\inst1|Add0~16_combout\ & VCC)) # (!\inst1|Add0~17_combout\ & (\inst1|Add0~16_combout\ $ (VCC)))
-- \inst1|Add0~19\ = CARRY((!\inst1|Add0~17_combout\ & \inst1|Add0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~17_combout\,
	datab => \inst1|Add0~16_combout\,
	datad => VCC,
	combout => \inst1|Add0~18_combout\,
	cout => \inst1|Add0~19\);

-- Location: LCCOMB_X26_Y37_N16
\inst1|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~20_combout\ = (\inst1|Add0~14_combout\ & ((\inst1|Add0~12_combout\ & (!\inst1|Add0~19\)) # (!\inst1|Add0~12_combout\ & (\inst1|Add0~19\ & VCC)))) # (!\inst1|Add0~14_combout\ & ((\inst1|Add0~12_combout\ & ((\inst1|Add0~19\) # (GND))) # 
-- (!\inst1|Add0~12_combout\ & (!\inst1|Add0~19\))))
-- \inst1|Add0~21\ = CARRY((\inst1|Add0~14_combout\ & (\inst1|Add0~12_combout\ & !\inst1|Add0~19\)) # (!\inst1|Add0~14_combout\ & ((\inst1|Add0~12_combout\) # (!\inst1|Add0~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~14_combout\,
	datab => \inst1|Add0~12_combout\,
	datad => VCC,
	cin => \inst1|Add0~19\,
	combout => \inst1|Add0~20_combout\,
	cout => \inst1|Add0~21\);

-- Location: LCCOMB_X26_Y37_N18
\inst1|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~22_combout\ = ((\inst1|Add0~11_combout\ $ (\inst1|Add0~10_combout\ $ (\inst1|Add0~21\)))) # (GND)
-- \inst1|Add0~23\ = CARRY((\inst1|Add0~11_combout\ & ((!\inst1|Add0~21\) # (!\inst1|Add0~10_combout\))) # (!\inst1|Add0~11_combout\ & (!\inst1|Add0~10_combout\ & !\inst1|Add0~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~11_combout\,
	datab => \inst1|Add0~10_combout\,
	datad => VCC,
	cin => \inst1|Add0~21\,
	combout => \inst1|Add0~22_combout\,
	cout => \inst1|Add0~23\);

-- Location: LCCOMB_X26_Y37_N20
\inst1|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~24_combout\ = (\inst1|Add0~9_combout\ & ((\inst1|Add0~8_combout\ & (!\inst1|Add0~23\)) # (!\inst1|Add0~8_combout\ & (\inst1|Add0~23\ & VCC)))) # (!\inst1|Add0~9_combout\ & ((\inst1|Add0~8_combout\ & ((\inst1|Add0~23\) # (GND))) # 
-- (!\inst1|Add0~8_combout\ & (!\inst1|Add0~23\))))
-- \inst1|Add0~25\ = CARRY((\inst1|Add0~9_combout\ & (\inst1|Add0~8_combout\ & !\inst1|Add0~23\)) # (!\inst1|Add0~9_combout\ & ((\inst1|Add0~8_combout\) # (!\inst1|Add0~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~9_combout\,
	datab => \inst1|Add0~8_combout\,
	datad => VCC,
	cin => \inst1|Add0~23\,
	combout => \inst1|Add0~24_combout\,
	cout => \inst1|Add0~25\);

-- Location: LCCOMB_X26_Y37_N22
\inst1|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~26_combout\ = ((\inst1|Add0~7_combout\ $ (\inst1|Add0~6_combout\ $ (\inst1|Add0~25\)))) # (GND)
-- \inst1|Add0~27\ = CARRY((\inst1|Add0~7_combout\ & ((!\inst1|Add0~25\) # (!\inst1|Add0~6_combout\))) # (!\inst1|Add0~7_combout\ & (!\inst1|Add0~6_combout\ & !\inst1|Add0~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~7_combout\,
	datab => \inst1|Add0~6_combout\,
	datad => VCC,
	cin => \inst1|Add0~25\,
	combout => \inst1|Add0~26_combout\,
	cout => \inst1|Add0~27\);

-- Location: LCCOMB_X26_Y37_N24
\inst1|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~28_combout\ = (\inst1|Add0~5_combout\ & ((\inst1|Add0~4_combout\ & (!\inst1|Add0~27\)) # (!\inst1|Add0~4_combout\ & (\inst1|Add0~27\ & VCC)))) # (!\inst1|Add0~5_combout\ & ((\inst1|Add0~4_combout\ & ((\inst1|Add0~27\) # (GND))) # 
-- (!\inst1|Add0~4_combout\ & (!\inst1|Add0~27\))))
-- \inst1|Add0~29\ = CARRY((\inst1|Add0~5_combout\ & (\inst1|Add0~4_combout\ & !\inst1|Add0~27\)) # (!\inst1|Add0~5_combout\ & ((\inst1|Add0~4_combout\) # (!\inst1|Add0~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~5_combout\,
	datab => \inst1|Add0~4_combout\,
	datad => VCC,
	cin => \inst1|Add0~27\,
	combout => \inst1|Add0~28_combout\,
	cout => \inst1|Add0~29\);

-- Location: LCCOMB_X26_Y37_N26
\inst1|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~30_combout\ = ((\inst1|Add0~3_combout\ $ (\inst1|Add0~2_combout\ $ (\inst1|Add0~29\)))) # (GND)
-- \inst1|Add0~31\ = CARRY((\inst1|Add0~3_combout\ & ((!\inst1|Add0~29\) # (!\inst1|Add0~2_combout\))) # (!\inst1|Add0~3_combout\ & (!\inst1|Add0~2_combout\ & !\inst1|Add0~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~3_combout\,
	datab => \inst1|Add0~2_combout\,
	datad => VCC,
	cin => \inst1|Add0~29\,
	combout => \inst1|Add0~30_combout\,
	cout => \inst1|Add0~31\);

-- Location: LCCOMB_X25_Y37_N12
\inst1|Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Mux1~1_combout\ = (\inst2|Regist[4]~2_combout\ & (((\inst1|Mux1~0_combout\)))) # (!\inst2|Regist[4]~2_combout\ & ((\inst1|Mux1~0_combout\ & ((\inst1|Add0~30_combout\))) # (!\inst1|Mux1~0_combout\ & (\inst1|Regist\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~2_combout\,
	datab => \inst1|Regist\(5),
	datac => \inst1|Mux1~0_combout\,
	datad => \inst1|Add0~30_combout\,
	combout => \inst1|Mux1~1_combout\);

-- Location: LCCOMB_X25_Y37_N8
\inst1|Mux1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Mux1~2_combout\ = (\inst1|Regist\(7) & ((\inst2|Regist[4]~0_combout\) # ((!\inst8|Mux6~2_combout\ & \inst1|Mux1~1_combout\)))) # (!\inst1|Regist\(7) & (((!\inst8|Mux6~2_combout\ & \inst1|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Regist\(7),
	datab => \inst2|Regist[4]~0_combout\,
	datac => \inst8|Mux6~2_combout\,
	datad => \inst1|Mux1~1_combout\,
	combout => \inst1|Mux1~2_combout\);

-- Location: LCCOMB_X26_Y38_N14
\inst21|Mux15~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst21|Mux15~3_combout\ = (\SelRegD[0]~input_o\ & (!\SelRegD[3]~input_o\ & (\SelRegD[1]~input_o\ & \SelRegD[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelRegD[0]~input_o\,
	datab => \SelRegD[3]~input_o\,
	datac => \SelRegD[1]~input_o\,
	datad => \SelRegD[2]~input_o\,
	combout => \inst21|Mux15~3_combout\);

-- Location: LCCOMB_X27_Y38_N26
\inst1|Regist[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Regist[7]~0_combout\ = (\inst8|Regist[0]~0_combout\ & (\EnDec~input_o\ & \inst21|Mux15~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|Regist[0]~0_combout\,
	datac => \EnDec~input_o\,
	datad => \inst21|Mux15~3_combout\,
	combout => \inst1|Regist[7]~0_combout\);

-- Location: FF_X25_Y37_N9
\inst1|Regist[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|Mux1~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst1|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Regist\(6));

-- Location: LCCOMB_X26_Y34_N26
\inst1|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Mux2~0_combout\ = (\inst2|Regist[4]~2_combout\ & (((!\inst1|Regist\(5) & \inst2|Regist[4]~1_combout\)))) # (!\inst2|Regist[4]~2_combout\ & ((\inst1|Regist\(4)) # ((!\inst2|Regist[4]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Regist\(4),
	datab => \inst2|Regist[4]~2_combout\,
	datac => \inst1|Regist\(5),
	datad => \inst2|Regist[4]~1_combout\,
	combout => \inst1|Mux2~0_combout\);

-- Location: LCCOMB_X26_Y34_N12
\inst1|Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Mux2~1_combout\ = (\inst2|Regist[4]~1_combout\ & (((\inst1|Mux2~0_combout\)))) # (!\inst2|Regist[4]~1_combout\ & ((\inst1|Mux2~0_combout\ & ((\inst1|Add0~28_combout\))) # (!\inst1|Mux2~0_combout\ & 
-- (\inst13|$00000|auto_generated|result_node[5]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~1_combout\,
	datab => \inst13|$00000|auto_generated|result_node[5]~2_combout\,
	datac => \inst1|Mux2~0_combout\,
	datad => \inst1|Add0~28_combout\,
	combout => \inst1|Mux2~1_combout\);

-- Location: LCCOMB_X26_Y34_N22
\inst1|Mux2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Mux2~2_combout\ = (\inst8|Mux6~2_combout\ & (\inst1|Regist\(6) & (\inst2|Regist[4]~0_combout\))) # (!\inst8|Mux6~2_combout\ & ((\inst1|Mux2~1_combout\) # ((\inst1|Regist\(6) & \inst2|Regist[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Mux6~2_combout\,
	datab => \inst1|Regist\(6),
	datac => \inst2|Regist[4]~0_combout\,
	datad => \inst1|Mux2~1_combout\,
	combout => \inst1|Mux2~2_combout\);

-- Location: FF_X26_Y34_N23
\inst1|Regist[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|Mux2~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst1|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Regist\(5));

-- Location: LCCOMB_X26_Y34_N14
\inst1|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Mux3~0_combout\ = (\inst2|Regist[4]~1_combout\ & ((\inst2|Regist[4]~2_combout\ & ((!\inst1|Regist\(4)))) # (!\inst2|Regist[4]~2_combout\ & (\inst1|Regist\(3))))) # (!\inst2|Regist[4]~1_combout\ & (((!\inst2|Regist[4]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~1_combout\,
	datab => \inst1|Regist\(3),
	datac => \inst1|Regist\(4),
	datad => \inst2|Regist[4]~2_combout\,
	combout => \inst1|Mux3~0_combout\);

-- Location: LCCOMB_X26_Y34_N20
\inst1|Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Mux3~1_combout\ = (\inst2|Regist[4]~1_combout\ & (\inst1|Mux3~0_combout\)) # (!\inst2|Regist[4]~1_combout\ & ((\inst1|Mux3~0_combout\ & ((\inst1|Add0~26_combout\))) # (!\inst1|Mux3~0_combout\ & 
-- (\inst13|$00000|auto_generated|result_node[4]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~1_combout\,
	datab => \inst1|Mux3~0_combout\,
	datac => \inst13|$00000|auto_generated|result_node[4]~3_combout\,
	datad => \inst1|Add0~26_combout\,
	combout => \inst1|Mux3~1_combout\);

-- Location: LCCOMB_X26_Y34_N30
\inst1|Mux3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Mux3~2_combout\ = (\inst8|Mux6~2_combout\ & (\inst2|Regist[4]~0_combout\ & (\inst1|Regist\(5)))) # (!\inst8|Mux6~2_combout\ & ((\inst1|Mux3~1_combout\) # ((\inst2|Regist[4]~0_combout\ & \inst1|Regist\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Mux6~2_combout\,
	datab => \inst2|Regist[4]~0_combout\,
	datac => \inst1|Regist\(5),
	datad => \inst1|Mux3~1_combout\,
	combout => \inst1|Mux3~2_combout\);

-- Location: FF_X26_Y34_N31
\inst1|Regist[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|Mux3~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst1|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Regist\(4));

-- Location: LCCOMB_X26_Y37_N4
\inst1|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Mux4~0_combout\ = (\inst2|Regist[4]~1_combout\ & (\inst2|Regist[4]~2_combout\)) # (!\inst2|Regist[4]~1_combout\ & ((\inst2|Regist[4]~2_combout\ & (\inst13|$00000|auto_generated|result_node[3]~4_combout\)) # (!\inst2|Regist[4]~2_combout\ & 
-- ((\inst1|Add0~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~1_combout\,
	datab => \inst2|Regist[4]~2_combout\,
	datac => \inst13|$00000|auto_generated|result_node[3]~4_combout\,
	datad => \inst1|Add0~24_combout\,
	combout => \inst1|Mux4~0_combout\);

-- Location: LCCOMB_X26_Y37_N2
\inst1|Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Mux4~1_combout\ = (\inst2|Regist[4]~1_combout\ & ((\inst1|Mux4~0_combout\ & ((!\inst1|Regist\(3)))) # (!\inst1|Mux4~0_combout\ & (\inst1|Regist\(2))))) # (!\inst2|Regist[4]~1_combout\ & (((\inst1|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Regist\(2),
	datab => \inst2|Regist[4]~1_combout\,
	datac => \inst1|Mux4~0_combout\,
	datad => \inst1|Regist\(3),
	combout => \inst1|Mux4~1_combout\);

-- Location: LCCOMB_X26_Y37_N8
\inst1|Mux4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Mux4~2_combout\ = (\inst2|Regist[4]~0_combout\ & ((\inst1|Regist\(4)) # ((!\inst8|Mux6~2_combout\ & \inst1|Mux4~1_combout\)))) # (!\inst2|Regist[4]~0_combout\ & (!\inst8|Mux6~2_combout\ & ((\inst1|Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~0_combout\,
	datab => \inst8|Mux6~2_combout\,
	datac => \inst1|Regist\(4),
	datad => \inst1|Mux4~1_combout\,
	combout => \inst1|Mux4~2_combout\);

-- Location: FF_X26_Y37_N9
\inst1|Regist[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|Mux4~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst1|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Regist\(3));

-- Location: LCCOMB_X26_Y37_N0
\inst1|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Mux5~0_combout\ = (\inst2|Regist[4]~1_combout\ & ((\inst2|Regist[4]~2_combout\) # ((\inst1|Regist\(1))))) # (!\inst2|Regist[4]~1_combout\ & (!\inst2|Regist[4]~2_combout\ & ((\inst1|Add0~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~1_combout\,
	datab => \inst2|Regist[4]~2_combout\,
	datac => \inst1|Regist\(1),
	datad => \inst1|Add0~22_combout\,
	combout => \inst1|Mux5~0_combout\);

-- Location: LCCOMB_X26_Y37_N10
\inst1|Mux5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Mux5~1_combout\ = (\inst2|Regist[4]~2_combout\ & ((\inst1|Mux5~0_combout\ & (!\inst1|Regist\(2))) # (!\inst1|Mux5~0_combout\ & ((\inst13|$00000|auto_generated|result_node[2]~5_combout\))))) # (!\inst2|Regist[4]~2_combout\ & 
-- (((\inst1|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Regist\(2),
	datab => \inst2|Regist[4]~2_combout\,
	datac => \inst13|$00000|auto_generated|result_node[2]~5_combout\,
	datad => \inst1|Mux5~0_combout\,
	combout => \inst1|Mux5~1_combout\);

-- Location: LCCOMB_X26_Y37_N30
\inst1|Mux5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Mux5~2_combout\ = (\inst2|Regist[4]~0_combout\ & ((\inst1|Regist\(3)) # ((!\inst8|Mux6~2_combout\ & \inst1|Mux5~1_combout\)))) # (!\inst2|Regist[4]~0_combout\ & (!\inst8|Mux6~2_combout\ & ((\inst1|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~0_combout\,
	datab => \inst8|Mux6~2_combout\,
	datac => \inst1|Regist\(3),
	datad => \inst1|Mux5~1_combout\,
	combout => \inst1|Mux5~2_combout\);

-- Location: FF_X26_Y37_N31
\inst1|Regist[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|Mux5~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst1|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Regist\(2));

-- Location: LCCOMB_X25_Y35_N4
\inst13|$00000|auto_generated|result_node[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|$00000|auto_generated|result_node[1]~6_combout\ = (\MUX_MAR~input_o\ & (\inst17|Regist\(1))) # (!\MUX_MAR~input_o\ & ((\inst12|result[1]~221_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst17|Regist\(1),
	datac => \MUX_MAR~input_o\,
	datad => \inst12|result[1]~221_combout\,
	combout => \inst13|$00000|auto_generated|result_node[1]~6_combout\);

-- Location: LCCOMB_X25_Y35_N18
\inst1|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Mux6~0_combout\ = (\inst2|Regist[4]~2_combout\ & ((\inst13|$00000|auto_generated|result_node[1]~6_combout\) # ((\inst2|Regist[4]~1_combout\)))) # (!\inst2|Regist[4]~2_combout\ & (((!\inst2|Regist[4]~1_combout\ & \inst1|Add0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~2_combout\,
	datab => \inst13|$00000|auto_generated|result_node[1]~6_combout\,
	datac => \inst2|Regist[4]~1_combout\,
	datad => \inst1|Add0~20_combout\,
	combout => \inst1|Mux6~0_combout\);

-- Location: LCCOMB_X25_Y35_N12
\inst1|Mux6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Mux6~1_combout\ = (\inst2|Regist[4]~1_combout\ & ((\inst1|Mux6~0_combout\ & ((!\inst1|Regist\(1)))) # (!\inst1|Mux6~0_combout\ & (\inst1|Regist\(0))))) # (!\inst2|Regist[4]~1_combout\ & (((\inst1|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Regist\(0),
	datab => \inst1|Regist\(1),
	datac => \inst2|Regist[4]~1_combout\,
	datad => \inst1|Mux6~0_combout\,
	combout => \inst1|Mux6~1_combout\);

-- Location: LCCOMB_X25_Y35_N16
\inst1|Mux6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Mux6~2_combout\ = (\inst8|Mux6~2_combout\ & (\inst1|Regist\(2) & (\inst2|Regist[4]~0_combout\))) # (!\inst8|Mux6~2_combout\ & ((\inst1|Mux6~1_combout\) # ((\inst1|Regist\(2) & \inst2|Regist[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Mux6~2_combout\,
	datab => \inst1|Regist\(2),
	datac => \inst2|Regist[4]~0_combout\,
	datad => \inst1|Mux6~1_combout\,
	combout => \inst1|Mux6~2_combout\);

-- Location: FF_X25_Y35_N17
\inst1|Regist[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|Mux6~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst1|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Regist\(1));

-- Location: LCCOMB_X25_Y35_N2
\inst13|$00000|auto_generated|result_node[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|$00000|auto_generated|result_node[0]~7_combout\ = (\MUX_MAR~input_o\ & (\inst17|Regist\(0))) # (!\MUX_MAR~input_o\ & ((\inst12|result[0]~231_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Regist\(0),
	datab => \MUX_MAR~input_o\,
	datac => \inst12|result[0]~231_combout\,
	combout => \inst13|$00000|auto_generated|result_node[0]~7_combout\);

-- Location: LCCOMB_X25_Y35_N8
\inst1|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Mux7~0_combout\ = (\inst6|Regist[0]~2_combout\ & ((\inst1|Regist\(7)) # ((\inst6|Regist[0]~1_combout\)))) # (!\inst6|Regist[0]~2_combout\ & (((!\inst6|Regist[0]~1_combout\ & \inst13|$00000|auto_generated|result_node[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Regist\(7),
	datab => \inst6|Regist[0]~2_combout\,
	datac => \inst6|Regist[0]~1_combout\,
	datad => \inst13|$00000|auto_generated|result_node[0]~7_combout\,
	combout => \inst1|Mux7~0_combout\);

-- Location: LCCOMB_X25_Y35_N26
\inst1|Mux7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Mux7~1_combout\ = (\inst6|Regist[0]~1_combout\ & ((\inst1|Mux7~0_combout\ & ((\inst1|Regist\(1)))) # (!\inst1|Mux7~0_combout\ & (!\inst1|Regist\(0))))) # (!\inst6|Regist[0]~1_combout\ & (((\inst1|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Regist\(0),
	datab => \inst6|Regist[0]~1_combout\,
	datac => \inst1|Regist\(1),
	datad => \inst1|Mux7~0_combout\,
	combout => \inst1|Mux7~1_combout\);

-- Location: LCCOMB_X25_Y35_N10
\inst1|Mux7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Mux7~2_combout\ = (\inst1|Mux7~1_combout\ & (((\inst6|Regist[0]~0_combout\ & \inst1|Add0~18_combout\)) # (!\inst8|Mux7~2_combout\))) # (!\inst1|Mux7~1_combout\ & (\inst6|Regist[0]~0_combout\ & ((\inst1|Add0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux7~1_combout\,
	datab => \inst6|Regist[0]~0_combout\,
	datac => \inst8|Mux7~2_combout\,
	datad => \inst1|Add0~18_combout\,
	combout => \inst1|Mux7~2_combout\);

-- Location: FF_X25_Y35_N11
\inst1|Regist[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|Mux7~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst1|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Regist\(0));

-- Location: LCCOMB_X27_Y36_N10
\inst22|$00000|auto_generated|result_node[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst22|$00000|auto_generated|result_node[0]~0_combout\ = (\MUX_RAM~input_o\ & ((\inst2|Regist\(0)))) # (!\MUX_RAM~input_o\ & (\inst1|Regist\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_RAM~input_o\,
	datac => \inst1|Regist\(0),
	datad => \inst2|Regist\(0),
	combout => \inst22|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X32_Y35_N2
\inst23|$00000|auto_generated|result_node[5]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst23|$00000|auto_generated|result_node[5]~2_combout\ = (\MUX_MDR~input_o\ & ((\inst12|result[5]~181_combout\))) # (!\MUX_MDR~input_o\ & (\inst|altsyncram_component|auto_generated|q_a\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_MDR~input_o\,
	datab => \inst|altsyncram_component|auto_generated|q_a\(5),
	datac => \inst12|result[5]~181_combout\,
	combout => \inst23|$00000|auto_generated|result_node[5]~2_combout\);

-- Location: LCCOMB_X36_Y36_N24
\inst7|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Mux2~0_combout\ = (\inst2|Regist[4]~1_combout\ & ((\inst2|Regist[4]~2_combout\ & (!\inst7|Regist\(5))) # (!\inst2|Regist[4]~2_combout\ & ((\inst7|Regist\(4)))))) # (!\inst2|Regist[4]~1_combout\ & (((!\inst2|Regist[4]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~1_combout\,
	datab => \inst7|Regist\(5),
	datac => \inst7|Regist\(4),
	datad => \inst2|Regist[4]~2_combout\,
	combout => \inst7|Mux2~0_combout\);

-- Location: LCCOMB_X32_Y35_N0
\inst7|Add0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Add0~5_combout\ = (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst23|$00000|auto_generated|result_node[5]~2_combout\)))) # (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[0]~input_o\,
	datab => \SelBus[3]~input_o\,
	datac => \SelBus[1]~input_o\,
	datad => \inst23|$00000|auto_generated|result_node[5]~2_combout\,
	combout => \inst7|Add0~5_combout\);

-- Location: LCCOMB_X37_Y36_N8
\inst7|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Add0~4_combout\ = \inst7|Regist\(5) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SelBus[1]~input_o\,
	datac => \SelBus[3]~input_o\,
	datad => \inst7|Regist\(5),
	combout => \inst7|Add0~4_combout\);

-- Location: LCCOMB_X30_Y36_N12
\inst23|$00000|auto_generated|result_node[4]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst23|$00000|auto_generated|result_node[4]~3_combout\ = (\MUX_MDR~input_o\ & (\inst12|result[4]~191_combout\)) # (!\MUX_MDR~input_o\ & ((\inst|altsyncram_component|auto_generated|q_a\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|result[4]~191_combout\,
	datab => \MUX_MDR~input_o\,
	datac => \inst|altsyncram_component|auto_generated|q_a\(4),
	combout => \inst23|$00000|auto_generated|result_node[4]~3_combout\);

-- Location: LCCOMB_X30_Y36_N30
\inst7|Add0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Add0~7_combout\ = (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst23|$00000|auto_generated|result_node[4]~3_combout\)))) # (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[0]~input_o\,
	datab => \SelBus[1]~input_o\,
	datac => \SelBus[3]~input_o\,
	datad => \inst23|$00000|auto_generated|result_node[4]~3_combout\,
	combout => \inst7|Add0~7_combout\);

-- Location: LCCOMB_X36_Y36_N22
\inst7|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Add0~6_combout\ = \inst7|Regist\(4) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Regist\(4),
	datac => \SelBus[3]~input_o\,
	datad => \SelBus[1]~input_o\,
	combout => \inst7|Add0~6_combout\);

-- Location: LCCOMB_X35_Y36_N4
\inst7|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Add0~8_combout\ = \inst7|Regist\(3) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SelBus[3]~input_o\,
	datac => \SelBus[1]~input_o\,
	datad => \inst7|Regist\(3),
	combout => \inst7|Add0~8_combout\);

-- Location: LCCOMB_X27_Y36_N6
\inst23|$00000|auto_generated|result_node[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst23|$00000|auto_generated|result_node[3]~4_combout\ = (\MUX_MDR~input_o\ & ((\inst12|result[3]~201_combout\))) # (!\MUX_MDR~input_o\ & (\inst|altsyncram_component|auto_generated|q_a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MUX_MDR~input_o\,
	datac => \inst|altsyncram_component|auto_generated|q_a\(3),
	datad => \inst12|result[3]~201_combout\,
	combout => \inst23|$00000|auto_generated|result_node[3]~4_combout\);

-- Location: LCCOMB_X27_Y36_N20
\inst7|Add0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Add0~9_combout\ = (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst23|$00000|auto_generated|result_node[3]~4_combout\)))) # (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[1]~input_o\,
	datab => \SelBus[0]~input_o\,
	datac => \SelBus[3]~input_o\,
	datad => \inst23|$00000|auto_generated|result_node[3]~4_combout\,
	combout => \inst7|Add0~9_combout\);

-- Location: LCCOMB_X32_Y36_N28
\inst23|$00000|auto_generated|result_node[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst23|$00000|auto_generated|result_node[2]~5_combout\ = (\MUX_MDR~input_o\ & ((\inst12|result[2]~211_combout\))) # (!\MUX_MDR~input_o\ & (\inst|altsyncram_component|auto_generated|q_a\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_MDR~input_o\,
	datac => \inst|altsyncram_component|auto_generated|q_a\(2),
	datad => \inst12|result[2]~211_combout\,
	combout => \inst23|$00000|auto_generated|result_node[2]~5_combout\);

-- Location: LCCOMB_X32_Y36_N18
\inst7|Add0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Add0~11_combout\ = (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst23|$00000|auto_generated|result_node[2]~5_combout\)))) # (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[3]~input_o\,
	datab => \SelBus[0]~input_o\,
	datac => \SelBus[1]~input_o\,
	datad => \inst23|$00000|auto_generated|result_node[2]~5_combout\,
	combout => \inst7|Add0~11_combout\);

-- Location: LCCOMB_X35_Y36_N10
\inst7|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Add0~10_combout\ = \inst7|Regist\(2) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010110010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Regist\(2),
	datab => \SelBus[3]~input_o\,
	datac => \SelBus[1]~input_o\,
	combout => \inst7|Add0~10_combout\);

-- Location: LCCOMB_X34_Y36_N0
\inst7|Add0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Add0~13_combout\ = (\MUX_MDR~input_o\ & ((\inst12|result[1]~221_combout\))) # (!\MUX_MDR~input_o\ & (\inst|altsyncram_component|auto_generated|q_a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MUX_MDR~input_o\,
	datac => \inst|altsyncram_component|auto_generated|q_a\(1),
	datad => \inst12|result[1]~221_combout\,
	combout => \inst7|Add0~13_combout\);

-- Location: LCCOMB_X34_Y36_N26
\inst7|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Add0~14_combout\ = (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst7|Add0~13_combout\)))) # (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[0]~input_o\,
	datab => \SelBus[3]~input_o\,
	datac => \SelBus[1]~input_o\,
	datad => \inst7|Add0~13_combout\,
	combout => \inst7|Add0~14_combout\);

-- Location: LCCOMB_X36_Y36_N16
\inst7|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Add0~12_combout\ = \inst7|Regist\(1) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SelBus[1]~input_o\,
	datac => \SelBus[3]~input_o\,
	datad => \inst7|Regist\(1),
	combout => \inst7|Add0~12_combout\);

-- Location: LCCOMB_X36_Y36_N10
\inst7|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Add0~16_combout\ = \inst7|Regist\(0) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SelBus[1]~input_o\,
	datac => \SelBus[3]~input_o\,
	datad => \inst7|Regist\(0),
	combout => \inst7|Add0~16_combout\);

-- Location: LCCOMB_X31_Y37_N10
\inst7|Add0~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Add0~15_combout\ = (\inst1|Add0~15_combout\) # ((\MUX_MDR~input_o\ & ((\inst12|result[0]~231_combout\))) # (!\MUX_MDR~input_o\ & (\inst|altsyncram_component|auto_generated|q_a\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_MDR~input_o\,
	datab => \inst1|Add0~15_combout\,
	datac => \inst|altsyncram_component|auto_generated|q_a\(0),
	datad => \inst12|result[0]~231_combout\,
	combout => \inst7|Add0~15_combout\);

-- Location: LCCOMB_X34_Y36_N8
\inst7|Add0~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Add0~17_combout\ = (\inst7|Add0~16_combout\ & (\inst7|Add0~15_combout\ & VCC)) # (!\inst7|Add0~16_combout\ & (\inst7|Add0~15_combout\ $ (VCC)))
-- \inst7|Add0~18\ = CARRY((!\inst7|Add0~16_combout\ & \inst7|Add0~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add0~16_combout\,
	datab => \inst7|Add0~15_combout\,
	datad => VCC,
	combout => \inst7|Add0~17_combout\,
	cout => \inst7|Add0~18\);

-- Location: LCCOMB_X34_Y36_N10
\inst7|Add0~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Add0~19_combout\ = (\inst7|Add0~14_combout\ & ((\inst7|Add0~12_combout\ & (!\inst7|Add0~18\)) # (!\inst7|Add0~12_combout\ & (\inst7|Add0~18\ & VCC)))) # (!\inst7|Add0~14_combout\ & ((\inst7|Add0~12_combout\ & ((\inst7|Add0~18\) # (GND))) # 
-- (!\inst7|Add0~12_combout\ & (!\inst7|Add0~18\))))
-- \inst7|Add0~20\ = CARRY((\inst7|Add0~14_combout\ & (\inst7|Add0~12_combout\ & !\inst7|Add0~18\)) # (!\inst7|Add0~14_combout\ & ((\inst7|Add0~12_combout\) # (!\inst7|Add0~18\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add0~14_combout\,
	datab => \inst7|Add0~12_combout\,
	datad => VCC,
	cin => \inst7|Add0~18\,
	combout => \inst7|Add0~19_combout\,
	cout => \inst7|Add0~20\);

-- Location: LCCOMB_X34_Y36_N12
\inst7|Add0~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Add0~21_combout\ = ((\inst7|Add0~11_combout\ $ (\inst7|Add0~10_combout\ $ (\inst7|Add0~20\)))) # (GND)
-- \inst7|Add0~22\ = CARRY((\inst7|Add0~11_combout\ & ((!\inst7|Add0~20\) # (!\inst7|Add0~10_combout\))) # (!\inst7|Add0~11_combout\ & (!\inst7|Add0~10_combout\ & !\inst7|Add0~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add0~11_combout\,
	datab => \inst7|Add0~10_combout\,
	datad => VCC,
	cin => \inst7|Add0~20\,
	combout => \inst7|Add0~21_combout\,
	cout => \inst7|Add0~22\);

-- Location: LCCOMB_X34_Y36_N14
\inst7|Add0~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Add0~23_combout\ = (\inst7|Add0~8_combout\ & ((\inst7|Add0~9_combout\ & (!\inst7|Add0~22\)) # (!\inst7|Add0~9_combout\ & ((\inst7|Add0~22\) # (GND))))) # (!\inst7|Add0~8_combout\ & ((\inst7|Add0~9_combout\ & (\inst7|Add0~22\ & VCC)) # 
-- (!\inst7|Add0~9_combout\ & (!\inst7|Add0~22\))))
-- \inst7|Add0~24\ = CARRY((\inst7|Add0~8_combout\ & ((!\inst7|Add0~22\) # (!\inst7|Add0~9_combout\))) # (!\inst7|Add0~8_combout\ & (!\inst7|Add0~9_combout\ & !\inst7|Add0~22\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add0~8_combout\,
	datab => \inst7|Add0~9_combout\,
	datad => VCC,
	cin => \inst7|Add0~22\,
	combout => \inst7|Add0~23_combout\,
	cout => \inst7|Add0~24\);

-- Location: LCCOMB_X34_Y36_N16
\inst7|Add0~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Add0~25_combout\ = ((\inst7|Add0~7_combout\ $ (\inst7|Add0~6_combout\ $ (\inst7|Add0~24\)))) # (GND)
-- \inst7|Add0~26\ = CARRY((\inst7|Add0~7_combout\ & ((!\inst7|Add0~24\) # (!\inst7|Add0~6_combout\))) # (!\inst7|Add0~7_combout\ & (!\inst7|Add0~6_combout\ & !\inst7|Add0~24\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add0~7_combout\,
	datab => \inst7|Add0~6_combout\,
	datad => VCC,
	cin => \inst7|Add0~24\,
	combout => \inst7|Add0~25_combout\,
	cout => \inst7|Add0~26\);

-- Location: LCCOMB_X34_Y36_N18
\inst7|Add0~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Add0~27_combout\ = (\inst7|Add0~5_combout\ & ((\inst7|Add0~4_combout\ & (!\inst7|Add0~26\)) # (!\inst7|Add0~4_combout\ & (\inst7|Add0~26\ & VCC)))) # (!\inst7|Add0~5_combout\ & ((\inst7|Add0~4_combout\ & ((\inst7|Add0~26\) # (GND))) # 
-- (!\inst7|Add0~4_combout\ & (!\inst7|Add0~26\))))
-- \inst7|Add0~28\ = CARRY((\inst7|Add0~5_combout\ & (\inst7|Add0~4_combout\ & !\inst7|Add0~26\)) # (!\inst7|Add0~5_combout\ & ((\inst7|Add0~4_combout\) # (!\inst7|Add0~26\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add0~5_combout\,
	datab => \inst7|Add0~4_combout\,
	datad => VCC,
	cin => \inst7|Add0~26\,
	combout => \inst7|Add0~27_combout\,
	cout => \inst7|Add0~28\);

-- Location: LCCOMB_X31_Y36_N18
\inst7|Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Mux2~1_combout\ = (\inst2|Regist[4]~1_combout\ & (((\inst7|Mux2~0_combout\)))) # (!\inst2|Regist[4]~1_combout\ & ((\inst7|Mux2~0_combout\ & ((\inst7|Add0~27_combout\))) # (!\inst7|Mux2~0_combout\ & 
-- (\inst23|$00000|auto_generated|result_node[5]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~1_combout\,
	datab => \inst23|$00000|auto_generated|result_node[5]~2_combout\,
	datac => \inst7|Mux2~0_combout\,
	datad => \inst7|Add0~27_combout\,
	combout => \inst7|Mux2~1_combout\);

-- Location: LCCOMB_X31_Y36_N8
\inst7|Mux2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Mux2~2_combout\ = (\inst8|Mux6~2_combout\ & (\inst2|Regist[4]~0_combout\ & (\inst7|Regist\(6)))) # (!\inst8|Mux6~2_combout\ & ((\inst7|Mux2~1_combout\) # ((\inst2|Regist[4]~0_combout\ & \inst7|Regist\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Mux6~2_combout\,
	datab => \inst2|Regist[4]~0_combout\,
	datac => \inst7|Regist\(6),
	datad => \inst7|Mux2~1_combout\,
	combout => \inst7|Mux2~2_combout\);

-- Location: LCCOMB_X26_Y38_N22
\inst21|Mux15~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst21|Mux15~9_combout\ = (!\SelRegD[0]~input_o\ & (\SelRegD[3]~input_o\ & (!\SelRegD[1]~input_o\ & !\SelRegD[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelRegD[0]~input_o\,
	datab => \SelRegD[3]~input_o\,
	datac => \SelRegD[1]~input_o\,
	datad => \SelRegD[2]~input_o\,
	combout => \inst21|Mux15~9_combout\);

-- Location: LCCOMB_X30_Y38_N20
\inst7|Regist[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Regist[7]~0_combout\ = (\EnDec~input_o\ & (\inst8|Regist[0]~0_combout\ & \inst21|Mux15~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EnDec~input_o\,
	datac => \inst8|Regist[0]~0_combout\,
	datad => \inst21|Mux15~9_combout\,
	combout => \inst7|Regist[7]~0_combout\);

-- Location: FF_X31_Y36_N9
\inst7|Regist[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|Mux2~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst7|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|Regist\(5));

-- Location: LCCOMB_X34_Y36_N28
\inst7|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Mux3~0_combout\ = (\inst2|Regist[4]~2_combout\ & ((\inst2|Regist[4]~1_combout\) # ((\inst23|$00000|auto_generated|result_node[4]~3_combout\)))) # (!\inst2|Regist[4]~2_combout\ & (!\inst2|Regist[4]~1_combout\ & ((\inst7|Add0~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~2_combout\,
	datab => \inst2|Regist[4]~1_combout\,
	datac => \inst23|$00000|auto_generated|result_node[4]~3_combout\,
	datad => \inst7|Add0~25_combout\,
	combout => \inst7|Mux3~0_combout\);

-- Location: LCCOMB_X34_Y36_N6
\inst7|Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Mux3~1_combout\ = (\inst2|Regist[4]~1_combout\ & ((\inst7|Mux3~0_combout\ & ((!\inst7|Regist\(4)))) # (!\inst7|Mux3~0_combout\ & (\inst7|Regist\(3))))) # (!\inst2|Regist[4]~1_combout\ & (((\inst7|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Regist\(3),
	datab => \inst2|Regist[4]~1_combout\,
	datac => \inst7|Regist\(4),
	datad => \inst7|Mux3~0_combout\,
	combout => \inst7|Mux3~1_combout\);

-- Location: LCCOMB_X34_Y36_N4
\inst7|Mux3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Mux3~2_combout\ = (\inst8|Mux6~2_combout\ & (\inst7|Regist\(5) & (\inst2|Regist[4]~0_combout\))) # (!\inst8|Mux6~2_combout\ & ((\inst7|Mux3~1_combout\) # ((\inst7|Regist\(5) & \inst2|Regist[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Mux6~2_combout\,
	datab => \inst7|Regist\(5),
	datac => \inst2|Regist[4]~0_combout\,
	datad => \inst7|Mux3~1_combout\,
	combout => \inst7|Mux3~2_combout\);

-- Location: FF_X34_Y36_N5
\inst7|Regist[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|Mux3~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst7|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|Regist\(4));

-- Location: LCCOMB_X34_Y36_N24
\inst7|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Mux4~0_combout\ = (\inst2|Regist[4]~2_combout\ & (((\inst2|Regist[4]~1_combout\)))) # (!\inst2|Regist[4]~2_combout\ & ((\inst2|Regist[4]~1_combout\ & (\inst7|Regist\(2))) # (!\inst2|Regist[4]~1_combout\ & ((\inst7|Add0~23_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Regist\(2),
	datab => \inst2|Regist[4]~2_combout\,
	datac => \inst7|Add0~23_combout\,
	datad => \inst2|Regist[4]~1_combout\,
	combout => \inst7|Mux4~0_combout\);

-- Location: LCCOMB_X34_Y36_N2
\inst7|Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Mux4~1_combout\ = (\inst2|Regist[4]~2_combout\ & ((\inst7|Mux4~0_combout\ & ((!\inst7|Regist\(3)))) # (!\inst7|Mux4~0_combout\ & (\inst23|$00000|auto_generated|result_node[3]~4_combout\)))) # (!\inst2|Regist[4]~2_combout\ & 
-- (((\inst7|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~2_combout\,
	datab => \inst23|$00000|auto_generated|result_node[3]~4_combout\,
	datac => \inst7|Regist\(3),
	datad => \inst7|Mux4~0_combout\,
	combout => \inst7|Mux4~1_combout\);

-- Location: LCCOMB_X34_Y36_N30
\inst7|Mux4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Mux4~2_combout\ = (\inst8|Mux6~2_combout\ & (\inst2|Regist[4]~0_combout\ & (\inst7|Regist\(4)))) # (!\inst8|Mux6~2_combout\ & ((\inst7|Mux4~1_combout\) # ((\inst2|Regist[4]~0_combout\ & \inst7|Regist\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Mux6~2_combout\,
	datab => \inst2|Regist[4]~0_combout\,
	datac => \inst7|Regist\(4),
	datad => \inst7|Mux4~1_combout\,
	combout => \inst7|Mux4~2_combout\);

-- Location: FF_X34_Y36_N31
\inst7|Regist[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|Mux4~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst7|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|Regist\(3));

-- Location: LCCOMB_X35_Y36_N20
\inst7|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Mux5~0_combout\ = (\inst2|Regist[4]~1_combout\ & (((\inst2|Regist[4]~2_combout\)))) # (!\inst2|Regist[4]~1_combout\ & ((\inst2|Regist[4]~2_combout\ & (\inst23|$00000|auto_generated|result_node[2]~5_combout\)) # (!\inst2|Regist[4]~2_combout\ & 
-- ((\inst7|Add0~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~1_combout\,
	datab => \inst23|$00000|auto_generated|result_node[2]~5_combout\,
	datac => \inst2|Regist[4]~2_combout\,
	datad => \inst7|Add0~21_combout\,
	combout => \inst7|Mux5~0_combout\);

-- Location: LCCOMB_X35_Y36_N2
\inst7|Mux5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Mux5~1_combout\ = (\inst2|Regist[4]~1_combout\ & ((\inst7|Mux5~0_combout\ & ((!\inst7|Regist\(2)))) # (!\inst7|Mux5~0_combout\ & (\inst7|Regist\(1))))) # (!\inst2|Regist[4]~1_combout\ & (((\inst7|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~1_combout\,
	datab => \inst7|Regist\(1),
	datac => \inst7|Regist\(2),
	datad => \inst7|Mux5~0_combout\,
	combout => \inst7|Mux5~1_combout\);

-- Location: LCCOMB_X35_Y36_N30
\inst7|Mux5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Mux5~2_combout\ = (\inst2|Regist[4]~0_combout\ & ((\inst7|Regist\(3)) # ((!\inst8|Mux6~2_combout\ & \inst7|Mux5~1_combout\)))) # (!\inst2|Regist[4]~0_combout\ & (((!\inst8|Mux6~2_combout\ & \inst7|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~0_combout\,
	datab => \inst7|Regist\(3),
	datac => \inst8|Mux6~2_combout\,
	datad => \inst7|Mux5~1_combout\,
	combout => \inst7|Mux5~2_combout\);

-- Location: FF_X35_Y36_N31
\inst7|Regist[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|Mux5~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst7|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|Regist\(2));

-- Location: LCCOMB_X36_Y36_N30
\inst23|$00000|auto_generated|result_node[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst23|$00000|auto_generated|result_node[1]~6_combout\ = (\MUX_MDR~input_o\ & (\inst12|result[1]~221_combout\)) # (!\MUX_MDR~input_o\ & ((\inst|altsyncram_component|auto_generated|q_a\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_MDR~input_o\,
	datab => \inst12|result[1]~221_combout\,
	datac => \inst|altsyncram_component|auto_generated|q_a\(1),
	combout => \inst23|$00000|auto_generated|result_node[1]~6_combout\);

-- Location: LCCOMB_X35_Y36_N12
\inst7|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Mux6~0_combout\ = (\inst2|Regist[4]~1_combout\ & ((\inst7|Regist\(0)) # ((\inst2|Regist[4]~2_combout\)))) # (!\inst2|Regist[4]~1_combout\ & (((!\inst2|Regist[4]~2_combout\ & \inst7|Add0~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~1_combout\,
	datab => \inst7|Regist\(0),
	datac => \inst2|Regist[4]~2_combout\,
	datad => \inst7|Add0~19_combout\,
	combout => \inst7|Mux6~0_combout\);

-- Location: LCCOMB_X35_Y36_N6
\inst7|Mux6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Mux6~1_combout\ = (\inst2|Regist[4]~2_combout\ & ((\inst7|Mux6~0_combout\ & ((!\inst7|Regist\(1)))) # (!\inst7|Mux6~0_combout\ & (\inst23|$00000|auto_generated|result_node[1]~6_combout\)))) # (!\inst2|Regist[4]~2_combout\ & 
-- (((\inst7|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|$00000|auto_generated|result_node[1]~6_combout\,
	datab => \inst7|Regist\(1),
	datac => \inst2|Regist[4]~2_combout\,
	datad => \inst7|Mux6~0_combout\,
	combout => \inst7|Mux6~1_combout\);

-- Location: LCCOMB_X35_Y36_N28
\inst7|Mux6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Mux6~2_combout\ = (\inst2|Regist[4]~0_combout\ & ((\inst7|Regist\(2)) # ((!\inst8|Mux6~2_combout\ & \inst7|Mux6~1_combout\)))) # (!\inst2|Regist[4]~0_combout\ & (!\inst8|Mux6~2_combout\ & ((\inst7|Mux6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~0_combout\,
	datab => \inst8|Mux6~2_combout\,
	datac => \inst7|Regist\(2),
	datad => \inst7|Mux6~1_combout\,
	combout => \inst7|Mux6~2_combout\);

-- Location: FF_X35_Y36_N29
\inst7|Regist[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|Mux6~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst7|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|Regist\(1));

-- Location: LCCOMB_X36_Y36_N28
\inst23|$00000|auto_generated|result_node[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst23|$00000|auto_generated|result_node[0]~7_combout\ = (\MUX_MDR~input_o\ & ((\inst12|result[0]~231_combout\))) # (!\MUX_MDR~input_o\ & (\inst|altsyncram_component|auto_generated|q_a\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_MDR~input_o\,
	datab => \inst|altsyncram_component|auto_generated|q_a\(0),
	datac => \inst12|result[0]~231_combout\,
	combout => \inst23|$00000|auto_generated|result_node[0]~7_combout\);

-- Location: LCCOMB_X35_Y36_N16
\inst7|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Mux7~0_combout\ = (\inst6|Regist[0]~2_combout\ & ((\inst7|Regist\(7)) # ((\inst6|Regist[0]~1_combout\)))) # (!\inst6|Regist[0]~2_combout\ & (((!\inst6|Regist[0]~1_combout\ & \inst23|$00000|auto_generated|result_node[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Regist[0]~2_combout\,
	datab => \inst7|Regist\(7),
	datac => \inst6|Regist[0]~1_combout\,
	datad => \inst23|$00000|auto_generated|result_node[0]~7_combout\,
	combout => \inst7|Mux7~0_combout\);

-- Location: LCCOMB_X35_Y36_N22
\inst7|Mux7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Mux7~1_combout\ = (\inst6|Regist[0]~1_combout\ & ((\inst7|Mux7~0_combout\ & ((\inst7|Regist\(1)))) # (!\inst7|Mux7~0_combout\ & (!\inst7|Regist\(0))))) # (!\inst6|Regist[0]~1_combout\ & (((\inst7|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Regist\(0),
	datab => \inst7|Regist\(1),
	datac => \inst6|Regist[0]~1_combout\,
	datad => \inst7|Mux7~0_combout\,
	combout => \inst7|Mux7~1_combout\);

-- Location: LCCOMB_X35_Y36_N14
\inst7|Mux7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Mux7~2_combout\ = (\inst8|Mux7~2_combout\ & (\inst6|Regist[0]~0_combout\ & ((\inst7|Add0~17_combout\)))) # (!\inst8|Mux7~2_combout\ & ((\inst7|Mux7~1_combout\) # ((\inst6|Regist[0]~0_combout\ & \inst7|Add0~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Mux7~2_combout\,
	datab => \inst6|Regist[0]~0_combout\,
	datac => \inst7|Mux7~1_combout\,
	datad => \inst7|Add0~17_combout\,
	combout => \inst7|Mux7~2_combout\);

-- Location: FF_X35_Y36_N15
\inst7|Regist[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|Mux7~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst7|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|Regist\(0));

-- Location: LCCOMB_X32_Y37_N18
\inst23|$00000|auto_generated|result_node[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst23|$00000|auto_generated|result_node[7]~0_combout\ = (\MUX_MDR~input_o\ & ((\inst12|result[7]~161_combout\))) # (!\MUX_MDR~input_o\ & (\inst|altsyncram_component|auto_generated|q_a\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_MDR~input_o\,
	datac => \inst|altsyncram_component|auto_generated|q_a\(7),
	datad => \inst12|result[7]~161_combout\,
	combout => \inst23|$00000|auto_generated|result_node[7]~0_combout\);

-- Location: LCCOMB_X35_Y36_N8
\inst7|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Mux0~0_combout\ = (\inst6|Regist[0]~2_combout\ & ((\inst3|Regist[7]~0_combout\) # ((\inst7|Regist\(0))))) # (!\inst6|Regist[0]~2_combout\ & (!\inst3|Regist[7]~0_combout\ & ((\inst23|$00000|auto_generated|result_node[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Regist[0]~2_combout\,
	datab => \inst3|Regist[7]~0_combout\,
	datac => \inst7|Regist\(0),
	datad => \inst23|$00000|auto_generated|result_node[7]~0_combout\,
	combout => \inst7|Mux0~0_combout\);

-- Location: LCCOMB_X35_Y36_N26
\inst7|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Mux0~1_combout\ = (\inst3|Regist[7]~0_combout\ & ((\inst7|Mux0~0_combout\ & (\inst7|Regist\(6))) # (!\inst7|Mux0~0_combout\ & ((!\inst7|Regist\(7)))))) # (!\inst3|Regist[7]~0_combout\ & (((\inst7|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Regist\(6),
	datab => \inst3|Regist[7]~0_combout\,
	datac => \inst7|Mux0~0_combout\,
	datad => \inst7|Regist\(7),
	combout => \inst7|Mux0~1_combout\);

-- Location: LCCOMB_X37_Y36_N28
\inst7|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Add0~0_combout\ = \inst7|Regist\(7) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SelBus[1]~input_o\,
	datac => \SelBus[3]~input_o\,
	datad => \inst7|Regist\(7),
	combout => \inst7|Add0~0_combout\);

-- Location: LCCOMB_X32_Y37_N0
\inst7|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Add0~1_combout\ = (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst23|$00000|auto_generated|result_node[7]~0_combout\)))) # (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[0]~input_o\,
	datab => \SelBus[3]~input_o\,
	datac => \SelBus[1]~input_o\,
	datad => \inst23|$00000|auto_generated|result_node[7]~0_combout\,
	combout => \inst7|Add0~1_combout\);

-- Location: LCCOMB_X32_Y36_N16
\inst23|$00000|auto_generated|result_node[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst23|$00000|auto_generated|result_node[6]~1_combout\ = (\MUX_MDR~input_o\ & ((\inst12|result[6]~171_combout\))) # (!\MUX_MDR~input_o\ & (\inst|altsyncram_component|auto_generated|q_a\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_MDR~input_o\,
	datab => \inst|altsyncram_component|auto_generated|q_a\(6),
	datac => \inst12|result[6]~171_combout\,
	combout => \inst23|$00000|auto_generated|result_node[6]~1_combout\);

-- Location: LCCOMB_X32_Y36_N2
\inst7|Add0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Add0~3_combout\ = (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst23|$00000|auto_generated|result_node[6]~1_combout\)))) # (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[3]~input_o\,
	datab => \SelBus[0]~input_o\,
	datac => \SelBus[1]~input_o\,
	datad => \inst23|$00000|auto_generated|result_node[6]~1_combout\,
	combout => \inst7|Add0~3_combout\);

-- Location: LCCOMB_X37_Y36_N10
\inst7|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Add0~2_combout\ = \inst7|Regist\(6) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010110010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Regist\(6),
	datab => \SelBus[1]~input_o\,
	datac => \SelBus[3]~input_o\,
	combout => \inst7|Add0~2_combout\);

-- Location: LCCOMB_X34_Y36_N20
\inst7|Add0~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Add0~29_combout\ = ((\inst7|Add0~3_combout\ $ (\inst7|Add0~2_combout\ $ (\inst7|Add0~28\)))) # (GND)
-- \inst7|Add0~30\ = CARRY((\inst7|Add0~3_combout\ & ((!\inst7|Add0~28\) # (!\inst7|Add0~2_combout\))) # (!\inst7|Add0~3_combout\ & (!\inst7|Add0~2_combout\ & !\inst7|Add0~28\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add0~3_combout\,
	datab => \inst7|Add0~2_combout\,
	datad => VCC,
	cin => \inst7|Add0~28\,
	combout => \inst7|Add0~29_combout\,
	cout => \inst7|Add0~30\);

-- Location: LCCOMB_X34_Y36_N22
\inst7|Add0~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Add0~31_combout\ = \inst7|Add0~0_combout\ $ (\inst7|Add0~30\ $ (!\inst7|Add0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Add0~0_combout\,
	datad => \inst7|Add0~1_combout\,
	cin => \inst7|Add0~30\,
	combout => \inst7|Add0~31_combout\);

-- Location: LCCOMB_X35_Y36_N0
\inst7|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Mux0~2_combout\ = (\inst6|Mux0~0_combout\ & (\inst6|Regist[0]~0_combout\ & ((\inst7|Add0~31_combout\)))) # (!\inst6|Mux0~0_combout\ & ((\inst7|Mux0~1_combout\) # ((\inst6|Regist[0]~0_combout\ & \inst7|Add0~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mux0~0_combout\,
	datab => \inst6|Regist[0]~0_combout\,
	datac => \inst7|Mux0~1_combout\,
	datad => \inst7|Add0~31_combout\,
	combout => \inst7|Mux0~2_combout\);

-- Location: FF_X35_Y36_N1
\inst7|Regist[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|Mux0~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst7|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|Regist\(7));

-- Location: LCCOMB_X31_Y36_N22
\inst7|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Mux1~0_combout\ = (\inst2|Regist[4]~1_combout\ & ((\inst2|Regist[4]~2_combout\ & ((!\inst7|Regist\(6)))) # (!\inst2|Regist[4]~2_combout\ & (\inst7|Regist\(5))))) # (!\inst2|Regist[4]~1_combout\ & (((!\inst2|Regist[4]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~1_combout\,
	datab => \inst7|Regist\(5),
	datac => \inst7|Regist\(6),
	datad => \inst2|Regist[4]~2_combout\,
	combout => \inst7|Mux1~0_combout\);

-- Location: LCCOMB_X31_Y36_N28
\inst7|Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Mux1~1_combout\ = (\inst2|Regist[4]~1_combout\ & (((\inst7|Mux1~0_combout\)))) # (!\inst2|Regist[4]~1_combout\ & ((\inst7|Mux1~0_combout\ & ((\inst7|Add0~29_combout\))) # (!\inst7|Mux1~0_combout\ & 
-- (\inst23|$00000|auto_generated|result_node[6]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~1_combout\,
	datab => \inst23|$00000|auto_generated|result_node[6]~1_combout\,
	datac => \inst7|Mux1~0_combout\,
	datad => \inst7|Add0~29_combout\,
	combout => \inst7|Mux1~1_combout\);

-- Location: LCCOMB_X31_Y36_N4
\inst7|Mux1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Mux1~2_combout\ = (\inst8|Mux6~2_combout\ & (\inst2|Regist[4]~0_combout\ & (\inst7|Regist\(7)))) # (!\inst8|Mux6~2_combout\ & ((\inst7|Mux1~1_combout\) # ((\inst2|Regist[4]~0_combout\ & \inst7|Regist\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Mux6~2_combout\,
	datab => \inst2|Regist[4]~0_combout\,
	datac => \inst7|Regist\(7),
	datad => \inst7|Mux1~1_combout\,
	combout => \inst7|Mux1~2_combout\);

-- Location: FF_X31_Y36_N5
\inst7|Regist[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|Mux1~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst7|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|Regist\(6));

-- Location: LCCOMB_X31_Y36_N10
\inst12|result[6]~167\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|result[6]~167_combout\ = (\inst12|_~36_combout\ & ((\inst14|Regist\(6)) # ((\inst12|_~37_combout\ & \inst7|Regist\(6))))) # (!\inst12|_~36_combout\ & (\inst12|_~37_combout\ & (\inst7|Regist\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|_~36_combout\,
	datab => \inst12|_~37_combout\,
	datac => \inst7|Regist\(6),
	datad => \inst14|Regist\(6),
	combout => \inst12|result[6]~167_combout\);

-- Location: LCCOMB_X29_Y37_N22
\inst12|result[6]~164\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|result[6]~164_combout\ = (\inst12|result[6]~171_combout\ & ((\inst12|_~29_combout\) # ((\inst12|_~28_combout\ & \inst18|Regist\(6))))) # (!\inst12|result[6]~171_combout\ & (\inst12|_~28_combout\ & ((\inst18|Regist\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|result[6]~171_combout\,
	datab => \inst12|_~28_combout\,
	datac => \inst12|_~29_combout\,
	datad => \inst18|Regist\(6),
	combout => \inst12|result[6]~164_combout\);

-- Location: LCCOMB_X25_Y37_N2
\inst12|result[6]~233\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|result[6]~233_combout\ = (\inst12|_~20_combout\ & (!\muxSel[2]~input_o\ & (!\muxSel[1]~input_o\ & \inst6|Regist\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|_~20_combout\,
	datab => \muxSel[2]~input_o\,
	datac => \muxSel[1]~input_o\,
	datad => \inst6|Regist\(6),
	combout => \inst12|result[6]~233_combout\);

-- Location: LCCOMB_X25_Y37_N30
\inst12|result[6]~162\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|result[6]~162_combout\ = (\inst12|_~21_combout\ & ((\inst9|Regist\(6)) # ((\inst12|_~22_combout\ & \inst17|Regist\(6))))) # (!\inst12|_~21_combout\ & (\inst12|_~22_combout\ & ((\inst17|Regist\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|_~21_combout\,
	datab => \inst12|_~22_combout\,
	datac => \inst9|Regist\(6),
	datad => \inst17|Regist\(6),
	combout => \inst12|result[6]~162_combout\);

-- Location: LCCOMB_X25_Y37_N10
\inst12|result[6]~163\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|result[6]~163_combout\ = (\inst12|_~25_combout\ & ((\inst1|Regist\(6)) # ((\inst12|_~24_combout\ & \inst10|Regist\(6))))) # (!\inst12|_~25_combout\ & (\inst12|_~24_combout\ & ((\inst10|Regist\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|_~25_combout\,
	datab => \inst12|_~24_combout\,
	datac => \inst1|Regist\(6),
	datad => \inst10|Regist\(6),
	combout => \inst12|result[6]~163_combout\);

-- Location: LCCOMB_X25_Y37_N24
\inst12|result[6]~165\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|result[6]~165_combout\ = (\inst12|result[6]~164_combout\) # ((\inst12|result[6]~233_combout\) # ((\inst12|result[6]~162_combout\) # (\inst12|result[6]~163_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|result[6]~164_combout\,
	datab => \inst12|result[6]~233_combout\,
	datac => \inst12|result[6]~162_combout\,
	datad => \inst12|result[6]~163_combout\,
	combout => \inst12|result[6]~165_combout\);

-- Location: LCCOMB_X32_Y36_N8
\inst12|result[6]~166\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|result[6]~166_combout\ = (\inst12|_~35_combout\ & ((\inst11|Regist\(6)) # ((\inst12|_~34_combout\ & \inst5|Regist\(6))))) # (!\inst12|_~35_combout\ & (\inst12|_~34_combout\ & (\inst5|Regist\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|_~35_combout\,
	datab => \inst12|_~34_combout\,
	datac => \inst5|Regist\(6),
	datad => \inst11|Regist\(6),
	combout => \inst12|result[6]~166_combout\);

-- Location: LCCOMB_X31_Y35_N0
\inst12|result[6]~169\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|result[6]~169_combout\ = (\inst12|_~38_combout\ & ((\inst2|Regist\(6)) # ((\inst12|_~32_combout\ & \inst20|Regist\(6))))) # (!\inst12|_~38_combout\ & (\inst12|_~32_combout\ & ((\inst20|Regist\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|_~38_combout\,
	datab => \inst12|_~32_combout\,
	datac => \inst2|Regist\(6),
	datad => \inst20|Regist\(6),
	combout => \inst12|result[6]~169_combout\);

-- Location: LCCOMB_X32_Y36_N6
\inst12|result[6]~168\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|result[6]~168_combout\ = (\inst12|_~31_combout\ & ((\muxSel[2]~input_o\ & (\inst|altsyncram_component|auto_generated|q_a\(6))) # (!\muxSel[2]~input_o\ & ((\inst19|Regist\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \muxSel[2]~input_o\,
	datab => \inst12|_~31_combout\,
	datac => \inst|altsyncram_component|auto_generated|q_a\(6),
	datad => \inst19|Regist\(6),
	combout => \inst12|result[6]~168_combout\);

-- Location: LCCOMB_X32_Y36_N12
\inst12|result[6]~170\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|result[6]~170_combout\ = (\inst12|result[6]~169_combout\) # ((\inst12|result[6]~168_combout\) # ((\inst8|Regist\(6) & \inst12|_~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Regist\(6),
	datab => \inst12|_~33_combout\,
	datac => \inst12|result[6]~169_combout\,
	datad => \inst12|result[6]~168_combout\,
	combout => \inst12|result[6]~170_combout\);

-- Location: LCCOMB_X32_Y36_N26
\inst12|result[6]~171\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|result[6]~171_combout\ = (\inst12|result[6]~167_combout\) # ((\inst12|result[6]~165_combout\) # ((\inst12|result[6]~166_combout\) # (\inst12|result[6]~170_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|result[6]~167_combout\,
	datab => \inst12|result[6]~165_combout\,
	datac => \inst12|result[6]~166_combout\,
	datad => \inst12|result[6]~170_combout\,
	combout => \inst12|result[6]~171_combout\);

-- Location: LCCOMB_X25_Y37_N28
\inst13|$00000|auto_generated|result_node[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|$00000|auto_generated|result_node[6]~1_combout\ = (\MUX_MAR~input_o\ & (\inst17|Regist\(6))) # (!\MUX_MAR~input_o\ & ((\inst12|result[6]~171_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_MAR~input_o\,
	datab => \inst17|Regist\(6),
	datac => \inst12|result[6]~171_combout\,
	combout => \inst13|$00000|auto_generated|result_node[6]~1_combout\);

-- Location: LCCOMB_X25_Y37_N14
\inst1|Add0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~3_combout\ = (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst13|$00000|auto_generated|result_node[6]~1_combout\)))) # (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[1]~input_o\,
	datab => \SelBus[3]~input_o\,
	datac => \SelBus[0]~input_o\,
	datad => \inst13|$00000|auto_generated|result_node[6]~1_combout\,
	combout => \inst1|Add0~3_combout\);

-- Location: LCCOMB_X26_Y37_N28
\inst1|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~32_combout\ = \inst1|Add0~0_combout\ $ (\inst1|Add0~31\ $ (!\inst1|Add0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~0_combout\,
	datad => \inst1|Add0~1_combout\,
	cin => \inst1|Add0~31\,
	combout => \inst1|Add0~32_combout\);

-- Location: LCCOMB_X25_Y36_N4
\inst1|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Mux0~0_combout\ = (\inst3|Regist[7]~0_combout\ & (\inst6|Regist[0]~2_combout\)) # (!\inst3|Regist[7]~0_combout\ & ((\inst6|Regist[0]~2_combout\ & (\inst1|Regist\(0))) # (!\inst6|Regist[0]~2_combout\ & 
-- ((\inst13|$00000|auto_generated|result_node[7]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Regist[7]~0_combout\,
	datab => \inst6|Regist[0]~2_combout\,
	datac => \inst1|Regist\(0),
	datad => \inst13|$00000|auto_generated|result_node[7]~0_combout\,
	combout => \inst1|Mux0~0_combout\);

-- Location: LCCOMB_X25_Y36_N2
\inst1|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Mux0~1_combout\ = (\inst3|Regist[7]~0_combout\ & ((\inst1|Mux0~0_combout\ & (\inst1|Regist\(6))) # (!\inst1|Mux0~0_combout\ & ((!\inst1|Regist\(7)))))) # (!\inst3|Regist[7]~0_combout\ & (((\inst1|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Regist[7]~0_combout\,
	datab => \inst1|Regist\(6),
	datac => \inst1|Mux0~0_combout\,
	datad => \inst1|Regist\(7),
	combout => \inst1|Mux0~1_combout\);

-- Location: LCCOMB_X25_Y36_N12
\inst1|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Mux0~2_combout\ = (\inst6|Regist[0]~0_combout\ & ((\inst1|Add0~32_combout\) # ((!\inst6|Mux0~0_combout\ & \inst1|Mux0~1_combout\)))) # (!\inst6|Regist[0]~0_combout\ & (!\inst6|Mux0~0_combout\ & ((\inst1|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Regist[0]~0_combout\,
	datab => \inst6|Mux0~0_combout\,
	datac => \inst1|Add0~32_combout\,
	datad => \inst1|Mux0~1_combout\,
	combout => \inst1|Mux0~2_combout\);

-- Location: FF_X25_Y36_N13
\inst1|Regist[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|Mux0~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst1|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Regist\(7));

-- Location: LCCOMB_X25_Y35_N30
\inst12|result[7]~153\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|result[7]~153_combout\ = (\inst1|Regist\(7) & ((\inst12|_~25_combout\) # ((\inst12|_~24_combout\ & \inst10|Regist\(7))))) # (!\inst1|Regist\(7) & (((\inst12|_~24_combout\ & \inst10|Regist\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Regist\(7),
	datab => \inst12|_~25_combout\,
	datac => \inst12|_~24_combout\,
	datad => \inst10|Regist\(7),
	combout => \inst12|result[7]~153_combout\);

-- Location: LCCOMB_X27_Y35_N2
\inst12|result[7]~152\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|result[7]~152_combout\ = (\inst12|_~22_combout\ & ((\inst17|Regist\(7)) # ((\inst12|_~21_combout\ & \inst9|Regist\(7))))) # (!\inst12|_~22_combout\ & (\inst12|_~21_combout\ & ((\inst9|Regist\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|_~22_combout\,
	datab => \inst12|_~21_combout\,
	datac => \inst17|Regist\(7),
	datad => \inst9|Regist\(7),
	combout => \inst12|result[7]~152_combout\);

-- Location: LCCOMB_X29_Y35_N26
\inst12|result[7]~232\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|result[7]~232_combout\ = (!\muxSel[1]~input_o\ & (\inst12|_~20_combout\ & (!\muxSel[2]~input_o\ & \inst6|Regist\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \muxSel[1]~input_o\,
	datab => \inst12|_~20_combout\,
	datac => \muxSel[2]~input_o\,
	datad => \inst6|Regist\(7),
	combout => \inst12|result[7]~232_combout\);

-- Location: LCCOMB_X29_Y37_N26
\inst12|result[7]~154\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|result[7]~154_combout\ = (\inst12|_~28_combout\ & ((\inst18|Regist\(7)) # ((\inst12|_~29_combout\ & \inst12|result[7]~161_combout\)))) # (!\inst12|_~28_combout\ & (((\inst12|_~29_combout\ & \inst12|result[7]~161_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|_~28_combout\,
	datab => \inst18|Regist\(7),
	datac => \inst12|_~29_combout\,
	datad => \inst12|result[7]~161_combout\,
	combout => \inst12|result[7]~154_combout\);

-- Location: LCCOMB_X29_Y35_N28
\inst12|result[7]~155\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|result[7]~155_combout\ = (\inst12|result[7]~153_combout\) # ((\inst12|result[7]~152_combout\) # ((\inst12|result[7]~232_combout\) # (\inst12|result[7]~154_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|result[7]~153_combout\,
	datab => \inst12|result[7]~152_combout\,
	datac => \inst12|result[7]~232_combout\,
	datad => \inst12|result[7]~154_combout\,
	combout => \inst12|result[7]~155_combout\);

-- Location: LCCOMB_X34_Y38_N30
\inst12|result[7]~156\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|result[7]~156_combout\ = (\inst12|_~35_combout\ & ((\inst11|Regist\(7)) # ((\inst12|_~34_combout\ & \inst5|Regist\(7))))) # (!\inst12|_~35_combout\ & (\inst12|_~34_combout\ & ((\inst5|Regist\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|_~35_combout\,
	datab => \inst12|_~34_combout\,
	datac => \inst11|Regist\(7),
	datad => \inst5|Regist\(7),
	combout => \inst12|result[7]~156_combout\);

-- Location: LCCOMB_X32_Y37_N28
\inst12|result[7]~157\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|result[7]~157_combout\ = (\inst12|_~37_combout\ & ((\inst7|Regist\(7)) # ((\inst12|_~36_combout\ & \inst14|Regist\(7))))) # (!\inst12|_~37_combout\ & (\inst12|_~36_combout\ & (\inst14|Regist\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|_~37_combout\,
	datab => \inst12|_~36_combout\,
	datac => \inst14|Regist\(7),
	datad => \inst7|Regist\(7),
	combout => \inst12|result[7]~157_combout\);

-- Location: LCCOMB_X31_Y35_N6
\inst12|result[7]~159\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|result[7]~159_combout\ = (\inst12|_~38_combout\ & ((\inst2|Regist\(7)) # ((\inst12|_~32_combout\ & \inst20|Regist\(7))))) # (!\inst12|_~38_combout\ & (\inst12|_~32_combout\ & ((\inst20|Regist\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|_~38_combout\,
	datab => \inst12|_~32_combout\,
	datac => \inst2|Regist\(7),
	datad => \inst20|Regist\(7),
	combout => \inst12|result[7]~159_combout\);

-- Location: LCCOMB_X32_Y35_N18
\inst12|result[7]~158\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|result[7]~158_combout\ = (\inst12|_~31_combout\ & ((\muxSel[2]~input_o\ & (\inst|altsyncram_component|auto_generated|q_a\(7))) # (!\muxSel[2]~input_o\ & ((\inst19|Regist\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \muxSel[2]~input_o\,
	datab => \inst12|_~31_combout\,
	datac => \inst|altsyncram_component|auto_generated|q_a\(7),
	datad => \inst19|Regist\(7),
	combout => \inst12|result[7]~158_combout\);

-- Location: LCCOMB_X32_Y35_N4
\inst12|result[7]~160\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|result[7]~160_combout\ = (\inst12|result[7]~159_combout\) # ((\inst12|result[7]~158_combout\) # ((\inst12|_~33_combout\ & \inst8|Regist\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|_~33_combout\,
	datab => \inst8|Regist\(7),
	datac => \inst12|result[7]~159_combout\,
	datad => \inst12|result[7]~158_combout\,
	combout => \inst12|result[7]~160_combout\);

-- Location: LCCOMB_X29_Y37_N24
\inst12|result[7]~161\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|result[7]~161_combout\ = (\inst12|result[7]~155_combout\) # ((\inst12|result[7]~156_combout\) # ((\inst12|result[7]~157_combout\) # (\inst12|result[7]~160_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|result[7]~155_combout\,
	datab => \inst12|result[7]~156_combout\,
	datac => \inst12|result[7]~157_combout\,
	datad => \inst12|result[7]~160_combout\,
	combout => \inst12|result[7]~161_combout\);

-- Location: LCCOMB_X24_Y35_N2
\inst17|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Mux0~0_combout\ = (\inst3|Regist[7]~0_combout\ & (\inst6|Regist[0]~2_combout\)) # (!\inst3|Regist[7]~0_combout\ & ((\inst6|Regist[0]~2_combout\ & (\inst17|Regist\(0))) # (!\inst6|Regist[0]~2_combout\ & ((\inst12|result[7]~161_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Regist[7]~0_combout\,
	datab => \inst6|Regist[0]~2_combout\,
	datac => \inst17|Regist\(0),
	datad => \inst12|result[7]~161_combout\,
	combout => \inst17|Mux0~0_combout\);

-- Location: LCCOMB_X24_Y35_N24
\inst17|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Mux0~1_combout\ = (\inst3|Regist[7]~0_combout\ & ((\inst17|Mux0~0_combout\ & ((\inst17|Regist\(6)))) # (!\inst17|Mux0~0_combout\ & (!\inst17|Regist\(7))))) # (!\inst3|Regist[7]~0_combout\ & (((\inst17|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Regist[7]~0_combout\,
	datab => \inst17|Regist\(7),
	datac => \inst17|Regist\(6),
	datad => \inst17|Mux0~0_combout\,
	combout => \inst17|Mux0~1_combout\);

-- Location: LCCOMB_X29_Y35_N14
\inst17|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Add0~0_combout\ = \inst17|Regist\(7) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst17|Regist\(7),
	datac => \SelBus[1]~input_o\,
	datad => \SelBus[3]~input_o\,
	combout => \inst17|Add0~0_combout\);

-- Location: LCCOMB_X32_Y35_N24
\inst17|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Add0~1_combout\ = \inst17|Regist\(6) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SelBus[3]~input_o\,
	datac => \SelBus[1]~input_o\,
	datad => \inst17|Regist\(6),
	combout => \inst17|Add0~1_combout\);

-- Location: LCCOMB_X31_Y35_N20
\inst17|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Add0~2_combout\ = \inst17|Regist\(5) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001110010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[3]~input_o\,
	datab => \inst17|Regist\(5),
	datac => \SelBus[1]~input_o\,
	combout => \inst17|Add0~2_combout\);

-- Location: LCCOMB_X31_Y35_N22
\inst17|Add0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Add0~3_combout\ = \inst17|Regist\(4) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SelBus[1]~input_o\,
	datac => \SelBus[3]~input_o\,
	datad => \inst17|Regist\(4),
	combout => \inst17|Add0~3_combout\);

-- Location: LCCOMB_X29_Y35_N4
\inst17|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Add0~4_combout\ = \inst17|Regist\(3) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SelBus[1]~input_o\,
	datac => \inst17|Regist\(3),
	datad => \SelBus[3]~input_o\,
	combout => \inst17|Add0~4_combout\);

-- Location: LCCOMB_X31_Y35_N24
\inst17|Add0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Add0~5_combout\ = \inst17|Regist\(2) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SelBus[1]~input_o\,
	datac => \SelBus[3]~input_o\,
	datad => \inst17|Regist\(2),
	combout => \inst17|Add0~5_combout\);

-- Location: LCCOMB_X29_Y35_N10
\inst17|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Add0~6_combout\ = \inst17|Regist\(1) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Regist\(1),
	datac => \SelBus[1]~input_o\,
	datad => \SelBus[3]~input_o\,
	combout => \inst17|Add0~6_combout\);

-- Location: LCCOMB_X24_Y35_N4
\inst17|Add0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Add0~7_combout\ = \inst17|Regist\(0) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011110000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[1]~input_o\,
	datab => \SelBus[3]~input_o\,
	datac => \inst17|Regist\(0),
	combout => \inst17|Add0~7_combout\);

-- Location: LCCOMB_X30_Y35_N4
\inst17|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Add0~8_combout\ = (\inst8|Add0~0_combout\ & (\inst17|Add0~7_combout\ $ (GND))) # (!\inst8|Add0~0_combout\ & (!\inst17|Add0~7_combout\ & VCC))
-- \inst17|Add0~9\ = CARRY((\inst8|Add0~0_combout\ & !\inst17|Add0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add0~0_combout\,
	datab => \inst17|Add0~7_combout\,
	datad => VCC,
	combout => \inst17|Add0~8_combout\,
	cout => \inst17|Add0~9\);

-- Location: LCCOMB_X30_Y35_N6
\inst17|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Add0~10_combout\ = (\inst17|Add0~6_combout\ & ((\inst8|Add0~5_combout\ & (!\inst17|Add0~9\)) # (!\inst8|Add0~5_combout\ & ((\inst17|Add0~9\) # (GND))))) # (!\inst17|Add0~6_combout\ & ((\inst8|Add0~5_combout\ & (\inst17|Add0~9\ & VCC)) # 
-- (!\inst8|Add0~5_combout\ & (!\inst17|Add0~9\))))
-- \inst17|Add0~11\ = CARRY((\inst17|Add0~6_combout\ & ((!\inst17|Add0~9\) # (!\inst8|Add0~5_combout\))) # (!\inst17|Add0~6_combout\ & (!\inst8|Add0~5_combout\ & !\inst17|Add0~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Add0~6_combout\,
	datab => \inst8|Add0~5_combout\,
	datad => VCC,
	cin => \inst17|Add0~9\,
	combout => \inst17|Add0~10_combout\,
	cout => \inst17|Add0~11\);

-- Location: LCCOMB_X30_Y35_N8
\inst17|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Add0~12_combout\ = ((\inst8|Add0~9_combout\ $ (\inst17|Add0~5_combout\ $ (\inst17|Add0~11\)))) # (GND)
-- \inst17|Add0~13\ = CARRY((\inst8|Add0~9_combout\ & ((!\inst17|Add0~11\) # (!\inst17|Add0~5_combout\))) # (!\inst8|Add0~9_combout\ & (!\inst17|Add0~5_combout\ & !\inst17|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add0~9_combout\,
	datab => \inst17|Add0~5_combout\,
	datad => VCC,
	cin => \inst17|Add0~11\,
	combout => \inst17|Add0~12_combout\,
	cout => \inst17|Add0~13\);

-- Location: LCCOMB_X30_Y35_N10
\inst17|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Add0~14_combout\ = (\inst8|Add0~13_combout\ & ((\inst17|Add0~4_combout\ & (!\inst17|Add0~13\)) # (!\inst17|Add0~4_combout\ & (\inst17|Add0~13\ & VCC)))) # (!\inst8|Add0~13_combout\ & ((\inst17|Add0~4_combout\ & ((\inst17|Add0~13\) # (GND))) # 
-- (!\inst17|Add0~4_combout\ & (!\inst17|Add0~13\))))
-- \inst17|Add0~15\ = CARRY((\inst8|Add0~13_combout\ & (\inst17|Add0~4_combout\ & !\inst17|Add0~13\)) # (!\inst8|Add0~13_combout\ & ((\inst17|Add0~4_combout\) # (!\inst17|Add0~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add0~13_combout\,
	datab => \inst17|Add0~4_combout\,
	datad => VCC,
	cin => \inst17|Add0~13\,
	combout => \inst17|Add0~14_combout\,
	cout => \inst17|Add0~15\);

-- Location: LCCOMB_X30_Y35_N12
\inst17|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Add0~16_combout\ = ((\inst17|Add0~3_combout\ $ (\inst8|Add0~17_combout\ $ (\inst17|Add0~15\)))) # (GND)
-- \inst17|Add0~17\ = CARRY((\inst17|Add0~3_combout\ & (\inst8|Add0~17_combout\ & !\inst17|Add0~15\)) # (!\inst17|Add0~3_combout\ & ((\inst8|Add0~17_combout\) # (!\inst17|Add0~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Add0~3_combout\,
	datab => \inst8|Add0~17_combout\,
	datad => VCC,
	cin => \inst17|Add0~15\,
	combout => \inst17|Add0~16_combout\,
	cout => \inst17|Add0~17\);

-- Location: LCCOMB_X30_Y35_N14
\inst17|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Add0~18_combout\ = (\inst17|Add0~2_combout\ & ((\inst8|Add0~21_combout\ & (!\inst17|Add0~17\)) # (!\inst8|Add0~21_combout\ & ((\inst17|Add0~17\) # (GND))))) # (!\inst17|Add0~2_combout\ & ((\inst8|Add0~21_combout\ & (\inst17|Add0~17\ & VCC)) # 
-- (!\inst8|Add0~21_combout\ & (!\inst17|Add0~17\))))
-- \inst17|Add0~19\ = CARRY((\inst17|Add0~2_combout\ & ((!\inst17|Add0~17\) # (!\inst8|Add0~21_combout\))) # (!\inst17|Add0~2_combout\ & (!\inst8|Add0~21_combout\ & !\inst17|Add0~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Add0~2_combout\,
	datab => \inst8|Add0~21_combout\,
	datad => VCC,
	cin => \inst17|Add0~17\,
	combout => \inst17|Add0~18_combout\,
	cout => \inst17|Add0~19\);

-- Location: LCCOMB_X30_Y35_N16
\inst17|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Add0~20_combout\ = ((\inst17|Add0~1_combout\ $ (\inst8|Add0~25_combout\ $ (\inst17|Add0~19\)))) # (GND)
-- \inst17|Add0~21\ = CARRY((\inst17|Add0~1_combout\ & (\inst8|Add0~25_combout\ & !\inst17|Add0~19\)) # (!\inst17|Add0~1_combout\ & ((\inst8|Add0~25_combout\) # (!\inst17|Add0~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Add0~1_combout\,
	datab => \inst8|Add0~25_combout\,
	datad => VCC,
	cin => \inst17|Add0~19\,
	combout => \inst17|Add0~20_combout\,
	cout => \inst17|Add0~21\);

-- Location: LCCOMB_X30_Y35_N18
\inst17|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Add0~22_combout\ = \inst8|Add0~28_combout\ $ (\inst17|Add0~21\ $ (!\inst17|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add0~28_combout\,
	datad => \inst17|Add0~0_combout\,
	cin => \inst17|Add0~21\,
	combout => \inst17|Add0~22_combout\);

-- Location: LCCOMB_X24_Y35_N20
\inst17|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Mux0~2_combout\ = (\inst6|Regist[0]~0_combout\ & ((\inst17|Add0~22_combout\) # ((\inst17|Mux0~1_combout\ & !\inst6|Mux0~0_combout\)))) # (!\inst6|Regist[0]~0_combout\ & (\inst17|Mux0~1_combout\ & (!\inst6|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Regist[0]~0_combout\,
	datab => \inst17|Mux0~1_combout\,
	datac => \inst6|Mux0~0_combout\,
	datad => \inst17|Add0~22_combout\,
	combout => \inst17|Mux0~2_combout\);

-- Location: LCCOMB_X26_Y38_N6
\inst21|Mux15~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst21|Mux15~1_combout\ = (!\SelRegD[0]~input_o\ & (!\SelRegD[3]~input_o\ & (\SelRegD[1]~input_o\ & \SelRegD[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelRegD[0]~input_o\,
	datab => \SelRegD[3]~input_o\,
	datac => \SelRegD[1]~input_o\,
	datad => \SelRegD[2]~input_o\,
	combout => \inst21|Mux15~1_combout\);

-- Location: LCCOMB_X24_Y35_N14
\inst17|Regist[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Regist[7]~0_combout\ = (\inst8|Regist[0]~0_combout\ & (\EnDec~input_o\ & \inst21|Mux15~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|Regist[0]~0_combout\,
	datac => \EnDec~input_o\,
	datad => \inst21|Mux15~1_combout\,
	combout => \inst17|Regist[7]~0_combout\);

-- Location: FF_X24_Y35_N21
\inst17|Regist[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst17|Mux0~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst17|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|Regist\(7));

-- Location: LCCOMB_X30_Y35_N20
\inst17|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Mux1~0_combout\ = (\inst2|Regist[4]~1_combout\ & (((\inst2|Regist[4]~2_combout\)))) # (!\inst2|Regist[4]~1_combout\ & ((\inst2|Regist[4]~2_combout\ & (\inst12|result[6]~171_combout\)) # (!\inst2|Regist[4]~2_combout\ & 
-- ((\inst17|Add0~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~1_combout\,
	datab => \inst12|result[6]~171_combout\,
	datac => \inst2|Regist[4]~2_combout\,
	datad => \inst17|Add0~20_combout\,
	combout => \inst17|Mux1~0_combout\);

-- Location: LCCOMB_X30_Y35_N2
\inst17|Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Mux1~1_combout\ = (\inst2|Regist[4]~1_combout\ & ((\inst17|Mux1~0_combout\ & (!\inst17|Regist\(6))) # (!\inst17|Mux1~0_combout\ & ((\inst17|Regist\(5)))))) # (!\inst2|Regist[4]~1_combout\ & (((\inst17|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~1_combout\,
	datab => \inst17|Regist\(6),
	datac => \inst17|Regist\(5),
	datad => \inst17|Mux1~0_combout\,
	combout => \inst17|Mux1~1_combout\);

-- Location: LCCOMB_X30_Y35_N28
\inst17|Mux1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Mux1~2_combout\ = (\inst17|Regist\(7) & ((\inst2|Regist[4]~0_combout\) # ((!\inst8|Mux6~2_combout\ & \inst17|Mux1~1_combout\)))) # (!\inst17|Regist\(7) & (!\inst8|Mux6~2_combout\ & ((\inst17|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Regist\(7),
	datab => \inst8|Mux6~2_combout\,
	datac => \inst2|Regist[4]~0_combout\,
	datad => \inst17|Mux1~1_combout\,
	combout => \inst17|Mux1~2_combout\);

-- Location: FF_X30_Y35_N29
\inst17|Regist[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst17|Mux1~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst17|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|Regist\(6));

-- Location: LCCOMB_X30_Y35_N0
\inst17|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Mux2~0_combout\ = (\inst2|Regist[4]~1_combout\ & ((\inst2|Regist[4]~2_combout\) # ((\inst17|Regist\(4))))) # (!\inst2|Regist[4]~1_combout\ & (!\inst2|Regist[4]~2_combout\ & (\inst17|Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~1_combout\,
	datab => \inst2|Regist[4]~2_combout\,
	datac => \inst17|Add0~18_combout\,
	datad => \inst17|Regist\(4),
	combout => \inst17|Mux2~0_combout\);

-- Location: LCCOMB_X30_Y35_N26
\inst17|Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Mux2~1_combout\ = (\inst2|Regist[4]~2_combout\ & ((\inst17|Mux2~0_combout\ & (!\inst17|Regist\(5))) # (!\inst17|Mux2~0_combout\ & ((\inst12|result[5]~181_combout\))))) # (!\inst2|Regist[4]~2_combout\ & (((\inst17|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Regist\(5),
	datab => \inst12|result[5]~181_combout\,
	datac => \inst2|Regist[4]~2_combout\,
	datad => \inst17|Mux2~0_combout\,
	combout => \inst17|Mux2~1_combout\);

-- Location: LCCOMB_X30_Y35_N30
\inst17|Mux2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Mux2~2_combout\ = (\inst2|Regist[4]~0_combout\ & ((\inst17|Regist\(6)) # ((\inst17|Mux2~1_combout\ & !\inst8|Mux6~2_combout\)))) # (!\inst2|Regist[4]~0_combout\ & (((\inst17|Mux2~1_combout\ & !\inst8|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~0_combout\,
	datab => \inst17|Regist\(6),
	datac => \inst17|Mux2~1_combout\,
	datad => \inst8|Mux6~2_combout\,
	combout => \inst17|Mux2~2_combout\);

-- Location: FF_X30_Y35_N31
\inst17|Regist[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst17|Mux2~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst17|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|Regist\(5));

-- Location: LCCOMB_X30_Y35_N24
\inst17|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Mux3~0_combout\ = (\inst2|Regist[4]~1_combout\ & (((\inst2|Regist[4]~2_combout\)))) # (!\inst2|Regist[4]~1_combout\ & ((\inst2|Regist[4]~2_combout\ & (\inst12|result[4]~191_combout\)) # (!\inst2|Regist[4]~2_combout\ & 
-- ((\inst17|Add0~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|result[4]~191_combout\,
	datab => \inst2|Regist[4]~1_combout\,
	datac => \inst2|Regist[4]~2_combout\,
	datad => \inst17|Add0~16_combout\,
	combout => \inst17|Mux3~0_combout\);

-- Location: LCCOMB_X29_Y35_N18
\inst17|Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Mux3~1_combout\ = (\inst2|Regist[4]~1_combout\ & ((\inst17|Mux3~0_combout\ & (!\inst17|Regist\(4))) # (!\inst17|Mux3~0_combout\ & ((\inst17|Regist\(3)))))) # (!\inst2|Regist[4]~1_combout\ & (((\inst17|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Regist\(4),
	datab => \inst17|Regist\(3),
	datac => \inst2|Regist[4]~1_combout\,
	datad => \inst17|Mux3~0_combout\,
	combout => \inst17|Mux3~1_combout\);

-- Location: LCCOMB_X29_Y35_N30
\inst17|Mux3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Mux3~2_combout\ = (\inst2|Regist[4]~0_combout\ & ((\inst17|Regist\(5)) # ((!\inst8|Mux6~2_combout\ & \inst17|Mux3~1_combout\)))) # (!\inst2|Regist[4]~0_combout\ & (!\inst8|Mux6~2_combout\ & ((\inst17|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~0_combout\,
	datab => \inst8|Mux6~2_combout\,
	datac => \inst17|Regist\(5),
	datad => \inst17|Mux3~1_combout\,
	combout => \inst17|Mux3~2_combout\);

-- Location: FF_X29_Y35_N31
\inst17|Regist[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst17|Mux3~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst17|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|Regist\(4));

-- Location: LCCOMB_X29_Y35_N20
\inst17|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Mux4~0_combout\ = (\inst2|Regist[4]~1_combout\ & ((\inst17|Regist\(2)) # ((\inst2|Regist[4]~2_combout\)))) # (!\inst2|Regist[4]~1_combout\ & (((\inst17|Add0~14_combout\ & !\inst2|Regist[4]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Regist\(2),
	datab => \inst2|Regist[4]~1_combout\,
	datac => \inst17|Add0~14_combout\,
	datad => \inst2|Regist[4]~2_combout\,
	combout => \inst17|Mux4~0_combout\);

-- Location: LCCOMB_X29_Y35_N2
\inst17|Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Mux4~1_combout\ = (\inst2|Regist[4]~2_combout\ & ((\inst17|Mux4~0_combout\ & ((!\inst17|Regist\(3)))) # (!\inst17|Mux4~0_combout\ & (\inst12|result[3]~201_combout\)))) # (!\inst2|Regist[4]~2_combout\ & (((\inst17|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|result[3]~201_combout\,
	datab => \inst17|Regist\(3),
	datac => \inst2|Regist[4]~2_combout\,
	datad => \inst17|Mux4~0_combout\,
	combout => \inst17|Mux4~1_combout\);

-- Location: LCCOMB_X29_Y35_N8
\inst17|Mux4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Mux4~2_combout\ = (\inst2|Regist[4]~0_combout\ & ((\inst17|Regist\(4)) # ((!\inst8|Mux6~2_combout\ & \inst17|Mux4~1_combout\)))) # (!\inst2|Regist[4]~0_combout\ & (!\inst8|Mux6~2_combout\ & ((\inst17|Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~0_combout\,
	datab => \inst8|Mux6~2_combout\,
	datac => \inst17|Regist\(4),
	datad => \inst17|Mux4~1_combout\,
	combout => \inst17|Mux4~2_combout\);

-- Location: FF_X29_Y35_N9
\inst17|Regist[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst17|Mux4~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst17|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|Regist\(3));

-- Location: LCCOMB_X30_Y35_N22
\inst17|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Mux5~0_combout\ = (\inst2|Regist[4]~2_combout\ & ((\inst12|result[2]~211_combout\) # ((\inst2|Regist[4]~1_combout\)))) # (!\inst2|Regist[4]~2_combout\ & (((\inst17|Add0~12_combout\ & !\inst2|Regist[4]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|result[2]~211_combout\,
	datab => \inst2|Regist[4]~2_combout\,
	datac => \inst17|Add0~12_combout\,
	datad => \inst2|Regist[4]~1_combout\,
	combout => \inst17|Mux5~0_combout\);

-- Location: LCCOMB_X29_Y35_N24
\inst17|Mux5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Mux5~1_combout\ = (\inst2|Regist[4]~1_combout\ & ((\inst17|Mux5~0_combout\ & ((!\inst17|Regist\(2)))) # (!\inst17|Mux5~0_combout\ & (\inst17|Regist\(1))))) # (!\inst2|Regist[4]~1_combout\ & (((\inst17|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Regist\(1),
	datab => \inst2|Regist[4]~1_combout\,
	datac => \inst17|Regist\(2),
	datad => \inst17|Mux5~0_combout\,
	combout => \inst17|Mux5~1_combout\);

-- Location: LCCOMB_X29_Y35_N22
\inst17|Mux5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Mux5~2_combout\ = (\inst2|Regist[4]~0_combout\ & ((\inst17|Regist\(3)) # ((!\inst8|Mux6~2_combout\ & \inst17|Mux5~1_combout\)))) # (!\inst2|Regist[4]~0_combout\ & (!\inst8|Mux6~2_combout\ & ((\inst17|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~0_combout\,
	datab => \inst8|Mux6~2_combout\,
	datac => \inst17|Regist\(3),
	datad => \inst17|Mux5~1_combout\,
	combout => \inst17|Mux5~2_combout\);

-- Location: FF_X29_Y35_N23
\inst17|Regist[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst17|Mux5~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst17|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|Regist\(2));

-- Location: LCCOMB_X29_Y35_N6
\inst17|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Mux6~0_combout\ = (\inst2|Regist[4]~2_combout\ & (((\inst2|Regist[4]~1_combout\)))) # (!\inst2|Regist[4]~2_combout\ & ((\inst2|Regist[4]~1_combout\ & (\inst17|Regist\(0))) # (!\inst2|Regist[4]~1_combout\ & ((\inst17|Add0~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Regist\(0),
	datab => \inst2|Regist[4]~2_combout\,
	datac => \inst2|Regist[4]~1_combout\,
	datad => \inst17|Add0~10_combout\,
	combout => \inst17|Mux6~0_combout\);

-- Location: LCCOMB_X29_Y35_N16
\inst17|Mux6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Mux6~1_combout\ = (\inst2|Regist[4]~2_combout\ & ((\inst17|Mux6~0_combout\ & (!\inst17|Regist\(1))) # (!\inst17|Mux6~0_combout\ & ((\inst12|result[1]~221_combout\))))) # (!\inst2|Regist[4]~2_combout\ & (((\inst17|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Regist\(1),
	datab => \inst2|Regist[4]~2_combout\,
	datac => \inst12|result[1]~221_combout\,
	datad => \inst17|Mux6~0_combout\,
	combout => \inst17|Mux6~1_combout\);

-- Location: LCCOMB_X29_Y35_N12
\inst17|Mux6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Mux6~2_combout\ = (\inst2|Regist[4]~0_combout\ & ((\inst17|Regist\(2)) # ((!\inst8|Mux6~2_combout\ & \inst17|Mux6~1_combout\)))) # (!\inst2|Regist[4]~0_combout\ & (!\inst8|Mux6~2_combout\ & ((\inst17|Mux6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~0_combout\,
	datab => \inst8|Mux6~2_combout\,
	datac => \inst17|Regist\(2),
	datad => \inst17|Mux6~1_combout\,
	combout => \inst17|Mux6~2_combout\);

-- Location: FF_X29_Y35_N13
\inst17|Regist[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst17|Mux6~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst17|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|Regist\(1));

-- Location: LCCOMB_X24_Y35_N0
\inst17|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Mux7~0_combout\ = (\inst6|Regist[0]~1_combout\ & (((\inst6|Regist[0]~2_combout\)))) # (!\inst6|Regist[0]~1_combout\ & ((\inst6|Regist[0]~2_combout\ & ((\inst17|Regist\(7)))) # (!\inst6|Regist[0]~2_combout\ & (\inst12|result[0]~231_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|result[0]~231_combout\,
	datab => \inst17|Regist\(7),
	datac => \inst6|Regist[0]~1_combout\,
	datad => \inst6|Regist[0]~2_combout\,
	combout => \inst17|Mux7~0_combout\);

-- Location: LCCOMB_X24_Y35_N6
\inst17|Mux7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Mux7~1_combout\ = (\inst6|Regist[0]~1_combout\ & ((\inst17|Mux7~0_combout\ & (\inst17|Regist\(1))) # (!\inst17|Mux7~0_combout\ & ((!\inst17|Regist\(0)))))) # (!\inst6|Regist[0]~1_combout\ & (((\inst17|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Regist[0]~1_combout\,
	datab => \inst17|Regist\(1),
	datac => \inst17|Regist\(0),
	datad => \inst17|Mux7~0_combout\,
	combout => \inst17|Mux7~1_combout\);

-- Location: LCCOMB_X24_Y35_N26
\inst17|Mux7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|Mux7~2_combout\ = (\inst17|Mux7~1_combout\ & (((\inst6|Regist[0]~0_combout\ & \inst17|Add0~8_combout\)) # (!\inst8|Mux7~2_combout\))) # (!\inst17|Mux7~1_combout\ & (\inst6|Regist[0]~0_combout\ & ((\inst17|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Mux7~1_combout\,
	datab => \inst6|Regist[0]~0_combout\,
	datac => \inst8|Mux7~2_combout\,
	datad => \inst17|Add0~8_combout\,
	combout => \inst17|Mux7~2_combout\);

-- Location: FF_X24_Y35_N27
\inst17|Regist[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst17|Mux7~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst17|Regist[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|Regist\(0));

-- Location: LCCOMB_X27_Y35_N10
\inst12|result[0]~222\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|result[0]~222_combout\ = (\inst12|_~22_combout\ & ((\inst17|Regist\(0)) # ((\inst12|_~21_combout\ & \inst9|Regist\(0))))) # (!\inst12|_~22_combout\ & (\inst12|_~21_combout\ & ((\inst9|Regist\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|_~22_combout\,
	datab => \inst12|_~21_combout\,
	datac => \inst17|Regist\(0),
	datad => \inst9|Regist\(0),
	combout => \inst12|result[0]~222_combout\);

-- Location: LCCOMB_X27_Y35_N18
\inst12|result[0]~239\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|result[0]~239_combout\ = (!\muxSel[2]~input_o\ & (\inst12|_~20_combout\ & (!\muxSel[1]~input_o\ & \inst6|Regist\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \muxSel[2]~input_o\,
	datab => \inst12|_~20_combout\,
	datac => \muxSel[1]~input_o\,
	datad => \inst6|Regist\(0),
	combout => \inst12|result[0]~239_combout\);

-- Location: LCCOMB_X29_Y37_N0
\inst12|result[0]~224\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|result[0]~224_combout\ = (\inst12|result[0]~231_combout\ & ((\inst12|_~29_combout\) # ((\inst12|_~28_combout\ & \inst18|Regist\(0))))) # (!\inst12|result[0]~231_combout\ & (\inst12|_~28_combout\ & ((\inst18|Regist\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|result[0]~231_combout\,
	datab => \inst12|_~28_combout\,
	datac => \inst12|_~29_combout\,
	datad => \inst18|Regist\(0),
	combout => \inst12|result[0]~224_combout\);

-- Location: LCCOMB_X25_Y35_N14
\inst12|result[0]~223\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|result[0]~223_combout\ = (\inst1|Regist\(0) & ((\inst12|_~25_combout\) # ((\inst12|_~24_combout\ & \inst10|Regist\(0))))) # (!\inst1|Regist\(0) & (((\inst12|_~24_combout\ & \inst10|Regist\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Regist\(0),
	datab => \inst12|_~25_combout\,
	datac => \inst12|_~24_combout\,
	datad => \inst10|Regist\(0),
	combout => \inst12|result[0]~223_combout\);

-- Location: LCCOMB_X27_Y35_N6
\inst12|result[0]~225\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|result[0]~225_combout\ = (\inst12|result[0]~222_combout\) # ((\inst12|result[0]~239_combout\) # ((\inst12|result[0]~224_combout\) # (\inst12|result[0]~223_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|result[0]~222_combout\,
	datab => \inst12|result[0]~239_combout\,
	datac => \inst12|result[0]~224_combout\,
	datad => \inst12|result[0]~223_combout\,
	combout => \inst12|result[0]~225_combout\);

-- Location: LCCOMB_X31_Y37_N20
\inst12|result[0]~227\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|result[0]~227_combout\ = (\inst12|_~36_combout\ & ((\inst14|Regist\(0)) # ((\inst12|_~37_combout\ & \inst7|Regist\(0))))) # (!\inst12|_~36_combout\ & (\inst12|_~37_combout\ & ((\inst7|Regist\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|_~36_combout\,
	datab => \inst12|_~37_combout\,
	datac => \inst14|Regist\(0),
	datad => \inst7|Regist\(0),
	combout => \inst12|result[0]~227_combout\);

-- Location: LCCOMB_X31_Y37_N22
\inst12|result[0]~226\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|result[0]~226_combout\ = (\inst12|_~38_combout\ & ((\inst2|Regist\(0)) # ((\inst12|_~32_combout\ & \inst20|Regist\(0))))) # (!\inst12|_~38_combout\ & (\inst12|_~32_combout\ & (\inst20|Regist\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|_~38_combout\,
	datab => \inst12|_~32_combout\,
	datac => \inst20|Regist\(0),
	datad => \inst2|Regist\(0),
	combout => \inst12|result[0]~226_combout\);

-- Location: LCCOMB_X31_Y37_N4
\inst12|result[0]~229\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|result[0]~229_combout\ = (\inst12|_~35_combout\ & ((\inst11|Regist\(0)) # ((\inst12|_~34_combout\ & \inst5|Regist\(0))))) # (!\inst12|_~35_combout\ & (\inst12|_~34_combout\ & (\inst5|Regist\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|_~35_combout\,
	datab => \inst12|_~34_combout\,
	datac => \inst5|Regist\(0),
	datad => \inst11|Regist\(0),
	combout => \inst12|result[0]~229_combout\);

-- Location: LCCOMB_X31_Y37_N18
\inst12|result[0]~228\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|result[0]~228_combout\ = (\inst12|_~31_combout\ & ((\muxSel[2]~input_o\ & (\inst|altsyncram_component|auto_generated|q_a\(0))) # (!\muxSel[2]~input_o\ & ((\inst19|Regist\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|_~31_combout\,
	datab => \muxSel[2]~input_o\,
	datac => \inst|altsyncram_component|auto_generated|q_a\(0),
	datad => \inst19|Regist\(0),
	combout => \inst12|result[0]~228_combout\);

-- Location: LCCOMB_X31_Y37_N6
\inst12|result[0]~230\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|result[0]~230_combout\ = (\inst12|result[0]~229_combout\) # ((\inst12|result[0]~228_combout\) # ((\inst12|_~33_combout\ & \inst8|Regist\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|_~33_combout\,
	datab => \inst8|Regist\(0),
	datac => \inst12|result[0]~229_combout\,
	datad => \inst12|result[0]~228_combout\,
	combout => \inst12|result[0]~230_combout\);

-- Location: LCCOMB_X31_Y37_N12
\inst12|result[0]~231\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|result[0]~231_combout\ = (\inst12|result[0]~225_combout\) # ((\inst12|result[0]~227_combout\) # ((\inst12|result[0]~226_combout\) # (\inst12|result[0]~230_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|result[0]~225_combout\,
	datab => \inst12|result[0]~227_combout\,
	datac => \inst12|result[0]~226_combout\,
	datad => \inst12|result[0]~230_combout\,
	combout => \inst12|result[0]~231_combout\);

-- Location: LCCOMB_X31_Y34_N16
\inst8|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Add0~0_combout\ = (\SelBus[1]~input_o\) # ((\inst12|result[0]~231_combout\) # (!\SelBus[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[1]~input_o\,
	datab => \SelBus[3]~input_o\,
	datac => \inst12|result[0]~231_combout\,
	combout => \inst8|Add0~0_combout\);

-- Location: LCCOMB_X32_Y34_N12
\inst8|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux7~0_combout\ = (\inst6|Regist[0]~1_combout\ & (\inst6|Regist[0]~2_combout\)) # (!\inst6|Regist[0]~1_combout\ & ((\inst6|Regist[0]~2_combout\ & ((\inst8|Regist\(7)))) # (!\inst6|Regist[0]~2_combout\ & (\inst12|result[0]~231_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Regist[0]~1_combout\,
	datab => \inst6|Regist[0]~2_combout\,
	datac => \inst12|result[0]~231_combout\,
	datad => \inst8|Regist\(7),
	combout => \inst8|Mux7~0_combout\);

-- Location: LCCOMB_X32_Y34_N18
\inst8|Mux7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux7~1_combout\ = (\inst6|Regist[0]~1_combout\ & ((\inst8|Mux7~0_combout\ & ((\inst8|Regist\(1)))) # (!\inst8|Mux7~0_combout\ & (!\inst8|Regist\(0))))) # (!\inst6|Regist[0]~1_combout\ & (((\inst8|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Regist[0]~1_combout\,
	datab => \inst8|Regist\(0),
	datac => \inst8|Regist\(1),
	datad => \inst8|Mux7~0_combout\,
	combout => \inst8|Mux7~1_combout\);

-- Location: LCCOMB_X32_Y34_N28
\inst8|Mux7~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux7~3_combout\ = (\inst8|Mux7~2_combout\ & (\inst6|Regist[0]~0_combout\ & (\inst8|Add0~2_combout\))) # (!\inst8|Mux7~2_combout\ & ((\inst8|Mux7~1_combout\) # ((\inst6|Regist[0]~0_combout\ & \inst8|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Mux7~2_combout\,
	datab => \inst6|Regist[0]~0_combout\,
	datac => \inst8|Add0~2_combout\,
	datad => \inst8|Mux7~1_combout\,
	combout => \inst8|Mux7~3_combout\);

-- Location: FF_X32_Y34_N29
\inst8|Regist[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|Mux7~3_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst8|Regist[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|Regist\(0));

-- Location: LCCOMB_X32_Y34_N24
\inst8|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux0~0_combout\ = (\inst6|Regist[0]~2_combout\ & ((\inst8|Regist\(0)) # ((\inst3|Regist[7]~0_combout\)))) # (!\inst6|Regist[0]~2_combout\ & (((!\inst3|Regist[7]~0_combout\ & \inst12|result[7]~161_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Regist[0]~2_combout\,
	datab => \inst8|Regist\(0),
	datac => \inst3|Regist[7]~0_combout\,
	datad => \inst12|result[7]~161_combout\,
	combout => \inst8|Mux0~0_combout\);

-- Location: LCCOMB_X32_Y34_N26
\inst8|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux0~1_combout\ = (\inst3|Regist[7]~0_combout\ & ((\inst8|Mux0~0_combout\ & (\inst8|Regist\(6))) # (!\inst8|Mux0~0_combout\ & ((!\inst8|Regist\(7)))))) # (!\inst3|Regist[7]~0_combout\ & (((\inst8|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Regist\(6),
	datab => \inst8|Regist\(7),
	datac => \inst3|Regist[7]~0_combout\,
	datad => \inst8|Mux0~0_combout\,
	combout => \inst8|Mux0~1_combout\);

-- Location: LCCOMB_X32_Y34_N2
\inst8|Add0~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Add0~29_combout\ = \inst8|Regist\(7) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[3]~input_o\,
	datac => \SelBus[1]~input_o\,
	datad => \inst8|Regist\(7),
	combout => \inst8|Add0~29_combout\);

-- Location: LCCOMB_X32_Y34_N20
\inst8|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Add0~24_combout\ = \inst8|Regist\(6) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[3]~input_o\,
	datac => \SelBus[1]~input_o\,
	datad => \inst8|Regist\(6),
	combout => \inst8|Add0~24_combout\);

-- Location: LCCOMB_X32_Y34_N10
\inst8|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Add0~20_combout\ = \inst8|Regist\(5) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001110010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[3]~input_o\,
	datab => \inst8|Regist\(5),
	datac => \SelBus[1]~input_o\,
	combout => \inst8|Add0~20_combout\);

-- Location: LCCOMB_X31_Y34_N10
\inst8|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Add0~22_combout\ = (\inst8|Add0~21_combout\ & ((\inst8|Add0~20_combout\ & (!\inst8|Add0~19\)) # (!\inst8|Add0~20_combout\ & (\inst8|Add0~19\ & VCC)))) # (!\inst8|Add0~21_combout\ & ((\inst8|Add0~20_combout\ & ((\inst8|Add0~19\) # (GND))) # 
-- (!\inst8|Add0~20_combout\ & (!\inst8|Add0~19\))))
-- \inst8|Add0~23\ = CARRY((\inst8|Add0~21_combout\ & (\inst8|Add0~20_combout\ & !\inst8|Add0~19\)) # (!\inst8|Add0~21_combout\ & ((\inst8|Add0~20_combout\) # (!\inst8|Add0~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add0~21_combout\,
	datab => \inst8|Add0~20_combout\,
	datad => VCC,
	cin => \inst8|Add0~19\,
	combout => \inst8|Add0~22_combout\,
	cout => \inst8|Add0~23\);

-- Location: LCCOMB_X31_Y34_N12
\inst8|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Add0~26_combout\ = ((\inst8|Add0~24_combout\ $ (\inst8|Add0~25_combout\ $ (\inst8|Add0~23\)))) # (GND)
-- \inst8|Add0~27\ = CARRY((\inst8|Add0~24_combout\ & (\inst8|Add0~25_combout\ & !\inst8|Add0~23\)) # (!\inst8|Add0~24_combout\ & ((\inst8|Add0~25_combout\) # (!\inst8|Add0~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add0~24_combout\,
	datab => \inst8|Add0~25_combout\,
	datad => VCC,
	cin => \inst8|Add0~23\,
	combout => \inst8|Add0~26_combout\,
	cout => \inst8|Add0~27\);

-- Location: LCCOMB_X31_Y34_N14
\inst8|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Add0~30_combout\ = \inst8|Add0~29_combout\ $ (\inst8|Add0~27\ $ (!\inst8|Add0~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add0~29_combout\,
	datad => \inst8|Add0~28_combout\,
	cin => \inst8|Add0~27\,
	combout => \inst8|Add0~30_combout\);

-- Location: LCCOMB_X32_Y34_N0
\inst8|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux0~2_combout\ = (\inst6|Mux0~0_combout\ & (\inst6|Regist[0]~0_combout\ & ((\inst8|Add0~30_combout\)))) # (!\inst6|Mux0~0_combout\ & ((\inst8|Mux0~1_combout\) # ((\inst6|Regist[0]~0_combout\ & \inst8|Add0~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mux0~0_combout\,
	datab => \inst6|Regist[0]~0_combout\,
	datac => \inst8|Mux0~1_combout\,
	datad => \inst8|Add0~30_combout\,
	combout => \inst8|Mux0~2_combout\);

-- Location: FF_X32_Y34_N1
\inst8|Regist[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|Mux0~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst8|Regist[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|Regist\(7));

-- Location: LCCOMB_X31_Y32_N8
\inst8|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux1~0_combout\ = (\inst2|Regist[4]~1_combout\ & (\inst2|Regist[4]~2_combout\ & ((!\inst8|Regist\(6))))) # (!\inst2|Regist[4]~1_combout\ & (((\inst12|result[6]~171_combout\)) # (!\inst2|Regist[4]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~1_combout\,
	datab => \inst2|Regist[4]~2_combout\,
	datac => \inst12|result[6]~171_combout\,
	datad => \inst8|Regist\(6),
	combout => \inst8|Mux1~0_combout\);

-- Location: LCCOMB_X31_Y32_N30
\inst8|Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux1~1_combout\ = (\inst2|Regist[4]~2_combout\ & (\inst8|Mux1~0_combout\)) # (!\inst2|Regist[4]~2_combout\ & ((\inst8|Mux1~0_combout\ & ((\inst8|Add0~26_combout\))) # (!\inst8|Mux1~0_combout\ & (\inst8|Regist\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~2_combout\,
	datab => \inst8|Mux1~0_combout\,
	datac => \inst8|Regist\(5),
	datad => \inst8|Add0~26_combout\,
	combout => \inst8|Mux1~1_combout\);

-- Location: LCCOMB_X31_Y32_N16
\inst8|Mux1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux1~2_combout\ = (\inst8|Mux6~2_combout\ & (\inst8|Regist\(7) & ((\inst2|Regist[4]~0_combout\)))) # (!\inst8|Mux6~2_combout\ & ((\inst8|Mux1~1_combout\) # ((\inst8|Regist\(7) & \inst2|Regist[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Mux6~2_combout\,
	datab => \inst8|Regist\(7),
	datac => \inst8|Mux1~1_combout\,
	datad => \inst2|Regist[4]~0_combout\,
	combout => \inst8|Mux1~2_combout\);

-- Location: FF_X31_Y32_N17
\inst8|Regist[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|Mux1~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst8|Regist[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|Regist\(6));

-- Location: LCCOMB_X31_Y32_N24
\inst8|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux2~0_combout\ = (\inst2|Regist[4]~1_combout\ & (\inst2|Regist[4]~2_combout\)) # (!\inst2|Regist[4]~1_combout\ & ((\inst2|Regist[4]~2_combout\ & (\inst12|result[5]~181_combout\)) # (!\inst2|Regist[4]~2_combout\ & ((\inst8|Add0~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~1_combout\,
	datab => \inst2|Regist[4]~2_combout\,
	datac => \inst12|result[5]~181_combout\,
	datad => \inst8|Add0~22_combout\,
	combout => \inst8|Mux2~0_combout\);

-- Location: LCCOMB_X31_Y32_N18
\inst8|Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux2~1_combout\ = (\inst2|Regist[4]~1_combout\ & ((\inst8|Mux2~0_combout\ & ((!\inst8|Regist\(5)))) # (!\inst8|Mux2~0_combout\ & (\inst8|Regist\(4))))) # (!\inst2|Regist[4]~1_combout\ & (((\inst8|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Regist[4]~1_combout\,
	datab => \inst8|Regist\(4),
	datac => \inst8|Regist\(5),
	datad => \inst8|Mux2~0_combout\,
	combout => \inst8|Mux2~1_combout\);

-- Location: LCCOMB_X31_Y32_N26
\inst8|Mux2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux2~2_combout\ = (\inst8|Mux6~2_combout\ & (\inst8|Regist\(6) & (\inst2|Regist[4]~0_combout\))) # (!\inst8|Mux6~2_combout\ & ((\inst8|Mux2~1_combout\) # ((\inst8|Regist\(6) & \inst2|Regist[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Mux6~2_combout\,
	datab => \inst8|Regist\(6),
	datac => \inst2|Regist[4]~0_combout\,
	datad => \inst8|Mux2~1_combout\,
	combout => \inst8|Mux2~2_combout\);

-- Location: FF_X31_Y32_N27
\inst8|Regist[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|Mux2~2_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \inst8|Regist[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|Regist\(5));

-- Location: LCCOMB_X32_Y34_N30
\inst25|ROM~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst25|ROM~0_combout\ = (!\inst8|Regist\(3) & (!\inst8|Regist\(1) & (!\inst8|Regist\(2) & !\inst8|Regist\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Regist\(3),
	datab => \inst8|Regist\(1),
	datac => \inst8|Regist\(2),
	datad => \inst8|Regist\(0),
	combout => \inst25|ROM~0_combout\);

-- Location: LCCOMB_X32_Y35_N20
\inst25|ROM~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst25|ROM~1_combout\ = (!\inst8|Regist\(5) & (!\inst8|Regist\(4) & (\inst25|ROM~0_combout\ & !\inst8|Regist\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Regist\(5),
	datab => \inst8|Regist\(4),
	datac => \inst25|ROM~0_combout\,
	datad => \inst8|Regist\(6),
	combout => \inst25|ROM~1_combout\);

-- Location: LCCOMB_X41_Y35_N24
\inst25|data_out[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst25|data_out[6]~feeder_combout\ = \inst25|ROM~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst25|ROM~1_combout\,
	combout => \inst25|data_out[6]~feeder_combout\);

-- Location: FF_X41_Y35_N25
\inst25|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst25|data_out[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|data_out\(6));

-- Location: LCCOMB_X37_Y35_N0
\inst25|data_out[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst25|data_out[5]~feeder_combout\ = \inst25|ROM~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst25|ROM~1_combout\,
	combout => \inst25|data_out[5]~feeder_combout\);

-- Location: FF_X37_Y35_N1
\inst25|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst25|data_out[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|data_out\(5));

-- Location: LCCOMB_X41_Y35_N10
\inst25|data_out[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst25|data_out[0]~feeder_combout\ = \inst25|ROM~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst25|ROM~1_combout\,
	combout => \inst25|data_out[0]~feeder_combout\);

-- Location: FF_X41_Y35_N11
\inst25|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst25|data_out[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|data_out\(0));

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

ww_cacheOut(7) <= \cacheOut[7]~output_o\;

ww_cacheOut(6) <= \cacheOut[6]~output_o\;

ww_cacheOut(5) <= \cacheOut[5]~output_o\;

ww_cacheOut(4) <= \cacheOut[4]~output_o\;

ww_cacheOut(3) <= \cacheOut[3]~output_o\;

ww_cacheOut(2) <= \cacheOut[2]~output_o\;

ww_cacheOut(1) <= \cacheOut[1]~output_o\;

ww_cacheOut(0) <= \cacheOut[0]~output_o\;

ww_Outd(7) <= \Outd[7]~output_o\;

ww_Outd(6) <= \Outd[6]~output_o\;

ww_Outd(5) <= \Outd[5]~output_o\;

ww_Outd(4) <= \Outd[4]~output_o\;

ww_Outd(3) <= \Outd[3]~output_o\;

ww_Outd(2) <= \Outd[2]~output_o\;

ww_Outd(1) <= \Outd[1]~output_o\;

ww_Outd(0) <= \Outd[0]~output_o\;
END structure;


