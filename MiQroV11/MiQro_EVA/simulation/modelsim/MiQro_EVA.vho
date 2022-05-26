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

-- DATE "05/25/2022 16:39:19"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
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
	AluSel : IN std_logic_vector(2 DOWNTO 0);
	WR : IN std_logic;
	MUX_RAM : IN std_logic;
	MUX_MAR : IN std_logic;
	MUX_MDR : IN std_logic;
	Destino : IN std_logic_vector(7 DOWNTO 0);
	Fuente : IN std_logic_vector(7 DOWNTO 0);
	MUX_C : IN std_logic;
	dataC : IN std_logic_vector(7 DOWNTO 0);
	muxSel : IN std_logic_vector(5 DOWNTO 0);
	Outd : OUT std_logic_vector(7 DOWNTO 0)
	);
END ElMicro;

-- Design Ports Information
-- cacheOut[7]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cacheOut[6]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cacheOut[5]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cacheOut[4]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cacheOut[3]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cacheOut[2]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cacheOut[1]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cacheOut[0]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Outd[7]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Outd[6]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Outd[5]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Outd[4]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Outd[3]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Outd[2]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Outd[1]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Outd[0]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- muxSel[3]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- muxSel[5]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- muxSel[4]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- muxSel[0]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- muxSel[2]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- muxSel[1]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Destino[7]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fuente[7]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Destino[6]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fuente[6]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Destino[5]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fuente[5]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Destino[4]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fuente[4]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Destino[3]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fuente[3]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Destino[2]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fuente[2]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Destino[1]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fuente[1]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Destino[0]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fuente[0]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SelBus[2]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SelBus[0]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SelBus[3]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SelBus[1]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLR	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SelRegD[2]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SelRegD[1]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SelRegD[0]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SelRegD[3]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EnDec	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MUX_A	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataA[7]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MUX_MDR	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MUX_B	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataB[7]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MUX_C	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataC[7]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AluSel[0]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AluSel[2]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AluSel[1]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WR	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MUX_RAM	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MUX_MAR	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataA[6]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataB[6]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataC[6]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataA[5]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataB[5]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataC[5]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataA[4]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataB[4]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataC[4]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataA[3]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataB[3]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataC[3]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataA[2]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataB[2]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataC[2]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataA[1]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataB[1]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataC[1]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataA[0]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataB[0]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataC[0]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_AluSel : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_WR : std_logic;
SIGNAL ww_MUX_RAM : std_logic;
SIGNAL ww_MUX_MAR : std_logic;
SIGNAL ww_MUX_MDR : std_logic;
SIGNAL ww_Destino : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Fuente : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_MUX_C : std_logic;
SIGNAL ww_dataC : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_muxSel : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_Outd : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputCLKENA0_outclk\ : std_logic;
SIGNAL \SelBus[2]~input_o\ : std_logic;
SIGNAL \SelBus[1]~input_o\ : std_logic;
SIGNAL \SelBus[3]~input_o\ : std_logic;
SIGNAL \SelBus[0]~input_o\ : std_logic;
SIGNAL \inst3|Regist[6]~0_combout\ : std_logic;
SIGNAL \muxSel[4]~input_o\ : std_logic;
SIGNAL \muxSel[2]~input_o\ : std_logic;
SIGNAL \muxSel[5]~input_o\ : std_logic;
SIGNAL \muxSel[1]~input_o\ : std_logic;
SIGNAL \muxSel[3]~input_o\ : std_logic;
SIGNAL \muxSel[0]~input_o\ : std_logic;
SIGNAL \inst16|_~6_combout\ : std_logic;
SIGNAL \inst16|_~8_combout\ : std_logic;
SIGNAL \inst16|_~11_combout\ : std_logic;
SIGNAL \inst16|_~10_combout\ : std_logic;
SIGNAL \inst16|_~9_combout\ : std_logic;
SIGNAL \inst10|Mux4~1_combout\ : std_logic;
SIGNAL \Destino[2]~input_o\ : std_logic;
SIGNAL \inst16|_~14_combout\ : std_logic;
SIGNAL \inst16|_~13_combout\ : std_logic;
SIGNAL \inst16|_~12_combout\ : std_logic;
SIGNAL \inst18|Regist[0]~0_combout\ : std_logic;
SIGNAL \inst18|Regist[0]~2_combout\ : std_logic;
SIGNAL \inst19|Regist[7]~0_combout\ : std_logic;
SIGNAL \inst16|_~0_combout\ : std_logic;
SIGNAL \inst16|_~2_combout\ : std_logic;
SIGNAL \inst16|_~1_combout\ : std_logic;
SIGNAL \inst18|Regist[0]~1_combout\ : std_logic;
SIGNAL \inst18|Regist[0]~3_combout\ : std_logic;
SIGNAL \MUX_MDR~input_o\ : std_logic;
SIGNAL \WR~input_o\ : std_logic;
SIGNAL \MUX_RAM~input_o\ : std_logic;
SIGNAL \MUX_MAR~input_o\ : std_logic;
SIGNAL \Destino[0]~input_o\ : std_logic;
SIGNAL \inst16|result[0]~311_combout\ : std_logic;
SIGNAL \AluSel[0]~input_o\ : std_logic;
SIGNAL \AluSel[1]~input_o\ : std_logic;
SIGNAL \AluSel[2]~input_o\ : std_logic;
SIGNAL \inst24|Mux2~0_combout\ : std_logic;
SIGNAL \inst24|Mux4~0_combout\ : std_logic;
SIGNAL \inst4|Mux4~1_combout\ : std_logic;
SIGNAL \inst4|Mux3~1_combout\ : std_logic;
SIGNAL \inst4|Mux1~0_combout\ : std_logic;
SIGNAL \inst10|Mux2~1_combout\ : std_logic;
SIGNAL \inst10|Mux3~0_combout\ : std_logic;
SIGNAL \inst10|Mux3~1_combout\ : std_logic;
SIGNAL \inst10|Add0~18\ : std_logic;
SIGNAL \inst10|Add0~13_sumout\ : std_logic;
SIGNAL \inst10|Mux3~2_combout\ : std_logic;
SIGNAL \CLR~input_o\ : std_logic;
SIGNAL \CLR~inputCLKENA0_outclk\ : std_logic;
SIGNAL \inst3|Regist[6]~1_combout\ : std_logic;
SIGNAL \EnDec~input_o\ : std_logic;
SIGNAL \inst8|Regist[1]~0_combout\ : std_logic;
SIGNAL \SelRegD[0]~input_o\ : std_logic;
SIGNAL \SelRegD[3]~input_o\ : std_logic;
SIGNAL \inst5|Regist[6]~0_combout\ : std_logic;
SIGNAL \SelRegD[1]~input_o\ : std_logic;
SIGNAL \SelRegD[2]~input_o\ : std_logic;
SIGNAL \inst10|Regist[6]~0_combout\ : std_logic;
SIGNAL \inst10|Add0~14\ : std_logic;
SIGNAL \inst10|Add0~9_sumout\ : std_logic;
SIGNAL \inst10|Mux2~0_combout\ : std_logic;
SIGNAL \inst10|Mux2~2_combout\ : std_logic;
SIGNAL \inst19|Regist[7]~1_combout\ : std_logic;
SIGNAL \inst10|Add0~29_sumout\ : std_logic;
SIGNAL \Destino[1]~input_o\ : std_logic;
SIGNAL \inst17|Mux4~1_combout\ : std_logic;
SIGNAL \inst17|Mux3~0_combout\ : std_logic;
SIGNAL \inst17|Mux3~1_combout\ : std_logic;
SIGNAL \inst17|Add0~30\ : std_logic;
SIGNAL \inst17|Add0~26\ : std_logic;
SIGNAL \inst17|Add0~22\ : std_logic;
SIGNAL \inst17|Add0~18\ : std_logic;
SIGNAL \inst17|Add0~13_sumout\ : std_logic;
SIGNAL \inst17|Mux3~2_combout\ : std_logic;
SIGNAL \inst17|Regist[6]~0_combout\ : std_logic;
SIGNAL \inst17|Mux4~0_combout\ : std_logic;
SIGNAL \inst17|Add0~17_sumout\ : std_logic;
SIGNAL \inst17|Mux4~2_combout\ : std_logic;
SIGNAL \inst17|Add0~21_sumout\ : std_logic;
SIGNAL \inst17|Mux5~0_combout\ : std_logic;
SIGNAL \inst17|Mux5~1_combout\ : std_logic;
SIGNAL \inst17|Add0~25_sumout\ : std_logic;
SIGNAL \inst17|Mux6~0_combout\ : std_logic;
SIGNAL \inst17|Mux6~1_combout\ : std_logic;
SIGNAL \inst13|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|Mux6~1_combout\ : std_logic;
SIGNAL \inst1|Mux6~0_combout\ : std_logic;
SIGNAL \inst1|Add0~30\ : std_logic;
SIGNAL \inst1|Add0~25_sumout\ : std_logic;
SIGNAL \inst1|Mux6~2_combout\ : std_logic;
SIGNAL \inst1|Regist[6]~0_combout\ : std_logic;
SIGNAL \inst16|result[1]~305_combout\ : std_logic;
SIGNAL \inst20|Mux4~1_combout\ : std_logic;
SIGNAL \inst3|Mux7~0_combout\ : std_logic;
SIGNAL \inst3|Mux2~0_combout\ : std_logic;
SIGNAL \inst3|Mux2~1_combout\ : std_logic;
SIGNAL \inst3|Add0~14\ : std_logic;
SIGNAL \inst3|Add0~9_sumout\ : std_logic;
SIGNAL \inst3|Mux2~2_combout\ : std_logic;
SIGNAL \inst8|Regist[1]~1_combout\ : std_logic;
SIGNAL \inst3|Regist[6]~2_combout\ : std_logic;
SIGNAL \inst3|Add0~10\ : std_logic;
SIGNAL \inst3|Add0~5_sumout\ : std_logic;
SIGNAL \inst3|Mux1~1_combout\ : std_logic;
SIGNAL \inst3|Mux1~0_combout\ : std_logic;
SIGNAL \inst3|Mux1~2_combout\ : std_logic;
SIGNAL \inst3|Add0~6\ : std_logic;
SIGNAL \inst3|Add0~1_sumout\ : std_logic;
SIGNAL \inst3|Mux0~0_combout\ : std_logic;
SIGNAL \inst3|Mux0~1_combout\ : std_logic;
SIGNAL \inst19|Regist[7]~2_combout\ : std_logic;
SIGNAL \inst3|Add0~29_sumout\ : std_logic;
SIGNAL \inst3|Mux7~1_combout\ : std_logic;
SIGNAL \inst18|Regist[0]~4_combout\ : std_logic;
SIGNAL \inst3|Add0~30\ : std_logic;
SIGNAL \inst3|Add0~25_sumout\ : std_logic;
SIGNAL \inst3|Mux6~0_combout\ : std_logic;
SIGNAL \inst3|Mux6~1_combout\ : std_logic;
SIGNAL \inst3|Add0~26\ : std_logic;
SIGNAL \inst3|Add0~21_sumout\ : std_logic;
SIGNAL \inst3|Mux5~0_combout\ : std_logic;
SIGNAL \inst3|Mux5~1_combout\ : std_logic;
SIGNAL \inst3|Add0~22\ : std_logic;
SIGNAL \inst3|Add0~17_sumout\ : std_logic;
SIGNAL \inst3|Mux4~1_combout\ : std_logic;
SIGNAL \inst3|Mux4~0_combout\ : std_logic;
SIGNAL \inst3|Mux4~2_combout\ : std_logic;
SIGNAL \inst24|Add0~30\ : std_logic;
SIGNAL \inst24|Add0~31\ : std_logic;
SIGNAL \inst24|Add0~26\ : std_logic;
SIGNAL \inst24|Add0~27\ : std_logic;
SIGNAL \inst24|Add0~22\ : std_logic;
SIGNAL \inst24|Add0~23\ : std_logic;
SIGNAL \inst24|Add0~17_sumout\ : std_logic;
SIGNAL \inst24|Mux5~1_combout\ : std_logic;
SIGNAL \inst24|Add1~30\ : std_logic;
SIGNAL \inst24|Add1~26\ : std_logic;
SIGNAL \inst24|Add1~22\ : std_logic;
SIGNAL \inst24|Add1~17_sumout\ : std_logic;
SIGNAL \inst24|Mux5~0_combout\ : std_logic;
SIGNAL \inst20|Mux4~0_combout\ : std_logic;
SIGNAL \inst24|Mux5~2_combout\ : std_logic;
SIGNAL \inst24|Mux6~1_combout\ : std_logic;
SIGNAL \inst24|Add1~21_sumout\ : std_logic;
SIGNAL \inst24|Add0~21_sumout\ : std_logic;
SIGNAL \inst24|Mux6~2_combout\ : std_logic;
SIGNAL \inst24|Add1~25_sumout\ : std_logic;
SIGNAL \inst24|Mux7~1_combout\ : std_logic;
SIGNAL \inst24|Add0~25_sumout\ : std_logic;
SIGNAL \inst24|Mux7~2_combout\ : std_logic;
SIGNAL \inst24|Add1~29_sumout\ : std_logic;
SIGNAL \inst24|Add0~29_sumout\ : std_logic;
SIGNAL \inst24|Mux8~0_combout\ : std_logic;
SIGNAL \inst20|Add0~30\ : std_logic;
SIGNAL \inst20|Add0~26\ : std_logic;
SIGNAL \inst20|Add0~22\ : std_logic;
SIGNAL \inst20|Add0~17_sumout\ : std_logic;
SIGNAL \inst20|Mux4~2_combout\ : std_logic;
SIGNAL \inst20|Regist[6]~0_combout\ : std_logic;
SIGNAL \inst20|Mux5~1_combout\ : std_logic;
SIGNAL \inst24|Mux6~0_combout\ : std_logic;
SIGNAL \inst20|Mux5~0_combout\ : std_logic;
SIGNAL \inst20|Add0~21_sumout\ : std_logic;
SIGNAL \inst20|Mux5~2_combout\ : std_logic;
SIGNAL \inst20|Mux6~1_combout\ : std_logic;
SIGNAL \inst24|Mux7~0_combout\ : std_logic;
SIGNAL \inst20|Mux6~0_combout\ : std_logic;
SIGNAL \inst20|Add0~25_sumout\ : std_logic;
SIGNAL \inst20|Mux6~2_combout\ : std_logic;
SIGNAL \inst16|result[7]~269_combout\ : std_logic;
SIGNAL \inst16|_~16_combout\ : std_logic;
SIGNAL \inst16|_~15_combout\ : std_logic;
SIGNAL \Fuente[1]~input_o\ : std_logic;
SIGNAL \inst19|Mux1~1_combout\ : std_logic;
SIGNAL \inst19|Mux3~1_combout\ : std_logic;
SIGNAL \inst19|Mux4~1_combout\ : std_logic;
SIGNAL \inst19|Add0~26\ : std_logic;
SIGNAL \inst19|Add0~21_sumout\ : std_logic;
SIGNAL \inst19|Mux5~0_combout\ : std_logic;
SIGNAL \inst19|Mux5~1_combout\ : std_logic;
SIGNAL \inst19|Regist[6]~3_combout\ : std_logic;
SIGNAL \inst19|Mux4~0_combout\ : std_logic;
SIGNAL \inst19|Add0~22\ : std_logic;
SIGNAL \inst19|Add0~17_sumout\ : std_logic;
SIGNAL \inst19|Mux4~2_combout\ : std_logic;
SIGNAL \inst19|Mux3~0_combout\ : std_logic;
SIGNAL \inst19|Add0~18\ : std_logic;
SIGNAL \inst19|Add0~13_sumout\ : std_logic;
SIGNAL \inst19|Mux3~2_combout\ : std_logic;
SIGNAL \inst19|Mux2~0_combout\ : std_logic;
SIGNAL \inst19|Add0~14\ : std_logic;
SIGNAL \inst19|Add0~9_sumout\ : std_logic;
SIGNAL \inst19|Mux2~1_combout\ : std_logic;
SIGNAL \inst19|Mux2~2_combout\ : std_logic;
SIGNAL \inst19|Mux1~0_combout\ : std_logic;
SIGNAL \inst19|Add0~10\ : std_logic;
SIGNAL \inst19|Add0~5_sumout\ : std_logic;
SIGNAL \inst19|Mux1~2_combout\ : std_logic;
SIGNAL \inst19|Mux0~0_combout\ : std_logic;
SIGNAL \inst19|Add0~6\ : std_logic;
SIGNAL \inst19|Add0~1_sumout\ : std_logic;
SIGNAL \inst19|Mux0~1_combout\ : std_logic;
SIGNAL \inst19|Mux7~0_combout\ : std_logic;
SIGNAL \inst19|Add0~29_sumout\ : std_logic;
SIGNAL \inst19|Mux7~1_combout\ : std_logic;
SIGNAL \inst19|Add0~30\ : std_logic;
SIGNAL \inst19|Add0~25_sumout\ : std_logic;
SIGNAL \inst19|Mux6~0_combout\ : std_logic;
SIGNAL \inst19|Mux6~1_combout\ : std_logic;
SIGNAL \inst8|Mux1~1_combout\ : std_logic;
SIGNAL \inst8|Mux1~0_combout\ : std_logic;
SIGNAL \inst8|Add0~14\ : std_logic;
SIGNAL \inst8|Add0~17_sumout\ : std_logic;
SIGNAL \inst8|Mux5~0_combout\ : std_logic;
SIGNAL \inst8|Mux5~1_combout\ : std_logic;
SIGNAL \inst8|Regist[1]~2_combout\ : std_logic;
SIGNAL \inst8|Mux4~0_combout\ : std_logic;
SIGNAL \inst8|Mux4~1_combout\ : std_logic;
SIGNAL \inst8|Add0~18\ : std_logic;
SIGNAL \inst8|Add0~21_sumout\ : std_logic;
SIGNAL \inst8|Mux4~2_combout\ : std_logic;
SIGNAL \inst8|Mux3~0_combout\ : std_logic;
SIGNAL \inst8|Mux3~1_combout\ : std_logic;
SIGNAL \inst8|Add0~22\ : std_logic;
SIGNAL \inst8|Add0~25_sumout\ : std_logic;
SIGNAL \inst8|Mux3~2_combout\ : std_logic;
SIGNAL \inst8|Add0~26\ : std_logic;
SIGNAL \inst8|Add0~2\ : std_logic;
SIGNAL \inst8|Add0~5_sumout\ : std_logic;
SIGNAL \inst8|Mux1~2_combout\ : std_logic;
SIGNAL \inst8|Mux0~0_combout\ : std_logic;
SIGNAL \inst8|Add0~6\ : std_logic;
SIGNAL \inst8|Add0~29_sumout\ : std_logic;
SIGNAL \inst8|Mux0~1_combout\ : std_logic;
SIGNAL \inst8|Add0~9_sumout\ : std_logic;
SIGNAL \inst8|Mux7~0_combout\ : std_logic;
SIGNAL \inst8|Mux7~1_combout\ : std_logic;
SIGNAL \inst8|Add0~10\ : std_logic;
SIGNAL \inst8|Add0~13_sumout\ : std_logic;
SIGNAL \inst8|Mux6~0_combout\ : std_logic;
SIGNAL \inst8|Mux6~1_combout\ : std_logic;
SIGNAL \inst16|result[1]~306_combout\ : std_logic;
SIGNAL \inst16|result[1]~316_combout\ : std_logic;
SIGNAL \inst16|_~7_combout\ : std_logic;
SIGNAL \dataC[1]~input_o\ : std_logic;
SIGNAL \MUX_C~input_o\ : std_logic;
SIGNAL \inst25|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst9|Mux6~1_combout\ : std_logic;
SIGNAL \dataC[0]~input_o\ : std_logic;
SIGNAL \inst25|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \dataC[7]~input_o\ : std_logic;
SIGNAL \inst25|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \dataC[5]~input_o\ : std_logic;
SIGNAL \inst25|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst9|Mux5~0_combout\ : std_logic;
SIGNAL \dataC[2]~input_o\ : std_logic;
SIGNAL \inst25|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst9|Mux5~1_combout\ : std_logic;
SIGNAL \inst9|Add0~26\ : std_logic;
SIGNAL \inst9|Add0~21_sumout\ : std_logic;
SIGNAL \inst9|Mux5~2_combout\ : std_logic;
SIGNAL \inst9|Regist[6]~0_combout\ : std_logic;
SIGNAL \inst9|Mux4~0_combout\ : std_logic;
SIGNAL \dataC[3]~input_o\ : std_logic;
SIGNAL \inst25|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst9|Mux4~1_combout\ : std_logic;
SIGNAL \inst9|Add0~22\ : std_logic;
SIGNAL \inst9|Add0~17_sumout\ : std_logic;
SIGNAL \inst9|Mux4~2_combout\ : std_logic;
SIGNAL \inst9|Mux3~1_combout\ : std_logic;
SIGNAL \dataC[4]~input_o\ : std_logic;
SIGNAL \inst25|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst9|Add0~18\ : std_logic;
SIGNAL \inst9|Add0~13_sumout\ : std_logic;
SIGNAL \inst9|Mux3~0_combout\ : std_logic;
SIGNAL \inst9|Mux2~1_combout\ : std_logic;
SIGNAL \inst9|Add0~14\ : std_logic;
SIGNAL \inst9|Add0~9_sumout\ : std_logic;
SIGNAL \inst9|Mux2~0_combout\ : std_logic;
SIGNAL \inst9|Mux1~1_combout\ : std_logic;
SIGNAL \dataC[6]~input_o\ : std_logic;
SIGNAL \inst25|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst9|Add0~10\ : std_logic;
SIGNAL \inst9|Add0~5_sumout\ : std_logic;
SIGNAL \inst9|Mux1~0_combout\ : std_logic;
SIGNAL \inst9|Mux0~0_combout\ : std_logic;
SIGNAL \inst9|Add0~6\ : std_logic;
SIGNAL \inst9|Add0~1_sumout\ : std_logic;
SIGNAL \inst9|Mux0~1_combout\ : std_logic;
SIGNAL \inst9|Mux7~0_combout\ : std_logic;
SIGNAL \inst9|Add0~29_sumout\ : std_logic;
SIGNAL \inst9|Mux7~1_combout\ : std_logic;
SIGNAL \inst9|Add0~30\ : std_logic;
SIGNAL \inst9|Add0~25_sumout\ : std_logic;
SIGNAL \inst9|Mux6~0_combout\ : std_logic;
SIGNAL \inst9|Mux6~2_combout\ : std_logic;
SIGNAL \inst2|Mux7~0_combout\ : std_logic;
SIGNAL \inst2|Mux1~1_combout\ : std_logic;
SIGNAL \inst2|Add0~10\ : std_logic;
SIGNAL \inst2|Add0~5_sumout\ : std_logic;
SIGNAL \inst2|Mux1~0_combout\ : std_logic;
SIGNAL \inst2|Mux1~2_combout\ : std_logic;
SIGNAL \inst2|Regist[6]~0_combout\ : std_logic;
SIGNAL \inst2|Mux0~0_combout\ : std_logic;
SIGNAL \inst2|Add0~6\ : std_logic;
SIGNAL \inst2|Add0~1_sumout\ : std_logic;
SIGNAL \inst2|Mux0~1_combout\ : std_logic;
SIGNAL \inst2|Add0~29_sumout\ : std_logic;
SIGNAL \inst2|Mux7~1_combout\ : std_logic;
SIGNAL \inst2|Add0~30\ : std_logic;
SIGNAL \inst2|Add0~26\ : std_logic;
SIGNAL \inst2|Add0~22\ : std_logic;
SIGNAL \inst2|Add0~17_sumout\ : std_logic;
SIGNAL \inst2|Mux4~1_combout\ : std_logic;
SIGNAL \inst2|Mux3~1_combout\ : std_logic;
SIGNAL \inst2|Add0~18\ : std_logic;
SIGNAL \inst2|Add0~13_sumout\ : std_logic;
SIGNAL \inst2|Mux3~0_combout\ : std_logic;
SIGNAL \inst2|Mux3~2_combout\ : std_logic;
SIGNAL \inst2|Mux4~0_combout\ : std_logic;
SIGNAL \inst2|Mux4~2_combout\ : std_logic;
SIGNAL \inst2|Add0~21_sumout\ : std_logic;
SIGNAL \inst2|Mux5~0_combout\ : std_logic;
SIGNAL \inst2|Mux5~1_combout\ : std_logic;
SIGNAL \inst2|Add0~25_sumout\ : std_logic;
SIGNAL \inst2|Mux6~0_combout\ : std_logic;
SIGNAL \inst2|Mux6~1_combout\ : std_logic;
SIGNAL \inst16|result[1]~304_combout\ : std_logic;
SIGNAL \inst16|_~4_combout\ : std_logic;
SIGNAL \inst16|_~5_combout\ : std_logic;
SIGNAL \inst16|_~3_combout\ : std_logic;
SIGNAL \inst14|Mux2~1_combout\ : std_logic;
SIGNAL \inst14|Add0~30\ : std_logic;
SIGNAL \inst14|Add0~26\ : std_logic;
SIGNAL \inst14|Add0~21_sumout\ : std_logic;
SIGNAL \inst14|Mux5~0_combout\ : std_logic;
SIGNAL \inst14|Mux5~1_combout\ : std_logic;
SIGNAL \inst14|Regist[6]~0_combout\ : std_logic;
SIGNAL \inst14|Mux4~0_combout\ : std_logic;
SIGNAL \inst14|Mux4~1_combout\ : std_logic;
SIGNAL \inst14|Add0~22\ : std_logic;
SIGNAL \inst14|Add0~17_sumout\ : std_logic;
SIGNAL \inst14|Mux4~2_combout\ : std_logic;
SIGNAL \inst14|Mux3~0_combout\ : std_logic;
SIGNAL \inst14|Mux3~1_combout\ : std_logic;
SIGNAL \inst14|Add0~18\ : std_logic;
SIGNAL \inst14|Add0~13_sumout\ : std_logic;
SIGNAL \inst14|Mux3~2_combout\ : std_logic;
SIGNAL \inst14|Add0~14\ : std_logic;
SIGNAL \inst14|Add0~9_sumout\ : std_logic;
SIGNAL \inst14|Mux2~0_combout\ : std_logic;
SIGNAL \inst14|Mux2~2_combout\ : std_logic;
SIGNAL \inst14|Mux1~0_combout\ : std_logic;
SIGNAL \inst14|Mux1~1_combout\ : std_logic;
SIGNAL \inst14|Add0~10\ : std_logic;
SIGNAL \inst14|Add0~5_sumout\ : std_logic;
SIGNAL \inst14|Mux1~2_combout\ : std_logic;
SIGNAL \inst14|Mux0~0_combout\ : std_logic;
SIGNAL \inst14|Add0~6\ : std_logic;
SIGNAL \inst14|Add0~1_sumout\ : std_logic;
SIGNAL \inst14|Mux0~1_combout\ : std_logic;
SIGNAL \inst14|Add0~29_sumout\ : std_logic;
SIGNAL \inst14|Mux7~0_combout\ : std_logic;
SIGNAL \inst14|Mux7~1_combout\ : std_logic;
SIGNAL \inst14|Add0~25_sumout\ : std_logic;
SIGNAL \inst14|Mux6~0_combout\ : std_logic;
SIGNAL \inst14|Mux6~1_combout\ : std_logic;
SIGNAL \dataB[1]~input_o\ : std_logic;
SIGNAL \MUX_B~input_o\ : std_logic;
SIGNAL \inst200|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst5|Mux6~1_combout\ : std_logic;
SIGNAL \dataB[3]~input_o\ : std_logic;
SIGNAL \inst200|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst5|Mux4~1_combout\ : std_logic;
SIGNAL \dataB[2]~input_o\ : std_logic;
SIGNAL \inst200|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst5|Mux5~1_combout\ : std_logic;
SIGNAL \inst5|Mux5~0_combout\ : std_logic;
SIGNAL \dataB[0]~input_o\ : std_logic;
SIGNAL \inst200|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst5|Add0~30\ : std_logic;
SIGNAL \inst5|Add0~26\ : std_logic;
SIGNAL \inst5|Add0~21_sumout\ : std_logic;
SIGNAL \inst5|Mux5~2_combout\ : std_logic;
SIGNAL \inst5|Regist[6]~1_combout\ : std_logic;
SIGNAL \inst5|Mux4~0_combout\ : std_logic;
SIGNAL \inst5|Add0~22\ : std_logic;
SIGNAL \inst5|Add0~17_sumout\ : std_logic;
SIGNAL \inst5|Mux4~2_combout\ : std_logic;
SIGNAL \inst5|Mux3~1_combout\ : std_logic;
SIGNAL \dataB[4]~input_o\ : std_logic;
SIGNAL \inst200|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst5|Add0~18\ : std_logic;
SIGNAL \inst5|Add0~13_sumout\ : std_logic;
SIGNAL \inst5|Mux3~0_combout\ : std_logic;
SIGNAL \inst5|Mux2~1_combout\ : std_logic;
SIGNAL \dataB[5]~input_o\ : std_logic;
SIGNAL \inst200|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst5|Add0~14\ : std_logic;
SIGNAL \inst5|Add0~9_sumout\ : std_logic;
SIGNAL \inst5|Mux2~0_combout\ : std_logic;
SIGNAL \inst5|Mux1~1_combout\ : std_logic;
SIGNAL \dataB[6]~input_o\ : std_logic;
SIGNAL \inst200|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst5|Add0~10\ : std_logic;
SIGNAL \inst5|Add0~5_sumout\ : std_logic;
SIGNAL \inst5|Mux1~0_combout\ : std_logic;
SIGNAL \dataB[7]~input_o\ : std_logic;
SIGNAL \inst200|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst5|Mux0~0_combout\ : std_logic;
SIGNAL \inst5|Add0~6\ : std_logic;
SIGNAL \inst5|Add0~1_sumout\ : std_logic;
SIGNAL \inst5|Mux0~1_combout\ : std_logic;
SIGNAL \inst5|Mux7~0_combout\ : std_logic;
SIGNAL \inst5|Add0~29_sumout\ : std_logic;
SIGNAL \inst5|Mux7~1_combout\ : std_logic;
SIGNAL \inst5|Mux6~0_combout\ : std_logic;
SIGNAL \inst5|Add0~25_sumout\ : std_logic;
SIGNAL \inst5|Mux6~2_combout\ : std_logic;
SIGNAL \inst18|Mux3~1_combout\ : std_logic;
SIGNAL \inst18|Mux0~0_combout\ : std_logic;
SIGNAL \inst18|Add0~29_sumout\ : std_logic;
SIGNAL \inst18|Mux7~0_combout\ : std_logic;
SIGNAL \inst18|Mux7~1_combout\ : std_logic;
SIGNAL \inst18|Regist[6]~5_combout\ : std_logic;
SIGNAL \inst18|Add0~30\ : std_logic;
SIGNAL \inst18|Add0~26\ : std_logic;
SIGNAL \inst18|Add0~22\ : std_logic;
SIGNAL \inst18|Add0~18\ : std_logic;
SIGNAL \inst18|Add0~14\ : std_logic;
SIGNAL \inst18|Add0~10\ : std_logic;
SIGNAL \inst18|Add0~6\ : std_logic;
SIGNAL \inst18|Add0~1_sumout\ : std_logic;
SIGNAL \inst18|Mux0~1_combout\ : std_logic;
SIGNAL \inst18|Mux1~0_combout\ : std_logic;
SIGNAL \inst18|Mux1~1_combout\ : std_logic;
SIGNAL \inst18|Add0~5_sumout\ : std_logic;
SIGNAL \inst18|Mux1~2_combout\ : std_logic;
SIGNAL \inst18|Mux2~0_combout\ : std_logic;
SIGNAL \inst18|Mux2~1_combout\ : std_logic;
SIGNAL \inst18|Add0~9_sumout\ : std_logic;
SIGNAL \inst18|Mux2~2_combout\ : std_logic;
SIGNAL \inst18|Mux3~0_combout\ : std_logic;
SIGNAL \inst18|Add0~13_sumout\ : std_logic;
SIGNAL \inst18|Mux3~2_combout\ : std_logic;
SIGNAL \inst18|Mux4~0_combout\ : std_logic;
SIGNAL \inst18|Mux4~1_combout\ : std_logic;
SIGNAL \inst18|Add0~17_sumout\ : std_logic;
SIGNAL \inst18|Mux4~2_combout\ : std_logic;
SIGNAL \inst18|Add0~21_sumout\ : std_logic;
SIGNAL \inst18|Mux5~0_combout\ : std_logic;
SIGNAL \inst18|Mux5~1_combout\ : std_logic;
SIGNAL \inst18|Add0~25_sumout\ : std_logic;
SIGNAL \inst18|Mux6~0_combout\ : std_logic;
SIGNAL \inst18|Mux6~1_combout\ : std_logic;
SIGNAL \inst16|result[1]~303_combout\ : std_logic;
SIGNAL \inst11|Add0~29_sumout\ : std_logic;
SIGNAL \inst11|Mux7~0_combout\ : std_logic;
SIGNAL \inst11|Mux7~1_combout\ : std_logic;
SIGNAL \inst11|Regist[6]~0_combout\ : std_logic;
SIGNAL \inst11|Mux0~0_combout\ : std_logic;
SIGNAL \inst11|Add0~30\ : std_logic;
SIGNAL \inst11|Add0~26\ : std_logic;
SIGNAL \inst11|Add0~22\ : std_logic;
SIGNAL \inst11|Add0~18\ : std_logic;
SIGNAL \inst11|Add0~14\ : std_logic;
SIGNAL \inst11|Add0~10\ : std_logic;
SIGNAL \inst11|Add0~6\ : std_logic;
SIGNAL \inst11|Add0~1_sumout\ : std_logic;
SIGNAL \inst11|Mux0~1_combout\ : std_logic;
SIGNAL \inst11|Mux1~0_combout\ : std_logic;
SIGNAL \inst11|Mux1~1_combout\ : std_logic;
SIGNAL \inst11|Add0~5_sumout\ : std_logic;
SIGNAL \inst11|Mux1~2_combout\ : std_logic;
SIGNAL \inst11|Mux2~0_combout\ : std_logic;
SIGNAL \inst11|Mux2~1_combout\ : std_logic;
SIGNAL \inst11|Add0~9_sumout\ : std_logic;
SIGNAL \inst11|Mux2~2_combout\ : std_logic;
SIGNAL \inst11|Mux3~0_combout\ : std_logic;
SIGNAL \inst11|Mux3~1_combout\ : std_logic;
SIGNAL \inst11|Add0~13_sumout\ : std_logic;
SIGNAL \inst11|Mux3~2_combout\ : std_logic;
SIGNAL \inst11|Mux4~0_combout\ : std_logic;
SIGNAL \inst11|Mux4~1_combout\ : std_logic;
SIGNAL \inst11|Add0~17_sumout\ : std_logic;
SIGNAL \inst11|Mux4~2_combout\ : std_logic;
SIGNAL \inst11|Add0~21_sumout\ : std_logic;
SIGNAL \inst11|Mux5~0_combout\ : std_logic;
SIGNAL \inst11|Mux5~1_combout\ : std_logic;
SIGNAL \inst11|Add0~25_sumout\ : std_logic;
SIGNAL \inst11|Mux6~0_combout\ : std_logic;
SIGNAL \inst11|Mux6~1_combout\ : std_logic;
SIGNAL \MUX_A~input_o\ : std_logic;
SIGNAL \dataA[1]~input_o\ : std_logic;
SIGNAL \inst15|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst6|Mux6~1_combout\ : std_logic;
SIGNAL \dataA[0]~input_o\ : std_logic;
SIGNAL \inst15|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst6|Mux7~0_combout\ : std_logic;
SIGNAL \dataA[3]~input_o\ : std_logic;
SIGNAL \inst15|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst6|Mux4~1_combout\ : std_logic;
SIGNAL \dataA[2]~input_o\ : std_logic;
SIGNAL \inst15|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst6|Mux5~1_combout\ : std_logic;
SIGNAL \inst6|Mux5~0_combout\ : std_logic;
SIGNAL \inst6|Add0~26\ : std_logic;
SIGNAL \inst6|Add0~21_sumout\ : std_logic;
SIGNAL \inst6|Mux5~2_combout\ : std_logic;
SIGNAL \inst6|Regist[6]~0_combout\ : std_logic;
SIGNAL \inst6|Mux4~0_combout\ : std_logic;
SIGNAL \inst6|Add0~22\ : std_logic;
SIGNAL \inst6|Add0~17_sumout\ : std_logic;
SIGNAL \inst6|Mux4~2_combout\ : std_logic;
SIGNAL \inst6|Mux3~1_combout\ : std_logic;
SIGNAL \dataA[4]~input_o\ : std_logic;
SIGNAL \inst15|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst6|Add0~18\ : std_logic;
SIGNAL \inst6|Add0~13_sumout\ : std_logic;
SIGNAL \inst6|Mux3~0_combout\ : std_logic;
SIGNAL \inst6|Mux2~1_combout\ : std_logic;
SIGNAL \dataA[5]~input_o\ : std_logic;
SIGNAL \inst15|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst6|Add0~14\ : std_logic;
SIGNAL \inst6|Add0~9_sumout\ : std_logic;
SIGNAL \inst6|Mux2~0_combout\ : std_logic;
SIGNAL \inst6|Mux1~1_combout\ : std_logic;
SIGNAL \dataA[6]~input_o\ : std_logic;
SIGNAL \inst15|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst6|Add0~10\ : std_logic;
SIGNAL \inst6|Add0~5_sumout\ : std_logic;
SIGNAL \inst6|Mux1~0_combout\ : std_logic;
SIGNAL \dataA[7]~input_o\ : std_logic;
SIGNAL \inst15|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst6|Mux0~0_combout\ : std_logic;
SIGNAL \inst6|Add0~6\ : std_logic;
SIGNAL \inst6|Add0~1_sumout\ : std_logic;
SIGNAL \inst6|Mux0~1_combout\ : std_logic;
SIGNAL \inst6|Add0~29_sumout\ : std_logic;
SIGNAL \inst6|Mux7~1_combout\ : std_logic;
SIGNAL \inst6|Add0~30\ : std_logic;
SIGNAL \inst6|Add0~25_sumout\ : std_logic;
SIGNAL \inst6|Mux6~0_combout\ : std_logic;
SIGNAL \inst6|Mux6~2_combout\ : std_logic;
SIGNAL \inst16|result[1]~302_combout\ : std_logic;
SIGNAL \inst16|result[1]~307_combout\ : std_logic;
SIGNAL \inst10|Add0~30\ : std_logic;
SIGNAL \inst10|Add0~26\ : std_logic;
SIGNAL \inst10|Add0~21_sumout\ : std_logic;
SIGNAL \inst10|Mux5~0_combout\ : std_logic;
SIGNAL \inst10|Mux5~1_combout\ : std_logic;
SIGNAL \inst10|Add0~25_sumout\ : std_logic;
SIGNAL \inst10|Mux6~0_combout\ : std_logic;
SIGNAL \inst10|Mux6~1_combout\ : std_logic;
SIGNAL \inst10|Mux7~0_combout\ : std_logic;
SIGNAL \inst10|Mux7~1_combout\ : std_logic;
SIGNAL \inst10|Mux0~0_combout\ : std_logic;
SIGNAL \inst10|Add0~10\ : std_logic;
SIGNAL \inst10|Add0~6\ : std_logic;
SIGNAL \inst10|Add0~1_sumout\ : std_logic;
SIGNAL \inst10|Mux0~1_combout\ : std_logic;
SIGNAL \inst10|Mux1~0_combout\ : std_logic;
SIGNAL \inst10|Mux1~1_combout\ : std_logic;
SIGNAL \inst10|Add0~5_sumout\ : std_logic;
SIGNAL \inst10|Mux1~2_combout\ : std_logic;
SIGNAL \inst24|Add1~18\ : std_logic;
SIGNAL \inst24|Add1~14\ : std_logic;
SIGNAL \inst24|Add1~10\ : std_logic;
SIGNAL \inst24|Add1~5_sumout\ : std_logic;
SIGNAL \inst24|Mux2~1_combout\ : std_logic;
SIGNAL \inst24|Mux2~2_combout\ : std_logic;
SIGNAL \inst24|Add0~18\ : std_logic;
SIGNAL \inst24|Add0~19\ : std_logic;
SIGNAL \inst24|Add0~14\ : std_logic;
SIGNAL \inst24|Add0~15\ : std_logic;
SIGNAL \inst24|Add0~10\ : std_logic;
SIGNAL \inst24|Add0~11\ : std_logic;
SIGNAL \inst24|Add0~5_sumout\ : std_logic;
SIGNAL \inst20|Mux1~0_combout\ : std_logic;
SIGNAL \inst20|Mux2~1_combout\ : std_logic;
SIGNAL \inst24|Mux3~1_combout\ : std_logic;
SIGNAL \inst24|Add0~9_sumout\ : std_logic;
SIGNAL \inst24|Add1~9_sumout\ : std_logic;
SIGNAL \inst24|Mux3~0_combout\ : std_logic;
SIGNAL \inst20|Mux2~0_combout\ : std_logic;
SIGNAL \inst24|Mux3~2_combout\ : std_logic;
SIGNAL \inst24|Mux4~2_combout\ : std_logic;
SIGNAL \inst24|Add1~13_sumout\ : std_logic;
SIGNAL \inst24|Mux4~3_combout\ : std_logic;
SIGNAL \inst20|Add0~18\ : std_logic;
SIGNAL \inst20|Add0~14\ : std_logic;
SIGNAL \inst20|Add0~9_sumout\ : std_logic;
SIGNAL \inst20|Mux2~2_combout\ : std_logic;
SIGNAL \inst20|Mux1~1_combout\ : std_logic;
SIGNAL \inst24|Mux2~3_combout\ : std_logic;
SIGNAL \inst20|Add0~10\ : std_logic;
SIGNAL \inst20|Add0~5_sumout\ : std_logic;
SIGNAL \inst20|Mux1~2_combout\ : std_logic;
SIGNAL \Fuente[6]~input_o\ : std_logic;
SIGNAL \inst16|result[6]~276_combout\ : std_logic;
SIGNAL \Destino[6]~input_o\ : std_logic;
SIGNAL \inst13|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|Mux0~0_combout\ : std_logic;
SIGNAL \inst13|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst13|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst13|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst13|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|Add0~26\ : std_logic;
SIGNAL \inst1|Add0~22\ : std_logic;
SIGNAL \inst1|Add0~18\ : std_logic;
SIGNAL \inst1|Add0~14\ : std_logic;
SIGNAL \inst1|Add0~10\ : std_logic;
SIGNAL \inst1|Add0~6\ : std_logic;
SIGNAL \inst1|Add0~1_sumout\ : std_logic;
SIGNAL \inst1|Mux0~1_combout\ : std_logic;
SIGNAL \inst1|Mux1~1_combout\ : std_logic;
SIGNAL \inst1|Add0~5_sumout\ : std_logic;
SIGNAL \inst1|Mux1~0_combout\ : std_logic;
SIGNAL \inst16|result[6]~275_combout\ : std_logic;
SIGNAL \inst16|result[6]~318_combout\ : std_logic;
SIGNAL \inst22|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst22|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst22|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst22|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst22|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst22|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst22|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst7|Mux2~1_combout\ : std_logic;
SIGNAL \inst23|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst23|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst23|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst7|Add0~30\ : std_logic;
SIGNAL \inst7|Add0~26\ : std_logic;
SIGNAL \inst7|Add0~22\ : std_logic;
SIGNAL \inst7|Add0~18\ : std_logic;
SIGNAL \inst7|Add0~14\ : std_logic;
SIGNAL \inst7|Add0~9_sumout\ : std_logic;
SIGNAL \inst7|Mux2~0_combout\ : std_logic;
SIGNAL \inst7|Regist[6]~0_combout\ : std_logic;
SIGNAL \inst23|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst7|Mux3~1_combout\ : std_logic;
SIGNAL \inst7|Add0~13_sumout\ : std_logic;
SIGNAL \inst7|Mux3~0_combout\ : std_logic;
SIGNAL \inst23|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst7|Add0~17_sumout\ : std_logic;
SIGNAL \inst7|Mux4~1_combout\ : std_logic;
SIGNAL \inst7|Mux4~0_combout\ : std_logic;
SIGNAL \inst7|Mux4~2_combout\ : std_logic;
SIGNAL \inst7|Mux5~0_combout\ : std_logic;
SIGNAL \inst7|Add0~21_sumout\ : std_logic;
SIGNAL \inst7|Mux5~1_combout\ : std_logic;
SIGNAL \inst7|Mux5~2_combout\ : std_logic;
SIGNAL \inst23|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst7|Mux1~1_combout\ : std_logic;
SIGNAL \inst7|Add0~10\ : std_logic;
SIGNAL \inst7|Add0~5_sumout\ : std_logic;
SIGNAL \inst7|Mux1~0_combout\ : std_logic;
SIGNAL \inst16|result[6]~272_combout\ : std_logic;
SIGNAL \inst16|result[6]~273_combout\ : std_logic;
SIGNAL \inst16|result[6]~274_combout\ : std_logic;
SIGNAL \inst16|result[6]~277_combout\ : std_logic;
SIGNAL \inst4|Mux1~1_combout\ : std_logic;
SIGNAL \inst4|Add0~30\ : std_logic;
SIGNAL \inst4|Add0~26\ : std_logic;
SIGNAL \inst4|Add0~22\ : std_logic;
SIGNAL \inst4|Add0~18\ : std_logic;
SIGNAL \inst4|Add0~14\ : std_logic;
SIGNAL \inst4|Add0~10\ : std_logic;
SIGNAL \inst4|Add0~5_sumout\ : std_logic;
SIGNAL \inst4|Mux1~2_combout\ : std_logic;
SIGNAL \inst4|Regist[3]~0_combout\ : std_logic;
SIGNAL \inst4|Mux2~0_combout\ : std_logic;
SIGNAL \inst4|Mux2~1_combout\ : std_logic;
SIGNAL \inst4|Add0~9_sumout\ : std_logic;
SIGNAL \inst4|Mux2~2_combout\ : std_logic;
SIGNAL \inst4|Mux3~0_combout\ : std_logic;
SIGNAL \inst4|Add0~13_sumout\ : std_logic;
SIGNAL \inst4|Mux3~2_combout\ : std_logic;
SIGNAL \inst4|Mux4~0_combout\ : std_logic;
SIGNAL \inst4|Add0~17_sumout\ : std_logic;
SIGNAL \inst4|Mux4~2_combout\ : std_logic;
SIGNAL \inst4|Add0~21_sumout\ : std_logic;
SIGNAL \inst4|Mux5~0_combout\ : std_logic;
SIGNAL \inst4|Mux5~1_combout\ : std_logic;
SIGNAL \inst4|Add0~25_sumout\ : std_logic;
SIGNAL \inst4|Mux6~0_combout\ : std_logic;
SIGNAL \inst4|Mux6~1_combout\ : std_logic;
SIGNAL \inst4|Mux7~0_combout\ : std_logic;
SIGNAL \inst4|Add0~29_sumout\ : std_logic;
SIGNAL \inst4|Mux7~1_combout\ : std_logic;
SIGNAL \inst4|Add0~6\ : std_logic;
SIGNAL \inst4|Add0~1_sumout\ : std_logic;
SIGNAL \inst4|Mux0~0_combout\ : std_logic;
SIGNAL \inst4|Mux0~1_combout\ : std_logic;
SIGNAL \inst24|Mux1~0_combout\ : std_logic;
SIGNAL \inst24|Add0~6\ : std_logic;
SIGNAL \inst24|Add0~7\ : std_logic;
SIGNAL \inst24|Add0~1_sumout\ : std_logic;
SIGNAL \inst24|Add1~6\ : std_logic;
SIGNAL \inst24|Add1~1_sumout\ : std_logic;
SIGNAL \inst24|Mux1~1_combout\ : std_logic;
SIGNAL \inst20|Add0~6\ : std_logic;
SIGNAL \inst20|Add0~1_sumout\ : std_logic;
SIGNAL \inst20|Mux0~0_combout\ : std_logic;
SIGNAL \inst20|Mux0~1_combout\ : std_logic;
SIGNAL \inst20|Add0~29_sumout\ : std_logic;
SIGNAL \inst20|Mux7~0_combout\ : std_logic;
SIGNAL \inst20|Mux7~1_combout\ : std_logic;
SIGNAL \Fuente[0]~input_o\ : std_logic;
SIGNAL \inst16|result[0]~312_combout\ : std_logic;
SIGNAL \inst16|result[0]~317_combout\ : std_logic;
SIGNAL \inst16|result[0]~308_combout\ : std_logic;
SIGNAL \inst16|result[0]~309_combout\ : std_logic;
SIGNAL \inst16|result[0]~310_combout\ : std_logic;
SIGNAL \inst16|result[0]~313_combout\ : std_logic;
SIGNAL \inst17|Add0~29_sumout\ : std_logic;
SIGNAL \inst17|Mux7~0_combout\ : std_logic;
SIGNAL \inst17|Mux7~1_combout\ : std_logic;
SIGNAL \inst13|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|Mux7~0_combout\ : std_logic;
SIGNAL \inst1|Add0~29_sumout\ : std_logic;
SIGNAL \inst1|Mux7~1_combout\ : std_logic;
SIGNAL \inst22|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst23|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst7|Mux6~1_combout\ : std_logic;
SIGNAL \inst7|Add0~25_sumout\ : std_logic;
SIGNAL \inst7|Mux6~0_combout\ : std_logic;
SIGNAL \inst7|Mux6~2_combout\ : std_logic;
SIGNAL \inst7|Mux7~0_combout\ : std_logic;
SIGNAL \inst7|Add0~29_sumout\ : std_logic;
SIGNAL \inst7|Mux7~1_combout\ : std_logic;
SIGNAL \inst23|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst7|Add0~6\ : std_logic;
SIGNAL \inst7|Add0~1_sumout\ : std_logic;
SIGNAL \inst7|Mux0~0_combout\ : std_logic;
SIGNAL \inst7|Mux0~1_combout\ : std_logic;
SIGNAL \inst16|result[7]~264_combout\ : std_logic;
SIGNAL \Destino[7]~input_o\ : std_logic;
SIGNAL \inst16|result[7]~268_combout\ : std_logic;
SIGNAL \inst16|result[7]~267_combout\ : std_logic;
SIGNAL \Fuente[7]~input_o\ : std_logic;
SIGNAL \inst16|result[7]~270_combout\ : std_logic;
SIGNAL \inst16|result[7]~265_combout\ : std_logic;
SIGNAL \inst16|result[7]~266_combout\ : std_logic;
SIGNAL \inst16|result[7]~271_combout\ : std_logic;
SIGNAL \inst17|Mux0~0_combout\ : std_logic;
SIGNAL \inst17|Add0~14\ : std_logic;
SIGNAL \inst17|Add0~10\ : std_logic;
SIGNAL \inst17|Add0~6\ : std_logic;
SIGNAL \inst17|Add0~1_sumout\ : std_logic;
SIGNAL \inst17|Mux0~1_combout\ : std_logic;
SIGNAL \inst17|Mux1~0_combout\ : std_logic;
SIGNAL \inst17|Mux1~1_combout\ : std_logic;
SIGNAL \inst17|Add0~5_sumout\ : std_logic;
SIGNAL \inst17|Mux1~2_combout\ : std_logic;
SIGNAL \inst17|Mux2~0_combout\ : std_logic;
SIGNAL \inst17|Mux2~1_combout\ : std_logic;
SIGNAL \inst17|Add0~9_sumout\ : std_logic;
SIGNAL \inst17|Mux2~2_combout\ : std_logic;
SIGNAL \inst13|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|Mux2~1_combout\ : std_logic;
SIGNAL \inst1|Add0~9_sumout\ : std_logic;
SIGNAL \inst1|Mux2~0_combout\ : std_logic;
SIGNAL \inst1|Mux3~1_combout\ : std_logic;
SIGNAL \inst1|Add0~13_sumout\ : std_logic;
SIGNAL \inst1|Mux3~0_combout\ : std_logic;
SIGNAL \inst1|Mux4~0_combout\ : std_logic;
SIGNAL \inst1|Mux4~1_combout\ : std_logic;
SIGNAL \inst1|Add0~17_sumout\ : std_logic;
SIGNAL \inst1|Mux4~2_combout\ : std_logic;
SIGNAL \inst1|Mux5~0_combout\ : std_logic;
SIGNAL \inst1|Mux5~1_combout\ : std_logic;
SIGNAL \inst1|Add0~21_sumout\ : std_logic;
SIGNAL \inst1|Mux5~2_combout\ : std_logic;
SIGNAL \inst16|result[2]~299_combout\ : std_logic;
SIGNAL \Fuente[2]~input_o\ : std_logic;
SIGNAL \inst16|result[2]~300_combout\ : std_logic;
SIGNAL \inst16|result[2]~315_combout\ : std_logic;
SIGNAL \inst16|result[2]~298_combout\ : std_logic;
SIGNAL \inst16|result[2]~297_combout\ : std_logic;
SIGNAL \inst16|result[2]~296_combout\ : std_logic;
SIGNAL \inst16|result[2]~301_combout\ : std_logic;
SIGNAL \inst10|Add0~22\ : std_logic;
SIGNAL \inst10|Add0~17_sumout\ : std_logic;
SIGNAL \inst10|Mux4~0_combout\ : std_logic;
SIGNAL \inst10|Mux4~2_combout\ : std_logic;
SIGNAL \Destino[3]~input_o\ : std_logic;
SIGNAL \inst16|result[3]~293_combout\ : std_logic;
SIGNAL \Fuente[3]~input_o\ : std_logic;
SIGNAL \inst16|result[3]~294_combout\ : std_logic;
SIGNAL \inst16|result[3]~314_combout\ : std_logic;
SIGNAL \inst16|result[3]~290_combout\ : std_logic;
SIGNAL \inst16|result[3]~291_combout\ : std_logic;
SIGNAL \inst16|result[3]~292_combout\ : std_logic;
SIGNAL \inst16|result[3]~295_combout\ : std_logic;
SIGNAL \inst3|Add0~18\ : std_logic;
SIGNAL \inst3|Add0~13_sumout\ : std_logic;
SIGNAL \inst3|Mux3~1_combout\ : std_logic;
SIGNAL \inst3|Mux3~0_combout\ : std_logic;
SIGNAL \inst3|Mux3~2_combout\ : std_logic;
SIGNAL \inst24|Add0~13_sumout\ : std_logic;
SIGNAL \inst24|Mux4~1_combout\ : std_logic;
SIGNAL \inst20|Mux3~0_combout\ : std_logic;
SIGNAL \inst20|Mux3~1_combout\ : std_logic;
SIGNAL \inst20|Add0~13_sumout\ : std_logic;
SIGNAL \inst20|Mux3~2_combout\ : std_logic;
SIGNAL \Destino[4]~input_o\ : std_logic;
SIGNAL \inst16|result[4]~287_combout\ : std_logic;
SIGNAL \Fuente[4]~input_o\ : std_logic;
SIGNAL \inst16|result[4]~288_combout\ : std_logic;
SIGNAL \inst16|result[4]~320_combout\ : std_logic;
SIGNAL \inst16|result[4]~286_combout\ : std_logic;
SIGNAL \inst16|result[4]~285_combout\ : std_logic;
SIGNAL \inst16|result[4]~284_combout\ : std_logic;
SIGNAL \inst16|result[4]~289_combout\ : std_logic;
SIGNAL \inst2|Add0~14\ : std_logic;
SIGNAL \inst2|Add0~9_sumout\ : std_logic;
SIGNAL \inst2|Mux2~1_combout\ : std_logic;
SIGNAL \inst2|Mux2~0_combout\ : std_logic;
SIGNAL \inst2|Mux2~2_combout\ : std_logic;
SIGNAL \inst16|result[5]~280_combout\ : std_logic;
SIGNAL \Destino[5]~input_o\ : std_logic;
SIGNAL \inst16|result[5]~281_combout\ : std_logic;
SIGNAL \Fuente[5]~input_o\ : std_logic;
SIGNAL \inst16|result[5]~282_combout\ : std_logic;
SIGNAL \inst16|result[5]~319_combout\ : std_logic;
SIGNAL \inst16|result[5]~279_combout\ : std_logic;
SIGNAL \inst16|result[5]~278_combout\ : std_logic;
SIGNAL \inst16|result[5]~283_combout\ : std_logic;
SIGNAL \inst8|Mux2~1_combout\ : std_logic;
SIGNAL \inst8|Add0~1_sumout\ : std_logic;
SIGNAL \inst8|Mux2~0_combout\ : std_logic;
SIGNAL \inst8|Mux2~2_combout\ : std_logic;
SIGNAL \inst252|ROM~0_combout\ : std_logic;
SIGNAL \inst252|ROM~1_combout\ : std_logic;
SIGNAL \inst252|data_out[6]~feeder_combout\ : std_logic;
SIGNAL \inst252|data_out[5]~feeder_combout\ : std_logic;
SIGNAL \inst252|data_out[0]~feeder_combout\ : std_logic;
SIGNAL \inst8|Regist\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst10|Regist\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst6|Regist\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst17|Regist\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst11|Regist\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst5|Regist\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst18|Regist\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst14|Regist\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst7|Regist\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst9|Regist\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|Regist\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst20|Regist\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|Regist\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst19|Regist\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst252|data_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst3|Regist\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst4|Regist\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_CLR~inputCLKENA0_outclk\ : std_logic;
SIGNAL \ALT_INV_dataC[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_dataB[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_dataA[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_dataC[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_dataB[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_dataA[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_dataC[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_dataB[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_dataA[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_dataC[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_dataB[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_dataA[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_dataC[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_dataB[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_dataA[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_dataC[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_dataB[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_dataA[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_dataC[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_dataB[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_dataA[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_MUX_MAR~input_o\ : std_logic;
SIGNAL \ALT_INV_MUX_RAM~input_o\ : std_logic;
SIGNAL \ALT_INV_AluSel[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_AluSel[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_AluSel[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_dataC[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_MUX_C~input_o\ : std_logic;
SIGNAL \ALT_INV_dataB[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_MUX_B~input_o\ : std_logic;
SIGNAL \ALT_INV_MUX_MDR~input_o\ : std_logic;
SIGNAL \ALT_INV_dataA[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_MUX_A~input_o\ : std_logic;
SIGNAL \ALT_INV_EnDec~input_o\ : std_logic;
SIGNAL \ALT_INV_SelRegD[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SelRegD[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_SelRegD[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SelRegD[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SelBus[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SelBus[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SelBus[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_SelBus[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_Fuente[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Destino[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Fuente[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Destino[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Fuente[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_Destino[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_Fuente[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_Destino[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_Fuente[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_Destino[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_Fuente[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_Destino[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_Fuente[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_Destino[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_Fuente[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_Destino[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_muxSel[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_muxSel[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_muxSel[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_muxSel[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_muxSel[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_muxSel[3]~input_o\ : std_logic;
SIGNAL \inst16|ALT_INV_result[4]~320_combout\ : std_logic;
SIGNAL \inst16|ALT_INV_result[5]~319_combout\ : std_logic;
SIGNAL \inst16|ALT_INV_result[6]~318_combout\ : std_logic;
SIGNAL \inst16|ALT_INV_result[0]~317_combout\ : std_logic;
SIGNAL \inst16|ALT_INV_result[1]~316_combout\ : std_logic;
SIGNAL \inst16|ALT_INV_result[2]~315_combout\ : std_logic;
SIGNAL \inst16|ALT_INV_result[3]~314_combout\ : std_logic;
SIGNAL \inst7|ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \inst7|ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \inst7|ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \inst24|ALT_INV_Mux7~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \inst24|ALT_INV_Mux6~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \inst24|ALT_INV_Mux5~2_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \inst24|ALT_INV_Mux4~3_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \inst24|ALT_INV_Mux3~2_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \inst24|ALT_INV_Mux2~3_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst19|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \inst13|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst20|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \inst17|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \inst25|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst18|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \inst14|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \inst200|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst7|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \inst23|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst11|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \inst15|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst19|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \inst13|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \inst20|ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \inst20|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \inst24|ALT_INV_Mux7~1_combout\ : std_logic;
SIGNAL \inst24|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \inst17|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \inst25|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \inst18|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \inst14|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \inst200|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \inst7|ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \inst23|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst7|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \inst11|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \inst15|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \inst19|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \inst13|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \inst20|ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \inst20|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \inst24|ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \inst24|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \inst17|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \inst25|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \inst18|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \inst14|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \inst200|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \inst7|ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \inst23|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst7|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \inst11|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \inst15|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \inst19|ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \inst19|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \inst13|$00000|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \inst20|ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \inst20|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \inst24|ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \inst24|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \inst17|ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \inst17|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \inst25|$00000|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \inst18|ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \inst18|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \inst14|ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \inst14|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \inst200|$00000|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \inst7|ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \inst23|$00000|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst7|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \inst11|ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \inst11|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \inst15|$00000|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \inst19|ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \inst19|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \inst13|$00000|auto_generated|ALT_INV_l1_w4_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst20|ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \inst20|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \inst24|ALT_INV_Mux4~2_combout\ : std_logic;
SIGNAL \inst24|ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \inst17|ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \inst17|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \inst25|$00000|auto_generated|ALT_INV_l1_w4_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst18|ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \inst18|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \inst14|ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \inst14|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \inst200|$00000|auto_generated|ALT_INV_l1_w4_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst23|$00000|auto_generated|ALT_INV_l1_w4_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst11|ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \inst11|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \inst15|$00000|auto_generated|ALT_INV_l1_w4_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst19|ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \inst19|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \inst13|$00000|auto_generated|ALT_INV_l1_w5_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst20|ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \inst20|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \inst24|ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \inst24|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \inst17|ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \inst17|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \inst25|$00000|auto_generated|ALT_INV_l1_w5_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst18|ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \inst18|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \inst14|ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \inst14|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \inst200|$00000|auto_generated|ALT_INV_l1_w5_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst23|$00000|auto_generated|ALT_INV_l1_w5_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst11|ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \inst11|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \inst15|$00000|auto_generated|ALT_INV_l1_w5_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst19|ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \inst19|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \inst13|$00000|auto_generated|ALT_INV_l1_w6_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst20|ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \inst20|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \inst24|ALT_INV_Mux2~2_combout\ : std_logic;
SIGNAL \inst24|ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \inst17|ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \inst17|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \inst25|$00000|auto_generated|ALT_INV_l1_w6_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst18|ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \inst18|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \inst14|ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \inst14|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \inst200|$00000|auto_generated|ALT_INV_l1_w6_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst23|$00000|auto_generated|ALT_INV_l1_w6_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst11|ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \inst11|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \inst15|$00000|auto_generated|ALT_INV_l1_w6_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst19|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst8|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst13|$00000|auto_generated|ALT_INV_l1_w7_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst20|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst24|ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \inst24|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \inst24|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \inst24|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst17|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst25|$00000|auto_generated|ALT_INV_l1_w7_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst18|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst14|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Regist[6]~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst200|$00000|auto_generated|ALT_INV_l1_w7_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst7|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst23|$00000|auto_generated|ALT_INV_l1_w7_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst11|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst15|$00000|auto_generated|ALT_INV_l1_w7_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst19|ALT_INV_Regist[7]~1_combout\ : std_logic;
SIGNAL \inst19|ALT_INV_Regist[7]~0_combout\ : std_logic;
SIGNAL \inst8|ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \inst8|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \inst8|ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \inst8|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \inst8|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \inst8|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \inst8|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \inst18|ALT_INV_Regist[0]~3_combout\ : std_logic;
SIGNAL \inst18|ALT_INV_Regist[0]~2_combout\ : std_logic;
SIGNAL \inst18|ALT_INV_Regist[0]~1_combout\ : std_logic;
SIGNAL \inst18|ALT_INV_Regist[0]~0_combout\ : std_logic;
SIGNAL \inst8|ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \inst8|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \inst8|ALT_INV_Regist[1]~1_combout\ : std_logic;
SIGNAL \inst8|ALT_INV_Regist[1]~0_combout\ : std_logic;
SIGNAL \inst8|ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \inst8|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Regist[6]~0_combout\ : std_logic;
SIGNAL \inst16|ALT_INV_result[0]~313_combout\ : std_logic;
SIGNAL \inst16|ALT_INV_result[0]~312_combout\ : std_logic;
SIGNAL \inst16|ALT_INV_result[0]~311_combout\ : std_logic;
SIGNAL \inst16|ALT_INV_result[0]~310_combout\ : std_logic;
SIGNAL \inst16|ALT_INV_result[0]~309_combout\ : std_logic;
SIGNAL \inst16|ALT_INV_result[0]~308_combout\ : std_logic;
SIGNAL \inst16|ALT_INV_result[1]~307_combout\ : std_logic;
SIGNAL \inst16|ALT_INV_result[1]~306_combout\ : std_logic;
SIGNAL \inst16|ALT_INV_result[1]~305_combout\ : std_logic;
SIGNAL \inst16|ALT_INV_result[1]~304_combout\ : std_logic;
SIGNAL \inst16|ALT_INV_result[1]~303_combout\ : std_logic;
SIGNAL \inst16|ALT_INV_result[1]~302_combout\ : std_logic;
SIGNAL \inst16|ALT_INV_result[2]~301_combout\ : std_logic;
SIGNAL \inst16|ALT_INV_result[2]~300_combout\ : std_logic;
SIGNAL \inst16|ALT_INV_result[2]~299_combout\ : std_logic;
SIGNAL \inst16|ALT_INV_result[2]~298_combout\ : std_logic;
SIGNAL \inst16|ALT_INV_result[2]~297_combout\ : std_logic;
SIGNAL \inst16|ALT_INV_result[2]~296_combout\ : std_logic;
SIGNAL \inst16|ALT_INV_result[3]~295_combout\ : std_logic;
SIGNAL \inst16|ALT_INV_result[3]~294_combout\ : std_logic;
SIGNAL \inst16|ALT_INV_result[3]~293_combout\ : std_logic;
SIGNAL \inst16|ALT_INV_result[3]~292_combout\ : std_logic;
SIGNAL \inst16|ALT_INV_result[3]~291_combout\ : std_logic;
SIGNAL \inst16|ALT_INV_result[3]~290_combout\ : std_logic;
SIGNAL \inst16|ALT_INV_result[4]~289_combout\ : std_logic;
SIGNAL \inst16|ALT_INV_result[4]~288_combout\ : std_logic;
SIGNAL \inst16|ALT_INV_result[4]~287_combout\ : std_logic;
SIGNAL \inst16|ALT_INV_result[4]~286_combout\ : std_logic;
SIGNAL \inst16|ALT_INV_result[4]~285_combout\ : std_logic;
SIGNAL \inst16|ALT_INV_result[4]~284_combout\ : std_logic;
SIGNAL \inst16|ALT_INV_result[5]~283_combout\ : std_logic;
SIGNAL \inst16|ALT_INV_result[5]~282_combout\ : std_logic;
SIGNAL \inst16|ALT_INV_result[5]~281_combout\ : std_logic;
SIGNAL \inst16|ALT_INV_result[5]~280_combout\ : std_logic;
SIGNAL \inst16|ALT_INV_result[5]~279_combout\ : std_logic;
SIGNAL \inst16|ALT_INV_result[5]~278_combout\ : std_logic;
SIGNAL \inst16|ALT_INV_result[6]~277_combout\ : std_logic;
SIGNAL \inst16|ALT_INV_result[6]~276_combout\ : std_logic;
SIGNAL \inst16|ALT_INV_result[6]~275_combout\ : std_logic;
SIGNAL \inst16|ALT_INV_result[6]~274_combout\ : std_logic;
SIGNAL \inst16|ALT_INV_result[6]~273_combout\ : std_logic;
SIGNAL \inst16|ALT_INV_result[6]~272_combout\ : std_logic;
SIGNAL \inst16|ALT_INV_result[7]~271_combout\ : std_logic;
SIGNAL \inst16|ALT_INV_result[7]~270_combout\ : std_logic;
SIGNAL \inst16|ALT_INV_result[7]~269_combout\ : std_logic;
SIGNAL \inst16|ALT_INV__~16_combout\ : std_logic;
SIGNAL \inst16|ALT_INV__~15_combout\ : std_logic;
SIGNAL \inst16|ALT_INV_result[7]~268_combout\ : std_logic;
SIGNAL \inst16|ALT_INV__~14_combout\ : std_logic;
SIGNAL \inst16|ALT_INV__~13_combout\ : std_logic;
SIGNAL \inst16|ALT_INV__~12_combout\ : std_logic;
SIGNAL \inst16|ALT_INV_result[7]~267_combout\ : std_logic;
SIGNAL \inst16|ALT_INV__~11_combout\ : std_logic;
SIGNAL \inst16|ALT_INV__~10_combout\ : std_logic;
SIGNAL \inst16|ALT_INV__~9_combout\ : std_logic;
SIGNAL \inst16|ALT_INV_result[7]~266_combout\ : std_logic;
SIGNAL \inst16|ALT_INV__~8_combout\ : std_logic;
SIGNAL \inst16|ALT_INV__~7_combout\ : std_logic;
SIGNAL \inst16|ALT_INV__~6_combout\ : std_logic;
SIGNAL \inst16|ALT_INV_result[7]~265_combout\ : std_logic;
SIGNAL \inst16|ALT_INV__~5_combout\ : std_logic;
SIGNAL \inst16|ALT_INV__~4_combout\ : std_logic;
SIGNAL \inst16|ALT_INV__~3_combout\ : std_logic;
SIGNAL \inst16|ALT_INV_result[7]~264_combout\ : std_logic;
SIGNAL \inst16|ALT_INV__~2_combout\ : std_logic;
SIGNAL \inst16|ALT_INV__~1_combout\ : std_logic;
SIGNAL \inst16|ALT_INV__~0_combout\ : std_logic;
SIGNAL \inst252|ALT_INV_ROM~1_combout\ : std_logic;
SIGNAL \inst252|ALT_INV_ROM~0_combout\ : std_logic;
SIGNAL \inst24|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \inst4|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \inst4|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \inst4|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \inst4|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \inst4|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \inst4|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \inst4|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \inst19|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \inst1|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \inst24|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \inst4|ALT_INV_Regist\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst3|ALT_INV_Regist\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst24|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \inst20|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \inst10|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \inst17|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \inst9|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \inst18|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \inst14|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \inst5|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \inst7|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \inst11|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \inst6|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \inst19|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \inst1|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \inst24|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \inst24|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \inst20|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \inst10|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \inst17|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \inst9|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \inst18|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \inst14|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \inst5|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \inst7|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \inst11|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \inst6|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \inst19|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \inst1|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \inst24|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \inst24|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \inst20|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \inst10|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \inst17|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \inst9|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \inst18|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \inst14|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \inst5|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \inst7|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \inst11|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \inst6|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \inst19|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \inst1|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \inst24|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \inst24|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \inst20|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \inst10|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \inst17|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \inst9|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \inst18|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \inst14|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \inst5|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \inst7|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \inst11|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \inst6|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \inst19|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \inst1|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \inst24|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \inst24|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \inst20|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \inst10|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \inst17|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \inst9|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \inst18|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \inst14|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \inst5|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \inst7|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \inst11|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \inst6|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \inst19|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \inst1|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \inst24|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \inst24|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \inst20|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \inst10|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \inst17|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \inst9|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \inst18|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \inst14|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \inst5|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \inst7|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \inst11|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \inst6|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \inst19|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \inst1|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \inst24|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \inst24|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \inst20|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \inst10|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \inst17|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \inst9|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \inst18|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \inst14|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \inst5|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \inst7|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \inst11|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \inst6|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \inst19|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \inst8|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \inst1|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \inst24|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \inst24|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \inst20|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \inst10|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \inst17|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \inst9|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \inst18|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \inst14|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \inst5|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \inst7|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \inst11|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \inst6|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \inst8|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \inst8|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \inst8|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \inst8|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \inst8|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \inst8|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \inst8|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \inst19|ALT_INV_Regist\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|ALT_INV_Regist\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|altsyncram_component|auto_generated|ALT_INV_q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst20|ALT_INV_Regist\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst10|ALT_INV_Regist\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|ALT_INV_Regist\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst17|ALT_INV_Regist\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst9|ALT_INV_Regist\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst18|ALT_INV_Regist\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst14|ALT_INV_Regist\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst5|ALT_INV_Regist\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst7|ALT_INV_Regist\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst11|ALT_INV_Regist\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst6|ALT_INV_Regist\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst8|ALT_INV_Regist\ : std_logic_vector(7 DOWNTO 0);

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
ww_Destino <= Destino;
ww_Fuente <= Fuente;
ww_MUX_C <= MUX_C;
ww_dataC <= dataC;
ww_muxSel <= muxSel;
Outd <= ww_Outd;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \inst7|Regist\(7) & \inst7|Regist\(6) & \inst7|Regist\(5) & \inst7|Regist\(4) & \inst7|Regist\(3)
& \inst7|Regist\(2) & \inst7|Regist\(1) & \inst7|Regist\(0));

\inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst22|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\ & \inst22|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\ & 
\inst22|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\ & \inst22|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\ & \inst22|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\ & \inst22|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\
& \inst22|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & \inst22|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

\inst|altsyncram_component|auto_generated|q_a\(0) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst|altsyncram_component|auto_generated|q_a\(1) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst|altsyncram_component|auto_generated|q_a\(2) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst|altsyncram_component|auto_generated|q_a\(3) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\inst|altsyncram_component|auto_generated|q_a\(4) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\inst|altsyncram_component|auto_generated|q_a\(5) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\inst|altsyncram_component|auto_generated|q_a\(6) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\inst|altsyncram_component|auto_generated|q_a\(7) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\ALT_INV_CLR~inputCLKENA0_outclk\ <= NOT \CLR~inputCLKENA0_outclk\;
\ALT_INV_dataC[0]~input_o\ <= NOT \dataC[0]~input_o\;
\ALT_INV_dataB[0]~input_o\ <= NOT \dataB[0]~input_o\;
\ALT_INV_dataA[0]~input_o\ <= NOT \dataA[0]~input_o\;
\ALT_INV_dataC[1]~input_o\ <= NOT \dataC[1]~input_o\;
\ALT_INV_dataB[1]~input_o\ <= NOT \dataB[1]~input_o\;
\ALT_INV_dataA[1]~input_o\ <= NOT \dataA[1]~input_o\;
\ALT_INV_dataC[2]~input_o\ <= NOT \dataC[2]~input_o\;
\ALT_INV_dataB[2]~input_o\ <= NOT \dataB[2]~input_o\;
\ALT_INV_dataA[2]~input_o\ <= NOT \dataA[2]~input_o\;
\ALT_INV_dataC[3]~input_o\ <= NOT \dataC[3]~input_o\;
\ALT_INV_dataB[3]~input_o\ <= NOT \dataB[3]~input_o\;
\ALT_INV_dataA[3]~input_o\ <= NOT \dataA[3]~input_o\;
\ALT_INV_dataC[4]~input_o\ <= NOT \dataC[4]~input_o\;
\ALT_INV_dataB[4]~input_o\ <= NOT \dataB[4]~input_o\;
\ALT_INV_dataA[4]~input_o\ <= NOT \dataA[4]~input_o\;
\ALT_INV_dataC[5]~input_o\ <= NOT \dataC[5]~input_o\;
\ALT_INV_dataB[5]~input_o\ <= NOT \dataB[5]~input_o\;
\ALT_INV_dataA[5]~input_o\ <= NOT \dataA[5]~input_o\;
\ALT_INV_dataC[6]~input_o\ <= NOT \dataC[6]~input_o\;
\ALT_INV_dataB[6]~input_o\ <= NOT \dataB[6]~input_o\;
\ALT_INV_dataA[6]~input_o\ <= NOT \dataA[6]~input_o\;
\ALT_INV_MUX_MAR~input_o\ <= NOT \MUX_MAR~input_o\;
\ALT_INV_MUX_RAM~input_o\ <= NOT \MUX_RAM~input_o\;
\ALT_INV_AluSel[1]~input_o\ <= NOT \AluSel[1]~input_o\;
\ALT_INV_AluSel[2]~input_o\ <= NOT \AluSel[2]~input_o\;
\ALT_INV_AluSel[0]~input_o\ <= NOT \AluSel[0]~input_o\;
\ALT_INV_dataC[7]~input_o\ <= NOT \dataC[7]~input_o\;
\ALT_INV_MUX_C~input_o\ <= NOT \MUX_C~input_o\;
\ALT_INV_dataB[7]~input_o\ <= NOT \dataB[7]~input_o\;
\ALT_INV_MUX_B~input_o\ <= NOT \MUX_B~input_o\;
\ALT_INV_MUX_MDR~input_o\ <= NOT \MUX_MDR~input_o\;
\ALT_INV_dataA[7]~input_o\ <= NOT \dataA[7]~input_o\;
\ALT_INV_MUX_A~input_o\ <= NOT \MUX_A~input_o\;
\ALT_INV_EnDec~input_o\ <= NOT \EnDec~input_o\;
\ALT_INV_SelRegD[3]~input_o\ <= NOT \SelRegD[3]~input_o\;
\ALT_INV_SelRegD[0]~input_o\ <= NOT \SelRegD[0]~input_o\;
\ALT_INV_SelRegD[1]~input_o\ <= NOT \SelRegD[1]~input_o\;
\ALT_INV_SelRegD[2]~input_o\ <= NOT \SelRegD[2]~input_o\;
\ALT_INV_SelBus[1]~input_o\ <= NOT \SelBus[1]~input_o\;
\ALT_INV_SelBus[3]~input_o\ <= NOT \SelBus[3]~input_o\;
\ALT_INV_SelBus[0]~input_o\ <= NOT \SelBus[0]~input_o\;
\ALT_INV_SelBus[2]~input_o\ <= NOT \SelBus[2]~input_o\;
\ALT_INV_Fuente[0]~input_o\ <= NOT \Fuente[0]~input_o\;
\ALT_INV_Destino[0]~input_o\ <= NOT \Destino[0]~input_o\;
\ALT_INV_Fuente[1]~input_o\ <= NOT \Fuente[1]~input_o\;
\ALT_INV_Destino[1]~input_o\ <= NOT \Destino[1]~input_o\;
\ALT_INV_Fuente[2]~input_o\ <= NOT \Fuente[2]~input_o\;
\ALT_INV_Destino[2]~input_o\ <= NOT \Destino[2]~input_o\;
\ALT_INV_Fuente[3]~input_o\ <= NOT \Fuente[3]~input_o\;
\ALT_INV_Destino[3]~input_o\ <= NOT \Destino[3]~input_o\;
\ALT_INV_Fuente[4]~input_o\ <= NOT \Fuente[4]~input_o\;
\ALT_INV_Destino[4]~input_o\ <= NOT \Destino[4]~input_o\;
\ALT_INV_Fuente[5]~input_o\ <= NOT \Fuente[5]~input_o\;
\ALT_INV_Destino[5]~input_o\ <= NOT \Destino[5]~input_o\;
\ALT_INV_Fuente[6]~input_o\ <= NOT \Fuente[6]~input_o\;
\ALT_INV_Destino[6]~input_o\ <= NOT \Destino[6]~input_o\;
\ALT_INV_Fuente[7]~input_o\ <= NOT \Fuente[7]~input_o\;
\ALT_INV_Destino[7]~input_o\ <= NOT \Destino[7]~input_o\;
\ALT_INV_muxSel[1]~input_o\ <= NOT \muxSel[1]~input_o\;
\ALT_INV_muxSel[2]~input_o\ <= NOT \muxSel[2]~input_o\;
\ALT_INV_muxSel[0]~input_o\ <= NOT \muxSel[0]~input_o\;
\ALT_INV_muxSel[4]~input_o\ <= NOT \muxSel[4]~input_o\;
\ALT_INV_muxSel[5]~input_o\ <= NOT \muxSel[5]~input_o\;
\ALT_INV_muxSel[3]~input_o\ <= NOT \muxSel[3]~input_o\;
\inst16|ALT_INV_result[4]~320_combout\ <= NOT \inst16|result[4]~320_combout\;
\inst16|ALT_INV_result[5]~319_combout\ <= NOT \inst16|result[5]~319_combout\;
\inst16|ALT_INV_result[6]~318_combout\ <= NOT \inst16|result[6]~318_combout\;
\inst16|ALT_INV_result[0]~317_combout\ <= NOT \inst16|result[0]~317_combout\;
\inst16|ALT_INV_result[1]~316_combout\ <= NOT \inst16|result[1]~316_combout\;
\inst16|ALT_INV_result[2]~315_combout\ <= NOT \inst16|result[2]~315_combout\;
\inst16|ALT_INV_result[3]~314_combout\ <= NOT \inst16|result[3]~314_combout\;
\inst7|ALT_INV_Mux3~1_combout\ <= NOT \inst7|Mux3~1_combout\;
\inst1|ALT_INV_Mux3~1_combout\ <= NOT \inst1|Mux3~1_combout\;
\inst9|ALT_INV_Mux3~1_combout\ <= NOT \inst9|Mux3~1_combout\;
\inst5|ALT_INV_Mux3~1_combout\ <= NOT \inst5|Mux3~1_combout\;
\inst6|ALT_INV_Mux3~1_combout\ <= NOT \inst6|Mux3~1_combout\;
\inst7|ALT_INV_Mux2~1_combout\ <= NOT \inst7|Mux2~1_combout\;
\inst1|ALT_INV_Mux2~1_combout\ <= NOT \inst1|Mux2~1_combout\;
\inst9|ALT_INV_Mux2~1_combout\ <= NOT \inst9|Mux2~1_combout\;
\inst5|ALT_INV_Mux2~1_combout\ <= NOT \inst5|Mux2~1_combout\;
\inst6|ALT_INV_Mux2~1_combout\ <= NOT \inst6|Mux2~1_combout\;
\inst7|ALT_INV_Mux1~1_combout\ <= NOT \inst7|Mux1~1_combout\;
\inst1|ALT_INV_Mux1~1_combout\ <= NOT \inst1|Mux1~1_combout\;
\inst9|ALT_INV_Mux1~1_combout\ <= NOT \inst9|Mux1~1_combout\;
\inst5|ALT_INV_Mux1~1_combout\ <= NOT \inst5|Mux1~1_combout\;
\inst6|ALT_INV_Mux1~1_combout\ <= NOT \inst6|Mux1~1_combout\;
\inst4|ALT_INV_Mux7~0_combout\ <= NOT \inst4|Mux7~0_combout\;
\inst3|ALT_INV_Mux7~0_combout\ <= NOT \inst3|Mux7~0_combout\;
\inst3|ALT_INV_Mux6~0_combout\ <= NOT \inst3|Mux6~0_combout\;
\inst4|ALT_INV_Mux6~0_combout\ <= NOT \inst4|Mux6~0_combout\;
\inst24|ALT_INV_Mux7~2_combout\ <= NOT \inst24|Mux7~2_combout\;
\inst3|ALT_INV_Mux5~0_combout\ <= NOT \inst3|Mux5~0_combout\;
\inst4|ALT_INV_Mux5~0_combout\ <= NOT \inst4|Mux5~0_combout\;
\inst24|ALT_INV_Mux6~2_combout\ <= NOT \inst24|Mux6~2_combout\;
\inst3|ALT_INV_Mux4~1_combout\ <= NOT \inst3|Mux4~1_combout\;
\inst3|ALT_INV_Mux4~0_combout\ <= NOT \inst3|Mux4~0_combout\;
\inst4|ALT_INV_Mux4~1_combout\ <= NOT \inst4|Mux4~1_combout\;
\inst4|ALT_INV_Mux4~0_combout\ <= NOT \inst4|Mux4~0_combout\;
\inst24|ALT_INV_Mux5~2_combout\ <= NOT \inst24|Mux5~2_combout\;
\inst4|ALT_INV_Mux3~1_combout\ <= NOT \inst4|Mux3~1_combout\;
\inst4|ALT_INV_Mux3~0_combout\ <= NOT \inst4|Mux3~0_combout\;
\inst3|ALT_INV_Mux3~1_combout\ <= NOT \inst3|Mux3~1_combout\;
\inst3|ALT_INV_Mux3~0_combout\ <= NOT \inst3|Mux3~0_combout\;
\inst24|ALT_INV_Mux4~3_combout\ <= NOT \inst24|Mux4~3_combout\;
\inst4|ALT_INV_Mux2~1_combout\ <= NOT \inst4|Mux2~1_combout\;
\inst4|ALT_INV_Mux2~0_combout\ <= NOT \inst4|Mux2~0_combout\;
\inst3|ALT_INV_Mux2~1_combout\ <= NOT \inst3|Mux2~1_combout\;
\inst3|ALT_INV_Mux2~0_combout\ <= NOT \inst3|Mux2~0_combout\;
\inst24|ALT_INV_Mux3~2_combout\ <= NOT \inst24|Mux3~2_combout\;
\inst4|ALT_INV_Mux1~1_combout\ <= NOT \inst4|Mux1~1_combout\;
\inst4|ALT_INV_Mux1~0_combout\ <= NOT \inst4|Mux1~0_combout\;
\inst3|ALT_INV_Mux1~1_combout\ <= NOT \inst3|Mux1~1_combout\;
\inst3|ALT_INV_Mux1~0_combout\ <= NOT \inst3|Mux1~0_combout\;
\inst24|ALT_INV_Mux2~3_combout\ <= NOT \inst24|Mux2~3_combout\;
\inst4|ALT_INV_Mux0~0_combout\ <= NOT \inst4|Mux0~0_combout\;
\inst3|ALT_INV_Mux0~0_combout\ <= NOT \inst3|Mux0~0_combout\;
\inst19|ALT_INV_Mux7~0_combout\ <= NOT \inst19|Mux7~0_combout\;
\inst1|ALT_INV_Mux7~0_combout\ <= NOT \inst1|Mux7~0_combout\;
\inst13|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst13|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst20|ALT_INV_Mux7~0_combout\ <= NOT \inst20|Mux7~0_combout\;
\inst10|ALT_INV_Mux7~0_combout\ <= NOT \inst10|Mux7~0_combout\;
\inst2|ALT_INV_Mux7~0_combout\ <= NOT \inst2|Mux7~0_combout\;
\inst17|ALT_INV_Mux7~0_combout\ <= NOT \inst17|Mux7~0_combout\;
\inst9|ALT_INV_Mux7~0_combout\ <= NOT \inst9|Mux7~0_combout\;
\inst25|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst25|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst18|ALT_INV_Mux7~0_combout\ <= NOT \inst18|Mux7~0_combout\;
\inst14|ALT_INV_Mux7~0_combout\ <= NOT \inst14|Mux7~0_combout\;
\inst5|ALT_INV_Mux7~0_combout\ <= NOT \inst5|Mux7~0_combout\;
\inst200|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst200|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst7|ALT_INV_Mux7~0_combout\ <= NOT \inst7|Mux7~0_combout\;
\inst23|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst23|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst11|ALT_INV_Mux7~0_combout\ <= NOT \inst11|Mux7~0_combout\;
\inst6|ALT_INV_Mux7~0_combout\ <= NOT \inst6|Mux7~0_combout\;
\inst15|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst15|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst19|ALT_INV_Mux6~0_combout\ <= NOT \inst19|Mux6~0_combout\;
\inst1|ALT_INV_Mux6~1_combout\ <= NOT \inst1|Mux6~1_combout\;
\inst13|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\ <= NOT \inst13|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\;
\inst1|ALT_INV_Mux6~0_combout\ <= NOT \inst1|Mux6~0_combout\;
\inst20|ALT_INV_Mux6~1_combout\ <= NOT \inst20|Mux6~1_combout\;
\inst20|ALT_INV_Mux6~0_combout\ <= NOT \inst20|Mux6~0_combout\;
\inst24|ALT_INV_Mux7~1_combout\ <= NOT \inst24|Mux7~1_combout\;
\inst24|ALT_INV_Mux7~0_combout\ <= NOT \inst24|Mux7~0_combout\;
\inst10|ALT_INV_Mux6~0_combout\ <= NOT \inst10|Mux6~0_combout\;
\inst2|ALT_INV_Mux6~0_combout\ <= NOT \inst2|Mux6~0_combout\;
\inst17|ALT_INV_Mux6~0_combout\ <= NOT \inst17|Mux6~0_combout\;
\inst9|ALT_INV_Mux6~1_combout\ <= NOT \inst9|Mux6~1_combout\;
\inst25|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\ <= NOT \inst25|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\;
\inst9|ALT_INV_Mux6~0_combout\ <= NOT \inst9|Mux6~0_combout\;
\inst18|ALT_INV_Mux6~0_combout\ <= NOT \inst18|Mux6~0_combout\;
\inst14|ALT_INV_Mux6~0_combout\ <= NOT \inst14|Mux6~0_combout\;
\inst5|ALT_INV_Mux6~1_combout\ <= NOT \inst5|Mux6~1_combout\;
\inst200|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\ <= NOT \inst200|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\;
\inst5|ALT_INV_Mux6~0_combout\ <= NOT \inst5|Mux6~0_combout\;
\inst7|ALT_INV_Mux6~1_combout\ <= NOT \inst7|Mux6~1_combout\;
\inst23|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\ <= NOT \inst23|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\;
\inst7|ALT_INV_Mux6~0_combout\ <= NOT \inst7|Mux6~0_combout\;
\inst11|ALT_INV_Mux6~0_combout\ <= NOT \inst11|Mux6~0_combout\;
\inst6|ALT_INV_Mux6~1_combout\ <= NOT \inst6|Mux6~1_combout\;
\inst15|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\ <= NOT \inst15|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\;
\inst6|ALT_INV_Mux6~0_combout\ <= NOT \inst6|Mux6~0_combout\;
\inst19|ALT_INV_Mux5~0_combout\ <= NOT \inst19|Mux5~0_combout\;
\inst1|ALT_INV_Mux5~1_combout\ <= NOT \inst1|Mux5~1_combout\;
\inst13|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\ <= NOT \inst13|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\;
\inst1|ALT_INV_Mux5~0_combout\ <= NOT \inst1|Mux5~0_combout\;
\inst20|ALT_INV_Mux5~1_combout\ <= NOT \inst20|Mux5~1_combout\;
\inst20|ALT_INV_Mux5~0_combout\ <= NOT \inst20|Mux5~0_combout\;
\inst24|ALT_INV_Mux6~1_combout\ <= NOT \inst24|Mux6~1_combout\;
\inst24|ALT_INV_Mux6~0_combout\ <= NOT \inst24|Mux6~0_combout\;
\inst10|ALT_INV_Mux5~0_combout\ <= NOT \inst10|Mux5~0_combout\;
\inst2|ALT_INV_Mux5~0_combout\ <= NOT \inst2|Mux5~0_combout\;
\inst17|ALT_INV_Mux5~0_combout\ <= NOT \inst17|Mux5~0_combout\;
\inst9|ALT_INV_Mux5~1_combout\ <= NOT \inst9|Mux5~1_combout\;
\inst25|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\ <= NOT \inst25|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\;
\inst9|ALT_INV_Mux5~0_combout\ <= NOT \inst9|Mux5~0_combout\;
\inst18|ALT_INV_Mux5~0_combout\ <= NOT \inst18|Mux5~0_combout\;
\inst14|ALT_INV_Mux5~0_combout\ <= NOT \inst14|Mux5~0_combout\;
\inst5|ALT_INV_Mux5~1_combout\ <= NOT \inst5|Mux5~1_combout\;
\inst200|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\ <= NOT \inst200|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\;
\inst5|ALT_INV_Mux5~0_combout\ <= NOT \inst5|Mux5~0_combout\;
\inst7|ALT_INV_Mux5~1_combout\ <= NOT \inst7|Mux5~1_combout\;
\inst23|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\ <= NOT \inst23|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\;
\inst7|ALT_INV_Mux5~0_combout\ <= NOT \inst7|Mux5~0_combout\;
\inst11|ALT_INV_Mux5~0_combout\ <= NOT \inst11|Mux5~0_combout\;
\inst6|ALT_INV_Mux5~1_combout\ <= NOT \inst6|Mux5~1_combout\;
\inst15|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\ <= NOT \inst15|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\;
\inst6|ALT_INV_Mux5~0_combout\ <= NOT \inst6|Mux5~0_combout\;
\inst19|ALT_INV_Mux4~1_combout\ <= NOT \inst19|Mux4~1_combout\;
\inst19|ALT_INV_Mux4~0_combout\ <= NOT \inst19|Mux4~0_combout\;
\inst1|ALT_INV_Mux4~1_combout\ <= NOT \inst1|Mux4~1_combout\;
\inst13|$00000|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\ <= NOT \inst13|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\;
\inst1|ALT_INV_Mux4~0_combout\ <= NOT \inst1|Mux4~0_combout\;
\inst20|ALT_INV_Mux4~1_combout\ <= NOT \inst20|Mux4~1_combout\;
\inst20|ALT_INV_Mux4~0_combout\ <= NOT \inst20|Mux4~0_combout\;
\inst24|ALT_INV_Mux5~1_combout\ <= NOT \inst24|Mux5~1_combout\;
\inst24|ALT_INV_Mux5~0_combout\ <= NOT \inst24|Mux5~0_combout\;
\inst10|ALT_INV_Mux4~1_combout\ <= NOT \inst10|Mux4~1_combout\;
\inst10|ALT_INV_Mux4~0_combout\ <= NOT \inst10|Mux4~0_combout\;
\inst2|ALT_INV_Mux4~1_combout\ <= NOT \inst2|Mux4~1_combout\;
\inst2|ALT_INV_Mux4~0_combout\ <= NOT \inst2|Mux4~0_combout\;
\inst17|ALT_INV_Mux4~1_combout\ <= NOT \inst17|Mux4~1_combout\;
\inst17|ALT_INV_Mux4~0_combout\ <= NOT \inst17|Mux4~0_combout\;
\inst9|ALT_INV_Mux4~1_combout\ <= NOT \inst9|Mux4~1_combout\;
\inst25|$00000|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\ <= NOT \inst25|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\;
\inst9|ALT_INV_Mux4~0_combout\ <= NOT \inst9|Mux4~0_combout\;
\inst18|ALT_INV_Mux4~1_combout\ <= NOT \inst18|Mux4~1_combout\;
\inst18|ALT_INV_Mux4~0_combout\ <= NOT \inst18|Mux4~0_combout\;
\inst14|ALT_INV_Mux4~1_combout\ <= NOT \inst14|Mux4~1_combout\;
\inst14|ALT_INV_Mux4~0_combout\ <= NOT \inst14|Mux4~0_combout\;
\inst5|ALT_INV_Mux4~1_combout\ <= NOT \inst5|Mux4~1_combout\;
\inst200|$00000|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\ <= NOT \inst200|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\;
\inst5|ALT_INV_Mux4~0_combout\ <= NOT \inst5|Mux4~0_combout\;
\inst7|ALT_INV_Mux4~1_combout\ <= NOT \inst7|Mux4~1_combout\;
\inst23|$00000|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\ <= NOT \inst23|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\;
\inst7|ALT_INV_Mux4~0_combout\ <= NOT \inst7|Mux4~0_combout\;
\inst11|ALT_INV_Mux4~1_combout\ <= NOT \inst11|Mux4~1_combout\;
\inst11|ALT_INV_Mux4~0_combout\ <= NOT \inst11|Mux4~0_combout\;
\inst6|ALT_INV_Mux4~1_combout\ <= NOT \inst6|Mux4~1_combout\;
\inst15|$00000|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\ <= NOT \inst15|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\;
\inst6|ALT_INV_Mux4~0_combout\ <= NOT \inst6|Mux4~0_combout\;
\inst19|ALT_INV_Mux3~1_combout\ <= NOT \inst19|Mux3~1_combout\;
\inst19|ALT_INV_Mux3~0_combout\ <= NOT \inst19|Mux3~0_combout\;
\inst13|$00000|auto_generated|ALT_INV_l1_w4_n0_mux_dataout~0_combout\ <= NOT \inst13|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\;
\inst20|ALT_INV_Mux3~1_combout\ <= NOT \inst20|Mux3~1_combout\;
\inst20|ALT_INV_Mux3~0_combout\ <= NOT \inst20|Mux3~0_combout\;
\inst24|ALT_INV_Mux4~2_combout\ <= NOT \inst24|Mux4~2_combout\;
\inst24|ALT_INV_Mux4~1_combout\ <= NOT \inst24|Mux4~1_combout\;
\inst10|ALT_INV_Mux3~1_combout\ <= NOT \inst10|Mux3~1_combout\;
\inst10|ALT_INV_Mux3~0_combout\ <= NOT \inst10|Mux3~0_combout\;
\inst2|ALT_INV_Mux3~1_combout\ <= NOT \inst2|Mux3~1_combout\;
\inst2|ALT_INV_Mux3~0_combout\ <= NOT \inst2|Mux3~0_combout\;
\inst17|ALT_INV_Mux3~1_combout\ <= NOT \inst17|Mux3~1_combout\;
\inst17|ALT_INV_Mux3~0_combout\ <= NOT \inst17|Mux3~0_combout\;
\inst25|$00000|auto_generated|ALT_INV_l1_w4_n0_mux_dataout~0_combout\ <= NOT \inst25|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\;
\inst18|ALT_INV_Mux3~1_combout\ <= NOT \inst18|Mux3~1_combout\;
\inst18|ALT_INV_Mux3~0_combout\ <= NOT \inst18|Mux3~0_combout\;
\inst14|ALT_INV_Mux3~1_combout\ <= NOT \inst14|Mux3~1_combout\;
\inst14|ALT_INV_Mux3~0_combout\ <= NOT \inst14|Mux3~0_combout\;
\inst200|$00000|auto_generated|ALT_INV_l1_w4_n0_mux_dataout~0_combout\ <= NOT \inst200|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\;
\inst23|$00000|auto_generated|ALT_INV_l1_w4_n0_mux_dataout~0_combout\ <= NOT \inst23|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\;
\inst11|ALT_INV_Mux3~1_combout\ <= NOT \inst11|Mux3~1_combout\;
\inst11|ALT_INV_Mux3~0_combout\ <= NOT \inst11|Mux3~0_combout\;
\inst15|$00000|auto_generated|ALT_INV_l1_w4_n0_mux_dataout~0_combout\ <= NOT \inst15|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\;
\inst19|ALT_INV_Mux2~1_combout\ <= NOT \inst19|Mux2~1_combout\;
\inst19|ALT_INV_Mux2~0_combout\ <= NOT \inst19|Mux2~0_combout\;
\inst13|$00000|auto_generated|ALT_INV_l1_w5_n0_mux_dataout~0_combout\ <= NOT \inst13|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\;
\inst20|ALT_INV_Mux2~1_combout\ <= NOT \inst20|Mux2~1_combout\;
\inst20|ALT_INV_Mux2~0_combout\ <= NOT \inst20|Mux2~0_combout\;
\inst24|ALT_INV_Mux3~1_combout\ <= NOT \inst24|Mux3~1_combout\;
\inst24|ALT_INV_Mux3~0_combout\ <= NOT \inst24|Mux3~0_combout\;
\inst10|ALT_INV_Mux2~1_combout\ <= NOT \inst10|Mux2~1_combout\;
\inst10|ALT_INV_Mux2~0_combout\ <= NOT \inst10|Mux2~0_combout\;
\inst2|ALT_INV_Mux2~1_combout\ <= NOT \inst2|Mux2~1_combout\;
\inst2|ALT_INV_Mux2~0_combout\ <= NOT \inst2|Mux2~0_combout\;
\inst17|ALT_INV_Mux2~1_combout\ <= NOT \inst17|Mux2~1_combout\;
\inst17|ALT_INV_Mux2~0_combout\ <= NOT \inst17|Mux2~0_combout\;
\inst25|$00000|auto_generated|ALT_INV_l1_w5_n0_mux_dataout~0_combout\ <= NOT \inst25|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\;
\inst18|ALT_INV_Mux2~1_combout\ <= NOT \inst18|Mux2~1_combout\;
\inst18|ALT_INV_Mux2~0_combout\ <= NOT \inst18|Mux2~0_combout\;
\inst14|ALT_INV_Mux2~1_combout\ <= NOT \inst14|Mux2~1_combout\;
\inst14|ALT_INV_Mux2~0_combout\ <= NOT \inst14|Mux2~0_combout\;
\inst200|$00000|auto_generated|ALT_INV_l1_w5_n0_mux_dataout~0_combout\ <= NOT \inst200|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\;
\inst23|$00000|auto_generated|ALT_INV_l1_w5_n0_mux_dataout~0_combout\ <= NOT \inst23|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\;
\inst11|ALT_INV_Mux2~1_combout\ <= NOT \inst11|Mux2~1_combout\;
\inst11|ALT_INV_Mux2~0_combout\ <= NOT \inst11|Mux2~0_combout\;
\inst15|$00000|auto_generated|ALT_INV_l1_w5_n0_mux_dataout~0_combout\ <= NOT \inst15|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\;
\inst19|ALT_INV_Mux1~1_combout\ <= NOT \inst19|Mux1~1_combout\;
\inst19|ALT_INV_Mux1~0_combout\ <= NOT \inst19|Mux1~0_combout\;
\inst13|$00000|auto_generated|ALT_INV_l1_w6_n0_mux_dataout~0_combout\ <= NOT \inst13|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\;
\inst20|ALT_INV_Mux1~1_combout\ <= NOT \inst20|Mux1~1_combout\;
\inst20|ALT_INV_Mux1~0_combout\ <= NOT \inst20|Mux1~0_combout\;
\inst24|ALT_INV_Mux2~2_combout\ <= NOT \inst24|Mux2~2_combout\;
\inst24|ALT_INV_Mux2~1_combout\ <= NOT \inst24|Mux2~1_combout\;
\inst10|ALT_INV_Mux1~1_combout\ <= NOT \inst10|Mux1~1_combout\;
\inst10|ALT_INV_Mux1~0_combout\ <= NOT \inst10|Mux1~0_combout\;
\inst2|ALT_INV_Mux1~1_combout\ <= NOT \inst2|Mux1~1_combout\;
\inst2|ALT_INV_Mux1~0_combout\ <= NOT \inst2|Mux1~0_combout\;
\inst17|ALT_INV_Mux1~1_combout\ <= NOT \inst17|Mux1~1_combout\;
\inst17|ALT_INV_Mux1~0_combout\ <= NOT \inst17|Mux1~0_combout\;
\inst25|$00000|auto_generated|ALT_INV_l1_w6_n0_mux_dataout~0_combout\ <= NOT \inst25|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\;
\inst18|ALT_INV_Mux1~1_combout\ <= NOT \inst18|Mux1~1_combout\;
\inst18|ALT_INV_Mux1~0_combout\ <= NOT \inst18|Mux1~0_combout\;
\inst14|ALT_INV_Mux1~1_combout\ <= NOT \inst14|Mux1~1_combout\;
\inst14|ALT_INV_Mux1~0_combout\ <= NOT \inst14|Mux1~0_combout\;
\inst200|$00000|auto_generated|ALT_INV_l1_w6_n0_mux_dataout~0_combout\ <= NOT \inst200|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\;
\inst23|$00000|auto_generated|ALT_INV_l1_w6_n0_mux_dataout~0_combout\ <= NOT \inst23|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\;
\inst11|ALT_INV_Mux1~1_combout\ <= NOT \inst11|Mux1~1_combout\;
\inst11|ALT_INV_Mux1~0_combout\ <= NOT \inst11|Mux1~0_combout\;
\inst15|$00000|auto_generated|ALT_INV_l1_w6_n0_mux_dataout~0_combout\ <= NOT \inst15|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\;
\inst19|ALT_INV_Mux0~0_combout\ <= NOT \inst19|Mux0~0_combout\;
\inst8|ALT_INV_Mux0~0_combout\ <= NOT \inst8|Mux0~0_combout\;
\inst1|ALT_INV_Mux0~0_combout\ <= NOT \inst1|Mux0~0_combout\;
\inst13|$00000|auto_generated|ALT_INV_l1_w7_n0_mux_dataout~0_combout\ <= NOT \inst13|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\;
\inst20|ALT_INV_Mux0~0_combout\ <= NOT \inst20|Mux0~0_combout\;
\inst24|ALT_INV_Mux1~1_combout\ <= NOT \inst24|Mux1~1_combout\;
\inst24|ALT_INV_Mux1~0_combout\ <= NOT \inst24|Mux1~0_combout\;
\inst24|ALT_INV_Mux2~0_combout\ <= NOT \inst24|Mux2~0_combout\;
\inst24|ALT_INV_Mux4~0_combout\ <= NOT \inst24|Mux4~0_combout\;
\inst10|ALT_INV_Mux0~0_combout\ <= NOT \inst10|Mux0~0_combout\;
\inst2|ALT_INV_Mux0~0_combout\ <= NOT \inst2|Mux0~0_combout\;
\inst17|ALT_INV_Mux0~0_combout\ <= NOT \inst17|Mux0~0_combout\;
\inst9|ALT_INV_Mux0~0_combout\ <= NOT \inst9|Mux0~0_combout\;
\inst25|$00000|auto_generated|ALT_INV_l1_w7_n0_mux_dataout~0_combout\ <= NOT \inst25|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\;
\inst18|ALT_INV_Mux0~0_combout\ <= NOT \inst18|Mux0~0_combout\;
\inst14|ALT_INV_Mux0~0_combout\ <= NOT \inst14|Mux0~0_combout\;
\inst5|ALT_INV_Regist[6]~0_combout\ <= NOT \inst5|Regist[6]~0_combout\;
\inst5|ALT_INV_Mux0~0_combout\ <= NOT \inst5|Mux0~0_combout\;
\inst200|$00000|auto_generated|ALT_INV_l1_w7_n0_mux_dataout~0_combout\ <= NOT \inst200|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\;
\inst7|ALT_INV_Mux0~0_combout\ <= NOT \inst7|Mux0~0_combout\;
\inst23|$00000|auto_generated|ALT_INV_l1_w7_n0_mux_dataout~0_combout\ <= NOT \inst23|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\;
\inst11|ALT_INV_Mux0~0_combout\ <= NOT \inst11|Mux0~0_combout\;
\inst6|ALT_INV_Mux0~0_combout\ <= NOT \inst6|Mux0~0_combout\;
\inst15|$00000|auto_generated|ALT_INV_l1_w7_n0_mux_dataout~0_combout\ <= NOT \inst15|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\;
\inst19|ALT_INV_Regist[7]~1_combout\ <= NOT \inst19|Regist[7]~1_combout\;
\inst19|ALT_INV_Regist[7]~0_combout\ <= NOT \inst19|Regist[7]~0_combout\;
\inst8|ALT_INV_Mux3~1_combout\ <= NOT \inst8|Mux3~1_combout\;
\inst8|ALT_INV_Mux3~0_combout\ <= NOT \inst8|Mux3~0_combout\;
\inst8|ALT_INV_Mux4~1_combout\ <= NOT \inst8|Mux4~1_combout\;
\inst8|ALT_INV_Mux4~0_combout\ <= NOT \inst8|Mux4~0_combout\;
\inst8|ALT_INV_Mux5~0_combout\ <= NOT \inst8|Mux5~0_combout\;
\inst8|ALT_INV_Mux6~0_combout\ <= NOT \inst8|Mux6~0_combout\;
\inst8|ALT_INV_Mux7~0_combout\ <= NOT \inst8|Mux7~0_combout\;
\inst18|ALT_INV_Regist[0]~3_combout\ <= NOT \inst18|Regist[0]~3_combout\;
\inst18|ALT_INV_Regist[0]~2_combout\ <= NOT \inst18|Regist[0]~2_combout\;
\inst18|ALT_INV_Regist[0]~1_combout\ <= NOT \inst18|Regist[0]~1_combout\;
\inst18|ALT_INV_Regist[0]~0_combout\ <= NOT \inst18|Regist[0]~0_combout\;
\inst8|ALT_INV_Mux1~1_combout\ <= NOT \inst8|Mux1~1_combout\;
\inst8|ALT_INV_Mux1~0_combout\ <= NOT \inst8|Mux1~0_combout\;
\inst8|ALT_INV_Regist[1]~1_combout\ <= NOT \inst8|Regist[1]~1_combout\;
\inst8|ALT_INV_Regist[1]~0_combout\ <= NOT \inst8|Regist[1]~0_combout\;
\inst8|ALT_INV_Mux2~1_combout\ <= NOT \inst8|Mux2~1_combout\;
\inst8|ALT_INV_Mux2~0_combout\ <= NOT \inst8|Mux2~0_combout\;
\inst3|ALT_INV_Regist[6]~0_combout\ <= NOT \inst3|Regist[6]~0_combout\;
\inst16|ALT_INV_result[0]~313_combout\ <= NOT \inst16|result[0]~313_combout\;
\inst16|ALT_INV_result[0]~312_combout\ <= NOT \inst16|result[0]~312_combout\;
\inst16|ALT_INV_result[0]~311_combout\ <= NOT \inst16|result[0]~311_combout\;
\inst16|ALT_INV_result[0]~310_combout\ <= NOT \inst16|result[0]~310_combout\;
\inst16|ALT_INV_result[0]~309_combout\ <= NOT \inst16|result[0]~309_combout\;
\inst16|ALT_INV_result[0]~308_combout\ <= NOT \inst16|result[0]~308_combout\;
\inst16|ALT_INV_result[1]~307_combout\ <= NOT \inst16|result[1]~307_combout\;
\inst16|ALT_INV_result[1]~306_combout\ <= NOT \inst16|result[1]~306_combout\;
\inst16|ALT_INV_result[1]~305_combout\ <= NOT \inst16|result[1]~305_combout\;
\inst16|ALT_INV_result[1]~304_combout\ <= NOT \inst16|result[1]~304_combout\;
\inst16|ALT_INV_result[1]~303_combout\ <= NOT \inst16|result[1]~303_combout\;
\inst16|ALT_INV_result[1]~302_combout\ <= NOT \inst16|result[1]~302_combout\;
\inst16|ALT_INV_result[2]~301_combout\ <= NOT \inst16|result[2]~301_combout\;
\inst16|ALT_INV_result[2]~300_combout\ <= NOT \inst16|result[2]~300_combout\;
\inst16|ALT_INV_result[2]~299_combout\ <= NOT \inst16|result[2]~299_combout\;
\inst16|ALT_INV_result[2]~298_combout\ <= NOT \inst16|result[2]~298_combout\;
\inst16|ALT_INV_result[2]~297_combout\ <= NOT \inst16|result[2]~297_combout\;
\inst16|ALT_INV_result[2]~296_combout\ <= NOT \inst16|result[2]~296_combout\;
\inst16|ALT_INV_result[3]~295_combout\ <= NOT \inst16|result[3]~295_combout\;
\inst16|ALT_INV_result[3]~294_combout\ <= NOT \inst16|result[3]~294_combout\;
\inst16|ALT_INV_result[3]~293_combout\ <= NOT \inst16|result[3]~293_combout\;
\inst16|ALT_INV_result[3]~292_combout\ <= NOT \inst16|result[3]~292_combout\;
\inst16|ALT_INV_result[3]~291_combout\ <= NOT \inst16|result[3]~291_combout\;
\inst16|ALT_INV_result[3]~290_combout\ <= NOT \inst16|result[3]~290_combout\;
\inst16|ALT_INV_result[4]~289_combout\ <= NOT \inst16|result[4]~289_combout\;
\inst16|ALT_INV_result[4]~288_combout\ <= NOT \inst16|result[4]~288_combout\;
\inst16|ALT_INV_result[4]~287_combout\ <= NOT \inst16|result[4]~287_combout\;
\inst16|ALT_INV_result[4]~286_combout\ <= NOT \inst16|result[4]~286_combout\;
\inst16|ALT_INV_result[4]~285_combout\ <= NOT \inst16|result[4]~285_combout\;
\inst16|ALT_INV_result[4]~284_combout\ <= NOT \inst16|result[4]~284_combout\;
\inst16|ALT_INV_result[5]~283_combout\ <= NOT \inst16|result[5]~283_combout\;
\inst16|ALT_INV_result[5]~282_combout\ <= NOT \inst16|result[5]~282_combout\;
\inst16|ALT_INV_result[5]~281_combout\ <= NOT \inst16|result[5]~281_combout\;
\inst16|ALT_INV_result[5]~280_combout\ <= NOT \inst16|result[5]~280_combout\;
\inst16|ALT_INV_result[5]~279_combout\ <= NOT \inst16|result[5]~279_combout\;
\inst16|ALT_INV_result[5]~278_combout\ <= NOT \inst16|result[5]~278_combout\;
\inst16|ALT_INV_result[6]~277_combout\ <= NOT \inst16|result[6]~277_combout\;
\inst16|ALT_INV_result[6]~276_combout\ <= NOT \inst16|result[6]~276_combout\;
\inst16|ALT_INV_result[6]~275_combout\ <= NOT \inst16|result[6]~275_combout\;
\inst16|ALT_INV_result[6]~274_combout\ <= NOT \inst16|result[6]~274_combout\;
\inst16|ALT_INV_result[6]~273_combout\ <= NOT \inst16|result[6]~273_combout\;
\inst16|ALT_INV_result[6]~272_combout\ <= NOT \inst16|result[6]~272_combout\;
\inst16|ALT_INV_result[7]~271_combout\ <= NOT \inst16|result[7]~271_combout\;
\inst16|ALT_INV_result[7]~270_combout\ <= NOT \inst16|result[7]~270_combout\;
\inst16|ALT_INV_result[7]~269_combout\ <= NOT \inst16|result[7]~269_combout\;
\inst16|ALT_INV__~16_combout\ <= NOT \inst16|_~16_combout\;
\inst16|ALT_INV__~15_combout\ <= NOT \inst16|_~15_combout\;
\inst16|ALT_INV_result[7]~268_combout\ <= NOT \inst16|result[7]~268_combout\;
\inst16|ALT_INV__~14_combout\ <= NOT \inst16|_~14_combout\;
\inst16|ALT_INV__~13_combout\ <= NOT \inst16|_~13_combout\;
\inst16|ALT_INV__~12_combout\ <= NOT \inst16|_~12_combout\;
\inst16|ALT_INV_result[7]~267_combout\ <= NOT \inst16|result[7]~267_combout\;
\inst16|ALT_INV__~11_combout\ <= NOT \inst16|_~11_combout\;
\inst16|ALT_INV__~10_combout\ <= NOT \inst16|_~10_combout\;
\inst16|ALT_INV__~9_combout\ <= NOT \inst16|_~9_combout\;
\inst16|ALT_INV_result[7]~266_combout\ <= NOT \inst16|result[7]~266_combout\;
\inst16|ALT_INV__~8_combout\ <= NOT \inst16|_~8_combout\;
\inst16|ALT_INV__~7_combout\ <= NOT \inst16|_~7_combout\;
\inst16|ALT_INV__~6_combout\ <= NOT \inst16|_~6_combout\;
\inst16|ALT_INV_result[7]~265_combout\ <= NOT \inst16|result[7]~265_combout\;
\inst16|ALT_INV__~5_combout\ <= NOT \inst16|_~5_combout\;
\inst16|ALT_INV__~4_combout\ <= NOT \inst16|_~4_combout\;
\inst16|ALT_INV__~3_combout\ <= NOT \inst16|_~3_combout\;
\inst16|ALT_INV_result[7]~264_combout\ <= NOT \inst16|result[7]~264_combout\;
\inst16|ALT_INV__~2_combout\ <= NOT \inst16|_~2_combout\;
\inst16|ALT_INV__~1_combout\ <= NOT \inst16|_~1_combout\;
\inst16|ALT_INV__~0_combout\ <= NOT \inst16|_~0_combout\;
\inst252|ALT_INV_ROM~1_combout\ <= NOT \inst252|ROM~1_combout\;
\inst252|ALT_INV_ROM~0_combout\ <= NOT \inst252|ROM~0_combout\;
\inst24|ALT_INV_Mux8~0_combout\ <= NOT \inst24|Mux8~0_combout\;
\inst4|ALT_INV_Add0~29_sumout\ <= NOT \inst4|Add0~29_sumout\;
\inst3|ALT_INV_Add0~29_sumout\ <= NOT \inst3|Add0~29_sumout\;
\inst3|ALT_INV_Add0~25_sumout\ <= NOT \inst3|Add0~25_sumout\;
\inst4|ALT_INV_Add0~25_sumout\ <= NOT \inst4|Add0~25_sumout\;
\inst3|ALT_INV_Add0~21_sumout\ <= NOT \inst3|Add0~21_sumout\;
\inst4|ALT_INV_Add0~21_sumout\ <= NOT \inst4|Add0~21_sumout\;
\inst3|ALT_INV_Add0~17_sumout\ <= NOT \inst3|Add0~17_sumout\;
\inst4|ALT_INV_Add0~17_sumout\ <= NOT \inst4|Add0~17_sumout\;
\inst4|ALT_INV_Add0~13_sumout\ <= NOT \inst4|Add0~13_sumout\;
\inst3|ALT_INV_Add0~13_sumout\ <= NOT \inst3|Add0~13_sumout\;
\inst4|ALT_INV_Add0~9_sumout\ <= NOT \inst4|Add0~9_sumout\;
\inst3|ALT_INV_Add0~9_sumout\ <= NOT \inst3|Add0~9_sumout\;
\inst4|ALT_INV_Add0~5_sumout\ <= NOT \inst4|Add0~5_sumout\;
\inst3|ALT_INV_Add0~5_sumout\ <= NOT \inst3|Add0~5_sumout\;
\inst4|ALT_INV_Add0~1_sumout\ <= NOT \inst4|Add0~1_sumout\;
\inst3|ALT_INV_Add0~1_sumout\ <= NOT \inst3|Add0~1_sumout\;
\inst19|ALT_INV_Add0~29_sumout\ <= NOT \inst19|Add0~29_sumout\;
\inst1|ALT_INV_Add0~29_sumout\ <= NOT \inst1|Add0~29_sumout\;
\inst24|ALT_INV_Add0~29_sumout\ <= NOT \inst24|Add0~29_sumout\;
\inst4|ALT_INV_Regist\(0) <= NOT \inst4|Regist\(0);
\inst3|ALT_INV_Regist\(0) <= NOT \inst3|Regist\(0);
\inst24|ALT_INV_Add1~29_sumout\ <= NOT \inst24|Add1~29_sumout\;
\inst20|ALT_INV_Add0~29_sumout\ <= NOT \inst20|Add0~29_sumout\;
\inst10|ALT_INV_Add0~29_sumout\ <= NOT \inst10|Add0~29_sumout\;
\inst2|ALT_INV_Add0~29_sumout\ <= NOT \inst2|Add0~29_sumout\;
\inst17|ALT_INV_Add0~29_sumout\ <= NOT \inst17|Add0~29_sumout\;
\inst9|ALT_INV_Add0~29_sumout\ <= NOT \inst9|Add0~29_sumout\;
\inst18|ALT_INV_Add0~29_sumout\ <= NOT \inst18|Add0~29_sumout\;
\inst14|ALT_INV_Add0~29_sumout\ <= NOT \inst14|Add0~29_sumout\;
\inst5|ALT_INV_Add0~29_sumout\ <= NOT \inst5|Add0~29_sumout\;
\inst7|ALT_INV_Add0~29_sumout\ <= NOT \inst7|Add0~29_sumout\;
\inst11|ALT_INV_Add0~29_sumout\ <= NOT \inst11|Add0~29_sumout\;
\inst6|ALT_INV_Add0~29_sumout\ <= NOT \inst6|Add0~29_sumout\;
\inst19|ALT_INV_Add0~25_sumout\ <= NOT \inst19|Add0~25_sumout\;
\inst1|ALT_INV_Add0~25_sumout\ <= NOT \inst1|Add0~25_sumout\;
\inst3|ALT_INV_Regist\(1) <= NOT \inst3|Regist\(1);
\inst4|ALT_INV_Regist\(1) <= NOT \inst4|Regist\(1);
\inst24|ALT_INV_Add1~25_sumout\ <= NOT \inst24|Add1~25_sumout\;
\inst24|ALT_INV_Add0~25_sumout\ <= NOT \inst24|Add0~25_sumout\;
\inst20|ALT_INV_Add0~25_sumout\ <= NOT \inst20|Add0~25_sumout\;
\inst10|ALT_INV_Add0~25_sumout\ <= NOT \inst10|Add0~25_sumout\;
\inst2|ALT_INV_Add0~25_sumout\ <= NOT \inst2|Add0~25_sumout\;
\inst17|ALT_INV_Add0~25_sumout\ <= NOT \inst17|Add0~25_sumout\;
\inst9|ALT_INV_Add0~25_sumout\ <= NOT \inst9|Add0~25_sumout\;
\inst18|ALT_INV_Add0~25_sumout\ <= NOT \inst18|Add0~25_sumout\;
\inst14|ALT_INV_Add0~25_sumout\ <= NOT \inst14|Add0~25_sumout\;
\inst5|ALT_INV_Add0~25_sumout\ <= NOT \inst5|Add0~25_sumout\;
\inst7|ALT_INV_Add0~25_sumout\ <= NOT \inst7|Add0~25_sumout\;
\inst11|ALT_INV_Add0~25_sumout\ <= NOT \inst11|Add0~25_sumout\;
\inst6|ALT_INV_Add0~25_sumout\ <= NOT \inst6|Add0~25_sumout\;
\inst19|ALT_INV_Add0~21_sumout\ <= NOT \inst19|Add0~21_sumout\;
\inst1|ALT_INV_Add0~21_sumout\ <= NOT \inst1|Add0~21_sumout\;
\inst3|ALT_INV_Regist\(2) <= NOT \inst3|Regist\(2);
\inst4|ALT_INV_Regist\(2) <= NOT \inst4|Regist\(2);
\inst24|ALT_INV_Add1~21_sumout\ <= NOT \inst24|Add1~21_sumout\;
\inst24|ALT_INV_Add0~21_sumout\ <= NOT \inst24|Add0~21_sumout\;
\inst20|ALT_INV_Add0~21_sumout\ <= NOT \inst20|Add0~21_sumout\;
\inst10|ALT_INV_Add0~21_sumout\ <= NOT \inst10|Add0~21_sumout\;
\inst2|ALT_INV_Add0~21_sumout\ <= NOT \inst2|Add0~21_sumout\;
\inst17|ALT_INV_Add0~21_sumout\ <= NOT \inst17|Add0~21_sumout\;
\inst9|ALT_INV_Add0~21_sumout\ <= NOT \inst9|Add0~21_sumout\;
\inst18|ALT_INV_Add0~21_sumout\ <= NOT \inst18|Add0~21_sumout\;
\inst14|ALT_INV_Add0~21_sumout\ <= NOT \inst14|Add0~21_sumout\;
\inst5|ALT_INV_Add0~21_sumout\ <= NOT \inst5|Add0~21_sumout\;
\inst7|ALT_INV_Add0~21_sumout\ <= NOT \inst7|Add0~21_sumout\;
\inst11|ALT_INV_Add0~21_sumout\ <= NOT \inst11|Add0~21_sumout\;
\inst6|ALT_INV_Add0~21_sumout\ <= NOT \inst6|Add0~21_sumout\;
\inst19|ALT_INV_Add0~17_sumout\ <= NOT \inst19|Add0~17_sumout\;
\inst1|ALT_INV_Add0~17_sumout\ <= NOT \inst1|Add0~17_sumout\;
\inst3|ALT_INV_Regist\(3) <= NOT \inst3|Regist\(3);
\inst4|ALT_INV_Regist\(3) <= NOT \inst4|Regist\(3);
\inst24|ALT_INV_Add1~17_sumout\ <= NOT \inst24|Add1~17_sumout\;
\inst24|ALT_INV_Add0~17_sumout\ <= NOT \inst24|Add0~17_sumout\;
\inst20|ALT_INV_Add0~17_sumout\ <= NOT \inst20|Add0~17_sumout\;
\inst10|ALT_INV_Add0~17_sumout\ <= NOT \inst10|Add0~17_sumout\;
\inst2|ALT_INV_Add0~17_sumout\ <= NOT \inst2|Add0~17_sumout\;
\inst17|ALT_INV_Add0~17_sumout\ <= NOT \inst17|Add0~17_sumout\;
\inst9|ALT_INV_Add0~17_sumout\ <= NOT \inst9|Add0~17_sumout\;
\inst18|ALT_INV_Add0~17_sumout\ <= NOT \inst18|Add0~17_sumout\;
\inst14|ALT_INV_Add0~17_sumout\ <= NOT \inst14|Add0~17_sumout\;
\inst5|ALT_INV_Add0~17_sumout\ <= NOT \inst5|Add0~17_sumout\;
\inst7|ALT_INV_Add0~17_sumout\ <= NOT \inst7|Add0~17_sumout\;
\inst11|ALT_INV_Add0~17_sumout\ <= NOT \inst11|Add0~17_sumout\;
\inst6|ALT_INV_Add0~17_sumout\ <= NOT \inst6|Add0~17_sumout\;
\inst19|ALT_INV_Add0~13_sumout\ <= NOT \inst19|Add0~13_sumout\;
\inst1|ALT_INV_Add0~13_sumout\ <= NOT \inst1|Add0~13_sumout\;
\inst4|ALT_INV_Regist\(4) <= NOT \inst4|Regist\(4);
\inst3|ALT_INV_Regist\(4) <= NOT \inst3|Regist\(4);
\inst24|ALT_INV_Add1~13_sumout\ <= NOT \inst24|Add1~13_sumout\;
\inst24|ALT_INV_Add0~13_sumout\ <= NOT \inst24|Add0~13_sumout\;
\inst20|ALT_INV_Add0~13_sumout\ <= NOT \inst20|Add0~13_sumout\;
\inst10|ALT_INV_Add0~13_sumout\ <= NOT \inst10|Add0~13_sumout\;
\inst2|ALT_INV_Add0~13_sumout\ <= NOT \inst2|Add0~13_sumout\;
\inst17|ALT_INV_Add0~13_sumout\ <= NOT \inst17|Add0~13_sumout\;
\inst9|ALT_INV_Add0~13_sumout\ <= NOT \inst9|Add0~13_sumout\;
\inst18|ALT_INV_Add0~13_sumout\ <= NOT \inst18|Add0~13_sumout\;
\inst14|ALT_INV_Add0~13_sumout\ <= NOT \inst14|Add0~13_sumout\;
\inst5|ALT_INV_Add0~13_sumout\ <= NOT \inst5|Add0~13_sumout\;
\inst7|ALT_INV_Add0~13_sumout\ <= NOT \inst7|Add0~13_sumout\;
\inst11|ALT_INV_Add0~13_sumout\ <= NOT \inst11|Add0~13_sumout\;
\inst6|ALT_INV_Add0~13_sumout\ <= NOT \inst6|Add0~13_sumout\;
\inst19|ALT_INV_Add0~9_sumout\ <= NOT \inst19|Add0~9_sumout\;
\inst1|ALT_INV_Add0~9_sumout\ <= NOT \inst1|Add0~9_sumout\;
\inst4|ALT_INV_Regist\(5) <= NOT \inst4|Regist\(5);
\inst3|ALT_INV_Regist\(5) <= NOT \inst3|Regist\(5);
\inst24|ALT_INV_Add1~9_sumout\ <= NOT \inst24|Add1~9_sumout\;
\inst24|ALT_INV_Add0~9_sumout\ <= NOT \inst24|Add0~9_sumout\;
\inst20|ALT_INV_Add0~9_sumout\ <= NOT \inst20|Add0~9_sumout\;
\inst10|ALT_INV_Add0~9_sumout\ <= NOT \inst10|Add0~9_sumout\;
\inst2|ALT_INV_Add0~9_sumout\ <= NOT \inst2|Add0~9_sumout\;
\inst17|ALT_INV_Add0~9_sumout\ <= NOT \inst17|Add0~9_sumout\;
\inst9|ALT_INV_Add0~9_sumout\ <= NOT \inst9|Add0~9_sumout\;
\inst18|ALT_INV_Add0~9_sumout\ <= NOT \inst18|Add0~9_sumout\;
\inst14|ALT_INV_Add0~9_sumout\ <= NOT \inst14|Add0~9_sumout\;
\inst5|ALT_INV_Add0~9_sumout\ <= NOT \inst5|Add0~9_sumout\;
\inst7|ALT_INV_Add0~9_sumout\ <= NOT \inst7|Add0~9_sumout\;
\inst11|ALT_INV_Add0~9_sumout\ <= NOT \inst11|Add0~9_sumout\;
\inst6|ALT_INV_Add0~9_sumout\ <= NOT \inst6|Add0~9_sumout\;
\inst19|ALT_INV_Add0~5_sumout\ <= NOT \inst19|Add0~5_sumout\;
\inst1|ALT_INV_Add0~5_sumout\ <= NOT \inst1|Add0~5_sumout\;
\inst4|ALT_INV_Regist\(6) <= NOT \inst4|Regist\(6);
\inst3|ALT_INV_Regist\(6) <= NOT \inst3|Regist\(6);
\inst24|ALT_INV_Add1~5_sumout\ <= NOT \inst24|Add1~5_sumout\;
\inst24|ALT_INV_Add0~5_sumout\ <= NOT \inst24|Add0~5_sumout\;
\inst20|ALT_INV_Add0~5_sumout\ <= NOT \inst20|Add0~5_sumout\;
\inst10|ALT_INV_Add0~5_sumout\ <= NOT \inst10|Add0~5_sumout\;
\inst2|ALT_INV_Add0~5_sumout\ <= NOT \inst2|Add0~5_sumout\;
\inst17|ALT_INV_Add0~5_sumout\ <= NOT \inst17|Add0~5_sumout\;
\inst9|ALT_INV_Add0~5_sumout\ <= NOT \inst9|Add0~5_sumout\;
\inst18|ALT_INV_Add0~5_sumout\ <= NOT \inst18|Add0~5_sumout\;
\inst14|ALT_INV_Add0~5_sumout\ <= NOT \inst14|Add0~5_sumout\;
\inst5|ALT_INV_Add0~5_sumout\ <= NOT \inst5|Add0~5_sumout\;
\inst7|ALT_INV_Add0~5_sumout\ <= NOT \inst7|Add0~5_sumout\;
\inst11|ALT_INV_Add0~5_sumout\ <= NOT \inst11|Add0~5_sumout\;
\inst6|ALT_INV_Add0~5_sumout\ <= NOT \inst6|Add0~5_sumout\;
\inst19|ALT_INV_Add0~1_sumout\ <= NOT \inst19|Add0~1_sumout\;
\inst8|ALT_INV_Add0~29_sumout\ <= NOT \inst8|Add0~29_sumout\;
\inst1|ALT_INV_Add0~1_sumout\ <= NOT \inst1|Add0~1_sumout\;
\inst4|ALT_INV_Regist\(7) <= NOT \inst4|Regist\(7);
\inst3|ALT_INV_Regist\(7) <= NOT \inst3|Regist\(7);
\inst24|ALT_INV_Add1~1_sumout\ <= NOT \inst24|Add1~1_sumout\;
\inst24|ALT_INV_Add0~1_sumout\ <= NOT \inst24|Add0~1_sumout\;
\inst20|ALT_INV_Add0~1_sumout\ <= NOT \inst20|Add0~1_sumout\;
\inst10|ALT_INV_Add0~1_sumout\ <= NOT \inst10|Add0~1_sumout\;
\inst2|ALT_INV_Add0~1_sumout\ <= NOT \inst2|Add0~1_sumout\;
\inst17|ALT_INV_Add0~1_sumout\ <= NOT \inst17|Add0~1_sumout\;
\inst9|ALT_INV_Add0~1_sumout\ <= NOT \inst9|Add0~1_sumout\;
\inst18|ALT_INV_Add0~1_sumout\ <= NOT \inst18|Add0~1_sumout\;
\inst14|ALT_INV_Add0~1_sumout\ <= NOT \inst14|Add0~1_sumout\;
\inst5|ALT_INV_Add0~1_sumout\ <= NOT \inst5|Add0~1_sumout\;
\inst7|ALT_INV_Add0~1_sumout\ <= NOT \inst7|Add0~1_sumout\;
\inst11|ALT_INV_Add0~1_sumout\ <= NOT \inst11|Add0~1_sumout\;
\inst6|ALT_INV_Add0~1_sumout\ <= NOT \inst6|Add0~1_sumout\;
\inst8|ALT_INV_Add0~25_sumout\ <= NOT \inst8|Add0~25_sumout\;
\inst8|ALT_INV_Add0~21_sumout\ <= NOT \inst8|Add0~21_sumout\;
\inst8|ALT_INV_Add0~17_sumout\ <= NOT \inst8|Add0~17_sumout\;
\inst8|ALT_INV_Add0~13_sumout\ <= NOT \inst8|Add0~13_sumout\;
\inst8|ALT_INV_Add0~9_sumout\ <= NOT \inst8|Add0~9_sumout\;
\inst8|ALT_INV_Add0~5_sumout\ <= NOT \inst8|Add0~5_sumout\;
\inst8|ALT_INV_Add0~1_sumout\ <= NOT \inst8|Add0~1_sumout\;
\inst19|ALT_INV_Regist\(0) <= NOT \inst19|Regist\(0);
\inst1|ALT_INV_Regist\(0) <= NOT \inst1|Regist\(0);
\inst|altsyncram_component|auto_generated|ALT_INV_q_a\(1) <= NOT \inst|altsyncram_component|auto_generated|q_a\(1);
\inst|altsyncram_component|auto_generated|ALT_INV_q_a\(2) <= NOT \inst|altsyncram_component|auto_generated|q_a\(2);
\inst|altsyncram_component|auto_generated|ALT_INV_q_a\(3) <= NOT \inst|altsyncram_component|auto_generated|q_a\(3);
\inst|altsyncram_component|auto_generated|ALT_INV_q_a\(4) <= NOT \inst|altsyncram_component|auto_generated|q_a\(4);
\inst|altsyncram_component|auto_generated|ALT_INV_q_a\(5) <= NOT \inst|altsyncram_component|auto_generated|q_a\(5);
\inst|altsyncram_component|auto_generated|ALT_INV_q_a\(6) <= NOT \inst|altsyncram_component|auto_generated|q_a\(6);
\inst|altsyncram_component|auto_generated|ALT_INV_q_a\(7) <= NOT \inst|altsyncram_component|auto_generated|q_a\(7);
\inst|altsyncram_component|auto_generated|ALT_INV_q_a\(0) <= NOT \inst|altsyncram_component|auto_generated|q_a\(0);
\inst20|ALT_INV_Regist\(0) <= NOT \inst20|Regist\(0);
\inst10|ALT_INV_Regist\(0) <= NOT \inst10|Regist\(0);
\inst2|ALT_INV_Regist\(0) <= NOT \inst2|Regist\(0);
\inst17|ALT_INV_Regist\(0) <= NOT \inst17|Regist\(0);
\inst9|ALT_INV_Regist\(0) <= NOT \inst9|Regist\(0);
\inst18|ALT_INV_Regist\(0) <= NOT \inst18|Regist\(0);
\inst14|ALT_INV_Regist\(0) <= NOT \inst14|Regist\(0);
\inst5|ALT_INV_Regist\(0) <= NOT \inst5|Regist\(0);
\inst7|ALT_INV_Regist\(0) <= NOT \inst7|Regist\(0);
\inst11|ALT_INV_Regist\(0) <= NOT \inst11|Regist\(0);
\inst6|ALT_INV_Regist\(0) <= NOT \inst6|Regist\(0);
\inst19|ALT_INV_Regist\(1) <= NOT \inst19|Regist\(1);
\inst1|ALT_INV_Regist\(1) <= NOT \inst1|Regist\(1);
\inst20|ALT_INV_Regist\(1) <= NOT \inst20|Regist\(1);
\inst10|ALT_INV_Regist\(1) <= NOT \inst10|Regist\(1);
\inst2|ALT_INV_Regist\(1) <= NOT \inst2|Regist\(1);
\inst17|ALT_INV_Regist\(1) <= NOT \inst17|Regist\(1);
\inst9|ALT_INV_Regist\(1) <= NOT \inst9|Regist\(1);
\inst18|ALT_INV_Regist\(1) <= NOT \inst18|Regist\(1);
\inst14|ALT_INV_Regist\(1) <= NOT \inst14|Regist\(1);
\inst5|ALT_INV_Regist\(1) <= NOT \inst5|Regist\(1);
\inst7|ALT_INV_Regist\(1) <= NOT \inst7|Regist\(1);
\inst11|ALT_INV_Regist\(1) <= NOT \inst11|Regist\(1);
\inst6|ALT_INV_Regist\(1) <= NOT \inst6|Regist\(1);
\inst19|ALT_INV_Regist\(2) <= NOT \inst19|Regist\(2);
\inst1|ALT_INV_Regist\(2) <= NOT \inst1|Regist\(2);
\inst20|ALT_INV_Regist\(2) <= NOT \inst20|Regist\(2);
\inst10|ALT_INV_Regist\(2) <= NOT \inst10|Regist\(2);
\inst2|ALT_INV_Regist\(2) <= NOT \inst2|Regist\(2);
\inst17|ALT_INV_Regist\(2) <= NOT \inst17|Regist\(2);
\inst9|ALT_INV_Regist\(2) <= NOT \inst9|Regist\(2);
\inst18|ALT_INV_Regist\(2) <= NOT \inst18|Regist\(2);
\inst14|ALT_INV_Regist\(2) <= NOT \inst14|Regist\(2);
\inst5|ALT_INV_Regist\(2) <= NOT \inst5|Regist\(2);
\inst7|ALT_INV_Regist\(2) <= NOT \inst7|Regist\(2);
\inst11|ALT_INV_Regist\(2) <= NOT \inst11|Regist\(2);
\inst6|ALT_INV_Regist\(2) <= NOT \inst6|Regist\(2);
\inst19|ALT_INV_Regist\(3) <= NOT \inst19|Regist\(3);
\inst1|ALT_INV_Regist\(3) <= NOT \inst1|Regist\(3);
\inst20|ALT_INV_Regist\(3) <= NOT \inst20|Regist\(3);
\inst10|ALT_INV_Regist\(3) <= NOT \inst10|Regist\(3);
\inst2|ALT_INV_Regist\(3) <= NOT \inst2|Regist\(3);
\inst17|ALT_INV_Regist\(3) <= NOT \inst17|Regist\(3);
\inst9|ALT_INV_Regist\(3) <= NOT \inst9|Regist\(3);
\inst18|ALT_INV_Regist\(3) <= NOT \inst18|Regist\(3);
\inst14|ALT_INV_Regist\(3) <= NOT \inst14|Regist\(3);
\inst5|ALT_INV_Regist\(3) <= NOT \inst5|Regist\(3);
\inst7|ALT_INV_Regist\(3) <= NOT \inst7|Regist\(3);
\inst11|ALT_INV_Regist\(3) <= NOT \inst11|Regist\(3);
\inst6|ALT_INV_Regist\(3) <= NOT \inst6|Regist\(3);
\inst19|ALT_INV_Regist\(4) <= NOT \inst19|Regist\(4);
\inst1|ALT_INV_Regist\(4) <= NOT \inst1|Regist\(4);
\inst20|ALT_INV_Regist\(4) <= NOT \inst20|Regist\(4);
\inst10|ALT_INV_Regist\(4) <= NOT \inst10|Regist\(4);
\inst2|ALT_INV_Regist\(4) <= NOT \inst2|Regist\(4);
\inst17|ALT_INV_Regist\(4) <= NOT \inst17|Regist\(4);
\inst9|ALT_INV_Regist\(4) <= NOT \inst9|Regist\(4);
\inst18|ALT_INV_Regist\(4) <= NOT \inst18|Regist\(4);
\inst14|ALT_INV_Regist\(4) <= NOT \inst14|Regist\(4);
\inst5|ALT_INV_Regist\(4) <= NOT \inst5|Regist\(4);
\inst7|ALT_INV_Regist\(4) <= NOT \inst7|Regist\(4);
\inst11|ALT_INV_Regist\(4) <= NOT \inst11|Regist\(4);
\inst6|ALT_INV_Regist\(4) <= NOT \inst6|Regist\(4);
\inst19|ALT_INV_Regist\(5) <= NOT \inst19|Regist\(5);
\inst1|ALT_INV_Regist\(5) <= NOT \inst1|Regist\(5);
\inst20|ALT_INV_Regist\(5) <= NOT \inst20|Regist\(5);
\inst10|ALT_INV_Regist\(5) <= NOT \inst10|Regist\(5);
\inst2|ALT_INV_Regist\(5) <= NOT \inst2|Regist\(5);
\inst17|ALT_INV_Regist\(5) <= NOT \inst17|Regist\(5);
\inst9|ALT_INV_Regist\(5) <= NOT \inst9|Regist\(5);
\inst18|ALT_INV_Regist\(5) <= NOT \inst18|Regist\(5);
\inst14|ALT_INV_Regist\(5) <= NOT \inst14|Regist\(5);
\inst5|ALT_INV_Regist\(5) <= NOT \inst5|Regist\(5);
\inst7|ALT_INV_Regist\(5) <= NOT \inst7|Regist\(5);
\inst11|ALT_INV_Regist\(5) <= NOT \inst11|Regist\(5);
\inst6|ALT_INV_Regist\(5) <= NOT \inst6|Regist\(5);
\inst19|ALT_INV_Regist\(6) <= NOT \inst19|Regist\(6);
\inst1|ALT_INV_Regist\(6) <= NOT \inst1|Regist\(6);
\inst20|ALT_INV_Regist\(6) <= NOT \inst20|Regist\(6);
\inst10|ALT_INV_Regist\(6) <= NOT \inst10|Regist\(6);
\inst2|ALT_INV_Regist\(6) <= NOT \inst2|Regist\(6);
\inst17|ALT_INV_Regist\(6) <= NOT \inst17|Regist\(6);
\inst9|ALT_INV_Regist\(6) <= NOT \inst9|Regist\(6);
\inst18|ALT_INV_Regist\(6) <= NOT \inst18|Regist\(6);
\inst14|ALT_INV_Regist\(6) <= NOT \inst14|Regist\(6);
\inst5|ALT_INV_Regist\(6) <= NOT \inst5|Regist\(6);
\inst7|ALT_INV_Regist\(6) <= NOT \inst7|Regist\(6);
\inst11|ALT_INV_Regist\(6) <= NOT \inst11|Regist\(6);
\inst6|ALT_INV_Regist\(6) <= NOT \inst6|Regist\(6);
\inst19|ALT_INV_Regist\(7) <= NOT \inst19|Regist\(7);
\inst8|ALT_INV_Regist\(7) <= NOT \inst8|Regist\(7);
\inst1|ALT_INV_Regist\(7) <= NOT \inst1|Regist\(7);
\inst20|ALT_INV_Regist\(7) <= NOT \inst20|Regist\(7);
\inst10|ALT_INV_Regist\(7) <= NOT \inst10|Regist\(7);
\inst2|ALT_INV_Regist\(7) <= NOT \inst2|Regist\(7);
\inst17|ALT_INV_Regist\(7) <= NOT \inst17|Regist\(7);
\inst9|ALT_INV_Regist\(7) <= NOT \inst9|Regist\(7);
\inst18|ALT_INV_Regist\(7) <= NOT \inst18|Regist\(7);
\inst14|ALT_INV_Regist\(7) <= NOT \inst14|Regist\(7);
\inst5|ALT_INV_Regist\(7) <= NOT \inst5|Regist\(7);
\inst7|ALT_INV_Regist\(7) <= NOT \inst7|Regist\(7);
\inst11|ALT_INV_Regist\(7) <= NOT \inst11|Regist\(7);
\inst6|ALT_INV_Regist\(7) <= NOT \inst6|Regist\(7);
\inst8|ALT_INV_Regist\(4) <= NOT \inst8|Regist\(4);
\inst8|ALT_INV_Regist\(3) <= NOT \inst8|Regist\(3);
\inst8|ALT_INV_Regist\(2) <= NOT \inst8|Regist\(2);
\inst8|ALT_INV_Regist\(1) <= NOT \inst8|Regist\(1);
\inst8|ALT_INV_Regist\(0) <= NOT \inst8|Regist\(0);
\inst8|ALT_INV_Regist\(6) <= NOT \inst8|Regist\(6);
\inst8|ALT_INV_Regist\(5) <= NOT \inst8|Regist\(5);

-- Location: IOOBUF_X78_Y81_N36
\cacheOut[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_cacheOut(7));

-- Location: IOOBUF_X89_Y9_N39
\cacheOut[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst252|data_out\(6),
	devoe => ww_devoe,
	o => ww_cacheOut(6));

-- Location: IOOBUF_X54_Y0_N53
\cacheOut[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst252|data_out\(5),
	devoe => ww_devoe,
	o => ww_cacheOut(5));

-- Location: IOOBUF_X76_Y81_N36
\cacheOut[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_cacheOut(4));

-- Location: IOOBUF_X38_Y81_N2
\cacheOut[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_cacheOut(3));

-- Location: IOOBUF_X88_Y81_N20
\cacheOut[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_cacheOut(2));

-- Location: IOOBUF_X8_Y0_N2
\cacheOut[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_cacheOut(1));

-- Location: IOOBUF_X36_Y0_N36
\cacheOut[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst252|data_out\(0),
	devoe => ww_devoe,
	o => ww_cacheOut(0));

-- Location: IOOBUF_X50_Y0_N59
\Outd[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|result[7]~271_combout\,
	devoe => ww_devoe,
	o => ww_Outd(7));

-- Location: IOOBUF_X58_Y0_N42
\Outd[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|result[6]~277_combout\,
	devoe => ww_devoe,
	o => ww_Outd(6));

-- Location: IOOBUF_X62_Y0_N19
\Outd[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|result[5]~283_combout\,
	devoe => ww_devoe,
	o => ww_Outd(5));

-- Location: IOOBUF_X60_Y0_N2
\Outd[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|result[4]~289_combout\,
	devoe => ww_devoe,
	o => ww_Outd(4));

-- Location: IOOBUF_X60_Y0_N36
\Outd[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|result[3]~295_combout\,
	devoe => ww_devoe,
	o => ww_Outd(3));

-- Location: IOOBUF_X89_Y6_N56
\Outd[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|result[2]~301_combout\,
	devoe => ww_devoe,
	o => ww_Outd(2));

-- Location: IOOBUF_X62_Y0_N53
\Outd[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|result[1]~307_combout\,
	devoe => ww_devoe,
	o => ww_Outd(1));

-- Location: IOOBUF_X54_Y0_N2
\Outd[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|result[0]~313_combout\,
	devoe => ww_devoe,
	o => ww_Outd(0));

-- Location: IOIBUF_X89_Y35_N61
\CLK~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G10
\CLK~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~input_o\,
	outclk => \CLK~inputCLKENA0_outclk\);

-- Location: IOIBUF_X58_Y0_N75
\SelBus[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SelBus(2),
	o => \SelBus[2]~input_o\);

-- Location: IOIBUF_X58_Y0_N58
\SelBus[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SelBus(1),
	o => \SelBus[1]~input_o\);

-- Location: IOIBUF_X52_Y0_N35
\SelBus[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SelBus(3),
	o => \SelBus[3]~input_o\);

-- Location: IOIBUF_X52_Y0_N18
\SelBus[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SelBus(0),
	o => \SelBus[0]~input_o\);

-- Location: MLABCELL_X52_Y6_N18
\inst3|Regist[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Regist[6]~0_combout\ = ( \SelBus[0]~input_o\ & ( (\SelBus[1]~input_o\ & !\SelBus[3]~input_o\) ) ) # ( !\SelBus[0]~input_o\ & ( (\SelBus[3]~input_o\) # (\SelBus[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010100000101000001011111010111110101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datac => \ALT_INV_SelBus[3]~input_o\,
	datae => \ALT_INV_SelBus[0]~input_o\,
	combout => \inst3|Regist[6]~0_combout\);

-- Location: IOIBUF_X66_Y0_N92
\muxSel[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_muxSel(4),
	o => \muxSel[4]~input_o\);

-- Location: IOIBUF_X56_Y0_N18
\muxSel[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_muxSel(2),
	o => \muxSel[2]~input_o\);

-- Location: IOIBUF_X54_Y0_N35
\muxSel[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_muxSel(5),
	o => \muxSel[5]~input_o\);

-- Location: IOIBUF_X50_Y0_N92
\muxSel[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_muxSel(1),
	o => \muxSel[1]~input_o\);

-- Location: IOIBUF_X89_Y4_N61
\muxSel[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_muxSel(3),
	o => \muxSel[3]~input_o\);

-- Location: IOIBUF_X56_Y0_N1
\muxSel[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_muxSel(0),
	o => \muxSel[0]~input_o\);

-- Location: LABCELL_X55_Y7_N0
\inst16|_~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|_~6_combout\ = ( !\muxSel[3]~input_o\ & ( !\muxSel[0]~input_o\ & ( (!\muxSel[4]~input_o\ & (!\muxSel[2]~input_o\ & (!\muxSel[5]~input_o\ & \muxSel[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_muxSel[4]~input_o\,
	datab => \ALT_INV_muxSel[2]~input_o\,
	datac => \ALT_INV_muxSel[5]~input_o\,
	datad => \ALT_INV_muxSel[1]~input_o\,
	datae => \ALT_INV_muxSel[3]~input_o\,
	dataf => \ALT_INV_muxSel[0]~input_o\,
	combout => \inst16|_~6_combout\);

-- Location: LABCELL_X57_Y4_N12
\inst16|_~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|_~8_combout\ = ( !\muxSel[4]~input_o\ & ( !\muxSel[0]~input_o\ & ( (\muxSel[2]~input_o\ & (!\muxSel[1]~input_o\ & (\muxSel[3]~input_o\ & !\muxSel[5]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_muxSel[2]~input_o\,
	datab => \ALT_INV_muxSel[1]~input_o\,
	datac => \ALT_INV_muxSel[3]~input_o\,
	datad => \ALT_INV_muxSel[5]~input_o\,
	datae => \ALT_INV_muxSel[4]~input_o\,
	dataf => \ALT_INV_muxSel[0]~input_o\,
	combout => \inst16|_~8_combout\);

-- Location: LABCELL_X57_Y3_N6
\inst16|_~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|_~11_combout\ = ( \muxSel[3]~input_o\ & ( !\muxSel[4]~input_o\ & ( (\muxSel[2]~input_o\ & (\muxSel[0]~input_o\ & (!\muxSel[5]~input_o\ & \muxSel[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_muxSel[2]~input_o\,
	datab => \ALT_INV_muxSel[0]~input_o\,
	datac => \ALT_INV_muxSel[5]~input_o\,
	datad => \ALT_INV_muxSel[1]~input_o\,
	datae => \ALT_INV_muxSel[3]~input_o\,
	dataf => \ALT_INV_muxSel[4]~input_o\,
	combout => \inst16|_~11_combout\);

-- Location: LABCELL_X55_Y7_N51
\inst16|_~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|_~10_combout\ = ( \muxSel[3]~input_o\ & ( !\muxSel[4]~input_o\ & ( (!\muxSel[5]~input_o\ & (\muxSel[2]~input_o\ & (!\muxSel[1]~input_o\ & \muxSel[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_muxSel[5]~input_o\,
	datab => \ALT_INV_muxSel[2]~input_o\,
	datac => \ALT_INV_muxSel[1]~input_o\,
	datad => \ALT_INV_muxSel[0]~input_o\,
	datae => \ALT_INV_muxSel[3]~input_o\,
	dataf => \ALT_INV_muxSel[4]~input_o\,
	combout => \inst16|_~10_combout\);

-- Location: LABCELL_X55_Y7_N21
\inst16|_~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|_~9_combout\ = ( !\muxSel[3]~input_o\ & ( !\muxSel[4]~input_o\ & ( (!\muxSel[5]~input_o\ & (!\muxSel[2]~input_o\ & (\muxSel[1]~input_o\ & \muxSel[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_muxSel[5]~input_o\,
	datab => \ALT_INV_muxSel[2]~input_o\,
	datac => \ALT_INV_muxSel[1]~input_o\,
	datad => \ALT_INV_muxSel[0]~input_o\,
	datae => \ALT_INV_muxSel[3]~input_o\,
	dataf => \ALT_INV_muxSel[4]~input_o\,
	combout => \inst16|_~9_combout\);

-- Location: LABCELL_X53_Y3_N3
\inst10|Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Mux4~1_combout\ = ( \inst16|result[3]~295_combout\ & ( (!\SelBus[1]~input_o\) # (!\inst10|Regist\(3)) ) ) # ( !\inst16|result[3]~295_combout\ & ( (\SelBus[1]~input_o\ & !\inst10|Regist\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000011111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SelBus[1]~input_o\,
	datad => \inst10|ALT_INV_Regist\(3),
	dataf => \inst16|ALT_INV_result[3]~295_combout\,
	combout => \inst10|Mux4~1_combout\);

-- Location: IOIBUF_X64_Y0_N35
\Destino[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Destino(2),
	o => \Destino[2]~input_o\);

-- Location: LABCELL_X55_Y6_N15
\inst16|_~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|_~14_combout\ = ( !\muxSel[0]~input_o\ & ( \muxSel[4]~input_o\ & ( (!\muxSel[5]~input_o\ & (!\muxSel[3]~input_o\ & (!\muxSel[1]~input_o\ & !\muxSel[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_muxSel[5]~input_o\,
	datab => \ALT_INV_muxSel[3]~input_o\,
	datac => \ALT_INV_muxSel[1]~input_o\,
	datad => \ALT_INV_muxSel[2]~input_o\,
	datae => \ALT_INV_muxSel[0]~input_o\,
	dataf => \ALT_INV_muxSel[4]~input_o\,
	combout => \inst16|_~14_combout\);

-- Location: LABCELL_X57_Y3_N3
\inst16|_~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|_~13_combout\ = ( \muxSel[1]~input_o\ & ( \muxSel[2]~input_o\ & ( (\muxSel[3]~input_o\ & (!\muxSel[0]~input_o\ & (!\muxSel[4]~input_o\ & !\muxSel[5]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_muxSel[3]~input_o\,
	datab => \ALT_INV_muxSel[0]~input_o\,
	datac => \ALT_INV_muxSel[4]~input_o\,
	datad => \ALT_INV_muxSel[5]~input_o\,
	datae => \ALT_INV_muxSel[1]~input_o\,
	dataf => \ALT_INV_muxSel[2]~input_o\,
	combout => \inst16|_~13_combout\);

-- Location: LABCELL_X55_Y7_N42
\inst16|_~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|_~12_combout\ = ( !\muxSel[3]~input_o\ & ( \muxSel[0]~input_o\ & ( (!\muxSel[4]~input_o\ & (\muxSel[2]~input_o\ & (!\muxSel[5]~input_o\ & \muxSel[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_muxSel[4]~input_o\,
	datab => \ALT_INV_muxSel[2]~input_o\,
	datac => \ALT_INV_muxSel[5]~input_o\,
	datad => \ALT_INV_muxSel[1]~input_o\,
	datae => \ALT_INV_muxSel[3]~input_o\,
	dataf => \ALT_INV_muxSel[0]~input_o\,
	combout => \inst16|_~12_combout\);

-- Location: LABCELL_X53_Y6_N15
\inst18|Regist[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst18|Regist[0]~0_combout\ = ( \SelBus[3]~input_o\ & ( \SelBus[2]~input_o\ & ( !\SelBus[0]~input_o\ ) ) ) # ( \SelBus[3]~input_o\ & ( !\SelBus[2]~input_o\ & ( !\SelBus[0]~input_o\ ) ) ) # ( !\SelBus[3]~input_o\ & ( !\SelBus[2]~input_o\ & ( 
-- \SelBus[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101111100001111000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datae => \ALT_INV_SelBus[3]~input_o\,
	dataf => \ALT_INV_SelBus[2]~input_o\,
	combout => \inst18|Regist[0]~0_combout\);

-- Location: MLABCELL_X52_Y3_N54
\inst18|Regist[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst18|Regist[0]~2_combout\ = ( !\SelBus[3]~input_o\ & ( \SelBus[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_SelBus[3]~input_o\,
	dataf => \ALT_INV_SelBus[2]~input_o\,
	combout => \inst18|Regist[0]~2_combout\);

-- Location: LABCELL_X61_Y3_N6
\inst19|Regist[7]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Regist[7]~0_combout\ = ( \SelBus[0]~input_o\ & ( (!\SelBus[3]~input_o\ & !\SelBus[2]~input_o\) ) ) # ( !\SelBus[0]~input_o\ & ( !\SelBus[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SelBus[3]~input_o\,
	datac => \ALT_INV_SelBus[2]~input_o\,
	dataf => \ALT_INV_SelBus[0]~input_o\,
	combout => \inst19|Regist[7]~0_combout\);

-- Location: LABCELL_X57_Y3_N27
\inst16|_~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|_~0_combout\ = ( !\muxSel[1]~input_o\ & ( !\muxSel[2]~input_o\ & ( (!\muxSel[3]~input_o\ & (!\muxSel[0]~input_o\ & (!\muxSel[4]~input_o\ & !\muxSel[5]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_muxSel[3]~input_o\,
	datab => \ALT_INV_muxSel[0]~input_o\,
	datac => \ALT_INV_muxSel[4]~input_o\,
	datad => \ALT_INV_muxSel[5]~input_o\,
	datae => \ALT_INV_muxSel[1]~input_o\,
	dataf => \ALT_INV_muxSel[2]~input_o\,
	combout => \inst16|_~0_combout\);

-- Location: LABCELL_X55_Y7_N33
\inst16|_~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|_~2_combout\ = ( \muxSel[3]~input_o\ & ( !\muxSel[4]~input_o\ & ( (!\muxSel[5]~input_o\ & (!\muxSel[2]~input_o\ & (!\muxSel[1]~input_o\ & !\muxSel[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_muxSel[5]~input_o\,
	datab => \ALT_INV_muxSel[2]~input_o\,
	datac => \ALT_INV_muxSel[1]~input_o\,
	datad => \ALT_INV_muxSel[0]~input_o\,
	datae => \ALT_INV_muxSel[3]~input_o\,
	dataf => \ALT_INV_muxSel[4]~input_o\,
	combout => \inst16|_~2_combout\);

-- Location: LABCELL_X55_Y7_N36
\inst16|_~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|_~1_combout\ = ( !\muxSel[3]~input_o\ & ( !\muxSel[0]~input_o\ & ( (!\muxSel[4]~input_o\ & (\muxSel[2]~input_o\ & (!\muxSel[5]~input_o\ & !\muxSel[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_muxSel[4]~input_o\,
	datab => \ALT_INV_muxSel[2]~input_o\,
	datac => \ALT_INV_muxSel[5]~input_o\,
	datad => \ALT_INV_muxSel[1]~input_o\,
	datae => \ALT_INV_muxSel[3]~input_o\,
	dataf => \ALT_INV_muxSel[0]~input_o\,
	combout => \inst16|_~1_combout\);

-- Location: MLABCELL_X52_Y3_N39
\inst18|Regist[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst18|Regist[0]~1_combout\ = ( \SelBus[2]~input_o\ & ( (!\SelBus[3]~input_o\ & \SelBus[0]~input_o\) ) ) # ( !\SelBus[2]~input_o\ & ( !\SelBus[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SelBus[3]~input_o\,
	datad => \ALT_INV_SelBus[0]~input_o\,
	dataf => \ALT_INV_SelBus[2]~input_o\,
	combout => \inst18|Regist[0]~1_combout\);

-- Location: LABCELL_X50_Y3_N42
\inst18|Regist[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst18|Regist[0]~3_combout\ = ( \inst18|Regist[0]~2_combout\ & ( !\inst18|Regist[0]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \inst18|ALT_INV_Regist[0]~2_combout\,
	dataf => \inst18|ALT_INV_Regist[0]~1_combout\,
	combout => \inst18|Regist[0]~3_combout\);

-- Location: IOIBUF_X56_Y0_N52
\MUX_MDR~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MUX_MDR,
	o => \MUX_MDR~input_o\);

-- Location: IOIBUF_X64_Y0_N1
\WR~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WR,
	o => \WR~input_o\);

-- Location: IOIBUF_X62_Y0_N35
\MUX_RAM~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MUX_RAM,
	o => \MUX_RAM~input_o\);

-- Location: IOIBUF_X60_Y0_N18
\MUX_MAR~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MUX_MAR,
	o => \MUX_MAR~input_o\);

-- Location: IOIBUF_X40_Y0_N35
\Destino[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Destino(0),
	o => \Destino[0]~input_o\);

-- Location: LABCELL_X55_Y3_N42
\inst16|result[0]~311\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|result[0]~311_combout\ = ( \inst16|result[0]~313_combout\ & ( \inst1|Regist\(0) & ( (!\inst16|_~13_combout\ & (!\inst16|_~12_combout\ & ((!\inst16|_~14_combout\) # (!\Destino[0]~input_o\)))) ) ) ) # ( !\inst16|result[0]~313_combout\ & ( 
-- \inst1|Regist\(0) & ( (!\inst16|_~12_combout\ & ((!\inst16|_~14_combout\) # (!\Destino[0]~input_o\))) ) ) ) # ( \inst16|result[0]~313_combout\ & ( !\inst1|Regist\(0) & ( (!\inst16|_~13_combout\ & ((!\inst16|_~14_combout\) # (!\Destino[0]~input_o\))) ) ) ) 
-- # ( !\inst16|result[0]~313_combout\ & ( !\inst1|Regist\(0) & ( (!\inst16|_~14_combout\) # (!\Destino[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111001100101010101000100011110000110000001010000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV__~13_combout\,
	datab => \inst16|ALT_INV__~14_combout\,
	datac => \inst16|ALT_INV__~12_combout\,
	datad => \ALT_INV_Destino[0]~input_o\,
	datae => \inst16|ALT_INV_result[0]~313_combout\,
	dataf => \inst1|ALT_INV_Regist\(0),
	combout => \inst16|result[0]~311_combout\);

-- Location: IOIBUF_X60_Y0_N52
\AluSel[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AluSel(0),
	o => \AluSel[0]~input_o\);

-- Location: IOIBUF_X50_Y0_N75
\AluSel[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AluSel(1),
	o => \AluSel[1]~input_o\);

-- Location: IOIBUF_X38_Y0_N18
\AluSel[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AluSel(2),
	o => \AluSel[2]~input_o\);

-- Location: LABCELL_X50_Y4_N24
\inst24|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|Mux2~0_combout\ = ( \AluSel[1]~input_o\ & ( \AluSel[2]~input_o\ ) ) # ( !\AluSel[1]~input_o\ & ( \AluSel[2]~input_o\ & ( \AluSel[0]~input_o\ ) ) ) # ( !\AluSel[1]~input_o\ & ( !\AluSel[2]~input_o\ & ( !\AluSel[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100000000000000000000110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_AluSel[0]~input_o\,
	datae => \ALT_INV_AluSel[1]~input_o\,
	dataf => \ALT_INV_AluSel[2]~input_o\,
	combout => \inst24|Mux2~0_combout\);

-- Location: MLABCELL_X52_Y6_N33
\inst24|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|Mux4~0_combout\ = ( !\AluSel[1]~input_o\ & ( (!\AluSel[2]~input_o\ & \AluSel[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_AluSel[2]~input_o\,
	datac => \ALT_INV_AluSel[0]~input_o\,
	dataf => \ALT_INV_AluSel[1]~input_o\,
	combout => \inst24|Mux4~0_combout\);

-- Location: LABCELL_X51_Y6_N30
\inst4|Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Mux4~1_combout\ = ( \inst16|result[3]~295_combout\ & ( (!\SelBus[1]~input_o\) # (!\inst4|Regist\(3)) ) ) # ( !\inst16|result[3]~295_combout\ & ( (\SelBus[1]~input_o\ & !\inst4|Regist\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000011111111110011001111111111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SelBus[1]~input_o\,
	datad => \inst4|ALT_INV_Regist\(3),
	dataf => \inst16|ALT_INV_result[3]~295_combout\,
	combout => \inst4|Mux4~1_combout\);

-- Location: LABCELL_X51_Y6_N51
\inst4|Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Mux3~1_combout\ = ( \inst4|Regist\(4) & ( (!\SelBus[1]~input_o\ & \inst16|result[4]~289_combout\) ) ) # ( !\inst4|Regist\(4) & ( (\inst16|result[4]~289_combout\) # (\SelBus[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111111111001100111111111100000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SelBus[1]~input_o\,
	datad => \inst16|ALT_INV_result[4]~289_combout\,
	dataf => \inst4|ALT_INV_Regist\(4),
	combout => \inst4|Mux3~1_combout\);

-- Location: MLABCELL_X52_Y6_N3
\inst4|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Mux1~0_combout\ = ( \SelBus[0]~input_o\ & ( \inst4|Regist\(5) & ( \inst4|Regist\(7) ) ) ) # ( !\SelBus[0]~input_o\ & ( \inst4|Regist\(5) ) ) # ( \SelBus[0]~input_o\ & ( !\inst4|Regist\(5) & ( \inst4|Regist\(7) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010111111111111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_Regist\(7),
	datae => \ALT_INV_SelBus[0]~input_o\,
	dataf => \inst4|ALT_INV_Regist\(5),
	combout => \inst4|Mux1~0_combout\);

-- Location: LABCELL_X53_Y3_N27
\inst10|Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Mux2~1_combout\ = ( \inst10|Regist\(5) & ( (!\SelBus[1]~input_o\ & \inst16|result[5]~283_combout\) ) ) # ( !\inst10|Regist\(5) & ( (\inst16|result[5]~283_combout\) # (\SelBus[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SelBus[1]~input_o\,
	datad => \inst16|ALT_INV_result[5]~283_combout\,
	dataf => \inst10|ALT_INV_Regist\(5),
	combout => \inst10|Mux2~1_combout\);

-- Location: MLABCELL_X52_Y3_N51
\inst10|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Mux3~0_combout\ = ( \SelBus[0]~input_o\ & ( \inst10|Regist\(5) ) ) # ( !\SelBus[0]~input_o\ & ( \inst10|Regist\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst10|ALT_INV_Regist\(3),
	datad => \inst10|ALT_INV_Regist\(5),
	dataf => \ALT_INV_SelBus[0]~input_o\,
	combout => \inst10|Mux3~0_combout\);

-- Location: LABCELL_X53_Y3_N21
\inst10|Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Mux3~1_combout\ = (!\SelBus[1]~input_o\ & ((\inst16|result[4]~289_combout\))) # (\SelBus[1]~input_o\ & (!\inst10|Regist\(4)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011111100001100001111110000110000111111000011000011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SelBus[1]~input_o\,
	datac => \inst10|ALT_INV_Regist\(4),
	datad => \inst16|ALT_INV_result[4]~289_combout\,
	combout => \inst10|Mux3~1_combout\);

-- Location: LABCELL_X53_Y3_N39
\inst10|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Add0~17_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\)) # (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst16|result[3]~295_combout\)))) ) + ( !\inst10|Regist\(3) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst10|Add0~22\ ))
-- \inst10|Add0~18\ = CARRY(( (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\)) # (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst16|result[3]~295_combout\)))) ) + ( !\inst10|Regist\(3) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst10|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000010100000000000000000010001001110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[3]~input_o\,
	datab => \ALT_INV_SelBus[0]~input_o\,
	datac => \ALT_INV_SelBus[1]~input_o\,
	datad => \inst16|ALT_INV_result[3]~295_combout\,
	dataf => \inst10|ALT_INV_Regist\(3),
	cin => \inst10|Add0~22\,
	sumout => \inst10|Add0~17_sumout\,
	cout => \inst10|Add0~18\);

-- Location: LABCELL_X53_Y3_N42
\inst10|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Add0~13_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\)) # (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst16|result[4]~289_combout\)))) ) + ( !\inst10|Regist\(4) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst10|Add0~18\ ))
-- \inst10|Add0~14\ = CARRY(( (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\)) # (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst16|result[4]~289_combout\)))) ) + ( !\inst10|Regist\(4) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst10|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000010100000000000000000010001001110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[3]~input_o\,
	datab => \ALT_INV_SelBus[0]~input_o\,
	datac => \ALT_INV_SelBus[1]~input_o\,
	datad => \inst16|ALT_INV_result[4]~289_combout\,
	dataf => \inst10|ALT_INV_Regist\(4),
	cin => \inst10|Add0~18\,
	sumout => \inst10|Add0~13_sumout\,
	cout => \inst10|Add0~14\);

-- Location: LABCELL_X53_Y3_N6
\inst10|Mux3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Mux3~2_combout\ = ( \inst10|Add0~13_sumout\ & ( (!\SelBus[2]~input_o\ & (((\inst10|Mux3~1_combout\) # (\inst3|Regist[6]~0_combout\)))) # (\SelBus[2]~input_o\ & (\inst10|Mux3~0_combout\)) ) ) # ( !\inst10|Add0~13_sumout\ & ( (!\SelBus[2]~input_o\ & 
-- (((!\inst3|Regist[6]~0_combout\ & \inst10|Mux3~1_combout\)))) # (\SelBus[2]~input_o\ & (\inst10|Mux3~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111000101000001011100010100110101111101010011010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|ALT_INV_Mux3~0_combout\,
	datab => \inst3|ALT_INV_Regist[6]~0_combout\,
	datac => \ALT_INV_SelBus[2]~input_o\,
	datad => \inst10|ALT_INV_Mux3~1_combout\,
	dataf => \inst10|ALT_INV_Add0~13_sumout\,
	combout => \inst10|Mux3~2_combout\);

-- Location: IOIBUF_X89_Y35_N44
\CLR~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLR,
	o => \CLR~input_o\);

-- Location: CLKCTRL_G8
\CLR~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLR~input_o\,
	outclk => \CLR~inputCLKENA0_outclk\);

-- Location: MLABCELL_X52_Y6_N24
\inst3|Regist[6]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Regist[6]~1_combout\ = ( \SelBus[0]~input_o\ & ( !\SelBus[2]~input_o\ & ( (!\SelBus[1]~input_o\ & \SelBus[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datac => \ALT_INV_SelBus[3]~input_o\,
	datae => \ALT_INV_SelBus[0]~input_o\,
	dataf => \ALT_INV_SelBus[2]~input_o\,
	combout => \inst3|Regist[6]~1_combout\);

-- Location: IOIBUF_X54_Y0_N18
\EnDec~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EnDec,
	o => \EnDec~input_o\);

-- Location: LABCELL_X53_Y2_N54
\inst8|Regist[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|Regist[1]~0_combout\ = ( \SelBus[3]~input_o\ & ( \EnDec~input_o\ & ( !\SelBus[2]~input_o\ ) ) ) # ( !\SelBus[3]~input_o\ & ( \EnDec~input_o\ & ( ((\SelBus[1]~input_o\) # (\SelBus[0]~input_o\)) # (\SelBus[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001111111011111111010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[2]~input_o\,
	datab => \ALT_INV_SelBus[0]~input_o\,
	datac => \ALT_INV_SelBus[1]~input_o\,
	datae => \ALT_INV_SelBus[3]~input_o\,
	dataf => \ALT_INV_EnDec~input_o\,
	combout => \inst8|Regist[1]~0_combout\);

-- Location: IOIBUF_X58_Y0_N92
\SelRegD[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SelRegD(0),
	o => \SelRegD[0]~input_o\);

-- Location: IOIBUF_X66_Y0_N58
\SelRegD[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SelRegD(3),
	o => \SelRegD[3]~input_o\);

-- Location: LABCELL_X57_Y1_N39
\inst5|Regist[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Regist[6]~0_combout\ = ( !\SelRegD[3]~input_o\ & ( (\inst8|Regist[1]~0_combout\ & \SelRegD[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_Regist[1]~0_combout\,
	datac => \ALT_INV_SelRegD[0]~input_o\,
	dataf => \ALT_INV_SelRegD[3]~input_o\,
	combout => \inst5|Regist[6]~0_combout\);

-- Location: IOIBUF_X50_Y0_N41
\SelRegD[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SelRegD(1),
	o => \SelRegD[1]~input_o\);

-- Location: IOIBUF_X56_Y0_N35
\SelRegD[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SelRegD(2),
	o => \SelRegD[2]~input_o\);

-- Location: LABCELL_X55_Y3_N57
\inst10|Regist[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Regist[6]~0_combout\ = ( \SelRegD[1]~input_o\ & ( !\SelRegD[2]~input_o\ & ( \inst5|Regist[6]~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_Regist[6]~0_combout\,
	datae => \ALT_INV_SelRegD[1]~input_o\,
	dataf => \ALT_INV_SelRegD[2]~input_o\,
	combout => \inst10|Regist[6]~0_combout\);

-- Location: FF_X53_Y3_N8
\inst10|Regist[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst10|Mux3~2_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst3|Regist[6]~1_combout\,
	ena => \inst10|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|Regist\(4));

-- Location: LABCELL_X53_Y3_N45
\inst10|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Add0~9_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\)) # (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst16|result[5]~283_combout\)))) ) + ( !\inst10|Regist\(5) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst10|Add0~14\ ))
-- \inst10|Add0~10\ = CARRY(( (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\)) # (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst16|result[5]~283_combout\)))) ) + ( !\inst10|Regist\(5) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst10|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000010100000000000000000010001001110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[3]~input_o\,
	datab => \ALT_INV_SelBus[0]~input_o\,
	datac => \ALT_INV_SelBus[1]~input_o\,
	datad => \inst16|ALT_INV_result[5]~283_combout\,
	dataf => \inst10|ALT_INV_Regist\(5),
	cin => \inst10|Add0~14\,
	sumout => \inst10|Add0~9_sumout\,
	cout => \inst10|Add0~10\);

-- Location: LABCELL_X53_Y3_N12
\inst10|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Mux2~0_combout\ = ( \inst10|Regist\(6) & ( (\SelBus[0]~input_o\) # (\inst10|Regist\(4)) ) ) # ( !\inst10|Regist\(6) & ( (\inst10|Regist\(4) & !\SelBus[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst10|ALT_INV_Regist\(4),
	datad => \ALT_INV_SelBus[0]~input_o\,
	dataf => \inst10|ALT_INV_Regist\(6),
	combout => \inst10|Mux2~0_combout\);

-- Location: LABCELL_X53_Y3_N15
\inst10|Mux2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Mux2~2_combout\ = ( \inst10|Mux2~0_combout\ & ( ((!\inst3|Regist[6]~0_combout\ & (\inst10|Mux2~1_combout\)) # (\inst3|Regist[6]~0_combout\ & ((\inst10|Add0~9_sumout\)))) # (\SelBus[2]~input_o\) ) ) # ( !\inst10|Mux2~0_combout\ & ( 
-- (!\SelBus[2]~input_o\ & ((!\inst3|Regist[6]~0_combout\ & (\inst10|Mux2~1_combout\)) # (\inst3|Regist[6]~0_combout\ & ((\inst10|Add0~9_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101001011101011111110101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[2]~input_o\,
	datab => \inst3|ALT_INV_Regist[6]~0_combout\,
	datac => \inst10|ALT_INV_Mux2~1_combout\,
	datad => \inst10|ALT_INV_Add0~9_sumout\,
	dataf => \inst10|ALT_INV_Mux2~0_combout\,
	combout => \inst10|Mux2~2_combout\);

-- Location: FF_X53_Y3_N17
\inst10|Regist[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst10|Mux2~2_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst3|Regist[6]~1_combout\,
	ena => \inst10|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|Regist\(5));

-- Location: LABCELL_X50_Y3_N57
\inst19|Regist[7]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Regist[7]~1_combout\ = ( \inst18|Regist[0]~2_combout\ & ( !\inst19|Regist[7]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \inst18|ALT_INV_Regist[0]~2_combout\,
	dataf => \inst19|ALT_INV_Regist[7]~0_combout\,
	combout => \inst19|Regist[7]~1_combout\);

-- Location: LABCELL_X53_Y3_N30
\inst10|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Add0~29_sumout\ = SUM(( (!\SelBus[3]~input_o\) # ((\inst16|result[0]~313_combout\) # (\SelBus[1]~input_o\)) ) + ( !\inst10|Regist\(0) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( !VCC ))
-- \inst10|Add0~30\ = CARRY(( (!\SelBus[3]~input_o\) # ((\inst16|result[0]~313_combout\) # (\SelBus[1]~input_o\)) ) + ( !\inst10|Regist\(0) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111000011110000100000000000000001011101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[3]~input_o\,
	datab => \ALT_INV_SelBus[1]~input_o\,
	datac => \inst10|ALT_INV_Regist\(0),
	datad => \inst16|ALT_INV_result[0]~313_combout\,
	cin => GND,
	sumout => \inst10|Add0~29_sumout\,
	cout => \inst10|Add0~30\);

-- Location: IOIBUF_X72_Y0_N1
\Destino[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Destino(1),
	o => \Destino[1]~input_o\);

-- Location: LABCELL_X57_Y4_N51
\inst17|Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst17|Mux4~1_combout\ = ( \inst17|Regist\(3) & ( (!\SelBus[1]~input_o\ & \inst16|result[3]~295_combout\) ) ) # ( !\inst17|Regist\(3) & ( (\inst16|result[3]~295_combout\) # (\SelBus[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111010101011111111100000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datad => \inst16|ALT_INV_result[3]~295_combout\,
	dataf => \inst17|ALT_INV_Regist\(3),
	combout => \inst17|Mux4~1_combout\);

-- Location: LABCELL_X60_Y4_N45
\inst17|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst17|Mux3~0_combout\ = ( \inst17|Regist\(5) & ( (\inst17|Regist\(3)) # (\SelBus[0]~input_o\) ) ) # ( !\inst17|Regist\(5) & ( (!\SelBus[0]~input_o\ & \inst17|Regist\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010010111110101111100001010000010100101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[0]~input_o\,
	datac => \inst17|ALT_INV_Regist\(3),
	datae => \inst17|ALT_INV_Regist\(5),
	combout => \inst17|Mux3~0_combout\);

-- Location: LABCELL_X57_Y4_N57
\inst17|Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst17|Mux3~1_combout\ = ( \inst17|Regist\(4) & ( (\inst16|result[4]~289_combout\ & !\SelBus[1]~input_o\) ) ) # ( !\inst17|Regist\(4) & ( (\SelBus[1]~input_o\) # (\inst16|result[4]~289_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst16|ALT_INV_result[4]~289_combout\,
	datad => \ALT_INV_SelBus[1]~input_o\,
	dataf => \inst17|ALT_INV_Regist\(4),
	combout => \inst17|Mux3~1_combout\);

-- Location: MLABCELL_X59_Y4_N0
\inst17|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst17|Add0~29_sumout\ = SUM(( (!\SelBus[3]~input_o\) # ((\inst16|result[0]~313_combout\) # (\SelBus[1]~input_o\)) ) + ( !\inst17|Regist\(0) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( !VCC ))
-- \inst17|Add0~30\ = CARRY(( (!\SelBus[3]~input_o\) # ((\inst16|result[0]~313_combout\) # (\SelBus[1]~input_o\)) ) + ( !\inst17|Regist\(0) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000001011101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[3]~input_o\,
	datab => \ALT_INV_SelBus[1]~input_o\,
	datad => \inst16|ALT_INV_result[0]~313_combout\,
	dataf => \inst17|ALT_INV_Regist\(0),
	cin => GND,
	sumout => \inst17|Add0~29_sumout\,
	cout => \inst17|Add0~30\);

-- Location: MLABCELL_X59_Y4_N3
\inst17|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst17|Add0~25_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[1]~307_combout\)))) ) + ( !\inst17|Regist\(1) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst17|Add0~30\ ))
-- \inst17|Add0~26\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[1]~307_combout\)))) ) + ( !\inst17|Regist\(1) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst17|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000000101001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[3]~input_o\,
	datab => \ALT_INV_SelBus[1]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst16|ALT_INV_result[1]~307_combout\,
	dataf => \inst17|ALT_INV_Regist\(1),
	cin => \inst17|Add0~30\,
	sumout => \inst17|Add0~25_sumout\,
	cout => \inst17|Add0~26\);

-- Location: MLABCELL_X59_Y4_N6
\inst17|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst17|Add0~21_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[2]~301_combout\)))) ) + ( !\inst17|Regist\(2) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst17|Add0~26\ ))
-- \inst17|Add0~22\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[2]~301_combout\)))) ) + ( !\inst17|Regist\(2) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst17|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000000101001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[3]~input_o\,
	datab => \ALT_INV_SelBus[1]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst16|ALT_INV_result[2]~301_combout\,
	dataf => \inst17|ALT_INV_Regist\(2),
	cin => \inst17|Add0~26\,
	sumout => \inst17|Add0~21_sumout\,
	cout => \inst17|Add0~22\);

-- Location: MLABCELL_X59_Y4_N9
\inst17|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst17|Add0~17_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[3]~295_combout\)))) ) + ( !\inst17|Regist\(3) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst17|Add0~22\ ))
-- \inst17|Add0~18\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[3]~295_combout\)))) ) + ( !\inst17|Regist\(3) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst17|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000000101001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[3]~input_o\,
	datab => \ALT_INV_SelBus[1]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst16|ALT_INV_result[3]~295_combout\,
	dataf => \inst17|ALT_INV_Regist\(3),
	cin => \inst17|Add0~22\,
	sumout => \inst17|Add0~17_sumout\,
	cout => \inst17|Add0~18\);

-- Location: MLABCELL_X59_Y4_N12
\inst17|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst17|Add0~13_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[4]~289_combout\)))) ) + ( !\inst17|Regist\(4) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst17|Add0~18\ ))
-- \inst17|Add0~14\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[4]~289_combout\)))) ) + ( !\inst17|Regist\(4) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst17|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000000101001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[3]~input_o\,
	datab => \ALT_INV_SelBus[1]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst16|ALT_INV_result[4]~289_combout\,
	dataf => \inst17|ALT_INV_Regist\(4),
	cin => \inst17|Add0~18\,
	sumout => \inst17|Add0~13_sumout\,
	cout => \inst17|Add0~14\);

-- Location: MLABCELL_X59_Y4_N30
\inst17|Mux3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst17|Mux3~2_combout\ = ( \inst17|Add0~13_sumout\ & ( (!\SelBus[2]~input_o\ & (((\inst17|Mux3~1_combout\)) # (\inst3|Regist[6]~0_combout\))) # (\SelBus[2]~input_o\ & (((\inst17|Mux3~0_combout\)))) ) ) # ( !\inst17|Add0~13_sumout\ & ( 
-- (!\SelBus[2]~input_o\ & (!\inst3|Regist[6]~0_combout\ & ((\inst17|Mux3~1_combout\)))) # (\SelBus[2]~input_o\ & (((\inst17|Mux3~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110001101000001011000110100100111101011110010011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[2]~input_o\,
	datab => \inst3|ALT_INV_Regist[6]~0_combout\,
	datac => \inst17|ALT_INV_Mux3~0_combout\,
	datad => \inst17|ALT_INV_Mux3~1_combout\,
	dataf => \inst17|ALT_INV_Add0~13_sumout\,
	combout => \inst17|Mux3~2_combout\);

-- Location: MLABCELL_X59_Y2_N42
\inst17|Regist[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst17|Regist[6]~0_combout\ = ( !\SelRegD[3]~input_o\ & ( (!\SelRegD[0]~input_o\ & (\inst8|Regist[1]~0_combout\ & (\SelRegD[1]~input_o\ & \SelRegD[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelRegD[0]~input_o\,
	datab => \inst8|ALT_INV_Regist[1]~0_combout\,
	datac => \ALT_INV_SelRegD[1]~input_o\,
	datad => \ALT_INV_SelRegD[2]~input_o\,
	dataf => \ALT_INV_SelRegD[3]~input_o\,
	combout => \inst17|Regist[6]~0_combout\);

-- Location: FF_X59_Y4_N32
\inst17|Regist[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst17|Mux3~2_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst3|Regist[6]~1_combout\,
	ena => \inst17|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|Regist\(4));

-- Location: LABCELL_X60_Y4_N0
\inst17|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst17|Mux4~0_combout\ = ( \SelBus[0]~input_o\ & ( \inst17|Regist\(4) ) ) # ( !\SelBus[0]~input_o\ & ( \inst17|Regist\(4) & ( \inst17|Regist\(2) ) ) ) # ( !\SelBus[0]~input_o\ & ( !\inst17|Regist\(4) & ( \inst17|Regist\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst17|ALT_INV_Regist\(2),
	datae => \ALT_INV_SelBus[0]~input_o\,
	dataf => \inst17|ALT_INV_Regist\(4),
	combout => \inst17|Mux4~0_combout\);

-- Location: MLABCELL_X59_Y4_N51
\inst17|Mux4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst17|Mux4~2_combout\ = ( \inst17|Add0~17_sumout\ & ( (!\SelBus[2]~input_o\ & (((\inst17|Mux4~1_combout\)) # (\inst3|Regist[6]~0_combout\))) # (\SelBus[2]~input_o\ & (((\inst17|Mux4~0_combout\)))) ) ) # ( !\inst17|Add0~17_sumout\ & ( 
-- (!\SelBus[2]~input_o\ & (!\inst3|Regist[6]~0_combout\ & (\inst17|Mux4~1_combout\))) # (\SelBus[2]~input_o\ & (((\inst17|Mux4~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001011101000010000101110100101010011111110010101001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[2]~input_o\,
	datab => \inst3|ALT_INV_Regist[6]~0_combout\,
	datac => \inst17|ALT_INV_Mux4~1_combout\,
	datad => \inst17|ALT_INV_Mux4~0_combout\,
	dataf => \inst17|ALT_INV_Add0~17_sumout\,
	combout => \inst17|Mux4~2_combout\);

-- Location: FF_X59_Y4_N53
\inst17|Regist[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst17|Mux4~2_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst3|Regist[6]~1_combout\,
	ena => \inst17|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|Regist\(3));

-- Location: MLABCELL_X59_Y4_N42
\inst17|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst17|Mux5~0_combout\ = ( \inst17|Add0~21_sumout\ & ( ((!\SelBus[1]~input_o\ & ((\inst16|result[2]~301_combout\))) # (\SelBus[1]~input_o\ & (!\inst17|Regist\(2)))) # (\inst3|Regist[6]~0_combout\) ) ) # ( !\inst17|Add0~21_sumout\ & ( 
-- (!\inst3|Regist[6]~0_combout\ & ((!\SelBus[1]~input_o\ & ((\inst16|result[2]~301_combout\))) # (\SelBus[1]~input_o\ & (!\inst17|Regist\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000010101000001000001010100001110101111111010111010111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Regist[6]~0_combout\,
	datab => \ALT_INV_SelBus[1]~input_o\,
	datac => \inst17|ALT_INV_Regist\(2),
	datad => \inst16|ALT_INV_result[2]~301_combout\,
	dataf => \inst17|ALT_INV_Add0~21_sumout\,
	combout => \inst17|Mux5~0_combout\);

-- Location: MLABCELL_X59_Y4_N36
\inst17|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst17|Mux5~1_combout\ = ( \inst17|Mux5~0_combout\ & ( (!\SelBus[2]~input_o\) # ((!\SelBus[0]~input_o\ & (\inst17|Regist\(1))) # (\SelBus[0]~input_o\ & ((\inst17|Regist\(3))))) ) ) # ( !\inst17|Mux5~0_combout\ & ( (\SelBus[2]~input_o\ & 
-- ((!\SelBus[0]~input_o\ & (\inst17|Regist\(1))) # (\SelBus[0]~input_o\ & ((\inst17|Regist\(3)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000101000100010000010110111011101011111011101110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[2]~input_o\,
	datab => \inst17|ALT_INV_Regist\(1),
	datac => \inst17|ALT_INV_Regist\(3),
	datad => \ALT_INV_SelBus[0]~input_o\,
	dataf => \inst17|ALT_INV_Mux5~0_combout\,
	combout => \inst17|Mux5~1_combout\);

-- Location: FF_X59_Y4_N38
\inst17|Regist[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst17|Mux5~1_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst3|Regist[6]~1_combout\,
	ena => \inst17|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|Regist\(2));

-- Location: MLABCELL_X59_Y4_N45
\inst17|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst17|Mux6~0_combout\ = ( \inst17|Regist\(1) & ( (!\inst3|Regist[6]~0_combout\ & (!\SelBus[1]~input_o\ & (\inst16|result[1]~307_combout\))) # (\inst3|Regist[6]~0_combout\ & (((\inst17|Add0~25_sumout\)))) ) ) # ( !\inst17|Regist\(1) & ( 
-- (!\inst3|Regist[6]~0_combout\ & (((\inst16|result[1]~307_combout\)) # (\SelBus[1]~input_o\))) # (\inst3|Regist[6]~0_combout\ & (((\inst17|Add0~25_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101001111111001010100111111100001000010111010000100001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Regist[6]~0_combout\,
	datab => \ALT_INV_SelBus[1]~input_o\,
	datac => \inst16|ALT_INV_result[1]~307_combout\,
	datad => \inst17|ALT_INV_Add0~25_sumout\,
	dataf => \inst17|ALT_INV_Regist\(1),
	combout => \inst17|Mux6~0_combout\);

-- Location: MLABCELL_X59_Y4_N57
\inst17|Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst17|Mux6~1_combout\ = ( \inst17|Regist\(0) & ( (!\SelBus[2]~input_o\ & (((\inst17|Mux6~0_combout\)))) # (\SelBus[2]~input_o\ & (((!\SelBus[0]~input_o\)) # (\inst17|Regist\(2)))) ) ) # ( !\inst17|Regist\(0) & ( (!\SelBus[2]~input_o\ & 
-- (((\inst17|Mux6~0_combout\)))) # (\SelBus[2]~input_o\ & (\inst17|Regist\(2) & ((\SelBus[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000101001100110000010100110011111101010011001111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|ALT_INV_Regist\(2),
	datab => \inst17|ALT_INV_Mux6~0_combout\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \ALT_INV_SelBus[2]~input_o\,
	dataf => \inst17|ALT_INV_Regist\(0),
	combout => \inst17|Mux6~1_combout\);

-- Location: FF_X59_Y4_N59
\inst17|Regist[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst17|Mux6~1_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst3|Regist[6]~1_combout\,
	ena => \inst17|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|Regist\(1));

-- Location: LABCELL_X57_Y4_N21
\inst13|$00000|auto_generated|l1_w1_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ = ( \inst17|Regist\(1) & ( \inst16|result[1]~307_combout\ ) ) # ( !\inst17|Regist\(1) & ( \inst16|result[1]~307_combout\ & ( !\MUX_MAR~input_o\ ) ) ) # ( \inst17|Regist\(1) & ( 
-- !\inst16|result[1]~307_combout\ & ( \MUX_MAR~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010110101010101010101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MUX_MAR~input_o\,
	datae => \inst17|ALT_INV_Regist\(1),
	dataf => \inst16|ALT_INV_result[1]~307_combout\,
	combout => \inst13|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X62_Y4_N48
\inst1|Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux6~1_combout\ = ( \inst1|Regist\(1) & ( (!\SelBus[1]~input_o\ & \inst13|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\) ) ) # ( !\inst1|Regist\(1) & ( (\inst13|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\) # (\SelBus[1]~input_o\) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111111111001100111111111100000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SelBus[1]~input_o\,
	datad => \inst13|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\,
	dataf => \inst1|ALT_INV_Regist\(1),
	combout => \inst1|Mux6~1_combout\);

-- Location: LABCELL_X61_Y4_N21
\inst1|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux6~0_combout\ = ( \inst1|Regist\(2) & ( (\inst1|Regist\(0)) # (\SelBus[0]~input_o\) ) ) # ( !\inst1|Regist\(2) & ( (!\SelBus[0]~input_o\ & \inst1|Regist\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst1|ALT_INV_Regist\(0),
	dataf => \inst1|ALT_INV_Regist\(2),
	combout => \inst1|Mux6~0_combout\);

-- Location: LABCELL_X61_Y4_N30
\inst1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add0~29_sumout\ = SUM(( ((!\SelBus[3]~input_o\) # (\inst13|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\)) # (\SelBus[1]~input_o\) ) + ( !\inst1|Regist\(0) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( !VCC ))
-- \inst1|Add0~30\ = CARRY(( ((!\SelBus[3]~input_o\) # (\inst13|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\)) # (\SelBus[1]~input_o\) ) + ( !\inst1|Regist\(0) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111000011110000100000000000000001101110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[3]~input_o\,
	datac => \inst1|ALT_INV_Regist\(0),
	datad => \inst13|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	cin => GND,
	sumout => \inst1|Add0~29_sumout\,
	cout => \inst1|Add0~30\);

-- Location: LABCELL_X61_Y4_N33
\inst1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add0~25_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst13|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\)))) ) + ( !\inst1|Regist\(1) $ (((!\SelBus[1]~input_o\) # 
-- (!\SelBus[3]~input_o\))) ) + ( \inst1|Add0~30\ ))
-- \inst1|Add0~26\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst13|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\)))) ) + ( !\inst1|Regist\(1) $ (((!\SelBus[1]~input_o\) # 
-- (!\SelBus[3]~input_o\))) ) + ( \inst1|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000000110000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[3]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst13|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\,
	dataf => \inst1|ALT_INV_Regist\(1),
	cin => \inst1|Add0~30\,
	sumout => \inst1|Add0~25_sumout\,
	cout => \inst1|Add0~26\);

-- Location: LABCELL_X62_Y4_N6
\inst1|Mux6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux6~2_combout\ = ( \inst1|Add0~25_sumout\ & ( (!\SelBus[2]~input_o\ & (((\inst1|Mux6~1_combout\)) # (\inst3|Regist[6]~0_combout\))) # (\SelBus[2]~input_o\ & (((\inst1|Mux6~0_combout\)))) ) ) # ( !\inst1|Add0~25_sumout\ & ( (!\SelBus[2]~input_o\ & 
-- (!\inst3|Regist[6]~0_combout\ & (\inst1|Mux6~1_combout\))) # (\SelBus[2]~input_o\ & (((\inst1|Mux6~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000111011000010000011101101001100011111110100110001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Regist[6]~0_combout\,
	datab => \ALT_INV_SelBus[2]~input_o\,
	datac => \inst1|ALT_INV_Mux6~1_combout\,
	datad => \inst1|ALT_INV_Mux6~0_combout\,
	dataf => \inst1|ALT_INV_Add0~25_sumout\,
	combout => \inst1|Mux6~2_combout\);

-- Location: LABCELL_X55_Y3_N9
\inst1|Regist[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Regist[6]~0_combout\ = ( \SelRegD[2]~input_o\ & ( (\inst5|Regist[6]~0_combout\ & \SelRegD[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALT_INV_Regist[6]~0_combout\,
	datad => \ALT_INV_SelRegD[1]~input_o\,
	dataf => \ALT_INV_SelRegD[2]~input_o\,
	combout => \inst1|Regist[6]~0_combout\);

-- Location: FF_X62_Y4_N8
\inst1|Regist[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst1|Mux6~2_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst3|Regist[6]~1_combout\,
	ena => \inst1|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Regist\(1));

-- Location: LABCELL_X62_Y4_N42
\inst16|result[1]~305\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|result[1]~305_combout\ = ( \inst16|result[1]~307_combout\ & ( \inst1|Regist\(1) & ( (!\inst16|_~13_combout\ & (!\inst16|_~12_combout\ & ((!\inst16|_~14_combout\) # (!\Destino[1]~input_o\)))) ) ) ) # ( !\inst16|result[1]~307_combout\ & ( 
-- \inst1|Regist\(1) & ( (!\inst16|_~12_combout\ & ((!\inst16|_~14_combout\) # (!\Destino[1]~input_o\))) ) ) ) # ( \inst16|result[1]~307_combout\ & ( !\inst1|Regist\(1) & ( (!\inst16|_~13_combout\ & ((!\inst16|_~14_combout\) # (!\Destino[1]~input_o\))) ) ) ) 
-- # ( !\inst16|result[1]~307_combout\ & ( !\inst1|Regist\(1) & ( (!\inst16|_~14_combout\) # (!\Destino[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000101010101010000011001100110000001000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV__~13_combout\,
	datab => \inst16|ALT_INV__~12_combout\,
	datac => \inst16|ALT_INV__~14_combout\,
	datad => \ALT_INV_Destino[1]~input_o\,
	datae => \inst16|ALT_INV_result[1]~307_combout\,
	dataf => \inst1|ALT_INV_Regist\(1),
	combout => \inst16|result[1]~305_combout\);

-- Location: LABCELL_X51_Y3_N3
\inst20|Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst20|Mux4~1_combout\ = ( \inst20|Regist\(4) & ( (\SelBus[0]~input_o\) # (\inst20|Regist\(2)) ) ) # ( !\inst20|Regist\(4) & ( (\inst20|Regist\(2) & !\SelBus[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst20|ALT_INV_Regist\(2),
	datad => \ALT_INV_SelBus[0]~input_o\,
	dataf => \inst20|ALT_INV_Regist\(4),
	combout => \inst20|Mux4~1_combout\);

-- Location: LABCELL_X50_Y5_N30
\inst3|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux7~0_combout\ = ( \inst3|Regist\(1) & ( (!\inst18|Regist[0]~1_combout\ & (!\inst18|Regist[0]~2_combout\ & (!\inst3|Regist\(0)))) # (\inst18|Regist[0]~1_combout\ & (((\inst16|result[0]~313_combout\)) # (\inst18|Regist[0]~2_combout\))) ) ) # ( 
-- !\inst3|Regist\(1) & ( (!\inst18|Regist[0]~2_combout\ & ((!\inst18|Regist[0]~1_combout\ & (!\inst3|Regist\(0))) # (\inst18|Regist[0]~1_combout\ & ((\inst16|result[0]~313_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000011000100100000001100010010010001110101011001000111010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|ALT_INV_Regist[0]~1_combout\,
	datab => \inst18|ALT_INV_Regist[0]~2_combout\,
	datac => \inst3|ALT_INV_Regist\(0),
	datad => \inst16|ALT_INV_result[0]~313_combout\,
	dataf => \inst3|ALT_INV_Regist\(1),
	combout => \inst3|Mux7~0_combout\);

-- Location: LABCELL_X50_Y4_N3
\inst3|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux2~0_combout\ = ( \inst3|Regist\(6) & ( \inst3|Regist\(4) ) ) # ( !\inst3|Regist\(6) & ( \inst3|Regist\(4) & ( !\SelBus[0]~input_o\ ) ) ) # ( \inst3|Regist\(6) & ( !\inst3|Regist\(4) & ( \SelBus[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010110101010101010101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[0]~input_o\,
	datae => \inst3|ALT_INV_Regist\(6),
	dataf => \inst3|ALT_INV_Regist\(4),
	combout => \inst3|Mux2~0_combout\);

-- Location: LABCELL_X51_Y4_N27
\inst3|Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux2~1_combout\ = ( \inst16|result[5]~283_combout\ & ( (!\SelBus[1]~input_o\) # (!\inst3|Regist\(5)) ) ) # ( !\inst16|result[5]~283_combout\ & ( (\SelBus[1]~input_o\ & !\inst3|Regist\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000011111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SelBus[1]~input_o\,
	datad => \inst3|ALT_INV_Regist\(5),
	dataf => \inst16|ALT_INV_result[5]~283_combout\,
	combout => \inst3|Mux2~1_combout\);

-- Location: LABCELL_X51_Y4_N42
\inst3|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~13_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[4]~289_combout\)))) ) + ( !\inst3|Regist\(4) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst3|Add0~18\ ))
-- \inst3|Add0~14\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[4]~289_combout\)))) ) + ( !\inst3|Regist\(4) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst3|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000000101001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[3]~input_o\,
	datab => \ALT_INV_SelBus[1]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst16|ALT_INV_result[4]~289_combout\,
	dataf => \inst3|ALT_INV_Regist\(4),
	cin => \inst3|Add0~18\,
	sumout => \inst3|Add0~13_sumout\,
	cout => \inst3|Add0~14\);

-- Location: LABCELL_X51_Y4_N45
\inst3|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~9_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[5]~283_combout\)))) ) + ( !\inst3|Regist\(5) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst3|Add0~14\ ))
-- \inst3|Add0~10\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[5]~283_combout\)))) ) + ( !\inst3|Regist\(5) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst3|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000000101001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[3]~input_o\,
	datab => \ALT_INV_SelBus[1]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst16|ALT_INV_result[5]~283_combout\,
	dataf => \inst3|ALT_INV_Regist\(5),
	cin => \inst3|Add0~14\,
	sumout => \inst3|Add0~9_sumout\,
	cout => \inst3|Add0~10\);

-- Location: LABCELL_X51_Y4_N21
\inst3|Mux2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux2~2_combout\ = ( \inst3|Add0~9_sumout\ & ( (!\SelBus[2]~input_o\ & (((\inst3|Mux2~1_combout\) # (\inst3|Regist[6]~0_combout\)))) # (\SelBus[2]~input_o\ & (\inst3|Mux2~0_combout\)) ) ) # ( !\inst3|Add0~9_sumout\ & ( (!\SelBus[2]~input_o\ & 
-- (((!\inst3|Regist[6]~0_combout\ & \inst3|Mux2~1_combout\)))) # (\SelBus[2]~input_o\ & (\inst3|Mux2~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110110001000100011011000100011011101110110001101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[2]~input_o\,
	datab => \inst3|ALT_INV_Mux2~0_combout\,
	datac => \inst3|ALT_INV_Regist[6]~0_combout\,
	datad => \inst3|ALT_INV_Mux2~1_combout\,
	dataf => \inst3|ALT_INV_Add0~9_sumout\,
	combout => \inst3|Mux2~2_combout\);

-- Location: MLABCELL_X59_Y2_N54
\inst8|Regist[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|Regist[1]~1_combout\ = ( \inst8|Regist[1]~0_combout\ & ( (\SelRegD[3]~input_o\ & \SelRegD[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SelRegD[3]~input_o\,
	datad => \ALT_INV_SelRegD[0]~input_o\,
	dataf => \inst8|ALT_INV_Regist[1]~0_combout\,
	combout => \inst8|Regist[1]~1_combout\);

-- Location: LABCELL_X50_Y4_N51
\inst3|Regist[6]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Regist[6]~2_combout\ = ( \SelRegD[2]~input_o\ & ( \inst8|Regist[1]~1_combout\ & ( !\SelRegD[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SelRegD[1]~input_o\,
	datae => \ALT_INV_SelRegD[2]~input_o\,
	dataf => \inst8|ALT_INV_Regist[1]~1_combout\,
	combout => \inst3|Regist[6]~2_combout\);

-- Location: FF_X51_Y4_N23
\inst3|Regist[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst3|Mux2~2_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst3|Regist[6]~1_combout\,
	ena => \inst3|Regist[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|Regist\(5));

-- Location: LABCELL_X51_Y4_N48
\inst3|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~5_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[6]~277_combout\)))) ) + ( !\inst3|Regist\(6) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst3|Add0~10\ ))
-- \inst3|Add0~6\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[6]~277_combout\)))) ) + ( !\inst3|Regist\(6) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst3|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000000101001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[3]~input_o\,
	datab => \ALT_INV_SelBus[1]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst16|ALT_INV_result[6]~277_combout\,
	dataf => \inst3|ALT_INV_Regist\(6),
	cin => \inst3|Add0~10\,
	sumout => \inst3|Add0~5_sumout\,
	cout => \inst3|Add0~6\);

-- Location: LABCELL_X50_Y4_N6
\inst3|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux1~1_combout\ = ( \inst16|result[6]~277_combout\ & ( (!\SelBus[1]~input_o\) # (!\inst3|Regist\(6)) ) ) # ( !\inst16|result[6]~277_combout\ & ( (\SelBus[1]~input_o\ & !\inst3|Regist\(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000011111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SelBus[1]~input_o\,
	datad => \inst3|ALT_INV_Regist\(6),
	dataf => \inst16|ALT_INV_result[6]~277_combout\,
	combout => \inst3|Mux1~1_combout\);

-- Location: LABCELL_X50_Y4_N9
\inst3|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux1~0_combout\ = ( \inst3|Regist\(7) & ( (\inst3|Regist\(5)) # (\SelBus[0]~input_o\) ) ) # ( !\inst3|Regist\(7) & ( (!\SelBus[0]~input_o\ & \inst3|Regist\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[0]~input_o\,
	datac => \inst3|ALT_INV_Regist\(5),
	dataf => \inst3|ALT_INV_Regist\(7),
	combout => \inst3|Mux1~0_combout\);

-- Location: LABCELL_X51_Y4_N12
\inst3|Mux1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux1~2_combout\ = ( \inst3|Mux1~0_combout\ & ( ((!\inst3|Regist[6]~0_combout\ & ((\inst3|Mux1~1_combout\))) # (\inst3|Regist[6]~0_combout\ & (\inst3|Add0~5_sumout\))) # (\SelBus[2]~input_o\) ) ) # ( !\inst3|Mux1~0_combout\ & ( (!\SelBus[2]~input_o\ 
-- & ((!\inst3|Regist[6]~0_combout\ & ((\inst3|Mux1~1_combout\))) # (\inst3|Regist[6]~0_combout\ & (\inst3|Add0~5_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101001010111110111110101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[2]~input_o\,
	datab => \inst3|ALT_INV_Regist[6]~0_combout\,
	datac => \inst3|ALT_INV_Add0~5_sumout\,
	datad => \inst3|ALT_INV_Mux1~1_combout\,
	dataf => \inst3|ALT_INV_Mux1~0_combout\,
	combout => \inst3|Mux1~2_combout\);

-- Location: FF_X51_Y4_N14
\inst3|Regist[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst3|Mux1~2_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst3|Regist[6]~1_combout\,
	ena => \inst3|Regist[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|Regist\(6));

-- Location: LABCELL_X51_Y4_N51
\inst3|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~1_sumout\ = SUM(( !\inst3|Regist\(7) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[7]~271_combout\)))) ) + ( 
-- \inst3|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101011011000100000000000000000001000111101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[3]~input_o\,
	datab => \ALT_INV_SelBus[1]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst3|ALT_INV_Regist\(7),
	dataf => \inst16|ALT_INV_result[7]~271_combout\,
	cin => \inst3|Add0~6\,
	sumout => \inst3|Add0~1_sumout\);

-- Location: LABCELL_X50_Y4_N30
\inst3|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux0~0_combout\ = ( \inst3|Regist\(6) & ( \inst16|result[7]~271_combout\ & ( ((!\inst3|Regist\(7) & !\inst18|Regist[0]~2_combout\)) # (\inst19|Regist[7]~0_combout\) ) ) ) # ( !\inst3|Regist\(6) & ( \inst16|result[7]~271_combout\ & ( 
-- (!\inst18|Regist[0]~2_combout\ & ((!\inst3|Regist\(7)) # (\inst19|Regist[7]~0_combout\))) ) ) ) # ( \inst3|Regist\(6) & ( !\inst16|result[7]~271_combout\ & ( (!\inst19|Regist[7]~0_combout\ & (!\inst3|Regist\(7) & !\inst18|Regist[0]~2_combout\)) # 
-- (\inst19|Regist[7]~0_combout\ & ((\inst18|Regist[0]~2_combout\))) ) ) ) # ( !\inst3|Regist\(6) & ( !\inst16|result[7]~271_combout\ & ( (!\inst19|Regist[7]~0_combout\ & (!\inst3|Regist\(7) & !\inst18|Regist[0]~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100001011000010111010000110100001101010111010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|ALT_INV_Regist[7]~0_combout\,
	datab => \inst3|ALT_INV_Regist\(7),
	datac => \inst18|ALT_INV_Regist[0]~2_combout\,
	datae => \inst3|ALT_INV_Regist\(6),
	dataf => \inst16|ALT_INV_result[7]~271_combout\,
	combout => \inst3|Mux0~0_combout\);

-- Location: LABCELL_X50_Y4_N12
\inst3|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux0~1_combout\ = ( \inst18|Regist[0]~0_combout\ & ( \inst3|Mux0~0_combout\ & ( \inst3|Add0~1_sumout\ ) ) ) # ( !\inst18|Regist[0]~0_combout\ & ( \inst3|Mux0~0_combout\ ) ) # ( \inst18|Regist[0]~0_combout\ & ( !\inst3|Mux0~0_combout\ & ( 
-- \inst3|Add0~1_sumout\ ) ) ) # ( !\inst18|Regist[0]~0_combout\ & ( !\inst3|Mux0~0_combout\ & ( (\inst19|Regist[7]~1_combout\ & \inst3|Regist\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|ALT_INV_Regist[7]~1_combout\,
	datab => \inst3|ALT_INV_Regist\(0),
	datac => \inst3|ALT_INV_Add0~1_sumout\,
	datae => \inst18|ALT_INV_Regist[0]~0_combout\,
	dataf => \inst3|ALT_INV_Mux0~0_combout\,
	combout => \inst3|Mux0~1_combout\);

-- Location: LABCELL_X53_Y2_N12
\inst19|Regist[7]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Regist[7]~2_combout\ = ( \SelBus[2]~input_o\ & ( (\SelBus[0]~input_o\ & !\SelBus[1]~input_o\) ) ) # ( !\SelBus[2]~input_o\ & ( (\SelBus[0]~input_o\ & (!\SelBus[1]~input_o\ & \SelBus[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SelBus[0]~input_o\,
	datac => \ALT_INV_SelBus[1]~input_o\,
	datad => \ALT_INV_SelBus[3]~input_o\,
	dataf => \ALT_INV_SelBus[2]~input_o\,
	combout => \inst19|Regist[7]~2_combout\);

-- Location: FF_X50_Y4_N14
\inst3|Regist[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst3|Mux0~1_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst19|Regist[7]~2_combout\,
	ena => \inst3|Regist[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|Regist\(7));

-- Location: LABCELL_X51_Y4_N30
\inst3|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~29_sumout\ = SUM(( (!\SelBus[3]~input_o\) # ((\inst16|result[0]~313_combout\) # (\SelBus[1]~input_o\)) ) + ( !\inst3|Regist\(0) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( !VCC ))
-- \inst3|Add0~30\ = CARRY(( (!\SelBus[3]~input_o\) # ((\inst16|result[0]~313_combout\) # (\SelBus[1]~input_o\)) ) + ( !\inst3|Regist\(0) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111000011110000100000000000000001011101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[3]~input_o\,
	datab => \ALT_INV_SelBus[1]~input_o\,
	datac => \inst3|ALT_INV_Regist\(0),
	datad => \inst16|ALT_INV_result[0]~313_combout\,
	cin => GND,
	sumout => \inst3|Add0~29_sumout\,
	cout => \inst3|Add0~30\);

-- Location: LABCELL_X50_Y5_N48
\inst3|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux7~1_combout\ = ( \inst3|Add0~29_sumout\ & ( (((\inst3|Regist\(7) & \inst18|Regist[0]~3_combout\)) # (\inst18|Regist[0]~0_combout\)) # (\inst3|Mux7~0_combout\) ) ) # ( !\inst3|Add0~29_sumout\ & ( (!\inst18|Regist[0]~0_combout\ & 
-- (((\inst3|Regist\(7) & \inst18|Regist[0]~3_combout\)) # (\inst3|Mux7~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001110000010100000111000001011111011111110101111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux7~0_combout\,
	datab => \inst3|ALT_INV_Regist\(7),
	datac => \inst18|ALT_INV_Regist[0]~0_combout\,
	datad => \inst18|ALT_INV_Regist[0]~3_combout\,
	dataf => \inst3|ALT_INV_Add0~29_sumout\,
	combout => \inst3|Mux7~1_combout\);

-- Location: MLABCELL_X52_Y2_N57
\inst18|Regist[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst18|Regist[0]~4_combout\ = ( \SelBus[0]~input_o\ & ( (!\SelBus[1]~input_o\ & \SelBus[3]~input_o\) ) ) # ( !\SelBus[0]~input_o\ & ( (\SelBus[2]~input_o\ & (!\SelBus[1]~input_o\ & !\SelBus[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[2]~input_o\,
	datac => \ALT_INV_SelBus[1]~input_o\,
	datad => \ALT_INV_SelBus[3]~input_o\,
	dataf => \ALT_INV_SelBus[0]~input_o\,
	combout => \inst18|Regist[0]~4_combout\);

-- Location: FF_X50_Y5_N50
\inst3|Regist[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst3|Mux7~1_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst18|Regist[0]~4_combout\,
	ena => \inst3|Regist[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|Regist\(0));

-- Location: LABCELL_X51_Y4_N33
\inst3|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~25_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[1]~307_combout\)))) ) + ( !\inst3|Regist\(1) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst3|Add0~30\ ))
-- \inst3|Add0~26\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[1]~307_combout\)))) ) + ( !\inst3|Regist\(1) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst3|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000000101001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[3]~input_o\,
	datab => \ALT_INV_SelBus[1]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst16|ALT_INV_result[1]~307_combout\,
	dataf => \inst3|ALT_INV_Regist\(1),
	cin => \inst3|Add0~30\,
	sumout => \inst3|Add0~25_sumout\,
	cout => \inst3|Add0~26\);

-- Location: LABCELL_X51_Y4_N9
\inst3|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux6~0_combout\ = ( \inst3|Add0~25_sumout\ & ( ((!\SelBus[1]~input_o\ & (\inst16|result[1]~307_combout\)) # (\SelBus[1]~input_o\ & ((!\inst3|Regist\(1))))) # (\inst3|Regist[6]~0_combout\) ) ) # ( !\inst3|Add0~25_sumout\ & ( 
-- (!\inst3|Regist[6]~0_combout\ & ((!\SelBus[1]~input_o\ & (\inst16|result[1]~307_combout\)) # (\SelBus[1]~input_o\ & ((!\inst3|Regist\(1)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101000001000001010100000100001111111010111010111111101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Regist[6]~0_combout\,
	datab => \ALT_INV_SelBus[1]~input_o\,
	datac => \inst16|ALT_INV_result[1]~307_combout\,
	datad => \inst3|ALT_INV_Regist\(1),
	dataf => \inst3|ALT_INV_Add0~25_sumout\,
	combout => \inst3|Mux6~0_combout\);

-- Location: LABCELL_X51_Y4_N3
\inst3|Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux6~1_combout\ = ( \inst3|Regist\(2) & ( (!\SelBus[2]~input_o\ & (((\inst3|Mux6~0_combout\)))) # (\SelBus[2]~input_o\ & (((\SelBus[0]~input_o\)) # (\inst3|Regist\(0)))) ) ) # ( !\inst3|Regist\(2) & ( (!\SelBus[2]~input_o\ & 
-- (((\inst3|Mux6~0_combout\)))) # (\SelBus[2]~input_o\ & (\inst3|Regist\(0) & ((!\SelBus[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010000001100110101000000110011010111110011001101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Regist\(0),
	datab => \inst3|ALT_INV_Mux6~0_combout\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \ALT_INV_SelBus[2]~input_o\,
	dataf => \inst3|ALT_INV_Regist\(2),
	combout => \inst3|Mux6~1_combout\);

-- Location: FF_X51_Y4_N5
\inst3|Regist[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst3|Mux6~1_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst3|Regist[6]~1_combout\,
	ena => \inst3|Regist[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|Regist\(1));

-- Location: LABCELL_X51_Y4_N36
\inst3|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~21_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[2]~301_combout\)))) ) + ( !\inst3|Regist\(2) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst3|Add0~26\ ))
-- \inst3|Add0~22\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[2]~301_combout\)))) ) + ( !\inst3|Regist\(2) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst3|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000000101001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[3]~input_o\,
	datab => \ALT_INV_SelBus[1]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst16|ALT_INV_result[2]~301_combout\,
	dataf => \inst3|ALT_INV_Regist\(2),
	cin => \inst3|Add0~26\,
	sumout => \inst3|Add0~21_sumout\,
	cout => \inst3|Add0~22\);

-- Location: LABCELL_X51_Y4_N6
\inst3|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux5~0_combout\ = ( \inst3|Regist\(2) & ( (!\inst3|Regist[6]~0_combout\ & (!\SelBus[1]~input_o\ & ((\inst16|result[2]~301_combout\)))) # (\inst3|Regist[6]~0_combout\ & (((\inst3|Add0~21_sumout\)))) ) ) # ( !\inst3|Regist\(2) & ( 
-- (!\inst3|Regist[6]~0_combout\ & (((\inst16|result[2]~301_combout\)) # (\SelBus[1]~input_o\))) # (\inst3|Regist[6]~0_combout\ & (((\inst3|Add0~21_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011110101111001001111010111100000101100011010000010110001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Regist[6]~0_combout\,
	datab => \ALT_INV_SelBus[1]~input_o\,
	datac => \inst3|ALT_INV_Add0~21_sumout\,
	datad => \inst16|ALT_INV_result[2]~301_combout\,
	dataf => \inst3|ALT_INV_Regist\(2),
	combout => \inst3|Mux5~0_combout\);

-- Location: LABCELL_X51_Y4_N54
\inst3|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux5~1_combout\ = ( \inst3|Mux5~0_combout\ & ( (!\SelBus[2]~input_o\) # ((!\SelBus[0]~input_o\ & ((\inst3|Regist\(1)))) # (\SelBus[0]~input_o\ & (\inst3|Regist\(3)))) ) ) # ( !\inst3|Mux5~0_combout\ & ( (\SelBus[2]~input_o\ & ((!\SelBus[0]~input_o\ 
-- & ((\inst3|Regist\(1)))) # (\SelBus[0]~input_o\ & (\inst3|Regist\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001011000000010000101111110001111110111111000111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[0]~input_o\,
	datab => \inst3|ALT_INV_Regist\(3),
	datac => \ALT_INV_SelBus[2]~input_o\,
	datad => \inst3|ALT_INV_Regist\(1),
	dataf => \inst3|ALT_INV_Mux5~0_combout\,
	combout => \inst3|Mux5~1_combout\);

-- Location: FF_X51_Y4_N56
\inst3|Regist[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst3|Mux5~1_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst3|Regist[6]~1_combout\,
	ena => \inst3|Regist[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|Regist\(2));

-- Location: LABCELL_X51_Y4_N39
\inst3|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~17_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[3]~295_combout\)))) ) + ( !\inst3|Regist\(3) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst3|Add0~22\ ))
-- \inst3|Add0~18\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[3]~295_combout\)))) ) + ( !\inst3|Regist\(3) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst3|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000000101001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[3]~input_o\,
	datab => \ALT_INV_SelBus[1]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst16|ALT_INV_result[3]~295_combout\,
	dataf => \inst3|ALT_INV_Regist\(3),
	cin => \inst3|Add0~22\,
	sumout => \inst3|Add0~17_sumout\,
	cout => \inst3|Add0~18\);

-- Location: LABCELL_X51_Y4_N0
\inst3|Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux4~1_combout\ = ( \inst3|Regist\(3) & ( (\inst16|result[3]~295_combout\ & !\SelBus[1]~input_o\) ) ) # ( !\inst3|Regist\(3) & ( (\SelBus[1]~input_o\) # (\inst16|result[3]~295_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst16|ALT_INV_result[3]~295_combout\,
	datad => \ALT_INV_SelBus[1]~input_o\,
	dataf => \inst3|ALT_INV_Regist\(3),
	combout => \inst3|Mux4~1_combout\);

-- Location: LABCELL_X50_Y4_N18
\inst3|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux4~0_combout\ = ( \inst3|Regist\(2) & ( \inst3|Regist\(4) ) ) # ( !\inst3|Regist\(2) & ( \inst3|Regist\(4) & ( \SelBus[0]~input_o\ ) ) ) # ( \inst3|Regist\(2) & ( !\inst3|Regist\(4) & ( !\SelBus[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SelBus[0]~input_o\,
	datae => \inst3|ALT_INV_Regist\(2),
	dataf => \inst3|ALT_INV_Regist\(4),
	combout => \inst3|Mux4~0_combout\);

-- Location: LABCELL_X51_Y4_N15
\inst3|Mux4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux4~2_combout\ = ( \inst3|Mux4~0_combout\ & ( ((!\inst3|Regist[6]~0_combout\ & ((\inst3|Mux4~1_combout\))) # (\inst3|Regist[6]~0_combout\ & (\inst3|Add0~17_sumout\))) # (\SelBus[2]~input_o\) ) ) # ( !\inst3|Mux4~0_combout\ & ( 
-- (!\SelBus[2]~input_o\ & ((!\inst3|Regist[6]~0_combout\ & ((\inst3|Mux4~1_combout\))) # (\inst3|Regist[6]~0_combout\ & (\inst3|Add0~17_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101001010111110111110101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[2]~input_o\,
	datab => \inst3|ALT_INV_Regist[6]~0_combout\,
	datac => \inst3|ALT_INV_Add0~17_sumout\,
	datad => \inst3|ALT_INV_Mux4~1_combout\,
	dataf => \inst3|ALT_INV_Mux4~0_combout\,
	combout => \inst3|Mux4~2_combout\);

-- Location: FF_X51_Y4_N17
\inst3|Regist[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst3|Mux4~2_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst3|Regist[6]~1_combout\,
	ena => \inst3|Regist[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|Regist\(3));

-- Location: LABCELL_X51_Y5_N0
\inst24|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|Add0~29_sumout\ = SUM(( !\inst4|Regist\(0) $ (!\inst3|Regist\(0)) ) + ( !VCC ) + ( !VCC ))
-- \inst24|Add0~30\ = CARRY(( !\inst4|Regist\(0) $ (!\inst3|Regist\(0)) ) + ( !VCC ) + ( !VCC ))
-- \inst24|Add0~31\ = SHARE((!\inst4|Regist\(0)) # (\inst3|Regist\(0)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ALT_INV_Regist\(0),
	datad => \inst3|ALT_INV_Regist\(0),
	cin => GND,
	sharein => GND,
	sumout => \inst24|Add0~29_sumout\,
	cout => \inst24|Add0~30\,
	shareout => \inst24|Add0~31\);

-- Location: LABCELL_X51_Y5_N3
\inst24|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|Add0~25_sumout\ = SUM(( !\inst3|Regist\(1) $ (\inst4|Regist\(1)) ) + ( \inst24|Add0~31\ ) + ( \inst24|Add0~30\ ))
-- \inst24|Add0~26\ = CARRY(( !\inst3|Regist\(1) $ (\inst4|Regist\(1)) ) + ( \inst24|Add0~31\ ) + ( \inst24|Add0~30\ ))
-- \inst24|Add0~27\ = SHARE((\inst3|Regist\(1) & !\inst4|Regist\(1)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Regist\(1),
	datad => \inst4|ALT_INV_Regist\(1),
	cin => \inst24|Add0~30\,
	sharein => \inst24|Add0~31\,
	sumout => \inst24|Add0~25_sumout\,
	cout => \inst24|Add0~26\,
	shareout => \inst24|Add0~27\);

-- Location: LABCELL_X51_Y5_N6
\inst24|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|Add0~21_sumout\ = SUM(( !\inst3|Regist\(2) $ (\inst4|Regist\(2)) ) + ( \inst24|Add0~27\ ) + ( \inst24|Add0~26\ ))
-- \inst24|Add0~22\ = CARRY(( !\inst3|Regist\(2) $ (\inst4|Regist\(2)) ) + ( \inst24|Add0~27\ ) + ( \inst24|Add0~26\ ))
-- \inst24|Add0~23\ = SHARE((\inst3|Regist\(2) & !\inst4|Regist\(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ALT_INV_Regist\(2),
	datad => \inst4|ALT_INV_Regist\(2),
	cin => \inst24|Add0~26\,
	sharein => \inst24|Add0~27\,
	sumout => \inst24|Add0~21_sumout\,
	cout => \inst24|Add0~22\,
	shareout => \inst24|Add0~23\);

-- Location: LABCELL_X51_Y5_N9
\inst24|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|Add0~17_sumout\ = SUM(( !\inst3|Regist\(3) $ (\inst4|Regist\(3)) ) + ( \inst24|Add0~23\ ) + ( \inst24|Add0~22\ ))
-- \inst24|Add0~18\ = CARRY(( !\inst3|Regist\(3) $ (\inst4|Regist\(3)) ) + ( \inst24|Add0~23\ ) + ( \inst24|Add0~22\ ))
-- \inst24|Add0~19\ = SHARE((\inst3|Regist\(3) & !\inst4|Regist\(3)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Regist\(3),
	datad => \inst4|ALT_INV_Regist\(3),
	cin => \inst24|Add0~22\,
	sharein => \inst24|Add0~23\,
	sumout => \inst24|Add0~17_sumout\,
	cout => \inst24|Add0~18\,
	shareout => \inst24|Add0~19\);

-- Location: LABCELL_X51_Y5_N36
\inst24|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|Mux5~1_combout\ = ( \AluSel[2]~input_o\ & ( (!\AluSel[0]~input_o\ & (!\AluSel[1]~input_o\ & (!\inst4|Regist\(3) $ (!\inst3|Regist\(3))))) ) ) # ( !\AluSel[2]~input_o\ & ( (\AluSel[1]~input_o\ & ((!\AluSel[0]~input_o\ & (\inst4|Regist\(3) & 
-- \inst3|Regist\(3))) # (\AluSel[0]~input_o\ & ((\inst3|Regist\(3)) # (\inst4|Regist\(3)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010011000000010001001100001000100000000000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AluSel[0]~input_o\,
	datab => \ALT_INV_AluSel[1]~input_o\,
	datac => \inst4|ALT_INV_Regist\(3),
	datad => \inst3|ALT_INV_Regist\(3),
	dataf => \ALT_INV_AluSel[2]~input_o\,
	combout => \inst24|Mux5~1_combout\);

-- Location: LABCELL_X50_Y5_N0
\inst24|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|Add1~29_sumout\ = SUM(( \inst3|Regist\(0) ) + ( \inst4|Regist\(0) ) + ( !VCC ))
-- \inst24|Add1~30\ = CARRY(( \inst3|Regist\(0) ) + ( \inst4|Regist\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_Regist\(0),
	datac => \inst3|ALT_INV_Regist\(0),
	cin => GND,
	sumout => \inst24|Add1~29_sumout\,
	cout => \inst24|Add1~30\);

-- Location: LABCELL_X50_Y5_N3
\inst24|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|Add1~25_sumout\ = SUM(( \inst4|Regist\(1) ) + ( \inst3|Regist\(1) ) + ( \inst24|Add1~30\ ))
-- \inst24|Add1~26\ = CARRY(( \inst4|Regist\(1) ) + ( \inst3|Regist\(1) ) + ( \inst24|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ALT_INV_Regist\(1),
	datad => \inst4|ALT_INV_Regist\(1),
	cin => \inst24|Add1~30\,
	sumout => \inst24|Add1~25_sumout\,
	cout => \inst24|Add1~26\);

-- Location: LABCELL_X50_Y5_N6
\inst24|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|Add1~21_sumout\ = SUM(( \inst4|Regist\(2) ) + ( \inst3|Regist\(2) ) + ( \inst24|Add1~26\ ))
-- \inst24|Add1~22\ = CARRY(( \inst4|Regist\(2) ) + ( \inst3|Regist\(2) ) + ( \inst24|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ALT_INV_Regist\(2),
	datad => \inst4|ALT_INV_Regist\(2),
	cin => \inst24|Add1~26\,
	sumout => \inst24|Add1~21_sumout\,
	cout => \inst24|Add1~22\);

-- Location: LABCELL_X50_Y5_N9
\inst24|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|Add1~17_sumout\ = SUM(( \inst3|Regist\(3) ) + ( \inst4|Regist\(3) ) + ( \inst24|Add1~22\ ))
-- \inst24|Add1~18\ = CARRY(( \inst3|Regist\(3) ) + ( \inst4|Regist\(3) ) + ( \inst24|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALT_INV_Regist\(3),
	datac => \inst4|ALT_INV_Regist\(3),
	cin => \inst24|Add1~22\,
	sumout => \inst24|Add1~17_sumout\,
	cout => \inst24|Add1~18\);

-- Location: LABCELL_X50_Y5_N36
\inst24|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|Mux5~0_combout\ = ( \inst24|Add1~17_sumout\ & ( !\AluSel[2]~input_o\ $ (((\AluSel[1]~input_o\) # (\AluSel[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010010011100100111001001110010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AluSel[0]~input_o\,
	datab => \ALT_INV_AluSel[2]~input_o\,
	datac => \ALT_INV_AluSel[1]~input_o\,
	dataf => \inst24|ALT_INV_Add1~17_sumout\,
	combout => \inst24|Mux5~0_combout\);

-- Location: LABCELL_X51_Y3_N36
\inst20|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst20|Mux4~0_combout\ = ( \inst24|Mux5~0_combout\ & ( \inst20|Regist\(3) & ( \SelBus[1]~input_o\ ) ) ) # ( !\inst24|Mux5~0_combout\ & ( \inst20|Regist\(3) & ( ((!\inst24|Mux5~1_combout\ & ((!\inst24|Add0~17_sumout\) # (!\inst24|Mux4~0_combout\)))) # 
-- (\SelBus[1]~input_o\) ) ) ) # ( !\inst24|Mux5~0_combout\ & ( !\inst20|Regist\(3) & ( (!\SelBus[1]~input_o\ & (!\inst24|Mux5~1_combout\ & ((!\inst24|Add0~17_sumout\) # (!\inst24|Mux4~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100100000000000000000000000000011111011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|ALT_INV_Add0~17_sumout\,
	datab => \ALT_INV_SelBus[1]~input_o\,
	datac => \inst24|ALT_INV_Mux4~0_combout\,
	datad => \inst24|ALT_INV_Mux5~1_combout\,
	datae => \inst24|ALT_INV_Mux5~0_combout\,
	dataf => \inst20|ALT_INV_Regist\(3),
	combout => \inst20|Mux4~0_combout\);

-- Location: LABCELL_X51_Y5_N30
\inst24|Mux5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|Mux5~2_combout\ = ( \inst24|Add1~17_sumout\ & ( (((\inst24|Mux4~0_combout\ & \inst24|Add0~17_sumout\)) # (\inst24|Mux5~1_combout\)) # (\inst24|Mux2~0_combout\) ) ) # ( !\inst24|Add1~17_sumout\ & ( ((\inst24|Mux4~0_combout\ & 
-- \inst24|Add0~17_sumout\)) # (\inst24|Mux5~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111111000011110011111101011111011111110101111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|ALT_INV_Mux2~0_combout\,
	datab => \inst24|ALT_INV_Mux4~0_combout\,
	datac => \inst24|ALT_INV_Mux5~1_combout\,
	datad => \inst24|ALT_INV_Add0~17_sumout\,
	dataf => \inst24|ALT_INV_Add1~17_sumout\,
	combout => \inst24|Mux5~2_combout\);

-- Location: LABCELL_X50_Y6_N57
\inst24|Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|Mux6~1_combout\ = ( \inst3|Regist\(2) & ( (!\AluSel[2]~input_o\ & (\AluSel[1]~input_o\ & ((\inst4|Regist\(2)) # (\AluSel[0]~input_o\)))) # (\AluSel[2]~input_o\ & (!\AluSel[0]~input_o\ & (!\inst4|Regist\(2) & !\AluSel[1]~input_o\))) ) ) # ( 
-- !\inst3|Regist\(2) & ( (\inst4|Regist\(2) & ((!\AluSel[0]~input_o\ & (\AluSel[2]~input_o\ & !\AluSel[1]~input_o\)) # (\AluSel[0]~input_o\ & (!\AluSel[2]~input_o\ & \AluSel[1]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010000000010000111000000000010000100000000100001110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AluSel[0]~input_o\,
	datab => \inst4|ALT_INV_Regist\(2),
	datac => \ALT_INV_AluSel[2]~input_o\,
	datad => \ALT_INV_AluSel[1]~input_o\,
	datae => \inst3|ALT_INV_Regist\(2),
	combout => \inst24|Mux6~1_combout\);

-- Location: LABCELL_X51_Y5_N45
\inst24|Mux6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|Mux6~2_combout\ = ( \inst24|Add0~21_sumout\ & ( (((\inst24|Mux2~0_combout\ & \inst24|Add1~21_sumout\)) # (\inst24|Mux6~1_combout\)) # (\inst24|Mux4~0_combout\) ) ) # ( !\inst24|Add0~21_sumout\ & ( ((\inst24|Mux2~0_combout\ & 
-- \inst24|Add1~21_sumout\)) # (\inst24|Mux6~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011111000011110101111100111111011111110011111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|ALT_INV_Mux2~0_combout\,
	datab => \inst24|ALT_INV_Mux4~0_combout\,
	datac => \inst24|ALT_INV_Mux6~1_combout\,
	datad => \inst24|ALT_INV_Add1~21_sumout\,
	dataf => \inst24|ALT_INV_Add0~21_sumout\,
	combout => \inst24|Mux6~2_combout\);

-- Location: LABCELL_X51_Y5_N54
\inst24|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|Mux7~1_combout\ = ( \AluSel[2]~input_o\ & ( (!\AluSel[0]~input_o\ & (!\AluSel[1]~input_o\ & (!\inst3|Regist\(1) $ (!\inst4|Regist\(1))))) ) ) # ( !\AluSel[2]~input_o\ & ( (\AluSel[1]~input_o\ & ((!\AluSel[0]~input_o\ & (\inst3|Regist\(1) & 
-- \inst4|Regist\(1))) # (\AluSel[0]~input_o\ & ((\inst4|Regist\(1)) # (\inst3|Regist\(1)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010011000000010001001100001000100000000000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AluSel[0]~input_o\,
	datab => \ALT_INV_AluSel[1]~input_o\,
	datac => \inst3|ALT_INV_Regist\(1),
	datad => \inst4|ALT_INV_Regist\(1),
	dataf => \ALT_INV_AluSel[2]~input_o\,
	combout => \inst24|Mux7~1_combout\);

-- Location: LABCELL_X50_Y5_N54
\inst24|Mux7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|Mux7~2_combout\ = ( \inst24|Add0~25_sumout\ & ( (((\inst24|Add1~25_sumout\ & \inst24|Mux2~0_combout\)) # (\inst24|Mux7~1_combout\)) # (\inst24|Mux4~0_combout\) ) ) # ( !\inst24|Add0~25_sumout\ & ( ((\inst24|Add1~25_sumout\ & 
-- \inst24|Mux2~0_combout\)) # (\inst24|Mux7~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111111000001011111111100110111111111110011011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|ALT_INV_Add1~25_sumout\,
	datab => \inst24|ALT_INV_Mux4~0_combout\,
	datac => \inst24|ALT_INV_Mux2~0_combout\,
	datad => \inst24|ALT_INV_Mux7~1_combout\,
	dataf => \inst24|ALT_INV_Add0~25_sumout\,
	combout => \inst24|Mux7~2_combout\);

-- Location: LABCELL_X51_Y5_N48
\inst24|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|Mux8~0_combout\ = ( !\AluSel[1]~input_o\ & ( (!\AluSel[0]~input_o\ & ((((\inst24|Add1~29_sumout\))))) # (\AluSel[0]~input_o\ & (((!\AluSel[2]~input_o\ & (\inst24|Add0~29_sumout\)) # (\AluSel[2]~input_o\ & ((\inst24|Add1~29_sumout\)))))) ) ) # ( 
-- \AluSel[1]~input_o\ & ( (!\AluSel[2]~input_o\ & ((!\AluSel[0]~input_o\ & (\inst3|Regist\(0) & (\inst4|Regist\(0)))) # (\AluSel[0]~input_o\ & (((\inst4|Regist\(0))) # (\inst3|Regist\(0)))))) # (\AluSel[2]~input_o\ & ((((\inst24|Add1~29_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010100000000000101110000000010101111111111110001011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AluSel[0]~input_o\,
	datab => \inst3|ALT_INV_Regist\(0),
	datac => \inst4|ALT_INV_Regist\(0),
	datad => \ALT_INV_AluSel[2]~input_o\,
	datae => \ALT_INV_AluSel[1]~input_o\,
	dataf => \inst24|ALT_INV_Add1~29_sumout\,
	datag => \inst24|ALT_INV_Add0~29_sumout\,
	combout => \inst24|Mux8~0_combout\);

-- Location: MLABCELL_X52_Y5_N0
\inst20|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst20|Add0~29_sumout\ = SUM(( ((!\SelBus[3]~input_o\) # (\inst24|Mux8~0_combout\)) # (\SelBus[1]~input_o\) ) + ( !\inst20|Regist\(0) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( !VCC ))
-- \inst20|Add0~30\ = CARRY(( ((!\SelBus[3]~input_o\) # (\inst24|Mux8~0_combout\)) # (\SelBus[1]~input_o\) ) + ( !\inst20|Regist\(0) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111000011110000100000000000000001101110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[3]~input_o\,
	datac => \inst20|ALT_INV_Regist\(0),
	datad => \inst24|ALT_INV_Mux8~0_combout\,
	cin => GND,
	sumout => \inst20|Add0~29_sumout\,
	cout => \inst20|Add0~30\);

-- Location: MLABCELL_X52_Y5_N3
\inst20|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst20|Add0~25_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst24|Mux7~2_combout\)))) ) + ( !\inst20|Regist\(1) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst20|Add0~30\ ))
-- \inst20|Add0~26\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst24|Mux7~2_combout\)))) ) + ( !\inst20|Regist\(1) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst20|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000000110000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[3]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst24|ALT_INV_Mux7~2_combout\,
	dataf => \inst20|ALT_INV_Regist\(1),
	cin => \inst20|Add0~30\,
	sumout => \inst20|Add0~25_sumout\,
	cout => \inst20|Add0~26\);

-- Location: MLABCELL_X52_Y5_N6
\inst20|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst20|Add0~21_sumout\ = SUM(( !\inst20|Regist\(2) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst24|Mux6~2_combout\)))) ) + ( 
-- \inst20|Add0~26\ ))
-- \inst20|Add0~22\ = CARRY(( !\inst20|Regist\(2) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst24|Mux6~2_combout\)))) ) + ( 
-- \inst20|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100111101000100000000000000000001000111101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[3]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst20|ALT_INV_Regist\(2),
	dataf => \inst24|ALT_INV_Mux6~2_combout\,
	cin => \inst20|Add0~26\,
	sumout => \inst20|Add0~21_sumout\,
	cout => \inst20|Add0~22\);

-- Location: MLABCELL_X52_Y5_N9
\inst20|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst20|Add0~17_sumout\ = SUM(( !\inst20|Regist\(3) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst24|Mux5~2_combout\)))) ) + ( 
-- \inst20|Add0~22\ ))
-- \inst20|Add0~18\ = CARRY(( !\inst20|Regist\(3) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst24|Mux5~2_combout\)))) ) + ( 
-- \inst20|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100111101000100000000000000000001000111101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[3]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst20|ALT_INV_Regist\(3),
	dataf => \inst24|ALT_INV_Mux5~2_combout\,
	cin => \inst20|Add0~22\,
	sumout => \inst20|Add0~17_sumout\,
	cout => \inst20|Add0~18\);

-- Location: LABCELL_X51_Y3_N54
\inst20|Mux4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst20|Mux4~2_combout\ = ( \inst20|Mux4~0_combout\ & ( \inst20|Add0~17_sumout\ & ( (!\SelBus[2]~input_o\ & ((\inst3|Regist[6]~0_combout\))) # (\SelBus[2]~input_o\ & (\inst20|Mux4~1_combout\)) ) ) ) # ( !\inst20|Mux4~0_combout\ & ( \inst20|Add0~17_sumout\ 
-- & ( (!\SelBus[2]~input_o\) # (\inst20|Mux4~1_combout\) ) ) ) # ( \inst20|Mux4~0_combout\ & ( !\inst20|Add0~17_sumout\ & ( (\inst20|Mux4~1_combout\ & \SelBus[2]~input_o\) ) ) ) # ( !\inst20|Mux4~0_combout\ & ( !\inst20|Add0~17_sumout\ & ( 
-- (!\SelBus[2]~input_o\ & ((!\inst3|Regist[6]~0_combout\))) # (\SelBus[2]~input_o\ & (\inst20|Mux4~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110100010001000100010001000111011101110111010001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|ALT_INV_Mux4~1_combout\,
	datab => \ALT_INV_SelBus[2]~input_o\,
	datad => \inst3|ALT_INV_Regist[6]~0_combout\,
	datae => \inst20|ALT_INV_Mux4~0_combout\,
	dataf => \inst20|ALT_INV_Add0~17_sumout\,
	combout => \inst20|Mux4~2_combout\);

-- Location: LABCELL_X55_Y3_N15
\inst20|Regist[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst20|Regist[6]~0_combout\ = ( \SelRegD[1]~input_o\ & ( \SelRegD[2]~input_o\ & ( \inst8|Regist[1]~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_Regist[1]~1_combout\,
	datae => \ALT_INV_SelRegD[1]~input_o\,
	dataf => \ALT_INV_SelRegD[2]~input_o\,
	combout => \inst20|Regist[6]~0_combout\);

-- Location: FF_X51_Y3_N56
\inst20|Regist[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst20|Mux4~2_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst3|Regist[6]~1_combout\,
	ena => \inst20|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|Regist\(3));

-- Location: MLABCELL_X52_Y6_N39
\inst20|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst20|Mux5~1_combout\ = ( \inst20|Regist\(3) & ( (\inst20|Regist\(1)) # (\SelBus[0]~input_o\) ) ) # ( !\inst20|Regist\(3) & ( (!\SelBus[0]~input_o\ & \inst20|Regist\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[0]~input_o\,
	datac => \inst20|ALT_INV_Regist\(1),
	dataf => \inst20|ALT_INV_Regist\(3),
	combout => \inst20|Mux5~1_combout\);

-- Location: MLABCELL_X52_Y6_N36
\inst24|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|Mux6~0_combout\ = ( \inst24|Add1~21_sumout\ & ( !\AluSel[2]~input_o\ $ (((\AluSel[1]~input_o\) # (\AluSel[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000001111111100000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_AluSel[0]~input_o\,
	datac => \ALT_INV_AluSel[1]~input_o\,
	datad => \ALT_INV_AluSel[2]~input_o\,
	dataf => \inst24|ALT_INV_Add1~21_sumout\,
	combout => \inst24|Mux6~0_combout\);

-- Location: MLABCELL_X52_Y6_N6
\inst20|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst20|Mux5~0_combout\ = ( \inst24|Mux6~0_combout\ & ( \inst20|Regist\(2) & ( \SelBus[1]~input_o\ ) ) ) # ( !\inst24|Mux6~0_combout\ & ( \inst20|Regist\(2) & ( ((!\inst24|Mux6~1_combout\ & ((!\inst24|Mux4~0_combout\) # (!\inst24|Add0~21_sumout\)))) # 
-- (\SelBus[1]~input_o\) ) ) ) # ( !\inst24|Mux6~0_combout\ & ( !\inst20|Regist\(2) & ( (!\SelBus[1]~input_o\ & (!\inst24|Mux6~1_combout\ & ((!\inst24|Mux4~0_combout\) # (!\inst24|Add0~21_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000000000000000000000000000011101111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|ALT_INV_Mux4~0_combout\,
	datab => \inst24|ALT_INV_Add0~21_sumout\,
	datac => \ALT_INV_SelBus[1]~input_o\,
	datad => \inst24|ALT_INV_Mux6~1_combout\,
	datae => \inst24|ALT_INV_Mux6~0_combout\,
	dataf => \inst20|ALT_INV_Regist\(2),
	combout => \inst20|Mux5~0_combout\);

-- Location: MLABCELL_X52_Y6_N48
\inst20|Mux5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst20|Mux5~2_combout\ = ( \inst20|Add0~21_sumout\ & ( (!\SelBus[2]~input_o\ & (((!\inst20|Mux5~0_combout\)) # (\inst3|Regist[6]~0_combout\))) # (\SelBus[2]~input_o\ & (((\inst20|Mux5~1_combout\)))) ) ) # ( !\inst20|Add0~21_sumout\ & ( 
-- (!\SelBus[2]~input_o\ & (!\inst3|Regist[6]~0_combout\ & ((!\inst20|Mux5~0_combout\)))) # (\SelBus[2]~input_o\ & (((\inst20|Mux5~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010001100000011101000110000001111110011010100111111001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Regist[6]~0_combout\,
	datab => \inst20|ALT_INV_Mux5~1_combout\,
	datac => \ALT_INV_SelBus[2]~input_o\,
	datad => \inst20|ALT_INV_Mux5~0_combout\,
	dataf => \inst20|ALT_INV_Add0~21_sumout\,
	combout => \inst20|Mux5~2_combout\);

-- Location: FF_X52_Y6_N50
\inst20|Regist[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst20|Mux5~2_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst3|Regist[6]~1_combout\,
	ena => \inst20|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|Regist\(2));

-- Location: LABCELL_X51_Y3_N33
\inst20|Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst20|Mux6~1_combout\ = ( \inst20|Regist\(0) & ( (!\SelBus[0]~input_o\) # (\inst20|Regist\(2)) ) ) # ( !\inst20|Regist\(0) & ( (\SelBus[0]~input_o\ & \inst20|Regist\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101101011111010111100000101000001011010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[0]~input_o\,
	datac => \inst20|ALT_INV_Regist\(2),
	datae => \inst20|ALT_INV_Regist\(0),
	combout => \inst20|Mux6~1_combout\);

-- Location: LABCELL_X50_Y5_N57
\inst24|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|Mux7~0_combout\ = ( \AluSel[2]~input_o\ & ( (\inst24|Add1~25_sumout\ & ((\AluSel[0]~input_o\) # (\AluSel[1]~input_o\))) ) ) # ( !\AluSel[2]~input_o\ & ( (\inst24|Add1~25_sumout\ & (!\AluSel[1]~input_o\ & !\AluSel[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000000000101010101010000010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|ALT_INV_Add1~25_sumout\,
	datac => \ALT_INV_AluSel[1]~input_o\,
	datad => \ALT_INV_AluSel[0]~input_o\,
	dataf => \ALT_INV_AluSel[2]~input_o\,
	combout => \inst24|Mux7~0_combout\);

-- Location: LABCELL_X50_Y5_N24
\inst20|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst20|Mux6~0_combout\ = ( \inst24|Mux7~1_combout\ & ( \inst24|Add0~25_sumout\ & ( (\SelBus[1]~input_o\ & \inst20|Regist\(1)) ) ) ) # ( !\inst24|Mux7~1_combout\ & ( \inst24|Add0~25_sumout\ & ( (!\SelBus[1]~input_o\ & (!\inst24|Mux7~0_combout\ & 
-- ((!\inst24|Mux4~0_combout\)))) # (\SelBus[1]~input_o\ & (((\inst20|Regist\(1))))) ) ) ) # ( \inst24|Mux7~1_combout\ & ( !\inst24|Add0~25_sumout\ & ( (\SelBus[1]~input_o\ & \inst20|Regist\(1)) ) ) ) # ( !\inst24|Mux7~1_combout\ & ( !\inst24|Add0~25_sumout\ 
-- & ( (!\SelBus[1]~input_o\ & (!\inst24|Mux7~0_combout\)) # (\SelBus[1]~input_o\ & ((\inst20|Regist\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110110001101000001010000010110001101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \inst24|ALT_INV_Mux7~0_combout\,
	datac => \inst20|ALT_INV_Regist\(1),
	datad => \inst24|ALT_INV_Mux4~0_combout\,
	datae => \inst24|ALT_INV_Mux7~1_combout\,
	dataf => \inst24|ALT_INV_Add0~25_sumout\,
	combout => \inst20|Mux6~0_combout\);

-- Location: LABCELL_X51_Y3_N0
\inst20|Mux6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst20|Mux6~2_combout\ = ( \inst20|Add0~25_sumout\ & ( (!\SelBus[2]~input_o\ & (((!\inst20|Mux6~0_combout\) # (\inst3|Regist[6]~0_combout\)))) # (\SelBus[2]~input_o\ & (\inst20|Mux6~1_combout\)) ) ) # ( !\inst20|Add0~25_sumout\ & ( (!\SelBus[2]~input_o\ 
-- & (((!\inst20|Mux6~0_combout\ & !\inst3|Regist[6]~0_combout\)))) # (\SelBus[2]~input_o\ & (\inst20|Mux6~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101000100010001110100010001000111010001110111011101000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|ALT_INV_Mux6~1_combout\,
	datab => \ALT_INV_SelBus[2]~input_o\,
	datac => \inst20|ALT_INV_Mux6~0_combout\,
	datad => \inst3|ALT_INV_Regist[6]~0_combout\,
	dataf => \inst20|ALT_INV_Add0~25_sumout\,
	combout => \inst20|Mux6~2_combout\);

-- Location: FF_X51_Y3_N2
\inst20|Regist[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst20|Mux6~2_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst3|Regist[6]~1_combout\,
	ena => \inst20|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|Regist\(1));

-- Location: LABCELL_X56_Y7_N24
\inst16|result[7]~269\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|result[7]~269_combout\ = ( \muxSel[4]~input_o\ & ( \muxSel[3]~input_o\ & ( !\muxSel[5]~input_o\ ) ) ) # ( \muxSel[4]~input_o\ & ( !\muxSel[3]~input_o\ & ( (!\muxSel[5]~input_o\ & (((\muxSel[2]~input_o\) # (\muxSel[1]~input_o\)) # 
-- (\muxSel[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011100001111000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_muxSel[0]~input_o\,
	datab => \ALT_INV_muxSel[1]~input_o\,
	datac => \ALT_INV_muxSel[5]~input_o\,
	datad => \ALT_INV_muxSel[2]~input_o\,
	datae => \ALT_INV_muxSel[4]~input_o\,
	dataf => \ALT_INV_muxSel[3]~input_o\,
	combout => \inst16|result[7]~269_combout\);

-- Location: LABCELL_X55_Y7_N54
\inst16|_~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|_~16_combout\ = ( \muxSel[3]~input_o\ & ( \muxSel[0]~input_o\ & ( (!\muxSel[4]~input_o\ & (!\muxSel[2]~input_o\ & (!\muxSel[5]~input_o\ & \muxSel[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_muxSel[4]~input_o\,
	datab => \ALT_INV_muxSel[2]~input_o\,
	datac => \ALT_INV_muxSel[5]~input_o\,
	datad => \ALT_INV_muxSel[1]~input_o\,
	datae => \ALT_INV_muxSel[3]~input_o\,
	dataf => \ALT_INV_muxSel[0]~input_o\,
	combout => \inst16|_~16_combout\);

-- Location: LABCELL_X55_Y7_N24
\inst16|_~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|_~15_combout\ = ( \muxSel[3]~input_o\ & ( \muxSel[0]~input_o\ & ( (!\muxSel[4]~input_o\ & (!\muxSel[2]~input_o\ & (!\muxSel[5]~input_o\ & !\muxSel[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_muxSel[4]~input_o\,
	datab => \ALT_INV_muxSel[2]~input_o\,
	datac => \ALT_INV_muxSel[5]~input_o\,
	datad => \ALT_INV_muxSel[1]~input_o\,
	datae => \ALT_INV_muxSel[3]~input_o\,
	dataf => \ALT_INV_muxSel[0]~input_o\,
	combout => \inst16|_~15_combout\);

-- Location: IOIBUF_X40_Y0_N1
\Fuente[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Fuente(1),
	o => \Fuente[1]~input_o\);

-- Location: LABCELL_X53_Y5_N3
\inst19|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Mux1~1_combout\ = ( \inst16|result[6]~277_combout\ & ( (!\inst19|Regist\(6)) # (!\SelBus[1]~input_o\) ) ) # ( !\inst16|result[6]~277_combout\ & ( (!\inst19|Regist\(6) & \SelBus[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst19|ALT_INV_Regist\(6),
	datad => \ALT_INV_SelBus[1]~input_o\,
	dataf => \inst16|ALT_INV_result[6]~277_combout\,
	combout => \inst19|Mux1~1_combout\);

-- Location: MLABCELL_X52_Y2_N15
\inst19|Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Mux3~1_combout\ = ( \inst19|Regist\(4) & ( \inst16|result[4]~289_combout\ & ( !\SelBus[1]~input_o\ ) ) ) # ( !\inst19|Regist\(4) & ( \inst16|result[4]~289_combout\ ) ) # ( !\inst19|Regist\(4) & ( !\inst16|result[4]~289_combout\ & ( 
-- \SelBus[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000011111111111111111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SelBus[1]~input_o\,
	datae => \inst19|ALT_INV_Regist\(4),
	dataf => \inst16|ALT_INV_result[4]~289_combout\,
	combout => \inst19|Mux3~1_combout\);

-- Location: LABCELL_X51_Y3_N51
\inst19|Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Mux4~1_combout\ = ( \inst19|Regist\(3) & ( (!\SelBus[1]~input_o\ & \inst16|result[3]~295_combout\) ) ) # ( !\inst19|Regist\(3) & ( (\inst16|result[3]~295_combout\) # (\SelBus[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SelBus[1]~input_o\,
	datad => \inst16|ALT_INV_result[3]~295_combout\,
	dataf => \inst19|ALT_INV_Regist\(3),
	combout => \inst19|Mux4~1_combout\);

-- Location: LABCELL_X53_Y4_N33
\inst19|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Add0~25_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[1]~307_combout\)))) ) + ( !\inst19|Regist\(1) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst19|Add0~30\ ))
-- \inst19|Add0~26\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[1]~307_combout\)))) ) + ( !\inst19|Regist\(1) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst19|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000000110000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[3]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst16|ALT_INV_result[1]~307_combout\,
	dataf => \inst19|ALT_INV_Regist\(1),
	cin => \inst19|Add0~30\,
	sumout => \inst19|Add0~25_sumout\,
	cout => \inst19|Add0~26\);

-- Location: LABCELL_X53_Y4_N36
\inst19|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Add0~21_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[2]~301_combout\)))) ) + ( !\inst19|Regist\(2) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst19|Add0~26\ ))
-- \inst19|Add0~22\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[2]~301_combout\)))) ) + ( !\inst19|Regist\(2) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst19|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000000110000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[3]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst16|ALT_INV_result[2]~301_combout\,
	dataf => \inst19|ALT_INV_Regist\(2),
	cin => \inst19|Add0~26\,
	sumout => \inst19|Add0~21_sumout\,
	cout => \inst19|Add0~22\);

-- Location: LABCELL_X53_Y4_N12
\inst19|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Mux5~0_combout\ = ( \inst19|Regist\(2) & ( (!\inst3|Regist[6]~0_combout\ & (\inst16|result[2]~301_combout\ & ((!\SelBus[1]~input_o\)))) # (\inst3|Regist[6]~0_combout\ & (((\inst19|Add0~21_sumout\)))) ) ) # ( !\inst19|Regist\(2) & ( 
-- (!\inst3|Regist[6]~0_combout\ & (((\SelBus[1]~input_o\)) # (\inst16|result[2]~301_combout\))) # (\inst3|Regist[6]~0_combout\ & (((\inst19|Add0~21_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011111001111010001111100111101000111000000110100011100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_result[2]~301_combout\,
	datab => \inst3|ALT_INV_Regist[6]~0_combout\,
	datac => \inst19|ALT_INV_Add0~21_sumout\,
	datad => \ALT_INV_SelBus[1]~input_o\,
	dataf => \inst19|ALT_INV_Regist\(2),
	combout => \inst19|Mux5~0_combout\);

-- Location: LABCELL_X53_Y4_N24
\inst19|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Mux5~1_combout\ = ( \inst19|Mux5~0_combout\ & ( (!\SelBus[2]~input_o\) # ((!\SelBus[0]~input_o\ & ((\inst19|Regist\(1)))) # (\SelBus[0]~input_o\ & (\inst19|Regist\(3)))) ) ) # ( !\inst19|Mux5~0_combout\ & ( (\SelBus[2]~input_o\ & 
-- ((!\SelBus[0]~input_o\ & ((\inst19|Regist\(1)))) # (\SelBus[0]~input_o\ & (\inst19|Regist\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001011000000010000101111110001111110111111000111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[0]~input_o\,
	datab => \inst19|ALT_INV_Regist\(3),
	datac => \ALT_INV_SelBus[2]~input_o\,
	datad => \inst19|ALT_INV_Regist\(1),
	dataf => \inst19|ALT_INV_Mux5~0_combout\,
	combout => \inst19|Mux5~1_combout\);

-- Location: LABCELL_X50_Y4_N54
\inst19|Regist[6]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Regist[6]~3_combout\ = ( !\SelRegD[2]~input_o\ & ( \inst8|Regist[1]~1_combout\ & ( \SelRegD[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SelRegD[1]~input_o\,
	datae => \ALT_INV_SelRegD[2]~input_o\,
	dataf => \inst8|ALT_INV_Regist[1]~1_combout\,
	combout => \inst19|Regist[6]~3_combout\);

-- Location: FF_X53_Y4_N26
\inst19|Regist[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst19|Mux5~1_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst3|Regist[6]~1_combout\,
	ena => \inst19|Regist[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|Regist\(2));

-- Location: LABCELL_X53_Y4_N3
\inst19|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Mux4~0_combout\ = ( \inst19|Regist\(4) & ( (\inst19|Regist\(2)) # (\SelBus[0]~input_o\) ) ) # ( !\inst19|Regist\(4) & ( (!\SelBus[0]~input_o\ & \inst19|Regist\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[0]~input_o\,
	datac => \inst19|ALT_INV_Regist\(2),
	dataf => \inst19|ALT_INV_Regist\(4),
	combout => \inst19|Mux4~0_combout\);

-- Location: LABCELL_X53_Y4_N39
\inst19|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Add0~17_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[3]~295_combout\)))) ) + ( !\inst19|Regist\(3) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst19|Add0~22\ ))
-- \inst19|Add0~18\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[3]~295_combout\)))) ) + ( !\inst19|Regist\(3) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst19|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000000110000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[3]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst16|ALT_INV_result[3]~295_combout\,
	dataf => \inst19|ALT_INV_Regist\(3),
	cin => \inst19|Add0~22\,
	sumout => \inst19|Add0~17_sumout\,
	cout => \inst19|Add0~18\);

-- Location: LABCELL_X51_Y3_N48
\inst19|Mux4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Mux4~2_combout\ = ( \inst19|Add0~17_sumout\ & ( (!\SelBus[2]~input_o\ & (((\inst3|Regist[6]~0_combout\)) # (\inst19|Mux4~1_combout\))) # (\SelBus[2]~input_o\ & (((\inst19|Mux4~0_combout\)))) ) ) # ( !\inst19|Add0~17_sumout\ & ( 
-- (!\SelBus[2]~input_o\ & (\inst19|Mux4~1_combout\ & ((!\inst3|Regist[6]~0_combout\)))) # (\SelBus[2]~input_o\ & (((\inst19|Mux4~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011100000011010001110000001101000111110011110100011111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|ALT_INV_Mux4~1_combout\,
	datab => \ALT_INV_SelBus[2]~input_o\,
	datac => \inst19|ALT_INV_Mux4~0_combout\,
	datad => \inst3|ALT_INV_Regist[6]~0_combout\,
	dataf => \inst19|ALT_INV_Add0~17_sumout\,
	combout => \inst19|Mux4~2_combout\);

-- Location: FF_X51_Y3_N50
\inst19|Regist[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst19|Mux4~2_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst3|Regist[6]~1_combout\,
	ena => \inst19|Regist[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|Regist\(3));

-- Location: MLABCELL_X52_Y2_N27
\inst19|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Mux3~0_combout\ = ( \inst19|Regist\(3) & ( (!\SelBus[0]~input_o\) # (\inst19|Regist\(5)) ) ) # ( !\inst19|Regist\(3) & ( (\SelBus[0]~input_o\ & \inst19|Regist\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst19|ALT_INV_Regist\(5),
	dataf => \inst19|ALT_INV_Regist\(3),
	combout => \inst19|Mux3~0_combout\);

-- Location: LABCELL_X53_Y4_N42
\inst19|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Add0~13_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\)) # (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst16|result[4]~289_combout\)))) ) + ( !\inst19|Regist\(4) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst19|Add0~18\ ))
-- \inst19|Add0~14\ = CARRY(( (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\)) # (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst16|result[4]~289_combout\)))) ) + ( !\inst19|Regist\(4) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst19|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000000001100000000000000000100010001110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[0]~input_o\,
	datab => \ALT_INV_SelBus[3]~input_o\,
	datac => \ALT_INV_SelBus[1]~input_o\,
	datad => \inst16|ALT_INV_result[4]~289_combout\,
	dataf => \inst19|ALT_INV_Regist\(4),
	cin => \inst19|Add0~18\,
	sumout => \inst19|Add0~13_sumout\,
	cout => \inst19|Add0~14\);

-- Location: MLABCELL_X52_Y2_N54
\inst19|Mux3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Mux3~2_combout\ = ( \inst19|Add0~13_sumout\ & ( (!\SelBus[2]~input_o\ & (((\inst3|Regist[6]~0_combout\)) # (\inst19|Mux3~1_combout\))) # (\SelBus[2]~input_o\ & (((\inst19|Mux3~0_combout\)))) ) ) # ( !\inst19|Add0~13_sumout\ & ( 
-- (!\SelBus[2]~input_o\ & (\inst19|Mux3~1_combout\ & (!\inst3|Regist[6]~0_combout\))) # (\SelBus[2]~input_o\ & (((\inst19|Mux3~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001110101001000000111010100101010011111110010101001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[2]~input_o\,
	datab => \inst19|ALT_INV_Mux3~1_combout\,
	datac => \inst3|ALT_INV_Regist[6]~0_combout\,
	datad => \inst19|ALT_INV_Mux3~0_combout\,
	dataf => \inst19|ALT_INV_Add0~13_sumout\,
	combout => \inst19|Mux3~2_combout\);

-- Location: FF_X52_Y2_N56
\inst19|Regist[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst19|Mux3~2_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst3|Regist[6]~1_combout\,
	ena => \inst19|Regist[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|Regist\(4));

-- Location: LABCELL_X53_Y4_N27
\inst19|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Mux2~0_combout\ = ( \inst19|Regist\(4) & ( (!\SelBus[0]~input_o\) # (\inst19|Regist\(6)) ) ) # ( !\inst19|Regist\(4) & ( (\SelBus[0]~input_o\ & \inst19|Regist\(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[0]~input_o\,
	datac => \inst19|ALT_INV_Regist\(6),
	dataf => \inst19|ALT_INV_Regist\(4),
	combout => \inst19|Mux2~0_combout\);

-- Location: LABCELL_X53_Y4_N45
\inst19|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Add0~9_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\)) # (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst16|result[5]~283_combout\)))) ) + ( !\inst19|Regist\(5) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst19|Add0~14\ ))
-- \inst19|Add0~10\ = CARRY(( (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\)) # (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst16|result[5]~283_combout\)))) ) + ( !\inst19|Regist\(5) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst19|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000000001100000000000000000100010001110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[0]~input_o\,
	datab => \ALT_INV_SelBus[3]~input_o\,
	datac => \ALT_INV_SelBus[1]~input_o\,
	datad => \inst16|ALT_INV_result[5]~283_combout\,
	dataf => \inst19|ALT_INV_Regist\(5),
	cin => \inst19|Add0~14\,
	sumout => \inst19|Add0~9_sumout\,
	cout => \inst19|Add0~10\);

-- Location: LABCELL_X53_Y4_N57
\inst19|Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Mux2~1_combout\ = ( \inst16|result[5]~283_combout\ & ( (!\SelBus[1]~input_o\) # (!\inst19|Regist\(5)) ) ) # ( !\inst16|result[5]~283_combout\ & ( (\SelBus[1]~input_o\ & !\inst19|Regist\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000011111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SelBus[1]~input_o\,
	datad => \inst19|ALT_INV_Regist\(5),
	dataf => \inst16|ALT_INV_result[5]~283_combout\,
	combout => \inst19|Mux2~1_combout\);

-- Location: LABCELL_X53_Y4_N54
\inst19|Mux2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Mux2~2_combout\ = ( \inst19|Mux2~1_combout\ & ( (!\SelBus[2]~input_o\ & (((!\inst3|Regist[6]~0_combout\) # (\inst19|Add0~9_sumout\)))) # (\SelBus[2]~input_o\ & (\inst19|Mux2~0_combout\)) ) ) # ( !\inst19|Mux2~1_combout\ & ( (!\SelBus[2]~input_o\ & 
-- (((\inst3|Regist[6]~0_combout\ & \inst19|Add0~9_sumout\)))) # (\SelBus[2]~input_o\ & (\inst19|Mux2~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110101000001010011010111000101111101011100010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|ALT_INV_Mux2~0_combout\,
	datab => \inst3|ALT_INV_Regist[6]~0_combout\,
	datac => \ALT_INV_SelBus[2]~input_o\,
	datad => \inst19|ALT_INV_Add0~9_sumout\,
	dataf => \inst19|ALT_INV_Mux2~1_combout\,
	combout => \inst19|Mux2~2_combout\);

-- Location: FF_X53_Y4_N56
\inst19|Regist[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst19|Mux2~2_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst3|Regist[6]~1_combout\,
	ena => \inst19|Regist[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|Regist\(5));

-- Location: LABCELL_X53_Y5_N0
\inst19|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Mux1~0_combout\ = ( \inst19|Regist\(7) & ( (\SelBus[0]~input_o\) # (\inst19|Regist\(5)) ) ) # ( !\inst19|Regist\(7) & ( (\inst19|Regist\(5) & !\SelBus[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|ALT_INV_Regist\(5),
	datac => \ALT_INV_SelBus[0]~input_o\,
	dataf => \inst19|ALT_INV_Regist\(7),
	combout => \inst19|Mux1~0_combout\);

-- Location: LABCELL_X53_Y4_N48
\inst19|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Add0~5_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[6]~277_combout\)))) ) + ( !\inst19|Regist\(6) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst19|Add0~10\ ))
-- \inst19|Add0~6\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[6]~277_combout\)))) ) + ( !\inst19|Regist\(6) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst19|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000000110000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[3]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst16|ALT_INV_result[6]~277_combout\,
	dataf => \inst19|ALT_INV_Regist\(6),
	cin => \inst19|Add0~10\,
	sumout => \inst19|Add0~5_sumout\,
	cout => \inst19|Add0~6\);

-- Location: LABCELL_X53_Y5_N30
\inst19|Mux1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Mux1~2_combout\ = ( \inst19|Add0~5_sumout\ & ( (!\SelBus[2]~input_o\ & (((\inst3|Regist[6]~0_combout\)) # (\inst19|Mux1~1_combout\))) # (\SelBus[2]~input_o\ & (((\inst19|Mux1~0_combout\)))) ) ) # ( !\inst19|Add0~5_sumout\ & ( (!\SelBus[2]~input_o\ 
-- & (\inst19|Mux1~1_combout\ & (!\inst3|Regist[6]~0_combout\))) # (\SelBus[2]~input_o\ & (((\inst19|Mux1~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001110011010000000111001101001100011111110100110001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|ALT_INV_Mux1~1_combout\,
	datab => \ALT_INV_SelBus[2]~input_o\,
	datac => \inst3|ALT_INV_Regist[6]~0_combout\,
	datad => \inst19|ALT_INV_Mux1~0_combout\,
	dataf => \inst19|ALT_INV_Add0~5_sumout\,
	combout => \inst19|Mux1~2_combout\);

-- Location: FF_X53_Y5_N32
\inst19|Regist[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst19|Mux1~2_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst3|Regist[6]~1_combout\,
	ena => \inst19|Regist[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|Regist\(6));

-- Location: LABCELL_X53_Y2_N45
\inst19|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Mux0~0_combout\ = ( \inst16|result[7]~271_combout\ & ( (!\inst18|Regist[0]~2_combout\ & (((!\inst19|Regist\(7)) # (\inst19|Regist[7]~0_combout\)))) # (\inst18|Regist[0]~2_combout\ & (\inst19|Regist\(6) & ((\inst19|Regist[7]~0_combout\)))) ) ) # ( 
-- !\inst16|result[7]~271_combout\ & ( (!\inst18|Regist[0]~2_combout\ & (((!\inst19|Regist\(7) & !\inst19|Regist[7]~0_combout\)))) # (\inst18|Regist[0]~2_combout\ & (\inst19|Regist\(6) & ((\inst19|Regist[7]~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000010001110000000001000111000000110111011100000011011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|ALT_INV_Regist\(6),
	datab => \inst18|ALT_INV_Regist[0]~2_combout\,
	datac => \inst19|ALT_INV_Regist\(7),
	datad => \inst19|ALT_INV_Regist[7]~0_combout\,
	dataf => \inst16|ALT_INV_result[7]~271_combout\,
	combout => \inst19|Mux0~0_combout\);

-- Location: LABCELL_X53_Y4_N51
\inst19|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Add0~1_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[7]~271_combout\)))) ) + ( !\inst19|Regist\(7) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst19|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000000110000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[3]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst16|ALT_INV_result[7]~271_combout\,
	dataf => \inst19|ALT_INV_Regist\(7),
	cin => \inst19|Add0~6\,
	sumout => \inst19|Add0~1_sumout\);

-- Location: LABCELL_X53_Y2_N30
\inst19|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Mux0~1_combout\ = ( \inst19|Mux0~0_combout\ & ( \inst19|Add0~1_sumout\ ) ) # ( !\inst19|Mux0~0_combout\ & ( \inst19|Add0~1_sumout\ & ( ((\inst19|Regist\(0) & \inst19|Regist[7]~1_combout\)) # (\inst18|Regist[0]~0_combout\) ) ) ) # ( 
-- \inst19|Mux0~0_combout\ & ( !\inst19|Add0~1_sumout\ & ( !\inst18|Regist[0]~0_combout\ ) ) ) # ( !\inst19|Mux0~0_combout\ & ( !\inst19|Add0~1_sumout\ & ( (\inst19|Regist\(0) & (\inst19|Regist[7]~1_combout\ & !\inst18|Regist[0]~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000111111110000000000000011111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst19|ALT_INV_Regist\(0),
	datac => \inst19|ALT_INV_Regist[7]~1_combout\,
	datad => \inst18|ALT_INV_Regist[0]~0_combout\,
	datae => \inst19|ALT_INV_Mux0~0_combout\,
	dataf => \inst19|ALT_INV_Add0~1_sumout\,
	combout => \inst19|Mux0~1_combout\);

-- Location: FF_X53_Y2_N32
\inst19|Regist[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst19|Mux0~1_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst19|Regist[7]~2_combout\,
	ena => \inst19|Regist[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|Regist\(7));

-- Location: LABCELL_X50_Y3_N36
\inst19|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Mux7~0_combout\ = ( \inst16|result[0]~313_combout\ & ( \inst19|Regist\(0) & ( (\inst18|Regist[0]~1_combout\ & ((!\inst18|Regist[0]~2_combout\) # (\inst19|Regist\(1)))) ) ) ) # ( !\inst16|result[0]~313_combout\ & ( \inst19|Regist\(0) & ( 
-- (\inst19|Regist\(1) & (\inst18|Regist[0]~2_combout\ & \inst18|Regist[0]~1_combout\)) ) ) ) # ( \inst16|result[0]~313_combout\ & ( !\inst19|Regist\(0) & ( (!\inst18|Regist[0]~2_combout\) # ((\inst19|Regist\(1) & \inst18|Regist[0]~1_combout\)) ) ) ) # ( 
-- !\inst16|result[0]~313_combout\ & ( !\inst19|Regist\(0) & ( (!\inst18|Regist[0]~2_combout\ & ((!\inst18|Regist[0]~1_combout\))) # (\inst18|Regist[0]~2_combout\ & (\inst19|Regist\(1) & \inst18|Regist[0]~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000111000001110011011100110100000001000000010000110100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|ALT_INV_Regist\(1),
	datab => \inst18|ALT_INV_Regist[0]~2_combout\,
	datac => \inst18|ALT_INV_Regist[0]~1_combout\,
	datae => \inst16|ALT_INV_result[0]~313_combout\,
	dataf => \inst19|ALT_INV_Regist\(0),
	combout => \inst19|Mux7~0_combout\);

-- Location: LABCELL_X53_Y4_N30
\inst19|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Add0~29_sumout\ = SUM(( ((!\SelBus[3]~input_o\) # (\inst16|result[0]~313_combout\)) # (\SelBus[1]~input_o\) ) + ( !\inst19|Regist\(0) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( !VCC ))
-- \inst19|Add0~30\ = CARRY(( ((!\SelBus[3]~input_o\) # (\inst16|result[0]~313_combout\)) # (\SelBus[1]~input_o\) ) + ( !\inst19|Regist\(0) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111000011110000100000000000000001101110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[3]~input_o\,
	datac => \inst19|ALT_INV_Regist\(0),
	datad => \inst16|ALT_INV_result[0]~313_combout\,
	cin => GND,
	sumout => \inst19|Add0~29_sumout\,
	cout => \inst19|Add0~30\);

-- Location: LABCELL_X50_Y3_N51
\inst19|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Mux7~1_combout\ = ( \inst19|Mux7~0_combout\ & ( \inst19|Add0~29_sumout\ ) ) # ( !\inst19|Mux7~0_combout\ & ( \inst19|Add0~29_sumout\ & ( ((\inst19|Regist\(7) & \inst18|Regist[0]~3_combout\)) # (\inst18|Regist[0]~0_combout\) ) ) ) # ( 
-- \inst19|Mux7~0_combout\ & ( !\inst19|Add0~29_sumout\ & ( !\inst18|Regist[0]~0_combout\ ) ) ) # ( !\inst19|Mux7~0_combout\ & ( !\inst19|Add0~29_sumout\ & ( (\inst19|Regist\(7) & (\inst18|Regist[0]~3_combout\ & !\inst18|Regist[0]~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000111111110000000000000011111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst19|ALT_INV_Regist\(7),
	datac => \inst18|ALT_INV_Regist[0]~3_combout\,
	datad => \inst18|ALT_INV_Regist[0]~0_combout\,
	datae => \inst19|ALT_INV_Mux7~0_combout\,
	dataf => \inst19|ALT_INV_Add0~29_sumout\,
	combout => \inst19|Mux7~1_combout\);

-- Location: FF_X50_Y3_N53
\inst19|Regist[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst19|Mux7~1_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst18|Regist[0]~4_combout\,
	ena => \inst19|Regist[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|Regist\(0));

-- Location: MLABCELL_X52_Y4_N9
\inst19|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Mux6~0_combout\ = ( \inst19|Add0~25_sumout\ & ( ((!\SelBus[1]~input_o\ & (\inst16|result[1]~307_combout\)) # (\SelBus[1]~input_o\ & ((!\inst19|Regist\(1))))) # (\inst3|Regist[6]~0_combout\) ) ) # ( !\inst19|Add0~25_sumout\ & ( 
-- (!\inst3|Regist[6]~0_combout\ & ((!\SelBus[1]~input_o\ & (\inst16|result[1]~307_combout\)) # (\SelBus[1]~input_o\ & ((!\inst19|Regist\(1)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110000001000010011000000100001111111001110110111111100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \inst3|ALT_INV_Regist[6]~0_combout\,
	datac => \inst16|ALT_INV_result[1]~307_combout\,
	datad => \inst19|ALT_INV_Regist\(1),
	dataf => \inst19|ALT_INV_Add0~25_sumout\,
	combout => \inst19|Mux6~0_combout\);

-- Location: MLABCELL_X52_Y4_N54
\inst19|Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Mux6~1_combout\ = ( \inst19|Regist\(2) & ( (!\SelBus[2]~input_o\ & (\inst19|Mux6~0_combout\)) # (\SelBus[2]~input_o\ & (((\inst19|Regist\(0)) # (\SelBus[0]~input_o\)))) ) ) # ( !\inst19|Regist\(2) & ( (!\SelBus[2]~input_o\ & 
-- (\inst19|Mux6~0_combout\)) # (\SelBus[2]~input_o\ & (((!\SelBus[0]~input_o\ & \inst19|Regist\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110010001000100111001000100111011101110010011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[2]~input_o\,
	datab => \inst19|ALT_INV_Mux6~0_combout\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst19|ALT_INV_Regist\(0),
	dataf => \inst19|ALT_INV_Regist\(2),
	combout => \inst19|Mux6~1_combout\);

-- Location: FF_X52_Y4_N56
\inst19|Regist[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst19|Mux6~1_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst3|Regist[6]~1_combout\,
	ena => \inst19|Regist[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|Regist\(1));

-- Location: MLABCELL_X52_Y3_N18
\inst8|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|Mux1~1_combout\ = ( \inst16|result[6]~277_combout\ & ( (!\inst8|Regist\(6)) # (!\SelBus[1]~input_o\) ) ) # ( !\inst16|result[6]~277_combout\ & ( (!\inst8|Regist\(6) & \SelBus[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101011111010111110101111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_Regist\(6),
	datac => \ALT_INV_SelBus[1]~input_o\,
	dataf => \inst16|ALT_INV_result[6]~277_combout\,
	combout => \inst8|Mux1~1_combout\);

-- Location: LABCELL_X53_Y2_N15
\inst8|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|Mux1~0_combout\ = (!\SelBus[0]~input_o\ & ((\inst8|Regist\(5)))) # (\SelBus[0]~input_o\ & (\inst8|Regist\(7)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111011101000100011101110100010001110111010001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_Regist\(7),
	datab => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst8|ALT_INV_Regist\(5),
	combout => \inst8|Mux1~0_combout\);

-- Location: MLABCELL_X52_Y4_N33
\inst8|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|Add0~13_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[1]~307_combout\)))) ) + ( !\inst8|Regist\(1) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst8|Add0~10\ ))
-- \inst8|Add0~14\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[1]~307_combout\)))) ) + ( !\inst8|Regist\(1) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst8|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000000101001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[3]~input_o\,
	datab => \ALT_INV_SelBus[1]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst16|ALT_INV_result[1]~307_combout\,
	dataf => \inst8|ALT_INV_Regist\(1),
	cin => \inst8|Add0~10\,
	sumout => \inst8|Add0~13_sumout\,
	cout => \inst8|Add0~14\);

-- Location: MLABCELL_X52_Y4_N36
\inst8|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|Add0~17_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[2]~301_combout\)))) ) + ( !\inst8|Regist\(2) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst8|Add0~14\ ))
-- \inst8|Add0~18\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[2]~301_combout\)))) ) + ( !\inst8|Regist\(2) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst8|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000000110000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[3]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst16|ALT_INV_result[2]~301_combout\,
	dataf => \inst8|ALT_INV_Regist\(2),
	cin => \inst8|Add0~14\,
	sumout => \inst8|Add0~17_sumout\,
	cout => \inst8|Add0~18\);

-- Location: LABCELL_X53_Y4_N15
\inst8|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|Mux5~0_combout\ = ( \inst8|Add0~17_sumout\ & ( ((!\SelBus[1]~input_o\ & (\inst16|result[2]~301_combout\)) # (\SelBus[1]~input_o\ & ((!\inst8|Regist\(2))))) # (\inst3|Regist[6]~0_combout\) ) ) # ( !\inst8|Add0~17_sumout\ & ( 
-- (!\inst3|Regist[6]~0_combout\ & ((!\SelBus[1]~input_o\ & (\inst16|result[2]~301_combout\)) # (\SelBus[1]~input_o\ & ((!\inst8|Regist\(2)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110001000000010011000100000001111111011100110111111101110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_result[2]~301_combout\,
	datab => \inst3|ALT_INV_Regist[6]~0_combout\,
	datac => \ALT_INV_SelBus[1]~input_o\,
	datad => \inst8|ALT_INV_Regist\(2),
	dataf => \inst8|ALT_INV_Add0~17_sumout\,
	combout => \inst8|Mux5~0_combout\);

-- Location: LABCELL_X53_Y4_N0
\inst8|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|Mux5~1_combout\ = ( \inst8|Mux5~0_combout\ & ( (!\SelBus[2]~input_o\) # ((!\SelBus[0]~input_o\ & (\inst8|Regist\(1))) # (\SelBus[0]~input_o\ & ((\inst8|Regist\(3))))) ) ) # ( !\inst8|Mux5~0_combout\ & ( (\SelBus[2]~input_o\ & ((!\SelBus[0]~input_o\ 
-- & (\inst8|Regist\(1))) # (\SelBus[0]~input_o\ & ((\inst8|Regist\(3)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011000000100001001111001110110111111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[0]~input_o\,
	datab => \ALT_INV_SelBus[2]~input_o\,
	datac => \inst8|ALT_INV_Regist\(1),
	datad => \inst8|ALT_INV_Regist\(3),
	dataf => \inst8|ALT_INV_Mux5~0_combout\,
	combout => \inst8|Mux5~1_combout\);

-- Location: LABCELL_X50_Y4_N45
\inst8|Regist[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|Regist[1]~2_combout\ = ( !\SelRegD[2]~input_o\ & ( \inst8|Regist[1]~1_combout\ & ( !\SelRegD[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SelRegD[1]~input_o\,
	datae => \ALT_INV_SelRegD[2]~input_o\,
	dataf => \inst8|ALT_INV_Regist[1]~1_combout\,
	combout => \inst8|Regist[1]~2_combout\);

-- Location: FF_X53_Y4_N2
\inst8|Regist[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst8|Mux5~1_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst3|Regist[6]~1_combout\,
	ena => \inst8|Regist[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|Regist\(2));

-- Location: LABCELL_X53_Y2_N42
\inst8|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|Mux4~0_combout\ = ( \inst8|Regist\(4) & ( (\SelBus[0]~input_o\) # (\inst8|Regist\(2)) ) ) # ( !\inst8|Regist\(4) & ( (\inst8|Regist\(2) & !\SelBus[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst8|ALT_INV_Regist\(2),
	datad => \ALT_INV_SelBus[0]~input_o\,
	dataf => \inst8|ALT_INV_Regist\(4),
	combout => \inst8|Mux4~0_combout\);

-- Location: MLABCELL_X52_Y4_N27
\inst8|Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|Mux4~1_combout\ = ( \inst16|result[3]~295_combout\ & ( (!\SelBus[1]~input_o\) # (!\inst8|Regist\(3)) ) ) # ( !\inst16|result[3]~295_combout\ & ( (\SelBus[1]~input_o\ & !\inst8|Regist\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000011111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SelBus[1]~input_o\,
	datad => \inst8|ALT_INV_Regist\(3),
	dataf => \inst16|ALT_INV_result[3]~295_combout\,
	combout => \inst8|Mux4~1_combout\);

-- Location: MLABCELL_X52_Y4_N39
\inst8|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|Add0~21_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[3]~295_combout\)))) ) + ( !\inst8|Regist\(3) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst8|Add0~18\ ))
-- \inst8|Add0~22\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[3]~295_combout\)))) ) + ( !\inst8|Regist\(3) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst8|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000000110000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[3]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst16|ALT_INV_result[3]~295_combout\,
	dataf => \inst8|ALT_INV_Regist\(3),
	cin => \inst8|Add0~18\,
	sumout => \inst8|Add0~21_sumout\,
	cout => \inst8|Add0~22\);

-- Location: MLABCELL_X52_Y4_N3
\inst8|Mux4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|Mux4~2_combout\ = ( \inst8|Add0~21_sumout\ & ( (!\SelBus[2]~input_o\ & (((\inst8|Mux4~1_combout\)) # (\inst3|Regist[6]~0_combout\))) # (\SelBus[2]~input_o\ & (((\inst8|Mux4~0_combout\)))) ) ) # ( !\inst8|Add0~21_sumout\ & ( (!\SelBus[2]~input_o\ & 
-- (!\inst3|Regist[6]~0_combout\ & ((\inst8|Mux4~1_combout\)))) # (\SelBus[2]~input_o\ & (((\inst8|Mux4~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110001101000001011000110100100111101011110010011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[2]~input_o\,
	datab => \inst3|ALT_INV_Regist[6]~0_combout\,
	datac => \inst8|ALT_INV_Mux4~0_combout\,
	datad => \inst8|ALT_INV_Mux4~1_combout\,
	dataf => \inst8|ALT_INV_Add0~21_sumout\,
	combout => \inst8|Mux4~2_combout\);

-- Location: FF_X52_Y4_N5
\inst8|Regist[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst8|Mux4~2_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst3|Regist[6]~1_combout\,
	ena => \inst8|Regist[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|Regist\(3));

-- Location: LABCELL_X53_Y2_N48
\inst8|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|Mux3~0_combout\ = ( \inst8|Regist\(5) & ( \inst8|Regist\(3) ) ) # ( !\inst8|Regist\(5) & ( \inst8|Regist\(3) & ( !\SelBus[0]~input_o\ ) ) ) # ( \inst8|Regist\(5) & ( !\inst8|Regist\(3) & ( \SelBus[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001111001100110011001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SelBus[0]~input_o\,
	datae => \inst8|ALT_INV_Regist\(5),
	dataf => \inst8|ALT_INV_Regist\(3),
	combout => \inst8|Mux3~0_combout\);

-- Location: MLABCELL_X52_Y2_N48
\inst8|Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|Mux3~1_combout\ = ( \SelBus[1]~input_o\ & ( \inst16|result[4]~289_combout\ & ( !\inst8|Regist\(4) ) ) ) # ( !\SelBus[1]~input_o\ & ( \inst16|result[4]~289_combout\ ) ) # ( \SelBus[1]~input_o\ & ( !\inst16|result[4]~289_combout\ & ( 
-- !\inst8|Regist\(4) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110011111111111111111100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|ALT_INV_Regist\(4),
	datae => \ALT_INV_SelBus[1]~input_o\,
	dataf => \inst16|ALT_INV_result[4]~289_combout\,
	combout => \inst8|Mux3~1_combout\);

-- Location: MLABCELL_X52_Y4_N42
\inst8|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|Add0~25_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[4]~289_combout\)))) ) + ( !\inst8|Regist\(4) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst8|Add0~22\ ))
-- \inst8|Add0~26\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[4]~289_combout\)))) ) + ( !\inst8|Regist\(4) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst8|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000000110000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[3]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst16|ALT_INV_result[4]~289_combout\,
	dataf => \inst8|ALT_INV_Regist\(4),
	cin => \inst8|Add0~22\,
	sumout => \inst8|Add0~25_sumout\,
	cout => \inst8|Add0~26\);

-- Location: MLABCELL_X52_Y4_N18
\inst8|Mux3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|Mux3~2_combout\ = ( \inst8|Add0~25_sumout\ & ( (!\SelBus[2]~input_o\ & (((\inst8|Mux3~1_combout\)) # (\inst3|Regist[6]~0_combout\))) # (\SelBus[2]~input_o\ & (((\inst8|Mux3~0_combout\)))) ) ) # ( !\inst8|Add0~25_sumout\ & ( (!\SelBus[2]~input_o\ & 
-- (!\inst3|Regist[6]~0_combout\ & ((\inst8|Mux3~1_combout\)))) # (\SelBus[2]~input_o\ & (((\inst8|Mux3~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110001101000001011000110100100111101011110010011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[2]~input_o\,
	datab => \inst3|ALT_INV_Regist[6]~0_combout\,
	datac => \inst8|ALT_INV_Mux3~0_combout\,
	datad => \inst8|ALT_INV_Mux3~1_combout\,
	dataf => \inst8|ALT_INV_Add0~25_sumout\,
	combout => \inst8|Mux3~2_combout\);

-- Location: FF_X52_Y4_N20
\inst8|Regist[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst8|Mux3~2_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst3|Regist[6]~1_combout\,
	ena => \inst8|Regist[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|Regist\(4));

-- Location: MLABCELL_X52_Y4_N45
\inst8|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|Add0~1_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[5]~283_combout\)))) ) + ( !\inst8|Regist\(5) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst8|Add0~26\ ))
-- \inst8|Add0~2\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[5]~283_combout\)))) ) + ( !\inst8|Regist\(5) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst8|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000000110000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[3]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst16|ALT_INV_result[5]~283_combout\,
	dataf => \inst8|ALT_INV_Regist\(5),
	cin => \inst8|Add0~26\,
	sumout => \inst8|Add0~1_sumout\,
	cout => \inst8|Add0~2\);

-- Location: MLABCELL_X52_Y4_N48
\inst8|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|Add0~5_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[6]~277_combout\)))) ) + ( !\inst8|Regist\(6) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst8|Add0~2\ ))
-- \inst8|Add0~6\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[6]~277_combout\)))) ) + ( !\inst8|Regist\(6) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst8|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000000110000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[3]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst16|ALT_INV_result[6]~277_combout\,
	dataf => \inst8|ALT_INV_Regist\(6),
	cin => \inst8|Add0~2\,
	sumout => \inst8|Add0~5_sumout\,
	cout => \inst8|Add0~6\);

-- Location: MLABCELL_X52_Y4_N0
\inst8|Mux1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|Mux1~2_combout\ = ( \inst8|Add0~5_sumout\ & ( (!\SelBus[2]~input_o\ & (((\inst8|Mux1~1_combout\)) # (\inst3|Regist[6]~0_combout\))) # (\SelBus[2]~input_o\ & (((\inst8|Mux1~0_combout\)))) ) ) # ( !\inst8|Add0~5_sumout\ & ( (!\SelBus[2]~input_o\ & 
-- (!\inst3|Regist[6]~0_combout\ & (\inst8|Mux1~1_combout\))) # (\SelBus[2]~input_o\ & (((\inst8|Mux1~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001011101000010000101110100101010011111110010101001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[2]~input_o\,
	datab => \inst3|ALT_INV_Regist[6]~0_combout\,
	datac => \inst8|ALT_INV_Mux1~1_combout\,
	datad => \inst8|ALT_INV_Mux1~0_combout\,
	dataf => \inst8|ALT_INV_Add0~5_sumout\,
	combout => \inst8|Mux1~2_combout\);

-- Location: FF_X52_Y4_N2
\inst8|Regist[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst8|Mux1~2_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst3|Regist[6]~1_combout\,
	ena => \inst8|Regist[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|Regist\(6));

-- Location: LABCELL_X53_Y2_N18
\inst8|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|Mux0~0_combout\ = ( \inst8|Regist\(7) & ( (\inst19|Regist[7]~0_combout\ & ((!\inst18|Regist[0]~2_combout\ & ((\inst16|result[7]~271_combout\))) # (\inst18|Regist[0]~2_combout\ & (\inst8|Regist\(6))))) ) ) # ( !\inst8|Regist\(7) & ( 
-- (!\inst18|Regist[0]~2_combout\ & (((!\inst19|Regist[7]~0_combout\) # (\inst16|result[7]~271_combout\)))) # (\inst18|Regist[0]~2_combout\ & (\inst8|Regist\(6) & ((\inst19|Regist[7]~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000011101000000000001110111001100000111010000000000011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_Regist\(6),
	datab => \inst18|ALT_INV_Regist[0]~2_combout\,
	datac => \inst16|ALT_INV_result[7]~271_combout\,
	datad => \inst19|ALT_INV_Regist[7]~0_combout\,
	datae => \inst8|ALT_INV_Regist\(7),
	combout => \inst8|Mux0~0_combout\);

-- Location: MLABCELL_X52_Y4_N51
\inst8|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|Add0~29_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[7]~271_combout\)))) ) + ( !\inst8|Regist\(7) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst8|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000000110000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[3]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst16|ALT_INV_result[7]~271_combout\,
	dataf => \inst8|ALT_INV_Regist\(7),
	cin => \inst8|Add0~6\,
	sumout => \inst8|Add0~29_sumout\);

-- Location: LABCELL_X53_Y2_N0
\inst8|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|Mux0~1_combout\ = ( \inst19|Regist[7]~1_combout\ & ( \inst8|Add0~29_sumout\ & ( ((\inst8|Regist\(0)) # (\inst18|Regist[0]~0_combout\)) # (\inst8|Mux0~0_combout\) ) ) ) # ( !\inst19|Regist[7]~1_combout\ & ( \inst8|Add0~29_sumout\ & ( 
-- (\inst18|Regist[0]~0_combout\) # (\inst8|Mux0~0_combout\) ) ) ) # ( \inst19|Regist[7]~1_combout\ & ( !\inst8|Add0~29_sumout\ & ( (!\inst18|Regist[0]~0_combout\ & ((\inst8|Regist\(0)) # (\inst8|Mux0~0_combout\))) ) ) ) # ( !\inst19|Regist[7]~1_combout\ & ( 
-- !\inst8|Add0~29_sumout\ & ( (\inst8|Mux0~0_combout\ & !\inst18|Regist[0]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010011000100110001110111011101110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_Mux0~0_combout\,
	datab => \inst18|ALT_INV_Regist[0]~0_combout\,
	datac => \inst8|ALT_INV_Regist\(0),
	datae => \inst19|ALT_INV_Regist[7]~1_combout\,
	dataf => \inst8|ALT_INV_Add0~29_sumout\,
	combout => \inst8|Mux0~1_combout\);

-- Location: FF_X53_Y2_N2
\inst8|Regist[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst8|Mux0~1_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst19|Regist[7]~2_combout\,
	ena => \inst8|Regist[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|Regist\(7));

-- Location: MLABCELL_X52_Y4_N30
\inst8|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|Add0~9_sumout\ = SUM(( (!\SelBus[3]~input_o\) # ((\inst16|result[0]~313_combout\) # (\SelBus[1]~input_o\)) ) + ( !\inst8|Regist\(0) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( !VCC ))
-- \inst8|Add0~10\ = CARRY(( (!\SelBus[3]~input_o\) # ((\inst16|result[0]~313_combout\) # (\SelBus[1]~input_o\)) ) + ( !\inst8|Regist\(0) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111000011110000100000000000000001011101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[3]~input_o\,
	datab => \ALT_INV_SelBus[1]~input_o\,
	datac => \inst8|ALT_INV_Regist\(0),
	datad => \inst16|ALT_INV_result[0]~313_combout\,
	cin => GND,
	sumout => \inst8|Add0~9_sumout\,
	cout => \inst8|Add0~10\);

-- Location: MLABCELL_X52_Y3_N48
\inst8|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|Mux7~0_combout\ = ( \inst16|result[0]~313_combout\ & ( (!\inst18|Regist[0]~2_combout\ & (((!\inst8|Regist\(0)) # (\inst18|Regist[0]~1_combout\)))) # (\inst18|Regist[0]~2_combout\ & (\inst8|Regist\(1) & (\inst18|Regist[0]~1_combout\))) ) ) # ( 
-- !\inst16|result[0]~313_combout\ & ( (!\inst18|Regist[0]~2_combout\ & (((!\inst18|Regist[0]~1_combout\ & !\inst8|Regist\(0))))) # (\inst18|Regist[0]~2_combout\ & (\inst8|Regist\(1) & (\inst18|Regist[0]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000100000001101000010000000110101011000010111010101100001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|ALT_INV_Regist[0]~2_combout\,
	datab => \inst8|ALT_INV_Regist\(1),
	datac => \inst18|ALT_INV_Regist[0]~1_combout\,
	datad => \inst8|ALT_INV_Regist\(0),
	dataf => \inst16|ALT_INV_result[0]~313_combout\,
	combout => \inst8|Mux7~0_combout\);

-- Location: MLABCELL_X52_Y3_N12
\inst8|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|Mux7~1_combout\ = ( \inst8|Add0~9_sumout\ & ( \inst8|Mux7~0_combout\ ) ) # ( !\inst8|Add0~9_sumout\ & ( \inst8|Mux7~0_combout\ & ( !\inst18|Regist[0]~0_combout\ ) ) ) # ( \inst8|Add0~9_sumout\ & ( !\inst8|Mux7~0_combout\ & ( ((\inst8|Regist\(7) & 
-- \inst18|Regist[0]~3_combout\)) # (\inst18|Regist[0]~0_combout\) ) ) ) # ( !\inst8|Add0~9_sumout\ & ( !\inst8|Mux7~0_combout\ & ( (\inst8|Regist\(7) & (!\inst18|Regist[0]~0_combout\ & \inst18|Regist[0]~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000011110101111111110000111100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_Regist\(7),
	datac => \inst18|ALT_INV_Regist[0]~0_combout\,
	datad => \inst18|ALT_INV_Regist[0]~3_combout\,
	datae => \inst8|ALT_INV_Add0~9_sumout\,
	dataf => \inst8|ALT_INV_Mux7~0_combout\,
	combout => \inst8|Mux7~1_combout\);

-- Location: FF_X52_Y3_N14
\inst8|Regist[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst8|Mux7~1_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst18|Regist[0]~4_combout\,
	ena => \inst8|Regist[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|Regist\(0));

-- Location: MLABCELL_X52_Y4_N6
\inst8|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|Mux6~0_combout\ = ( \inst8|Add0~13_sumout\ & ( ((!\SelBus[1]~input_o\ & ((\inst16|result[1]~307_combout\))) # (\SelBus[1]~input_o\ & (!\inst8|Regist\(1)))) # (\inst3|Regist[6]~0_combout\) ) ) # ( !\inst8|Add0~13_sumout\ & ( 
-- (!\inst3|Regist[6]~0_combout\ & ((!\SelBus[1]~input_o\ & ((\inst16|result[1]~307_combout\))) # (\SelBus[1]~input_o\ & (!\inst8|Regist\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000011001000010000001100100001110011111110110111001111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \inst3|ALT_INV_Regist[6]~0_combout\,
	datac => \inst8|ALT_INV_Regist\(1),
	datad => \inst16|ALT_INV_result[1]~307_combout\,
	dataf => \inst8|ALT_INV_Add0~13_sumout\,
	combout => \inst8|Mux6~0_combout\);

-- Location: MLABCELL_X52_Y4_N24
\inst8|Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|Mux6~1_combout\ = ( \inst8|Regist\(2) & ( (!\SelBus[2]~input_o\ & (\inst8|Mux6~0_combout\)) # (\SelBus[2]~input_o\ & (((\inst8|Regist\(0)) # (\SelBus[0]~input_o\)))) ) ) # ( !\inst8|Regist\(2) & ( (!\SelBus[2]~input_o\ & (\inst8|Mux6~0_combout\)) # 
-- (\SelBus[2]~input_o\ & (((!\SelBus[0]~input_o\ & \inst8|Regist\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110010001000100111001000100111011101110010011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[2]~input_o\,
	datab => \inst8|ALT_INV_Mux6~0_combout\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst8|ALT_INV_Regist\(0),
	dataf => \inst8|ALT_INV_Regist\(2),
	combout => \inst8|Mux6~1_combout\);

-- Location: FF_X52_Y4_N26
\inst8|Regist[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst8|Mux6~1_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst3|Regist[6]~1_combout\,
	ena => \inst8|Regist[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|Regist\(1));

-- Location: MLABCELL_X52_Y4_N12
\inst16|result[1]~306\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|result[1]~306_combout\ = ( \inst19|Regist\(1) & ( \inst8|Regist\(1) & ( (!\inst16|_~16_combout\ & (!\inst16|_~15_combout\ & ((!\inst16|result[7]~269_combout\) # (!\Fuente[1]~input_o\)))) ) ) ) # ( !\inst19|Regist\(1) & ( \inst8|Regist\(1) & ( 
-- (!\inst16|_~15_combout\ & ((!\inst16|result[7]~269_combout\) # (!\Fuente[1]~input_o\))) ) ) ) # ( \inst19|Regist\(1) & ( !\inst8|Regist\(1) & ( (!\inst16|_~16_combout\ & ((!\inst16|result[7]~269_combout\) # (!\Fuente[1]~input_o\))) ) ) ) # ( 
-- !\inst19|Regist\(1) & ( !\inst8|Regist\(1) & ( (!\inst16|result[7]~269_combout\) # (!\Fuente[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110101010110011001000100011110000101000001100000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_result[7]~269_combout\,
	datab => \inst16|ALT_INV__~16_combout\,
	datac => \inst16|ALT_INV__~15_combout\,
	datad => \ALT_INV_Fuente[1]~input_o\,
	datae => \inst19|ALT_INV_Regist\(1),
	dataf => \inst8|ALT_INV_Regist\(1),
	combout => \inst16|result[1]~306_combout\);

-- Location: LABCELL_X51_Y3_N9
\inst16|result[1]~316\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|result[1]~316_combout\ = ( \inst20|Regist\(1) & ( \inst16|result[1]~306_combout\ & ( (!\inst16|_~10_combout\ & (\inst16|result[1]~305_combout\ & ((!\inst16|_~9_combout\) # (!\inst10|Regist\(1))))) ) ) ) # ( !\inst20|Regist\(1) & ( 
-- \inst16|result[1]~306_combout\ & ( (\inst16|result[1]~305_combout\ & ((!\inst16|_~9_combout\) # (!\inst10|Regist\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111000000000010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV__~10_combout\,
	datab => \inst16|ALT_INV__~9_combout\,
	datac => \inst10|ALT_INV_Regist\(1),
	datad => \inst16|ALT_INV_result[1]~305_combout\,
	datae => \inst20|ALT_INV_Regist\(1),
	dataf => \inst16|ALT_INV_result[1]~306_combout\,
	combout => \inst16|result[1]~316_combout\);

-- Location: LABCELL_X56_Y7_N54
\inst16|_~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|_~7_combout\ = ( !\muxSel[4]~input_o\ & ( !\muxSel[3]~input_o\ & ( (!\muxSel[0]~input_o\ & (\muxSel[1]~input_o\ & (!\muxSel[5]~input_o\ & \muxSel[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_muxSel[0]~input_o\,
	datab => \ALT_INV_muxSel[1]~input_o\,
	datac => \ALT_INV_muxSel[5]~input_o\,
	datad => \ALT_INV_muxSel[2]~input_o\,
	datae => \ALT_INV_muxSel[4]~input_o\,
	dataf => \ALT_INV_muxSel[3]~input_o\,
	combout => \inst16|_~7_combout\);

-- Location: IOIBUF_X64_Y81_N1
\dataC[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataC(1),
	o => \dataC[1]~input_o\);

-- Location: IOIBUF_X66_Y0_N41
\MUX_C~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MUX_C,
	o => \MUX_C~input_o\);

-- Location: MLABCELL_X59_Y3_N21
\inst25|$00000|auto_generated|l1_w1_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst25|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ = ( \inst16|result[1]~307_combout\ & ( (!\MUX_C~input_o\) # (\dataC[1]~input_o\) ) ) # ( !\inst16|result[1]~307_combout\ & ( (\dataC[1]~input_o\ & \MUX_C~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_dataC[1]~input_o\,
	datad => \ALT_INV_MUX_C~input_o\,
	dataf => \inst16|ALT_INV_result[1]~307_combout\,
	combout => \inst25|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X60_Y3_N45
\inst9|Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Mux6~1_combout\ = ( \inst25|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ( (!\SelBus[1]~input_o\) # (!\inst9|Regist\(1)) ) ) # ( !\inst25|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ( (\SelBus[1]~input_o\ & 
-- !\inst9|Regist\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000011111111101010101111111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datad => \inst9|ALT_INV_Regist\(1),
	dataf => \inst25|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\,
	combout => \inst9|Mux6~1_combout\);

-- Location: IOIBUF_X68_Y0_N35
\dataC[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataC(0),
	o => \dataC[0]~input_o\);

-- Location: MLABCELL_X59_Y3_N9
\inst25|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst25|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst16|result[0]~313_combout\ & ( (!\MUX_C~input_o\) # (\dataC[0]~input_o\) ) ) # ( !\inst16|result[0]~313_combout\ & ( (\dataC[0]~input_o\ & \MUX_C~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_dataC[0]~input_o\,
	datad => \ALT_INV_MUX_C~input_o\,
	dataf => \inst16|ALT_INV_result[0]~313_combout\,
	combout => \inst25|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: IOIBUF_X62_Y0_N1
\dataC[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataC(7),
	o => \dataC[7]~input_o\);

-- Location: MLABCELL_X59_Y3_N54
\inst25|$00000|auto_generated|l1_w7_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst25|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\ = ( \inst16|result[7]~271_combout\ & ( (!\MUX_C~input_o\) # (\dataC[7]~input_o\) ) ) # ( !\inst16|result[7]~271_combout\ & ( (\MUX_C~input_o\ & \dataC[7]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_MUX_C~input_o\,
	datac => \ALT_INV_dataC[7]~input_o\,
	dataf => \inst16|ALT_INV_result[7]~271_combout\,
	combout => \inst25|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\);

-- Location: IOIBUF_X70_Y0_N35
\dataC[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataC(5),
	o => \dataC[5]~input_o\);

-- Location: MLABCELL_X59_Y3_N0
\inst25|$00000|auto_generated|l1_w5_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst25|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\ = ( \inst16|result[5]~283_combout\ & ( (!\MUX_C~input_o\) # (\dataC[5]~input_o\) ) ) # ( !\inst16|result[5]~283_combout\ & ( (\dataC[5]~input_o\ & \MUX_C~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_dataC[5]~input_o\,
	datad => \ALT_INV_MUX_C~input_o\,
	dataf => \inst16|ALT_INV_result[5]~283_combout\,
	combout => \inst25|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X59_Y2_N39
\inst9|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Mux5~0_combout\ = ( \inst9|Regist\(1) & ( \inst9|Regist\(3) ) ) # ( !\inst9|Regist\(1) & ( \inst9|Regist\(3) & ( \SelBus[0]~input_o\ ) ) ) # ( \inst9|Regist\(1) & ( !\inst9|Regist\(3) & ( !\SelBus[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101001010101010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[0]~input_o\,
	datae => \inst9|ALT_INV_Regist\(1),
	dataf => \inst9|ALT_INV_Regist\(3),
	combout => \inst9|Mux5~0_combout\);

-- Location: IOIBUF_X64_Y0_N52
\dataC[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataC(2),
	o => \dataC[2]~input_o\);

-- Location: MLABCELL_X59_Y3_N24
\inst25|$00000|auto_generated|l1_w2_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst25|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ = ( \inst16|result[2]~301_combout\ & ( (!\MUX_C~input_o\) # (\dataC[2]~input_o\) ) ) # ( !\inst16|result[2]~301_combout\ & ( (\MUX_C~input_o\ & \dataC[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_MUX_C~input_o\,
	datad => \ALT_INV_dataC[2]~input_o\,
	dataf => \inst16|ALT_INV_result[2]~301_combout\,
	combout => \inst25|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X59_Y2_N45
\inst9|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Mux5~1_combout\ = ( \inst25|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & ( (!\inst9|Regist\(2)) # (!\SelBus[1]~input_o\) ) ) # ( !\inst25|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & ( (!\inst9|Regist\(2) & 
-- \SelBus[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst9|ALT_INV_Regist\(2),
	datad => \ALT_INV_SelBus[1]~input_o\,
	dataf => \inst25|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\,
	combout => \inst9|Mux5~1_combout\);

-- Location: MLABCELL_X59_Y3_N33
\inst9|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Add0~25_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst25|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\)))) ) + ( !\inst9|Regist\(1) $ (((!\SelBus[1]~input_o\) # 
-- (!\SelBus[3]~input_o\))) ) + ( \inst9|Add0~30\ ))
-- \inst9|Add0~26\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst25|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\)))) ) + ( !\inst9|Regist\(1) $ (((!\SelBus[1]~input_o\) # 
-- (!\SelBus[3]~input_o\))) ) + ( \inst9|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000000110000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[3]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst25|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\,
	dataf => \inst9|ALT_INV_Regist\(1),
	cin => \inst9|Add0~30\,
	sumout => \inst9|Add0~25_sumout\,
	cout => \inst9|Add0~26\);

-- Location: MLABCELL_X59_Y3_N36
\inst9|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Add0~21_sumout\ = SUM(( !\inst9|Regist\(2) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & 
-- ((\inst25|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\)))) ) + ( \inst9|Add0~26\ ))
-- \inst9|Add0~22\ = CARRY(( !\inst9|Regist\(2) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & 
-- ((\inst25|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\)))) ) + ( \inst9|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100111101000100000000000000000001000111101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[3]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst9|ALT_INV_Regist\(2),
	dataf => \inst25|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\,
	cin => \inst9|Add0~26\,
	sumout => \inst9|Add0~21_sumout\,
	cout => \inst9|Add0~22\);

-- Location: MLABCELL_X59_Y2_N15
\inst9|Mux5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Mux5~2_combout\ = ( \inst9|Mux5~1_combout\ & ( \inst9|Add0~21_sumout\ & ( (!\SelBus[2]~input_o\) # (\inst9|Mux5~0_combout\) ) ) ) # ( !\inst9|Mux5~1_combout\ & ( \inst9|Add0~21_sumout\ & ( (!\SelBus[2]~input_o\ & (\inst3|Regist[6]~0_combout\)) # 
-- (\SelBus[2]~input_o\ & ((\inst9|Mux5~0_combout\))) ) ) ) # ( \inst9|Mux5~1_combout\ & ( !\inst9|Add0~21_sumout\ & ( (!\SelBus[2]~input_o\ & (!\inst3|Regist[6]~0_combout\)) # (\SelBus[2]~input_o\ & ((\inst9|Mux5~0_combout\))) ) ) ) # ( 
-- !\inst9|Mux5~1_combout\ & ( !\inst9|Add0~21_sumout\ & ( (\inst9|Mux5~0_combout\ & \SelBus[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011101000111010001101010011010100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Regist[6]~0_combout\,
	datab => \inst9|ALT_INV_Mux5~0_combout\,
	datac => \ALT_INV_SelBus[2]~input_o\,
	datae => \inst9|ALT_INV_Mux5~1_combout\,
	dataf => \inst9|ALT_INV_Add0~21_sumout\,
	combout => \inst9|Mux5~2_combout\);

-- Location: MLABCELL_X59_Y2_N48
\inst9|Regist[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Regist[6]~0_combout\ = ( !\SelRegD[2]~input_o\ & ( !\SelRegD[3]~input_o\ & ( (\SelRegD[1]~input_o\ & (!\SelRegD[0]~input_o\ & \inst8|Regist[1]~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelRegD[1]~input_o\,
	datac => \ALT_INV_SelRegD[0]~input_o\,
	datad => \inst8|ALT_INV_Regist[1]~0_combout\,
	datae => \ALT_INV_SelRegD[2]~input_o\,
	dataf => \ALT_INV_SelRegD[3]~input_o\,
	combout => \inst9|Regist[6]~0_combout\);

-- Location: FF_X59_Y2_N17
\inst9|Regist[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst9|Mux5~2_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst3|Regist[6]~1_combout\,
	ena => \inst9|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|Regist\(2));

-- Location: LABCELL_X60_Y3_N18
\inst9|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Mux4~0_combout\ = ( \inst9|Regist\(2) & ( (!\SelBus[0]~input_o\) # (\inst9|Regist\(4)) ) ) # ( !\inst9|Regist\(2) & ( (\inst9|Regist\(4) & \SelBus[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst9|ALT_INV_Regist\(4),
	datad => \ALT_INV_SelBus[0]~input_o\,
	dataf => \inst9|ALT_INV_Regist\(2),
	combout => \inst9|Mux4~0_combout\);

-- Location: IOIBUF_X34_Y0_N58
\dataC[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataC(3),
	o => \dataC[3]~input_o\);

-- Location: MLABCELL_X59_Y3_N27
\inst25|$00000|auto_generated|l1_w3_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst25|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\ = ( \inst16|result[3]~295_combout\ & ( (!\MUX_C~input_o\) # (\dataC[3]~input_o\) ) ) # ( !\inst16|result[3]~295_combout\ & ( (\MUX_C~input_o\ & \dataC[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_MUX_C~input_o\,
	datac => \ALT_INV_dataC[3]~input_o\,
	dataf => \inst16|ALT_INV_result[3]~295_combout\,
	combout => \inst25|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X60_Y3_N51
\inst9|Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Mux4~1_combout\ = ( \inst9|Regist\(3) & ( (\inst25|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\ & !\SelBus[1]~input_o\) ) ) # ( !\inst9|Regist\(3) & ( (\SelBus[1]~input_o\) # (\inst25|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst25|$00000|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\,
	datad => \ALT_INV_SelBus[1]~input_o\,
	dataf => \inst9|ALT_INV_Regist\(3),
	combout => \inst9|Mux4~1_combout\);

-- Location: MLABCELL_X59_Y3_N39
\inst9|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Add0~17_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst25|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\)))) ) + ( !\inst9|Regist\(3) $ (((!\SelBus[1]~input_o\) # 
-- (!\SelBus[3]~input_o\))) ) + ( \inst9|Add0~22\ ))
-- \inst9|Add0~18\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst25|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\)))) ) + ( !\inst9|Regist\(3) $ (((!\SelBus[1]~input_o\) # 
-- (!\SelBus[3]~input_o\))) ) + ( \inst9|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000000110000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[3]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst25|$00000|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\,
	dataf => \inst9|ALT_INV_Regist\(3),
	cin => \inst9|Add0~22\,
	sumout => \inst9|Add0~17_sumout\,
	cout => \inst9|Add0~18\);

-- Location: LABCELL_X60_Y3_N48
\inst9|Mux4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Mux4~2_combout\ = ( \inst9|Add0~17_sumout\ & ( (!\SelBus[2]~input_o\ & (((\inst9|Mux4~1_combout\)) # (\inst3|Regist[6]~0_combout\))) # (\SelBus[2]~input_o\ & (((\inst9|Mux4~0_combout\)))) ) ) # ( !\inst9|Add0~17_sumout\ & ( (!\SelBus[2]~input_o\ & 
-- (!\inst3|Regist[6]~0_combout\ & ((\inst9|Mux4~1_combout\)))) # (\SelBus[2]~input_o\ & (((\inst9|Mux4~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001110001011000000111000101101000111110011110100011111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Regist[6]~0_combout\,
	datab => \ALT_INV_SelBus[2]~input_o\,
	datac => \inst9|ALT_INV_Mux4~0_combout\,
	datad => \inst9|ALT_INV_Mux4~1_combout\,
	dataf => \inst9|ALT_INV_Add0~17_sumout\,
	combout => \inst9|Mux4~2_combout\);

-- Location: FF_X60_Y3_N50
\inst9|Regist[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst9|Mux4~2_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst3|Regist[6]~1_combout\,
	ena => \inst9|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|Regist\(3));

-- Location: LABCELL_X62_Y3_N48
\inst9|Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Mux3~1_combout\ = ( \SelBus[1]~input_o\ & ( (\SelBus[2]~input_o\ & ((!\SelBus[0]~input_o\ & (\inst9|Regist\(3))) # (\SelBus[0]~input_o\ & ((\inst9|Regist\(5)))))) ) ) # ( !\SelBus[1]~input_o\ & ( (!\SelBus[2]~input_o\) # ((!\SelBus[0]~input_o\ & 
-- (\inst9|Regist\(3))) # (\SelBus[0]~input_o\ & ((\inst9|Regist\(5))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111011011111110011101101111100000010000100110000001000010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[0]~input_o\,
	datab => \ALT_INV_SelBus[2]~input_o\,
	datac => \inst9|ALT_INV_Regist\(3),
	datad => \inst9|ALT_INV_Regist\(5),
	dataf => \ALT_INV_SelBus[1]~input_o\,
	combout => \inst9|Mux3~1_combout\);

-- Location: IOIBUF_X62_Y81_N1
\dataC[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataC(4),
	o => \dataC[4]~input_o\);

-- Location: MLABCELL_X59_Y3_N57
\inst25|$00000|auto_generated|l1_w4_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst25|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\ = ( \inst16|result[4]~289_combout\ & ( (!\MUX_C~input_o\) # (\dataC[4]~input_o\) ) ) # ( !\inst16|result[4]~289_combout\ & ( (\dataC[4]~input_o\ & \MUX_C~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000111011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dataC[4]~input_o\,
	datab => \ALT_INV_MUX_C~input_o\,
	dataf => \inst16|ALT_INV_result[4]~289_combout\,
	combout => \inst25|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X59_Y3_N42
\inst9|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Add0~13_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst25|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\)))) ) + ( !\inst9|Regist\(4) $ (((!\SelBus[1]~input_o\) # 
-- (!\SelBus[3]~input_o\))) ) + ( \inst9|Add0~18\ ))
-- \inst9|Add0~14\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst25|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\)))) ) + ( !\inst9|Regist\(4) $ (((!\SelBus[1]~input_o\) # 
-- (!\SelBus[3]~input_o\))) ) + ( \inst9|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000000110000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[3]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst25|$00000|auto_generated|ALT_INV_l1_w4_n0_mux_dataout~0_combout\,
	dataf => \inst9|ALT_INV_Regist\(4),
	cin => \inst9|Add0~18\,
	sumout => \inst9|Add0~13_sumout\,
	cout => \inst9|Add0~14\);

-- Location: LABCELL_X60_Y3_N54
\inst9|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Mux3~0_combout\ = ( \inst9|Regist\(4) & ( \inst9|Add0~13_sumout\ & ( (!\SelBus[2]~input_o\ & (((\inst9|Mux3~1_combout\ & \inst25|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\)) # (\inst3|Regist[6]~0_combout\))) # (\SelBus[2]~input_o\ & 
-- (\inst9|Mux3~1_combout\)) ) ) ) # ( !\inst9|Regist\(4) & ( \inst9|Add0~13_sumout\ & ( (!\inst9|Mux3~1_combout\ & (!\SelBus[2]~input_o\)) # (\inst9|Mux3~1_combout\ & (((\inst25|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\) # 
-- (\inst3|Regist[6]~0_combout\)) # (\SelBus[2]~input_o\))) ) ) ) # ( \inst9|Regist\(4) & ( !\inst9|Add0~13_sumout\ & ( (\inst9|Mux3~1_combout\ & (((!\inst3|Regist[6]~0_combout\ & \inst25|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\)) # 
-- (\SelBus[2]~input_o\))) ) ) ) # ( !\inst9|Regist\(4) & ( !\inst9|Add0~13_sumout\ & ( (!\SelBus[2]~input_o\ & (!\inst3|Regist[6]~0_combout\ & ((!\inst9|Mux3~1_combout\) # (\inst25|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\)))) # 
-- (\SelBus[2]~input_o\ & (\inst9|Mux3~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000111010001000100010101000110011101110111010001110101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_Mux3~1_combout\,
	datab => \ALT_INV_SelBus[2]~input_o\,
	datac => \inst3|ALT_INV_Regist[6]~0_combout\,
	datad => \inst25|$00000|auto_generated|ALT_INV_l1_w4_n0_mux_dataout~0_combout\,
	datae => \inst9|ALT_INV_Regist\(4),
	dataf => \inst9|ALT_INV_Add0~13_sumout\,
	combout => \inst9|Mux3~0_combout\);

-- Location: FF_X60_Y3_N56
\inst9|Regist[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst9|Mux3~0_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst3|Regist[6]~1_combout\,
	ena => \inst9|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|Regist\(4));

-- Location: LABCELL_X60_Y3_N42
\inst9|Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Mux2~1_combout\ = ( \inst9|Regist\(6) & ( (!\SelBus[2]~input_o\ & (!\SelBus[1]~input_o\)) # (\SelBus[2]~input_o\ & (((\SelBus[0]~input_o\) # (\inst9|Regist\(4))))) ) ) # ( !\inst9|Regist\(6) & ( (!\SelBus[2]~input_o\ & (!\SelBus[1]~input_o\)) # 
-- (\SelBus[2]~input_o\ & (((\inst9|Regist\(4) & !\SelBus[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101110001000100010111000100010001011101110111000101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[2]~input_o\,
	datac => \inst9|ALT_INV_Regist\(4),
	datad => \ALT_INV_SelBus[0]~input_o\,
	dataf => \inst9|ALT_INV_Regist\(6),
	combout => \inst9|Mux2~1_combout\);

-- Location: MLABCELL_X59_Y3_N45
\inst9|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Add0~9_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst25|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\)))) ) + ( !\inst9|Regist\(5) $ (((!\SelBus[1]~input_o\) # 
-- (!\SelBus[3]~input_o\))) ) + ( \inst9|Add0~14\ ))
-- \inst9|Add0~10\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst25|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\)))) ) + ( !\inst9|Regist\(5) $ (((!\SelBus[1]~input_o\) # 
-- (!\SelBus[3]~input_o\))) ) + ( \inst9|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000000110000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[3]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst25|$00000|auto_generated|ALT_INV_l1_w5_n0_mux_dataout~0_combout\,
	dataf => \inst9|ALT_INV_Regist\(5),
	cin => \inst9|Add0~14\,
	sumout => \inst9|Add0~9_sumout\,
	cout => \inst9|Add0~10\);

-- Location: LABCELL_X60_Y3_N36
\inst9|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Mux2~0_combout\ = ( \inst9|Regist\(5) & ( \inst9|Add0~9_sumout\ & ( (!\SelBus[2]~input_o\ & (((\inst25|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\ & \inst9|Mux2~1_combout\)) # (\inst3|Regist[6]~0_combout\))) # (\SelBus[2]~input_o\ & 
-- (((\inst9|Mux2~1_combout\)))) ) ) ) # ( !\inst9|Regist\(5) & ( \inst9|Add0~9_sumout\ & ( (!\inst9|Mux2~1_combout\ & (((!\SelBus[2]~input_o\)))) # (\inst9|Mux2~1_combout\ & (((\SelBus[2]~input_o\) # (\inst3|Regist[6]~0_combout\)) # 
-- (\inst25|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\))) ) ) ) # ( \inst9|Regist\(5) & ( !\inst9|Add0~9_sumout\ & ( (\inst9|Mux2~1_combout\ & (((\inst25|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\ & !\inst3|Regist[6]~0_combout\)) # 
-- (\SelBus[2]~input_o\))) ) ) ) # ( !\inst9|Regist\(5) & ( !\inst9|Add0~9_sumout\ & ( (!\SelBus[2]~input_o\ & (!\inst3|Regist[6]~0_combout\ & ((!\inst9|Mux2~1_combout\) # (\inst25|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\)))) # 
-- (\SelBus[2]~input_o\ & (((\inst9|Mux2~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101000000110011000100000011001111011111001100110001111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|$00000|auto_generated|ALT_INV_l1_w5_n0_mux_dataout~0_combout\,
	datab => \inst9|ALT_INV_Mux2~1_combout\,
	datac => \inst3|ALT_INV_Regist[6]~0_combout\,
	datad => \ALT_INV_SelBus[2]~input_o\,
	datae => \inst9|ALT_INV_Regist\(5),
	dataf => \inst9|ALT_INV_Add0~9_sumout\,
	combout => \inst9|Mux2~0_combout\);

-- Location: FF_X60_Y3_N38
\inst9|Regist[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst9|Mux2~0_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst3|Regist[6]~1_combout\,
	ena => \inst9|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|Regist\(5));

-- Location: LABCELL_X62_Y3_N24
\inst9|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Mux1~1_combout\ = ( \inst9|Regist\(7) & ( (!\SelBus[2]~input_o\ & (!\SelBus[1]~input_o\)) # (\SelBus[2]~input_o\ & (((\inst9|Regist\(5)) # (\SelBus[0]~input_o\)))) ) ) # ( !\inst9|Regist\(7) & ( (!\SelBus[2]~input_o\ & (!\SelBus[1]~input_o\)) # 
-- (\SelBus[2]~input_o\ & (((!\SelBus[0]~input_o\ & \inst9|Regist\(5))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010111000100010001011100010001011101110111000101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[2]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst9|ALT_INV_Regist\(5),
	dataf => \inst9|ALT_INV_Regist\(7),
	combout => \inst9|Mux1~1_combout\);

-- Location: IOIBUF_X64_Y0_N18
\dataC[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataC(6),
	o => \dataC[6]~input_o\);

-- Location: MLABCELL_X59_Y3_N12
\inst25|$00000|auto_generated|l1_w6_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst25|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\ = ( \inst16|result[6]~277_combout\ & ( (!\MUX_C~input_o\) # (\dataC[6]~input_o\) ) ) # ( !\inst16|result[6]~277_combout\ & ( (\dataC[6]~input_o\ & \MUX_C~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_dataC[6]~input_o\,
	datad => \ALT_INV_MUX_C~input_o\,
	dataf => \inst16|ALT_INV_result[6]~277_combout\,
	combout => \inst25|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X59_Y3_N48
\inst9|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Add0~5_sumout\ = SUM(( !\inst9|Regist\(6) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & 
-- ((\inst25|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\)))) ) + ( \inst9|Add0~10\ ))
-- \inst9|Add0~6\ = CARRY(( !\inst9|Regist\(6) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & 
-- ((\inst25|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\)))) ) + ( \inst9|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100111101000100000000000000000001000111101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[3]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst9|ALT_INV_Regist\(6),
	dataf => \inst25|$00000|auto_generated|ALT_INV_l1_w6_n0_mux_dataout~0_combout\,
	cin => \inst9|Add0~10\,
	sumout => \inst9|Add0~5_sumout\,
	cout => \inst9|Add0~6\);

-- Location: LABCELL_X60_Y3_N12
\inst9|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Mux1~0_combout\ = ( \inst9|Regist\(6) & ( \inst9|Add0~5_sumout\ & ( (!\SelBus[2]~input_o\ & (((\inst9|Mux1~1_combout\ & \inst25|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\)) # (\inst3|Regist[6]~0_combout\))) # (\SelBus[2]~input_o\ & 
-- (\inst9|Mux1~1_combout\)) ) ) ) # ( !\inst9|Regist\(6) & ( \inst9|Add0~5_sumout\ & ( (!\inst9|Mux1~1_combout\ & (!\SelBus[2]~input_o\)) # (\inst9|Mux1~1_combout\ & (((\inst3|Regist[6]~0_combout\) # 
-- (\inst25|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\)) # (\SelBus[2]~input_o\))) ) ) ) # ( \inst9|Regist\(6) & ( !\inst9|Add0~5_sumout\ & ( (\inst9|Mux1~1_combout\ & (((\inst25|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\ & 
-- !\inst3|Regist[6]~0_combout\)) # (\SelBus[2]~input_o\))) ) ) ) # ( !\inst9|Regist\(6) & ( !\inst9|Add0~5_sumout\ & ( (!\SelBus[2]~input_o\ & (!\inst3|Regist[6]~0_combout\ & ((!\inst9|Mux1~1_combout\) # 
-- (\inst25|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\)))) # (\SelBus[2]~input_o\ & (\inst9|Mux1~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001110100010001000101010001000110011101110111010001010111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_Mux1~1_combout\,
	datab => \ALT_INV_SelBus[2]~input_o\,
	datac => \inst25|$00000|auto_generated|ALT_INV_l1_w6_n0_mux_dataout~0_combout\,
	datad => \inst3|ALT_INV_Regist[6]~0_combout\,
	datae => \inst9|ALT_INV_Regist\(6),
	dataf => \inst9|ALT_INV_Add0~5_sumout\,
	combout => \inst9|Mux1~0_combout\);

-- Location: FF_X60_Y3_N14
\inst9|Regist[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst9|Mux1~0_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst3|Regist[6]~1_combout\,
	ena => \inst9|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|Regist\(6));

-- Location: MLABCELL_X59_Y3_N18
\inst9|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Mux0~0_combout\ = ( \inst9|Regist\(7) & ( (\inst19|Regist[7]~0_combout\ & ((!\inst18|Regist[0]~2_combout\ & (\inst25|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\)) # (\inst18|Regist[0]~2_combout\ & ((\inst9|Regist\(6)))))) ) ) # ( 
-- !\inst9|Regist\(7) & ( (!\inst18|Regist[0]~2_combout\ & ((!\inst19|Regist[7]~0_combout\) # ((\inst25|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\)))) # (\inst18|Regist[0]~2_combout\ & (\inst19|Regist[7]~0_combout\ & ((\inst9|Regist\(6))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101010011011100010101001101100000010000100110000001000010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|ALT_INV_Regist[0]~2_combout\,
	datab => \inst19|ALT_INV_Regist[7]~0_combout\,
	datac => \inst25|$00000|auto_generated|ALT_INV_l1_w7_n0_mux_dataout~0_combout\,
	datad => \inst9|ALT_INV_Regist\(6),
	dataf => \inst9|ALT_INV_Regist\(7),
	combout => \inst9|Mux0~0_combout\);

-- Location: MLABCELL_X59_Y3_N51
\inst9|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Add0~1_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst25|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\)))) ) + ( !\inst9|Regist\(7) $ (((!\SelBus[1]~input_o\) # 
-- (!\SelBus[3]~input_o\))) ) + ( \inst9|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000000110000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[3]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst25|$00000|auto_generated|ALT_INV_l1_w7_n0_mux_dataout~0_combout\,
	dataf => \inst9|ALT_INV_Regist\(7),
	cin => \inst9|Add0~6\,
	sumout => \inst9|Add0~1_sumout\);

-- Location: MLABCELL_X59_Y3_N15
\inst9|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Mux0~1_combout\ = ( \inst9|Add0~1_sumout\ & ( (((\inst19|Regist[7]~1_combout\ & \inst9|Regist\(0))) # (\inst18|Regist[0]~0_combout\)) # (\inst9|Mux0~0_combout\) ) ) # ( !\inst9|Add0~1_sumout\ & ( (!\inst18|Regist[0]~0_combout\ & 
-- (((\inst19|Regist[7]~1_combout\ & \inst9|Regist\(0))) # (\inst9|Mux0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100000000000111110000000000011111111111110001111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|ALT_INV_Regist[7]~1_combout\,
	datab => \inst9|ALT_INV_Regist\(0),
	datac => \inst9|ALT_INV_Mux0~0_combout\,
	datad => \inst18|ALT_INV_Regist[0]~0_combout\,
	dataf => \inst9|ALT_INV_Add0~1_sumout\,
	combout => \inst9|Mux0~1_combout\);

-- Location: FF_X59_Y3_N17
\inst9|Regist[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst9|Mux0~1_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst19|Regist[7]~2_combout\,
	ena => \inst9|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|Regist\(7));

-- Location: LABCELL_X60_Y2_N33
\inst9|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Mux7~0_combout\ = ( \inst9|Regist\(0) & ( \inst25|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (\inst18|Regist[0]~1_combout\ & ((!\inst18|Regist[0]~2_combout\) # (\inst9|Regist\(1)))) ) ) ) # ( !\inst9|Regist\(0) & ( 
-- \inst25|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (!\inst18|Regist[0]~2_combout\) # ((\inst18|Regist[0]~1_combout\ & \inst9|Regist\(1))) ) ) ) # ( \inst9|Regist\(0) & ( !\inst25|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( 
-- (\inst18|Regist[0]~2_combout\ & (\inst18|Regist[0]~1_combout\ & \inst9|Regist\(1))) ) ) ) # ( !\inst9|Regist\(0) & ( !\inst25|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (!\inst18|Regist[0]~2_combout\ & (!\inst18|Regist[0]~1_combout\)) # 
-- (\inst18|Regist[0]~2_combout\ & (\inst18|Regist[0]~1_combout\ & \inst9|Regist\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100101000000000000010110101010101011110000101000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|ALT_INV_Regist[0]~2_combout\,
	datac => \inst18|ALT_INV_Regist[0]~1_combout\,
	datad => \inst9|ALT_INV_Regist\(1),
	datae => \inst9|ALT_INV_Regist\(0),
	dataf => \inst25|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	combout => \inst9|Mux7~0_combout\);

-- Location: MLABCELL_X59_Y3_N30
\inst9|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Add0~29_sumout\ = SUM(( (!\SelBus[3]~input_o\) # ((\inst25|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\) # (\SelBus[1]~input_o\)) ) + ( !\inst9|Regist\(0) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( !VCC ))
-- \inst9|Add0~30\ = CARRY(( (!\SelBus[3]~input_o\) # ((\inst25|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\) # (\SelBus[1]~input_o\)) ) + ( !\inst9|Regist\(0) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000000001100000000000000001100111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SelBus[3]~input_o\,
	datac => \ALT_INV_SelBus[1]~input_o\,
	datad => \inst25|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	dataf => \inst9|ALT_INV_Regist\(0),
	cin => GND,
	sumout => \inst9|Add0~29_sumout\,
	cout => \inst9|Add0~30\);

-- Location: LABCELL_X60_Y2_N36
\inst9|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Mux7~1_combout\ = ( \inst18|Regist[0]~0_combout\ & ( \inst9|Add0~29_sumout\ ) ) # ( !\inst18|Regist[0]~0_combout\ & ( \inst9|Add0~29_sumout\ & ( ((\inst18|Regist[0]~3_combout\ & \inst9|Regist\(7))) # (\inst9|Mux7~0_combout\) ) ) ) # ( 
-- !\inst18|Regist[0]~0_combout\ & ( !\inst9|Add0~29_sumout\ & ( ((\inst18|Regist[0]~3_combout\ & \inst9|Regist\(7))) # (\inst9|Mux7~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100011111000000000000000000011111000111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|ALT_INV_Regist[0]~3_combout\,
	datab => \inst9|ALT_INV_Regist\(7),
	datac => \inst9|ALT_INV_Mux7~0_combout\,
	datae => \inst18|ALT_INV_Regist[0]~0_combout\,
	dataf => \inst9|ALT_INV_Add0~29_sumout\,
	combout => \inst9|Mux7~1_combout\);

-- Location: FF_X60_Y2_N38
\inst9|Regist[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst9|Mux7~1_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst18|Regist[0]~4_combout\,
	ena => \inst9|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|Regist\(0));

-- Location: LABCELL_X57_Y3_N45
\inst9|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Mux6~0_combout\ = ( \inst9|Regist\(2) & ( (\inst9|Regist\(0)) # (\SelBus[0]~input_o\) ) ) # ( !\inst9|Regist\(2) & ( (!\SelBus[0]~input_o\ & \inst9|Regist\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst9|ALT_INV_Regist\(0),
	dataf => \inst9|ALT_INV_Regist\(2),
	combout => \inst9|Mux6~0_combout\);

-- Location: LABCELL_X60_Y3_N21
\inst9|Mux6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Mux6~2_combout\ = ( \inst9|Mux6~0_combout\ & ( ((!\inst3|Regist[6]~0_combout\ & (\inst9|Mux6~1_combout\)) # (\inst3|Regist[6]~0_combout\ & ((\inst9|Add0~25_sumout\)))) # (\SelBus[2]~input_o\) ) ) # ( !\inst9|Mux6~0_combout\ & ( 
-- (!\SelBus[2]~input_o\ & ((!\inst3|Regist[6]~0_combout\ & (\inst9|Mux6~1_combout\)) # (\inst3|Regist[6]~0_combout\ & ((\inst9|Add0~25_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001110000001000000111000000101111011111110010111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Regist[6]~0_combout\,
	datab => \inst9|ALT_INV_Mux6~1_combout\,
	datac => \ALT_INV_SelBus[2]~input_o\,
	datad => \inst9|ALT_INV_Add0~25_sumout\,
	dataf => \inst9|ALT_INV_Mux6~0_combout\,
	combout => \inst9|Mux6~2_combout\);

-- Location: FF_X60_Y3_N23
\inst9|Regist[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst9|Mux6~2_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst3|Regist[6]~1_combout\,
	ena => \inst9|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|Regist\(1));

-- Location: LABCELL_X60_Y4_N39
\inst2|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Mux7~0_combout\ = ( \inst2|Regist\(0) & ( (\inst18|Regist[0]~1_combout\ & ((!\inst18|Regist[0]~2_combout\ & (\inst16|result[0]~313_combout\)) # (\inst18|Regist[0]~2_combout\ & ((\inst2|Regist\(1)))))) ) ) # ( !\inst2|Regist\(0) & ( 
-- (!\inst18|Regist[0]~1_combout\ & (((!\inst18|Regist[0]~2_combout\)))) # (\inst18|Regist[0]~1_combout\ & ((!\inst18|Regist[0]~2_combout\ & (\inst16|result[0]~313_combout\)) # (\inst18|Regist[0]~2_combout\ & ((\inst2|Regist\(1)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000010110101101100001011010100010000000101010001000000010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|ALT_INV_Regist[0]~1_combout\,
	datab => \inst16|ALT_INV_result[0]~313_combout\,
	datac => \inst18|ALT_INV_Regist[0]~2_combout\,
	datad => \inst2|ALT_INV_Regist\(1),
	dataf => \inst2|ALT_INV_Regist\(0),
	combout => \inst2|Mux7~0_combout\);

-- Location: LABCELL_X60_Y5_N0
\inst2|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Mux1~1_combout\ = ( \inst16|result[6]~277_combout\ & ( (!\SelBus[1]~input_o\) # (!\inst2|Regist\(6)) ) ) # ( !\inst16|result[6]~277_combout\ & ( (\SelBus[1]~input_o\ & !\inst2|Regist\(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000111111111100110000110011000000001111111111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SelBus[1]~input_o\,
	datad => \inst2|ALT_INV_Regist\(6),
	datae => \inst16|ALT_INV_result[6]~277_combout\,
	combout => \inst2|Mux1~1_combout\);

-- Location: LABCELL_X61_Y3_N45
\inst2|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~9_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[5]~283_combout\)))) ) + ( !\inst2|Regist\(5) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst2|Add0~14\ ))
-- \inst2|Add0~10\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[5]~283_combout\)))) ) + ( !\inst2|Regist\(5) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst2|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000000110000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[3]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst16|ALT_INV_result[5]~283_combout\,
	dataf => \inst2|ALT_INV_Regist\(5),
	cin => \inst2|Add0~14\,
	sumout => \inst2|Add0~9_sumout\,
	cout => \inst2|Add0~10\);

-- Location: LABCELL_X61_Y3_N48
\inst2|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~5_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[6]~277_combout\)))) ) + ( !\inst2|Regist\(6) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst2|Add0~10\ ))
-- \inst2|Add0~6\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[6]~277_combout\)))) ) + ( !\inst2|Regist\(6) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst2|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000000110000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[3]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst16|ALT_INV_result[6]~277_combout\,
	dataf => \inst2|ALT_INV_Regist\(6),
	cin => \inst2|Add0~10\,
	sumout => \inst2|Add0~5_sumout\,
	cout => \inst2|Add0~6\);

-- Location: LABCELL_X60_Y3_N33
\inst2|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Mux1~0_combout\ = ( \inst2|Regist\(7) & ( (\inst2|Regist\(5)) # (\SelBus[0]~input_o\) ) ) # ( !\inst2|Regist\(7) & ( (!\SelBus[0]~input_o\ & \inst2|Regist\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst2|ALT_INV_Regist\(5),
	dataf => \inst2|ALT_INV_Regist\(7),
	combout => \inst2|Mux1~0_combout\);

-- Location: LABCELL_X60_Y3_N30
\inst2|Mux1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Mux1~2_combout\ = ( \inst2|Mux1~0_combout\ & ( ((!\inst3|Regist[6]~0_combout\ & (\inst2|Mux1~1_combout\)) # (\inst3|Regist[6]~0_combout\ & ((\inst2|Add0~5_sumout\)))) # (\SelBus[2]~input_o\) ) ) # ( !\inst2|Mux1~0_combout\ & ( (!\SelBus[2]~input_o\ 
-- & ((!\inst3|Regist[6]~0_combout\ & (\inst2|Mux1~1_combout\)) # (\inst3|Regist[6]~0_combout\ & ((\inst2|Add0~5_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000111011011111110011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Regist[6]~0_combout\,
	datab => \ALT_INV_SelBus[2]~input_o\,
	datac => \inst2|ALT_INV_Mux1~1_combout\,
	datad => \inst2|ALT_INV_Add0~5_sumout\,
	dataf => \inst2|ALT_INV_Mux1~0_combout\,
	combout => \inst2|Mux1~2_combout\);

-- Location: LABCELL_X56_Y3_N24
\inst2|Regist[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Regist[6]~0_combout\ = ( !\SelRegD[0]~input_o\ & ( (\SelRegD[2]~input_o\ & (!\SelRegD[1]~input_o\ & (\inst8|Regist[1]~0_combout\ & \SelRegD[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelRegD[2]~input_o\,
	datab => \ALT_INV_SelRegD[1]~input_o\,
	datac => \inst8|ALT_INV_Regist[1]~0_combout\,
	datad => \ALT_INV_SelRegD[3]~input_o\,
	dataf => \ALT_INV_SelRegD[0]~input_o\,
	combout => \inst2|Regist[6]~0_combout\);

-- Location: FF_X60_Y3_N32
\inst2|Regist[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst2|Mux1~2_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst3|Regist[6]~1_combout\,
	ena => \inst2|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|Regist\(6));

-- Location: LABCELL_X61_Y3_N0
\inst2|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Mux0~0_combout\ = ( \inst2|Regist\(7) & ( (\inst19|Regist[7]~0_combout\ & ((!\inst18|Regist[0]~2_combout\ & ((\inst16|result[7]~271_combout\))) # (\inst18|Regist[0]~2_combout\ & (\inst2|Regist\(6))))) ) ) # ( !\inst2|Regist\(7) & ( 
-- (!\inst19|Regist[7]~0_combout\ & (((!\inst18|Regist[0]~2_combout\)))) # (\inst19|Regist[7]~0_combout\ & ((!\inst18|Regist[0]~2_combout\ & ((\inst16|result[7]~271_combout\))) # (\inst18|Regist[0]~2_combout\ & (\inst2|Regist\(6))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000111110001110000011111000100000001001100010000000100110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_Regist\(6),
	datab => \inst19|ALT_INV_Regist[7]~0_combout\,
	datac => \inst18|ALT_INV_Regist[0]~2_combout\,
	datad => \inst16|ALT_INV_result[7]~271_combout\,
	dataf => \inst2|ALT_INV_Regist\(7),
	combout => \inst2|Mux0~0_combout\);

-- Location: LABCELL_X61_Y3_N51
\inst2|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~1_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[7]~271_combout\)))) ) + ( !\inst2|Regist\(7) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst2|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000000110000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[3]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst16|ALT_INV_result[7]~271_combout\,
	dataf => \inst2|ALT_INV_Regist\(7),
	cin => \inst2|Add0~6\,
	sumout => \inst2|Add0~1_sumout\);

-- Location: LABCELL_X61_Y3_N12
\inst2|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Mux0~1_combout\ = ( \inst2|Add0~1_sumout\ & ( (((\inst2|Regist\(0) & \inst19|Regist[7]~1_combout\)) # (\inst2|Mux0~0_combout\)) # (\inst18|Regist[0]~0_combout\) ) ) # ( !\inst2|Add0~1_sumout\ & ( (!\inst18|Regist[0]~0_combout\ & 
-- (((\inst2|Regist\(0) & \inst19|Regist[7]~1_combout\)) # (\inst2|Mux0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000101010000010100010101001011111011111110101111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|ALT_INV_Regist[0]~0_combout\,
	datab => \inst2|ALT_INV_Regist\(0),
	datac => \inst2|ALT_INV_Mux0~0_combout\,
	datad => \inst19|ALT_INV_Regist[7]~1_combout\,
	dataf => \inst2|ALT_INV_Add0~1_sumout\,
	combout => \inst2|Mux0~1_combout\);

-- Location: FF_X61_Y3_N14
\inst2|Regist[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst2|Mux0~1_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst19|Regist[7]~2_combout\,
	ena => \inst2|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|Regist\(7));

-- Location: LABCELL_X61_Y3_N30
\inst2|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~29_sumout\ = SUM(( ((!\SelBus[3]~input_o\) # (\inst16|result[0]~313_combout\)) # (\SelBus[1]~input_o\) ) + ( !\inst2|Regist\(0) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( !VCC ))
-- \inst2|Add0~30\ = CARRY(( ((!\SelBus[3]~input_o\) # (\inst16|result[0]~313_combout\)) # (\SelBus[1]~input_o\) ) + ( !\inst2|Regist\(0) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111000011110000100000000000000001101110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[3]~input_o\,
	datac => \inst2|ALT_INV_Regist\(0),
	datad => \inst16|ALT_INV_result[0]~313_combout\,
	cin => GND,
	sumout => \inst2|Add0~29_sumout\,
	cout => \inst2|Add0~30\);

-- Location: LABCELL_X60_Y4_N33
\inst2|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Mux7~1_combout\ = ( \inst2|Add0~29_sumout\ & ( (((\inst18|Regist[0]~3_combout\ & \inst2|Regist\(7))) # (\inst2|Mux7~0_combout\)) # (\inst18|Regist[0]~0_combout\) ) ) # ( !\inst2|Add0~29_sumout\ & ( (!\inst18|Regist[0]~0_combout\ & 
-- (((\inst18|Regist[0]~3_combout\ & \inst2|Regist\(7))) # (\inst2|Mux7~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001001100000011000100110000111111011111110011111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|ALT_INV_Regist[0]~3_combout\,
	datab => \inst18|ALT_INV_Regist[0]~0_combout\,
	datac => \inst2|ALT_INV_Mux7~0_combout\,
	datad => \inst2|ALT_INV_Regist\(7),
	dataf => \inst2|ALT_INV_Add0~29_sumout\,
	combout => \inst2|Mux7~1_combout\);

-- Location: FF_X60_Y4_N35
\inst2|Regist[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst2|Mux7~1_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst18|Regist[0]~4_combout\,
	ena => \inst2|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|Regist\(0));

-- Location: LABCELL_X61_Y3_N33
\inst2|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~25_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[1]~307_combout\)))) ) + ( !\inst2|Regist\(1) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst2|Add0~30\ ))
-- \inst2|Add0~26\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[1]~307_combout\)))) ) + ( !\inst2|Regist\(1) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst2|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000000110000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[3]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst16|ALT_INV_result[1]~307_combout\,
	dataf => \inst2|ALT_INV_Regist\(1),
	cin => \inst2|Add0~30\,
	sumout => \inst2|Add0~25_sumout\,
	cout => \inst2|Add0~26\);

-- Location: LABCELL_X61_Y3_N36
\inst2|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~21_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[2]~301_combout\)))) ) + ( !\inst2|Regist\(2) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst2|Add0~26\ ))
-- \inst2|Add0~22\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[2]~301_combout\)))) ) + ( !\inst2|Regist\(2) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst2|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000000110000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[3]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst16|ALT_INV_result[2]~301_combout\,
	dataf => \inst2|ALT_INV_Regist\(2),
	cin => \inst2|Add0~26\,
	sumout => \inst2|Add0~21_sumout\,
	cout => \inst2|Add0~22\);

-- Location: LABCELL_X61_Y3_N39
\inst2|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~17_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[3]~295_combout\)))) ) + ( !\inst2|Regist\(3) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst2|Add0~22\ ))
-- \inst2|Add0~18\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[3]~295_combout\)))) ) + ( !\inst2|Regist\(3) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst2|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000000110000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[3]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst16|ALT_INV_result[3]~295_combout\,
	dataf => \inst2|ALT_INV_Regist\(3),
	cin => \inst2|Add0~22\,
	sumout => \inst2|Add0~17_sumout\,
	cout => \inst2|Add0~18\);

-- Location: LABCELL_X61_Y3_N15
\inst2|Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Mux4~1_combout\ = ( \SelBus[1]~input_o\ & ( !\inst2|Regist\(3) ) ) # ( !\SelBus[1]~input_o\ & ( \inst16|result[3]~295_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst16|ALT_INV_result[3]~295_combout\,
	datad => \inst2|ALT_INV_Regist\(3),
	dataf => \ALT_INV_SelBus[1]~input_o\,
	combout => \inst2|Mux4~1_combout\);

-- Location: LABCELL_X61_Y3_N3
\inst2|Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Mux3~1_combout\ = ( \inst2|Regist\(4) & ( (!\SelBus[1]~input_o\ & \inst16|result[4]~289_combout\) ) ) # ( !\inst2|Regist\(4) & ( (\inst16|result[4]~289_combout\) # (\SelBus[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SelBus[1]~input_o\,
	datad => \inst16|ALT_INV_result[4]~289_combout\,
	dataf => \inst2|ALT_INV_Regist\(4),
	combout => \inst2|Mux3~1_combout\);

-- Location: LABCELL_X61_Y3_N42
\inst2|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~13_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[4]~289_combout\)))) ) + ( !\inst2|Regist\(4) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst2|Add0~18\ ))
-- \inst2|Add0~14\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[4]~289_combout\)))) ) + ( !\inst2|Regist\(4) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst2|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000000110000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[3]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst16|ALT_INV_result[4]~289_combout\,
	dataf => \inst2|ALT_INV_Regist\(4),
	cin => \inst2|Add0~18\,
	sumout => \inst2|Add0~13_sumout\,
	cout => \inst2|Add0~14\);

-- Location: LABCELL_X62_Y3_N30
\inst2|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Mux3~0_combout\ = ( \inst2|Regist\(3) & ( (!\SelBus[0]~input_o\) # (\inst2|Regist\(5)) ) ) # ( !\inst2|Regist\(3) & ( (\SelBus[0]~input_o\ & \inst2|Regist\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst2|ALT_INV_Regist\(5),
	dataf => \inst2|ALT_INV_Regist\(3),
	combout => \inst2|Mux3~0_combout\);

-- Location: LABCELL_X62_Y3_N33
\inst2|Mux3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Mux3~2_combout\ = ( \inst2|Mux3~0_combout\ & ( ((!\inst3|Regist[6]~0_combout\ & (\inst2|Mux3~1_combout\)) # (\inst3|Regist[6]~0_combout\ & ((\inst2|Add0~13_sumout\)))) # (\SelBus[2]~input_o\) ) ) # ( !\inst2|Mux3~0_combout\ & ( 
-- (!\SelBus[2]~input_o\ & ((!\inst3|Regist[6]~0_combout\ & (\inst2|Mux3~1_combout\)) # (\inst3|Regist[6]~0_combout\ & ((\inst2|Add0~13_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000111011011111110011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Regist[6]~0_combout\,
	datab => \ALT_INV_SelBus[2]~input_o\,
	datac => \inst2|ALT_INV_Mux3~1_combout\,
	datad => \inst2|ALT_INV_Add0~13_sumout\,
	dataf => \inst2|ALT_INV_Mux3~0_combout\,
	combout => \inst2|Mux3~2_combout\);

-- Location: FF_X62_Y3_N35
\inst2|Regist[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst2|Mux3~2_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst3|Regist[6]~1_combout\,
	ena => \inst2|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|Regist\(4));

-- Location: LABCELL_X62_Y3_N12
\inst2|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Mux4~0_combout\ = ( \inst2|Regist\(4) & ( (\SelBus[0]~input_o\) # (\inst2|Regist\(2)) ) ) # ( !\inst2|Regist\(4) & ( (\inst2|Regist\(2) & !\SelBus[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_Regist\(2),
	datad => \ALT_INV_SelBus[0]~input_o\,
	dataf => \inst2|ALT_INV_Regist\(4),
	combout => \inst2|Mux4~0_combout\);

-- Location: LABCELL_X62_Y3_N15
\inst2|Mux4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Mux4~2_combout\ = ( \inst2|Mux4~0_combout\ & ( ((!\inst3|Regist[6]~0_combout\ & ((\inst2|Mux4~1_combout\))) # (\inst3|Regist[6]~0_combout\ & (\inst2|Add0~17_sumout\))) # (\SelBus[2]~input_o\) ) ) # ( !\inst2|Mux4~0_combout\ & ( 
-- (!\SelBus[2]~input_o\ & ((!\inst3|Regist[6]~0_combout\ & ((\inst2|Mux4~1_combout\))) # (\inst3|Regist[6]~0_combout\ & (\inst2|Add0~17_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001010000001100000101000000111111010111110011111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_Add0~17_sumout\,
	datab => \inst2|ALT_INV_Mux4~1_combout\,
	datac => \ALT_INV_SelBus[2]~input_o\,
	datad => \inst3|ALT_INV_Regist[6]~0_combout\,
	dataf => \inst2|ALT_INV_Mux4~0_combout\,
	combout => \inst2|Mux4~2_combout\);

-- Location: FF_X62_Y3_N17
\inst2|Regist[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst2|Mux4~2_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst3|Regist[6]~1_combout\,
	ena => \inst2|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|Regist\(3));

-- Location: LABCELL_X62_Y3_N18
\inst2|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Mux5~0_combout\ = ( \inst2|Add0~21_sumout\ & ( ((!\SelBus[1]~input_o\ & (\inst16|result[2]~301_combout\)) # (\SelBus[1]~input_o\ & ((!\inst2|Regist\(2))))) # (\inst3|Regist[6]~0_combout\) ) ) # ( !\inst2|Add0~21_sumout\ & ( 
-- (!\inst3|Regist[6]~0_combout\ & ((!\SelBus[1]~input_o\ & (\inst16|result[2]~301_combout\)) # (\SelBus[1]~input_o\ & ((!\inst2|Regist\(2)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110000000000010111000000000001011100111111110101110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_result[2]~301_combout\,
	datab => \inst2|ALT_INV_Regist\(2),
	datac => \ALT_INV_SelBus[1]~input_o\,
	datad => \inst3|ALT_INV_Regist[6]~0_combout\,
	dataf => \inst2|ALT_INV_Add0~21_sumout\,
	combout => \inst2|Mux5~0_combout\);

-- Location: LABCELL_X62_Y3_N42
\inst2|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Mux5~1_combout\ = ( \SelBus[0]~input_o\ & ( \inst2|Mux5~0_combout\ & ( (!\SelBus[2]~input_o\) # (\inst2|Regist\(3)) ) ) ) # ( !\SelBus[0]~input_o\ & ( \inst2|Mux5~0_combout\ & ( (!\SelBus[2]~input_o\) # (\inst2|Regist\(1)) ) ) ) # ( 
-- \SelBus[0]~input_o\ & ( !\inst2|Mux5~0_combout\ & ( (\inst2|Regist\(3) & \SelBus[2]~input_o\) ) ) ) # ( !\SelBus[0]~input_o\ & ( !\inst2|Mux5~0_combout\ & ( (\inst2|Regist\(1) & \SelBus[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000011001111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_Regist\(1),
	datab => \inst2|ALT_INV_Regist\(3),
	datad => \ALT_INV_SelBus[2]~input_o\,
	datae => \ALT_INV_SelBus[0]~input_o\,
	dataf => \inst2|ALT_INV_Mux5~0_combout\,
	combout => \inst2|Mux5~1_combout\);

-- Location: FF_X62_Y3_N44
\inst2|Regist[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst2|Mux5~1_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst3|Regist[6]~1_combout\,
	ena => \inst2|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|Regist\(2));

-- Location: LABCELL_X62_Y3_N6
\inst2|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Mux6~0_combout\ = ( \inst2|Add0~25_sumout\ & ( \inst2|Regist\(1) & ( ((\inst16|result[1]~307_combout\ & !\SelBus[1]~input_o\)) # (\inst3|Regist[6]~0_combout\) ) ) ) # ( !\inst2|Add0~25_sumout\ & ( \inst2|Regist\(1) & ( 
-- (\inst16|result[1]~307_combout\ & (!\SelBus[1]~input_o\ & !\inst3|Regist[6]~0_combout\)) ) ) ) # ( \inst2|Add0~25_sumout\ & ( !\inst2|Regist\(1) & ( ((\inst3|Regist[6]~0_combout\) # (\SelBus[1]~input_o\)) # (\inst16|result[1]~307_combout\) ) ) ) # ( 
-- !\inst2|Add0~25_sumout\ & ( !\inst2|Regist\(1) & ( (!\inst3|Regist[6]~0_combout\ & ((\SelBus[1]~input_o\) # (\inst16|result[1]~307_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000001110000011111110111111101000000010000000100111101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_result[1]~307_combout\,
	datab => \ALT_INV_SelBus[1]~input_o\,
	datac => \inst3|ALT_INV_Regist[6]~0_combout\,
	datae => \inst2|ALT_INV_Add0~25_sumout\,
	dataf => \inst2|ALT_INV_Regist\(1),
	combout => \inst2|Mux6~0_combout\);

-- Location: LABCELL_X62_Y3_N51
\inst2|Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Mux6~1_combout\ = ( \inst2|Mux6~0_combout\ & ( (!\SelBus[2]~input_o\) # ((!\SelBus[0]~input_o\ & ((\inst2|Regist\(0)))) # (\SelBus[0]~input_o\ & (\inst2|Regist\(2)))) ) ) # ( !\inst2|Mux6~0_combout\ & ( (\SelBus[2]~input_o\ & ((!\SelBus[0]~input_o\ 
-- & ((\inst2|Regist\(0)))) # (\SelBus[0]~input_o\ & (\inst2|Regist\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011000000010010001111001101111011111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[0]~input_o\,
	datab => \ALT_INV_SelBus[2]~input_o\,
	datac => \inst2|ALT_INV_Regist\(2),
	datad => \inst2|ALT_INV_Regist\(0),
	dataf => \inst2|ALT_INV_Mux6~0_combout\,
	combout => \inst2|Mux6~1_combout\);

-- Location: FF_X62_Y3_N53
\inst2|Regist[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst2|Mux6~1_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst3|Regist[6]~1_combout\,
	ena => \inst2|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|Regist\(1));

-- Location: MLABCELL_X59_Y4_N24
\inst16|result[1]~304\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|result[1]~304_combout\ = ( \inst17|Regist\(1) & ( \inst2|Regist\(1) & ( (!\inst16|_~7_combout\ & (!\inst16|_~8_combout\ & ((!\inst16|_~6_combout\) # (!\inst9|Regist\(1))))) ) ) ) # ( !\inst17|Regist\(1) & ( \inst2|Regist\(1) & ( 
-- (!\inst16|_~8_combout\ & ((!\inst16|_~6_combout\) # (!\inst9|Regist\(1)))) ) ) ) # ( \inst17|Regist\(1) & ( !\inst2|Regist\(1) & ( (!\inst16|_~7_combout\ & ((!\inst16|_~6_combout\) # (!\inst9|Regist\(1)))) ) ) ) # ( !\inst17|Regist\(1) & ( 
-- !\inst2|Regist\(1) & ( (!\inst16|_~6_combout\) # (!\inst9|Regist\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000101010101010000011001100110000001000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV__~7_combout\,
	datab => \inst16|ALT_INV__~8_combout\,
	datac => \inst16|ALT_INV__~6_combout\,
	datad => \inst9|ALT_INV_Regist\(1),
	datae => \inst17|ALT_INV_Regist\(1),
	dataf => \inst2|ALT_INV_Regist\(1),
	combout => \inst16|result[1]~304_combout\);

-- Location: LABCELL_X57_Y4_N30
\inst16|_~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|_~4_combout\ = ( !\muxSel[4]~input_o\ & ( \muxSel[0]~input_o\ & ( (\muxSel[2]~input_o\ & (!\muxSel[1]~input_o\ & (!\muxSel[3]~input_o\ & !\muxSel[5]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_muxSel[2]~input_o\,
	datab => \ALT_INV_muxSel[1]~input_o\,
	datac => \ALT_INV_muxSel[3]~input_o\,
	datad => \ALT_INV_muxSel[5]~input_o\,
	datae => \ALT_INV_muxSel[4]~input_o\,
	dataf => \ALT_INV_muxSel[0]~input_o\,
	combout => \inst16|_~4_combout\);

-- Location: LABCELL_X57_Y4_N3
\inst16|_~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|_~5_combout\ = ( !\muxSel[4]~input_o\ & ( !\muxSel[0]~input_o\ & ( (!\muxSel[2]~input_o\ & (!\muxSel[5]~input_o\ & (\muxSel[1]~input_o\ & \muxSel[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_muxSel[2]~input_o\,
	datab => \ALT_INV_muxSel[5]~input_o\,
	datac => \ALT_INV_muxSel[1]~input_o\,
	datad => \ALT_INV_muxSel[3]~input_o\,
	datae => \ALT_INV_muxSel[4]~input_o\,
	dataf => \ALT_INV_muxSel[0]~input_o\,
	combout => \inst16|_~5_combout\);

-- Location: LABCELL_X55_Y6_N12
\inst16|_~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|_~3_combout\ = ( !\muxSel[4]~input_o\ & ( \muxSel[0]~input_o\ & ( (!\muxSel[5]~input_o\ & (!\muxSel[3]~input_o\ & (!\muxSel[2]~input_o\ & !\muxSel[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_muxSel[5]~input_o\,
	datab => \ALT_INV_muxSel[3]~input_o\,
	datac => \ALT_INV_muxSel[2]~input_o\,
	datad => \ALT_INV_muxSel[1]~input_o\,
	datae => \ALT_INV_muxSel[4]~input_o\,
	dataf => \ALT_INV_muxSel[0]~input_o\,
	combout => \inst16|_~3_combout\);

-- Location: LABCELL_X55_Y5_N30
\inst14|Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst14|Mux2~1_combout\ = ( \inst16|result[5]~283_combout\ & ( (!\inst14|Regist\(5)) # (!\SelBus[1]~input_o\) ) ) # ( !\inst16|result[5]~283_combout\ & ( (!\inst14|Regist\(5) & \SelBus[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110011111100111111001111110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst14|ALT_INV_Regist\(5),
	datac => \ALT_INV_SelBus[1]~input_o\,
	dataf => \inst16|ALT_INV_result[5]~283_combout\,
	combout => \inst14|Mux2~1_combout\);

-- Location: LABCELL_X57_Y5_N30
\inst14|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst14|Add0~29_sumout\ = SUM(( ((!\SelBus[3]~input_o\) # (\inst16|result[0]~313_combout\)) # (\SelBus[1]~input_o\) ) + ( !\inst14|Regist\(0) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( !VCC ))
-- \inst14|Add0~30\ = CARRY(( ((!\SelBus[3]~input_o\) # (\inst16|result[0]~313_combout\)) # (\SelBus[1]~input_o\) ) + ( !\inst14|Regist\(0) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000001101111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[3]~input_o\,
	datac => \inst16|ALT_INV_result[0]~313_combout\,
	dataf => \inst14|ALT_INV_Regist\(0),
	cin => GND,
	sumout => \inst14|Add0~29_sumout\,
	cout => \inst14|Add0~30\);

-- Location: LABCELL_X57_Y5_N33
\inst14|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst14|Add0~25_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[1]~307_combout\)))) ) + ( !\inst14|Regist\(1) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst14|Add0~30\ ))
-- \inst14|Add0~26\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[1]~307_combout\)))) ) + ( !\inst14|Regist\(1) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst14|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000000110000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[3]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst16|ALT_INV_result[1]~307_combout\,
	dataf => \inst14|ALT_INV_Regist\(1),
	cin => \inst14|Add0~30\,
	sumout => \inst14|Add0~25_sumout\,
	cout => \inst14|Add0~26\);

-- Location: LABCELL_X57_Y5_N36
\inst14|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst14|Add0~21_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[2]~301_combout\)))) ) + ( !\inst14|Regist\(2) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst14|Add0~26\ ))
-- \inst14|Add0~22\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[2]~301_combout\)))) ) + ( !\inst14|Regist\(2) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst14|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000000110000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[3]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst16|ALT_INV_result[2]~301_combout\,
	dataf => \inst14|ALT_INV_Regist\(2),
	cin => \inst14|Add0~26\,
	sumout => \inst14|Add0~21_sumout\,
	cout => \inst14|Add0~22\);

-- Location: LABCELL_X57_Y5_N6
\inst14|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst14|Mux5~0_combout\ = ( \inst14|Add0~21_sumout\ & ( ((!\SelBus[1]~input_o\ & ((\inst16|result[2]~301_combout\))) # (\SelBus[1]~input_o\ & (!\inst14|Regist\(2)))) # (\inst3|Regist[6]~0_combout\) ) ) # ( !\inst14|Add0~21_sumout\ & ( 
-- (!\inst3|Regist[6]~0_combout\ & ((!\SelBus[1]~input_o\ & ((\inst16|result[2]~301_combout\))) # (\SelBus[1]~input_o\ & (!\inst14|Regist\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000011001000010000001100100001110011111110110111001111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \inst3|ALT_INV_Regist[6]~0_combout\,
	datac => \inst14|ALT_INV_Regist\(2),
	datad => \inst16|ALT_INV_result[2]~301_combout\,
	dataf => \inst14|ALT_INV_Add0~21_sumout\,
	combout => \inst14|Mux5~0_combout\);

-- Location: LABCELL_X57_Y5_N18
\inst14|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst14|Mux5~1_combout\ = ( \inst14|Mux5~0_combout\ & ( (!\SelBus[2]~input_o\) # ((!\SelBus[0]~input_o\ & ((\inst14|Regist\(1)))) # (\SelBus[0]~input_o\ & (\inst14|Regist\(3)))) ) ) # ( !\inst14|Mux5~0_combout\ & ( (\SelBus[2]~input_o\ & 
-- ((!\SelBus[0]~input_o\ & ((\inst14|Regist\(1)))) # (\SelBus[0]~input_o\ & (\inst14|Regist\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011101000000000001110111111111000111011111111100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|ALT_INV_Regist\(3),
	datab => \ALT_INV_SelBus[0]~input_o\,
	datac => \inst14|ALT_INV_Regist\(1),
	datad => \ALT_INV_SelBus[2]~input_o\,
	dataf => \inst14|ALT_INV_Mux5~0_combout\,
	combout => \inst14|Mux5~1_combout\);

-- Location: LABCELL_X55_Y3_N27
\inst14|Regist[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst14|Regist[6]~0_combout\ = ( !\SelRegD[1]~input_o\ & ( \SelRegD[2]~input_o\ & ( \inst5|Regist[6]~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_Regist[6]~0_combout\,
	datae => \ALT_INV_SelRegD[1]~input_o\,
	dataf => \ALT_INV_SelRegD[2]~input_o\,
	combout => \inst14|Regist[6]~0_combout\);

-- Location: FF_X57_Y5_N20
\inst14|Regist[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst14|Mux5~1_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst3|Regist[6]~1_combout\,
	ena => \inst14|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|Regist\(2));

-- Location: LABCELL_X60_Y5_N6
\inst14|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst14|Mux4~0_combout\ = ( \inst14|Regist\(2) & ( \inst14|Regist\(4) ) ) # ( !\inst14|Regist\(2) & ( \inst14|Regist\(4) & ( \SelBus[0]~input_o\ ) ) ) # ( \inst14|Regist\(2) & ( !\inst14|Regist\(4) & ( !\SelBus[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SelBus[0]~input_o\,
	datae => \inst14|ALT_INV_Regist\(2),
	dataf => \inst14|ALT_INV_Regist\(4),
	combout => \inst14|Mux4~0_combout\);

-- Location: LABCELL_X57_Y5_N57
\inst14|Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst14|Mux4~1_combout\ = ( \SelBus[1]~input_o\ & ( !\inst14|Regist\(3) ) ) # ( !\SelBus[1]~input_o\ & ( \inst16|result[3]~295_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst16|ALT_INV_result[3]~295_combout\,
	datad => \inst14|ALT_INV_Regist\(3),
	dataf => \ALT_INV_SelBus[1]~input_o\,
	combout => \inst14|Mux4~1_combout\);

-- Location: LABCELL_X57_Y5_N39
\inst14|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst14|Add0~17_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[3]~295_combout\)))) ) + ( !\inst14|Regist\(3) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst14|Add0~22\ ))
-- \inst14|Add0~18\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[3]~295_combout\)))) ) + ( !\inst14|Regist\(3) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst14|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000000110000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[3]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst16|ALT_INV_result[3]~295_combout\,
	dataf => \inst14|ALT_INV_Regist\(3),
	cin => \inst14|Add0~22\,
	sumout => \inst14|Add0~17_sumout\,
	cout => \inst14|Add0~18\);

-- Location: LABCELL_X57_Y5_N3
\inst14|Mux4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst14|Mux4~2_combout\ = ( \inst14|Add0~17_sumout\ & ( (!\SelBus[2]~input_o\ & (((\inst14|Mux4~1_combout\)) # (\inst3|Regist[6]~0_combout\))) # (\SelBus[2]~input_o\ & (((\inst14|Mux4~0_combout\)))) ) ) # ( !\inst14|Add0~17_sumout\ & ( 
-- (!\SelBus[2]~input_o\ & (!\inst3|Regist[6]~0_combout\ & ((\inst14|Mux4~1_combout\)))) # (\SelBus[2]~input_o\ & (((\inst14|Mux4~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001110001011000000111000101101000111110011110100011111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Regist[6]~0_combout\,
	datab => \ALT_INV_SelBus[2]~input_o\,
	datac => \inst14|ALT_INV_Mux4~0_combout\,
	datad => \inst14|ALT_INV_Mux4~1_combout\,
	dataf => \inst14|ALT_INV_Add0~17_sumout\,
	combout => \inst14|Mux4~2_combout\);

-- Location: FF_X57_Y5_N5
\inst14|Regist[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst14|Mux4~2_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst3|Regist[6]~1_combout\,
	ena => \inst14|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|Regist\(3));

-- Location: LABCELL_X55_Y5_N33
\inst14|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst14|Mux3~0_combout\ = (!\SelBus[0]~input_o\ & (\inst14|Regist\(3))) # (\SelBus[0]~input_o\ & ((\inst14|Regist\(5))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001101010101001100110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|ALT_INV_Regist\(3),
	datab => \inst14|ALT_INV_Regist\(5),
	datad => \ALT_INV_SelBus[0]~input_o\,
	combout => \inst14|Mux3~0_combout\);

-- Location: LABCELL_X57_Y5_N0
\inst14|Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst14|Mux3~1_combout\ = ( \inst14|Regist\(4) & ( (!\SelBus[1]~input_o\ & \inst16|result[4]~289_combout\) ) ) # ( !\inst14|Regist\(4) & ( (\inst16|result[4]~289_combout\) # (\SelBus[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SelBus[1]~input_o\,
	datad => \inst16|ALT_INV_result[4]~289_combout\,
	dataf => \inst14|ALT_INV_Regist\(4),
	combout => \inst14|Mux3~1_combout\);

-- Location: LABCELL_X57_Y5_N42
\inst14|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst14|Add0~13_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[4]~289_combout\)))) ) + ( !\inst14|Regist\(4) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst14|Add0~18\ ))
-- \inst14|Add0~14\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[4]~289_combout\)))) ) + ( !\inst14|Regist\(4) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst14|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000000110000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[3]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst16|ALT_INV_result[4]~289_combout\,
	dataf => \inst14|ALT_INV_Regist\(4),
	cin => \inst14|Add0~18\,
	sumout => \inst14|Add0~13_sumout\,
	cout => \inst14|Add0~14\);

-- Location: LABCELL_X57_Y5_N54
\inst14|Mux3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst14|Mux3~2_combout\ = ( \inst14|Add0~13_sumout\ & ( (!\SelBus[2]~input_o\ & (((\inst14|Mux3~1_combout\) # (\inst3|Regist[6]~0_combout\)))) # (\SelBus[2]~input_o\ & (\inst14|Mux3~0_combout\)) ) ) # ( !\inst14|Add0~13_sumout\ & ( (!\SelBus[2]~input_o\ & 
-- (((!\inst3|Regist[6]~0_combout\ & \inst14|Mux3~1_combout\)))) # (\SelBus[2]~input_o\ & (\inst14|Mux3~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111010001000100011101000100011101110111010001110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|ALT_INV_Mux3~0_combout\,
	datab => \ALT_INV_SelBus[2]~input_o\,
	datac => \inst3|ALT_INV_Regist[6]~0_combout\,
	datad => \inst14|ALT_INV_Mux3~1_combout\,
	dataf => \inst14|ALT_INV_Add0~13_sumout\,
	combout => \inst14|Mux3~2_combout\);

-- Location: FF_X57_Y5_N56
\inst14|Regist[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst14|Mux3~2_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst3|Regist[6]~1_combout\,
	ena => \inst14|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|Regist\(4));

-- Location: LABCELL_X57_Y5_N45
\inst14|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst14|Add0~9_sumout\ = SUM(( !\inst14|Regist\(5) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[5]~283_combout\)))) ) + ( 
-- \inst14|Add0~14\ ))
-- \inst14|Add0~10\ = CARRY(( !\inst14|Regist\(5) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[5]~283_combout\)))) ) + ( 
-- \inst14|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100111101000100000000000000000001000111101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[3]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst14|ALT_INV_Regist\(5),
	dataf => \inst16|ALT_INV_result[5]~283_combout\,
	cin => \inst14|Add0~14\,
	sumout => \inst14|Add0~9_sumout\,
	cout => \inst14|Add0~10\);

-- Location: LABCELL_X57_Y5_N21
\inst14|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst14|Mux2~0_combout\ = ( \inst14|Regist\(6) & ( (\inst14|Regist\(4)) # (\SelBus[0]~input_o\) ) ) # ( !\inst14|Regist\(6) & ( (!\SelBus[0]~input_o\ & \inst14|Regist\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst14|ALT_INV_Regist\(4),
	dataf => \inst14|ALT_INV_Regist\(6),
	combout => \inst14|Mux2~0_combout\);

-- Location: LABCELL_X57_Y5_N15
\inst14|Mux2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst14|Mux2~2_combout\ = ( \inst14|Mux2~0_combout\ & ( ((!\inst3|Regist[6]~0_combout\ & (\inst14|Mux2~1_combout\)) # (\inst3|Regist[6]~0_combout\ & ((\inst14|Add0~9_sumout\)))) # (\SelBus[2]~input_o\) ) ) # ( !\inst14|Mux2~0_combout\ & ( 
-- (!\SelBus[2]~input_o\ & ((!\inst3|Regist[6]~0_combout\ & (\inst14|Mux2~1_combout\)) # (\inst3|Regist[6]~0_combout\ & ((\inst14|Add0~9_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000111011011111110011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Regist[6]~0_combout\,
	datab => \ALT_INV_SelBus[2]~input_o\,
	datac => \inst14|ALT_INV_Mux2~1_combout\,
	datad => \inst14|ALT_INV_Add0~9_sumout\,
	dataf => \inst14|ALT_INV_Mux2~0_combout\,
	combout => \inst14|Mux2~2_combout\);

-- Location: FF_X57_Y5_N17
\inst14|Regist[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst14|Mux2~2_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst3|Regist[6]~1_combout\,
	ena => \inst14|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|Regist\(5));

-- Location: MLABCELL_X59_Y5_N30
\inst14|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst14|Mux1~0_combout\ = ( \inst14|Regist\(5) & ( \inst14|Regist\(7) ) ) # ( !\inst14|Regist\(5) & ( \inst14|Regist\(7) & ( \SelBus[0]~input_o\ ) ) ) # ( \inst14|Regist\(5) & ( !\inst14|Regist\(7) & ( !\SelBus[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SelBus[0]~input_o\,
	datae => \inst14|ALT_INV_Regist\(5),
	dataf => \inst14|ALT_INV_Regist\(7),
	combout => \inst14|Mux1~0_combout\);

-- Location: LABCELL_X57_Y5_N27
\inst14|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst14|Mux1~1_combout\ = ( \inst14|Regist\(6) & ( (\inst16|result[6]~277_combout\ & !\SelBus[1]~input_o\) ) ) # ( !\inst14|Regist\(6) & ( (\SelBus[1]~input_o\) # (\inst16|result[6]~277_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst16|ALT_INV_result[6]~277_combout\,
	datad => \ALT_INV_SelBus[1]~input_o\,
	dataf => \inst14|ALT_INV_Regist\(6),
	combout => \inst14|Mux1~1_combout\);

-- Location: LABCELL_X57_Y5_N48
\inst14|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst14|Add0~5_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[6]~277_combout\)))) ) + ( !\inst14|Regist\(6) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst14|Add0~10\ ))
-- \inst14|Add0~6\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[6]~277_combout\)))) ) + ( !\inst14|Regist\(6) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst14|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000000110000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[3]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst16|ALT_INV_result[6]~277_combout\,
	dataf => \inst14|ALT_INV_Regist\(6),
	cin => \inst14|Add0~10\,
	sumout => \inst14|Add0~5_sumout\,
	cout => \inst14|Add0~6\);

-- Location: LABCELL_X57_Y5_N12
\inst14|Mux1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst14|Mux1~2_combout\ = ( \inst14|Add0~5_sumout\ & ( (!\SelBus[2]~input_o\ & (((\inst14|Mux1~1_combout\)) # (\inst3|Regist[6]~0_combout\))) # (\SelBus[2]~input_o\ & (((\inst14|Mux1~0_combout\)))) ) ) # ( !\inst14|Add0~5_sumout\ & ( (!\SelBus[2]~input_o\ 
-- & (!\inst3|Regist[6]~0_combout\ & ((\inst14|Mux1~1_combout\)))) # (\SelBus[2]~input_o\ & (((\inst14|Mux1~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001110001011000000111000101101000111110011110100011111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Regist[6]~0_combout\,
	datab => \ALT_INV_SelBus[2]~input_o\,
	datac => \inst14|ALT_INV_Mux1~0_combout\,
	datad => \inst14|ALT_INV_Mux1~1_combout\,
	dataf => \inst14|ALT_INV_Add0~5_sumout\,
	combout => \inst14|Mux1~2_combout\);

-- Location: FF_X57_Y5_N14
\inst14|Regist[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst14|Mux1~2_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst3|Regist[6]~1_combout\,
	ena => \inst14|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|Regist\(6));

-- Location: MLABCELL_X59_Y5_N6
\inst14|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst14|Mux0~0_combout\ = ( \inst16|result[7]~271_combout\ & ( \inst14|Regist\(7) & ( (\inst19|Regist[7]~0_combout\ & ((!\inst18|Regist[0]~2_combout\) # (\inst14|Regist\(6)))) ) ) ) # ( !\inst16|result[7]~271_combout\ & ( \inst14|Regist\(7) & ( 
-- (\inst14|Regist\(6) & (\inst18|Regist[0]~2_combout\ & \inst19|Regist[7]~0_combout\)) ) ) ) # ( \inst16|result[7]~271_combout\ & ( !\inst14|Regist\(7) & ( (!\inst18|Regist[0]~2_combout\) # ((\inst14|Regist\(6) & \inst19|Regist[7]~0_combout\)) ) ) ) # ( 
-- !\inst16|result[7]~271_combout\ & ( !\inst14|Regist\(7) & ( (!\inst18|Regist[0]~2_combout\ & ((!\inst19|Regist[7]~0_combout\))) # (\inst18|Regist[0]~2_combout\ & (\inst14|Regist\(6) & \inst19|Regist[7]~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000111000001110011011100110100000001000000010000110100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|ALT_INV_Regist\(6),
	datab => \inst18|ALT_INV_Regist[0]~2_combout\,
	datac => \inst19|ALT_INV_Regist[7]~0_combout\,
	datae => \inst16|ALT_INV_result[7]~271_combout\,
	dataf => \inst14|ALT_INV_Regist\(7),
	combout => \inst14|Mux0~0_combout\);

-- Location: LABCELL_X57_Y5_N51
\inst14|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst14|Add0~1_sumout\ = SUM(( !\inst14|Regist\(7) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[7]~271_combout\)))) ) + ( 
-- \inst14|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100111101000100000000000000000001000111101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[3]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst14|ALT_INV_Regist\(7),
	dataf => \inst16|ALT_INV_result[7]~271_combout\,
	cin => \inst14|Add0~6\,
	sumout => \inst14|Add0~1_sumout\);

-- Location: MLABCELL_X59_Y5_N42
\inst14|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst14|Mux0~1_combout\ = ( \inst14|Mux0~0_combout\ & ( \inst14|Add0~1_sumout\ ) ) # ( !\inst14|Mux0~0_combout\ & ( \inst14|Add0~1_sumout\ & ( ((\inst14|Regist\(0) & \inst19|Regist[7]~1_combout\)) # (\inst18|Regist[0]~0_combout\) ) ) ) # ( 
-- \inst14|Mux0~0_combout\ & ( !\inst14|Add0~1_sumout\ & ( !\inst18|Regist[0]~0_combout\ ) ) ) # ( !\inst14|Mux0~0_combout\ & ( !\inst14|Add0~1_sumout\ & ( (\inst14|Regist\(0) & (\inst19|Regist[7]~1_combout\ & !\inst18|Regist[0]~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000111111110000000000000011111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst14|ALT_INV_Regist\(0),
	datac => \inst19|ALT_INV_Regist[7]~1_combout\,
	datad => \inst18|ALT_INV_Regist[0]~0_combout\,
	datae => \inst14|ALT_INV_Mux0~0_combout\,
	dataf => \inst14|ALT_INV_Add0~1_sumout\,
	combout => \inst14|Mux0~1_combout\);

-- Location: FF_X59_Y5_N44
\inst14|Regist[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst14|Mux0~1_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst19|Regist[7]~2_combout\,
	ena => \inst14|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|Regist\(7));

-- Location: LABCELL_X55_Y3_N51
\inst14|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst14|Mux7~0_combout\ = ( \inst14|Regist\(0) & ( (\inst18|Regist[0]~1_combout\ & ((!\inst18|Regist[0]~2_combout\ & ((\inst16|result[0]~313_combout\))) # (\inst18|Regist[0]~2_combout\ & (\inst14|Regist\(1))))) ) ) # ( !\inst14|Regist\(0) & ( 
-- (!\inst18|Regist[0]~1_combout\ & (!\inst18|Regist[0]~2_combout\)) # (\inst18|Regist[0]~1_combout\ & ((!\inst18|Regist[0]~2_combout\ & ((\inst16|result[0]~313_combout\))) # (\inst18|Regist[0]~2_combout\ & (\inst14|Regist\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100111001101100010011100110100000001010001010000000101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|ALT_INV_Regist[0]~1_combout\,
	datab => \inst18|ALT_INV_Regist[0]~2_combout\,
	datac => \inst14|ALT_INV_Regist\(1),
	datad => \inst16|ALT_INV_result[0]~313_combout\,
	dataf => \inst14|ALT_INV_Regist\(0),
	combout => \inst14|Mux7~0_combout\);

-- Location: LABCELL_X55_Y3_N30
\inst14|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst14|Mux7~1_combout\ = ( \inst14|Mux7~0_combout\ & ( (!\inst18|Regist[0]~0_combout\) # (\inst14|Add0~29_sumout\) ) ) # ( !\inst14|Mux7~0_combout\ & ( (!\inst18|Regist[0]~0_combout\ & (\inst14|Regist\(7) & (\inst18|Regist[0]~3_combout\))) # 
-- (\inst18|Regist[0]~0_combout\ & (((\inst14|Add0~29_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010111000000100101011110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|ALT_INV_Regist[0]~0_combout\,
	datab => \inst14|ALT_INV_Regist\(7),
	datac => \inst18|ALT_INV_Regist[0]~3_combout\,
	datad => \inst14|ALT_INV_Add0~29_sumout\,
	dataf => \inst14|ALT_INV_Mux7~0_combout\,
	combout => \inst14|Mux7~1_combout\);

-- Location: FF_X55_Y3_N32
\inst14|Regist[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst14|Mux7~1_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst18|Regist[0]~4_combout\,
	ena => \inst14|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|Regist\(0));

-- Location: LABCELL_X57_Y5_N9
\inst14|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst14|Mux6~0_combout\ = ( \inst14|Add0~25_sumout\ & ( ((!\SelBus[1]~input_o\ & ((\inst16|result[1]~307_combout\))) # (\SelBus[1]~input_o\ & (!\inst14|Regist\(1)))) # (\inst3|Regist[6]~0_combout\) ) ) # ( !\inst14|Add0~25_sumout\ & ( 
-- (!\inst3|Regist[6]~0_combout\ & ((!\SelBus[1]~input_o\ & ((\inst16|result[1]~307_combout\))) # (\SelBus[1]~input_o\ & (!\inst14|Regist\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000011001000010000001100100001110011111110110111001111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \inst3|ALT_INV_Regist[6]~0_combout\,
	datac => \inst14|ALT_INV_Regist\(1),
	datad => \inst16|ALT_INV_result[1]~307_combout\,
	dataf => \inst14|ALT_INV_Add0~25_sumout\,
	combout => \inst14|Mux6~0_combout\);

-- Location: LABCELL_X57_Y5_N24
\inst14|Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst14|Mux6~1_combout\ = ( \inst14|Mux6~0_combout\ & ( (!\SelBus[2]~input_o\) # ((!\SelBus[0]~input_o\ & (\inst14|Regist\(0))) # (\SelBus[0]~input_o\ & ((\inst14|Regist\(2))))) ) ) # ( !\inst14|Mux6~0_combout\ & ( (\SelBus[2]~input_o\ & 
-- ((!\SelBus[0]~input_o\ & (\inst14|Regist\(0))) # (\SelBus[0]~input_o\ & ((\inst14|Regist\(2)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000011000100010000001111011101110011111101110111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|ALT_INV_Regist\(0),
	datab => \ALT_INV_SelBus[2]~input_o\,
	datac => \inst14|ALT_INV_Regist\(2),
	datad => \ALT_INV_SelBus[0]~input_o\,
	dataf => \inst14|ALT_INV_Mux6~0_combout\,
	combout => \inst14|Mux6~1_combout\);

-- Location: FF_X57_Y5_N26
\inst14|Regist[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst14|Mux6~1_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst3|Regist[6]~1_combout\,
	ena => \inst14|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|Regist\(1));

-- Location: IOIBUF_X89_Y6_N21
\dataB[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataB(1),
	o => \dataB[1]~input_o\);

-- Location: IOIBUF_X89_Y6_N38
\MUX_B~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MUX_B,
	o => \MUX_B~input_o\);

-- Location: LABCELL_X56_Y6_N3
\inst200|$00000|auto_generated|l1_w1_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst200|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ = ( \inst16|result[1]~307_combout\ & ( (!\MUX_B~input_o\) # (\dataB[1]~input_o\) ) ) # ( !\inst16|result[1]~307_combout\ & ( (\dataB[1]~input_o\ & \MUX_B~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_dataB[1]~input_o\,
	datad => \ALT_INV_MUX_B~input_o\,
	dataf => \inst16|ALT_INV_result[1]~307_combout\,
	combout => \inst200|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X57_Y4_N48
\inst5|Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux6~1_combout\ = (!\SelBus[1]~input_o\ & (\inst200|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\)) # (\SelBus[1]~input_o\ & ((!\inst5|Regist\(1))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011100100010011101110010001001110111001000100111011100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \inst200|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\,
	datad => \inst5|ALT_INV_Regist\(1),
	combout => \inst5|Mux6~1_combout\);

-- Location: IOIBUF_X36_Y0_N18
\dataB[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataB(3),
	o => \dataB[3]~input_o\);

-- Location: LABCELL_X56_Y6_N54
\inst200|$00000|auto_generated|l1_w3_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst200|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\ = ( \inst16|result[3]~295_combout\ & ( (!\MUX_B~input_o\) # (\dataB[3]~input_o\) ) ) # ( !\inst16|result[3]~295_combout\ & ( (\MUX_B~input_o\ & \dataB[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MUX_B~input_o\,
	datad => \ALT_INV_dataB[3]~input_o\,
	dataf => \inst16|ALT_INV_result[3]~295_combout\,
	combout => \inst200|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X55_Y6_N9
\inst5|Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux4~1_combout\ = ( \inst5|Regist\(3) & ( (!\SelBus[1]~input_o\ & \inst200|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\) ) ) # ( !\inst5|Regist\(3) & ( (\inst200|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\) # 
-- (\SelBus[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SelBus[1]~input_o\,
	datad => \inst200|$00000|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\,
	dataf => \inst5|ALT_INV_Regist\(3),
	combout => \inst5|Mux4~1_combout\);

-- Location: IOIBUF_X56_Y81_N1
\dataB[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataB(2),
	o => \dataB[2]~input_o\);

-- Location: LABCELL_X56_Y6_N27
\inst200|$00000|auto_generated|l1_w2_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst200|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ = ( \inst16|result[2]~301_combout\ & ( (!\MUX_B~input_o\) # (\dataB[2]~input_o\) ) ) # ( !\inst16|result[2]~301_combout\ & ( (\dataB[2]~input_o\ & \MUX_B~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_dataB[2]~input_o\,
	datad => \ALT_INV_MUX_B~input_o\,
	dataf => \inst16|ALT_INV_result[2]~301_combout\,
	combout => \inst200|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X57_Y6_N39
\inst5|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux5~1_combout\ = ( \inst200|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & ( (!\SelBus[1]~input_o\) # (!\inst5|Regist\(2)) ) ) # ( !\inst200|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & ( (\SelBus[1]~input_o\ & 
-- !\inst5|Regist\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000011111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SelBus[1]~input_o\,
	datad => \inst5|ALT_INV_Regist\(2),
	dataf => \inst200|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\,
	combout => \inst5|Mux5~1_combout\);

-- Location: MLABCELL_X59_Y6_N36
\inst5|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux5~0_combout\ = ( \SelBus[0]~input_o\ & ( \inst5|Regist\(3) ) ) # ( !\SelBus[0]~input_o\ & ( \inst5|Regist\(3) & ( \inst5|Regist\(1) ) ) ) # ( !\SelBus[0]~input_o\ & ( !\inst5|Regist\(3) & ( \inst5|Regist\(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst5|ALT_INV_Regist\(1),
	datae => \ALT_INV_SelBus[0]~input_o\,
	dataf => \inst5|ALT_INV_Regist\(3),
	combout => \inst5|Mux5~0_combout\);

-- Location: IOIBUF_X54_Y81_N35
\dataB[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataB(0),
	o => \dataB[0]~input_o\);

-- Location: LABCELL_X56_Y6_N6
\inst200|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst200|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst16|result[0]~313_combout\ & ( (!\MUX_B~input_o\) # (\dataB[0]~input_o\) ) ) # ( !\inst16|result[0]~313_combout\ & ( (\MUX_B~input_o\ & \dataB[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MUX_B~input_o\,
	datac => \ALT_INV_dataB[0]~input_o\,
	dataf => \inst16|ALT_INV_result[0]~313_combout\,
	combout => \inst200|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X56_Y6_N30
\inst5|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add0~29_sumout\ = SUM(( !\inst5|Regist\(0) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( (!\SelBus[3]~input_o\) # ((\inst200|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\) # (\SelBus[1]~input_o\)) ) + ( !VCC ))
-- \inst5|Add0~30\ = CARRY(( !\inst5|Regist\(0) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( (!\SelBus[3]~input_o\) # ((\inst200|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\) # (\SelBus[1]~input_o\)) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001000000000000000000000000000001111000011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[3]~input_o\,
	datab => \ALT_INV_SelBus[1]~input_o\,
	datac => \inst5|ALT_INV_Regist\(0),
	dataf => \inst200|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	cin => GND,
	sumout => \inst5|Add0~29_sumout\,
	cout => \inst5|Add0~30\);

-- Location: LABCELL_X56_Y6_N33
\inst5|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add0~25_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst200|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\)))) ) + ( !\inst5|Regist\(1) $ (((!\SelBus[3]~input_o\) # 
-- (!\SelBus[1]~input_o\))) ) + ( \inst5|Add0~30\ ))
-- \inst5|Add0~26\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst200|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\)))) ) + ( !\inst5|Regist\(1) $ (((!\SelBus[3]~input_o\) # 
-- (!\SelBus[1]~input_o\))) ) + ( \inst5|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000000101001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[3]~input_o\,
	datab => \ALT_INV_SelBus[1]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst200|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\,
	dataf => \inst5|ALT_INV_Regist\(1),
	cin => \inst5|Add0~30\,
	sumout => \inst5|Add0~25_sumout\,
	cout => \inst5|Add0~26\);

-- Location: LABCELL_X56_Y6_N36
\inst5|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add0~21_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst200|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\)))) ) + ( !\inst5|Regist\(2) $ (((!\SelBus[3]~input_o\) # 
-- (!\SelBus[1]~input_o\))) ) + ( \inst5|Add0~26\ ))
-- \inst5|Add0~22\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst200|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\)))) ) + ( !\inst5|Regist\(2) $ (((!\SelBus[3]~input_o\) # 
-- (!\SelBus[1]~input_o\))) ) + ( \inst5|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000000101001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[3]~input_o\,
	datab => \ALT_INV_SelBus[1]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst200|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\,
	dataf => \inst5|ALT_INV_Regist\(2),
	cin => \inst5|Add0~26\,
	sumout => \inst5|Add0~21_sumout\,
	cout => \inst5|Add0~22\);

-- Location: LABCELL_X57_Y6_N36
\inst5|Mux5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux5~2_combout\ = ( \inst5|Add0~21_sumout\ & ( (!\SelBus[2]~input_o\ & (((\inst5|Mux5~1_combout\)) # (\inst3|Regist[6]~0_combout\))) # (\SelBus[2]~input_o\ & (((\inst5|Mux5~0_combout\)))) ) ) # ( !\inst5|Add0~21_sumout\ & ( (!\SelBus[2]~input_o\ & 
-- (!\inst3|Regist[6]~0_combout\ & (\inst5|Mux5~1_combout\))) # (\SelBus[2]~input_o\ & (((\inst5|Mux5~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000101111001000000010111101110000011111110111000001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Regist[6]~0_combout\,
	datab => \inst5|ALT_INV_Mux5~1_combout\,
	datac => \ALT_INV_SelBus[2]~input_o\,
	datad => \inst5|ALT_INV_Mux5~0_combout\,
	dataf => \inst5|ALT_INV_Add0~21_sumout\,
	combout => \inst5|Mux5~2_combout\);

-- Location: LABCELL_X55_Y3_N3
\inst5|Regist[6]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Regist[6]~1_combout\ = ( !\SelRegD[2]~input_o\ & ( (\inst5|Regist[6]~0_combout\ & !\SelRegD[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALT_INV_Regist[6]~0_combout\,
	datad => \ALT_INV_SelRegD[1]~input_o\,
	dataf => \ALT_INV_SelRegD[2]~input_o\,
	combout => \inst5|Regist[6]~1_combout\);

-- Location: FF_X57_Y6_N38
\inst5|Regist[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst5|Mux5~2_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst3|Regist[6]~1_combout\,
	ena => \inst5|Regist[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|Regist\(2));

-- Location: LABCELL_X55_Y6_N54
\inst5|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux4~0_combout\ = ( \SelBus[0]~input_o\ & ( \inst5|Regist\(4) ) ) # ( !\SelBus[0]~input_o\ & ( \inst5|Regist\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALT_INV_Regist\(4),
	datad => \inst5|ALT_INV_Regist\(2),
	dataf => \ALT_INV_SelBus[0]~input_o\,
	combout => \inst5|Mux4~0_combout\);

-- Location: LABCELL_X56_Y6_N39
\inst5|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add0~17_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst200|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\)))) ) + ( !\inst5|Regist\(3) $ (((!\SelBus[3]~input_o\) # 
-- (!\SelBus[1]~input_o\))) ) + ( \inst5|Add0~22\ ))
-- \inst5|Add0~18\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst200|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\)))) ) + ( !\inst5|Regist\(3) $ (((!\SelBus[3]~input_o\) # 
-- (!\SelBus[1]~input_o\))) ) + ( \inst5|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000000101001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[3]~input_o\,
	datab => \ALT_INV_SelBus[1]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst200|$00000|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\,
	dataf => \inst5|ALT_INV_Regist\(3),
	cin => \inst5|Add0~22\,
	sumout => \inst5|Add0~17_sumout\,
	cout => \inst5|Add0~18\);

-- Location: LABCELL_X55_Y6_N57
\inst5|Mux4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux4~2_combout\ = ( \inst5|Add0~17_sumout\ & ( (!\SelBus[2]~input_o\ & (((\inst3|Regist[6]~0_combout\)) # (\inst5|Mux4~1_combout\))) # (\SelBus[2]~input_o\ & (((\inst5|Mux4~0_combout\)))) ) ) # ( !\inst5|Add0~17_sumout\ & ( (!\SelBus[2]~input_o\ & 
-- (\inst5|Mux4~1_combout\ & (!\inst3|Regist[6]~0_combout\))) # (\SelBus[2]~input_o\ & (((\inst5|Mux4~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001110101001000000111010100101010011111110010101001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[2]~input_o\,
	datab => \inst5|ALT_INV_Mux4~1_combout\,
	datac => \inst3|ALT_INV_Regist[6]~0_combout\,
	datad => \inst5|ALT_INV_Mux4~0_combout\,
	dataf => \inst5|ALT_INV_Add0~17_sumout\,
	combout => \inst5|Mux4~2_combout\);

-- Location: FF_X55_Y6_N59
\inst5|Regist[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst5|Mux4~2_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst3|Regist[6]~1_combout\,
	ena => \inst5|Regist[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|Regist\(3));

-- Location: LABCELL_X55_Y6_N33
\inst5|Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux3~1_combout\ = ( \inst5|Regist\(5) & ( (!\SelBus[2]~input_o\ & (((!\SelBus[1]~input_o\)))) # (\SelBus[2]~input_o\ & (((\inst5|Regist\(3))) # (\SelBus[0]~input_o\))) ) ) # ( !\inst5|Regist\(5) & ( (!\SelBus[2]~input_o\ & 
-- (((!\SelBus[1]~input_o\)))) # (\SelBus[2]~input_o\ & (!\SelBus[0]~input_o\ & ((\inst5|Regist\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000001010110011000000101011001100010111111100110001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[0]~input_o\,
	datab => \ALT_INV_SelBus[1]~input_o\,
	datac => \inst5|ALT_INV_Regist\(3),
	datad => \ALT_INV_SelBus[2]~input_o\,
	dataf => \inst5|ALT_INV_Regist\(5),
	combout => \inst5|Mux3~1_combout\);

-- Location: IOIBUF_X56_Y81_N18
\dataB[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataB(4),
	o => \dataB[4]~input_o\);

-- Location: LABCELL_X56_Y6_N18
\inst200|$00000|auto_generated|l1_w4_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst200|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\ = ( \inst16|result[4]~289_combout\ & ( (!\MUX_B~input_o\) # (\dataB[4]~input_o\) ) ) # ( !\inst16|result[4]~289_combout\ & ( (\dataB[4]~input_o\ & \MUX_B~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_dataB[4]~input_o\,
	datad => \ALT_INV_MUX_B~input_o\,
	dataf => \inst16|ALT_INV_result[4]~289_combout\,
	combout => \inst200|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X56_Y6_N42
\inst5|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add0~13_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst200|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\)))) ) + ( !\inst5|Regist\(4) $ (((!\SelBus[3]~input_o\) # 
-- (!\SelBus[1]~input_o\))) ) + ( \inst5|Add0~18\ ))
-- \inst5|Add0~14\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst200|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\)))) ) + ( !\inst5|Regist\(4) $ (((!\SelBus[3]~input_o\) # 
-- (!\SelBus[1]~input_o\))) ) + ( \inst5|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000000101001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[3]~input_o\,
	datab => \ALT_INV_SelBus[1]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst200|$00000|auto_generated|ALT_INV_l1_w4_n0_mux_dataout~0_combout\,
	dataf => \inst5|ALT_INV_Regist\(4),
	cin => \inst5|Add0~18\,
	sumout => \inst5|Add0~13_sumout\,
	cout => \inst5|Add0~14\);

-- Location: LABCELL_X55_Y6_N0
\inst5|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux3~0_combout\ = ( \inst5|Regist\(4) & ( \inst5|Add0~13_sumout\ & ( (!\SelBus[2]~input_o\ & (((\inst5|Mux3~1_combout\ & \inst200|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\)) # (\inst3|Regist[6]~0_combout\))) # (\SelBus[2]~input_o\ & 
-- (\inst5|Mux3~1_combout\)) ) ) ) # ( !\inst5|Regist\(4) & ( \inst5|Add0~13_sumout\ & ( (!\inst5|Mux3~1_combout\ & (!\SelBus[2]~input_o\)) # (\inst5|Mux3~1_combout\ & (((\inst200|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\) # 
-- (\inst3|Regist[6]~0_combout\)) # (\SelBus[2]~input_o\))) ) ) ) # ( \inst5|Regist\(4) & ( !\inst5|Add0~13_sumout\ & ( (\inst5|Mux3~1_combout\ & (((!\inst3|Regist[6]~0_combout\ & \inst200|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\)) # 
-- (\SelBus[2]~input_o\))) ) ) ) # ( !\inst5|Regist\(4) & ( !\inst5|Add0~13_sumout\ & ( (!\SelBus[2]~input_o\ & (!\inst3|Regist[6]~0_combout\ & ((!\inst5|Mux3~1_combout\) # (\inst200|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\)))) # 
-- (\SelBus[2]~input_o\ & (\inst5|Mux3~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000111010001000100010101000110011101110111010001110101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_Mux3~1_combout\,
	datab => \ALT_INV_SelBus[2]~input_o\,
	datac => \inst3|ALT_INV_Regist[6]~0_combout\,
	datad => \inst200|$00000|auto_generated|ALT_INV_l1_w4_n0_mux_dataout~0_combout\,
	datae => \inst5|ALT_INV_Regist\(4),
	dataf => \inst5|ALT_INV_Add0~13_sumout\,
	combout => \inst5|Mux3~0_combout\);

-- Location: FF_X55_Y6_N2
\inst5|Regist[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst5|Mux3~0_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst3|Regist[6]~1_combout\,
	ena => \inst5|Regist[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|Regist\(4));

-- Location: LABCELL_X55_Y6_N30
\inst5|Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux2~1_combout\ = ( \SelBus[2]~input_o\ & ( (!\SelBus[0]~input_o\ & ((\inst5|Regist\(4)))) # (\SelBus[0]~input_o\ & (\inst5|Regist\(6))) ) ) # ( !\SelBus[2]~input_o\ & ( !\SelBus[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[0]~input_o\,
	datab => \ALT_INV_SelBus[1]~input_o\,
	datac => \inst5|ALT_INV_Regist\(6),
	datad => \inst5|ALT_INV_Regist\(4),
	dataf => \ALT_INV_SelBus[2]~input_o\,
	combout => \inst5|Mux2~1_combout\);

-- Location: IOIBUF_X54_Y81_N52
\dataB[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataB(5),
	o => \dataB[5]~input_o\);

-- Location: LABCELL_X56_Y6_N9
\inst200|$00000|auto_generated|l1_w5_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst200|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\ = ( \inst16|result[5]~283_combout\ & ( (!\MUX_B~input_o\) # (\dataB[5]~input_o\) ) ) # ( !\inst16|result[5]~283_combout\ & ( (\MUX_B~input_o\ & \dataB[5]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MUX_B~input_o\,
	datac => \ALT_INV_dataB[5]~input_o\,
	dataf => \inst16|ALT_INV_result[5]~283_combout\,
	combout => \inst200|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X56_Y6_N45
\inst5|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add0~9_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst200|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\)))) ) + ( !\inst5|Regist\(5) $ (((!\SelBus[3]~input_o\) # 
-- (!\SelBus[1]~input_o\))) ) + ( \inst5|Add0~14\ ))
-- \inst5|Add0~10\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst200|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\)))) ) + ( !\inst5|Regist\(5) $ (((!\SelBus[3]~input_o\) # 
-- (!\SelBus[1]~input_o\))) ) + ( \inst5|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000000101001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[3]~input_o\,
	datab => \ALT_INV_SelBus[1]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst200|$00000|auto_generated|ALT_INV_l1_w5_n0_mux_dataout~0_combout\,
	dataf => \inst5|ALT_INV_Regist\(5),
	cin => \inst5|Add0~14\,
	sumout => \inst5|Add0~9_sumout\,
	cout => \inst5|Add0~10\);

-- Location: LABCELL_X55_Y6_N42
\inst5|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux2~0_combout\ = ( \inst5|Regist\(5) & ( \inst5|Add0~9_sumout\ & ( (!\SelBus[2]~input_o\ & (((\inst5|Mux2~1_combout\ & \inst200|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\)) # (\inst3|Regist[6]~0_combout\))) # (\SelBus[2]~input_o\ & 
-- (((\inst5|Mux2~1_combout\)))) ) ) ) # ( !\inst5|Regist\(5) & ( \inst5|Add0~9_sumout\ & ( (!\inst5|Mux2~1_combout\ & (((!\SelBus[2]~input_o\)))) # (\inst5|Mux2~1_combout\ & (((\SelBus[2]~input_o\) # 
-- (\inst200|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\)) # (\inst3|Regist[6]~0_combout\))) ) ) ) # ( \inst5|Regist\(5) & ( !\inst5|Add0~9_sumout\ & ( (\inst5|Mux2~1_combout\ & (((!\inst3|Regist[6]~0_combout\ & 
-- \inst200|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\)) # (\SelBus[2]~input_o\))) ) ) ) # ( !\inst5|Regist\(5) & ( !\inst5|Add0~9_sumout\ & ( (!\SelBus[2]~input_o\ & (!\inst3|Regist[6]~0_combout\ & ((!\inst5|Mux2~1_combout\) # 
-- (\inst200|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\)))) # (\SelBus[2]~input_o\ & (((\inst5|Mux2~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101000110011000000100011001111011111001100110101011100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Regist[6]~0_combout\,
	datab => \inst5|ALT_INV_Mux2~1_combout\,
	datac => \inst200|$00000|auto_generated|ALT_INV_l1_w5_n0_mux_dataout~0_combout\,
	datad => \ALT_INV_SelBus[2]~input_o\,
	datae => \inst5|ALT_INV_Regist\(5),
	dataf => \inst5|ALT_INV_Add0~9_sumout\,
	combout => \inst5|Mux2~0_combout\);

-- Location: FF_X55_Y6_N44
\inst5|Regist[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst5|Mux2~0_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst3|Regist[6]~1_combout\,
	ena => \inst5|Regist[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|Regist\(5));

-- Location: LABCELL_X55_Y6_N24
\inst5|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux1~1_combout\ = ( \SelBus[2]~input_o\ & ( \inst5|Regist\(5) & ( (!\SelBus[0]~input_o\) # (\inst5|Regist\(7)) ) ) ) # ( !\SelBus[2]~input_o\ & ( \inst5|Regist\(5) & ( !\SelBus[1]~input_o\ ) ) ) # ( \SelBus[2]~input_o\ & ( !\inst5|Regist\(5) & ( 
-- (\inst5|Regist\(7) & \SelBus[0]~input_o\) ) ) ) # ( !\SelBus[2]~input_o\ & ( !\inst5|Regist\(5) & ( !\SelBus[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100000001010000010111001100110011001111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_Regist\(7),
	datab => \ALT_INV_SelBus[1]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datae => \ALT_INV_SelBus[2]~input_o\,
	dataf => \inst5|ALT_INV_Regist\(5),
	combout => \inst5|Mux1~1_combout\);

-- Location: IOIBUF_X28_Y0_N1
\dataB[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataB(6),
	o => \dataB[6]~input_o\);

-- Location: LABCELL_X56_Y6_N57
\inst200|$00000|auto_generated|l1_w6_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst200|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\ = ( \inst16|result[6]~277_combout\ & ( (!\MUX_B~input_o\) # (\dataB[6]~input_o\) ) ) # ( !\inst16|result[6]~277_combout\ & ( (\MUX_B~input_o\ & \dataB[6]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MUX_B~input_o\,
	datad => \ALT_INV_dataB[6]~input_o\,
	dataf => \inst16|ALT_INV_result[6]~277_combout\,
	combout => \inst200|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X56_Y6_N48
\inst5|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add0~5_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst200|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\)))) ) + ( !\inst5|Regist\(6) $ (((!\SelBus[3]~input_o\) # 
-- (!\SelBus[1]~input_o\))) ) + ( \inst5|Add0~10\ ))
-- \inst5|Add0~6\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst200|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\)))) ) + ( !\inst5|Regist\(6) $ (((!\SelBus[3]~input_o\) # 
-- (!\SelBus[1]~input_o\))) ) + ( \inst5|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000000101001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[3]~input_o\,
	datab => \ALT_INV_SelBus[1]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst200|$00000|auto_generated|ALT_INV_l1_w6_n0_mux_dataout~0_combout\,
	dataf => \inst5|ALT_INV_Regist\(6),
	cin => \inst5|Add0~10\,
	sumout => \inst5|Add0~5_sumout\,
	cout => \inst5|Add0~6\);

-- Location: LABCELL_X55_Y6_N36
\inst5|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux1~0_combout\ = ( \inst5|Regist\(6) & ( \inst5|Add0~5_sumout\ & ( (!\SelBus[2]~input_o\ & (((\inst5|Mux1~1_combout\ & \inst200|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\)) # (\inst3|Regist[6]~0_combout\))) # (\SelBus[2]~input_o\ & 
-- (((\inst5|Mux1~1_combout\)))) ) ) ) # ( !\inst5|Regist\(6) & ( \inst5|Add0~5_sumout\ & ( (!\SelBus[2]~input_o\ & (((!\inst5|Mux1~1_combout\) # (\inst200|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\)) # (\inst3|Regist[6]~0_combout\))) # 
-- (\SelBus[2]~input_o\ & (((\inst5|Mux1~1_combout\)))) ) ) ) # ( \inst5|Regist\(6) & ( !\inst5|Add0~5_sumout\ & ( (\inst5|Mux1~1_combout\ & (((!\inst3|Regist[6]~0_combout\ & \inst200|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\)) # 
-- (\SelBus[2]~input_o\))) ) ) ) # ( !\inst5|Regist\(6) & ( !\inst5|Add0~5_sumout\ & ( (!\SelBus[2]~input_o\ & (!\inst3|Regist[6]~0_combout\ & ((!\inst5|Mux1~1_combout\) # (\inst200|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\)))) # 
-- (\SelBus[2]~input_o\ & (((\inst5|Mux1~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001110001011000000110000101111000111110011110100011101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Regist[6]~0_combout\,
	datab => \ALT_INV_SelBus[2]~input_o\,
	datac => \inst5|ALT_INV_Mux1~1_combout\,
	datad => \inst200|$00000|auto_generated|ALT_INV_l1_w6_n0_mux_dataout~0_combout\,
	datae => \inst5|ALT_INV_Regist\(6),
	dataf => \inst5|ALT_INV_Add0~5_sumout\,
	combout => \inst5|Mux1~0_combout\);

-- Location: FF_X55_Y6_N38
\inst5|Regist[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst5|Mux1~0_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst3|Regist[6]~1_combout\,
	ena => \inst5|Regist[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|Regist\(6));

-- Location: IOIBUF_X54_Y81_N1
\dataB[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataB(7),
	o => \dataB[7]~input_o\);

-- Location: LABCELL_X55_Y6_N48
\inst200|$00000|auto_generated|l1_w7_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst200|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\ = ( \inst16|result[7]~271_combout\ & ( (!\MUX_B~input_o\) # (\dataB[7]~input_o\) ) ) # ( !\inst16|result[7]~271_combout\ & ( (\MUX_B~input_o\ & \dataB[7]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011110011111100111100000011000000111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_MUX_B~input_o\,
	datac => \ALT_INV_dataB[7]~input_o\,
	datae => \inst16|ALT_INV_result[7]~271_combout\,
	combout => \inst200|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X56_Y6_N0
\inst5|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux0~0_combout\ = ( \inst19|Regist[7]~0_combout\ & ( (!\inst18|Regist[0]~2_combout\ & ((\inst200|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\))) # (\inst18|Regist[0]~2_combout\ & (\inst5|Regist\(6))) ) ) # ( !\inst19|Regist[7]~0_combout\ & 
-- ( (!\inst18|Regist[0]~2_combout\ & !\inst5|Regist\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000000010001110111010001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_Regist\(6),
	datab => \inst18|ALT_INV_Regist[0]~2_combout\,
	datac => \inst5|ALT_INV_Regist\(7),
	datad => \inst200|$00000|auto_generated|ALT_INV_l1_w7_n0_mux_dataout~0_combout\,
	dataf => \inst19|ALT_INV_Regist[7]~0_combout\,
	combout => \inst5|Mux0~0_combout\);

-- Location: LABCELL_X56_Y6_N51
\inst5|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add0~1_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst200|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\)))) ) + ( !\inst5|Regist\(7) $ (((!\SelBus[3]~input_o\) # 
-- (!\SelBus[1]~input_o\))) ) + ( \inst5|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000000101001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[3]~input_o\,
	datab => \ALT_INV_SelBus[1]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst200|$00000|auto_generated|ALT_INV_l1_w7_n0_mux_dataout~0_combout\,
	dataf => \inst5|ALT_INV_Regist\(7),
	cin => \inst5|Add0~6\,
	sumout => \inst5|Add0~1_sumout\);

-- Location: LABCELL_X56_Y6_N24
\inst5|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux0~1_combout\ = ( \inst5|Add0~1_sumout\ & ( (((\inst19|Regist[7]~1_combout\ & \inst5|Regist\(0))) # (\inst5|Mux0~0_combout\)) # (\inst18|Regist[0]~0_combout\) ) ) # ( !\inst5|Add0~1_sumout\ & ( (!\inst18|Regist[0]~0_combout\ & 
-- (((\inst19|Regist[7]~1_combout\ & \inst5|Regist\(0))) # (\inst5|Mux0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011001100000001001100110000110111111111110011011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|ALT_INV_Regist[7]~1_combout\,
	datab => \inst18|ALT_INV_Regist[0]~0_combout\,
	datac => \inst5|ALT_INV_Regist\(0),
	datad => \inst5|ALT_INV_Mux0~0_combout\,
	dataf => \inst5|ALT_INV_Add0~1_sumout\,
	combout => \inst5|Mux0~1_combout\);

-- Location: FF_X56_Y6_N26
\inst5|Regist[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst5|Mux0~1_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst19|Regist[7]~2_combout\,
	ena => \inst5|Regist[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|Regist\(7));

-- Location: LABCELL_X55_Y3_N0
\inst5|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux7~0_combout\ = ( \inst18|Regist[0]~2_combout\ & ( (\inst18|Regist[0]~1_combout\ & \inst5|Regist\(1)) ) ) # ( !\inst18|Regist[0]~2_combout\ & ( (!\inst18|Regist[0]~1_combout\ & (!\inst5|Regist\(0))) # (\inst18|Regist[0]~1_combout\ & 
-- ((\inst200|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000011110101101000001111010100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|ALT_INV_Regist[0]~1_combout\,
	datab => \inst5|ALT_INV_Regist\(1),
	datac => \inst5|ALT_INV_Regist\(0),
	datad => \inst200|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	dataf => \inst18|ALT_INV_Regist[0]~2_combout\,
	combout => \inst5|Mux7~0_combout\);

-- Location: LABCELL_X55_Y3_N18
\inst5|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux7~1_combout\ = ( \inst5|Mux7~0_combout\ & ( \inst5|Add0~29_sumout\ ) ) # ( !\inst5|Mux7~0_combout\ & ( \inst5|Add0~29_sumout\ & ( ((\inst18|Regist[0]~3_combout\ & \inst5|Regist\(7))) # (\inst18|Regist[0]~0_combout\) ) ) ) # ( 
-- \inst5|Mux7~0_combout\ & ( !\inst5|Add0~29_sumout\ & ( !\inst18|Regist[0]~0_combout\ ) ) ) # ( !\inst5|Mux7~0_combout\ & ( !\inst5|Add0~29_sumout\ & ( (\inst18|Regist[0]~3_combout\ & (\inst5|Regist\(7) & !\inst18|Regist[0]~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000111100001111000000011111000111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|ALT_INV_Regist[0]~3_combout\,
	datab => \inst5|ALT_INV_Regist\(7),
	datac => \inst18|ALT_INV_Regist[0]~0_combout\,
	datae => \inst5|ALT_INV_Mux7~0_combout\,
	dataf => \inst5|ALT_INV_Add0~29_sumout\,
	combout => \inst5|Mux7~1_combout\);

-- Location: FF_X55_Y3_N20
\inst5|Regist[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst5|Mux7~1_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst18|Regist[0]~4_combout\,
	ena => \inst5|Regist[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|Regist\(0));

-- Location: LABCELL_X55_Y6_N6
\inst5|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux6~0_combout\ = (!\SelBus[0]~input_o\ & (\inst5|Regist\(0))) # (\SelBus[0]~input_o\ & ((\inst5|Regist\(2))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_Regist\(0),
	datab => \inst5|ALT_INV_Regist\(2),
	datac => \ALT_INV_SelBus[0]~input_o\,
	combout => \inst5|Mux6~0_combout\);

-- Location: LABCELL_X57_Y4_N54
\inst5|Mux6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux6~2_combout\ = ( \inst5|Add0~25_sumout\ & ( (!\SelBus[2]~input_o\ & (((\inst5|Mux6~1_combout\)) # (\inst3|Regist[6]~0_combout\))) # (\SelBus[2]~input_o\ & (((\inst5|Mux6~0_combout\)))) ) ) # ( !\inst5|Add0~25_sumout\ & ( (!\SelBus[2]~input_o\ & 
-- (!\inst3|Regist[6]~0_combout\ & (\inst5|Mux6~1_combout\))) # (\SelBus[2]~input_o\ & (((\inst5|Mux6~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001011101000010000101110100101010011111110010101001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[2]~input_o\,
	datab => \inst3|ALT_INV_Regist[6]~0_combout\,
	datac => \inst5|ALT_INV_Mux6~1_combout\,
	datad => \inst5|ALT_INV_Mux6~0_combout\,
	dataf => \inst5|ALT_INV_Add0~25_sumout\,
	combout => \inst5|Mux6~2_combout\);

-- Location: FF_X57_Y4_N56
\inst5|Regist[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst5|Mux6~2_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst3|Regist[6]~1_combout\,
	ena => \inst5|Regist[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|Regist\(1));

-- Location: MLABCELL_X59_Y6_N48
\inst18|Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst18|Mux3~1_combout\ = ( \inst16|result[4]~289_combout\ & ( \inst18|Regist\(4) & ( !\SelBus[1]~input_o\ ) ) ) # ( \inst16|result[4]~289_combout\ & ( !\inst18|Regist\(4) ) ) # ( !\inst16|result[4]~289_combout\ & ( !\inst18|Regist\(4) & ( 
-- \SelBus[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011111111111111111100000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SelBus[1]~input_o\,
	datae => \inst16|ALT_INV_result[4]~289_combout\,
	dataf => \inst18|ALT_INV_Regist\(4),
	combout => \inst18|Mux3~1_combout\);

-- Location: MLABCELL_X59_Y5_N12
\inst18|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst18|Mux0~0_combout\ = ( \inst18|Regist\(7) & ( \inst16|result[7]~271_combout\ & ( (\inst19|Regist[7]~0_combout\ & ((!\inst18|Regist[0]~2_combout\) # (\inst18|Regist\(6)))) ) ) ) # ( !\inst18|Regist\(7) & ( \inst16|result[7]~271_combout\ & ( 
-- (!\inst18|Regist[0]~2_combout\) # ((\inst19|Regist[7]~0_combout\ & \inst18|Regist\(6))) ) ) ) # ( \inst18|Regist\(7) & ( !\inst16|result[7]~271_combout\ & ( (\inst19|Regist[7]~0_combout\ & (\inst18|Regist[0]~2_combout\ & \inst18|Regist\(6))) ) ) ) # ( 
-- !\inst18|Regist\(7) & ( !\inst16|result[7]~271_combout\ & ( (!\inst19|Regist[7]~0_combout\ & (!\inst18|Regist[0]~2_combout\)) # (\inst19|Regist[7]~0_combout\ & (\inst18|Regist[0]~2_combout\ & \inst18|Regist\(6))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010011001000000000001000111001100110111010100010001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|ALT_INV_Regist[7]~0_combout\,
	datab => \inst18|ALT_INV_Regist[0]~2_combout\,
	datad => \inst18|ALT_INV_Regist\(6),
	datae => \inst18|ALT_INV_Regist\(7),
	dataf => \inst16|ALT_INV_result[7]~271_combout\,
	combout => \inst18|Mux0~0_combout\);

-- Location: LABCELL_X57_Y6_N0
\inst18|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst18|Add0~29_sumout\ = SUM(( ((!\SelBus[3]~input_o\) # (\inst16|result[0]~313_combout\)) # (\SelBus[1]~input_o\) ) + ( !\inst18|Regist\(0) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( !VCC ))
-- \inst18|Add0~30\ = CARRY(( ((!\SelBus[3]~input_o\) # (\inst16|result[0]~313_combout\)) # (\SelBus[1]~input_o\) ) + ( !\inst18|Regist\(0) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111000011110000100000000000000001101110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[3]~input_o\,
	datac => \inst18|ALT_INV_Regist\(0),
	datad => \inst16|ALT_INV_result[0]~313_combout\,
	cin => GND,
	sumout => \inst18|Add0~29_sumout\,
	cout => \inst18|Add0~30\);

-- Location: LABCELL_X57_Y3_N42
\inst18|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst18|Mux7~0_combout\ = ( \inst18|Regist\(0) & ( (\inst18|Regist[0]~1_combout\ & ((!\inst18|Regist[0]~2_combout\ & ((\inst16|result[0]~313_combout\))) # (\inst18|Regist[0]~2_combout\ & (\inst18|Regist\(1))))) ) ) # ( !\inst18|Regist\(0) & ( 
-- (!\inst18|Regist[0]~2_combout\ & ((!\inst18|Regist[0]~1_combout\) # ((\inst16|result[0]~313_combout\)))) # (\inst18|Regist[0]~2_combout\ & (\inst18|Regist[0]~1_combout\ & (\inst18|Regist\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100110101011100010011010101100000001001000110000000100100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|ALT_INV_Regist[0]~2_combout\,
	datab => \inst18|ALT_INV_Regist[0]~1_combout\,
	datac => \inst18|ALT_INV_Regist\(1),
	datad => \inst16|ALT_INV_result[0]~313_combout\,
	dataf => \inst18|ALT_INV_Regist\(0),
	combout => \inst18|Mux7~0_combout\);

-- Location: LABCELL_X57_Y3_N18
\inst18|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst18|Mux7~1_combout\ = ( \inst18|Add0~29_sumout\ & ( \inst18|Mux7~0_combout\ ) ) # ( !\inst18|Add0~29_sumout\ & ( \inst18|Mux7~0_combout\ & ( !\inst18|Regist[0]~0_combout\ ) ) ) # ( \inst18|Add0~29_sumout\ & ( !\inst18|Mux7~0_combout\ & ( 
-- ((\inst18|Regist\(7) & \inst18|Regist[0]~3_combout\)) # (\inst18|Regist[0]~0_combout\) ) ) ) # ( !\inst18|Add0~29_sumout\ & ( !\inst18|Mux7~0_combout\ & ( (\inst18|Regist\(7) & (!\inst18|Regist[0]~0_combout\ & \inst18|Regist[0]~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000011110101111111110000111100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|ALT_INV_Regist\(7),
	datac => \inst18|ALT_INV_Regist[0]~0_combout\,
	datad => \inst18|ALT_INV_Regist[0]~3_combout\,
	datae => \inst18|ALT_INV_Add0~29_sumout\,
	dataf => \inst18|ALT_INV_Mux7~0_combout\,
	combout => \inst18|Mux7~1_combout\);

-- Location: LABCELL_X57_Y1_N9
\inst18|Regist[6]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst18|Regist[6]~5_combout\ = ( \SelRegD[1]~input_o\ & ( \SelRegD[3]~input_o\ & ( (!\SelRegD[2]~input_o\ & (!\SelRegD[0]~input_o\ & \inst8|Regist[1]~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelRegD[2]~input_o\,
	datab => \ALT_INV_SelRegD[0]~input_o\,
	datac => \inst8|ALT_INV_Regist[1]~0_combout\,
	datae => \ALT_INV_SelRegD[1]~input_o\,
	dataf => \ALT_INV_SelRegD[3]~input_o\,
	combout => \inst18|Regist[6]~5_combout\);

-- Location: FF_X57_Y3_N20
\inst18|Regist[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst18|Mux7~1_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst18|Regist[0]~4_combout\,
	ena => \inst18|Regist[6]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|Regist\(0));

-- Location: LABCELL_X57_Y6_N3
\inst18|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst18|Add0~25_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[1]~307_combout\)))) ) + ( !\inst18|Regist\(1) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst18|Add0~30\ ))
-- \inst18|Add0~26\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[1]~307_combout\)))) ) + ( !\inst18|Regist\(1) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst18|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000000110000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[3]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst16|ALT_INV_result[1]~307_combout\,
	dataf => \inst18|ALT_INV_Regist\(1),
	cin => \inst18|Add0~30\,
	sumout => \inst18|Add0~25_sumout\,
	cout => \inst18|Add0~26\);

-- Location: LABCELL_X57_Y6_N6
\inst18|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst18|Add0~21_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[2]~301_combout\)))) ) + ( !\inst18|Regist\(2) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst18|Add0~26\ ))
-- \inst18|Add0~22\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[2]~301_combout\)))) ) + ( !\inst18|Regist\(2) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst18|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000000110000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[3]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst16|ALT_INV_result[2]~301_combout\,
	dataf => \inst18|ALT_INV_Regist\(2),
	cin => \inst18|Add0~26\,
	sumout => \inst18|Add0~21_sumout\,
	cout => \inst18|Add0~22\);

-- Location: LABCELL_X57_Y6_N9
\inst18|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst18|Add0~17_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[3]~295_combout\)))) ) + ( !\inst18|Regist\(3) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst18|Add0~22\ ))
-- \inst18|Add0~18\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[3]~295_combout\)))) ) + ( !\inst18|Regist\(3) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst18|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000000110000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[3]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst16|ALT_INV_result[3]~295_combout\,
	dataf => \inst18|ALT_INV_Regist\(3),
	cin => \inst18|Add0~22\,
	sumout => \inst18|Add0~17_sumout\,
	cout => \inst18|Add0~18\);

-- Location: LABCELL_X57_Y6_N12
\inst18|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst18|Add0~13_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[4]~289_combout\)))) ) + ( !\inst18|Regist\(4) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst18|Add0~18\ ))
-- \inst18|Add0~14\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[4]~289_combout\)))) ) + ( !\inst18|Regist\(4) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst18|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000000110000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[3]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst16|ALT_INV_result[4]~289_combout\,
	dataf => \inst18|ALT_INV_Regist\(4),
	cin => \inst18|Add0~18\,
	sumout => \inst18|Add0~13_sumout\,
	cout => \inst18|Add0~14\);

-- Location: LABCELL_X57_Y6_N15
\inst18|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst18|Add0~9_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[5]~283_combout\)))) ) + ( !\inst18|Regist\(5) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst18|Add0~14\ ))
-- \inst18|Add0~10\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[5]~283_combout\)))) ) + ( !\inst18|Regist\(5) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst18|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000000110000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[3]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst16|ALT_INV_result[5]~283_combout\,
	dataf => \inst18|ALT_INV_Regist\(5),
	cin => \inst18|Add0~14\,
	sumout => \inst18|Add0~9_sumout\,
	cout => \inst18|Add0~10\);

-- Location: LABCELL_X57_Y6_N18
\inst18|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst18|Add0~5_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[6]~277_combout\)))) ) + ( !\inst18|Regist\(6) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst18|Add0~10\ ))
-- \inst18|Add0~6\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[6]~277_combout\)))) ) + ( !\inst18|Regist\(6) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst18|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000000110000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[3]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst16|ALT_INV_result[6]~277_combout\,
	dataf => \inst18|ALT_INV_Regist\(6),
	cin => \inst18|Add0~10\,
	sumout => \inst18|Add0~5_sumout\,
	cout => \inst18|Add0~6\);

-- Location: LABCELL_X57_Y6_N21
\inst18|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst18|Add0~1_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[7]~271_combout\)))) ) + ( !\inst18|Regist\(7) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst18|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000000110000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[3]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst16|ALT_INV_result[7]~271_combout\,
	dataf => \inst18|ALT_INV_Regist\(7),
	cin => \inst18|Add0~6\,
	sumout => \inst18|Add0~1_sumout\);

-- Location: MLABCELL_X59_Y5_N36
\inst18|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst18|Mux0~1_combout\ = ( \inst18|Regist\(0) & ( \inst18|Add0~1_sumout\ & ( ((\inst18|Mux0~0_combout\) # (\inst19|Regist[7]~1_combout\)) # (\inst18|Regist[0]~0_combout\) ) ) ) # ( !\inst18|Regist\(0) & ( \inst18|Add0~1_sumout\ & ( 
-- (\inst18|Mux0~0_combout\) # (\inst18|Regist[0]~0_combout\) ) ) ) # ( \inst18|Regist\(0) & ( !\inst18|Add0~1_sumout\ & ( (!\inst18|Regist[0]~0_combout\ & ((\inst18|Mux0~0_combout\) # (\inst19|Regist[7]~1_combout\))) ) ) ) # ( !\inst18|Regist\(0) & ( 
-- !\inst18|Add0~1_sumout\ & ( (!\inst18|Regist[0]~0_combout\ & \inst18|Mux0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000011001100110000110011111111110011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst18|ALT_INV_Regist[0]~0_combout\,
	datac => \inst19|ALT_INV_Regist[7]~1_combout\,
	datad => \inst18|ALT_INV_Mux0~0_combout\,
	datae => \inst18|ALT_INV_Regist\(0),
	dataf => \inst18|ALT_INV_Add0~1_sumout\,
	combout => \inst18|Mux0~1_combout\);

-- Location: FF_X59_Y5_N38
\inst18|Regist[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst18|Mux0~1_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst19|Regist[7]~2_combout\,
	ena => \inst18|Regist[6]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|Regist\(7));

-- Location: MLABCELL_X59_Y6_N24
\inst18|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst18|Mux1~0_combout\ = ( \inst18|Regist\(5) & ( (!\SelBus[0]~input_o\) # (\inst18|Regist\(7)) ) ) # ( !\inst18|Regist\(5) & ( (\inst18|Regist\(7) & \SelBus[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst18|ALT_INV_Regist\(7),
	datac => \ALT_INV_SelBus[0]~input_o\,
	dataf => \inst18|ALT_INV_Regist\(5),
	combout => \inst18|Mux1~0_combout\);

-- Location: MLABCELL_X59_Y6_N27
\inst18|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst18|Mux1~1_combout\ = ( \inst16|result[6]~277_combout\ & ( (!\SelBus[1]~input_o\) # (!\inst18|Regist\(6)) ) ) # ( !\inst16|result[6]~277_combout\ & ( (\SelBus[1]~input_o\ & !\inst18|Regist\(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000011111010111110101111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datac => \inst18|ALT_INV_Regist\(6),
	dataf => \inst16|ALT_INV_result[6]~277_combout\,
	combout => \inst18|Mux1~1_combout\);

-- Location: LABCELL_X57_Y6_N27
\inst18|Mux1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst18|Mux1~2_combout\ = ( \inst18|Add0~5_sumout\ & ( (!\SelBus[2]~input_o\ & (((\inst18|Mux1~1_combout\)) # (\inst3|Regist[6]~0_combout\))) # (\SelBus[2]~input_o\ & (((\inst18|Mux1~0_combout\)))) ) ) # ( !\inst18|Add0~5_sumout\ & ( (!\SelBus[2]~input_o\ 
-- & (!\inst3|Regist[6]~0_combout\ & ((\inst18|Mux1~1_combout\)))) # (\SelBus[2]~input_o\ & (((\inst18|Mux1~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001110001011000000111000101101000111110011110100011111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Regist[6]~0_combout\,
	datab => \ALT_INV_SelBus[2]~input_o\,
	datac => \inst18|ALT_INV_Mux1~0_combout\,
	datad => \inst18|ALT_INV_Mux1~1_combout\,
	dataf => \inst18|ALT_INV_Add0~5_sumout\,
	combout => \inst18|Mux1~2_combout\);

-- Location: FF_X57_Y6_N29
\inst18|Regist[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst18|Mux1~2_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst3|Regist[6]~1_combout\,
	ena => \inst18|Regist[6]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|Regist\(6));

-- Location: MLABCELL_X59_Y6_N57
\inst18|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst18|Mux2~0_combout\ = ( \inst18|Regist\(6) & ( (\inst18|Regist\(4)) # (\SelBus[0]~input_o\) ) ) # ( !\inst18|Regist\(6) & ( (!\SelBus[0]~input_o\ & \inst18|Regist\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[0]~input_o\,
	datac => \inst18|ALT_INV_Regist\(4),
	dataf => \inst18|ALT_INV_Regist\(6),
	combout => \inst18|Mux2~0_combout\);

-- Location: LABCELL_X56_Y6_N21
\inst18|Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst18|Mux2~1_combout\ = ( \inst16|result[5]~283_combout\ & ( (!\SelBus[1]~input_o\) # (!\inst18|Regist\(5)) ) ) # ( !\inst16|result[5]~283_combout\ & ( (\SelBus[1]~input_o\ & !\inst18|Regist\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000011111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SelBus[1]~input_o\,
	datad => \inst18|ALT_INV_Regist\(5),
	dataf => \inst16|ALT_INV_result[5]~283_combout\,
	combout => \inst18|Mux2~1_combout\);

-- Location: LABCELL_X57_Y6_N54
\inst18|Mux2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst18|Mux2~2_combout\ = ( \inst18|Add0~9_sumout\ & ( (!\SelBus[2]~input_o\ & (((\inst18|Mux2~1_combout\)) # (\inst3|Regist[6]~0_combout\))) # (\SelBus[2]~input_o\ & (((\inst18|Mux2~0_combout\)))) ) ) # ( !\inst18|Add0~9_sumout\ & ( (!\SelBus[2]~input_o\ 
-- & (!\inst3|Regist[6]~0_combout\ & ((\inst18|Mux2~1_combout\)))) # (\SelBus[2]~input_o\ & (((\inst18|Mux2~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001110001011000000111000101101000111110011110100011111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Regist[6]~0_combout\,
	datab => \ALT_INV_SelBus[2]~input_o\,
	datac => \inst18|ALT_INV_Mux2~0_combout\,
	datad => \inst18|ALT_INV_Mux2~1_combout\,
	dataf => \inst18|ALT_INV_Add0~9_sumout\,
	combout => \inst18|Mux2~2_combout\);

-- Location: FF_X57_Y6_N56
\inst18|Regist[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst18|Mux2~2_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst3|Regist[6]~1_combout\,
	ena => \inst18|Regist[6]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|Regist\(5));

-- Location: LABCELL_X57_Y7_N3
\inst18|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst18|Mux3~0_combout\ = ( \inst18|Regist\(3) & ( \inst18|Regist\(5) ) ) # ( !\inst18|Regist\(3) & ( \inst18|Regist\(5) & ( \SelBus[0]~input_o\ ) ) ) # ( \inst18|Regist\(3) & ( !\inst18|Regist\(5) & ( !\SelBus[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SelBus[0]~input_o\,
	datae => \inst18|ALT_INV_Regist\(3),
	dataf => \inst18|ALT_INV_Regist\(5),
	combout => \inst18|Mux3~0_combout\);

-- Location: LABCELL_X57_Y6_N57
\inst18|Mux3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst18|Mux3~2_combout\ = ( \inst18|Add0~13_sumout\ & ( (!\SelBus[2]~input_o\ & (((\inst18|Mux3~1_combout\)) # (\inst3|Regist[6]~0_combout\))) # (\SelBus[2]~input_o\ & (((\inst18|Mux3~0_combout\)))) ) ) # ( !\inst18|Add0~13_sumout\ & ( 
-- (!\SelBus[2]~input_o\ & (!\inst3|Regist[6]~0_combout\ & (\inst18|Mux3~1_combout\))) # (\SelBus[2]~input_o\ & (((\inst18|Mux3~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000111011000010000011101101001100011111110100110001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Regist[6]~0_combout\,
	datab => \ALT_INV_SelBus[2]~input_o\,
	datac => \inst18|ALT_INV_Mux3~1_combout\,
	datad => \inst18|ALT_INV_Mux3~0_combout\,
	dataf => \inst18|ALT_INV_Add0~13_sumout\,
	combout => \inst18|Mux3~2_combout\);

-- Location: FF_X57_Y6_N59
\inst18|Regist[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst18|Mux3~2_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst3|Regist[6]~1_combout\,
	ena => \inst18|Regist[6]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|Regist\(4));

-- Location: MLABCELL_X59_Y6_N30
\inst18|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst18|Mux4~0_combout\ = ( \SelBus[0]~input_o\ & ( \inst18|Regist\(2) & ( \inst18|Regist\(4) ) ) ) # ( !\SelBus[0]~input_o\ & ( \inst18|Regist\(2) ) ) # ( \SelBus[0]~input_o\ & ( !\inst18|Regist\(2) & ( \inst18|Regist\(4) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001111111111111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst18|ALT_INV_Regist\(4),
	datae => \ALT_INV_SelBus[0]~input_o\,
	dataf => \inst18|ALT_INV_Regist\(2),
	combout => \inst18|Mux4~0_combout\);

-- Location: MLABCELL_X59_Y6_N54
\inst18|Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst18|Mux4~1_combout\ = ( \inst16|result[3]~295_combout\ & ( (!\SelBus[1]~input_o\) # (!\inst18|Regist\(3)) ) ) # ( !\inst16|result[3]~295_combout\ & ( (\SelBus[1]~input_o\ & !\inst18|Regist\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000011111100111111001111110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SelBus[1]~input_o\,
	datac => \inst18|ALT_INV_Regist\(3),
	dataf => \inst16|ALT_INV_result[3]~295_combout\,
	combout => \inst18|Mux4~1_combout\);

-- Location: LABCELL_X57_Y6_N24
\inst18|Mux4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst18|Mux4~2_combout\ = ( \inst18|Add0~17_sumout\ & ( (!\SelBus[2]~input_o\ & (((\inst18|Mux4~1_combout\)) # (\inst3|Regist[6]~0_combout\))) # (\SelBus[2]~input_o\ & (((\inst18|Mux4~0_combout\)))) ) ) # ( !\inst18|Add0~17_sumout\ & ( 
-- (!\SelBus[2]~input_o\ & (!\inst3|Regist[6]~0_combout\ & ((\inst18|Mux4~1_combout\)))) # (\SelBus[2]~input_o\ & (((\inst18|Mux4~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001110001011000000111000101101000111110011110100011111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Regist[6]~0_combout\,
	datab => \ALT_INV_SelBus[2]~input_o\,
	datac => \inst18|ALT_INV_Mux4~0_combout\,
	datad => \inst18|ALT_INV_Mux4~1_combout\,
	dataf => \inst18|ALT_INV_Add0~17_sumout\,
	combout => \inst18|Mux4~2_combout\);

-- Location: FF_X57_Y6_N26
\inst18|Regist[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst18|Mux4~2_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst3|Regist[6]~1_combout\,
	ena => \inst18|Regist[6]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|Regist\(3));

-- Location: LABCELL_X57_Y6_N30
\inst18|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst18|Mux5~0_combout\ = ( \inst18|Regist\(2) & ( (!\inst3|Regist[6]~0_combout\ & (!\SelBus[1]~input_o\ & ((\inst16|result[2]~301_combout\)))) # (\inst3|Regist[6]~0_combout\ & (((\inst18|Add0~21_sumout\)))) ) ) # ( !\inst18|Regist\(2) & ( 
-- (!\inst3|Regist[6]~0_combout\ & (((\inst16|result[2]~301_combout\)) # (\SelBus[1]~input_o\))) # (\inst3|Regist[6]~0_combout\ & (((\inst18|Add0~21_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011111001111010001111100111100000011100010110000001110001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \inst3|ALT_INV_Regist[6]~0_combout\,
	datac => \inst18|ALT_INV_Add0~21_sumout\,
	datad => \inst16|ALT_INV_result[2]~301_combout\,
	dataf => \inst18|ALT_INV_Regist\(2),
	combout => \inst18|Mux5~0_combout\);

-- Location: LABCELL_X57_Y6_N42
\inst18|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst18|Mux5~1_combout\ = ( \inst18|Mux5~0_combout\ & ( (!\SelBus[2]~input_o\) # ((!\SelBus[0]~input_o\ & (\inst18|Regist\(1))) # (\SelBus[0]~input_o\ & ((\inst18|Regist\(3))))) ) ) # ( !\inst18|Mux5~0_combout\ & ( (\SelBus[2]~input_o\ & 
-- ((!\SelBus[0]~input_o\ & (\inst18|Regist\(1))) # (\SelBus[0]~input_o\ & ((\inst18|Regist\(3)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011000000100001001111001110110111111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[0]~input_o\,
	datab => \ALT_INV_SelBus[2]~input_o\,
	datac => \inst18|ALT_INV_Regist\(1),
	datad => \inst18|ALT_INV_Regist\(3),
	dataf => \inst18|ALT_INV_Mux5~0_combout\,
	combout => \inst18|Mux5~1_combout\);

-- Location: FF_X57_Y6_N44
\inst18|Regist[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst18|Mux5~1_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst3|Regist[6]~1_combout\,
	ena => \inst18|Regist[6]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|Regist\(2));

-- Location: LABCELL_X57_Y6_N33
\inst18|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst18|Mux6~0_combout\ = ( \inst18|Regist\(1) & ( (!\inst3|Regist[6]~0_combout\ & (!\SelBus[1]~input_o\ & (\inst16|result[1]~307_combout\))) # (\inst3|Regist[6]~0_combout\ & (((\inst18|Add0~25_sumout\)))) ) ) # ( !\inst18|Regist\(1) & ( 
-- (!\inst3|Regist[6]~0_combout\ & (((\inst16|result[1]~307_combout\)) # (\SelBus[1]~input_o\))) # (\inst3|Regist[6]~0_combout\ & (((\inst18|Add0~25_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110001111111010011000111111100001000001110110000100000111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \inst3|ALT_INV_Regist[6]~0_combout\,
	datac => \inst16|ALT_INV_result[1]~307_combout\,
	datad => \inst18|ALT_INV_Add0~25_sumout\,
	dataf => \inst18|ALT_INV_Regist\(1),
	combout => \inst18|Mux6~0_combout\);

-- Location: LABCELL_X57_Y6_N45
\inst18|Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst18|Mux6~1_combout\ = ( \inst18|Mux6~0_combout\ & ( (!\SelBus[2]~input_o\) # ((!\SelBus[0]~input_o\ & ((\inst18|Regist\(0)))) # (\SelBus[0]~input_o\ & (\inst18|Regist\(2)))) ) ) # ( !\inst18|Mux6~0_combout\ & ( (\SelBus[2]~input_o\ & 
-- ((!\SelBus[0]~input_o\ & ((\inst18|Regist\(0)))) # (\SelBus[0]~input_o\ & (\inst18|Regist\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011000000010010001111001101111011111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[0]~input_o\,
	datab => \ALT_INV_SelBus[2]~input_o\,
	datac => \inst18|ALT_INV_Regist\(2),
	datad => \inst18|ALT_INV_Regist\(0),
	dataf => \inst18|ALT_INV_Mux6~0_combout\,
	combout => \inst18|Mux6~1_combout\);

-- Location: FF_X57_Y6_N47
\inst18|Regist[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst18|Mux6~1_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst3|Regist[6]~1_combout\,
	ena => \inst18|Regist[6]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|Regist\(1));

-- Location: LABCELL_X57_Y4_N6
\inst16|result[1]~303\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|result[1]~303_combout\ = ( \inst5|Regist\(1) & ( \inst18|Regist\(1) & ( (!\inst16|_~5_combout\ & (!\inst16|_~3_combout\ & ((!\inst16|_~4_combout\) # (!\inst14|Regist\(1))))) ) ) ) # ( !\inst5|Regist\(1) & ( \inst18|Regist\(1) & ( 
-- (!\inst16|_~5_combout\ & ((!\inst16|_~4_combout\) # (!\inst14|Regist\(1)))) ) ) ) # ( \inst5|Regist\(1) & ( !\inst18|Regist\(1) & ( (!\inst16|_~3_combout\ & ((!\inst16|_~4_combout\) # (!\inst14|Regist\(1)))) ) ) ) # ( !\inst5|Regist\(1) & ( 
-- !\inst18|Regist\(1) & ( (!\inst16|_~4_combout\) # (!\inst14|Regist\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110101010111100001010000011001100100010001100000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV__~4_combout\,
	datab => \inst16|ALT_INV__~5_combout\,
	datac => \inst16|ALT_INV__~3_combout\,
	datad => \inst14|ALT_INV_Regist\(1),
	datae => \inst5|ALT_INV_Regist\(1),
	dataf => \inst18|ALT_INV_Regist\(1),
	combout => \inst16|result[1]~303_combout\);

-- Location: LABCELL_X56_Y4_N0
\inst11|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|Add0~29_sumout\ = SUM(( (!\SelBus[3]~input_o\) # ((\inst16|result[0]~313_combout\) # (\SelBus[1]~input_o\)) ) + ( !\inst11|Regist\(0) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( !VCC ))
-- \inst11|Add0~30\ = CARRY(( (!\SelBus[3]~input_o\) # ((\inst16|result[0]~313_combout\) # (\SelBus[1]~input_o\)) ) + ( !\inst11|Regist\(0) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111000011110000100000000000000001011101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[3]~input_o\,
	datab => \ALT_INV_SelBus[1]~input_o\,
	datac => \inst11|ALT_INV_Regist\(0),
	datad => \inst16|ALT_INV_result[0]~313_combout\,
	cin => GND,
	sumout => \inst11|Add0~29_sumout\,
	cout => \inst11|Add0~30\);

-- Location: LABCELL_X55_Y4_N48
\inst11|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|Mux7~0_combout\ = ( \inst18|Regist[0]~2_combout\ & ( \inst16|result[0]~313_combout\ & ( (\inst11|Regist\(1) & \inst18|Regist[0]~1_combout\) ) ) ) # ( !\inst18|Regist[0]~2_combout\ & ( \inst16|result[0]~313_combout\ & ( (!\inst11|Regist\(0)) # 
-- (\inst18|Regist[0]~1_combout\) ) ) ) # ( \inst18|Regist[0]~2_combout\ & ( !\inst16|result[0]~313_combout\ & ( (\inst11|Regist\(1) & \inst18|Regist[0]~1_combout\) ) ) ) # ( !\inst18|Regist[0]~2_combout\ & ( !\inst16|result[0]~313_combout\ & ( 
-- (!\inst11|Regist\(0) & !\inst18|Regist[0]~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000000000110000001110101111101011110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|ALT_INV_Regist\(0),
	datab => \inst11|ALT_INV_Regist\(1),
	datac => \inst18|ALT_INV_Regist[0]~1_combout\,
	datae => \inst18|ALT_INV_Regist[0]~2_combout\,
	dataf => \inst16|ALT_INV_result[0]~313_combout\,
	combout => \inst11|Mux7~0_combout\);

-- Location: LABCELL_X55_Y4_N36
\inst11|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|Mux7~1_combout\ = ( \inst11|Add0~29_sumout\ & ( \inst11|Mux7~0_combout\ ) ) # ( !\inst11|Add0~29_sumout\ & ( \inst11|Mux7~0_combout\ & ( !\inst18|Regist[0]~0_combout\ ) ) ) # ( \inst11|Add0~29_sumout\ & ( !\inst11|Mux7~0_combout\ & ( 
-- ((\inst11|Regist\(7) & \inst18|Regist[0]~3_combout\)) # (\inst18|Regist[0]~0_combout\) ) ) ) # ( !\inst11|Add0~29_sumout\ & ( !\inst11|Mux7~0_combout\ & ( (!\inst18|Regist[0]~0_combout\ & (\inst11|Regist\(7) & \inst18|Regist[0]~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100001100110011111111001100110011001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst18|ALT_INV_Regist[0]~0_combout\,
	datac => \inst11|ALT_INV_Regist\(7),
	datad => \inst18|ALT_INV_Regist[0]~3_combout\,
	datae => \inst11|ALT_INV_Add0~29_sumout\,
	dataf => \inst11|ALT_INV_Mux7~0_combout\,
	combout => \inst11|Mux7~1_combout\);

-- Location: LABCELL_X56_Y3_N30
\inst11|Regist[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|Regist[6]~0_combout\ = ( \inst8|Regist[1]~0_combout\ & ( (\SelRegD[2]~input_o\ & (!\SelRegD[0]~input_o\ & (!\SelRegD[1]~input_o\ & !\SelRegD[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000000000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelRegD[2]~input_o\,
	datab => \ALT_INV_SelRegD[0]~input_o\,
	datac => \ALT_INV_SelRegD[1]~input_o\,
	datad => \ALT_INV_SelRegD[3]~input_o\,
	datae => \inst8|ALT_INV_Regist[1]~0_combout\,
	combout => \inst11|Regist[6]~0_combout\);

-- Location: FF_X55_Y4_N38
\inst11|Regist[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst11|Mux7~1_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst18|Regist[0]~4_combout\,
	ena => \inst11|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|Regist\(0));

-- Location: LABCELL_X55_Y5_N21
\inst11|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|Mux0~0_combout\ = ( \inst16|result[7]~271_combout\ & ( (!\inst18|Regist[0]~2_combout\ & ((!\inst11|Regist\(7)) # ((\inst19|Regist[7]~0_combout\)))) # (\inst18|Regist[0]~2_combout\ & (((\inst11|Regist\(6) & \inst19|Regist[7]~0_combout\)))) ) ) # ( 
-- !\inst16|result[7]~271_combout\ & ( (!\inst18|Regist[0]~2_combout\ & (!\inst11|Regist\(7) & ((!\inst19|Regist[7]~0_combout\)))) # (\inst18|Regist[0]~2_combout\ & (((\inst11|Regist\(6) & \inst19|Regist[7]~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100000000011100010000000001110001000110011111000100011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|ALT_INV_Regist\(7),
	datab => \inst18|ALT_INV_Regist[0]~2_combout\,
	datac => \inst11|ALT_INV_Regist\(6),
	datad => \inst19|ALT_INV_Regist[7]~0_combout\,
	dataf => \inst16|ALT_INV_result[7]~271_combout\,
	combout => \inst11|Mux0~0_combout\);

-- Location: LABCELL_X56_Y4_N3
\inst11|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|Add0~25_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[1]~307_combout\)))) ) + ( !\inst11|Regist\(1) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst11|Add0~30\ ))
-- \inst11|Add0~26\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[1]~307_combout\)))) ) + ( !\inst11|Regist\(1) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst11|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000000101001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[3]~input_o\,
	datab => \ALT_INV_SelBus[1]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst16|ALT_INV_result[1]~307_combout\,
	dataf => \inst11|ALT_INV_Regist\(1),
	cin => \inst11|Add0~30\,
	sumout => \inst11|Add0~25_sumout\,
	cout => \inst11|Add0~26\);

-- Location: LABCELL_X56_Y4_N6
\inst11|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|Add0~21_sumout\ = SUM(( !\inst11|Regist\(2) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[2]~301_combout\)))) ) + ( 
-- \inst11|Add0~26\ ))
-- \inst11|Add0~22\ = CARRY(( !\inst11|Regist\(2) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[2]~301_combout\)))) ) + ( 
-- \inst11|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101011011000100000000000000000001000111101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[3]~input_o\,
	datab => \ALT_INV_SelBus[1]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst11|ALT_INV_Regist\(2),
	dataf => \inst16|ALT_INV_result[2]~301_combout\,
	cin => \inst11|Add0~26\,
	sumout => \inst11|Add0~21_sumout\,
	cout => \inst11|Add0~22\);

-- Location: LABCELL_X56_Y4_N9
\inst11|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|Add0~17_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[3]~295_combout\)))) ) + ( !\inst11|Regist\(3) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst11|Add0~22\ ))
-- \inst11|Add0~18\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[3]~295_combout\)))) ) + ( !\inst11|Regist\(3) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst11|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000000101001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[3]~input_o\,
	datab => \ALT_INV_SelBus[1]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst16|ALT_INV_result[3]~295_combout\,
	dataf => \inst11|ALT_INV_Regist\(3),
	cin => \inst11|Add0~22\,
	sumout => \inst11|Add0~17_sumout\,
	cout => \inst11|Add0~18\);

-- Location: LABCELL_X56_Y4_N12
\inst11|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|Add0~13_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[4]~289_combout\)))) ) + ( !\inst11|Regist\(4) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst11|Add0~18\ ))
-- \inst11|Add0~14\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[4]~289_combout\)))) ) + ( !\inst11|Regist\(4) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst11|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000000101001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[3]~input_o\,
	datab => \ALT_INV_SelBus[1]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst16|ALT_INV_result[4]~289_combout\,
	dataf => \inst11|ALT_INV_Regist\(4),
	cin => \inst11|Add0~18\,
	sumout => \inst11|Add0~13_sumout\,
	cout => \inst11|Add0~14\);

-- Location: LABCELL_X56_Y4_N15
\inst11|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|Add0~9_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[5]~283_combout\)))) ) + ( !\inst11|Regist\(5) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst11|Add0~14\ ))
-- \inst11|Add0~10\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[5]~283_combout\)))) ) + ( !\inst11|Regist\(5) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst11|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000000101001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[3]~input_o\,
	datab => \ALT_INV_SelBus[1]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst16|ALT_INV_result[5]~283_combout\,
	dataf => \inst11|ALT_INV_Regist\(5),
	cin => \inst11|Add0~14\,
	sumout => \inst11|Add0~9_sumout\,
	cout => \inst11|Add0~10\);

-- Location: LABCELL_X56_Y4_N18
\inst11|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|Add0~5_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[6]~277_combout\)))) ) + ( !\inst11|Regist\(6) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst11|Add0~10\ ))
-- \inst11|Add0~6\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[6]~277_combout\)))) ) + ( !\inst11|Regist\(6) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst11|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000000101001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[3]~input_o\,
	datab => \ALT_INV_SelBus[1]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst16|ALT_INV_result[6]~277_combout\,
	dataf => \inst11|ALT_INV_Regist\(6),
	cin => \inst11|Add0~10\,
	sumout => \inst11|Add0~5_sumout\,
	cout => \inst11|Add0~6\);

-- Location: LABCELL_X56_Y4_N21
\inst11|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|Add0~1_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[7]~271_combout\)))) ) + ( !\inst11|Regist\(7) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst11|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000000101001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[3]~input_o\,
	datab => \ALT_INV_SelBus[1]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst16|ALT_INV_result[7]~271_combout\,
	dataf => \inst11|ALT_INV_Regist\(7),
	cin => \inst11|Add0~6\,
	sumout => \inst11|Add0~1_sumout\);

-- Location: LABCELL_X56_Y7_N36
\inst11|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|Mux0~1_combout\ = ( \inst11|Mux0~0_combout\ & ( \inst11|Add0~1_sumout\ ) ) # ( !\inst11|Mux0~0_combout\ & ( \inst11|Add0~1_sumout\ & ( ((\inst11|Regist\(0) & \inst19|Regist[7]~1_combout\)) # (\inst18|Regist[0]~0_combout\) ) ) ) # ( 
-- \inst11|Mux0~0_combout\ & ( !\inst11|Add0~1_sumout\ & ( !\inst18|Regist[0]~0_combout\ ) ) ) # ( !\inst11|Mux0~0_combout\ & ( !\inst11|Add0~1_sumout\ & ( (!\inst18|Regist[0]~0_combout\ & (\inst11|Regist\(0) & \inst19|Regist[7]~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100110011001100110000110011001111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst18|ALT_INV_Regist[0]~0_combout\,
	datac => \inst11|ALT_INV_Regist\(0),
	datad => \inst19|ALT_INV_Regist[7]~1_combout\,
	datae => \inst11|ALT_INV_Mux0~0_combout\,
	dataf => \inst11|ALT_INV_Add0~1_sumout\,
	combout => \inst11|Mux0~1_combout\);

-- Location: FF_X56_Y7_N38
\inst11|Regist[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst11|Mux0~1_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst19|Regist[7]~2_combout\,
	ena => \inst11|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|Regist\(7));

-- Location: LABCELL_X55_Y5_N18
\inst11|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|Mux1~0_combout\ = ( \inst11|Regist\(7) & ( (\inst11|Regist\(5)) # (\SelBus[0]~input_o\) ) ) # ( !\inst11|Regist\(7) & ( (!\SelBus[0]~input_o\ & \inst11|Regist\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst11|ALT_INV_Regist\(5),
	dataf => \inst11|ALT_INV_Regist\(7),
	combout => \inst11|Mux1~0_combout\);

-- Location: LABCELL_X56_Y4_N57
\inst11|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|Mux1~1_combout\ = ( \inst11|Regist\(6) & ( (!\SelBus[1]~input_o\ & \inst16|result[6]~277_combout\) ) ) # ( !\inst11|Regist\(6) & ( (\inst16|result[6]~277_combout\) # (\SelBus[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111110011111100001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SelBus[1]~input_o\,
	datac => \inst16|ALT_INV_result[6]~277_combout\,
	dataf => \inst11|ALT_INV_Regist\(6),
	combout => \inst11|Mux1~1_combout\);

-- Location: LABCELL_X56_Y4_N24
\inst11|Mux1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|Mux1~2_combout\ = ( \inst11|Add0~5_sumout\ & ( (!\SelBus[2]~input_o\ & (((\inst11|Mux1~1_combout\)) # (\inst3|Regist[6]~0_combout\))) # (\SelBus[2]~input_o\ & (((\inst11|Mux1~0_combout\)))) ) ) # ( !\inst11|Add0~5_sumout\ & ( (!\SelBus[2]~input_o\ 
-- & (!\inst3|Regist[6]~0_combout\ & ((\inst11|Mux1~1_combout\)))) # (\SelBus[2]~input_o\ & (((\inst11|Mux1~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110001101000001011000110100100111101011110010011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[2]~input_o\,
	datab => \inst3|ALT_INV_Regist[6]~0_combout\,
	datac => \inst11|ALT_INV_Mux1~0_combout\,
	datad => \inst11|ALT_INV_Mux1~1_combout\,
	dataf => \inst11|ALT_INV_Add0~5_sumout\,
	combout => \inst11|Mux1~2_combout\);

-- Location: FF_X56_Y4_N26
\inst11|Regist[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst11|Mux1~2_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst3|Regist[6]~1_combout\,
	ena => \inst11|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|Regist\(6));

-- Location: LABCELL_X55_Y5_N24
\inst11|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|Mux2~0_combout\ = ( \SelBus[0]~input_o\ & ( \inst11|Regist\(6) ) ) # ( !\SelBus[0]~input_o\ & ( \inst11|Regist\(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst11|ALT_INV_Regist\(4),
	datad => \inst11|ALT_INV_Regist\(6),
	dataf => \ALT_INV_SelBus[0]~input_o\,
	combout => \inst11|Mux2~0_combout\);

-- Location: LABCELL_X55_Y5_N15
\inst11|Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|Mux2~1_combout\ = ( \inst16|result[5]~283_combout\ & ( (!\SelBus[1]~input_o\) # (!\inst11|Regist\(5)) ) ) # ( !\inst16|result[5]~283_combout\ & ( (\SelBus[1]~input_o\ & !\inst11|Regist\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000011111111110011001111111111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SelBus[1]~input_o\,
	datad => \inst11|ALT_INV_Regist\(5),
	dataf => \inst16|ALT_INV_result[5]~283_combout\,
	combout => \inst11|Mux2~1_combout\);

-- Location: LABCELL_X55_Y5_N27
\inst11|Mux2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|Mux2~2_combout\ = ( \inst11|Add0~9_sumout\ & ( (!\SelBus[2]~input_o\ & (((\inst11|Mux2~1_combout\)) # (\inst3|Regist[6]~0_combout\))) # (\SelBus[2]~input_o\ & (((\inst11|Mux2~0_combout\)))) ) ) # ( !\inst11|Add0~9_sumout\ & ( (!\SelBus[2]~input_o\ 
-- & (!\inst3|Regist[6]~0_combout\ & ((\inst11|Mux2~1_combout\)))) # (\SelBus[2]~input_o\ & (((\inst11|Mux2~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000110011000010100011001101011111001100110101111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Regist[6]~0_combout\,
	datab => \inst11|ALT_INV_Mux2~0_combout\,
	datac => \inst11|ALT_INV_Mux2~1_combout\,
	datad => \ALT_INV_SelBus[2]~input_o\,
	dataf => \inst11|ALT_INV_Add0~9_sumout\,
	combout => \inst11|Mux2~2_combout\);

-- Location: FF_X55_Y5_N29
\inst11|Regist[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst11|Mux2~2_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst3|Regist[6]~1_combout\,
	ena => \inst11|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|Regist\(5));

-- Location: LABCELL_X55_Y3_N33
\inst11|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|Mux3~0_combout\ = ( \inst11|Regist\(5) & ( (\SelBus[0]~input_o\) # (\inst11|Regist\(3)) ) ) # ( !\inst11|Regist\(5) & ( (\inst11|Regist\(3) & !\SelBus[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst11|ALT_INV_Regist\(3),
	datad => \ALT_INV_SelBus[0]~input_o\,
	dataf => \inst11|ALT_INV_Regist\(5),
	combout => \inst11|Mux3~0_combout\);

-- Location: LABCELL_X55_Y4_N12
\inst11|Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|Mux3~1_combout\ = ( \inst11|Regist\(4) & ( \inst16|result[4]~289_combout\ & ( !\SelBus[1]~input_o\ ) ) ) # ( !\inst11|Regist\(4) & ( \inst16|result[4]~289_combout\ ) ) # ( !\inst11|Regist\(4) & ( !\inst16|result[4]~289_combout\ & ( 
-- \SelBus[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000011111111111111111100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SelBus[1]~input_o\,
	datae => \inst11|ALT_INV_Regist\(4),
	dataf => \inst16|ALT_INV_result[4]~289_combout\,
	combout => \inst11|Mux3~1_combout\);

-- Location: LABCELL_X56_Y4_N27
\inst11|Mux3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|Mux3~2_combout\ = ( \inst11|Add0~13_sumout\ & ( (!\SelBus[2]~input_o\ & (((\inst11|Mux3~1_combout\)) # (\inst3|Regist[6]~0_combout\))) # (\SelBus[2]~input_o\ & (((\inst11|Mux3~0_combout\)))) ) ) # ( !\inst11|Add0~13_sumout\ & ( 
-- (!\SelBus[2]~input_o\ & (!\inst3|Regist[6]~0_combout\ & ((\inst11|Mux3~1_combout\)))) # (\SelBus[2]~input_o\ & (((\inst11|Mux3~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110001101000001011000110100100111101011110010011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[2]~input_o\,
	datab => \inst3|ALT_INV_Regist[6]~0_combout\,
	datac => \inst11|ALT_INV_Mux3~0_combout\,
	datad => \inst11|ALT_INV_Mux3~1_combout\,
	dataf => \inst11|ALT_INV_Add0~13_sumout\,
	combout => \inst11|Mux3~2_combout\);

-- Location: FF_X56_Y4_N29
\inst11|Regist[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst11|Mux3~2_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst3|Regist[6]~1_combout\,
	ena => \inst11|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|Regist\(4));

-- Location: LABCELL_X55_Y4_N45
\inst11|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|Mux4~0_combout\ = ( \inst11|Regist\(4) & ( \SelBus[0]~input_o\ ) ) # ( \inst11|Regist\(4) & ( !\SelBus[0]~input_o\ & ( \inst11|Regist\(2) ) ) ) # ( !\inst11|Regist\(4) & ( !\SelBus[0]~input_o\ & ( \inst11|Regist\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|ALT_INV_Regist\(2),
	datae => \inst11|ALT_INV_Regist\(4),
	dataf => \ALT_INV_SelBus[0]~input_o\,
	combout => \inst11|Mux4~0_combout\);

-- Location: LABCELL_X57_Y3_N39
\inst11|Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|Mux4~1_combout\ = ( \inst16|result[3]~295_combout\ & ( (!\inst11|Regist\(3)) # (!\SelBus[1]~input_o\) ) ) # ( !\inst16|result[3]~295_combout\ & ( (!\inst11|Regist\(3) & \SelBus[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001011101110111011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|ALT_INV_Regist\(3),
	datab => \ALT_INV_SelBus[1]~input_o\,
	dataf => \inst16|ALT_INV_result[3]~295_combout\,
	combout => \inst11|Mux4~1_combout\);

-- Location: LABCELL_X56_Y3_N48
\inst11|Mux4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|Mux4~2_combout\ = ( \inst11|Mux4~1_combout\ & ( \inst11|Add0~17_sumout\ & ( (!\SelBus[2]~input_o\) # (\inst11|Mux4~0_combout\) ) ) ) # ( !\inst11|Mux4~1_combout\ & ( \inst11|Add0~17_sumout\ & ( (!\SelBus[2]~input_o\ & 
-- (\inst3|Regist[6]~0_combout\)) # (\SelBus[2]~input_o\ & ((\inst11|Mux4~0_combout\))) ) ) ) # ( \inst11|Mux4~1_combout\ & ( !\inst11|Add0~17_sumout\ & ( (!\SelBus[2]~input_o\ & (!\inst3|Regist[6]~0_combout\)) # (\SelBus[2]~input_o\ & 
-- ((\inst11|Mux4~0_combout\))) ) ) ) # ( !\inst11|Mux4~1_combout\ & ( !\inst11|Add0~17_sumout\ & ( (\SelBus[2]~input_o\ & \inst11|Mux4~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101100011011000110100100111001001111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[2]~input_o\,
	datab => \inst3|ALT_INV_Regist[6]~0_combout\,
	datac => \inst11|ALT_INV_Mux4~0_combout\,
	datae => \inst11|ALT_INV_Mux4~1_combout\,
	dataf => \inst11|ALT_INV_Add0~17_sumout\,
	combout => \inst11|Mux4~2_combout\);

-- Location: FF_X56_Y3_N50
\inst11|Regist[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst11|Mux4~2_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst3|Regist[6]~1_combout\,
	ena => \inst11|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|Regist\(3));

-- Location: LABCELL_X56_Y4_N54
\inst11|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|Mux5~0_combout\ = ( \inst11|Add0~21_sumout\ & ( ((!\SelBus[1]~input_o\ & (\inst16|result[2]~301_combout\)) # (\SelBus[1]~input_o\ & ((!\inst11|Regist\(2))))) # (\inst3|Regist[6]~0_combout\) ) ) # ( !\inst11|Add0~21_sumout\ & ( 
-- (!\inst3|Regist[6]~0_combout\ & ((!\SelBus[1]~input_o\ & (\inst16|result[2]~301_combout\)) # (\SelBus[1]~input_o\ & ((!\inst11|Regist\(2)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101000001000001010100000100001111111010111010111111101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Regist[6]~0_combout\,
	datab => \ALT_INV_SelBus[1]~input_o\,
	datac => \inst16|ALT_INV_result[2]~301_combout\,
	datad => \inst11|ALT_INV_Regist\(2),
	dataf => \inst11|ALT_INV_Add0~21_sumout\,
	combout => \inst11|Mux5~0_combout\);

-- Location: LABCELL_X56_Y4_N45
\inst11|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|Mux5~1_combout\ = ( \inst11|Mux5~0_combout\ & ( (!\SelBus[2]~input_o\) # ((!\SelBus[0]~input_o\ & (\inst11|Regist\(1))) # (\SelBus[0]~input_o\ & ((\inst11|Regist\(3))))) ) ) # ( !\inst11|Mux5~0_combout\ & ( (\SelBus[2]~input_o\ & 
-- ((!\SelBus[0]~input_o\ & (\inst11|Regist\(1))) # (\SelBus[0]~input_o\ & ((\inst11|Regist\(3)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101000001000001010110101110101111111010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[2]~input_o\,
	datab => \ALT_INV_SelBus[0]~input_o\,
	datac => \inst11|ALT_INV_Regist\(1),
	datad => \inst11|ALT_INV_Regist\(3),
	dataf => \inst11|ALT_INV_Mux5~0_combout\,
	combout => \inst11|Mux5~1_combout\);

-- Location: FF_X56_Y4_N47
\inst11|Regist[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst11|Mux5~1_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst3|Regist[6]~1_combout\,
	ena => \inst11|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|Regist\(2));

-- Location: LABCELL_X56_Y4_N30
\inst11|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|Mux6~0_combout\ = ( \SelBus[1]~input_o\ & ( (!\inst3|Regist[6]~0_combout\ & (!\inst11|Regist\(1))) # (\inst3|Regist[6]~0_combout\ & ((\inst11|Add0~25_sumout\))) ) ) # ( !\SelBus[1]~input_o\ & ( (!\inst3|Regist[6]~0_combout\ & 
-- ((\inst16|result[1]~307_combout\))) # (\inst3|Regist[6]~0_combout\ & (\inst11|Add0~25_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111110001101100011011000110110001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Regist[6]~0_combout\,
	datab => \inst11|ALT_INV_Regist\(1),
	datac => \inst11|ALT_INV_Add0~25_sumout\,
	datad => \inst16|ALT_INV_result[1]~307_combout\,
	dataf => \ALT_INV_SelBus[1]~input_o\,
	combout => \inst11|Mux6~0_combout\);

-- Location: LABCELL_X56_Y4_N42
\inst11|Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|Mux6~1_combout\ = ( \inst11|Mux6~0_combout\ & ( (!\SelBus[2]~input_o\) # ((!\SelBus[0]~input_o\ & ((\inst11|Regist\(0)))) # (\SelBus[0]~input_o\ & (\inst11|Regist\(2)))) ) ) # ( !\inst11|Mux6~0_combout\ & ( (\SelBus[2]~input_o\ & 
-- ((!\SelBus[0]~input_o\ & ((\inst11|Regist\(0)))) # (\SelBus[0]~input_o\ & (\inst11|Regist\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101000000010100010110101011111011111010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[2]~input_o\,
	datab => \ALT_INV_SelBus[0]~input_o\,
	datac => \inst11|ALT_INV_Regist\(2),
	datad => \inst11|ALT_INV_Regist\(0),
	dataf => \inst11|ALT_INV_Mux6~0_combout\,
	combout => \inst11|Mux6~1_combout\);

-- Location: FF_X56_Y4_N44
\inst11|Regist[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst11|Mux6~1_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst3|Regist[6]~1_combout\,
	ena => \inst11|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|Regist\(1));

-- Location: IOIBUF_X32_Y0_N35
\MUX_A~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MUX_A,
	o => \MUX_A~input_o\);

-- Location: IOIBUF_X38_Y0_N1
\dataA[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataA(1),
	o => \dataA[1]~input_o\);

-- Location: LABCELL_X56_Y5_N54
\inst15|$00000|auto_generated|l1_w1_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst15|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ = ( \inst16|result[1]~307_combout\ & ( (!\MUX_A~input_o\) # (\dataA[1]~input_o\) ) ) # ( !\inst16|result[1]~307_combout\ & ( (\MUX_A~input_o\ & \dataA[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MUX_A~input_o\,
	datac => \ALT_INV_dataA[1]~input_o\,
	dataf => \inst16|ALT_INV_result[1]~307_combout\,
	combout => \inst15|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X57_Y1_N57
\inst6|Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Mux6~1_combout\ = ( \inst15|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ( \inst6|Regist\(1) & ( !\SelBus[1]~input_o\ ) ) ) # ( \inst15|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ( !\inst6|Regist\(1) ) ) # ( 
-- !\inst15|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ( !\inst6|Regist\(1) & ( \SelBus[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SelBus[1]~input_o\,
	datae => \inst15|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\,
	dataf => \inst6|ALT_INV_Regist\(1),
	combout => \inst6|Mux6~1_combout\);

-- Location: IOIBUF_X38_Y0_N35
\dataA[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataA(0),
	o => \dataA[0]~input_o\);

-- Location: LABCELL_X56_Y5_N27
\inst15|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst15|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst16|result[0]~313_combout\ & ( (!\MUX_A~input_o\) # (\dataA[0]~input_o\) ) ) # ( !\inst16|result[0]~313_combout\ & ( (\MUX_A~input_o\ & \dataA[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MUX_A~input_o\,
	datad => \ALT_INV_dataA[0]~input_o\,
	dataf => \inst16|ALT_INV_result[0]~313_combout\,
	combout => \inst15|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X55_Y4_N21
\inst6|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Mux7~0_combout\ = ( \inst6|Regist\(0) & ( \inst15|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (\inst18|Regist[0]~1_combout\ & ((!\inst18|Regist[0]~2_combout\) # (\inst6|Regist\(1)))) ) ) ) # ( !\inst6|Regist\(0) & ( 
-- \inst15|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (!\inst18|Regist[0]~2_combout\) # ((\inst18|Regist[0]~1_combout\ & \inst6|Regist\(1))) ) ) ) # ( \inst6|Regist\(0) & ( !\inst15|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( 
-- (\inst18|Regist[0]~1_combout\ & (\inst6|Regist\(1) & \inst18|Regist[0]~2_combout\)) ) ) ) # ( !\inst6|Regist\(0) & ( !\inst15|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (!\inst18|Regist[0]~1_combout\ & ((!\inst18|Regist[0]~2_combout\))) # 
-- (\inst18|Regist[0]~1_combout\ & (\inst6|Regist\(1) & \inst18|Regist[0]~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000101000000000000010111111111000001010101010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|ALT_INV_Regist[0]~1_combout\,
	datac => \inst6|ALT_INV_Regist\(1),
	datad => \inst18|ALT_INV_Regist[0]~2_combout\,
	datae => \inst6|ALT_INV_Regist\(0),
	dataf => \inst15|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	combout => \inst6|Mux7~0_combout\);

-- Location: IOIBUF_X56_Y81_N35
\dataA[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataA(3),
	o => \dataA[3]~input_o\);

-- Location: LABCELL_X56_Y5_N36
\inst15|$00000|auto_generated|l1_w3_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst15|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\ = ( \inst16|result[3]~295_combout\ & ( (!\MUX_A~input_o\) # (\dataA[3]~input_o\) ) ) # ( !\inst16|result[3]~295_combout\ & ( (\MUX_A~input_o\ & \dataA[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MUX_A~input_o\,
	datad => \ALT_INV_dataA[3]~input_o\,
	dataf => \inst16|ALT_INV_result[3]~295_combout\,
	combout => \inst15|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X57_Y1_N36
\inst6|Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Mux4~1_combout\ = ( \inst15|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\ & ( (!\SelBus[1]~input_o\) # (!\inst6|Regist\(3)) ) ) # ( !\inst15|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\ & ( (\SelBus[1]~input_o\ & 
-- !\inst6|Regist\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000011111100111111001111110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SelBus[1]~input_o\,
	datac => \inst6|ALT_INV_Regist\(3),
	dataf => \inst15|$00000|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\,
	combout => \inst6|Mux4~1_combout\);

-- Location: IOIBUF_X52_Y81_N18
\dataA[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataA(2),
	o => \dataA[2]~input_o\);

-- Location: LABCELL_X56_Y5_N42
\inst15|$00000|auto_generated|l1_w2_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst15|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ = ( \inst16|result[2]~301_combout\ & ( (!\MUX_A~input_o\) # (\dataA[2]~input_o\) ) ) # ( !\inst16|result[2]~301_combout\ & ( (\MUX_A~input_o\ & \dataA[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MUX_A~input_o\,
	datac => \ALT_INV_dataA[2]~input_o\,
	dataf => \inst16|ALT_INV_result[2]~301_combout\,
	combout => \inst15|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X57_Y1_N21
\inst6|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Mux5~1_combout\ = ( \inst15|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & ( (!\SelBus[1]~input_o\) # (!\inst6|Regist\(2)) ) ) # ( !\inst15|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & ( (\SelBus[1]~input_o\ & 
-- !\inst6|Regist\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000011111100111111001111110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SelBus[1]~input_o\,
	datac => \inst6|ALT_INV_Regist\(2),
	dataf => \inst15|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\,
	combout => \inst6|Mux5~1_combout\);

-- Location: LABCELL_X57_Y1_N0
\inst6|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Mux5~0_combout\ = ( \SelBus[0]~input_o\ & ( \inst6|Regist\(3) ) ) # ( !\SelBus[0]~input_o\ & ( \inst6|Regist\(3) & ( \inst6|Regist\(1) ) ) ) # ( !\SelBus[0]~input_o\ & ( !\inst6|Regist\(3) & ( \inst6|Regist\(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst6|ALT_INV_Regist\(1),
	datae => \ALT_INV_SelBus[0]~input_o\,
	dataf => \inst6|ALT_INV_Regist\(3),
	combout => \inst6|Mux5~0_combout\);

-- Location: LABCELL_X56_Y5_N3
\inst6|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Add0~25_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst15|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\)))) ) + ( !\inst6|Regist\(1) $ (((!\SelBus[1]~input_o\) # 
-- (!\SelBus[3]~input_o\))) ) + ( \inst6|Add0~30\ ))
-- \inst6|Add0~26\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst15|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\)))) ) + ( !\inst6|Regist\(1) $ (((!\SelBus[1]~input_o\) # 
-- (!\SelBus[3]~input_o\))) ) + ( \inst6|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000000110000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[3]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst15|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\,
	dataf => \inst6|ALT_INV_Regist\(1),
	cin => \inst6|Add0~30\,
	sumout => \inst6|Add0~25_sumout\,
	cout => \inst6|Add0~26\);

-- Location: LABCELL_X56_Y5_N6
\inst6|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Add0~21_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst15|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\)))) ) + ( !\inst6|Regist\(2) $ (((!\SelBus[1]~input_o\) # 
-- (!\SelBus[3]~input_o\))) ) + ( \inst6|Add0~26\ ))
-- \inst6|Add0~22\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst15|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\)))) ) + ( !\inst6|Regist\(2) $ (((!\SelBus[1]~input_o\) # 
-- (!\SelBus[3]~input_o\))) ) + ( \inst6|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000000110000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[3]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst15|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\,
	dataf => \inst6|ALT_INV_Regist\(2),
	cin => \inst6|Add0~26\,
	sumout => \inst6|Add0~21_sumout\,
	cout => \inst6|Add0~22\);

-- Location: LABCELL_X57_Y1_N42
\inst6|Mux5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Mux5~2_combout\ = ( \inst6|Mux5~0_combout\ & ( \inst6|Add0~21_sumout\ & ( ((\SelBus[2]~input_o\) # (\inst3|Regist[6]~0_combout\)) # (\inst6|Mux5~1_combout\) ) ) ) # ( !\inst6|Mux5~0_combout\ & ( \inst6|Add0~21_sumout\ & ( (!\SelBus[2]~input_o\ & 
-- ((\inst3|Regist[6]~0_combout\) # (\inst6|Mux5~1_combout\))) ) ) ) # ( \inst6|Mux5~0_combout\ & ( !\inst6|Add0~21_sumout\ & ( ((\inst6|Mux5~1_combout\ & !\inst3|Regist[6]~0_combout\)) # (\SelBus[2]~input_o\) ) ) ) # ( !\inst6|Mux5~0_combout\ & ( 
-- !\inst6|Add0~21_sumout\ & ( (\inst6|Mux5~1_combout\ & (!\inst3|Regist[6]~0_combout\ & !\SelBus[2]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010011110100111101110000011100000111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|ALT_INV_Mux5~1_combout\,
	datab => \inst3|ALT_INV_Regist[6]~0_combout\,
	datac => \ALT_INV_SelBus[2]~input_o\,
	datae => \inst6|ALT_INV_Mux5~0_combout\,
	dataf => \inst6|ALT_INV_Add0~21_sumout\,
	combout => \inst6|Mux5~2_combout\);

-- Location: LABCELL_X57_Y1_N30
\inst6|Regist[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Regist[6]~0_combout\ = ( !\SelRegD[0]~input_o\ & ( !\SelRegD[3]~input_o\ & ( (!\SelRegD[1]~input_o\ & (\inst8|Regist[1]~0_combout\ & !\SelRegD[2]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelRegD[1]~input_o\,
	datab => \inst8|ALT_INV_Regist[1]~0_combout\,
	datac => \ALT_INV_SelRegD[2]~input_o\,
	datae => \ALT_INV_SelRegD[0]~input_o\,
	dataf => \ALT_INV_SelRegD[3]~input_o\,
	combout => \inst6|Regist[6]~0_combout\);

-- Location: FF_X57_Y1_N44
\inst6|Regist[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst6|Mux5~2_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst3|Regist[6]~1_combout\,
	ena => \inst6|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|Regist\(2));

-- Location: LABCELL_X57_Y1_N27
\inst6|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Mux4~0_combout\ = ( \inst6|Regist\(2) & ( (!\SelBus[0]~input_o\) # (\inst6|Regist\(4)) ) ) # ( !\inst6|Regist\(2) & ( (\SelBus[0]~input_o\ & \inst6|Regist\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst6|ALT_INV_Regist\(4),
	dataf => \inst6|ALT_INV_Regist\(2),
	combout => \inst6|Mux4~0_combout\);

-- Location: LABCELL_X56_Y5_N9
\inst6|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Add0~17_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst15|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\)))) ) + ( !\inst6|Regist\(3) $ (((!\SelBus[1]~input_o\) # 
-- (!\SelBus[3]~input_o\))) ) + ( \inst6|Add0~22\ ))
-- \inst6|Add0~18\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst15|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\)))) ) + ( !\inst6|Regist\(3) $ (((!\SelBus[1]~input_o\) # 
-- (!\SelBus[3]~input_o\))) ) + ( \inst6|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000000110000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[3]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst15|$00000|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\,
	dataf => \inst6|ALT_INV_Regist\(3),
	cin => \inst6|Add0~22\,
	sumout => \inst6|Add0~17_sumout\,
	cout => \inst6|Add0~18\);

-- Location: LABCELL_X57_Y1_N51
\inst6|Mux4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Mux4~2_combout\ = ( \inst6|Mux4~0_combout\ & ( \inst6|Add0~17_sumout\ & ( ((\inst6|Mux4~1_combout\) # (\inst3|Regist[6]~0_combout\)) # (\SelBus[2]~input_o\) ) ) ) # ( !\inst6|Mux4~0_combout\ & ( \inst6|Add0~17_sumout\ & ( (!\SelBus[2]~input_o\ & 
-- ((\inst6|Mux4~1_combout\) # (\inst3|Regist[6]~0_combout\))) ) ) ) # ( \inst6|Mux4~0_combout\ & ( !\inst6|Add0~17_sumout\ & ( ((!\inst3|Regist[6]~0_combout\ & \inst6|Mux4~1_combout\)) # (\SelBus[2]~input_o\) ) ) ) # ( !\inst6|Mux4~0_combout\ & ( 
-- !\inst6|Add0~17_sumout\ & ( (!\SelBus[2]~input_o\ & (!\inst3|Regist[6]~0_combout\ & \inst6|Mux4~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000010101011111010100001010101010100101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[2]~input_o\,
	datac => \inst3|ALT_INV_Regist[6]~0_combout\,
	datad => \inst6|ALT_INV_Mux4~1_combout\,
	datae => \inst6|ALT_INV_Mux4~0_combout\,
	dataf => \inst6|ALT_INV_Add0~17_sumout\,
	combout => \inst6|Mux4~2_combout\);

-- Location: FF_X57_Y1_N53
\inst6|Regist[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst6|Mux4~2_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst3|Regist[6]~1_combout\,
	ena => \inst6|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|Regist\(3));

-- Location: LABCELL_X60_Y5_N42
\inst6|Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Mux3~1_combout\ = ( \SelBus[1]~input_o\ & ( \inst6|Regist\(3) & ( (\SelBus[2]~input_o\ & ((!\SelBus[0]~input_o\) # (\inst6|Regist\(5)))) ) ) ) # ( !\SelBus[1]~input_o\ & ( \inst6|Regist\(3) & ( (!\SelBus[2]~input_o\) # ((!\SelBus[0]~input_o\) # 
-- (\inst6|Regist\(5))) ) ) ) # ( \SelBus[1]~input_o\ & ( !\inst6|Regist\(3) & ( (\SelBus[2]~input_o\ & (\SelBus[0]~input_o\ & \inst6|Regist\(5))) ) ) ) # ( !\SelBus[1]~input_o\ & ( !\inst6|Regist\(3) & ( (!\SelBus[2]~input_o\) # ((\SelBus[0]~input_o\ & 
-- \inst6|Regist\(5))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101110101011000000010000000111101111111011110100010101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[2]~input_o\,
	datab => \ALT_INV_SelBus[0]~input_o\,
	datac => \inst6|ALT_INV_Regist\(5),
	datae => \ALT_INV_SelBus[1]~input_o\,
	dataf => \inst6|ALT_INV_Regist\(3),
	combout => \inst6|Mux3~1_combout\);

-- Location: IOIBUF_X72_Y0_N35
\dataA[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataA(4),
	o => \dataA[4]~input_o\);

-- Location: LABCELL_X56_Y5_N24
\inst15|$00000|auto_generated|l1_w4_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst15|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\ = ( \inst16|result[4]~289_combout\ & ( (!\MUX_A~input_o\) # (\dataA[4]~input_o\) ) ) # ( !\inst16|result[4]~289_combout\ & ( (\MUX_A~input_o\ & \dataA[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MUX_A~input_o\,
	datac => \ALT_INV_dataA[4]~input_o\,
	dataf => \inst16|ALT_INV_result[4]~289_combout\,
	combout => \inst15|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X56_Y5_N12
\inst6|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Add0~13_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst15|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\)))) ) + ( !\inst6|Regist\(4) $ (((!\SelBus[1]~input_o\) # 
-- (!\SelBus[3]~input_o\))) ) + ( \inst6|Add0~18\ ))
-- \inst6|Add0~14\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst15|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\)))) ) + ( !\inst6|Regist\(4) $ (((!\SelBus[1]~input_o\) # 
-- (!\SelBus[3]~input_o\))) ) + ( \inst6|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000000110000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[3]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst15|$00000|auto_generated|ALT_INV_l1_w4_n0_mux_dataout~0_combout\,
	dataf => \inst6|ALT_INV_Regist\(4),
	cin => \inst6|Add0~18\,
	sumout => \inst6|Add0~13_sumout\,
	cout => \inst6|Add0~14\);

-- Location: LABCELL_X55_Y5_N54
\inst6|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Mux3~0_combout\ = ( \inst6|Regist\(4) & ( \inst6|Add0~13_sumout\ & ( (!\SelBus[2]~input_o\ & (((\inst6|Mux3~1_combout\ & \inst15|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\)) # (\inst3|Regist[6]~0_combout\))) # (\SelBus[2]~input_o\ & 
-- (((\inst6|Mux3~1_combout\)))) ) ) ) # ( !\inst6|Regist\(4) & ( \inst6|Add0~13_sumout\ & ( (!\inst6|Mux3~1_combout\ & (((!\SelBus[2]~input_o\)))) # (\inst6|Mux3~1_combout\ & (((\inst15|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\) # 
-- (\SelBus[2]~input_o\)) # (\inst3|Regist[6]~0_combout\))) ) ) ) # ( \inst6|Regist\(4) & ( !\inst6|Add0~13_sumout\ & ( (\inst6|Mux3~1_combout\ & (((!\inst3|Regist[6]~0_combout\ & \inst15|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\)) # 
-- (\SelBus[2]~input_o\))) ) ) ) # ( !\inst6|Regist\(4) & ( !\inst6|Add0~13_sumout\ & ( (!\SelBus[2]~input_o\ & (!\inst3|Regist[6]~0_combout\ & ((!\inst6|Mux3~1_combout\) # (\inst15|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\)))) # 
-- (\SelBus[2]~input_o\ & (((\inst6|Mux3~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001110100011000000110010001111010011111100110101001101110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Regist[6]~0_combout\,
	datab => \inst6|ALT_INV_Mux3~1_combout\,
	datac => \ALT_INV_SelBus[2]~input_o\,
	datad => \inst15|$00000|auto_generated|ALT_INV_l1_w4_n0_mux_dataout~0_combout\,
	datae => \inst6|ALT_INV_Regist\(4),
	dataf => \inst6|ALT_INV_Add0~13_sumout\,
	combout => \inst6|Mux3~0_combout\);

-- Location: FF_X55_Y5_N56
\inst6|Regist[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst6|Mux3~0_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst3|Regist[6]~1_combout\,
	ena => \inst6|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|Regist\(4));

-- Location: LABCELL_X55_Y5_N12
\inst6|Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Mux2~1_combout\ = ( \SelBus[2]~input_o\ & ( (!\SelBus[0]~input_o\ & ((\inst6|Regist\(4)))) # (\SelBus[0]~input_o\ & (\inst6|Regist\(6))) ) ) # ( !\SelBus[2]~input_o\ & ( !\SelBus[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|ALT_INV_Regist\(6),
	datab => \ALT_INV_SelBus[1]~input_o\,
	datac => \inst6|ALT_INV_Regist\(4),
	datad => \ALT_INV_SelBus[0]~input_o\,
	dataf => \ALT_INV_SelBus[2]~input_o\,
	combout => \inst6|Mux2~1_combout\);

-- Location: IOIBUF_X38_Y0_N52
\dataA[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataA(5),
	o => \dataA[5]~input_o\);

-- Location: LABCELL_X56_Y5_N39
\inst15|$00000|auto_generated|l1_w5_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst15|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\ = ( \inst16|result[5]~283_combout\ & ( (!\MUX_A~input_o\) # (\dataA[5]~input_o\) ) ) # ( !\inst16|result[5]~283_combout\ & ( (\MUX_A~input_o\ & \dataA[5]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MUX_A~input_o\,
	datad => \ALT_INV_dataA[5]~input_o\,
	dataf => \inst16|ALT_INV_result[5]~283_combout\,
	combout => \inst15|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X56_Y5_N15
\inst6|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Add0~9_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst15|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\)))) ) + ( !\inst6|Regist\(5) $ (((!\SelBus[1]~input_o\) # 
-- (!\SelBus[3]~input_o\))) ) + ( \inst6|Add0~14\ ))
-- \inst6|Add0~10\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst15|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\)))) ) + ( !\inst6|Regist\(5) $ (((!\SelBus[1]~input_o\) # 
-- (!\SelBus[3]~input_o\))) ) + ( \inst6|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000000110000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[3]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst15|$00000|auto_generated|ALT_INV_l1_w5_n0_mux_dataout~0_combout\,
	dataf => \inst6|ALT_INV_Regist\(5),
	cin => \inst6|Add0~14\,
	sumout => \inst6|Add0~9_sumout\,
	cout => \inst6|Add0~10\);

-- Location: LABCELL_X55_Y5_N42
\inst6|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Mux2~0_combout\ = ( \inst6|Regist\(5) & ( \inst6|Add0~9_sumout\ & ( (!\SelBus[2]~input_o\ & (((\inst6|Mux2~1_combout\ & \inst15|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\)) # (\inst3|Regist[6]~0_combout\))) # (\SelBus[2]~input_o\ & 
-- (((\inst6|Mux2~1_combout\)))) ) ) ) # ( !\inst6|Regist\(5) & ( \inst6|Add0~9_sumout\ & ( (!\inst6|Mux2~1_combout\ & (((!\SelBus[2]~input_o\)))) # (\inst6|Mux2~1_combout\ & (((\SelBus[2]~input_o\) # 
-- (\inst15|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\)) # (\inst3|Regist[6]~0_combout\))) ) ) ) # ( \inst6|Regist\(5) & ( !\inst6|Add0~9_sumout\ & ( (\inst6|Mux2~1_combout\ & (((!\inst3|Regist[6]~0_combout\ & 
-- \inst15|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\)) # (\SelBus[2]~input_o\))) ) ) ) # ( !\inst6|Regist\(5) & ( !\inst6|Add0~9_sumout\ & ( (!\SelBus[2]~input_o\ & (!\inst3|Regist[6]~0_combout\ & ((!\inst6|Mux2~1_combout\) # 
-- (\inst15|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\)))) # (\SelBus[2]~input_o\ & (((\inst6|Mux2~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101000110011000000100011001111011111001100110101011100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Regist[6]~0_combout\,
	datab => \inst6|ALT_INV_Mux2~1_combout\,
	datac => \inst15|$00000|auto_generated|ALT_INV_l1_w5_n0_mux_dataout~0_combout\,
	datad => \ALT_INV_SelBus[2]~input_o\,
	datae => \inst6|ALT_INV_Regist\(5),
	dataf => \inst6|ALT_INV_Add0~9_sumout\,
	combout => \inst6|Mux2~0_combout\);

-- Location: FF_X55_Y5_N44
\inst6|Regist[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst6|Mux2~0_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst3|Regist[6]~1_combout\,
	ena => \inst6|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|Regist\(5));

-- Location: LABCELL_X60_Y5_N39
\inst6|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Mux1~1_combout\ = ( \inst6|Regist\(7) & ( \SelBus[2]~input_o\ & ( (\SelBus[0]~input_o\) # (\inst6|Regist\(5)) ) ) ) # ( !\inst6|Regist\(7) & ( \SelBus[2]~input_o\ & ( (\inst6|Regist\(5) & !\SelBus[0]~input_o\) ) ) ) # ( \inst6|Regist\(7) & ( 
-- !\SelBus[2]~input_o\ & ( !\SelBus[1]~input_o\ ) ) ) # ( !\inst6|Regist\(7) & ( !\SelBus[2]~input_o\ & ( !\SelBus[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110001010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|ALT_INV_Regist\(5),
	datab => \ALT_INV_SelBus[1]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datae => \inst6|ALT_INV_Regist\(7),
	dataf => \ALT_INV_SelBus[2]~input_o\,
	combout => \inst6|Mux1~1_combout\);

-- Location: IOIBUF_X32_Y0_N52
\dataA[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataA(6),
	o => \dataA[6]~input_o\);

-- Location: LABCELL_X56_Y5_N45
\inst15|$00000|auto_generated|l1_w6_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst15|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\ = ( \inst16|result[6]~277_combout\ & ( (!\MUX_A~input_o\) # (\dataA[6]~input_o\) ) ) # ( !\inst16|result[6]~277_combout\ & ( (\MUX_A~input_o\ & \dataA[6]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MUX_A~input_o\,
	datac => \ALT_INV_dataA[6]~input_o\,
	dataf => \inst16|ALT_INV_result[6]~277_combout\,
	combout => \inst15|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X56_Y5_N18
\inst6|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Add0~5_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst15|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\)))) ) + ( !\inst6|Regist\(6) $ (((!\SelBus[1]~input_o\) # 
-- (!\SelBus[3]~input_o\))) ) + ( \inst6|Add0~10\ ))
-- \inst6|Add0~6\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst15|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\)))) ) + ( !\inst6|Regist\(6) $ (((!\SelBus[1]~input_o\) # 
-- (!\SelBus[3]~input_o\))) ) + ( \inst6|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000000110000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[3]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst15|$00000|auto_generated|ALT_INV_l1_w6_n0_mux_dataout~0_combout\,
	dataf => \inst6|ALT_INV_Regist\(6),
	cin => \inst6|Add0~10\,
	sumout => \inst6|Add0~5_sumout\,
	cout => \inst6|Add0~6\);

-- Location: LABCELL_X55_Y5_N48
\inst6|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Mux1~0_combout\ = ( \inst6|Regist\(6) & ( \inst6|Add0~5_sumout\ & ( (!\SelBus[2]~input_o\ & (((\inst6|Mux1~1_combout\ & \inst15|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\)) # (\inst3|Regist[6]~0_combout\))) # (\SelBus[2]~input_o\ & 
-- (\inst6|Mux1~1_combout\)) ) ) ) # ( !\inst6|Regist\(6) & ( \inst6|Add0~5_sumout\ & ( (!\SelBus[2]~input_o\ & ((!\inst6|Mux1~1_combout\) # ((\inst3|Regist[6]~0_combout\) # (\inst15|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\)))) # 
-- (\SelBus[2]~input_o\ & (\inst6|Mux1~1_combout\)) ) ) ) # ( \inst6|Regist\(6) & ( !\inst6|Add0~5_sumout\ & ( (\inst6|Mux1~1_combout\ & (((\inst15|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\ & !\inst3|Regist[6]~0_combout\)) # 
-- (\SelBus[2]~input_o\))) ) ) ) # ( !\inst6|Regist\(6) & ( !\inst6|Add0~5_sumout\ & ( (!\SelBus[2]~input_o\ & (!\inst3|Regist[6]~0_combout\ & ((!\inst6|Mux1~1_combout\) # (\inst15|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\)))) # 
-- (\SelBus[2]~input_o\ & (\inst6|Mux1~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001101100010001000100110001000110011011101110110001001110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[2]~input_o\,
	datab => \inst6|ALT_INV_Mux1~1_combout\,
	datac => \inst15|$00000|auto_generated|ALT_INV_l1_w6_n0_mux_dataout~0_combout\,
	datad => \inst3|ALT_INV_Regist[6]~0_combout\,
	datae => \inst6|ALT_INV_Regist\(6),
	dataf => \inst6|ALT_INV_Add0~5_sumout\,
	combout => \inst6|Mux1~0_combout\);

-- Location: FF_X55_Y5_N50
\inst6|Regist[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst6|Mux1~0_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst3|Regist[6]~1_combout\,
	ena => \inst6|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|Regist\(6));

-- Location: IOIBUF_X89_Y6_N4
\dataA[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataA(7),
	o => \dataA[7]~input_o\);

-- Location: LABCELL_X56_Y5_N57
\inst15|$00000|auto_generated|l1_w7_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst15|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\ = ( \inst16|result[7]~271_combout\ & ( (!\MUX_A~input_o\) # (\dataA[7]~input_o\) ) ) # ( !\inst16|result[7]~271_combout\ & ( (\MUX_A~input_o\ & \dataA[7]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MUX_A~input_o\,
	datac => \ALT_INV_dataA[7]~input_o\,
	dataf => \inst16|ALT_INV_result[7]~271_combout\,
	combout => \inst15|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X59_Y5_N24
\inst6|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Mux0~0_combout\ = ( \inst6|Regist\(7) & ( \inst15|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\ & ( (\inst19|Regist[7]~0_combout\ & ((!\inst18|Regist[0]~2_combout\) # (\inst6|Regist\(6)))) ) ) ) # ( !\inst6|Regist\(7) & ( 
-- \inst15|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\ & ( (!\inst18|Regist[0]~2_combout\) # ((\inst19|Regist[7]~0_combout\ & \inst6|Regist\(6))) ) ) ) # ( \inst6|Regist\(7) & ( !\inst15|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\ & ( 
-- (\inst19|Regist[7]~0_combout\ & (\inst18|Regist[0]~2_combout\ & \inst6|Regist\(6))) ) ) ) # ( !\inst6|Regist\(7) & ( !\inst15|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\ & ( (!\inst19|Regist[7]~0_combout\ & (!\inst18|Regist[0]~2_combout\)) # 
-- (\inst19|Regist[7]~0_combout\ & (\inst18|Regist[0]~2_combout\ & \inst6|Regist\(6))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100110001001000000010000000111001101110011010100010101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|ALT_INV_Regist[7]~0_combout\,
	datab => \inst18|ALT_INV_Regist[0]~2_combout\,
	datac => \inst6|ALT_INV_Regist\(6),
	datae => \inst6|ALT_INV_Regist\(7),
	dataf => \inst15|$00000|auto_generated|ALT_INV_l1_w7_n0_mux_dataout~0_combout\,
	combout => \inst6|Mux0~0_combout\);

-- Location: LABCELL_X56_Y5_N21
\inst6|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Add0~1_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst15|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\)))) ) + ( !\inst6|Regist\(7) $ (((!\SelBus[1]~input_o\) # 
-- (!\SelBus[3]~input_o\))) ) + ( \inst6|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000000110000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[3]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst15|$00000|auto_generated|ALT_INV_l1_w7_n0_mux_dataout~0_combout\,
	dataf => \inst6|ALT_INV_Regist\(7),
	cin => \inst6|Add0~6\,
	sumout => \inst6|Add0~1_sumout\);

-- Location: MLABCELL_X59_Y5_N3
\inst6|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Mux0~1_combout\ = ( \inst6|Regist\(0) & ( \inst6|Add0~1_sumout\ & ( ((\inst6|Mux0~0_combout\) # (\inst18|Regist[0]~0_combout\)) # (\inst19|Regist[7]~1_combout\) ) ) ) # ( !\inst6|Regist\(0) & ( \inst6|Add0~1_sumout\ & ( (\inst6|Mux0~0_combout\) # 
-- (\inst18|Regist[0]~0_combout\) ) ) ) # ( \inst6|Regist\(0) & ( !\inst6|Add0~1_sumout\ & ( (!\inst18|Regist[0]~0_combout\ & ((\inst6|Mux0~0_combout\) # (\inst19|Regist[7]~1_combout\))) ) ) ) # ( !\inst6|Regist\(0) & ( !\inst6|Add0~1_sumout\ & ( 
-- (!\inst18|Regist[0]~0_combout\ & \inst6|Mux0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000010100001111000000001111111111110101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|ALT_INV_Regist[7]~1_combout\,
	datac => \inst18|ALT_INV_Regist[0]~0_combout\,
	datad => \inst6|ALT_INV_Mux0~0_combout\,
	datae => \inst6|ALT_INV_Regist\(0),
	dataf => \inst6|ALT_INV_Add0~1_sumout\,
	combout => \inst6|Mux0~1_combout\);

-- Location: FF_X59_Y5_N5
\inst6|Regist[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst6|Mux0~1_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst19|Regist[7]~2_combout\,
	ena => \inst6|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|Regist\(7));

-- Location: LABCELL_X56_Y5_N0
\inst6|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Add0~29_sumout\ = SUM(( ((!\SelBus[3]~input_o\) # (\inst15|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\)) # (\SelBus[1]~input_o\) ) + ( !\inst6|Regist\(0) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( !VCC ))
-- \inst6|Add0~30\ = CARRY(( ((!\SelBus[3]~input_o\) # (\inst15|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\)) # (\SelBus[1]~input_o\) ) + ( !\inst6|Regist\(0) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111000011110000100000000000000001101110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[3]~input_o\,
	datac => \inst6|ALT_INV_Regist\(0),
	datad => \inst15|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	cin => GND,
	sumout => \inst6|Add0~29_sumout\,
	cout => \inst6|Add0~30\);

-- Location: LABCELL_X55_Y4_N0
\inst6|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Mux7~1_combout\ = ( \inst6|Add0~29_sumout\ & ( (((\inst6|Regist\(7) & \inst18|Regist[0]~3_combout\)) # (\inst18|Regist[0]~0_combout\)) # (\inst6|Mux7~0_combout\) ) ) # ( !\inst6|Add0~29_sumout\ & ( (!\inst18|Regist[0]~0_combout\ & 
-- (((\inst6|Regist\(7) & \inst18|Regist[0]~3_combout\)) # (\inst6|Mux7~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001001100011101110111111101000100010011000111011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|ALT_INV_Mux7~0_combout\,
	datab => \inst18|ALT_INV_Regist[0]~0_combout\,
	datac => \inst6|ALT_INV_Regist\(7),
	datad => \inst18|ALT_INV_Regist[0]~3_combout\,
	datae => \inst6|ALT_INV_Add0~29_sumout\,
	combout => \inst6|Mux7~1_combout\);

-- Location: FF_X55_Y4_N2
\inst6|Regist[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst6|Mux7~1_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst18|Regist[0]~4_combout\,
	ena => \inst6|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|Regist\(0));

-- Location: LABCELL_X57_Y1_N15
\inst6|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Mux6~0_combout\ = ( \inst6|Regist\(0) & ( (!\SelBus[0]~input_o\) # (\inst6|Regist\(2)) ) ) # ( !\inst6|Regist\(0) & ( (\inst6|Regist\(2) & \SelBus[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst6|ALT_INV_Regist\(2),
	datac => \ALT_INV_SelBus[0]~input_o\,
	dataf => \inst6|ALT_INV_Regist\(0),
	combout => \inst6|Mux6~0_combout\);

-- Location: LABCELL_X57_Y1_N24
\inst6|Mux6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Mux6~2_combout\ = ( \inst6|Mux6~0_combout\ & ( ((!\inst3|Regist[6]~0_combout\ & (\inst6|Mux6~1_combout\)) # (\inst3|Regist[6]~0_combout\ & ((\inst6|Add0~25_sumout\)))) # (\SelBus[2]~input_o\) ) ) # ( !\inst6|Mux6~0_combout\ & ( 
-- (!\SelBus[2]~input_o\ & ((!\inst3|Regist[6]~0_combout\ & (\inst6|Mux6~1_combout\)) # (\inst3|Regist[6]~0_combout\ & ((\inst6|Add0~25_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001110000001000000111000000101111011111110010111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Regist[6]~0_combout\,
	datab => \inst6|ALT_INV_Mux6~1_combout\,
	datac => \ALT_INV_SelBus[2]~input_o\,
	datad => \inst6|ALT_INV_Add0~25_sumout\,
	dataf => \inst6|ALT_INV_Mux6~0_combout\,
	combout => \inst6|Mux6~2_combout\);

-- Location: FF_X57_Y1_N26
\inst6|Regist[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst6|Mux6~2_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst3|Regist[6]~1_combout\,
	ena => \inst6|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|Regist\(1));

-- Location: LABCELL_X57_Y4_N36
\inst16|result[1]~302\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|result[1]~302_combout\ = ( \inst11|Regist\(1) & ( \inst6|Regist\(1) & ( (!\inst16|_~1_combout\ & (!\inst16|_~0_combout\ & ((!\inst16|_~2_combout\) # (!\inst7|Regist\(1))))) ) ) ) # ( !\inst11|Regist\(1) & ( \inst6|Regist\(1) & ( 
-- (!\inst16|_~0_combout\ & ((!\inst16|_~2_combout\) # (!\inst7|Regist\(1)))) ) ) ) # ( \inst11|Regist\(1) & ( !\inst6|Regist\(1) & ( (!\inst16|_~1_combout\ & ((!\inst16|_~2_combout\) # (!\inst7|Regist\(1)))) ) ) ) # ( !\inst11|Regist\(1) & ( 
-- !\inst6|Regist\(1) & ( (!\inst16|_~2_combout\) # (!\inst7|Regist\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111001100101010101000100011110000110000001010000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV__~1_combout\,
	datab => \inst16|ALT_INV__~2_combout\,
	datac => \inst16|ALT_INV__~0_combout\,
	datad => \inst7|ALT_INV_Regist\(1),
	datae => \inst11|ALT_INV_Regist\(1),
	dataf => \inst6|ALT_INV_Regist\(1),
	combout => \inst16|result[1]~302_combout\);

-- Location: LABCELL_X57_Y4_N42
\inst16|result[1]~307\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|result[1]~307_combout\ = ( \inst16|result[1]~302_combout\ & ( \inst|altsyncram_component|auto_generated|q_a\(1) & ( ((!\inst16|result[1]~316_combout\) # ((!\inst16|result[1]~304_combout\) # (!\inst16|result[1]~303_combout\))) # 
-- (\inst16|_~11_combout\) ) ) ) # ( !\inst16|result[1]~302_combout\ & ( \inst|altsyncram_component|auto_generated|q_a\(1) ) ) # ( \inst16|result[1]~302_combout\ & ( !\inst|altsyncram_component|auto_generated|q_a\(1) & ( (!\inst16|result[1]~316_combout\) # 
-- ((!\inst16|result[1]~304_combout\) # (!\inst16|result[1]~303_combout\)) ) ) ) # ( !\inst16|result[1]~302_combout\ & ( !\inst|altsyncram_component|auto_generated|q_a\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111110011111111111111111111111111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV__~11_combout\,
	datab => \inst16|ALT_INV_result[1]~316_combout\,
	datac => \inst16|ALT_INV_result[1]~304_combout\,
	datad => \inst16|ALT_INV_result[1]~303_combout\,
	datae => \inst16|ALT_INV_result[1]~302_combout\,
	dataf => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	combout => \inst16|result[1]~307_combout\);

-- Location: LABCELL_X53_Y3_N33
\inst10|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Add0~25_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[1]~307_combout\)))) ) + ( !\inst10|Regist\(1) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst10|Add0~30\ ))
-- \inst10|Add0~26\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[1]~307_combout\)))) ) + ( !\inst10|Regist\(1) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst10|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000000101001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[3]~input_o\,
	datab => \ALT_INV_SelBus[1]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst16|ALT_INV_result[1]~307_combout\,
	dataf => \inst10|ALT_INV_Regist\(1),
	cin => \inst10|Add0~30\,
	sumout => \inst10|Add0~25_sumout\,
	cout => \inst10|Add0~26\);

-- Location: LABCELL_X53_Y3_N36
\inst10|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Add0~21_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\)) # (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst16|result[2]~301_combout\)))) ) + ( !\inst10|Regist\(2) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst10|Add0~26\ ))
-- \inst10|Add0~22\ = CARRY(( (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\)) # (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst16|result[2]~301_combout\)))) ) + ( !\inst10|Regist\(2) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst10|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000010100000000000000000010001001110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[3]~input_o\,
	datab => \ALT_INV_SelBus[0]~input_o\,
	datac => \ALT_INV_SelBus[1]~input_o\,
	datad => \inst16|ALT_INV_result[2]~301_combout\,
	dataf => \inst10|ALT_INV_Regist\(2),
	cin => \inst10|Add0~26\,
	sumout => \inst10|Add0~21_sumout\,
	cout => \inst10|Add0~22\);

-- Location: LABCELL_X53_Y3_N18
\inst10|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Mux5~0_combout\ = ( \inst10|Add0~21_sumout\ & ( ((!\SelBus[1]~input_o\ & (\inst16|result[2]~301_combout\)) # (\SelBus[1]~input_o\ & ((!\inst10|Regist\(2))))) # (\inst3|Regist[6]~0_combout\) ) ) # ( !\inst10|Add0~21_sumout\ & ( 
-- (!\inst3|Regist[6]~0_combout\ & ((!\SelBus[1]~input_o\ & (\inst16|result[2]~301_combout\)) # (\SelBus[1]~input_o\ & ((!\inst10|Regist\(2)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101000001000001010100000100001111111010111010111111101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Regist[6]~0_combout\,
	datab => \ALT_INV_SelBus[1]~input_o\,
	datac => \inst16|ALT_INV_result[2]~301_combout\,
	datad => \inst10|ALT_INV_Regist\(2),
	dataf => \inst10|ALT_INV_Add0~21_sumout\,
	combout => \inst10|Mux5~0_combout\);

-- Location: LABCELL_X53_Y3_N0
\inst10|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Mux5~1_combout\ = ( \inst10|Mux5~0_combout\ & ( (!\SelBus[2]~input_o\) # ((!\SelBus[0]~input_o\ & ((\inst10|Regist\(1)))) # (\SelBus[0]~input_o\ & (\inst10|Regist\(3)))) ) ) # ( !\inst10|Mux5~0_combout\ & ( (\SelBus[2]~input_o\ & 
-- ((!\SelBus[0]~input_o\ & ((\inst10|Regist\(1)))) # (\SelBus[0]~input_o\ & (\inst10|Regist\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010001000001010001000110101111101110111010111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[2]~input_o\,
	datab => \inst10|ALT_INV_Regist\(3),
	datac => \inst10|ALT_INV_Regist\(1),
	datad => \ALT_INV_SelBus[0]~input_o\,
	dataf => \inst10|ALT_INV_Mux5~0_combout\,
	combout => \inst10|Mux5~1_combout\);

-- Location: FF_X53_Y3_N2
\inst10|Regist[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst10|Mux5~1_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst3|Regist[6]~1_combout\,
	ena => \inst10|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|Regist\(2));

-- Location: MLABCELL_X52_Y3_N36
\inst10|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Mux6~0_combout\ = ( \inst10|Add0~25_sumout\ & ( ((!\SelBus[1]~input_o\ & ((\inst16|result[1]~307_combout\))) # (\SelBus[1]~input_o\ & (!\inst10|Regist\(1)))) # (\inst3|Regist[6]~0_combout\) ) ) # ( !\inst10|Add0~25_sumout\ & ( 
-- (!\inst3|Regist[6]~0_combout\ & ((!\SelBus[1]~input_o\ & ((\inst16|result[1]~307_combout\))) # (\SelBus[1]~input_o\ & (!\inst10|Regist\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111000000000010011100000000001001110111111110100111011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \inst10|ALT_INV_Regist\(1),
	datac => \inst16|ALT_INV_result[1]~307_combout\,
	datad => \inst3|ALT_INV_Regist[6]~0_combout\,
	dataf => \inst10|ALT_INV_Add0~25_sumout\,
	combout => \inst10|Mux6~0_combout\);

-- Location: LABCELL_X51_Y3_N42
\inst10|Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Mux6~1_combout\ = ( \inst10|Mux6~0_combout\ & ( \inst10|Regist\(0) & ( ((!\SelBus[2]~input_o\) # (!\SelBus[0]~input_o\)) # (\inst10|Regist\(2)) ) ) ) # ( !\inst10|Mux6~0_combout\ & ( \inst10|Regist\(0) & ( (\SelBus[2]~input_o\ & 
-- ((!\SelBus[0]~input_o\) # (\inst10|Regist\(2)))) ) ) ) # ( \inst10|Mux6~0_combout\ & ( !\inst10|Regist\(0) & ( (!\SelBus[2]~input_o\) # ((\inst10|Regist\(2) & \SelBus[0]~input_o\)) ) ) ) # ( !\inst10|Mux6~0_combout\ & ( !\inst10|Regist\(0) & ( 
-- (\inst10|Regist\(2) & (\SelBus[2]~input_o\ & \SelBus[0]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001110011011100110100110001001100011111110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|ALT_INV_Regist\(2),
	datab => \ALT_INV_SelBus[2]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datae => \inst10|ALT_INV_Mux6~0_combout\,
	dataf => \inst10|ALT_INV_Regist\(0),
	combout => \inst10|Mux6~1_combout\);

-- Location: FF_X51_Y3_N44
\inst10|Regist[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst10|Mux6~1_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst3|Regist[6]~1_combout\,
	ena => \inst10|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|Regist\(1));

-- Location: MLABCELL_X52_Y3_N33
\inst10|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Mux7~0_combout\ = ( \inst16|result[0]~313_combout\ & ( (!\inst18|Regist[0]~1_combout\ & (((!\inst10|Regist\(0) & !\inst18|Regist[0]~2_combout\)))) # (\inst18|Regist[0]~1_combout\ & (((!\inst18|Regist[0]~2_combout\)) # (\inst10|Regist\(1)))) ) ) # 
-- ( !\inst16|result[0]~313_combout\ & ( (!\inst18|Regist[0]~1_combout\ & (((!\inst10|Regist\(0) & !\inst18|Regist[0]~2_combout\)))) # (\inst18|Regist[0]~1_combout\ & (\inst10|Regist\(1) & ((\inst18|Regist[0]~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000010001101000000001000111110101000100011111010100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|ALT_INV_Regist[0]~1_combout\,
	datab => \inst10|ALT_INV_Regist\(1),
	datac => \inst10|ALT_INV_Regist\(0),
	datad => \inst18|ALT_INV_Regist[0]~2_combout\,
	dataf => \inst16|ALT_INV_result[0]~313_combout\,
	combout => \inst10|Mux7~0_combout\);

-- Location: MLABCELL_X52_Y3_N42
\inst10|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Mux7~1_combout\ = ( \inst10|Add0~29_sumout\ & ( \inst10|Mux7~0_combout\ ) ) # ( !\inst10|Add0~29_sumout\ & ( \inst10|Mux7~0_combout\ & ( !\inst18|Regist[0]~0_combout\ ) ) ) # ( \inst10|Add0~29_sumout\ & ( !\inst10|Mux7~0_combout\ & ( 
-- ((\inst18|Regist[0]~3_combout\ & \inst10|Regist\(7))) # (\inst18|Regist[0]~0_combout\) ) ) ) # ( !\inst10|Add0~29_sumout\ & ( !\inst10|Mux7~0_combout\ & ( (\inst18|Regist[0]~3_combout\ & (\inst10|Regist\(7) & !\inst18|Regist[0]~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000111111111111111111000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst18|ALT_INV_Regist[0]~3_combout\,
	datac => \inst10|ALT_INV_Regist\(7),
	datad => \inst18|ALT_INV_Regist[0]~0_combout\,
	datae => \inst10|ALT_INV_Add0~29_sumout\,
	dataf => \inst10|ALT_INV_Mux7~0_combout\,
	combout => \inst10|Mux7~1_combout\);

-- Location: FF_X52_Y3_N44
\inst10|Regist[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst10|Mux7~1_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst18|Regist[0]~4_combout\,
	ena => \inst10|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|Regist\(0));

-- Location: MLABCELL_X52_Y5_N57
\inst10|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Mux0~0_combout\ = ( \inst16|result[7]~271_combout\ & ( (!\inst18|Regist[0]~2_combout\ & ((!\inst10|Regist\(7)) # ((\inst19|Regist[7]~0_combout\)))) # (\inst18|Regist[0]~2_combout\ & (((\inst19|Regist[7]~0_combout\ & \inst10|Regist\(6))))) ) ) # ( 
-- !\inst16|result[7]~271_combout\ & ( (!\inst18|Regist[0]~2_combout\ & (!\inst10|Regist\(7) & (!\inst19|Regist[7]~0_combout\))) # (\inst18|Regist[0]~2_combout\ & (((\inst19|Regist[7]~0_combout\ & \inst10|Regist\(6))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000011100000001000001110001100100011111000110010001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|ALT_INV_Regist\(7),
	datab => \inst18|ALT_INV_Regist[0]~2_combout\,
	datac => \inst19|ALT_INV_Regist[7]~0_combout\,
	datad => \inst10|ALT_INV_Regist\(6),
	dataf => \inst16|ALT_INV_result[7]~271_combout\,
	combout => \inst10|Mux0~0_combout\);

-- Location: LABCELL_X53_Y3_N48
\inst10|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Add0~5_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\)) # (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst16|result[6]~277_combout\)))) ) + ( !\inst10|Regist\(6) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst10|Add0~10\ ))
-- \inst10|Add0~6\ = CARRY(( (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\)) # (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst16|result[6]~277_combout\)))) ) + ( !\inst10|Regist\(6) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst10|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000010100000000000000000010001001110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[3]~input_o\,
	datab => \ALT_INV_SelBus[0]~input_o\,
	datac => \ALT_INV_SelBus[1]~input_o\,
	datad => \inst16|ALT_INV_result[6]~277_combout\,
	dataf => \inst10|ALT_INV_Regist\(6),
	cin => \inst10|Add0~10\,
	sumout => \inst10|Add0~5_sumout\,
	cout => \inst10|Add0~6\);

-- Location: LABCELL_X53_Y3_N51
\inst10|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Add0~1_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\)) # (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst16|result[7]~271_combout\)))) ) + ( !\inst10|Regist\(7) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst10|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000010100000000000000000010001001110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[3]~input_o\,
	datab => \ALT_INV_SelBus[0]~input_o\,
	datac => \ALT_INV_SelBus[1]~input_o\,
	datad => \inst16|ALT_INV_result[7]~271_combout\,
	dataf => \inst10|ALT_INV_Regist\(7),
	cin => \inst10|Add0~6\,
	sumout => \inst10|Add0~1_sumout\);

-- Location: MLABCELL_X52_Y5_N36
\inst10|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Mux0~1_combout\ = ( \inst10|Add0~1_sumout\ & ( (((\inst19|Regist[7]~1_combout\ & \inst10|Regist\(0))) # (\inst10|Mux0~0_combout\)) # (\inst18|Regist[0]~0_combout\) ) ) # ( !\inst10|Add0~1_sumout\ & ( (!\inst18|Regist[0]~0_combout\ & 
-- (((\inst19|Regist[7]~1_combout\ & \inst10|Regist\(0))) # (\inst10|Mux0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011110000000100001111000000011111111111110001111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|ALT_INV_Regist[7]~1_combout\,
	datab => \inst10|ALT_INV_Regist\(0),
	datac => \inst18|ALT_INV_Regist[0]~0_combout\,
	datad => \inst10|ALT_INV_Mux0~0_combout\,
	dataf => \inst10|ALT_INV_Add0~1_sumout\,
	combout => \inst10|Mux0~1_combout\);

-- Location: FF_X52_Y5_N38
\inst10|Regist[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst10|Mux0~1_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst19|Regist[7]~2_combout\,
	ena => \inst10|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|Regist\(7));

-- Location: MLABCELL_X52_Y3_N30
\inst10|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Mux1~0_combout\ = ( \inst10|Regist\(7) & ( (\SelBus[0]~input_o\) # (\inst10|Regist\(5)) ) ) # ( !\inst10|Regist\(7) & ( (\inst10|Regist\(5) & !\SelBus[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst10|ALT_INV_Regist\(5),
	datad => \ALT_INV_SelBus[0]~input_o\,
	dataf => \inst10|ALT_INV_Regist\(7),
	combout => \inst10|Mux1~0_combout\);

-- Location: LABCELL_X53_Y3_N54
\inst10|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Mux1~1_combout\ = ( \inst10|Regist\(6) & ( (!\SelBus[1]~input_o\ & \inst16|result[6]~277_combout\) ) ) # ( !\inst10|Regist\(6) & ( (\inst16|result[6]~277_combout\) # (\SelBus[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SelBus[1]~input_o\,
	datad => \inst16|ALT_INV_result[6]~277_combout\,
	dataf => \inst10|ALT_INV_Regist\(6),
	combout => \inst10|Mux1~1_combout\);

-- Location: LABCELL_X53_Y3_N24
\inst10|Mux1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Mux1~2_combout\ = ( \inst10|Add0~5_sumout\ & ( (!\SelBus[2]~input_o\ & (((\inst10|Mux1~1_combout\) # (\inst3|Regist[6]~0_combout\)))) # (\SelBus[2]~input_o\ & (\inst10|Mux1~0_combout\)) ) ) # ( !\inst10|Add0~5_sumout\ & ( (!\SelBus[2]~input_o\ & 
-- (((!\inst3|Regist[6]~0_combout\ & \inst10|Mux1~1_combout\)))) # (\SelBus[2]~input_o\ & (\inst10|Mux1~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111000101000001011100010100110101111101010011010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|ALT_INV_Mux1~0_combout\,
	datab => \inst3|ALT_INV_Regist[6]~0_combout\,
	datac => \ALT_INV_SelBus[2]~input_o\,
	datad => \inst10|ALT_INV_Mux1~1_combout\,
	dataf => \inst10|ALT_INV_Add0~5_sumout\,
	combout => \inst10|Mux1~2_combout\);

-- Location: FF_X53_Y3_N26
\inst10|Regist[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst10|Mux1~2_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst3|Regist[6]~1_combout\,
	ena => \inst10|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|Regist\(6));

-- Location: LABCELL_X50_Y5_N12
\inst24|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|Add1~13_sumout\ = SUM(( \inst4|Regist\(4) ) + ( \inst3|Regist\(4) ) + ( \inst24|Add1~18\ ))
-- \inst24|Add1~14\ = CARRY(( \inst4|Regist\(4) ) + ( \inst3|Regist\(4) ) + ( \inst24|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ALT_INV_Regist\(4),
	datad => \inst4|ALT_INV_Regist\(4),
	cin => \inst24|Add1~18\,
	sumout => \inst24|Add1~13_sumout\,
	cout => \inst24|Add1~14\);

-- Location: LABCELL_X50_Y5_N15
\inst24|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|Add1~9_sumout\ = SUM(( \inst3|Regist\(5) ) + ( \inst4|Regist\(5) ) + ( \inst24|Add1~14\ ))
-- \inst24|Add1~10\ = CARRY(( \inst3|Regist\(5) ) + ( \inst4|Regist\(5) ) + ( \inst24|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ALT_INV_Regist\(5),
	datad => \inst3|ALT_INV_Regist\(5),
	cin => \inst24|Add1~14\,
	sumout => \inst24|Add1~9_sumout\,
	cout => \inst24|Add1~10\);

-- Location: LABCELL_X50_Y5_N18
\inst24|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|Add1~5_sumout\ = SUM(( \inst3|Regist\(6) ) + ( \inst4|Regist\(6) ) + ( \inst24|Add1~10\ ))
-- \inst24|Add1~6\ = CARRY(( \inst3|Regist\(6) ) + ( \inst4|Regist\(6) ) + ( \inst24|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ALT_INV_Regist\(6),
	datad => \inst3|ALT_INV_Regist\(6),
	cin => \inst24|Add1~10\,
	sumout => \inst24|Add1~5_sumout\,
	cout => \inst24|Add1~6\);

-- Location: LABCELL_X50_Y5_N39
\inst24|Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|Mux2~1_combout\ = ( \inst24|Add1~5_sumout\ & ( !\AluSel[2]~input_o\ $ (((\AluSel[1]~input_o\) # (\AluSel[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010011001001100111001100100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AluSel[0]~input_o\,
	datab => \ALT_INV_AluSel[2]~input_o\,
	datad => \ALT_INV_AluSel[1]~input_o\,
	dataf => \inst24|ALT_INV_Add1~5_sumout\,
	combout => \inst24|Mux2~1_combout\);

-- Location: LABCELL_X50_Y6_N0
\inst24|Mux2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|Mux2~2_combout\ = ( \inst3|Regist\(6) & ( \inst4|Regist\(6) & ( (\AluSel[1]~input_o\ & !\AluSel[2]~input_o\) ) ) ) # ( !\inst3|Regist\(6) & ( \inst4|Regist\(6) & ( (!\AluSel[1]~input_o\ & (\AluSel[2]~input_o\ & !\AluSel[0]~input_o\)) # 
-- (\AluSel[1]~input_o\ & (!\AluSel[2]~input_o\ & \AluSel[0]~input_o\)) ) ) ) # ( \inst3|Regist\(6) & ( !\inst4|Regist\(6) & ( (!\AluSel[1]~input_o\ & (\AluSel[2]~input_o\ & !\AluSel[0]~input_o\)) # (\AluSel[1]~input_o\ & (!\AluSel[2]~input_o\ & 
-- \AluSel[0]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001001000010010000100100001001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AluSel[1]~input_o\,
	datab => \ALT_INV_AluSel[2]~input_o\,
	datac => \ALT_INV_AluSel[0]~input_o\,
	datae => \inst3|ALT_INV_Regist\(6),
	dataf => \inst4|ALT_INV_Regist\(6),
	combout => \inst24|Mux2~2_combout\);

-- Location: LABCELL_X51_Y5_N12
\inst24|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|Add0~13_sumout\ = SUM(( !\inst3|Regist\(4) $ (\inst4|Regist\(4)) ) + ( \inst24|Add0~19\ ) + ( \inst24|Add0~18\ ))
-- \inst24|Add0~14\ = CARRY(( !\inst3|Regist\(4) $ (\inst4|Regist\(4)) ) + ( \inst24|Add0~19\ ) + ( \inst24|Add0~18\ ))
-- \inst24|Add0~15\ = SHARE((\inst3|Regist\(4) & !\inst4|Regist\(4)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Regist\(4),
	datac => \inst4|ALT_INV_Regist\(4),
	cin => \inst24|Add0~18\,
	sharein => \inst24|Add0~19\,
	sumout => \inst24|Add0~13_sumout\,
	cout => \inst24|Add0~14\,
	shareout => \inst24|Add0~15\);

-- Location: LABCELL_X51_Y5_N15
\inst24|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|Add0~9_sumout\ = SUM(( !\inst4|Regist\(5) $ (\inst3|Regist\(5)) ) + ( \inst24|Add0~15\ ) + ( \inst24|Add0~14\ ))
-- \inst24|Add0~10\ = CARRY(( !\inst4|Regist\(5) $ (\inst3|Regist\(5)) ) + ( \inst24|Add0~15\ ) + ( \inst24|Add0~14\ ))
-- \inst24|Add0~11\ = SHARE((!\inst4|Regist\(5) & \inst3|Regist\(5)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ALT_INV_Regist\(5),
	datad => \inst3|ALT_INV_Regist\(5),
	cin => \inst24|Add0~14\,
	sharein => \inst24|Add0~15\,
	sumout => \inst24|Add0~9_sumout\,
	cout => \inst24|Add0~10\,
	shareout => \inst24|Add0~11\);

-- Location: LABCELL_X51_Y5_N18
\inst24|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|Add0~5_sumout\ = SUM(( !\inst3|Regist\(6) $ (\inst4|Regist\(6)) ) + ( \inst24|Add0~11\ ) + ( \inst24|Add0~10\ ))
-- \inst24|Add0~6\ = CARRY(( !\inst3|Regist\(6) $ (\inst4|Regist\(6)) ) + ( \inst24|Add0~11\ ) + ( \inst24|Add0~10\ ))
-- \inst24|Add0~7\ = SHARE((\inst3|Regist\(6) & !\inst4|Regist\(6)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ALT_INV_Regist\(6),
	datad => \inst4|ALT_INV_Regist\(6),
	cin => \inst24|Add0~10\,
	sharein => \inst24|Add0~11\,
	sumout => \inst24|Add0~5_sumout\,
	cout => \inst24|Add0~6\,
	shareout => \inst24|Add0~7\);

-- Location: LABCELL_X53_Y5_N42
\inst20|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst20|Mux1~0_combout\ = ( \inst24|Add0~5_sumout\ & ( \inst20|Regist\(6) & ( ((!\inst24|Mux4~0_combout\ & (!\inst24|Mux2~1_combout\ & !\inst24|Mux2~2_combout\))) # (\SelBus[1]~input_o\) ) ) ) # ( !\inst24|Add0~5_sumout\ & ( \inst20|Regist\(6) & ( 
-- ((!\inst24|Mux2~1_combout\ & !\inst24|Mux2~2_combout\)) # (\SelBus[1]~input_o\) ) ) ) # ( \inst24|Add0~5_sumout\ & ( !\inst20|Regist\(6) & ( (!\inst24|Mux4~0_combout\ & (!\inst24|Mux2~1_combout\ & (!\SelBus[1]~input_o\ & !\inst24|Mux2~2_combout\))) ) ) ) 
-- # ( !\inst24|Add0~5_sumout\ & ( !\inst20|Regist\(6) & ( (!\inst24|Mux2~1_combout\ & (!\SelBus[1]~input_o\ & !\inst24|Mux2~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000100000000000000011001111000011111000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|ALT_INV_Mux4~0_combout\,
	datab => \inst24|ALT_INV_Mux2~1_combout\,
	datac => \ALT_INV_SelBus[1]~input_o\,
	datad => \inst24|ALT_INV_Mux2~2_combout\,
	datae => \inst24|ALT_INV_Add0~5_sumout\,
	dataf => \inst20|ALT_INV_Regist\(6),
	combout => \inst20|Mux1~0_combout\);

-- Location: MLABCELL_X52_Y5_N45
\inst20|Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst20|Mux2~1_combout\ = ( \inst20|Regist\(6) & ( (\SelBus[0]~input_o\) # (\inst20|Regist\(4)) ) ) # ( !\inst20|Regist\(6) & ( (\inst20|Regist\(4) & !\SelBus[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|ALT_INV_Regist\(4),
	datac => \ALT_INV_SelBus[0]~input_o\,
	dataf => \inst20|ALT_INV_Regist\(6),
	combout => \inst20|Mux2~1_combout\);

-- Location: LABCELL_X51_Y5_N57
\inst24|Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|Mux3~1_combout\ = ( \AluSel[2]~input_o\ & ( (!\AluSel[0]~input_o\ & (!\AluSel[1]~input_o\ & (!\inst4|Regist\(5) $ (!\inst3|Regist\(5))))) ) ) # ( !\AluSel[2]~input_o\ & ( (\AluSel[1]~input_o\ & ((!\AluSel[0]~input_o\ & (\inst4|Regist\(5) & 
-- \inst3|Regist\(5))) # (\AluSel[0]~input_o\ & ((\inst3|Regist\(5)) # (\inst4|Regist\(5)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010011000000010001001100001000100000000000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AluSel[0]~input_o\,
	datab => \ALT_INV_AluSel[1]~input_o\,
	datac => \inst4|ALT_INV_Regist\(5),
	datad => \inst3|ALT_INV_Regist\(5),
	dataf => \ALT_INV_AluSel[2]~input_o\,
	combout => \inst24|Mux3~1_combout\);

-- Location: LABCELL_X51_Y5_N39
\inst24|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|Mux3~0_combout\ = ( \inst24|Add1~9_sumout\ & ( !\AluSel[2]~input_o\ $ (((\AluSel[1]~input_o\) # (\AluSel[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100101000011111010010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AluSel[0]~input_o\,
	datac => \ALT_INV_AluSel[2]~input_o\,
	datad => \ALT_INV_AluSel[1]~input_o\,
	dataf => \inst24|ALT_INV_Add1~9_sumout\,
	combout => \inst24|Mux3~0_combout\);

-- Location: LABCELL_X53_Y5_N6
\inst20|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst20|Mux2~0_combout\ = ( \inst24|Mux3~0_combout\ & ( \inst20|Regist\(5) & ( \SelBus[1]~input_o\ ) ) ) # ( !\inst24|Mux3~0_combout\ & ( \inst20|Regist\(5) & ( ((!\inst24|Mux3~1_combout\ & ((!\inst24|Mux4~0_combout\) # (!\inst24|Add0~9_sumout\)))) # 
-- (\SelBus[1]~input_o\) ) ) ) # ( !\inst24|Mux3~0_combout\ & ( !\inst20|Regist\(5) & ( (!\SelBus[1]~input_o\ & (!\inst24|Mux3~1_combout\ & ((!\inst24|Mux4~0_combout\) # (!\inst24|Add0~9_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000010000000000000000000000011110011101100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|ALT_INV_Mux4~0_combout\,
	datab => \ALT_INV_SelBus[1]~input_o\,
	datac => \inst24|ALT_INV_Mux3~1_combout\,
	datad => \inst24|ALT_INV_Add0~9_sumout\,
	datae => \inst24|ALT_INV_Mux3~0_combout\,
	dataf => \inst20|ALT_INV_Regist\(5),
	combout => \inst20|Mux2~0_combout\);

-- Location: LABCELL_X51_Y5_N27
\inst24|Mux3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|Mux3~2_combout\ = ( \inst24|Add1~9_sumout\ & ( (((\inst24|Mux4~0_combout\ & \inst24|Add0~9_sumout\)) # (\inst24|Mux3~1_combout\)) # (\inst24|Mux2~0_combout\) ) ) # ( !\inst24|Add1~9_sumout\ & ( ((\inst24|Mux4~0_combout\ & \inst24|Add0~9_sumout\)) 
-- # (\inst24|Mux3~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111111000000111111111101010111111111110101011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|ALT_INV_Mux2~0_combout\,
	datab => \inst24|ALT_INV_Mux4~0_combout\,
	datac => \inst24|ALT_INV_Add0~9_sumout\,
	datad => \inst24|ALT_INV_Mux3~1_combout\,
	dataf => \inst24|ALT_INV_Add1~9_sumout\,
	combout => \inst24|Mux3~2_combout\);

-- Location: LABCELL_X50_Y4_N36
\inst24|Mux4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|Mux4~2_combout\ = ( \inst4|Regist\(4) & ( \AluSel[2]~input_o\ & ( (!\AluSel[1]~input_o\ & (!\AluSel[0]~input_o\ & !\inst3|Regist\(4))) ) ) ) # ( !\inst4|Regist\(4) & ( \AluSel[2]~input_o\ & ( (!\AluSel[1]~input_o\ & (!\AluSel[0]~input_o\ & 
-- \inst3|Regist\(4))) ) ) ) # ( \inst4|Regist\(4) & ( !\AluSel[2]~input_o\ & ( (\AluSel[1]~input_o\ & ((\inst3|Regist\(4)) # (\AluSel[0]~input_o\))) ) ) ) # ( !\inst4|Regist\(4) & ( !\AluSel[2]~input_o\ & ( (\AluSel[1]~input_o\ & (\AluSel[0]~input_o\ & 
-- \inst3|Regist\(4))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000100010101010100000000100010001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AluSel[1]~input_o\,
	datab => \ALT_INV_AluSel[0]~input_o\,
	datad => \inst3|ALT_INV_Regist\(4),
	datae => \inst4|ALT_INV_Regist\(4),
	dataf => \ALT_INV_AluSel[2]~input_o\,
	combout => \inst24|Mux4~2_combout\);

-- Location: LABCELL_X51_Y5_N42
\inst24|Mux4~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|Mux4~3_combout\ = ( \inst24|Add0~13_sumout\ & ( (((\inst24|Mux2~0_combout\ & \inst24|Add1~13_sumout\)) # (\inst24|Mux4~2_combout\)) # (\inst24|Mux4~0_combout\) ) ) # ( !\inst24|Add0~13_sumout\ & ( ((\inst24|Mux2~0_combout\ & 
-- \inst24|Add1~13_sumout\)) # (\inst24|Mux4~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011111000011110101111100111111011111110011111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|ALT_INV_Mux2~0_combout\,
	datab => \inst24|ALT_INV_Mux4~0_combout\,
	datac => \inst24|ALT_INV_Mux4~2_combout\,
	datad => \inst24|ALT_INV_Add1~13_sumout\,
	dataf => \inst24|ALT_INV_Add0~13_sumout\,
	combout => \inst24|Mux4~3_combout\);

-- Location: MLABCELL_X52_Y5_N12
\inst20|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst20|Add0~13_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst24|Mux4~3_combout\)))) ) + ( !\inst20|Regist\(4) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst20|Add0~18\ ))
-- \inst20|Add0~14\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst24|Mux4~3_combout\)))) ) + ( !\inst20|Regist\(4) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst20|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000000110000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[3]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst24|ALT_INV_Mux4~3_combout\,
	dataf => \inst20|ALT_INV_Regist\(4),
	cin => \inst20|Add0~18\,
	sumout => \inst20|Add0~13_sumout\,
	cout => \inst20|Add0~14\);

-- Location: MLABCELL_X52_Y5_N15
\inst20|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst20|Add0~9_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst24|Mux3~2_combout\)))) ) + ( !\inst20|Regist\(5) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst20|Add0~14\ ))
-- \inst20|Add0~10\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst24|Mux3~2_combout\)))) ) + ( !\inst20|Regist\(5) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst20|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000000110000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[3]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst24|ALT_INV_Mux3~2_combout\,
	dataf => \inst20|ALT_INV_Regist\(5),
	cin => \inst20|Add0~14\,
	sumout => \inst20|Add0~9_sumout\,
	cout => \inst20|Add0~10\);

-- Location: LABCELL_X53_Y5_N12
\inst20|Mux2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst20|Mux2~2_combout\ = ( \inst20|Add0~9_sumout\ & ( (!\SelBus[2]~input_o\ & (((!\inst20|Mux2~0_combout\) # (\inst3|Regist[6]~0_combout\)))) # (\SelBus[2]~input_o\ & (\inst20|Mux2~1_combout\)) ) ) # ( !\inst20|Add0~9_sumout\ & ( (!\SelBus[2]~input_o\ & 
-- (((!\inst20|Mux2~0_combout\ & !\inst3|Regist[6]~0_combout\)))) # (\SelBus[2]~input_o\ & (\inst20|Mux2~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000001010101110000000101010111001111010101011100111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|ALT_INV_Mux2~1_combout\,
	datab => \inst20|ALT_INV_Mux2~0_combout\,
	datac => \inst3|ALT_INV_Regist[6]~0_combout\,
	datad => \ALT_INV_SelBus[2]~input_o\,
	dataf => \inst20|ALT_INV_Add0~9_sumout\,
	combout => \inst20|Mux2~2_combout\);

-- Location: FF_X53_Y5_N14
\inst20|Regist[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst20|Mux2~2_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst3|Regist[6]~1_combout\,
	ena => \inst20|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|Regist\(5));

-- Location: MLABCELL_X52_Y5_N39
\inst20|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst20|Mux1~1_combout\ = ( \SelBus[0]~input_o\ & ( \inst20|Regist\(7) ) ) # ( !\SelBus[0]~input_o\ & ( \inst20|Regist\(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst20|ALT_INV_Regist\(5),
	datad => \inst20|ALT_INV_Regist\(7),
	dataf => \ALT_INV_SelBus[0]~input_o\,
	combout => \inst20|Mux1~1_combout\);

-- Location: LABCELL_X51_Y5_N24
\inst24|Mux2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|Mux2~3_combout\ = ( \inst24|Add1~5_sumout\ & ( (((\inst24|Mux4~0_combout\ & \inst24|Add0~5_sumout\)) # (\inst24|Mux2~2_combout\)) # (\inst24|Mux2~0_combout\) ) ) # ( !\inst24|Add1~5_sumout\ & ( ((\inst24|Mux4~0_combout\ & \inst24|Add0~5_sumout\)) 
-- # (\inst24|Mux2~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111111000000111111111101010111111111110101011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|ALT_INV_Mux2~0_combout\,
	datab => \inst24|ALT_INV_Mux4~0_combout\,
	datac => \inst24|ALT_INV_Add0~5_sumout\,
	datad => \inst24|ALT_INV_Mux2~2_combout\,
	dataf => \inst24|ALT_INV_Add1~5_sumout\,
	combout => \inst24|Mux2~3_combout\);

-- Location: MLABCELL_X52_Y5_N18
\inst20|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst20|Add0~5_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst24|Mux2~3_combout\)))) ) + ( !\inst20|Regist\(6) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst20|Add0~10\ ))
-- \inst20|Add0~6\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst24|Mux2~3_combout\)))) ) + ( !\inst20|Regist\(6) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst20|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000000110000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[3]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst24|ALT_INV_Mux2~3_combout\,
	dataf => \inst20|ALT_INV_Regist\(6),
	cin => \inst20|Add0~10\,
	sumout => \inst20|Add0~5_sumout\,
	cout => \inst20|Add0~6\);

-- Location: LABCELL_X53_Y5_N39
\inst20|Mux1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst20|Mux1~2_combout\ = ( \inst20|Add0~5_sumout\ & ( (!\SelBus[2]~input_o\ & (((!\inst20|Mux1~0_combout\)) # (\inst3|Regist[6]~0_combout\))) # (\SelBus[2]~input_o\ & (((\inst20|Mux1~1_combout\)))) ) ) # ( !\inst20|Add0~5_sumout\ & ( 
-- (!\SelBus[2]~input_o\ & (!\inst3|Regist[6]~0_combout\ & (!\inst20|Mux1~0_combout\))) # (\SelBus[2]~input_o\ & (((\inst20|Mux1~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010110011100000001011001111000100111101111100010011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Regist[6]~0_combout\,
	datab => \ALT_INV_SelBus[2]~input_o\,
	datac => \inst20|ALT_INV_Mux1~0_combout\,
	datad => \inst20|ALT_INV_Mux1~1_combout\,
	dataf => \inst20|ALT_INV_Add0~5_sumout\,
	combout => \inst20|Mux1~2_combout\);

-- Location: FF_X53_Y5_N41
\inst20|Regist[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst20|Mux1~2_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst3|Regist[6]~1_combout\,
	ena => \inst20|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|Regist\(6));

-- Location: IOIBUF_X36_Y0_N1
\Fuente[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Fuente(6),
	o => \Fuente[6]~input_o\);

-- Location: LABCELL_X53_Y5_N54
\inst16|result[6]~276\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|result[6]~276_combout\ = ( \Fuente[6]~input_o\ & ( \inst8|Regist\(6) & ( (!\inst16|result[7]~269_combout\ & (!\inst16|_~15_combout\ & ((!\inst19|Regist\(6)) # (!\inst16|_~16_combout\)))) ) ) ) # ( !\Fuente[6]~input_o\ & ( \inst8|Regist\(6) & ( 
-- (!\inst16|_~15_combout\ & ((!\inst19|Regist\(6)) # (!\inst16|_~16_combout\))) ) ) ) # ( \Fuente[6]~input_o\ & ( !\inst8|Regist\(6) & ( (!\inst16|result[7]~269_combout\ & ((!\inst19|Regist\(6)) # (!\inst16|_~16_combout\))) ) ) ) # ( !\Fuente[6]~input_o\ & 
-- ( !\inst8|Regist\(6) & ( (!\inst19|Regist\(6)) # (!\inst16|_~16_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111001100101010101000100011110000110000001010000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_result[7]~269_combout\,
	datab => \inst19|ALT_INV_Regist\(6),
	datac => \inst16|ALT_INV__~15_combout\,
	datad => \inst16|ALT_INV__~16_combout\,
	datae => \ALT_INV_Fuente[6]~input_o\,
	dataf => \inst8|ALT_INV_Regist\(6),
	combout => \inst16|result[6]~276_combout\);

-- Location: IOIBUF_X68_Y0_N18
\Destino[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Destino(6),
	o => \Destino[6]~input_o\);

-- Location: LABCELL_X61_Y3_N9
\inst13|$00000|auto_generated|l1_w7_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\ = ( \inst16|result[7]~271_combout\ & ( (!\MUX_MAR~input_o\) # (\inst17|Regist\(7)) ) ) # ( !\inst16|result[7]~271_combout\ & ( (\MUX_MAR~input_o\ & \inst17|Regist\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MUX_MAR~input_o\,
	datac => \inst17|ALT_INV_Regist\(7),
	dataf => \inst16|ALT_INV_result[7]~271_combout\,
	combout => \inst13|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X61_Y3_N21
\inst1|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux0~0_combout\ = ( \inst13|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\ & ( (!\inst18|Regist[0]~2_combout\ & (((!\inst1|Regist\(7)) # (\inst19|Regist[7]~0_combout\)))) # (\inst18|Regist[0]~2_combout\ & (\inst1|Regist\(6) & 
-- (\inst19|Regist[7]~0_combout\))) ) ) # ( !\inst13|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\ & ( (!\inst18|Regist[0]~2_combout\ & (((!\inst19|Regist[7]~0_combout\ & !\inst1|Regist\(7))))) # (\inst18|Regist[0]~2_combout\ & (\inst1|Regist\(6) & 
-- (\inst19|Regist[7]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000100000001101000010000000110101011000010111010101100001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|ALT_INV_Regist[0]~2_combout\,
	datab => \inst1|ALT_INV_Regist\(6),
	datac => \inst19|ALT_INV_Regist[7]~0_combout\,
	datad => \inst1|ALT_INV_Regist\(7),
	dataf => \inst13|$00000|auto_generated|ALT_INV_l1_w7_n0_mux_dataout~0_combout\,
	combout => \inst1|Mux0~0_combout\);

-- Location: LABCELL_X61_Y4_N54
\inst13|$00000|auto_generated|l1_w6_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\ = ( \MUX_MAR~input_o\ & ( \inst16|result[6]~277_combout\ & ( \inst17|Regist\(6) ) ) ) # ( !\MUX_MAR~input_o\ & ( \inst16|result[6]~277_combout\ ) ) # ( \MUX_MAR~input_o\ & ( 
-- !\inst16|result[6]~277_combout\ & ( \inst17|Regist\(6) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst17|ALT_INV_Regist\(6),
	datae => \ALT_INV_MUX_MAR~input_o\,
	dataf => \inst16|ALT_INV_result[6]~277_combout\,
	combout => \inst13|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X61_Y4_N3
\inst13|$00000|auto_generated|l1_w4_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\ = ( \inst17|Regist\(4) & ( \inst16|result[4]~289_combout\ ) ) # ( !\inst17|Regist\(4) & ( \inst16|result[4]~289_combout\ & ( !\MUX_MAR~input_o\ ) ) ) # ( \inst17|Regist\(4) & ( 
-- !\inst16|result[4]~289_combout\ & ( \MUX_MAR~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010110101010101010101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MUX_MAR~input_o\,
	datae => \inst17|ALT_INV_Regist\(4),
	dataf => \inst16|ALT_INV_result[4]~289_combout\,
	combout => \inst13|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X57_Y3_N15
\inst13|$00000|auto_generated|l1_w3_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\ = ( \inst16|result[3]~295_combout\ & ( (!\MUX_MAR~input_o\) # (\inst17|Regist\(3)) ) ) # ( !\inst16|result[3]~295_combout\ & ( (\MUX_MAR~input_o\ & \inst17|Regist\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MUX_MAR~input_o\,
	datac => \inst17|ALT_INV_Regist\(3),
	dataf => \inst16|ALT_INV_result[3]~295_combout\,
	combout => \inst13|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X61_Y4_N18
\inst13|$00000|auto_generated|l1_w2_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ = ( \inst16|result[2]~301_combout\ & ( (!\MUX_MAR~input_o\) # (\inst17|Regist\(2)) ) ) # ( !\inst16|result[2]~301_combout\ & ( (\inst17|Regist\(2) & \MUX_MAR~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst17|ALT_INV_Regist\(2),
	datad => \ALT_INV_MUX_MAR~input_o\,
	dataf => \inst16|ALT_INV_result[2]~301_combout\,
	combout => \inst13|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X61_Y4_N36
\inst1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add0~21_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst13|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\)))) ) + ( !\inst1|Regist\(2) $ (((!\SelBus[1]~input_o\) # 
-- (!\SelBus[3]~input_o\))) ) + ( \inst1|Add0~26\ ))
-- \inst1|Add0~22\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst13|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\)))) ) + ( !\inst1|Regist\(2) $ (((!\SelBus[1]~input_o\) # 
-- (!\SelBus[3]~input_o\))) ) + ( \inst1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000000110000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[3]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst13|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\,
	dataf => \inst1|ALT_INV_Regist\(2),
	cin => \inst1|Add0~26\,
	sumout => \inst1|Add0~21_sumout\,
	cout => \inst1|Add0~22\);

-- Location: LABCELL_X61_Y4_N39
\inst1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add0~17_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst13|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\)))) ) + ( !\inst1|Regist\(3) $ (((!\SelBus[1]~input_o\) # 
-- (!\SelBus[3]~input_o\))) ) + ( \inst1|Add0~22\ ))
-- \inst1|Add0~18\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst13|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\)))) ) + ( !\inst1|Regist\(3) $ (((!\SelBus[1]~input_o\) # 
-- (!\SelBus[3]~input_o\))) ) + ( \inst1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000000110000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[3]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst13|$00000|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\,
	dataf => \inst1|ALT_INV_Regist\(3),
	cin => \inst1|Add0~22\,
	sumout => \inst1|Add0~17_sumout\,
	cout => \inst1|Add0~18\);

-- Location: LABCELL_X61_Y4_N42
\inst1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add0~13_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst13|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\)))) ) + ( !\inst1|Regist\(4) $ (((!\SelBus[1]~input_o\) # 
-- (!\SelBus[3]~input_o\))) ) + ( \inst1|Add0~18\ ))
-- \inst1|Add0~14\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst13|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\)))) ) + ( !\inst1|Regist\(4) $ (((!\SelBus[1]~input_o\) # 
-- (!\SelBus[3]~input_o\))) ) + ( \inst1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000000110000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[3]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst13|$00000|auto_generated|ALT_INV_l1_w4_n0_mux_dataout~0_combout\,
	dataf => \inst1|ALT_INV_Regist\(4),
	cin => \inst1|Add0~18\,
	sumout => \inst1|Add0~13_sumout\,
	cout => \inst1|Add0~14\);

-- Location: LABCELL_X61_Y4_N45
\inst1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add0~9_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst13|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\)))) ) + ( !\inst1|Regist\(5) $ (((!\SelBus[1]~input_o\) # 
-- (!\SelBus[3]~input_o\))) ) + ( \inst1|Add0~14\ ))
-- \inst1|Add0~10\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst13|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\)))) ) + ( !\inst1|Regist\(5) $ (((!\SelBus[1]~input_o\) # 
-- (!\SelBus[3]~input_o\))) ) + ( \inst1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000000110000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[3]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst13|$00000|auto_generated|ALT_INV_l1_w5_n0_mux_dataout~0_combout\,
	dataf => \inst1|ALT_INV_Regist\(5),
	cin => \inst1|Add0~14\,
	sumout => \inst1|Add0~9_sumout\,
	cout => \inst1|Add0~10\);

-- Location: LABCELL_X61_Y4_N48
\inst1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add0~5_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst13|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\)))) ) + ( !\inst1|Regist\(6) $ (((!\SelBus[1]~input_o\) # 
-- (!\SelBus[3]~input_o\))) ) + ( \inst1|Add0~10\ ))
-- \inst1|Add0~6\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst13|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\)))) ) + ( !\inst1|Regist\(6) $ (((!\SelBus[1]~input_o\) # 
-- (!\SelBus[3]~input_o\))) ) + ( \inst1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000000110000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[3]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst13|$00000|auto_generated|ALT_INV_l1_w6_n0_mux_dataout~0_combout\,
	dataf => \inst1|ALT_INV_Regist\(6),
	cin => \inst1|Add0~10\,
	sumout => \inst1|Add0~5_sumout\,
	cout => \inst1|Add0~6\);

-- Location: LABCELL_X61_Y4_N51
\inst1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add0~1_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst13|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\)))) ) + ( !\inst1|Regist\(7) $ (((!\SelBus[1]~input_o\) # 
-- (!\SelBus[3]~input_o\))) ) + ( \inst1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000000110000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[3]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst13|$00000|auto_generated|ALT_INV_l1_w7_n0_mux_dataout~0_combout\,
	dataf => \inst1|ALT_INV_Regist\(7),
	cin => \inst1|Add0~6\,
	sumout => \inst1|Add0~1_sumout\);

-- Location: LABCELL_X61_Y4_N24
\inst1|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux0~1_combout\ = ( \inst1|Add0~1_sumout\ & ( (((\inst19|Regist[7]~1_combout\ & \inst1|Regist\(0))) # (\inst18|Regist[0]~0_combout\)) # (\inst1|Mux0~0_combout\) ) ) # ( !\inst1|Add0~1_sumout\ & ( (!\inst18|Regist[0]~0_combout\ & 
-- (((\inst19|Regist[7]~1_combout\ & \inst1|Regist\(0))) # (\inst1|Mux0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011100000000010101110000000001010111111111110101011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_Mux0~0_combout\,
	datab => \inst19|ALT_INV_Regist[7]~1_combout\,
	datac => \inst1|ALT_INV_Regist\(0),
	datad => \inst18|ALT_INV_Regist[0]~0_combout\,
	dataf => \inst1|ALT_INV_Add0~1_sumout\,
	combout => \inst1|Mux0~1_combout\);

-- Location: FF_X61_Y4_N26
\inst1|Regist[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst1|Mux0~1_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst19|Regist[7]~2_combout\,
	ena => \inst1|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Regist\(7));

-- Location: LABCELL_X62_Y4_N51
\inst1|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux1~1_combout\ = ( \inst1|Regist\(7) & ( (!\SelBus[2]~input_o\ & (((!\SelBus[1]~input_o\)))) # (\SelBus[2]~input_o\ & (((\SelBus[0]~input_o\)) # (\inst1|Regist\(5)))) ) ) # ( !\inst1|Regist\(7) & ( (!\SelBus[2]~input_o\ & 
-- (((!\SelBus[1]~input_o\)))) # (\SelBus[2]~input_o\ & (\inst1|Regist\(5) & ((!\SelBus[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100010111000000110001011100000011000101110011111100010111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_Regist\(5),
	datab => \ALT_INV_SelBus[1]~input_o\,
	datac => \ALT_INV_SelBus[2]~input_o\,
	datad => \ALT_INV_SelBus[0]~input_o\,
	dataf => \inst1|ALT_INV_Regist\(7),
	combout => \inst1|Mux1~1_combout\);

-- Location: LABCELL_X62_Y4_N12
\inst1|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux1~0_combout\ = ( \inst1|Regist\(6) & ( \inst1|Add0~5_sumout\ & ( (!\SelBus[2]~input_o\ & (((\inst1|Mux1~1_combout\ & \inst13|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\)) # (\inst3|Regist[6]~0_combout\))) # (\SelBus[2]~input_o\ & 
-- (((\inst1|Mux1~1_combout\)))) ) ) ) # ( !\inst1|Regist\(6) & ( \inst1|Add0~5_sumout\ & ( (!\SelBus[2]~input_o\ & (((!\inst1|Mux1~1_combout\) # (\inst13|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\)) # (\inst3|Regist[6]~0_combout\))) # 
-- (\SelBus[2]~input_o\ & (((\inst1|Mux1~1_combout\)))) ) ) ) # ( \inst1|Regist\(6) & ( !\inst1|Add0~5_sumout\ & ( (\inst1|Mux1~1_combout\ & (((!\inst3|Regist[6]~0_combout\ & \inst13|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\)) # 
-- (\SelBus[2]~input_o\))) ) ) ) # ( !\inst1|Regist\(6) & ( !\inst1|Add0~5_sumout\ & ( (!\SelBus[2]~input_o\ & (!\inst3|Regist[6]~0_combout\ & ((!\inst1|Mux1~1_combout\) # (\inst13|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\)))) # 
-- (\SelBus[2]~input_o\ & (((\inst1|Mux1~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001110001011000000110000101111000111110011110100011101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Regist[6]~0_combout\,
	datab => \ALT_INV_SelBus[2]~input_o\,
	datac => \inst1|ALT_INV_Mux1~1_combout\,
	datad => \inst13|$00000|auto_generated|ALT_INV_l1_w6_n0_mux_dataout~0_combout\,
	datae => \inst1|ALT_INV_Regist\(6),
	dataf => \inst1|ALT_INV_Add0~5_sumout\,
	combout => \inst1|Mux1~0_combout\);

-- Location: FF_X62_Y4_N14
\inst1|Regist[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst1|Mux1~0_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst3|Regist[6]~1_combout\,
	ena => \inst1|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Regist\(6));

-- Location: LABCELL_X62_Y4_N30
\inst16|result[6]~275\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|result[6]~275_combout\ = ( \inst16|result[6]~277_combout\ & ( \inst1|Regist\(6) & ( (!\inst16|_~13_combout\ & (!\inst16|_~12_combout\ & ((!\Destino[6]~input_o\) # (!\inst16|_~14_combout\)))) ) ) ) # ( !\inst16|result[6]~277_combout\ & ( 
-- \inst1|Regist\(6) & ( (!\inst16|_~12_combout\ & ((!\Destino[6]~input_o\) # (!\inst16|_~14_combout\))) ) ) ) # ( \inst16|result[6]~277_combout\ & ( !\inst1|Regist\(6) & ( (!\inst16|_~13_combout\ & ((!\Destino[6]~input_o\) # (!\inst16|_~14_combout\))) ) ) ) 
-- # ( !\inst16|result[6]~277_combout\ & ( !\inst1|Regist\(6) & ( (!\Destino[6]~input_o\) # (!\inst16|_~14_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101110111000001110000011101110000000001110000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Destino[6]~input_o\,
	datab => \inst16|ALT_INV__~14_combout\,
	datac => \inst16|ALT_INV__~13_combout\,
	datad => \inst16|ALT_INV__~12_combout\,
	datae => \inst16|ALT_INV_result[6]~277_combout\,
	dataf => \inst1|ALT_INV_Regist\(6),
	combout => \inst16|result[6]~275_combout\);

-- Location: LABCELL_X53_Y5_N24
\inst16|result[6]~318\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|result[6]~318_combout\ = ( \inst16|result[6]~276_combout\ & ( \inst16|result[6]~275_combout\ & ( (!\inst16|_~9_combout\ & (((!\inst16|_~10_combout\) # (!\inst20|Regist\(6))))) # (\inst16|_~9_combout\ & (!\inst10|Regist\(6) & 
-- ((!\inst16|_~10_combout\) # (!\inst20|Regist\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001110111011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV__~9_combout\,
	datab => \inst10|ALT_INV_Regist\(6),
	datac => \inst16|ALT_INV__~10_combout\,
	datad => \inst20|ALT_INV_Regist\(6),
	datae => \inst16|ALT_INV_result[6]~276_combout\,
	dataf => \inst16|ALT_INV_result[6]~275_combout\,
	combout => \inst16|result[6]~318_combout\);

-- Location: LABCELL_X60_Y4_N18
\inst22|$00000|auto_generated|l1_w1_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst22|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ = ( \inst1|Regist\(1) & ( \MUX_RAM~input_o\ & ( \inst2|Regist\(1) ) ) ) # ( !\inst1|Regist\(1) & ( \MUX_RAM~input_o\ & ( \inst2|Regist\(1) ) ) ) # ( \inst1|Regist\(1) & ( !\MUX_RAM~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_Regist\(1),
	datae => \inst1|ALT_INV_Regist\(1),
	dataf => \ALT_INV_MUX_RAM~input_o\,
	combout => \inst22|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X60_Y4_N12
\inst22|$00000|auto_generated|l1_w2_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst22|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ = ( \inst1|Regist\(2) & ( (!\MUX_RAM~input_o\) # (\inst2|Regist\(2)) ) ) # ( !\inst1|Regist\(2) & ( (\MUX_RAM~input_o\ & \inst2|Regist\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_MUX_RAM~input_o\,
	datad => \inst2|ALT_INV_Regist\(2),
	dataf => \inst1|ALT_INV_Regist\(2),
	combout => \inst22|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X62_Y3_N21
\inst22|$00000|auto_generated|l1_w3_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst22|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\ = ( \MUX_RAM~input_o\ & ( \inst2|Regist\(3) ) ) # ( !\MUX_RAM~input_o\ & ( \inst1|Regist\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_Regist\(3),
	datad => \inst1|ALT_INV_Regist\(3),
	dataf => \ALT_INV_MUX_RAM~input_o\,
	combout => \inst22|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X62_Y3_N36
\inst22|$00000|auto_generated|l1_w4_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst22|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\ = ( \inst1|Regist\(4) & ( \inst2|Regist\(4) ) ) # ( !\inst1|Regist\(4) & ( \inst2|Regist\(4) & ( \MUX_RAM~input_o\ ) ) ) # ( \inst1|Regist\(4) & ( !\inst2|Regist\(4) & ( !\MUX_RAM~input_o\ ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_MUX_RAM~input_o\,
	datae => \inst1|ALT_INV_Regist\(4),
	dataf => \inst2|ALT_INV_Regist\(4),
	combout => \inst22|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X60_Y4_N24
\inst22|$00000|auto_generated|l1_w5_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst22|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\ = ( \inst1|Regist\(5) & ( (!\MUX_RAM~input_o\) # (\inst2|Regist\(5)) ) ) # ( !\inst1|Regist\(5) & ( (\inst2|Regist\(5) & \MUX_RAM~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_Regist\(5),
	datad => \ALT_INV_MUX_RAM~input_o\,
	dataf => \inst1|ALT_INV_Regist\(5),
	combout => \inst22|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X60_Y4_N6
\inst22|$00000|auto_generated|l1_w6_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst22|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\ = ( \inst2|Regist\(6) & ( (\inst1|Regist\(6)) # (\MUX_RAM~input_o\) ) ) # ( !\inst2|Regist\(6) & ( (!\MUX_RAM~input_o\ & \inst1|Regist\(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_MUX_RAM~input_o\,
	datad => \inst1|ALT_INV_Regist\(6),
	dataf => \inst2|ALT_INV_Regist\(6),
	combout => \inst22|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X60_Y4_N36
\inst22|$00000|auto_generated|l1_w7_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst22|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\ = ( \inst1|Regist\(7) & ( (!\MUX_RAM~input_o\) # (\inst2|Regist\(7)) ) ) # ( !\inst1|Regist\(7) & ( (\inst2|Regist\(7) & \MUX_RAM~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_Regist\(7),
	datad => \ALT_INV_MUX_RAM~input_o\,
	dataf => \inst1|ALT_INV_Regist\(7),
	combout => \inst22|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X55_Y2_N39
\inst7|Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|Mux2~1_combout\ = ( \SelBus[0]~input_o\ & ( (!\SelBus[2]~input_o\ & ((!\SelBus[1]~input_o\))) # (\SelBus[2]~input_o\ & (\inst7|Regist\(6))) ) ) # ( !\SelBus[0]~input_o\ & ( (!\SelBus[2]~input_o\ & (!\SelBus[1]~input_o\)) # (\SelBus[2]~input_o\ & 
-- ((\inst7|Regist\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000001111110011000101010111001100000011111100110001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|ALT_INV_Regist\(6),
	datab => \ALT_INV_SelBus[1]~input_o\,
	datac => \inst7|ALT_INV_Regist\(4),
	datad => \ALT_INV_SelBus[2]~input_o\,
	datae => \ALT_INV_SelBus[0]~input_o\,
	combout => \inst7|Mux2~1_combout\);

-- Location: M10K_X58_Y4_N0
\inst|altsyncram_component|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RP:inst|altsyncram:altsyncram_component|altsyncram_rev3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 20,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 8,
	port_b_data_width => 20,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \WR~input_o\,
	portare => VCC,
	clk0 => \CLK~inputCLKENA0_outclk\,
	portadatain => \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LABCELL_X56_Y2_N57
\inst23|$00000|auto_generated|l1_w5_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst23|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\ = ( \inst16|result[5]~283_combout\ & ( (\inst|altsyncram_component|auto_generated|q_a\(5)) # (\MUX_MDR~input_o\) ) ) # ( !\inst16|result[5]~283_combout\ & ( (!\MUX_MDR~input_o\ & 
-- \inst|altsyncram_component|auto_generated|q_a\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_MUX_MDR~input_o\,
	datac => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	dataf => \inst16|ALT_INV_result[5]~283_combout\,
	combout => \inst23|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X56_Y4_N33
\inst23|$00000|auto_generated|l1_w2_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst23|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ = ( \inst16|result[2]~301_combout\ & ( (\MUX_MDR~input_o\) # (\inst|altsyncram_component|auto_generated|q_a\(2)) ) ) # ( !\inst16|result[2]~301_combout\ & ( 
-- (\inst|altsyncram_component|auto_generated|q_a\(2) & !\MUX_MDR~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	datad => \ALT_INV_MUX_MDR~input_o\,
	dataf => \inst16|ALT_INV_result[2]~301_combout\,
	combout => \inst23|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X56_Y2_N39
\inst23|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst23|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst16|result[0]~313_combout\ & ( (\inst|altsyncram_component|auto_generated|q_a\(0)) # (\MUX_MDR~input_o\) ) ) # ( !\inst16|result[0]~313_combout\ & ( (!\MUX_MDR~input_o\ & 
-- \inst|altsyncram_component|auto_generated|q_a\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_MUX_MDR~input_o\,
	datac => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	dataf => \inst16|ALT_INV_result[0]~313_combout\,
	combout => \inst23|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X56_Y2_N0
\inst7|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|Add0~29_sumout\ = SUM(( (!\SelBus[3]~input_o\) # ((\inst23|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\) # (\SelBus[1]~input_o\)) ) + ( !\inst7|Regist\(0) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( !VCC ))
-- \inst7|Add0~30\ = CARRY(( (!\SelBus[3]~input_o\) # ((\inst23|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\) # (\SelBus[1]~input_o\)) ) + ( !\inst7|Regist\(0) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111000011110000100000000000000001011101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[3]~input_o\,
	datab => \ALT_INV_SelBus[1]~input_o\,
	datac => \inst7|ALT_INV_Regist\(0),
	datad => \inst23|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	cin => GND,
	sumout => \inst7|Add0~29_sumout\,
	cout => \inst7|Add0~30\);

-- Location: LABCELL_X56_Y2_N3
\inst7|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|Add0~25_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst23|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\)))) ) + ( !\inst7|Regist\(1) $ (((!\SelBus[3]~input_o\) # 
-- (!\SelBus[1]~input_o\))) ) + ( \inst7|Add0~30\ ))
-- \inst7|Add0~26\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst23|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\)))) ) + ( !\inst7|Regist\(1) $ (((!\SelBus[3]~input_o\) # 
-- (!\SelBus[1]~input_o\))) ) + ( \inst7|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000000101001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[3]~input_o\,
	datab => \ALT_INV_SelBus[1]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst23|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\,
	dataf => \inst7|ALT_INV_Regist\(1),
	cin => \inst7|Add0~30\,
	sumout => \inst7|Add0~25_sumout\,
	cout => \inst7|Add0~26\);

-- Location: LABCELL_X56_Y2_N6
\inst7|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|Add0~21_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\)) # (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst23|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\)))) ) + ( !\inst7|Regist\(2) $ (((!\SelBus[3]~input_o\) # 
-- (!\SelBus[1]~input_o\))) ) + ( \inst7|Add0~26\ ))
-- \inst7|Add0~22\ = CARRY(( (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\)) # (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst23|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\)))) ) + ( !\inst7|Regist\(2) $ (((!\SelBus[3]~input_o\) # 
-- (!\SelBus[1]~input_o\))) ) + ( \inst7|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000010100000000000000000010001001110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[3]~input_o\,
	datab => \ALT_INV_SelBus[0]~input_o\,
	datac => \ALT_INV_SelBus[1]~input_o\,
	datad => \inst23|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\,
	dataf => \inst7|ALT_INV_Regist\(2),
	cin => \inst7|Add0~26\,
	sumout => \inst7|Add0~21_sumout\,
	cout => \inst7|Add0~22\);

-- Location: LABCELL_X56_Y2_N9
\inst7|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|Add0~17_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\)) # (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst23|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\)))) ) + ( !\inst7|Regist\(3) $ (((!\SelBus[3]~input_o\) # 
-- (!\SelBus[1]~input_o\))) ) + ( \inst7|Add0~22\ ))
-- \inst7|Add0~18\ = CARRY(( (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\)) # (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst23|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\)))) ) + ( !\inst7|Regist\(3) $ (((!\SelBus[3]~input_o\) # 
-- (!\SelBus[1]~input_o\))) ) + ( \inst7|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000010100000000000000000010001001110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[3]~input_o\,
	datab => \ALT_INV_SelBus[0]~input_o\,
	datac => \ALT_INV_SelBus[1]~input_o\,
	datad => \inst23|$00000|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\,
	dataf => \inst7|ALT_INV_Regist\(3),
	cin => \inst7|Add0~22\,
	sumout => \inst7|Add0~17_sumout\,
	cout => \inst7|Add0~18\);

-- Location: LABCELL_X56_Y2_N12
\inst7|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|Add0~13_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\)) # (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst23|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\)))) ) + ( !\inst7|Regist\(4) $ (((!\SelBus[3]~input_o\) # 
-- (!\SelBus[1]~input_o\))) ) + ( \inst7|Add0~18\ ))
-- \inst7|Add0~14\ = CARRY(( (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\)) # (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst23|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\)))) ) + ( !\inst7|Regist\(4) $ (((!\SelBus[3]~input_o\) # 
-- (!\SelBus[1]~input_o\))) ) + ( \inst7|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000010100000000000000000010001001110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[3]~input_o\,
	datab => \ALT_INV_SelBus[0]~input_o\,
	datac => \ALT_INV_SelBus[1]~input_o\,
	datad => \inst23|$00000|auto_generated|ALT_INV_l1_w4_n0_mux_dataout~0_combout\,
	dataf => \inst7|ALT_INV_Regist\(4),
	cin => \inst7|Add0~18\,
	sumout => \inst7|Add0~13_sumout\,
	cout => \inst7|Add0~14\);

-- Location: LABCELL_X56_Y2_N15
\inst7|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|Add0~9_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\)) # (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst23|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\)))) ) + ( !\inst7|Regist\(5) $ (((!\SelBus[3]~input_o\) # 
-- (!\SelBus[1]~input_o\))) ) + ( \inst7|Add0~14\ ))
-- \inst7|Add0~10\ = CARRY(( (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\)) # (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst23|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\)))) ) + ( !\inst7|Regist\(5) $ (((!\SelBus[3]~input_o\) # 
-- (!\SelBus[1]~input_o\))) ) + ( \inst7|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000010100000000000000000010001001110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[3]~input_o\,
	datab => \ALT_INV_SelBus[0]~input_o\,
	datac => \ALT_INV_SelBus[1]~input_o\,
	datad => \inst23|$00000|auto_generated|ALT_INV_l1_w5_n0_mux_dataout~0_combout\,
	dataf => \inst7|ALT_INV_Regist\(5),
	cin => \inst7|Add0~14\,
	sumout => \inst7|Add0~9_sumout\,
	cout => \inst7|Add0~10\);

-- Location: LABCELL_X56_Y2_N42
\inst7|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|Mux2~0_combout\ = ( \inst7|Regist\(5) & ( \inst7|Add0~9_sumout\ & ( (!\SelBus[2]~input_o\ & (((\inst7|Mux2~1_combout\ & \inst23|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\)) # (\inst3|Regist[6]~0_combout\))) # (\SelBus[2]~input_o\ & 
-- (\inst7|Mux2~1_combout\)) ) ) ) # ( !\inst7|Regist\(5) & ( \inst7|Add0~9_sumout\ & ( (!\inst7|Mux2~1_combout\ & (!\SelBus[2]~input_o\)) # (\inst7|Mux2~1_combout\ & (((\inst23|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\) # 
-- (\inst3|Regist[6]~0_combout\)) # (\SelBus[2]~input_o\))) ) ) ) # ( \inst7|Regist\(5) & ( !\inst7|Add0~9_sumout\ & ( (\inst7|Mux2~1_combout\ & (((!\inst3|Regist[6]~0_combout\ & \inst23|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\)) # 
-- (\SelBus[2]~input_o\))) ) ) ) # ( !\inst7|Regist\(5) & ( !\inst7|Add0~9_sumout\ & ( (!\SelBus[2]~input_o\ & (!\inst3|Regist[6]~0_combout\ & ((!\inst7|Mux2~1_combout\) # (\inst23|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\)))) # 
-- (\SelBus[2]~input_o\ & (\inst7|Mux2~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000111010001000100010101000110011101110111010001110101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|ALT_INV_Mux2~1_combout\,
	datab => \ALT_INV_SelBus[2]~input_o\,
	datac => \inst3|ALT_INV_Regist[6]~0_combout\,
	datad => \inst23|$00000|auto_generated|ALT_INV_l1_w5_n0_mux_dataout~0_combout\,
	datae => \inst7|ALT_INV_Regist\(5),
	dataf => \inst7|ALT_INV_Add0~9_sumout\,
	combout => \inst7|Mux2~0_combout\);

-- Location: LABCELL_X56_Y3_N27
\inst7|Regist[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|Regist[6]~0_combout\ = ( !\SelRegD[0]~input_o\ & ( (!\SelRegD[2]~input_o\ & (!\SelRegD[1]~input_o\ & (\inst8|Regist[1]~0_combout\ & \SelRegD[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelRegD[2]~input_o\,
	datab => \ALT_INV_SelRegD[1]~input_o\,
	datac => \inst8|ALT_INV_Regist[1]~0_combout\,
	datad => \ALT_INV_SelRegD[3]~input_o\,
	dataf => \ALT_INV_SelRegD[0]~input_o\,
	combout => \inst7|Regist[6]~0_combout\);

-- Location: FF_X56_Y2_N44
\inst7|Regist[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst7|Mux2~0_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst3|Regist[6]~1_combout\,
	ena => \inst7|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|Regist\(5));

-- Location: LABCELL_X57_Y2_N6
\inst23|$00000|auto_generated|l1_w4_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst23|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\ = ( \inst|altsyncram_component|auto_generated|q_a\(4) & ( \inst16|result[4]~289_combout\ ) ) # ( !\inst|altsyncram_component|auto_generated|q_a\(4) & ( \inst16|result[4]~289_combout\ & ( 
-- \MUX_MDR~input_o\ ) ) ) # ( \inst|altsyncram_component|auto_generated|q_a\(4) & ( !\inst16|result[4]~289_combout\ & ( !\MUX_MDR~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_MUX_MDR~input_o\,
	datae => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	dataf => \inst16|ALT_INV_result[4]~289_combout\,
	combout => \inst23|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X57_Y2_N12
\inst7|Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|Mux3~1_combout\ = ( \SelBus[2]~input_o\ & ( \inst7|Regist\(5) & ( (\SelBus[0]~input_o\) # (\inst7|Regist\(3)) ) ) ) # ( !\SelBus[2]~input_o\ & ( \inst7|Regist\(5) & ( !\SelBus[1]~input_o\ ) ) ) # ( \SelBus[2]~input_o\ & ( !\inst7|Regist\(5) & ( 
-- (\inst7|Regist\(3) & !\SelBus[0]~input_o\) ) ) ) # ( !\SelBus[2]~input_o\ & ( !\inst7|Regist\(5) & ( !\SelBus[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010001100000011000010101010101010100011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \inst7|ALT_INV_Regist\(3),
	datac => \ALT_INV_SelBus[0]~input_o\,
	datae => \ALT_INV_SelBus[2]~input_o\,
	dataf => \inst7|ALT_INV_Regist\(5),
	combout => \inst7|Mux3~1_combout\);

-- Location: LABCELL_X56_Y2_N24
\inst7|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|Mux3~0_combout\ = ( \inst7|Regist\(4) & ( \inst7|Add0~13_sumout\ & ( (!\SelBus[2]~input_o\ & (((\inst23|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\ & \inst7|Mux3~1_combout\)) # (\inst3|Regist[6]~0_combout\))) # (\SelBus[2]~input_o\ & 
-- (((\inst7|Mux3~1_combout\)))) ) ) ) # ( !\inst7|Regist\(4) & ( \inst7|Add0~13_sumout\ & ( (!\SelBus[2]~input_o\ & (((!\inst7|Mux3~1_combout\) # (\inst23|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\)) # (\inst3|Regist[6]~0_combout\))) # 
-- (\SelBus[2]~input_o\ & (((\inst7|Mux3~1_combout\)))) ) ) ) # ( \inst7|Regist\(4) & ( !\inst7|Add0~13_sumout\ & ( (\inst7|Mux3~1_combout\ & (((!\inst3|Regist[6]~0_combout\ & \inst23|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\)) # 
-- (\SelBus[2]~input_o\))) ) ) ) # ( !\inst7|Regist\(4) & ( !\inst7|Add0~13_sumout\ & ( (!\SelBus[2]~input_o\ & (!\inst3|Regist[6]~0_combout\ & ((!\inst7|Mux3~1_combout\) # (\inst23|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\)))) # 
-- (\SelBus[2]~input_o\ & (((\inst7|Mux3~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100000111011000000000011101111001100011111110100010001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Regist[6]~0_combout\,
	datab => \ALT_INV_SelBus[2]~input_o\,
	datac => \inst23|$00000|auto_generated|ALT_INV_l1_w4_n0_mux_dataout~0_combout\,
	datad => \inst7|ALT_INV_Mux3~1_combout\,
	datae => \inst7|ALT_INV_Regist\(4),
	dataf => \inst7|ALT_INV_Add0~13_sumout\,
	combout => \inst7|Mux3~0_combout\);

-- Location: FF_X56_Y2_N26
\inst7|Regist[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst7|Mux3~0_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst3|Regist[6]~1_combout\,
	ena => \inst7|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|Regist\(4));

-- Location: LABCELL_X57_Y2_N54
\inst23|$00000|auto_generated|l1_w3_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst23|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\ = ( \inst|altsyncram_component|auto_generated|q_a\(3) & ( \inst16|result[3]~295_combout\ ) ) # ( !\inst|altsyncram_component|auto_generated|q_a\(3) & ( \inst16|result[3]~295_combout\ & ( 
-- \MUX_MDR~input_o\ ) ) ) # ( \inst|altsyncram_component|auto_generated|q_a\(3) & ( !\inst16|result[3]~295_combout\ & ( !\MUX_MDR~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_MUX_MDR~input_o\,
	datae => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	dataf => \inst16|ALT_INV_result[3]~295_combout\,
	combout => \inst23|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X57_Y2_N27
\inst7|Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|Mux4~1_combout\ = ( \inst23|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\ & ( \inst7|Regist\(3) & ( !\SelBus[1]~input_o\ ) ) ) # ( \inst23|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\ & ( !\inst7|Regist\(3) ) ) # ( 
-- !\inst23|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\ & ( !\inst7|Regist\(3) & ( \SelBus[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101111111111111111100000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datae => \inst23|$00000|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\,
	dataf => \inst7|ALT_INV_Regist\(3),
	combout => \inst7|Mux4~1_combout\);

-- Location: LABCELL_X57_Y2_N45
\inst7|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|Mux4~0_combout\ = ( \inst7|Regist\(2) & ( (!\SelBus[0]~input_o\) # (\inst7|Regist\(4)) ) ) # ( !\inst7|Regist\(2) & ( (\SelBus[0]~input_o\ & \inst7|Regist\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst7|ALT_INV_Regist\(4),
	dataf => \inst7|ALT_INV_Regist\(2),
	combout => \inst7|Mux4~0_combout\);

-- Location: LABCELL_X56_Y2_N51
\inst7|Mux4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|Mux4~2_combout\ = ( \inst7|Mux4~0_combout\ & ( ((!\inst3|Regist[6]~0_combout\ & ((\inst7|Mux4~1_combout\))) # (\inst3|Regist[6]~0_combout\ & (\inst7|Add0~17_sumout\))) # (\SelBus[2]~input_o\) ) ) # ( !\inst7|Mux4~0_combout\ & ( 
-- (!\SelBus[2]~input_o\ & ((!\inst3|Regist[6]~0_combout\ & ((\inst7|Mux4~1_combout\))) # (\inst3|Regist[6]~0_combout\ & (\inst7|Add0~17_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000110111101111110011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Regist[6]~0_combout\,
	datab => \ALT_INV_SelBus[2]~input_o\,
	datac => \inst7|ALT_INV_Add0~17_sumout\,
	datad => \inst7|ALT_INV_Mux4~1_combout\,
	dataf => \inst7|ALT_INV_Mux4~0_combout\,
	combout => \inst7|Mux4~2_combout\);

-- Location: FF_X56_Y2_N53
\inst7|Regist[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst7|Mux4~2_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst3|Regist[6]~1_combout\,
	ena => \inst7|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|Regist\(3));

-- Location: LABCELL_X57_Y2_N33
\inst7|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|Mux5~0_combout\ = ( \inst7|Regist\(1) & ( (!\SelBus[0]~input_o\) # (\inst7|Regist\(3)) ) ) # ( !\inst7|Regist\(1) & ( (\SelBus[0]~input_o\ & \inst7|Regist\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[0]~input_o\,
	datac => \inst7|ALT_INV_Regist\(3),
	dataf => \inst7|ALT_INV_Regist\(1),
	combout => \inst7|Mux5~0_combout\);

-- Location: LABCELL_X57_Y2_N51
\inst7|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|Mux5~1_combout\ = ( \inst23|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & ( (!\SelBus[1]~input_o\) # (!\inst7|Regist\(2)) ) ) # ( !\inst23|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & ( (\SelBus[1]~input_o\ & 
-- !\inst7|Regist\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000011111111101010101111111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datad => \inst7|ALT_INV_Regist\(2),
	dataf => \inst23|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\,
	combout => \inst7|Mux5~1_combout\);

-- Location: LABCELL_X57_Y2_N18
\inst7|Mux5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|Mux5~2_combout\ = ( \inst7|Add0~21_sumout\ & ( \inst7|Mux5~1_combout\ & ( (!\SelBus[2]~input_o\) # (\inst7|Mux5~0_combout\) ) ) ) # ( !\inst7|Add0~21_sumout\ & ( \inst7|Mux5~1_combout\ & ( (!\SelBus[2]~input_o\ & ((!\inst3|Regist[6]~0_combout\))) # 
-- (\SelBus[2]~input_o\ & (\inst7|Mux5~0_combout\)) ) ) ) # ( \inst7|Add0~21_sumout\ & ( !\inst7|Mux5~1_combout\ & ( (!\SelBus[2]~input_o\ & ((\inst3|Regist[6]~0_combout\))) # (\SelBus[2]~input_o\ & (\inst7|Mux5~0_combout\)) ) ) ) # ( !\inst7|Add0~21_sumout\ 
-- & ( !\inst7|Mux5~1_combout\ & ( (\SelBus[2]~input_o\ & \inst7|Mux5~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000111100111111001111000000111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SelBus[2]~input_o\,
	datac => \inst7|ALT_INV_Mux5~0_combout\,
	datad => \inst3|ALT_INV_Regist[6]~0_combout\,
	datae => \inst7|ALT_INV_Add0~21_sumout\,
	dataf => \inst7|ALT_INV_Mux5~1_combout\,
	combout => \inst7|Mux5~2_combout\);

-- Location: FF_X57_Y2_N20
\inst7|Regist[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst7|Mux5~2_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst3|Regist[6]~1_combout\,
	ena => \inst7|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|Regist\(2));

-- Location: LABCELL_X56_Y2_N54
\inst23|$00000|auto_generated|l1_w6_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst23|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\ = ( \inst16|result[6]~277_combout\ & ( (\inst|altsyncram_component|auto_generated|q_a\(6)) # (\MUX_MDR~input_o\) ) ) # ( !\inst16|result[6]~277_combout\ & ( (!\MUX_MDR~input_o\ & 
-- \inst|altsyncram_component|auto_generated|q_a\(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_MUX_MDR~input_o\,
	datac => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	dataf => \inst16|ALT_INV_result[6]~277_combout\,
	combout => \inst23|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X55_Y2_N57
\inst7|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|Mux1~1_combout\ = ( \SelBus[1]~input_o\ & ( \inst7|Regist\(7) & ( (\SelBus[2]~input_o\ & ((\inst7|Regist\(5)) # (\SelBus[0]~input_o\))) ) ) ) # ( !\SelBus[1]~input_o\ & ( \inst7|Regist\(7) & ( (!\SelBus[2]~input_o\) # ((\inst7|Regist\(5)) # 
-- (\SelBus[0]~input_o\)) ) ) ) # ( \SelBus[1]~input_o\ & ( !\inst7|Regist\(7) & ( (\SelBus[2]~input_o\ & (!\SelBus[0]~input_o\ & \inst7|Regist\(5))) ) ) ) # ( !\SelBus[1]~input_o\ & ( !\inst7|Regist\(7) & ( (!\SelBus[2]~input_o\) # ((!\SelBus[0]~input_o\ & 
-- \inst7|Regist\(5))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111010101110000001000000010010111111101111110001010100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[2]~input_o\,
	datab => \ALT_INV_SelBus[0]~input_o\,
	datac => \inst7|ALT_INV_Regist\(5),
	datae => \ALT_INV_SelBus[1]~input_o\,
	dataf => \inst7|ALT_INV_Regist\(7),
	combout => \inst7|Mux1~1_combout\);

-- Location: LABCELL_X56_Y2_N18
\inst7|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|Add0~5_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\)) # (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst23|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\)))) ) + ( !\inst7|Regist\(6) $ (((!\SelBus[3]~input_o\) # 
-- (!\SelBus[1]~input_o\))) ) + ( \inst7|Add0~10\ ))
-- \inst7|Add0~6\ = CARRY(( (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\)) # (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst23|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\)))) ) + ( !\inst7|Regist\(6) $ (((!\SelBus[3]~input_o\) # 
-- (!\SelBus[1]~input_o\))) ) + ( \inst7|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000010100000000000000000010001001110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[3]~input_o\,
	datab => \ALT_INV_SelBus[0]~input_o\,
	datac => \ALT_INV_SelBus[1]~input_o\,
	datad => \inst23|$00000|auto_generated|ALT_INV_l1_w6_n0_mux_dataout~0_combout\,
	dataf => \inst7|ALT_INV_Regist\(6),
	cin => \inst7|Add0~10\,
	sumout => \inst7|Add0~5_sumout\,
	cout => \inst7|Add0~6\);

-- Location: LABCELL_X56_Y2_N30
\inst7|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|Mux1~0_combout\ = ( \inst7|Regist\(6) & ( \inst7|Add0~5_sumout\ & ( (!\SelBus[2]~input_o\ & (((\inst23|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\ & \inst7|Mux1~1_combout\)) # (\inst3|Regist[6]~0_combout\))) # (\SelBus[2]~input_o\ & 
-- (((\inst7|Mux1~1_combout\)))) ) ) ) # ( !\inst7|Regist\(6) & ( \inst7|Add0~5_sumout\ & ( (!\SelBus[2]~input_o\ & (((!\inst7|Mux1~1_combout\) # (\inst3|Regist[6]~0_combout\)) # (\inst23|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\))) # 
-- (\SelBus[2]~input_o\ & (((\inst7|Mux1~1_combout\)))) ) ) ) # ( \inst7|Regist\(6) & ( !\inst7|Add0~5_sumout\ & ( (\inst7|Mux1~1_combout\ & (((\inst23|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\ & !\inst3|Regist[6]~0_combout\)) # 
-- (\SelBus[2]~input_o\))) ) ) ) # ( !\inst7|Regist\(6) & ( !\inst7|Add0~5_sumout\ & ( (!\SelBus[2]~input_o\ & (!\inst3|Regist[6]~0_combout\ & ((!\inst7|Mux1~1_combout\) # (\inst23|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\)))) # 
-- (\SelBus[2]~input_o\ & (((\inst7|Mux1~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000001110011000000000111001111001100011111110000110001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|$00000|auto_generated|ALT_INV_l1_w6_n0_mux_dataout~0_combout\,
	datab => \ALT_INV_SelBus[2]~input_o\,
	datac => \inst3|ALT_INV_Regist[6]~0_combout\,
	datad => \inst7|ALT_INV_Mux1~1_combout\,
	datae => \inst7|ALT_INV_Regist\(6),
	dataf => \inst7|ALT_INV_Add0~5_sumout\,
	combout => \inst7|Mux1~0_combout\);

-- Location: FF_X56_Y2_N32
\inst7|Regist[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst7|Mux1~0_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst3|Regist[6]~1_combout\,
	ena => \inst7|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|Regist\(6));

-- Location: LABCELL_X55_Y5_N6
\inst16|result[6]~272\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|result[6]~272_combout\ = ( \inst11|Regist\(6) & ( \inst6|Regist\(6) & ( (!\inst16|_~1_combout\ & (!\inst16|_~0_combout\ & ((!\inst16|_~2_combout\) # (!\inst7|Regist\(6))))) ) ) ) # ( !\inst11|Regist\(6) & ( \inst6|Regist\(6) & ( 
-- (!\inst16|_~0_combout\ & ((!\inst16|_~2_combout\) # (!\inst7|Regist\(6)))) ) ) ) # ( \inst11|Regist\(6) & ( !\inst6|Regist\(6) & ( (!\inst16|_~1_combout\ & ((!\inst16|_~2_combout\) # (!\inst7|Regist\(6)))) ) ) ) # ( !\inst11|Regist\(6) & ( 
-- !\inst6|Regist\(6) & ( (!\inst16|_~2_combout\) # (!\inst7|Regist\(6)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111001100101010101000100011110000110000001010000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV__~1_combout\,
	datab => \inst16|ALT_INV__~2_combout\,
	datac => \inst16|ALT_INV__~0_combout\,
	datad => \inst7|ALT_INV_Regist\(6),
	datae => \inst11|ALT_INV_Regist\(6),
	dataf => \inst6|ALT_INV_Regist\(6),
	combout => \inst16|result[6]~272_combout\);

-- Location: LABCELL_X55_Y6_N21
\inst16|result[6]~273\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|result[6]~273_combout\ = ( \inst5|Regist\(6) & ( \inst14|Regist\(6) & ( (!\inst16|_~4_combout\ & (!\inst16|_~3_combout\ & ((!\inst16|_~5_combout\) # (!\inst18|Regist\(6))))) ) ) ) # ( !\inst5|Regist\(6) & ( \inst14|Regist\(6) & ( 
-- (!\inst16|_~4_combout\ & ((!\inst16|_~5_combout\) # (!\inst18|Regist\(6)))) ) ) ) # ( \inst5|Regist\(6) & ( !\inst14|Regist\(6) & ( (!\inst16|_~3_combout\ & ((!\inst16|_~5_combout\) # (!\inst18|Regist\(6)))) ) ) ) # ( !\inst5|Regist\(6) & ( 
-- !\inst14|Regist\(6) & ( (!\inst16|_~5_combout\) # (!\inst18|Regist\(6)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111001100111100001100000010101010100010001010000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV__~4_combout\,
	datab => \inst16|ALT_INV__~5_combout\,
	datac => \inst16|ALT_INV__~3_combout\,
	datad => \inst18|ALT_INV_Regist\(6),
	datae => \inst5|ALT_INV_Regist\(6),
	dataf => \inst14|ALT_INV_Regist\(6),
	combout => \inst16|result[6]~273_combout\);

-- Location: LABCELL_X61_Y3_N54
\inst16|result[6]~274\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|result[6]~274_combout\ = ( \inst17|Regist\(6) & ( \inst9|Regist\(6) & ( (!\inst16|_~6_combout\ & (!\inst16|_~7_combout\ & ((!\inst16|_~8_combout\) # (!\inst2|Regist\(6))))) ) ) ) # ( !\inst17|Regist\(6) & ( \inst9|Regist\(6) & ( 
-- (!\inst16|_~6_combout\ & ((!\inst16|_~8_combout\) # (!\inst2|Regist\(6)))) ) ) ) # ( \inst17|Regist\(6) & ( !\inst9|Regist\(6) & ( (!\inst16|_~7_combout\ & ((!\inst16|_~8_combout\) # (!\inst2|Regist\(6)))) ) ) ) # ( !\inst17|Regist\(6) & ( 
-- !\inst9|Regist\(6) & ( (!\inst16|_~8_combout\) # (!\inst2|Regist\(6)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011111100111111000000000010101000101010001010100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV__~6_combout\,
	datab => \inst16|ALT_INV__~8_combout\,
	datac => \inst2|ALT_INV_Regist\(6),
	datad => \inst16|ALT_INV__~7_combout\,
	datae => \inst17|ALT_INV_Regist\(6),
	dataf => \inst9|ALT_INV_Regist\(6),
	combout => \inst16|result[6]~274_combout\);

-- Location: LABCELL_X56_Y5_N48
\inst16|result[6]~277\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|result[6]~277_combout\ = ( \inst|altsyncram_component|auto_generated|q_a\(6) & ( \inst16|result[6]~274_combout\ & ( ((!\inst16|result[6]~318_combout\) # ((!\inst16|result[6]~272_combout\) # (!\inst16|result[6]~273_combout\))) # 
-- (\inst16|_~11_combout\) ) ) ) # ( !\inst|altsyncram_component|auto_generated|q_a\(6) & ( \inst16|result[6]~274_combout\ & ( (!\inst16|result[6]~318_combout\) # ((!\inst16|result[6]~272_combout\) # (!\inst16|result[6]~273_combout\)) ) ) ) # ( 
-- \inst|altsyncram_component|auto_generated|q_a\(6) & ( !\inst16|result[6]~274_combout\ ) ) # ( !\inst|altsyncram_component|auto_generated|q_a\(6) & ( !\inst16|result[6]~274_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111001111111111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV__~11_combout\,
	datab => \inst16|ALT_INV_result[6]~318_combout\,
	datac => \inst16|ALT_INV_result[6]~272_combout\,
	datad => \inst16|ALT_INV_result[6]~273_combout\,
	datae => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	dataf => \inst16|ALT_INV_result[6]~274_combout\,
	combout => \inst16|result[6]~277_combout\);

-- Location: LABCELL_X51_Y6_N57
\inst4|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Mux1~1_combout\ = ( \inst4|Regist\(6) & ( (!\SelBus[1]~input_o\ & \inst16|result[6]~277_combout\) ) ) # ( !\inst4|Regist\(6) & ( (\inst16|result[6]~277_combout\) # (\SelBus[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SelBus[1]~input_o\,
	datad => \inst16|ALT_INV_result[6]~277_combout\,
	dataf => \inst4|ALT_INV_Regist\(6),
	combout => \inst4|Mux1~1_combout\);

-- Location: LABCELL_X51_Y6_N0
\inst4|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add0~29_sumout\ = SUM(( (!\SelBus[3]~input_o\) # ((\inst16|result[0]~313_combout\) # (\SelBus[1]~input_o\)) ) + ( !\inst4|Regist\(0) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( !VCC ))
-- \inst4|Add0~30\ = CARRY(( (!\SelBus[3]~input_o\) # ((\inst16|result[0]~313_combout\) # (\SelBus[1]~input_o\)) ) + ( !\inst4|Regist\(0) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000001011101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[3]~input_o\,
	datab => \ALT_INV_SelBus[1]~input_o\,
	datad => \inst16|ALT_INV_result[0]~313_combout\,
	dataf => \inst4|ALT_INV_Regist\(0),
	cin => GND,
	sumout => \inst4|Add0~29_sumout\,
	cout => \inst4|Add0~30\);

-- Location: LABCELL_X51_Y6_N3
\inst4|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add0~25_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[1]~307_combout\)))) ) + ( !\inst4|Regist\(1) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst4|Add0~30\ ))
-- \inst4|Add0~26\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[1]~307_combout\)))) ) + ( !\inst4|Regist\(1) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst4|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000000101001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[3]~input_o\,
	datab => \ALT_INV_SelBus[1]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst16|ALT_INV_result[1]~307_combout\,
	dataf => \inst4|ALT_INV_Regist\(1),
	cin => \inst4|Add0~30\,
	sumout => \inst4|Add0~25_sumout\,
	cout => \inst4|Add0~26\);

-- Location: LABCELL_X51_Y6_N6
\inst4|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add0~21_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[2]~301_combout\)))) ) + ( !\inst4|Regist\(2) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst4|Add0~26\ ))
-- \inst4|Add0~22\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[2]~301_combout\)))) ) + ( !\inst4|Regist\(2) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst4|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000000101001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[3]~input_o\,
	datab => \ALT_INV_SelBus[1]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst16|ALT_INV_result[2]~301_combout\,
	dataf => \inst4|ALT_INV_Regist\(2),
	cin => \inst4|Add0~26\,
	sumout => \inst4|Add0~21_sumout\,
	cout => \inst4|Add0~22\);

-- Location: LABCELL_X51_Y6_N9
\inst4|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add0~17_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[3]~295_combout\)))) ) + ( !\inst4|Regist\(3) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst4|Add0~22\ ))
-- \inst4|Add0~18\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[3]~295_combout\)))) ) + ( !\inst4|Regist\(3) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst4|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000000101001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[3]~input_o\,
	datab => \ALT_INV_SelBus[1]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst16|ALT_INV_result[3]~295_combout\,
	dataf => \inst4|ALT_INV_Regist\(3),
	cin => \inst4|Add0~22\,
	sumout => \inst4|Add0~17_sumout\,
	cout => \inst4|Add0~18\);

-- Location: LABCELL_X51_Y6_N12
\inst4|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add0~13_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\)) # (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst16|result[4]~289_combout\)))) ) + ( !\inst4|Regist\(4) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst4|Add0~18\ ))
-- \inst4|Add0~14\ = CARRY(( (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\)) # (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst16|result[4]~289_combout\)))) ) + ( !\inst4|Regist\(4) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst4|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000000001100000000000000000101000001011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[0]~input_o\,
	datab => \ALT_INV_SelBus[1]~input_o\,
	datac => \ALT_INV_SelBus[3]~input_o\,
	datad => \inst16|ALT_INV_result[4]~289_combout\,
	dataf => \inst4|ALT_INV_Regist\(4),
	cin => \inst4|Add0~18\,
	sumout => \inst4|Add0~13_sumout\,
	cout => \inst4|Add0~14\);

-- Location: LABCELL_X51_Y6_N15
\inst4|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add0~9_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\)) # (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst16|result[5]~283_combout\)))) ) + ( !\inst4|Regist\(5) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst4|Add0~14\ ))
-- \inst4|Add0~10\ = CARRY(( (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\)) # (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst16|result[5]~283_combout\)))) ) + ( !\inst4|Regist\(5) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst4|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000000001100000000000000000101000001011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[0]~input_o\,
	datab => \ALT_INV_SelBus[1]~input_o\,
	datac => \ALT_INV_SelBus[3]~input_o\,
	datad => \inst16|ALT_INV_result[5]~283_combout\,
	dataf => \inst4|ALT_INV_Regist\(5),
	cin => \inst4|Add0~14\,
	sumout => \inst4|Add0~9_sumout\,
	cout => \inst4|Add0~10\);

-- Location: LABCELL_X51_Y6_N18
\inst4|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add0~5_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\)) # (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst16|result[6]~277_combout\)))) ) + ( !\inst4|Regist\(6) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst4|Add0~10\ ))
-- \inst4|Add0~6\ = CARRY(( (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\)) # (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst16|result[6]~277_combout\)))) ) + ( !\inst4|Regist\(6) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst4|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000000001100000000000000000101000001011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[0]~input_o\,
	datab => \ALT_INV_SelBus[1]~input_o\,
	datac => \ALT_INV_SelBus[3]~input_o\,
	datad => \inst16|ALT_INV_result[6]~277_combout\,
	dataf => \inst4|ALT_INV_Regist\(6),
	cin => \inst4|Add0~10\,
	sumout => \inst4|Add0~5_sumout\,
	cout => \inst4|Add0~6\);

-- Location: LABCELL_X51_Y6_N24
\inst4|Mux1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Mux1~2_combout\ = ( \inst4|Add0~5_sumout\ & ( (!\SelBus[2]~input_o\ & (((\inst4|Mux1~1_combout\)) # (\inst3|Regist[6]~0_combout\))) # (\SelBus[2]~input_o\ & (((\inst4|Mux1~0_combout\)))) ) ) # ( !\inst4|Add0~5_sumout\ & ( (!\SelBus[2]~input_o\ & 
-- (!\inst3|Regist[6]~0_combout\ & ((\inst4|Mux1~1_combout\)))) # (\SelBus[2]~input_o\ & (((\inst4|Mux1~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110001101000001011000110100100111101011110010011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[2]~input_o\,
	datab => \inst3|ALT_INV_Regist[6]~0_combout\,
	datac => \inst4|ALT_INV_Mux1~0_combout\,
	datad => \inst4|ALT_INV_Mux1~1_combout\,
	dataf => \inst4|ALT_INV_Add0~5_sumout\,
	combout => \inst4|Mux1~2_combout\);

-- Location: LABCELL_X56_Y3_N6
\inst4|Regist[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Regist[3]~0_combout\ = ( \inst8|Regist[1]~0_combout\ & ( (\SelRegD[2]~input_o\ & (!\SelRegD[0]~input_o\ & (\SelRegD[1]~input_o\ & \SelRegD[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelRegD[2]~input_o\,
	datab => \ALT_INV_SelRegD[0]~input_o\,
	datac => \ALT_INV_SelRegD[1]~input_o\,
	datad => \ALT_INV_SelRegD[3]~input_o\,
	datae => \inst8|ALT_INV_Regist[1]~0_combout\,
	combout => \inst4|Regist[3]~0_combout\);

-- Location: FF_X51_Y6_N26
\inst4|Regist[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst4|Mux1~2_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst3|Regist[6]~1_combout\,
	ena => \inst4|Regist[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Regist\(6));

-- Location: MLABCELL_X52_Y6_N57
\inst4|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Mux2~0_combout\ = ( \inst4|Regist\(4) & ( \inst4|Regist\(6) ) ) # ( !\inst4|Regist\(4) & ( \inst4|Regist\(6) & ( \SelBus[0]~input_o\ ) ) ) # ( \inst4|Regist\(4) & ( !\inst4|Regist\(6) & ( !\SelBus[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_SelBus[0]~input_o\,
	datae => \inst4|ALT_INV_Regist\(4),
	dataf => \inst4|ALT_INV_Regist\(6),
	combout => \inst4|Mux2~0_combout\);

-- Location: LABCELL_X51_Y6_N45
\inst4|Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Mux2~1_combout\ = ( \inst4|Regist\(5) & ( (!\SelBus[1]~input_o\ & \inst16|result[5]~283_combout\) ) ) # ( !\inst4|Regist\(5) & ( (\inst16|result[5]~283_combout\) # (\SelBus[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SelBus[1]~input_o\,
	datad => \inst16|ALT_INV_result[5]~283_combout\,
	dataf => \inst4|ALT_INV_Regist\(5),
	combout => \inst4|Mux2~1_combout\);

-- Location: LABCELL_X51_Y6_N39
\inst4|Mux2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Mux2~2_combout\ = ( \inst4|Add0~9_sumout\ & ( (!\SelBus[2]~input_o\ & (((\inst4|Mux2~1_combout\)) # (\inst3|Regist[6]~0_combout\))) # (\SelBus[2]~input_o\ & (((\inst4|Mux2~0_combout\)))) ) ) # ( !\inst4|Add0~9_sumout\ & ( (!\SelBus[2]~input_o\ & 
-- (!\inst3|Regist[6]~0_combout\ & ((\inst4|Mux2~1_combout\)))) # (\SelBus[2]~input_o\ & (((\inst4|Mux2~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110001101000001011000110100100111101011110010011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[2]~input_o\,
	datab => \inst3|ALT_INV_Regist[6]~0_combout\,
	datac => \inst4|ALT_INV_Mux2~0_combout\,
	datad => \inst4|ALT_INV_Mux2~1_combout\,
	dataf => \inst4|ALT_INV_Add0~9_sumout\,
	combout => \inst4|Mux2~2_combout\);

-- Location: FF_X51_Y6_N41
\inst4|Regist[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst4|Mux2~2_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst3|Regist[6]~1_combout\,
	ena => \inst4|Regist[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Regist\(5));

-- Location: MLABCELL_X52_Y6_N15
\inst4|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Mux3~0_combout\ = ( \SelBus[0]~input_o\ & ( \inst4|Regist\(5) ) ) # ( !\SelBus[0]~input_o\ & ( \inst4|Regist\(5) & ( \inst4|Regist\(3) ) ) ) # ( !\SelBus[0]~input_o\ & ( !\inst4|Regist\(5) & ( \inst4|Regist\(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ALT_INV_Regist\(3),
	datae => \ALT_INV_SelBus[0]~input_o\,
	dataf => \inst4|ALT_INV_Regist\(5),
	combout => \inst4|Mux3~0_combout\);

-- Location: LABCELL_X51_Y6_N36
\inst4|Mux3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Mux3~2_combout\ = ( \inst4|Add0~13_sumout\ & ( (!\SelBus[2]~input_o\ & (((\inst4|Mux3~1_combout\)) # (\inst3|Regist[6]~0_combout\))) # (\SelBus[2]~input_o\ & (((\inst4|Mux3~0_combout\)))) ) ) # ( !\inst4|Add0~13_sumout\ & ( (!\SelBus[2]~input_o\ & 
-- (!\inst3|Regist[6]~0_combout\ & (\inst4|Mux3~1_combout\))) # (\SelBus[2]~input_o\ & (((\inst4|Mux3~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001011101000010000101110100101010011111110010101001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[2]~input_o\,
	datab => \inst3|ALT_INV_Regist[6]~0_combout\,
	datac => \inst4|ALT_INV_Mux3~1_combout\,
	datad => \inst4|ALT_INV_Mux3~0_combout\,
	dataf => \inst4|ALT_INV_Add0~13_sumout\,
	combout => \inst4|Mux3~2_combout\);

-- Location: FF_X51_Y6_N38
\inst4|Regist[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst4|Mux3~2_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst3|Regist[6]~1_combout\,
	ena => \inst4|Regist[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Regist\(4));

-- Location: MLABCELL_X52_Y6_N42
\inst4|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Mux4~0_combout\ = ( \SelBus[0]~input_o\ & ( \inst4|Regist\(4) ) ) # ( !\SelBus[0]~input_o\ & ( \inst4|Regist\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_Regist\(2),
	datab => \inst4|ALT_INV_Regist\(4),
	datae => \ALT_INV_SelBus[0]~input_o\,
	combout => \inst4|Mux4~0_combout\);

-- Location: LABCELL_X51_Y6_N27
\inst4|Mux4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Mux4~2_combout\ = ( \inst4|Add0~17_sumout\ & ( (!\SelBus[2]~input_o\ & (((\inst4|Mux4~1_combout\)) # (\inst3|Regist[6]~0_combout\))) # (\SelBus[2]~input_o\ & (((\inst4|Mux4~0_combout\)))) ) ) # ( !\inst4|Add0~17_sumout\ & ( (!\SelBus[2]~input_o\ & 
-- (!\inst3|Regist[6]~0_combout\ & (\inst4|Mux4~1_combout\))) # (\SelBus[2]~input_o\ & (((\inst4|Mux4~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001011101000010000101110100101010011111110010101001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[2]~input_o\,
	datab => \inst3|ALT_INV_Regist[6]~0_combout\,
	datac => \inst4|ALT_INV_Mux4~1_combout\,
	datad => \inst4|ALT_INV_Mux4~0_combout\,
	dataf => \inst4|ALT_INV_Add0~17_sumout\,
	combout => \inst4|Mux4~2_combout\);

-- Location: FF_X51_Y6_N29
\inst4|Regist[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst4|Mux4~2_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst3|Regist[6]~1_combout\,
	ena => \inst4|Regist[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Regist\(3));

-- Location: LABCELL_X51_Y6_N48
\inst4|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Mux5~0_combout\ = ( \inst4|Add0~21_sumout\ & ( ((!\SelBus[1]~input_o\ & (\inst16|result[2]~301_combout\)) # (\SelBus[1]~input_o\ & ((!\inst4|Regist\(2))))) # (\inst3|Regist[6]~0_combout\) ) ) # ( !\inst4|Add0~21_sumout\ & ( 
-- (!\inst3|Regist[6]~0_combout\ & ((!\SelBus[1]~input_o\ & (\inst16|result[2]~301_combout\)) # (\SelBus[1]~input_o\ & ((!\inst4|Regist\(2)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000001000000011100000100000001111111010011110111111101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_result[2]~301_combout\,
	datab => \ALT_INV_SelBus[1]~input_o\,
	datac => \inst3|ALT_INV_Regist[6]~0_combout\,
	datad => \inst4|ALT_INV_Regist\(2),
	dataf => \inst4|ALT_INV_Add0~21_sumout\,
	combout => \inst4|Mux5~0_combout\);

-- Location: LABCELL_X51_Y6_N54
\inst4|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Mux5~1_combout\ = ( \inst4|Mux5~0_combout\ & ( (!\SelBus[2]~input_o\) # ((!\SelBus[0]~input_o\ & (\inst4|Regist\(1))) # (\SelBus[0]~input_o\ & ((\inst4|Regist\(3))))) ) ) # ( !\inst4|Mux5~0_combout\ & ( (\SelBus[2]~input_o\ & ((!\SelBus[0]~input_o\ 
-- & (\inst4|Regist\(1))) # (\SelBus[0]~input_o\ & ((\inst4|Regist\(3)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000101000100010000010110111011101011111011101110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[2]~input_o\,
	datab => \inst4|ALT_INV_Regist\(1),
	datac => \inst4|ALT_INV_Regist\(3),
	datad => \ALT_INV_SelBus[0]~input_o\,
	dataf => \inst4|ALT_INV_Mux5~0_combout\,
	combout => \inst4|Mux5~1_combout\);

-- Location: FF_X51_Y6_N56
\inst4|Regist[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst4|Mux5~1_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst3|Regist[6]~1_combout\,
	ena => \inst4|Regist[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Regist\(2));

-- Location: LABCELL_X51_Y6_N33
\inst4|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Mux6~0_combout\ = ( \inst4|Regist\(1) & ( (!\inst3|Regist[6]~0_combout\ & (!\SelBus[1]~input_o\ & (\inst16|result[1]~307_combout\))) # (\inst3|Regist[6]~0_combout\ & (((\inst4|Add0~25_sumout\)))) ) ) # ( !\inst4|Regist\(1) & ( 
-- (!\inst3|Regist[6]~0_combout\ & (((\inst16|result[1]~307_combout\)) # (\SelBus[1]~input_o\))) # (\inst3|Regist[6]~0_combout\ & (((\inst4|Add0~25_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101001111111001010100111111100001000010111010000100001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Regist[6]~0_combout\,
	datab => \ALT_INV_SelBus[1]~input_o\,
	datac => \inst16|ALT_INV_result[1]~307_combout\,
	datad => \inst4|ALT_INV_Add0~25_sumout\,
	dataf => \inst4|ALT_INV_Regist\(1),
	combout => \inst4|Mux6~0_combout\);

-- Location: LABCELL_X51_Y6_N42
\inst4|Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Mux6~1_combout\ = ( \inst4|Mux6~0_combout\ & ( (!\SelBus[2]~input_o\) # ((!\SelBus[0]~input_o\ & (\inst4|Regist\(0))) # (\SelBus[0]~input_o\ & ((\inst4|Regist\(2))))) ) ) # ( !\inst4|Mux6~0_combout\ & ( (\SelBus[2]~input_o\ & ((!\SelBus[0]~input_o\ 
-- & (\inst4|Regist\(0))) # (\SelBus[0]~input_o\ & ((\inst4|Regist\(2)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000101000100010000010110111011101011111011101110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[2]~input_o\,
	datab => \inst4|ALT_INV_Regist\(0),
	datac => \inst4|ALT_INV_Regist\(2),
	datad => \ALT_INV_SelBus[0]~input_o\,
	dataf => \inst4|ALT_INV_Mux6~0_combout\,
	combout => \inst4|Mux6~1_combout\);

-- Location: FF_X51_Y6_N44
\inst4|Regist[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst4|Mux6~1_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst3|Regist[6]~1_combout\,
	ena => \inst4|Regist[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Regist\(1));

-- Location: LABCELL_X50_Y5_N33
\inst4|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Mux7~0_combout\ = ( \inst4|Regist\(0) & ( (\inst18|Regist[0]~1_combout\ & ((!\inst18|Regist[0]~2_combout\ & (\inst16|result[0]~313_combout\)) # (\inst18|Regist[0]~2_combout\ & ((\inst4|Regist\(1)))))) ) ) # ( !\inst4|Regist\(0) & ( 
-- (!\inst18|Regist[0]~1_combout\ & (!\inst18|Regist[0]~2_combout\)) # (\inst18|Regist[0]~1_combout\ & ((!\inst18|Regist[0]~2_combout\ & (\inst16|result[0]~313_combout\)) # (\inst18|Regist[0]~2_combout\ & ((\inst4|Regist\(1)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110010011101100011001001110100000100000101010000010000010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|ALT_INV_Regist[0]~1_combout\,
	datab => \inst18|ALT_INV_Regist[0]~2_combout\,
	datac => \inst16|ALT_INV_result[0]~313_combout\,
	datad => \inst4|ALT_INV_Regist\(1),
	dataf => \inst4|ALT_INV_Regist\(0),
	combout => \inst4|Mux7~0_combout\);

-- Location: LABCELL_X50_Y5_N42
\inst4|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Mux7~1_combout\ = ( \inst4|Add0~29_sumout\ & ( (((\inst18|Regist[0]~3_combout\ & \inst4|Regist\(7))) # (\inst18|Regist[0]~0_combout\)) # (\inst4|Mux7~0_combout\) ) ) # ( !\inst4|Add0~29_sumout\ & ( (!\inst18|Regist[0]~0_combout\ & 
-- (((\inst18|Regist[0]~3_combout\ & \inst4|Regist\(7))) # (\inst4|Mux7~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001110000010100000111000001011111011111110101111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_Mux7~0_combout\,
	datab => \inst18|ALT_INV_Regist[0]~3_combout\,
	datac => \inst18|ALT_INV_Regist[0]~0_combout\,
	datad => \inst4|ALT_INV_Regist\(7),
	dataf => \inst4|ALT_INV_Add0~29_sumout\,
	combout => \inst4|Mux7~1_combout\);

-- Location: FF_X50_Y5_N44
\inst4|Regist[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst4|Mux7~1_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst18|Regist[0]~4_combout\,
	ena => \inst4|Regist[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Regist\(0));

-- Location: LABCELL_X51_Y6_N21
\inst4|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add0~1_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\)) # (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst16|result[7]~271_combout\)))) ) + ( !\inst4|Regist\(7) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst4|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000000001100000000000000000101000001011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[0]~input_o\,
	datab => \ALT_INV_SelBus[1]~input_o\,
	datac => \ALT_INV_SelBus[3]~input_o\,
	datad => \inst16|ALT_INV_result[7]~271_combout\,
	dataf => \inst4|ALT_INV_Regist\(7),
	cin => \inst4|Add0~6\,
	sumout => \inst4|Add0~1_sumout\);

-- Location: LABCELL_X50_Y6_N27
\inst4|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Mux0~0_combout\ = ( \inst4|Regist\(7) & ( \inst16|result[7]~271_combout\ & ( (\inst19|Regist[7]~0_combout\ & ((!\inst18|Regist[0]~2_combout\) # (\inst4|Regist\(6)))) ) ) ) # ( !\inst4|Regist\(7) & ( \inst16|result[7]~271_combout\ & ( 
-- (!\inst18|Regist[0]~2_combout\) # ((\inst4|Regist\(6) & \inst19|Regist[7]~0_combout\)) ) ) ) # ( \inst4|Regist\(7) & ( !\inst16|result[7]~271_combout\ & ( (\inst18|Regist[0]~2_combout\ & (\inst4|Regist\(6) & \inst19|Regist[7]~0_combout\)) ) ) ) # ( 
-- !\inst4|Regist\(7) & ( !\inst16|result[7]~271_combout\ & ( (!\inst18|Regist[0]~2_combout\ & ((!\inst19|Regist[7]~0_combout\))) # (\inst18|Regist[0]~2_combout\ & (\inst4|Regist\(6) & \inst19|Regist[7]~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000101000000000000010110101010101011110000000010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|ALT_INV_Regist[0]~2_combout\,
	datac => \inst4|ALT_INV_Regist\(6),
	datad => \inst19|ALT_INV_Regist[7]~0_combout\,
	datae => \inst4|ALT_INV_Regist\(7),
	dataf => \inst16|ALT_INV_result[7]~271_combout\,
	combout => \inst4|Mux0~0_combout\);

-- Location: LABCELL_X50_Y6_N36
\inst4|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Mux0~1_combout\ = ( \inst4|Add0~1_sumout\ & ( \inst4|Mux0~0_combout\ ) ) # ( !\inst4|Add0~1_sumout\ & ( \inst4|Mux0~0_combout\ & ( !\inst18|Regist[0]~0_combout\ ) ) ) # ( \inst4|Add0~1_sumout\ & ( !\inst4|Mux0~0_combout\ & ( ((\inst4|Regist\(0) & 
-- \inst19|Regist[7]~1_combout\)) # (\inst18|Regist[0]~0_combout\) ) ) ) # ( !\inst4|Add0~1_sumout\ & ( !\inst4|Mux0~0_combout\ & ( (!\inst18|Regist[0]~0_combout\ & (\inst4|Regist\(0) & \inst19|Regist[7]~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010010101110101011110101010101010101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|ALT_INV_Regist[0]~0_combout\,
	datab => \inst4|ALT_INV_Regist\(0),
	datac => \inst19|ALT_INV_Regist[7]~1_combout\,
	datae => \inst4|ALT_INV_Add0~1_sumout\,
	dataf => \inst4|ALT_INV_Mux0~0_combout\,
	combout => \inst4|Mux0~1_combout\);

-- Location: FF_X50_Y6_N38
\inst4|Regist[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst4|Mux0~1_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst19|Regist[7]~2_combout\,
	ena => \inst4|Regist[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Regist\(7));

-- Location: LABCELL_X50_Y6_N9
\inst24|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|Mux1~0_combout\ = ( \inst4|Regist\(7) & ( \inst3|Regist\(7) & ( (!\AluSel[2]~input_o\ & \AluSel[1]~input_o\) ) ) ) # ( !\inst4|Regist\(7) & ( \inst3|Regist\(7) & ( (!\AluSel[0]~input_o\ & (\AluSel[2]~input_o\ & !\AluSel[1]~input_o\)) # 
-- (\AluSel[0]~input_o\ & (!\AluSel[2]~input_o\ & \AluSel[1]~input_o\)) ) ) ) # ( \inst4|Regist\(7) & ( !\inst3|Regist\(7) & ( (!\AluSel[0]~input_o\ & (\AluSel[2]~input_o\ & !\AluSel[1]~input_o\)) # (\AluSel[0]~input_o\ & (!\AluSel[2]~input_o\ & 
-- \AluSel[1]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100101000000001010010100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AluSel[0]~input_o\,
	datac => \ALT_INV_AluSel[2]~input_o\,
	datad => \ALT_INV_AluSel[1]~input_o\,
	datae => \inst4|ALT_INV_Regist\(7),
	dataf => \inst3|ALT_INV_Regist\(7),
	combout => \inst24|Mux1~0_combout\);

-- Location: LABCELL_X51_Y5_N21
\inst24|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|Add0~1_sumout\ = SUM(( !\inst3|Regist\(7) $ (\inst4|Regist\(7)) ) + ( \inst24|Add0~7\ ) + ( \inst24|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ALT_INV_Regist\(7),
	datad => \inst4|ALT_INV_Regist\(7),
	cin => \inst24|Add0~6\,
	sharein => \inst24|Add0~7\,
	sumout => \inst24|Add0~1_sumout\);

-- Location: LABCELL_X50_Y5_N21
\inst24|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|Add1~1_sumout\ = SUM(( \inst4|Regist\(7) ) + ( \inst3|Regist\(7) ) + ( \inst24|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_Regist\(7),
	datac => \inst3|ALT_INV_Regist\(7),
	cin => \inst24|Add1~6\,
	sumout => \inst24|Add1~1_sumout\);

-- Location: LABCELL_X51_Y5_N33
\inst24|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|Mux1~1_combout\ = ( \inst24|Add1~1_sumout\ & ( (((\inst24|Mux4~0_combout\ & \inst24|Add0~1_sumout\)) # (\inst24|Mux1~0_combout\)) # (\inst24|Mux2~0_combout\) ) ) # ( !\inst24|Add1~1_sumout\ & ( ((\inst24|Mux4~0_combout\ & \inst24|Add0~1_sumout\)) 
-- # (\inst24|Mux1~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111111000011110011111101011111011111110101111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|ALT_INV_Mux2~0_combout\,
	datab => \inst24|ALT_INV_Mux4~0_combout\,
	datac => \inst24|ALT_INV_Mux1~0_combout\,
	datad => \inst24|ALT_INV_Add0~1_sumout\,
	dataf => \inst24|ALT_INV_Add1~1_sumout\,
	combout => \inst24|Mux1~1_combout\);

-- Location: MLABCELL_X52_Y5_N21
\inst20|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst20|Add0~1_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst24|Mux1~1_combout\)))) ) + ( !\inst20|Regist\(7) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst20|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000000110000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[3]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst24|ALT_INV_Mux1~1_combout\,
	dataf => \inst20|ALT_INV_Regist\(7),
	cin => \inst20|Add0~6\,
	sumout => \inst20|Add0~1_sumout\);

-- Location: MLABCELL_X52_Y5_N48
\inst20|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst20|Mux0~0_combout\ = ( \inst20|Regist\(7) & ( \inst20|Regist\(0) & ( (!\inst19|Regist[7]~0_combout\ & (((\inst18|Regist[0]~2_combout\)))) # (\inst19|Regist[7]~0_combout\ & ((!\inst18|Regist[0]~2_combout\ & ((\inst24|Mux1~1_combout\))) # 
-- (\inst18|Regist[0]~2_combout\ & (\inst20|Regist\(6))))) ) ) ) # ( !\inst20|Regist\(7) & ( \inst20|Regist\(0) & ( (!\inst19|Regist[7]~0_combout\) # ((!\inst18|Regist[0]~2_combout\ & ((\inst24|Mux1~1_combout\))) # (\inst18|Regist[0]~2_combout\ & 
-- (\inst20|Regist\(6)))) ) ) ) # ( \inst20|Regist\(7) & ( !\inst20|Regist\(0) & ( (\inst19|Regist[7]~0_combout\ & ((!\inst18|Regist[0]~2_combout\ & ((\inst24|Mux1~1_combout\))) # (\inst18|Regist[0]~2_combout\ & (\inst20|Regist\(6))))) ) ) ) # ( 
-- !\inst20|Regist\(7) & ( !\inst20|Regist\(0) & ( (!\inst19|Regist[7]~0_combout\ & (((!\inst18|Regist[0]~2_combout\)))) # (\inst19|Regist[7]~0_combout\ & ((!\inst18|Regist[0]~2_combout\ & ((\inst24|Mux1~1_combout\))) # (\inst18|Regist[0]~2_combout\ & 
-- (\inst20|Regist\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000111110001000000010011000111001101111111010000110100111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|ALT_INV_Regist\(6),
	datab => \inst19|ALT_INV_Regist[7]~0_combout\,
	datac => \inst18|ALT_INV_Regist[0]~2_combout\,
	datad => \inst24|ALT_INV_Mux1~1_combout\,
	datae => \inst20|ALT_INV_Regist\(7),
	dataf => \inst20|ALT_INV_Regist\(0),
	combout => \inst20|Mux0~0_combout\);

-- Location: MLABCELL_X52_Y5_N54
\inst20|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst20|Mux0~1_combout\ = ( \inst20|Mux0~0_combout\ & ( (!\inst18|Regist[0]~0_combout\) # (\inst20|Add0~1_sumout\) ) ) # ( !\inst20|Mux0~0_combout\ & ( (\inst18|Regist[0]~0_combout\ & \inst20|Add0~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst18|ALT_INV_Regist[0]~0_combout\,
	datad => \inst20|ALT_INV_Add0~1_sumout\,
	dataf => \inst20|ALT_INV_Mux0~0_combout\,
	combout => \inst20|Mux0~1_combout\);

-- Location: FF_X52_Y5_N56
\inst20|Regist[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst20|Mux0~1_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst19|Regist[7]~2_combout\,
	ena => \inst20|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|Regist\(7));

-- Location: MLABCELL_X52_Y3_N24
\inst20|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst20|Mux7~0_combout\ = ( \inst20|Regist\(1) & ( \SelBus[2]~input_o\ & ( (!\inst20|Regist\(0)) # (!\SelBus[3]~input_o\) ) ) ) # ( !\inst20|Regist\(1) & ( \SelBus[2]~input_o\ & ( (!\inst20|Regist\(0) & \SelBus[3]~input_o\) ) ) ) # ( \inst20|Regist\(1) & 
-- ( !\SelBus[2]~input_o\ & ( (!\inst20|Regist\(0) & \SelBus[3]~input_o\) ) ) ) # ( !\inst20|Regist\(1) & ( !\SelBus[2]~input_o\ & ( (!\inst20|Regist\(0) & \SelBus[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010101111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|ALT_INV_Regist\(0),
	datac => \ALT_INV_SelBus[3]~input_o\,
	datae => \inst20|ALT_INV_Regist\(1),
	dataf => \ALT_INV_SelBus[2]~input_o\,
	combout => \inst20|Mux7~0_combout\);

-- Location: MLABCELL_X52_Y3_N0
\inst20|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst20|Mux7~1_combout\ = ( !\inst18|Regist[0]~2_combout\ & ( (!\inst18|Regist[0]~0_combout\ & ((((\inst18|Regist[0]~1_combout\ & \inst24|Mux8~0_combout\)) # (\inst20|Mux7~0_combout\)))) # (\inst18|Regist[0]~0_combout\ & ((((\inst20|Add0~29_sumout\))))) ) 
-- ) # ( \inst18|Regist[0]~2_combout\ & ( (!\inst18|Regist[0]~0_combout\ & ((!\inst18|Regist[0]~1_combout\ & (\inst20|Regist\(7))) # (\inst18|Regist[0]~1_combout\ & (((\inst20|Mux7~0_combout\)))))) # (\inst18|Regist[0]~0_combout\ & 
-- ((((\inst20|Add0~29_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010000110111000010000011101111001100111111110100110001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|ALT_INV_Regist[0]~1_combout\,
	datab => \inst18|ALT_INV_Regist[0]~0_combout\,
	datac => \inst20|ALT_INV_Regist\(7),
	datad => \inst20|ALT_INV_Add0~29_sumout\,
	datae => \inst18|ALT_INV_Regist[0]~2_combout\,
	dataf => \inst20|ALT_INV_Mux7~0_combout\,
	datag => \inst24|ALT_INV_Mux8~0_combout\,
	combout => \inst20|Mux7~1_combout\);

-- Location: FF_X52_Y3_N2
\inst20|Regist[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst20|Mux7~1_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst18|Regist[0]~4_combout\,
	ena => \inst20|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|Regist\(0));

-- Location: IOIBUF_X40_Y0_N52
\Fuente[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Fuente(0),
	o => \Fuente[0]~input_o\);

-- Location: LABCELL_X51_Y3_N12
\inst16|result[0]~312\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|result[0]~312_combout\ = ( \inst19|Regist\(0) & ( \inst8|Regist\(0) & ( (!\inst16|_~16_combout\ & (!\inst16|_~15_combout\ & ((!\inst16|result[7]~269_combout\) # (!\Fuente[0]~input_o\)))) ) ) ) # ( !\inst19|Regist\(0) & ( \inst8|Regist\(0) & ( 
-- (!\inst16|_~15_combout\ & ((!\inst16|result[7]~269_combout\) # (!\Fuente[0]~input_o\))) ) ) ) # ( \inst19|Regist\(0) & ( !\inst8|Regist\(0) & ( (!\inst16|_~16_combout\ & ((!\inst16|result[7]~269_combout\) # (!\Fuente[0]~input_o\))) ) ) ) # ( 
-- !\inst19|Regist\(0) & ( !\inst8|Regist\(0) & ( (!\inst16|result[7]~269_combout\) # (!\Fuente[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011111100101010001010100011111100000000001010100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV__~16_combout\,
	datab => \inst16|ALT_INV_result[7]~269_combout\,
	datac => \ALT_INV_Fuente[0]~input_o\,
	datad => \inst16|ALT_INV__~15_combout\,
	datae => \inst19|ALT_INV_Regist\(0),
	dataf => \inst8|ALT_INV_Regist\(0),
	combout => \inst16|result[0]~312_combout\);

-- Location: LABCELL_X51_Y3_N21
\inst16|result[0]~317\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|result[0]~317_combout\ = ( \inst10|Regist\(0) & ( \inst16|result[0]~312_combout\ & ( (\inst16|result[0]~311_combout\ & (!\inst16|_~9_combout\ & ((!\inst16|_~10_combout\) # (!\inst20|Regist\(0))))) ) ) ) # ( !\inst10|Regist\(0) & ( 
-- \inst16|result[0]~312_combout\ & ( (\inst16|result[0]~311_combout\ & ((!\inst16|_~10_combout\) # (!\inst20|Regist\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010100000100010001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_result[0]~311_combout\,
	datab => \inst16|ALT_INV__~9_combout\,
	datac => \inst16|ALT_INV__~10_combout\,
	datad => \inst20|ALT_INV_Regist\(0),
	datae => \inst10|ALT_INV_Regist\(0),
	dataf => \inst16|ALT_INV_result[0]~312_combout\,
	combout => \inst16|result[0]~317_combout\);

-- Location: LABCELL_X55_Y4_N54
\inst16|result[0]~308\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|result[0]~308_combout\ = ( \inst6|Regist\(0) & ( \inst7|Regist\(0) & ( (!\inst16|_~2_combout\ & (!\inst16|_~0_combout\ & ((!\inst16|_~1_combout\) # (!\inst11|Regist\(0))))) ) ) ) # ( !\inst6|Regist\(0) & ( \inst7|Regist\(0) & ( 
-- (!\inst16|_~2_combout\ & ((!\inst16|_~1_combout\) # (!\inst11|Regist\(0)))) ) ) ) # ( \inst6|Regist\(0) & ( !\inst7|Regist\(0) & ( (!\inst16|_~0_combout\ & ((!\inst16|_~1_combout\) # (!\inst11|Regist\(0)))) ) ) ) # ( !\inst6|Regist\(0) & ( 
-- !\inst7|Regist\(0) & ( (!\inst16|_~1_combout\) # (!\inst11|Regist\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010111110100000000011001000110010001100100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV__~1_combout\,
	datab => \inst16|ALT_INV__~2_combout\,
	datac => \inst11|ALT_INV_Regist\(0),
	datad => \inst16|ALT_INV__~0_combout\,
	datae => \inst6|ALT_INV_Regist\(0),
	dataf => \inst7|ALT_INV_Regist\(0),
	combout => \inst16|result[0]~308_combout\);

-- Location: LABCELL_X56_Y3_N18
\inst16|result[0]~309\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|result[0]~309_combout\ = ( \inst5|Regist\(0) & ( \inst18|Regist\(0) & ( (!\inst16|_~5_combout\ & (!\inst16|_~3_combout\ & ((!\inst16|_~4_combout\) # (!\inst14|Regist\(0))))) ) ) ) # ( !\inst5|Regist\(0) & ( \inst18|Regist\(0) & ( 
-- (!\inst16|_~5_combout\ & ((!\inst16|_~4_combout\) # (!\inst14|Regist\(0)))) ) ) ) # ( \inst5|Regist\(0) & ( !\inst18|Regist\(0) & ( (!\inst16|_~3_combout\ & ((!\inst16|_~4_combout\) # (!\inst14|Regist\(0)))) ) ) ) # ( !\inst5|Regist\(0) & ( 
-- !\inst18|Regist\(0) & ( (!\inst16|_~4_combout\) # (!\inst14|Regist\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011111100111111000000000010101000101010001010100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV__~5_combout\,
	datab => \inst16|ALT_INV__~4_combout\,
	datac => \inst14|ALT_INV_Regist\(0),
	datad => \inst16|ALT_INV__~3_combout\,
	datae => \inst5|ALT_INV_Regist\(0),
	dataf => \inst18|ALT_INV_Regist\(0),
	combout => \inst16|result[0]~309_combout\);

-- Location: LABCELL_X55_Y4_N24
\inst16|result[0]~310\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|result[0]~310_combout\ = ( \inst17|Regist\(0) & ( \inst2|Regist\(0) & ( (!\inst16|_~8_combout\ & (!\inst16|_~7_combout\ & ((!\inst9|Regist\(0)) # (!\inst16|_~6_combout\)))) ) ) ) # ( !\inst17|Regist\(0) & ( \inst2|Regist\(0) & ( 
-- (!\inst16|_~8_combout\ & ((!\inst9|Regist\(0)) # (!\inst16|_~6_combout\))) ) ) ) # ( \inst17|Regist\(0) & ( !\inst2|Regist\(0) & ( (!\inst16|_~7_combout\ & ((!\inst9|Regist\(0)) # (!\inst16|_~6_combout\))) ) ) ) # ( !\inst17|Regist\(0) & ( 
-- !\inst2|Regist\(0) & ( (!\inst9|Regist\(0)) # (!\inst16|_~6_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000110011001100000010101010101000001000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV__~8_combout\,
	datab => \inst16|ALT_INV__~7_combout\,
	datac => \inst9|ALT_INV_Regist\(0),
	datad => \inst16|ALT_INV__~6_combout\,
	datae => \inst17|ALT_INV_Regist\(0),
	dataf => \inst2|ALT_INV_Regist\(0),
	combout => \inst16|result[0]~310_combout\);

-- Location: LABCELL_X55_Y4_N6
\inst16|result[0]~313\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|result[0]~313_combout\ = ( \inst|altsyncram_component|auto_generated|q_a\(0) & ( \inst16|result[0]~310_combout\ & ( ((!\inst16|result[0]~317_combout\) # ((!\inst16|result[0]~308_combout\) # (!\inst16|result[0]~309_combout\))) # 
-- (\inst16|_~11_combout\) ) ) ) # ( !\inst|altsyncram_component|auto_generated|q_a\(0) & ( \inst16|result[0]~310_combout\ & ( (!\inst16|result[0]~317_combout\) # ((!\inst16|result[0]~308_combout\) # (!\inst16|result[0]~309_combout\)) ) ) ) # ( 
-- \inst|altsyncram_component|auto_generated|q_a\(0) & ( !\inst16|result[0]~310_combout\ ) ) # ( !\inst|altsyncram_component|auto_generated|q_a\(0) & ( !\inst16|result[0]~310_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111001111111111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV__~11_combout\,
	datab => \inst16|ALT_INV_result[0]~317_combout\,
	datac => \inst16|ALT_INV_result[0]~308_combout\,
	datad => \inst16|ALT_INV_result[0]~309_combout\,
	datae => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	dataf => \inst16|ALT_INV_result[0]~310_combout\,
	combout => \inst16|result[0]~313_combout\);

-- Location: LABCELL_X60_Y4_N9
\inst17|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst17|Mux7~0_combout\ = ( \inst18|Regist[0]~1_combout\ & ( (!\inst18|Regist[0]~2_combout\ & (\inst16|result[0]~313_combout\)) # (\inst18|Regist[0]~2_combout\ & ((\inst17|Regist\(1)))) ) ) # ( !\inst18|Regist[0]~1_combout\ & ( (!\inst17|Regist\(0) & 
-- !\inst18|Regist[0]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000000110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|ALT_INV_Regist\(0),
	datab => \inst16|ALT_INV_result[0]~313_combout\,
	datac => \inst17|ALT_INV_Regist\(1),
	datad => \inst18|ALT_INV_Regist[0]~2_combout\,
	dataf => \inst18|ALT_INV_Regist[0]~1_combout\,
	combout => \inst17|Mux7~0_combout\);

-- Location: LABCELL_X60_Y4_N27
\inst17|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst17|Mux7~1_combout\ = ( \inst17|Mux7~0_combout\ & ( (!\inst18|Regist[0]~0_combout\) # (\inst17|Add0~29_sumout\) ) ) # ( !\inst17|Mux7~0_combout\ & ( (!\inst18|Regist[0]~0_combout\ & (\inst18|Regist[0]~3_combout\ & ((\inst17|Regist\(7))))) # 
-- (\inst18|Regist[0]~0_combout\ & (((\inst17|Add0~29_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000111000000110100011111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|ALT_INV_Regist[0]~3_combout\,
	datab => \inst18|ALT_INV_Regist[0]~0_combout\,
	datac => \inst17|ALT_INV_Add0~29_sumout\,
	datad => \inst17|ALT_INV_Regist\(7),
	dataf => \inst17|ALT_INV_Mux7~0_combout\,
	combout => \inst17|Mux7~1_combout\);

-- Location: FF_X60_Y4_N29
\inst17|Regist[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst17|Mux7~1_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst18|Regist[0]~4_combout\,
	ena => \inst17|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|Regist\(0));

-- Location: LABCELL_X61_Y4_N6
\inst13|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst16|result[0]~313_combout\ & ( (!\MUX_MAR~input_o\) # (\inst17|Regist\(0)) ) ) # ( !\inst16|result[0]~313_combout\ & ( (\MUX_MAR~input_o\ & \inst17|Regist\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_MUX_MAR~input_o\,
	datad => \inst17|ALT_INV_Regist\(0),
	dataf => \inst16|ALT_INV_result[0]~313_combout\,
	combout => \inst13|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X55_Y3_N48
\inst1|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux7~0_combout\ = ( \inst1|Regist\(0) & ( (\inst18|Regist[0]~1_combout\ & ((!\inst18|Regist[0]~2_combout\ & (\inst13|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\)) # (\inst18|Regist[0]~2_combout\ & ((\inst1|Regist\(1)))))) ) ) # ( 
-- !\inst1|Regist\(0) & ( (!\inst18|Regist[0]~1_combout\ & (!\inst18|Regist[0]~2_combout\)) # (\inst18|Regist[0]~1_combout\ & ((!\inst18|Regist[0]~2_combout\ & (\inst13|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\)) # (\inst18|Regist[0]~2_combout\ & 
-- ((\inst1|Regist\(1)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110010011101100011001001110100000100000101010000010000010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|ALT_INV_Regist[0]~1_combout\,
	datab => \inst18|ALT_INV_Regist[0]~2_combout\,
	datac => \inst13|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datad => \inst1|ALT_INV_Regist\(1),
	dataf => \inst1|ALT_INV_Regist\(0),
	combout => \inst1|Mux7~0_combout\);

-- Location: LABCELL_X55_Y3_N6
\inst1|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux7~1_combout\ = ( \inst1|Add0~29_sumout\ & ( (((\inst18|Regist[0]~3_combout\ & \inst1|Regist\(7))) # (\inst1|Mux7~0_combout\)) # (\inst18|Regist[0]~0_combout\) ) ) # ( !\inst1|Add0~29_sumout\ & ( (!\inst18|Regist[0]~0_combout\ & 
-- (((\inst18|Regist[0]~3_combout\ & \inst1|Regist\(7))) # (\inst1|Mux7~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000101010000010100010101001011111011111110101111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|ALT_INV_Regist[0]~0_combout\,
	datab => \inst18|ALT_INV_Regist[0]~3_combout\,
	datac => \inst1|ALT_INV_Mux7~0_combout\,
	datad => \inst1|ALT_INV_Regist\(7),
	dataf => \inst1|ALT_INV_Add0~29_sumout\,
	combout => \inst1|Mux7~1_combout\);

-- Location: FF_X55_Y3_N8
\inst1|Regist[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst1|Mux7~1_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst18|Regist[0]~4_combout\,
	ena => \inst1|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Regist\(0));

-- Location: LABCELL_X60_Y4_N51
\inst22|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst22|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst1|Regist\(0) & ( \inst2|Regist\(0) ) ) # ( !\inst1|Regist\(0) & ( \inst2|Regist\(0) & ( \MUX_RAM~input_o\ ) ) ) # ( \inst1|Regist\(0) & ( !\inst2|Regist\(0) & ( !\MUX_RAM~input_o\ ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101001010101010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MUX_RAM~input_o\,
	datae => \inst1|ALT_INV_Regist\(0),
	dataf => \inst2|ALT_INV_Regist\(0),
	combout => \inst22|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X56_Y2_N36
\inst23|$00000|auto_generated|l1_w1_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst23|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ = ( \inst16|result[1]~307_combout\ & ( (\inst|altsyncram_component|auto_generated|q_a\(1)) # (\MUX_MDR~input_o\) ) ) # ( !\inst16|result[1]~307_combout\ & ( (!\MUX_MDR~input_o\ & 
-- \inst|altsyncram_component|auto_generated|q_a\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_MUX_MDR~input_o\,
	datac => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	dataf => \inst16|ALT_INV_result[1]~307_combout\,
	combout => \inst23|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X55_Y2_N6
\inst7|Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|Mux6~1_combout\ = ( \inst7|Regist\(1) & ( \inst23|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ( !\SelBus[1]~input_o\ ) ) ) # ( !\inst7|Regist\(1) & ( \inst23|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ ) ) # ( 
-- !\inst7|Regist\(1) & ( !\inst23|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ( \SelBus[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000011111111111111111111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_SelBus[1]~input_o\,
	datae => \inst7|ALT_INV_Regist\(1),
	dataf => \inst23|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\,
	combout => \inst7|Mux6~1_combout\);

-- Location: LABCELL_X57_Y2_N39
\inst7|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|Mux6~0_combout\ = ( \inst7|Regist\(0) & ( (!\SelBus[0]~input_o\) # (\inst7|Regist\(2)) ) ) # ( !\inst7|Regist\(0) & ( (\inst7|Regist\(2) & \SelBus[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|ALT_INV_Regist\(2),
	datad => \ALT_INV_SelBus[0]~input_o\,
	dataf => \inst7|ALT_INV_Regist\(0),
	combout => \inst7|Mux6~0_combout\);

-- Location: LABCELL_X56_Y2_N48
\inst7|Mux6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|Mux6~2_combout\ = ( \inst7|Mux6~0_combout\ & ( ((!\inst3|Regist[6]~0_combout\ & (\inst7|Mux6~1_combout\)) # (\inst3|Regist[6]~0_combout\ & ((\inst7|Add0~25_sumout\)))) # (\SelBus[2]~input_o\) ) ) # ( !\inst7|Mux6~0_combout\ & ( 
-- (!\SelBus[2]~input_o\ & ((!\inst3|Regist[6]~0_combout\ & (\inst7|Mux6~1_combout\)) # (\inst3|Regist[6]~0_combout\ & ((\inst7|Add0~25_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000111011011111110011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Regist[6]~0_combout\,
	datab => \ALT_INV_SelBus[2]~input_o\,
	datac => \inst7|ALT_INV_Mux6~1_combout\,
	datad => \inst7|ALT_INV_Add0~25_sumout\,
	dataf => \inst7|ALT_INV_Mux6~0_combout\,
	combout => \inst7|Mux6~2_combout\);

-- Location: FF_X56_Y2_N50
\inst7|Regist[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst7|Mux6~2_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst3|Regist[6]~1_combout\,
	ena => \inst7|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|Regist\(1));

-- Location: LABCELL_X55_Y2_N0
\inst7|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|Mux7~0_combout\ = ( \inst7|Regist\(1) & ( \inst23|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( ((!\inst18|Regist[0]~2_combout\ & !\inst7|Regist\(0))) # (\inst18|Regist[0]~1_combout\) ) ) ) # ( !\inst7|Regist\(1) & ( 
-- \inst23|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (!\inst18|Regist[0]~2_combout\ & ((!\inst7|Regist\(0)) # (\inst18|Regist[0]~1_combout\))) ) ) ) # ( \inst7|Regist\(1) & ( !\inst23|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( 
-- (!\inst18|Regist[0]~1_combout\ & (!\inst18|Regist[0]~2_combout\ & !\inst7|Regist\(0))) # (\inst18|Regist[0]~1_combout\ & (\inst18|Regist[0]~2_combout\)) ) ) ) # ( !\inst7|Regist\(1) & ( !\inst23|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( 
-- (!\inst18|Regist[0]~1_combout\ & (!\inst18|Regist[0]~2_combout\ & !\inst7|Regist\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100100011001000111000100110001001101010111010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|ALT_INV_Regist[0]~1_combout\,
	datab => \inst18|ALT_INV_Regist[0]~2_combout\,
	datac => \inst7|ALT_INV_Regist\(0),
	datae => \inst7|ALT_INV_Regist\(1),
	dataf => \inst23|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	combout => \inst7|Mux7~0_combout\);

-- Location: LABCELL_X55_Y4_N30
\inst7|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|Mux7~1_combout\ = ( \inst7|Mux7~0_combout\ & ( \inst7|Add0~29_sumout\ ) ) # ( !\inst7|Mux7~0_combout\ & ( \inst7|Add0~29_sumout\ & ( ((\inst7|Regist\(7) & \inst18|Regist[0]~3_combout\)) # (\inst18|Regist[0]~0_combout\) ) ) ) # ( 
-- \inst7|Mux7~0_combout\ & ( !\inst7|Add0~29_sumout\ & ( !\inst18|Regist[0]~0_combout\ ) ) ) # ( !\inst7|Mux7~0_combout\ & ( !\inst7|Add0~29_sumout\ & ( (\inst7|Regist\(7) & (!\inst18|Regist[0]~0_combout\ & \inst18|Regist[0]~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100110011001100110000110011011101111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|ALT_INV_Regist\(7),
	datab => \inst18|ALT_INV_Regist[0]~0_combout\,
	datad => \inst18|ALT_INV_Regist[0]~3_combout\,
	datae => \inst7|ALT_INV_Mux7~0_combout\,
	dataf => \inst7|ALT_INV_Add0~29_sumout\,
	combout => \inst7|Mux7~1_combout\);

-- Location: FF_X55_Y4_N32
\inst7|Regist[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst7|Mux7~1_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst18|Regist[0]~4_combout\,
	ena => \inst7|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|Regist\(0));

-- Location: LABCELL_X55_Y2_N33
\inst23|$00000|auto_generated|l1_w7_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst23|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\ = ( \inst|altsyncram_component|auto_generated|q_a\(7) & ( \inst16|result[7]~271_combout\ ) ) # ( !\inst|altsyncram_component|auto_generated|q_a\(7) & ( \inst16|result[7]~271_combout\ & ( 
-- \MUX_MDR~input_o\ ) ) ) # ( \inst|altsyncram_component|auto_generated|q_a\(7) & ( !\inst16|result[7]~271_combout\ & ( !\MUX_MDR~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101001010101010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MUX_MDR~input_o\,
	datae => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	dataf => \inst16|ALT_INV_result[7]~271_combout\,
	combout => \inst23|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X56_Y2_N21
\inst7|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|Add0~1_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\)) # (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst23|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\)))) ) + ( !\inst7|Regist\(7) $ (((!\SelBus[3]~input_o\) # 
-- (!\SelBus[1]~input_o\))) ) + ( \inst7|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000010100000000000000000010001001110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[3]~input_o\,
	datab => \ALT_INV_SelBus[0]~input_o\,
	datac => \ALT_INV_SelBus[1]~input_o\,
	datad => \inst23|$00000|auto_generated|ALT_INV_l1_w7_n0_mux_dataout~0_combout\,
	dataf => \inst7|ALT_INV_Regist\(7),
	cin => \inst7|Add0~6\,
	sumout => \inst7|Add0~1_sumout\);

-- Location: LABCELL_X55_Y2_N24
\inst7|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|Mux0~0_combout\ = ( \inst19|Regist[7]~0_combout\ & ( \inst7|Regist\(7) & ( (!\inst18|Regist[0]~2_combout\ & ((\inst23|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\))) # (\inst18|Regist[0]~2_combout\ & (\inst7|Regist\(6))) ) ) ) # ( 
-- \inst19|Regist[7]~0_combout\ & ( !\inst7|Regist\(7) & ( (!\inst18|Regist[0]~2_combout\ & ((\inst23|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\))) # (\inst18|Regist[0]~2_combout\ & (\inst7|Regist\(6))) ) ) ) # ( !\inst19|Regist[7]~0_combout\ & ( 
-- !\inst7|Regist\(7) & ( !\inst18|Regist[0]~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100000111010001110100000000000000000001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|ALT_INV_Regist\(6),
	datab => \inst18|ALT_INV_Regist[0]~2_combout\,
	datac => \inst23|$00000|auto_generated|ALT_INV_l1_w7_n0_mux_dataout~0_combout\,
	datae => \inst19|ALT_INV_Regist[7]~0_combout\,
	dataf => \inst7|ALT_INV_Regist\(7),
	combout => \inst7|Mux0~0_combout\);

-- Location: LABCELL_X55_Y2_N12
\inst7|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|Mux0~1_combout\ = ( \inst7|Add0~1_sumout\ & ( \inst7|Mux0~0_combout\ ) ) # ( !\inst7|Add0~1_sumout\ & ( \inst7|Mux0~0_combout\ & ( !\inst18|Regist[0]~0_combout\ ) ) ) # ( \inst7|Add0~1_sumout\ & ( !\inst7|Mux0~0_combout\ & ( ((\inst7|Regist\(0) & 
-- \inst19|Regist[7]~1_combout\)) # (\inst18|Regist[0]~0_combout\) ) ) ) # ( !\inst7|Add0~1_sumout\ & ( !\inst7|Mux0~0_combout\ & ( (\inst7|Regist\(0) & (\inst19|Regist[7]~1_combout\ & !\inst18|Regist[0]~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000111110001111111110000111100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|ALT_INV_Regist\(0),
	datab => \inst19|ALT_INV_Regist[7]~1_combout\,
	datac => \inst18|ALT_INV_Regist[0]~0_combout\,
	datae => \inst7|ALT_INV_Add0~1_sumout\,
	dataf => \inst7|ALT_INV_Mux0~0_combout\,
	combout => \inst7|Mux0~1_combout\);

-- Location: FF_X55_Y2_N14
\inst7|Regist[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst7|Mux0~1_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst19|Regist[7]~2_combout\,
	ena => \inst7|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|Regist\(7));

-- Location: LABCELL_X55_Y5_N0
\inst16|result[7]~264\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|result[7]~264_combout\ = ( \inst6|Regist\(7) & ( \inst11|Regist\(7) & ( (!\inst16|_~0_combout\ & (!\inst16|_~1_combout\ & ((!\inst16|_~2_combout\) # (!\inst7|Regist\(7))))) ) ) ) # ( !\inst6|Regist\(7) & ( \inst11|Regist\(7) & ( 
-- (!\inst16|_~1_combout\ & ((!\inst16|_~2_combout\) # (!\inst7|Regist\(7)))) ) ) ) # ( \inst6|Regist\(7) & ( !\inst11|Regist\(7) & ( (!\inst16|_~0_combout\ & ((!\inst16|_~2_combout\) # (!\inst7|Regist\(7)))) ) ) ) # ( !\inst6|Regist\(7) & ( 
-- !\inst11|Regist\(7) & ( (!\inst16|_~2_combout\) # (!\inst7|Regist\(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111001100101010101000100011110000110000001010000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV__~0_combout\,
	datab => \inst16|ALT_INV__~2_combout\,
	datac => \inst16|ALT_INV__~1_combout\,
	datad => \inst7|ALT_INV_Regist\(7),
	datae => \inst6|ALT_INV_Regist\(7),
	dataf => \inst11|ALT_INV_Regist\(7),
	combout => \inst16|result[7]~264_combout\);

-- Location: IOIBUF_X66_Y0_N75
\Destino[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Destino(7),
	o => \Destino[7]~input_o\);

-- Location: LABCELL_X61_Y4_N12
\inst16|result[7]~268\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|result[7]~268_combout\ = ( \inst16|result[7]~271_combout\ & ( \inst1|Regist\(7) & ( (!\inst16|_~13_combout\ & (!\inst16|_~12_combout\ & ((!\inst16|_~14_combout\) # (!\Destino[7]~input_o\)))) ) ) ) # ( !\inst16|result[7]~271_combout\ & ( 
-- \inst1|Regist\(7) & ( (!\inst16|_~12_combout\ & ((!\inst16|_~14_combout\) # (!\Destino[7]~input_o\))) ) ) ) # ( \inst16|result[7]~271_combout\ & ( !\inst1|Regist\(7) & ( (!\inst16|_~13_combout\ & ((!\inst16|_~14_combout\) # (!\Destino[7]~input_o\))) ) ) ) 
-- # ( !\inst16|result[7]~271_combout\ & ( !\inst1|Regist\(7) & ( (!\inst16|_~14_combout\) # (!\Destino[7]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101110111000001110000011101110000000001110000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV__~14_combout\,
	datab => \ALT_INV_Destino[7]~input_o\,
	datac => \inst16|ALT_INV__~13_combout\,
	datad => \inst16|ALT_INV__~12_combout\,
	datae => \inst16|ALT_INV_result[7]~271_combout\,
	dataf => \inst1|ALT_INV_Regist\(7),
	combout => \inst16|result[7]~268_combout\);

-- Location: MLABCELL_X52_Y5_N24
\inst16|result[7]~267\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|result[7]~267_combout\ = ( \inst10|Regist\(7) & ( \inst|altsyncram_component|auto_generated|q_a\(7) & ( (!\inst16|_~9_combout\ & (!\inst16|_~11_combout\ & ((!\inst16|_~10_combout\) # (!\inst20|Regist\(7))))) ) ) ) # ( !\inst10|Regist\(7) & ( 
-- \inst|altsyncram_component|auto_generated|q_a\(7) & ( (!\inst16|_~11_combout\ & ((!\inst16|_~10_combout\) # (!\inst20|Regist\(7)))) ) ) ) # ( \inst10|Regist\(7) & ( !\inst|altsyncram_component|auto_generated|q_a\(7) & ( (!\inst16|_~9_combout\ & 
-- ((!\inst16|_~10_combout\) # (!\inst20|Regist\(7)))) ) ) ) # ( !\inst10|Regist\(7) & ( !\inst|altsyncram_component|auto_generated|q_a\(7) & ( (!\inst16|_~10_combout\) # (!\inst20|Regist\(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010110010001100100011111010000000001100100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV__~10_combout\,
	datab => \inst16|ALT_INV__~9_combout\,
	datac => \inst20|ALT_INV_Regist\(7),
	datad => \inst16|ALT_INV__~11_combout\,
	datae => \inst10|ALT_INV_Regist\(7),
	dataf => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	combout => \inst16|result[7]~267_combout\);

-- Location: IOIBUF_X52_Y0_N52
\Fuente[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Fuente(7),
	o => \Fuente[7]~input_o\);

-- Location: LABCELL_X53_Y2_N36
\inst16|result[7]~270\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|result[7]~270_combout\ = ( \inst8|Regist\(7) & ( \inst19|Regist\(7) & ( (!\inst16|_~15_combout\ & (!\inst16|_~16_combout\ & ((!\inst16|result[7]~269_combout\) # (!\Fuente[7]~input_o\)))) ) ) ) # ( !\inst8|Regist\(7) & ( \inst19|Regist\(7) & ( 
-- (!\inst16|_~16_combout\ & ((!\inst16|result[7]~269_combout\) # (!\Fuente[7]~input_o\))) ) ) ) # ( \inst8|Regist\(7) & ( !\inst19|Regist\(7) & ( (!\inst16|_~15_combout\ & ((!\inst16|result[7]~269_combout\) # (!\Fuente[7]~input_o\))) ) ) ) # ( 
-- !\inst8|Regist\(7) & ( !\inst19|Regist\(7) & ( (!\inst16|result[7]~269_combout\) # (!\Fuente[7]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101110111000001110000011101110000000001110000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_result[7]~269_combout\,
	datab => \ALT_INV_Fuente[7]~input_o\,
	datac => \inst16|ALT_INV__~15_combout\,
	datad => \inst16|ALT_INV__~16_combout\,
	datae => \inst8|ALT_INV_Regist\(7),
	dataf => \inst19|ALT_INV_Regist\(7),
	combout => \inst16|result[7]~270_combout\);

-- Location: MLABCELL_X59_Y5_N18
\inst16|result[7]~265\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|result[7]~265_combout\ = ( \inst18|Regist\(7) & ( \inst5|Regist\(7) & ( (!\inst16|_~3_combout\ & (!\inst16|_~5_combout\ & ((!\inst16|_~4_combout\) # (!\inst14|Regist\(7))))) ) ) ) # ( !\inst18|Regist\(7) & ( \inst5|Regist\(7) & ( 
-- (!\inst16|_~3_combout\ & ((!\inst16|_~4_combout\) # (!\inst14|Regist\(7)))) ) ) ) # ( \inst18|Regist\(7) & ( !\inst5|Regist\(7) & ( (!\inst16|_~5_combout\ & ((!\inst16|_~4_combout\) # (!\inst14|Regist\(7)))) ) ) ) # ( !\inst18|Regist\(7) & ( 
-- !\inst5|Regist\(7) & ( (!\inst16|_~4_combout\) # (!\inst14|Regist\(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000110011001100000010101010101000001000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV__~3_combout\,
	datab => \inst16|ALT_INV__~5_combout\,
	datac => \inst16|ALT_INV__~4_combout\,
	datad => \inst14|ALT_INV_Regist\(7),
	datae => \inst18|ALT_INV_Regist\(7),
	dataf => \inst5|ALT_INV_Regist\(7),
	combout => \inst16|result[7]~265_combout\);

-- Location: LABCELL_X60_Y3_N24
\inst16|result[7]~266\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|result[7]~266_combout\ = ( \inst17|Regist\(7) & ( \inst2|Regist\(7) & ( (!\inst16|_~7_combout\ & (!\inst16|_~8_combout\ & ((!\inst9|Regist\(7)) # (!\inst16|_~6_combout\)))) ) ) ) # ( !\inst17|Regist\(7) & ( \inst2|Regist\(7) & ( 
-- (!\inst16|_~8_combout\ & ((!\inst9|Regist\(7)) # (!\inst16|_~6_combout\))) ) ) ) # ( \inst17|Regist\(7) & ( !\inst2|Regist\(7) & ( (!\inst16|_~7_combout\ & ((!\inst9|Regist\(7)) # (!\inst16|_~6_combout\))) ) ) ) # ( !\inst17|Regist\(7) & ( 
-- !\inst2|Regist\(7) & ( (!\inst9|Regist\(7)) # (!\inst16|_~6_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000101010101010000011001100110000001000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV__~7_combout\,
	datab => \inst16|ALT_INV__~8_combout\,
	datac => \inst9|ALT_INV_Regist\(7),
	datad => \inst16|ALT_INV__~6_combout\,
	datae => \inst17|ALT_INV_Regist\(7),
	dataf => \inst2|ALT_INV_Regist\(7),
	combout => \inst16|result[7]~266_combout\);

-- Location: MLABCELL_X52_Y5_N30
\inst16|result[7]~271\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|result[7]~271_combout\ = ( \inst16|result[7]~265_combout\ & ( \inst16|result[7]~266_combout\ & ( (!\inst16|result[7]~264_combout\) # ((!\inst16|result[7]~268_combout\) # ((!\inst16|result[7]~267_combout\) # (!\inst16|result[7]~270_combout\))) ) ) 
-- ) # ( !\inst16|result[7]~265_combout\ & ( \inst16|result[7]~266_combout\ ) ) # ( \inst16|result[7]~265_combout\ & ( !\inst16|result[7]~266_combout\ ) ) # ( !\inst16|result[7]~265_combout\ & ( !\inst16|result[7]~266_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_result[7]~264_combout\,
	datab => \inst16|ALT_INV_result[7]~268_combout\,
	datac => \inst16|ALT_INV_result[7]~267_combout\,
	datad => \inst16|ALT_INV_result[7]~270_combout\,
	datae => \inst16|ALT_INV_result[7]~265_combout\,
	dataf => \inst16|ALT_INV_result[7]~266_combout\,
	combout => \inst16|result[7]~271_combout\);

-- Location: MLABCELL_X59_Y3_N6
\inst17|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst17|Mux0~0_combout\ = ( \inst17|Regist\(7) & ( (\inst19|Regist[7]~0_combout\ & ((!\inst18|Regist[0]~2_combout\ & (\inst16|result[7]~271_combout\)) # (\inst18|Regist[0]~2_combout\ & ((\inst17|Regist\(6)))))) ) ) # ( !\inst17|Regist\(7) & ( 
-- (!\inst18|Regist[0]~2_combout\ & ((!\inst19|Regist[7]~0_combout\) # ((\inst16|result[7]~271_combout\)))) # (\inst18|Regist[0]~2_combout\ & (\inst19|Regist[7]~0_combout\ & ((\inst17|Regist\(6))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101010011011100010101001101100000010000100110000001000010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|ALT_INV_Regist[0]~2_combout\,
	datab => \inst19|ALT_INV_Regist[7]~0_combout\,
	datac => \inst16|ALT_INV_result[7]~271_combout\,
	datad => \inst17|ALT_INV_Regist\(6),
	dataf => \inst17|ALT_INV_Regist\(7),
	combout => \inst17|Mux0~0_combout\);

-- Location: MLABCELL_X59_Y4_N15
\inst17|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst17|Add0~9_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[5]~283_combout\)))) ) + ( !\inst17|Regist\(5) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst17|Add0~14\ ))
-- \inst17|Add0~10\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[5]~283_combout\)))) ) + ( !\inst17|Regist\(5) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst17|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000000101001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[3]~input_o\,
	datab => \ALT_INV_SelBus[1]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst16|ALT_INV_result[5]~283_combout\,
	dataf => \inst17|ALT_INV_Regist\(5),
	cin => \inst17|Add0~14\,
	sumout => \inst17|Add0~9_sumout\,
	cout => \inst17|Add0~10\);

-- Location: MLABCELL_X59_Y4_N18
\inst17|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst17|Add0~5_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[6]~277_combout\)))) ) + ( !\inst17|Regist\(6) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst17|Add0~10\ ))
-- \inst17|Add0~6\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[6]~277_combout\)))) ) + ( !\inst17|Regist\(6) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst17|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000000101001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[3]~input_o\,
	datab => \ALT_INV_SelBus[1]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst16|ALT_INV_result[6]~277_combout\,
	dataf => \inst17|ALT_INV_Regist\(6),
	cin => \inst17|Add0~10\,
	sumout => \inst17|Add0~5_sumout\,
	cout => \inst17|Add0~6\);

-- Location: MLABCELL_X59_Y4_N21
\inst17|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst17|Add0~1_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst16|result[7]~271_combout\)))) ) + ( !\inst17|Regist\(7) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst17|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000000101001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[3]~input_o\,
	datab => \ALT_INV_SelBus[1]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst16|ALT_INV_result[7]~271_combout\,
	dataf => \inst17|ALT_INV_Regist\(7),
	cin => \inst17|Add0~6\,
	sumout => \inst17|Add0~1_sumout\);

-- Location: MLABCELL_X59_Y3_N3
\inst17|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst17|Mux0~1_combout\ = ( \inst17|Add0~1_sumout\ & ( (((\inst17|Regist\(0) & \inst19|Regist[7]~1_combout\)) # (\inst17|Mux0~0_combout\)) # (\inst18|Regist[0]~0_combout\) ) ) # ( !\inst17|Add0~1_sumout\ & ( (!\inst18|Regist[0]~0_combout\ & 
-- (((\inst17|Regist\(0) & \inst19|Regist[7]~1_combout\)) # (\inst17|Mux0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000101010001000100010101001110111011111110111011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|ALT_INV_Regist[0]~0_combout\,
	datab => \inst17|ALT_INV_Mux0~0_combout\,
	datac => \inst17|ALT_INV_Regist\(0),
	datad => \inst19|ALT_INV_Regist[7]~1_combout\,
	dataf => \inst17|ALT_INV_Add0~1_sumout\,
	combout => \inst17|Mux0~1_combout\);

-- Location: FF_X59_Y3_N5
\inst17|Regist[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst17|Mux0~1_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst19|Regist[7]~2_combout\,
	ena => \inst17|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|Regist\(7));

-- Location: LABCELL_X60_Y4_N15
\inst17|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst17|Mux1~0_combout\ = ( \inst17|Regist\(7) & ( (\SelBus[0]~input_o\) # (\inst17|Regist\(5)) ) ) # ( !\inst17|Regist\(7) & ( (\inst17|Regist\(5) & !\SelBus[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst17|ALT_INV_Regist\(5),
	datad => \ALT_INV_SelBus[0]~input_o\,
	dataf => \inst17|ALT_INV_Regist\(7),
	combout => \inst17|Mux1~0_combout\);

-- Location: MLABCELL_X59_Y4_N39
\inst17|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst17|Mux1~1_combout\ = ( \inst17|Regist\(6) & ( (!\SelBus[1]~input_o\ & \inst16|result[6]~277_combout\) ) ) # ( !\inst17|Regist\(6) & ( (\inst16|result[6]~277_combout\) # (\SelBus[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SelBus[1]~input_o\,
	datad => \inst16|ALT_INV_result[6]~277_combout\,
	dataf => \inst17|ALT_INV_Regist\(6),
	combout => \inst17|Mux1~1_combout\);

-- Location: MLABCELL_X59_Y4_N48
\inst17|Mux1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst17|Mux1~2_combout\ = ( \inst17|Add0~5_sumout\ & ( (!\SelBus[2]~input_o\ & (((\inst17|Mux1~1_combout\)) # (\inst3|Regist[6]~0_combout\))) # (\SelBus[2]~input_o\ & (((\inst17|Mux1~0_combout\)))) ) ) # ( !\inst17|Add0~5_sumout\ & ( (!\SelBus[2]~input_o\ 
-- & (!\inst3|Regist[6]~0_combout\ & ((\inst17|Mux1~1_combout\)))) # (\SelBus[2]~input_o\ & (((\inst17|Mux1~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110001101000001011000110100100111101011110010011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[2]~input_o\,
	datab => \inst3|ALT_INV_Regist[6]~0_combout\,
	datac => \inst17|ALT_INV_Mux1~0_combout\,
	datad => \inst17|ALT_INV_Mux1~1_combout\,
	dataf => \inst17|ALT_INV_Add0~5_sumout\,
	combout => \inst17|Mux1~2_combout\);

-- Location: FF_X59_Y4_N50
\inst17|Regist[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst17|Mux1~2_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst3|Regist[6]~1_combout\,
	ena => \inst17|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|Regist\(6));

-- Location: LABCELL_X60_Y4_N30
\inst17|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst17|Mux2~0_combout\ = ( \inst17|Regist\(4) & ( (!\SelBus[0]~input_o\) # (\inst17|Regist\(6)) ) ) # ( !\inst17|Regist\(4) & ( (\inst17|Regist\(6) & \SelBus[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst17|ALT_INV_Regist\(6),
	datad => \ALT_INV_SelBus[0]~input_o\,
	dataf => \inst17|ALT_INV_Regist\(4),
	combout => \inst17|Mux2~0_combout\);

-- Location: MLABCELL_X59_Y4_N54
\inst17|Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst17|Mux2~1_combout\ = ( \inst17|Regist\(5) & ( (!\SelBus[1]~input_o\ & \inst16|result[5]~283_combout\) ) ) # ( !\inst17|Regist\(5) & ( (\inst16|result[5]~283_combout\) # (\SelBus[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SelBus[1]~input_o\,
	datad => \inst16|ALT_INV_result[5]~283_combout\,
	dataf => \inst17|ALT_INV_Regist\(5),
	combout => \inst17|Mux2~1_combout\);

-- Location: MLABCELL_X59_Y4_N33
\inst17|Mux2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst17|Mux2~2_combout\ = ( \inst17|Add0~9_sumout\ & ( (!\SelBus[2]~input_o\ & (((\inst17|Mux2~1_combout\)) # (\inst3|Regist[6]~0_combout\))) # (\SelBus[2]~input_o\ & (((\inst17|Mux2~0_combout\)))) ) ) # ( !\inst17|Add0~9_sumout\ & ( (!\SelBus[2]~input_o\ 
-- & (!\inst3|Regist[6]~0_combout\ & ((\inst17|Mux2~1_combout\)))) # (\SelBus[2]~input_o\ & (((\inst17|Mux2~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110001101000001011000110100100111101011110010011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[2]~input_o\,
	datab => \inst3|ALT_INV_Regist[6]~0_combout\,
	datac => \inst17|ALT_INV_Mux2~0_combout\,
	datad => \inst17|ALT_INV_Mux2~1_combout\,
	dataf => \inst17|ALT_INV_Add0~9_sumout\,
	combout => \inst17|Mux2~2_combout\);

-- Location: FF_X59_Y4_N35
\inst17|Regist[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst17|Mux2~2_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst3|Regist[6]~1_combout\,
	ena => \inst17|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|Regist\(5));

-- Location: LABCELL_X61_Y4_N27
\inst13|$00000|auto_generated|l1_w5_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\ = ( \inst16|result[5]~283_combout\ & ( (!\MUX_MAR~input_o\) # (\inst17|Regist\(5)) ) ) # ( !\inst16|result[5]~283_combout\ & ( (\inst17|Regist\(5) & \MUX_MAR~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst17|ALT_INV_Regist\(5),
	datad => \ALT_INV_MUX_MAR~input_o\,
	dataf => \inst16|ALT_INV_result[5]~283_combout\,
	combout => \inst13|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X59_Y2_N57
\inst1|Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux2~1_combout\ = ( \SelBus[1]~input_o\ & ( (\SelBus[2]~input_o\ & ((!\SelBus[0]~input_o\ & (\inst1|Regist\(4))) # (\SelBus[0]~input_o\ & ((\inst1|Regist\(6)))))) ) ) # ( !\SelBus[1]~input_o\ & ( (!\SelBus[2]~input_o\) # ((!\SelBus[0]~input_o\ & 
-- (\inst1|Regist\(4))) # (\SelBus[0]~input_o\ & ((\inst1|Regist\(6))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111011011111110011101101111100000010000100110000001000010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[0]~input_o\,
	datab => \ALT_INV_SelBus[2]~input_o\,
	datac => \inst1|ALT_INV_Regist\(4),
	datad => \inst1|ALT_INV_Regist\(6),
	dataf => \ALT_INV_SelBus[1]~input_o\,
	combout => \inst1|Mux2~1_combout\);

-- Location: LABCELL_X62_Y4_N18
\inst1|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux2~0_combout\ = ( \inst1|Regist\(5) & ( \inst1|Add0~9_sumout\ & ( (!\SelBus[2]~input_o\ & (((\inst13|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\ & \inst1|Mux2~1_combout\)) # (\inst3|Regist[6]~0_combout\))) # (\SelBus[2]~input_o\ & 
-- (((\inst1|Mux2~1_combout\)))) ) ) ) # ( !\inst1|Regist\(5) & ( \inst1|Add0~9_sumout\ & ( (!\SelBus[2]~input_o\ & (((!\inst1|Mux2~1_combout\) # (\inst13|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\)) # (\inst3|Regist[6]~0_combout\))) # 
-- (\SelBus[2]~input_o\ & (((\inst1|Mux2~1_combout\)))) ) ) ) # ( \inst1|Regist\(5) & ( !\inst1|Add0~9_sumout\ & ( (\inst1|Mux2~1_combout\ & (((!\inst3|Regist[6]~0_combout\ & \inst13|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\)) # 
-- (\SelBus[2]~input_o\))) ) ) ) # ( !\inst1|Regist\(5) & ( !\inst1|Add0~9_sumout\ & ( (!\SelBus[2]~input_o\ & (!\inst3|Regist[6]~0_combout\ & ((!\inst1|Mux2~1_combout\) # (\inst13|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\)))) # 
-- (\SelBus[2]~input_o\ & (((\inst1|Mux2~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100000111011000000000011101111001100011111110100010001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Regist[6]~0_combout\,
	datab => \ALT_INV_SelBus[2]~input_o\,
	datac => \inst13|$00000|auto_generated|ALT_INV_l1_w5_n0_mux_dataout~0_combout\,
	datad => \inst1|ALT_INV_Mux2~1_combout\,
	datae => \inst1|ALT_INV_Regist\(5),
	dataf => \inst1|ALT_INV_Add0~9_sumout\,
	combout => \inst1|Mux2~0_combout\);

-- Location: FF_X62_Y4_N20
\inst1|Regist[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst1|Mux2~0_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst3|Regist[6]~1_combout\,
	ena => \inst1|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Regist\(5));

-- Location: LABCELL_X60_Y4_N57
\inst1|Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux3~1_combout\ = ( \SelBus[2]~input_o\ & ( (!\SelBus[0]~input_o\ & (\inst1|Regist\(3))) # (\SelBus[0]~input_o\ & ((\inst1|Regist\(5)))) ) ) # ( !\SelBus[2]~input_o\ & ( !\SelBus[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[0]~input_o\,
	datab => \inst1|ALT_INV_Regist\(3),
	datac => \inst1|ALT_INV_Regist\(5),
	datad => \ALT_INV_SelBus[1]~input_o\,
	dataf => \ALT_INV_SelBus[2]~input_o\,
	combout => \inst1|Mux3~1_combout\);

-- Location: LABCELL_X62_Y4_N24
\inst1|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux3~0_combout\ = ( \inst1|Regist\(4) & ( \inst1|Add0~13_sumout\ & ( (!\SelBus[2]~input_o\ & (((\inst1|Mux3~1_combout\ & \inst13|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\)) # (\inst3|Regist[6]~0_combout\))) # (\SelBus[2]~input_o\ & 
-- (((\inst1|Mux3~1_combout\)))) ) ) ) # ( !\inst1|Regist\(4) & ( \inst1|Add0~13_sumout\ & ( (!\SelBus[2]~input_o\ & (((!\inst1|Mux3~1_combout\) # (\inst13|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\)) # (\inst3|Regist[6]~0_combout\))) # 
-- (\SelBus[2]~input_o\ & (((\inst1|Mux3~1_combout\)))) ) ) ) # ( \inst1|Regist\(4) & ( !\inst1|Add0~13_sumout\ & ( (\inst1|Mux3~1_combout\ & (((!\inst3|Regist[6]~0_combout\ & \inst13|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\)) # 
-- (\SelBus[2]~input_o\))) ) ) ) # ( !\inst1|Regist\(4) & ( !\inst1|Add0~13_sumout\ & ( (!\SelBus[2]~input_o\ & (!\inst3|Regist[6]~0_combout\ & ((!\inst1|Mux3~1_combout\) # (\inst13|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\)))) # 
-- (\SelBus[2]~input_o\ & (((\inst1|Mux3~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001110001011000000110000101111000111110011110100011101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Regist[6]~0_combout\,
	datab => \ALT_INV_SelBus[2]~input_o\,
	datac => \inst1|ALT_INV_Mux3~1_combout\,
	datad => \inst13|$00000|auto_generated|ALT_INV_l1_w4_n0_mux_dataout~0_combout\,
	datae => \inst1|ALT_INV_Regist\(4),
	dataf => \inst1|ALT_INV_Add0~13_sumout\,
	combout => \inst1|Mux3~0_combout\);

-- Location: FF_X62_Y4_N26
\inst1|Regist[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst1|Mux3~0_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst3|Regist[6]~1_combout\,
	ena => \inst1|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Regist\(4));

-- Location: LABCELL_X60_Y4_N54
\inst1|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux4~0_combout\ = ( \inst1|Regist\(2) & ( (!\SelBus[0]~input_o\) # (\inst1|Regist\(4)) ) ) # ( !\inst1|Regist\(2) & ( (\SelBus[0]~input_o\ & \inst1|Regist\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[0]~input_o\,
	datac => \inst1|ALT_INV_Regist\(4),
	dataf => \inst1|ALT_INV_Regist\(2),
	combout => \inst1|Mux4~0_combout\);

-- Location: LABCELL_X57_Y3_N36
\inst1|Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux4~1_combout\ = ( \inst13|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\ & ( (!\SelBus[1]~input_o\) # (!\inst1|Regist\(3)) ) ) # ( !\inst13|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\ & ( (\SelBus[1]~input_o\ & 
-- !\inst1|Regist\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000011111100111111001111110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SelBus[1]~input_o\,
	datac => \inst1|ALT_INV_Regist\(3),
	dataf => \inst13|$00000|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\,
	combout => \inst1|Mux4~1_combout\);

-- Location: LABCELL_X62_Y4_N9
\inst1|Mux4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux4~2_combout\ = ( \inst1|Add0~17_sumout\ & ( (!\SelBus[2]~input_o\ & (((\inst1|Mux4~1_combout\)) # (\inst3|Regist[6]~0_combout\))) # (\SelBus[2]~input_o\ & (((\inst1|Mux4~0_combout\)))) ) ) # ( !\inst1|Add0~17_sumout\ & ( (!\SelBus[2]~input_o\ & 
-- (!\inst3|Regist[6]~0_combout\ & ((\inst1|Mux4~1_combout\)))) # (\SelBus[2]~input_o\ & (((\inst1|Mux4~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001110001011000000111000101101000111110011110100011111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Regist[6]~0_combout\,
	datab => \ALT_INV_SelBus[2]~input_o\,
	datac => \inst1|ALT_INV_Mux4~0_combout\,
	datad => \inst1|ALT_INV_Mux4~1_combout\,
	dataf => \inst1|ALT_INV_Add0~17_sumout\,
	combout => \inst1|Mux4~2_combout\);

-- Location: FF_X62_Y4_N11
\inst1|Regist[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst1|Mux4~2_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst3|Regist[6]~1_combout\,
	ena => \inst1|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Regist\(3));

-- Location: LABCELL_X57_Y3_N30
\inst1|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux5~0_combout\ = ( \SelBus[0]~input_o\ & ( \inst1|Regist\(1) & ( \inst1|Regist\(3) ) ) ) # ( !\SelBus[0]~input_o\ & ( \inst1|Regist\(1) ) ) # ( \SelBus[0]~input_o\ & ( !\inst1|Regist\(1) & ( \inst1|Regist\(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|ALT_INV_Regist\(3),
	datae => \ALT_INV_SelBus[0]~input_o\,
	dataf => \inst1|ALT_INV_Regist\(1),
	combout => \inst1|Mux5~0_combout\);

-- Location: LABCELL_X61_Y4_N9
\inst1|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux5~1_combout\ = ( \inst13|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & ( (!\SelBus[1]~input_o\) # (!\inst1|Regist\(2)) ) ) # ( !\inst13|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & ( (\SelBus[1]~input_o\ & 
-- !\inst1|Regist\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000011111010111110101111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datac => \inst1|ALT_INV_Regist\(2),
	dataf => \inst13|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\,
	combout => \inst1|Mux5~1_combout\);

-- Location: LABCELL_X56_Y3_N15
\inst1|Mux5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux5~2_combout\ = ( \inst1|Mux5~1_combout\ & ( \inst1|Add0~21_sumout\ & ( (!\SelBus[2]~input_o\) # (\inst1|Mux5~0_combout\) ) ) ) # ( !\inst1|Mux5~1_combout\ & ( \inst1|Add0~21_sumout\ & ( (!\SelBus[2]~input_o\ & (\inst3|Regist[6]~0_combout\)) # 
-- (\SelBus[2]~input_o\ & ((\inst1|Mux5~0_combout\))) ) ) ) # ( \inst1|Mux5~1_combout\ & ( !\inst1|Add0~21_sumout\ & ( (!\SelBus[2]~input_o\ & (!\inst3|Regist[6]~0_combout\)) # (\SelBus[2]~input_o\ & ((\inst1|Mux5~0_combout\))) ) ) ) # ( 
-- !\inst1|Mux5~1_combout\ & ( !\inst1|Add0~21_sumout\ & ( (\SelBus[2]~input_o\ & \inst1|Mux5~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101100010001101110100100010011101111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[2]~input_o\,
	datab => \inst3|ALT_INV_Regist[6]~0_combout\,
	datad => \inst1|ALT_INV_Mux5~0_combout\,
	datae => \inst1|ALT_INV_Mux5~1_combout\,
	dataf => \inst1|ALT_INV_Add0~21_sumout\,
	combout => \inst1|Mux5~2_combout\);

-- Location: FF_X56_Y3_N17
\inst1|Regist[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst1|Mux5~2_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst3|Regist[6]~1_combout\,
	ena => \inst1|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Regist\(2));

-- Location: LABCELL_X56_Y3_N0
\inst16|result[2]~299\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|result[2]~299_combout\ = ( \inst16|result[2]~301_combout\ & ( \inst1|Regist\(2) & ( (!\inst16|_~13_combout\ & (!\inst16|_~12_combout\ & ((!\Destino[2]~input_o\) # (!\inst16|_~14_combout\)))) ) ) ) # ( !\inst16|result[2]~301_combout\ & ( 
-- \inst1|Regist\(2) & ( (!\inst16|_~12_combout\ & ((!\Destino[2]~input_o\) # (!\inst16|_~14_combout\))) ) ) ) # ( \inst16|result[2]~301_combout\ & ( !\inst1|Regist\(2) & ( (!\inst16|_~13_combout\ & ((!\Destino[2]~input_o\) # (!\inst16|_~14_combout\))) ) ) ) 
-- # ( !\inst16|result[2]~301_combout\ & ( !\inst1|Regist\(2) & ( (!\Destino[2]~input_o\) # (!\inst16|_~14_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101110111000001110000011101110000000001110000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Destino[2]~input_o\,
	datab => \inst16|ALT_INV__~14_combout\,
	datac => \inst16|ALT_INV__~13_combout\,
	datad => \inst16|ALT_INV__~12_combout\,
	datae => \inst16|ALT_INV_result[2]~301_combout\,
	dataf => \inst1|ALT_INV_Regist\(2),
	combout => \inst16|result[2]~299_combout\);

-- Location: IOIBUF_X34_Y0_N92
\Fuente[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Fuente(2),
	o => \Fuente[2]~input_o\);

-- Location: LABCELL_X53_Y4_N18
\inst16|result[2]~300\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|result[2]~300_combout\ = ( \inst8|Regist\(2) & ( \inst19|Regist\(2) & ( (!\inst16|_~15_combout\ & (!\inst16|_~16_combout\ & ((!\inst16|result[7]~269_combout\) # (!\Fuente[2]~input_o\)))) ) ) ) # ( !\inst8|Regist\(2) & ( \inst19|Regist\(2) & ( 
-- (!\inst16|_~16_combout\ & ((!\inst16|result[7]~269_combout\) # (!\Fuente[2]~input_o\))) ) ) ) # ( \inst8|Regist\(2) & ( !\inst19|Regist\(2) & ( (!\inst16|_~15_combout\ & ((!\inst16|result[7]~269_combout\) # (!\Fuente[2]~input_o\))) ) ) ) # ( 
-- !\inst8|Regist\(2) & ( !\inst19|Regist\(2) & ( (!\inst16|result[7]~269_combout\) # (!\Fuente[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111001100101010101000100011110000110000001010000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV__~15_combout\,
	datab => \inst16|ALT_INV_result[7]~269_combout\,
	datac => \inst16|ALT_INV__~16_combout\,
	datad => \ALT_INV_Fuente[2]~input_o\,
	datae => \inst8|ALT_INV_Regist\(2),
	dataf => \inst19|ALT_INV_Regist\(2),
	combout => \inst16|result[2]~300_combout\);

-- Location: LABCELL_X53_Y4_N6
\inst16|result[2]~315\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|result[2]~315_combout\ = ( \inst20|Regist\(2) & ( \inst16|result[2]~300_combout\ & ( (!\inst16|_~10_combout\ & (\inst16|result[2]~299_combout\ & ((!\inst16|_~9_combout\) # (!\inst10|Regist\(2))))) ) ) ) # ( !\inst20|Regist\(2) & ( 
-- \inst16|result[2]~300_combout\ & ( (\inst16|result[2]~299_combout\ & ((!\inst16|_~9_combout\) # (!\inst10|Regist\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000010100000110000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV__~9_combout\,
	datab => \inst16|ALT_INV__~10_combout\,
	datac => \inst16|ALT_INV_result[2]~299_combout\,
	datad => \inst10|ALT_INV_Regist\(2),
	datae => \inst20|ALT_INV_Regist\(2),
	dataf => \inst16|ALT_INV_result[2]~300_combout\,
	combout => \inst16|result[2]~315_combout\);

-- Location: LABCELL_X56_Y4_N36
\inst16|result[2]~298\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|result[2]~298_combout\ = ( \inst17|Regist\(2) & ( \inst2|Regist\(2) & ( (!\inst16|_~7_combout\ & (!\inst16|_~8_combout\ & ((!\inst16|_~6_combout\) # (!\inst9|Regist\(2))))) ) ) ) # ( !\inst17|Regist\(2) & ( \inst2|Regist\(2) & ( 
-- (!\inst16|_~8_combout\ & ((!\inst16|_~6_combout\) # (!\inst9|Regist\(2)))) ) ) ) # ( \inst17|Regist\(2) & ( !\inst2|Regist\(2) & ( (!\inst16|_~7_combout\ & ((!\inst16|_~6_combout\) # (!\inst9|Regist\(2)))) ) ) ) # ( !\inst17|Regist\(2) & ( 
-- !\inst2|Regist\(2) & ( (!\inst16|_~6_combout\) # (!\inst9|Regist\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011111100101010001010100011111100000000001010100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV__~7_combout\,
	datab => \inst16|ALT_INV__~6_combout\,
	datac => \inst9|ALT_INV_Regist\(2),
	datad => \inst16|ALT_INV__~8_combout\,
	datae => \inst17|ALT_INV_Regist\(2),
	dataf => \inst2|ALT_INV_Regist\(2),
	combout => \inst16|result[2]~298_combout\);

-- Location: LABCELL_X57_Y6_N48
\inst16|result[2]~297\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|result[2]~297_combout\ = ( \inst5|Regist\(2) & ( \inst18|Regist\(2) & ( (!\inst16|_~3_combout\ & (!\inst16|_~5_combout\ & ((!\inst16|_~4_combout\) # (!\inst14|Regist\(2))))) ) ) ) # ( !\inst5|Regist\(2) & ( \inst18|Regist\(2) & ( 
-- (!\inst16|_~5_combout\ & ((!\inst16|_~4_combout\) # (!\inst14|Regist\(2)))) ) ) ) # ( \inst5|Regist\(2) & ( !\inst18|Regist\(2) & ( (!\inst16|_~3_combout\ & ((!\inst16|_~4_combout\) # (!\inst14|Regist\(2)))) ) ) ) # ( !\inst5|Regist\(2) & ( 
-- !\inst18|Regist\(2) & ( (!\inst16|_~4_combout\) # (!\inst14|Regist\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010110010001100100011111010000000001100100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV__~4_combout\,
	datab => \inst16|ALT_INV__~3_combout\,
	datac => \inst14|ALT_INV_Regist\(2),
	datad => \inst16|ALT_INV__~5_combout\,
	datae => \inst5|ALT_INV_Regist\(2),
	dataf => \inst18|ALT_INV_Regist\(2),
	combout => \inst16|result[2]~297_combout\);

-- Location: LABCELL_X57_Y4_N24
\inst16|result[2]~296\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|result[2]~296_combout\ = ( \inst11|Regist\(2) & ( \inst7|Regist\(2) & ( (!\inst16|_~1_combout\ & (!\inst16|_~2_combout\ & ((!\inst16|_~0_combout\) # (!\inst6|Regist\(2))))) ) ) ) # ( !\inst11|Regist\(2) & ( \inst7|Regist\(2) & ( 
-- (!\inst16|_~2_combout\ & ((!\inst16|_~0_combout\) # (!\inst6|Regist\(2)))) ) ) ) # ( \inst11|Regist\(2) & ( !\inst7|Regist\(2) & ( (!\inst16|_~1_combout\ & ((!\inst16|_~0_combout\) # (!\inst6|Regist\(2)))) ) ) ) # ( !\inst11|Regist\(2) & ( 
-- !\inst7|Regist\(2) & ( (!\inst16|_~0_combout\) # (!\inst6|Regist\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010110010001100100011111010000000001100100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV__~0_combout\,
	datab => \inst16|ALT_INV__~1_combout\,
	datac => \inst6|ALT_INV_Regist\(2),
	datad => \inst16|ALT_INV__~2_combout\,
	datae => \inst11|ALT_INV_Regist\(2),
	dataf => \inst7|ALT_INV_Regist\(2),
	combout => \inst16|result[2]~296_combout\);

-- Location: LABCELL_X56_Y4_N48
\inst16|result[2]~301\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|result[2]~301_combout\ = ( \inst|altsyncram_component|auto_generated|q_a\(2) & ( \inst16|result[2]~296_combout\ & ( (!\inst16|result[2]~315_combout\) # (((!\inst16|result[2]~298_combout\) # (!\inst16|result[2]~297_combout\)) # 
-- (\inst16|_~11_combout\)) ) ) ) # ( !\inst|altsyncram_component|auto_generated|q_a\(2) & ( \inst16|result[2]~296_combout\ & ( (!\inst16|result[2]~315_combout\) # ((!\inst16|result[2]~298_combout\) # (!\inst16|result[2]~297_combout\)) ) ) ) # ( 
-- \inst|altsyncram_component|auto_generated|q_a\(2) & ( !\inst16|result[2]~296_combout\ ) ) # ( !\inst|altsyncram_component|auto_generated|q_a\(2) & ( !\inst16|result[2]~296_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111110101111111111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_result[2]~315_combout\,
	datab => \inst16|ALT_INV__~11_combout\,
	datac => \inst16|ALT_INV_result[2]~298_combout\,
	datad => \inst16|ALT_INV_result[2]~297_combout\,
	datae => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	dataf => \inst16|ALT_INV_result[2]~296_combout\,
	combout => \inst16|result[2]~301_combout\);

-- Location: LABCELL_X53_Y3_N9
\inst10|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Mux4~0_combout\ = ( \inst10|Regist\(4) & ( (\inst10|Regist\(2)) # (\SelBus[0]~input_o\) ) ) # ( !\inst10|Regist\(4) & ( (!\SelBus[0]~input_o\ & \inst10|Regist\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst10|ALT_INV_Regist\(2),
	dataf => \inst10|ALT_INV_Regist\(4),
	combout => \inst10|Mux4~0_combout\);

-- Location: LABCELL_X53_Y3_N57
\inst10|Mux4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Mux4~2_combout\ = ( \inst10|Mux4~0_combout\ & ( ((!\inst3|Regist[6]~0_combout\ & (\inst10|Mux4~1_combout\)) # (\inst3|Regist[6]~0_combout\ & ((\inst10|Add0~17_sumout\)))) # (\SelBus[2]~input_o\) ) ) # ( !\inst10|Mux4~0_combout\ & ( 
-- (!\SelBus[2]~input_o\ & ((!\inst3|Regist[6]~0_combout\ & (\inst10|Mux4~1_combout\)) # (\inst3|Regist[6]~0_combout\ & ((\inst10|Add0~17_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011100000000010001110000000001000111111111110100011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|ALT_INV_Mux4~1_combout\,
	datab => \inst3|ALT_INV_Regist[6]~0_combout\,
	datac => \inst10|ALT_INV_Add0~17_sumout\,
	datad => \ALT_INV_SelBus[2]~input_o\,
	dataf => \inst10|ALT_INV_Mux4~0_combout\,
	combout => \inst10|Mux4~2_combout\);

-- Location: FF_X53_Y3_N59
\inst10|Regist[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst10|Mux4~2_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst3|Regist[6]~1_combout\,
	ena => \inst10|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|Regist\(3));

-- Location: IOIBUF_X68_Y0_N52
\Destino[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Destino(3),
	o => \Destino[3]~input_o\);

-- Location: LABCELL_X62_Y4_N36
\inst16|result[3]~293\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|result[3]~293_combout\ = ( \inst16|result[3]~295_combout\ & ( \inst1|Regist\(3) & ( (!\inst16|_~13_combout\ & (!\inst16|_~12_combout\ & ((!\inst16|_~14_combout\) # (!\Destino[3]~input_o\)))) ) ) ) # ( !\inst16|result[3]~295_combout\ & ( 
-- \inst1|Regist\(3) & ( (!\inst16|_~12_combout\ & ((!\inst16|_~14_combout\) # (!\Destino[3]~input_o\))) ) ) ) # ( \inst16|result[3]~295_combout\ & ( !\inst1|Regist\(3) & ( (!\inst16|_~13_combout\ & ((!\inst16|_~14_combout\) # (!\Destino[3]~input_o\))) ) ) ) 
-- # ( !\inst16|result[3]~295_combout\ & ( !\inst1|Regist\(3) & ( (!\inst16|_~14_combout\) # (!\Destino[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101110111000001110000011101110000000001110000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV__~14_combout\,
	datab => \ALT_INV_Destino[3]~input_o\,
	datac => \inst16|ALT_INV__~13_combout\,
	datad => \inst16|ALT_INV__~12_combout\,
	datae => \inst16|ALT_INV_result[3]~295_combout\,
	dataf => \inst1|ALT_INV_Regist\(3),
	combout => \inst16|result[3]~293_combout\);

-- Location: IOIBUF_X40_Y0_N18
\Fuente[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Fuente(3),
	o => \Fuente[3]~input_o\);

-- Location: LABCELL_X51_Y3_N24
\inst16|result[3]~294\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|result[3]~294_combout\ = ( \Fuente[3]~input_o\ & ( \inst8|Regist\(3) & ( (!\inst16|result[7]~269_combout\ & (!\inst16|_~15_combout\ & ((!\inst16|_~16_combout\) # (!\inst19|Regist\(3))))) ) ) ) # ( !\Fuente[3]~input_o\ & ( \inst8|Regist\(3) & ( 
-- (!\inst16|_~15_combout\ & ((!\inst16|_~16_combout\) # (!\inst19|Regist\(3)))) ) ) ) # ( \Fuente[3]~input_o\ & ( !\inst8|Regist\(3) & ( (!\inst16|result[7]~269_combout\ & ((!\inst16|_~16_combout\) # (!\inst19|Regist\(3)))) ) ) ) # ( !\Fuente[3]~input_o\ & 
-- ( !\inst8|Regist\(3) & ( (!\inst16|_~16_combout\) # (!\inst19|Regist\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010110010001100100011111010000000001100100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV__~16_combout\,
	datab => \inst16|ALT_INV_result[7]~269_combout\,
	datac => \inst19|ALT_INV_Regist\(3),
	datad => \inst16|ALT_INV__~15_combout\,
	datae => \ALT_INV_Fuente[3]~input_o\,
	dataf => \inst8|ALT_INV_Regist\(3),
	combout => \inst16|result[3]~294_combout\);

-- Location: MLABCELL_X52_Y3_N9
\inst16|result[3]~314\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|result[3]~314_combout\ = ( \inst16|result[3]~293_combout\ & ( \inst16|result[3]~294_combout\ & ( (!\inst16|_~9_combout\ & (((!\inst20|Regist\(3)) # (!\inst16|_~10_combout\)))) # (\inst16|_~9_combout\ & (!\inst10|Regist\(3) & ((!\inst20|Regist\(3)) 
-- # (!\inst16|_~10_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001110111011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV__~9_combout\,
	datab => \inst10|ALT_INV_Regist\(3),
	datac => \inst20|ALT_INV_Regist\(3),
	datad => \inst16|ALT_INV__~10_combout\,
	datae => \inst16|ALT_INV_result[3]~293_combout\,
	dataf => \inst16|ALT_INV_result[3]~294_combout\,
	combout => \inst16|result[3]~314_combout\);

-- Location: LABCELL_X57_Y3_N54
\inst16|result[3]~290\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|result[3]~290_combout\ = ( \inst6|Regist\(3) & ( \inst11|Regist\(3) & ( (!\inst16|_~0_combout\ & (!\inst16|_~1_combout\ & ((!\inst16|_~2_combout\) # (!\inst7|Regist\(3))))) ) ) ) # ( !\inst6|Regist\(3) & ( \inst11|Regist\(3) & ( 
-- (!\inst16|_~1_combout\ & ((!\inst16|_~2_combout\) # (!\inst7|Regist\(3)))) ) ) ) # ( \inst6|Regist\(3) & ( !\inst11|Regist\(3) & ( (!\inst16|_~0_combout\ & ((!\inst16|_~2_combout\) # (!\inst7|Regist\(3)))) ) ) ) # ( !\inst6|Regist\(3) & ( 
-- !\inst11|Regist\(3) & ( (!\inst16|_~2_combout\) # (!\inst7|Regist\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011111100101010001010100011111100000000001010100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV__~0_combout\,
	datab => \inst16|ALT_INV__~2_combout\,
	datac => \inst7|ALT_INV_Regist\(3),
	datad => \inst16|ALT_INV__~1_combout\,
	datae => \inst6|ALT_INV_Regist\(3),
	dataf => \inst11|ALT_INV_Regist\(3),
	combout => \inst16|result[3]~290_combout\);

-- Location: LABCELL_X56_Y3_N57
\inst16|result[3]~291\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|result[3]~291_combout\ = ( \inst5|Regist\(3) & ( \inst18|Regist\(3) & ( (!\inst16|_~5_combout\ & (!\inst16|_~3_combout\ & ((!\inst16|_~4_combout\) # (!\inst14|Regist\(3))))) ) ) ) # ( !\inst5|Regist\(3) & ( \inst18|Regist\(3) & ( 
-- (!\inst16|_~5_combout\ & ((!\inst16|_~4_combout\) # (!\inst14|Regist\(3)))) ) ) ) # ( \inst5|Regist\(3) & ( !\inst18|Regist\(3) & ( (!\inst16|_~3_combout\ & ((!\inst16|_~4_combout\) # (!\inst14|Regist\(3)))) ) ) ) # ( !\inst5|Regist\(3) & ( 
-- !\inst18|Regist\(3) & ( (!\inst16|_~4_combout\) # (!\inst14|Regist\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011111100111111000000000010101000101010001010100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV__~5_combout\,
	datab => \inst16|ALT_INV__~4_combout\,
	datac => \inst14|ALT_INV_Regist\(3),
	datad => \inst16|ALT_INV__~3_combout\,
	datae => \inst5|ALT_INV_Regist\(3),
	dataf => \inst18|ALT_INV_Regist\(3),
	combout => \inst16|result[3]~291_combout\);

-- Location: LABCELL_X61_Y3_N27
\inst16|result[3]~292\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|result[3]~292_combout\ = ( \inst2|Regist\(3) & ( \inst9|Regist\(3) & ( (!\inst16|_~6_combout\ & (!\inst16|_~8_combout\ & ((!\inst16|_~7_combout\) # (!\inst17|Regist\(3))))) ) ) ) # ( !\inst2|Regist\(3) & ( \inst9|Regist\(3) & ( 
-- (!\inst16|_~6_combout\ & ((!\inst16|_~7_combout\) # (!\inst17|Regist\(3)))) ) ) ) # ( \inst2|Regist\(3) & ( !\inst9|Regist\(3) & ( (!\inst16|_~8_combout\ & ((!\inst16|_~7_combout\) # (!\inst17|Regist\(3)))) ) ) ) # ( !\inst2|Regist\(3) & ( 
-- !\inst9|Regist\(3) & ( (!\inst16|_~7_combout\) # (!\inst17|Regist\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111001100111100001100000010101010100010001010000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV__~6_combout\,
	datab => \inst16|ALT_INV__~7_combout\,
	datac => \inst16|ALT_INV__~8_combout\,
	datad => \inst17|ALT_INV_Regist\(3),
	datae => \inst2|ALT_INV_Regist\(3),
	dataf => \inst9|ALT_INV_Regist\(3),
	combout => \inst16|result[3]~292_combout\);

-- Location: LABCELL_X57_Y3_N48
\inst16|result[3]~295\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|result[3]~295_combout\ = ( \inst|altsyncram_component|auto_generated|q_a\(3) & ( \inst16|result[3]~292_combout\ & ( (!\inst16|result[3]~314_combout\) # (((!\inst16|result[3]~290_combout\) # (!\inst16|result[3]~291_combout\)) # 
-- (\inst16|_~11_combout\)) ) ) ) # ( !\inst|altsyncram_component|auto_generated|q_a\(3) & ( \inst16|result[3]~292_combout\ & ( (!\inst16|result[3]~314_combout\) # ((!\inst16|result[3]~290_combout\) # (!\inst16|result[3]~291_combout\)) ) ) ) # ( 
-- \inst|altsyncram_component|auto_generated|q_a\(3) & ( !\inst16|result[3]~292_combout\ ) ) # ( !\inst|altsyncram_component|auto_generated|q_a\(3) & ( !\inst16|result[3]~292_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111110101111111111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_result[3]~314_combout\,
	datab => \inst16|ALT_INV__~11_combout\,
	datac => \inst16|ALT_INV_result[3]~290_combout\,
	datad => \inst16|ALT_INV_result[3]~291_combout\,
	datae => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	dataf => \inst16|ALT_INV_result[3]~292_combout\,
	combout => \inst16|result[3]~295_combout\);

-- Location: LABCELL_X51_Y4_N18
\inst3|Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux3~1_combout\ = ( \inst3|Regist\(4) & ( (\inst16|result[4]~289_combout\ & !\SelBus[1]~input_o\) ) ) # ( !\inst3|Regist\(4) & ( (\SelBus[1]~input_o\) # (\inst16|result[4]~289_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst16|ALT_INV_result[4]~289_combout\,
	datad => \ALT_INV_SelBus[1]~input_o\,
	dataf => \inst3|ALT_INV_Regist\(4),
	combout => \inst3|Mux3~1_combout\);

-- Location: LABCELL_X51_Y4_N57
\inst3|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux3~0_combout\ = ( \inst3|Regist\(3) & ( (!\SelBus[0]~input_o\) # (\inst3|Regist\(5)) ) ) # ( !\inst3|Regist\(3) & ( (\SelBus[0]~input_o\ & \inst3|Regist\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst3|ALT_INV_Regist\(5),
	dataf => \inst3|ALT_INV_Regist\(3),
	combout => \inst3|Mux3~0_combout\);

-- Location: LABCELL_X51_Y4_N24
\inst3|Mux3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux3~2_combout\ = ( \inst3|Mux3~0_combout\ & ( ((!\inst3|Regist[6]~0_combout\ & ((\inst3|Mux3~1_combout\))) # (\inst3|Regist[6]~0_combout\ & (\inst3|Add0~13_sumout\))) # (\SelBus[2]~input_o\) ) ) # ( !\inst3|Mux3~0_combout\ & ( 
-- (!\SelBus[2]~input_o\ & ((!\inst3|Regist[6]~0_combout\ & ((\inst3|Mux3~1_combout\))) # (\inst3|Regist[6]~0_combout\ & (\inst3|Add0~13_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100000000000110110000000000011011111111110001101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Regist[6]~0_combout\,
	datab => \inst3|ALT_INV_Add0~13_sumout\,
	datac => \inst3|ALT_INV_Mux3~1_combout\,
	datad => \ALT_INV_SelBus[2]~input_o\,
	dataf => \inst3|ALT_INV_Mux3~0_combout\,
	combout => \inst3|Mux3~2_combout\);

-- Location: FF_X51_Y4_N26
\inst3|Regist[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst3|Mux3~2_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst3|Regist[6]~1_combout\,
	ena => \inst3|Regist[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|Regist\(4));

-- Location: LABCELL_X51_Y2_N27
\inst24|Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|Mux4~1_combout\ = ( \AluSel[0]~input_o\ & ( \inst24|Add1~13_sumout\ & ( \AluSel[2]~input_o\ ) ) ) # ( !\AluSel[0]~input_o\ & ( \inst24|Add1~13_sumout\ & ( !\AluSel[2]~input_o\ $ (\AluSel[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000011110000110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_AluSel[2]~input_o\,
	datac => \ALT_INV_AluSel[1]~input_o\,
	datae => \ALT_INV_AluSel[0]~input_o\,
	dataf => \inst24|ALT_INV_Add1~13_sumout\,
	combout => \inst24|Mux4~1_combout\);

-- Location: MLABCELL_X52_Y2_N42
\inst20|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst20|Mux3~0_combout\ = ( \inst24|Mux4~1_combout\ & ( \inst20|Regist\(4) & ( \SelBus[1]~input_o\ ) ) ) # ( !\inst24|Mux4~1_combout\ & ( \inst20|Regist\(4) & ( ((!\inst24|Mux4~2_combout\ & ((!\inst24|Add0~13_sumout\) # (!\inst24|Mux4~0_combout\)))) # 
-- (\SelBus[1]~input_o\) ) ) ) # ( !\inst24|Mux4~1_combout\ & ( !\inst20|Regist\(4) & ( (!\SelBus[1]~input_o\ & (!\inst24|Mux4~2_combout\ & ((!\inst24|Add0~13_sumout\) # (!\inst24|Mux4~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100100000000000000000000000000011111011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|ALT_INV_Add0~13_sumout\,
	datab => \ALT_INV_SelBus[1]~input_o\,
	datac => \inst24|ALT_INV_Mux4~0_combout\,
	datad => \inst24|ALT_INV_Mux4~2_combout\,
	datae => \inst24|ALT_INV_Mux4~1_combout\,
	dataf => \inst20|ALT_INV_Regist\(4),
	combout => \inst20|Mux3~0_combout\);

-- Location: LABCELL_X53_Y5_N33
\inst20|Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst20|Mux3~1_combout\ = ( \inst20|Regist\(5) & ( (\SelBus[0]~input_o\) # (\inst20|Regist\(3)) ) ) # ( !\inst20|Regist\(5) & ( (\inst20|Regist\(3) & !\SelBus[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst20|ALT_INV_Regist\(3),
	datad => \ALT_INV_SelBus[0]~input_o\,
	dataf => \inst20|ALT_INV_Regist\(5),
	combout => \inst20|Mux3~1_combout\);

-- Location: MLABCELL_X52_Y2_N24
\inst20|Mux3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst20|Mux3~2_combout\ = ( \inst20|Add0~13_sumout\ & ( (!\SelBus[2]~input_o\ & (((!\inst20|Mux3~0_combout\)) # (\inst3|Regist[6]~0_combout\))) # (\SelBus[2]~input_o\ & (((\inst20|Mux3~1_combout\)))) ) ) # ( !\inst20|Add0~13_sumout\ & ( 
-- (!\SelBus[2]~input_o\ & (!\inst3|Regist[6]~0_combout\ & (!\inst20|Mux3~0_combout\))) # (\SelBus[2]~input_o\ & (((\inst20|Mux3~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010001111100000001000111111010000110111111101000011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Regist[6]~0_combout\,
	datab => \inst20|ALT_INV_Mux3~0_combout\,
	datac => \ALT_INV_SelBus[2]~input_o\,
	datad => \inst20|ALT_INV_Mux3~1_combout\,
	dataf => \inst20|ALT_INV_Add0~13_sumout\,
	combout => \inst20|Mux3~2_combout\);

-- Location: FF_X52_Y2_N26
\inst20|Regist[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst20|Mux3~2_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst3|Regist[6]~1_combout\,
	ena => \inst20|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|Regist\(4));

-- Location: IOIBUF_X89_Y9_N55
\Destino[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Destino(4),
	o => \Destino[4]~input_o\);

-- Location: LABCELL_X62_Y4_N54
\inst16|result[4]~287\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|result[4]~287_combout\ = ( \Destino[4]~input_o\ & ( \inst1|Regist\(4) & ( (!\inst16|_~12_combout\ & (!\inst16|_~14_combout\ & ((!\inst16|result[4]~289_combout\) # (!\inst16|_~13_combout\)))) ) ) ) # ( !\Destino[4]~input_o\ & ( \inst1|Regist\(4) & 
-- ( (!\inst16|_~12_combout\ & ((!\inst16|result[4]~289_combout\) # (!\inst16|_~13_combout\))) ) ) ) # ( \Destino[4]~input_o\ & ( !\inst1|Regist\(4) & ( (!\inst16|_~14_combout\ & ((!\inst16|result[4]~289_combout\) # (!\inst16|_~13_combout\))) ) ) ) # ( 
-- !\Destino[4]~input_o\ & ( !\inst1|Regist\(4) & ( (!\inst16|result[4]~289_combout\) # (!\inst16|_~13_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010111110100000000011001000110010001100100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_result[4]~289_combout\,
	datab => \inst16|ALT_INV__~12_combout\,
	datac => \inst16|ALT_INV__~13_combout\,
	datad => \inst16|ALT_INV__~14_combout\,
	datae => \ALT_INV_Destino[4]~input_o\,
	dataf => \inst1|ALT_INV_Regist\(4),
	combout => \inst16|result[4]~287_combout\);

-- Location: IOIBUF_X52_Y0_N1
\Fuente[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Fuente(4),
	o => \Fuente[4]~input_o\);

-- Location: MLABCELL_X52_Y2_N36
\inst16|result[4]~288\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|result[4]~288_combout\ = ( \inst19|Regist\(4) & ( \inst8|Regist\(4) & ( (!\inst16|_~15_combout\ & (!\inst16|_~16_combout\ & ((!\inst16|result[7]~269_combout\) # (!\Fuente[4]~input_o\)))) ) ) ) # ( !\inst19|Regist\(4) & ( \inst8|Regist\(4) & ( 
-- (!\inst16|_~15_combout\ & ((!\inst16|result[7]~269_combout\) # (!\Fuente[4]~input_o\))) ) ) ) # ( \inst19|Regist\(4) & ( !\inst8|Regist\(4) & ( (!\inst16|_~16_combout\ & ((!\inst16|result[7]~269_combout\) # (!\Fuente[4]~input_o\))) ) ) ) # ( 
-- !\inst19|Regist\(4) & ( !\inst8|Regist\(4) & ( (!\inst16|result[7]~269_combout\) # (!\Fuente[4]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101110111011100000000011100000111000001110000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_result[7]~269_combout\,
	datab => \ALT_INV_Fuente[4]~input_o\,
	datac => \inst16|ALT_INV__~15_combout\,
	datad => \inst16|ALT_INV__~16_combout\,
	datae => \inst19|ALT_INV_Regist\(4),
	dataf => \inst8|ALT_INV_Regist\(4),
	combout => \inst16|result[4]~288_combout\);

-- Location: MLABCELL_X52_Y2_N30
\inst16|result[4]~320\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|result[4]~320_combout\ = ( \inst16|result[4]~288_combout\ & ( \inst10|Regist\(4) & ( (!\inst16|_~9_combout\ & (\inst16|result[4]~287_combout\ & ((!\inst16|_~10_combout\) # (!\inst20|Regist\(4))))) ) ) ) # ( \inst16|result[4]~288_combout\ & ( 
-- !\inst10|Regist\(4) & ( (\inst16|result[4]~287_combout\ & ((!\inst16|_~10_combout\) # (!\inst20|Regist\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111101000000000000000000000000011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV__~10_combout\,
	datab => \inst16|ALT_INV__~9_combout\,
	datac => \inst20|ALT_INV_Regist\(4),
	datad => \inst16|ALT_INV_result[4]~287_combout\,
	datae => \inst16|ALT_INV_result[4]~288_combout\,
	dataf => \inst10|ALT_INV_Regist\(4),
	combout => \inst16|result[4]~320_combout\);

-- Location: LABCELL_X60_Y3_N0
\inst16|result[4]~286\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|result[4]~286_combout\ = ( \inst9|Regist\(4) & ( \inst2|Regist\(4) & ( (!\inst16|_~6_combout\ & (!\inst16|_~8_combout\ & ((!\inst16|_~7_combout\) # (!\inst17|Regist\(4))))) ) ) ) # ( !\inst9|Regist\(4) & ( \inst2|Regist\(4) & ( 
-- (!\inst16|_~8_combout\ & ((!\inst16|_~7_combout\) # (!\inst17|Regist\(4)))) ) ) ) # ( \inst9|Regist\(4) & ( !\inst2|Regist\(4) & ( (!\inst16|_~6_combout\ & ((!\inst16|_~7_combout\) # (!\inst17|Regist\(4)))) ) ) ) # ( !\inst9|Regist\(4) & ( 
-- !\inst2|Regist\(4) & ( (!\inst16|_~7_combout\) # (!\inst17|Regist\(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000101010101010000011001100110000001000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV__~6_combout\,
	datab => \inst16|ALT_INV__~8_combout\,
	datac => \inst16|ALT_INV__~7_combout\,
	datad => \inst17|ALT_INV_Regist\(4),
	datae => \inst9|ALT_INV_Regist\(4),
	dataf => \inst2|ALT_INV_Regist\(4),
	combout => \inst16|result[4]~286_combout\);

-- Location: LABCELL_X56_Y3_N36
\inst16|result[4]~285\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|result[4]~285_combout\ = ( \inst14|Regist\(4) & ( \inst18|Regist\(4) & ( (!\inst16|_~5_combout\ & (!\inst16|_~4_combout\ & ((!\inst16|_~3_combout\) # (!\inst5|Regist\(4))))) ) ) ) # ( !\inst14|Regist\(4) & ( \inst18|Regist\(4) & ( 
-- (!\inst16|_~5_combout\ & ((!\inst16|_~3_combout\) # (!\inst5|Regist\(4)))) ) ) ) # ( \inst14|Regist\(4) & ( !\inst18|Regist\(4) & ( (!\inst16|_~4_combout\ & ((!\inst16|_~3_combout\) # (!\inst5|Regist\(4)))) ) ) ) # ( !\inst14|Regist\(4) & ( 
-- !\inst18|Regist\(4) & ( (!\inst16|_~3_combout\) # (!\inst5|Regist\(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000110011001100000010101010101000001000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV__~5_combout\,
	datab => \inst16|ALT_INV__~4_combout\,
	datac => \inst16|ALT_INV__~3_combout\,
	datad => \inst5|ALT_INV_Regist\(4),
	datae => \inst14|ALT_INV_Regist\(4),
	dataf => \inst18|ALT_INV_Regist\(4),
	combout => \inst16|result[4]~285_combout\);

-- Location: LABCELL_X55_Y3_N36
\inst16|result[4]~284\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|result[4]~284_combout\ = ( \inst11|Regist\(4) & ( \inst6|Regist\(4) & ( (!\inst16|_~0_combout\ & (!\inst16|_~1_combout\ & ((!\inst16|_~2_combout\) # (!\inst7|Regist\(4))))) ) ) ) # ( !\inst11|Regist\(4) & ( \inst6|Regist\(4) & ( 
-- (!\inst16|_~0_combout\ & ((!\inst16|_~2_combout\) # (!\inst7|Regist\(4)))) ) ) ) # ( \inst11|Regist\(4) & ( !\inst6|Regist\(4) & ( (!\inst16|_~1_combout\ & ((!\inst16|_~2_combout\) # (!\inst7|Regist\(4)))) ) ) ) # ( !\inst11|Regist\(4) & ( 
-- !\inst6|Regist\(4) & ( (!\inst16|_~2_combout\) # (!\inst7|Regist\(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110101010111100001010000011001100100010001100000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV__~2_combout\,
	datab => \inst16|ALT_INV__~0_combout\,
	datac => \inst16|ALT_INV__~1_combout\,
	datad => \inst7|ALT_INV_Regist\(4),
	datae => \inst11|ALT_INV_Regist\(4),
	dataf => \inst6|ALT_INV_Regist\(4),
	combout => \inst16|result[4]~284_combout\);

-- Location: LABCELL_X56_Y3_N42
\inst16|result[4]~289\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|result[4]~289_combout\ = ( \inst16|result[4]~285_combout\ & ( \inst16|result[4]~284_combout\ & ( (!\inst16|result[4]~320_combout\) # ((!\inst16|result[4]~286_combout\) # ((\inst16|_~11_combout\ & 
-- \inst|altsyncram_component|auto_generated|q_a\(4)))) ) ) ) # ( !\inst16|result[4]~285_combout\ & ( \inst16|result[4]~284_combout\ ) ) # ( \inst16|result[4]~285_combout\ & ( !\inst16|result[4]~284_combout\ ) ) # ( !\inst16|result[4]~285_combout\ & ( 
-- !\inst16|result[4]~284_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111110011111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV__~11_combout\,
	datab => \inst16|ALT_INV_result[4]~320_combout\,
	datac => \inst16|ALT_INV_result[4]~286_combout\,
	datad => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	datae => \inst16|ALT_INV_result[4]~285_combout\,
	dataf => \inst16|ALT_INV_result[4]~284_combout\,
	combout => \inst16|result[4]~289_combout\);

-- Location: LABCELL_X62_Y3_N27
\inst2|Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Mux2~1_combout\ = ( \inst2|Regist\(5) & ( (!\SelBus[1]~input_o\ & \inst16|result[5]~283_combout\) ) ) # ( !\inst2|Regist\(5) & ( (\inst16|result[5]~283_combout\) # (\SelBus[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111010101011111111100000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datad => \inst16|ALT_INV_result[5]~283_combout\,
	dataf => \inst2|ALT_INV_Regist\(5),
	combout => \inst2|Mux2~1_combout\);

-- Location: LABCELL_X62_Y3_N57
\inst2|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Mux2~0_combout\ = ( \SelBus[0]~input_o\ & ( \inst2|Regist\(4) & ( \inst2|Regist\(6) ) ) ) # ( !\SelBus[0]~input_o\ & ( \inst2|Regist\(4) ) ) # ( \SelBus[0]~input_o\ & ( !\inst2|Regist\(4) & ( \inst2|Regist\(6) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010111111111111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_Regist\(6),
	datae => \ALT_INV_SelBus[0]~input_o\,
	dataf => \inst2|ALT_INV_Regist\(4),
	combout => \inst2|Mux2~0_combout\);

-- Location: LABCELL_X62_Y3_N3
\inst2|Mux2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Mux2~2_combout\ = ( \inst2|Mux2~1_combout\ & ( \inst2|Mux2~0_combout\ & ( (!\inst3|Regist[6]~0_combout\) # ((\inst2|Add0~9_sumout\) # (\SelBus[2]~input_o\)) ) ) ) # ( !\inst2|Mux2~1_combout\ & ( \inst2|Mux2~0_combout\ & ( 
-- ((\inst3|Regist[6]~0_combout\ & \inst2|Add0~9_sumout\)) # (\SelBus[2]~input_o\) ) ) ) # ( \inst2|Mux2~1_combout\ & ( !\inst2|Mux2~0_combout\ & ( (!\SelBus[2]~input_o\ & ((!\inst3|Regist[6]~0_combout\) # (\inst2|Add0~9_sumout\))) ) ) ) # ( 
-- !\inst2|Mux2~1_combout\ & ( !\inst2|Mux2~0_combout\ & ( (\inst3|Regist[6]~0_combout\ & (!\SelBus[2]~input_o\ & \inst2|Add0~9_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000101000001111000000001111010111111010111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Regist[6]~0_combout\,
	datac => \ALT_INV_SelBus[2]~input_o\,
	datad => \inst2|ALT_INV_Add0~9_sumout\,
	datae => \inst2|ALT_INV_Mux2~1_combout\,
	dataf => \inst2|ALT_INV_Mux2~0_combout\,
	combout => \inst2|Mux2~2_combout\);

-- Location: FF_X62_Y3_N5
\inst2|Regist[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst2|Mux2~2_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst3|Regist[6]~1_combout\,
	ena => \inst2|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|Regist\(5));

-- Location: LABCELL_X60_Y3_N6
\inst16|result[5]~280\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|result[5]~280_combout\ = ( \inst9|Regist\(5) & ( \inst17|Regist\(5) & ( (!\inst16|_~6_combout\ & (!\inst16|_~7_combout\ & ((!\inst16|_~8_combout\) # (!\inst2|Regist\(5))))) ) ) ) # ( !\inst9|Regist\(5) & ( \inst17|Regist\(5) & ( 
-- (!\inst16|_~7_combout\ & ((!\inst16|_~8_combout\) # (!\inst2|Regist\(5)))) ) ) ) # ( \inst9|Regist\(5) & ( !\inst17|Regist\(5) & ( (!\inst16|_~6_combout\ & ((!\inst16|_~8_combout\) # (!\inst2|Regist\(5)))) ) ) ) # ( !\inst9|Regist\(5) & ( 
-- !\inst17|Regist\(5) & ( (!\inst16|_~8_combout\) # (!\inst2|Regist\(5)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011111100101010001010100011111100000000001010100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV__~6_combout\,
	datab => \inst16|ALT_INV__~8_combout\,
	datac => \inst2|ALT_INV_Regist\(5),
	datad => \inst16|ALT_INV__~7_combout\,
	datae => \inst9|ALT_INV_Regist\(5),
	dataf => \inst17|ALT_INV_Regist\(5),
	combout => \inst16|result[5]~280_combout\);

-- Location: IOIBUF_X68_Y0_N1
\Destino[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Destino(5),
	o => \Destino[5]~input_o\);

-- Location: LABCELL_X62_Y4_N0
\inst16|result[5]~281\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|result[5]~281_combout\ = ( \inst16|_~13_combout\ & ( \inst1|Regist\(5) & ( (!\inst16|_~12_combout\ & (!\inst16|result[5]~283_combout\ & ((!\inst16|_~14_combout\) # (!\Destino[5]~input_o\)))) ) ) ) # ( !\inst16|_~13_combout\ & ( \inst1|Regist\(5) & 
-- ( (!\inst16|_~12_combout\ & ((!\inst16|_~14_combout\) # (!\Destino[5]~input_o\))) ) ) ) # ( \inst16|_~13_combout\ & ( !\inst1|Regist\(5) & ( (!\inst16|result[5]~283_combout\ & ((!\inst16|_~14_combout\) # (!\Destino[5]~input_o\))) ) ) ) # ( 
-- !\inst16|_~13_combout\ & ( !\inst1|Regist\(5) & ( (!\inst16|_~14_combout\) # (!\Destino[5]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110101010111100001010000011001100100010001100000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV__~14_combout\,
	datab => \inst16|ALT_INV__~12_combout\,
	datac => \inst16|ALT_INV_result[5]~283_combout\,
	datad => \ALT_INV_Destino[5]~input_o\,
	datae => \inst16|ALT_INV__~13_combout\,
	dataf => \inst1|ALT_INV_Regist\(5),
	combout => \inst16|result[5]~281_combout\);

-- Location: IOIBUF_X36_Y0_N52
\Fuente[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Fuente(5),
	o => \Fuente[5]~input_o\);

-- Location: LABCELL_X53_Y5_N48
\inst16|result[5]~282\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|result[5]~282_combout\ = ( \inst19|Regist\(5) & ( \inst8|Regist\(5) & ( (!\inst16|_~15_combout\ & (!\inst16|_~16_combout\ & ((!\inst16|result[7]~269_combout\) # (!\Fuente[5]~input_o\)))) ) ) ) # ( !\inst19|Regist\(5) & ( \inst8|Regist\(5) & ( 
-- (!\inst16|_~15_combout\ & ((!\inst16|result[7]~269_combout\) # (!\Fuente[5]~input_o\))) ) ) ) # ( \inst19|Regist\(5) & ( !\inst8|Regist\(5) & ( (!\inst16|_~16_combout\ & ((!\inst16|result[7]~269_combout\) # (!\Fuente[5]~input_o\))) ) ) ) # ( 
-- !\inst19|Regist\(5) & ( !\inst8|Regist\(5) & ( (!\inst16|result[7]~269_combout\) # (!\Fuente[5]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101110111011100000000011100000111000001110000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_result[7]~269_combout\,
	datab => \ALT_INV_Fuente[5]~input_o\,
	datac => \inst16|ALT_INV__~15_combout\,
	datad => \inst16|ALT_INV__~16_combout\,
	datae => \inst19|ALT_INV_Regist\(5),
	dataf => \inst8|ALT_INV_Regist\(5),
	combout => \inst16|result[5]~282_combout\);

-- Location: LABCELL_X53_Y5_N18
\inst16|result[5]~319\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|result[5]~319_combout\ = ( \inst10|Regist\(5) & ( \inst16|result[5]~282_combout\ & ( (!\inst16|_~9_combout\ & (\inst16|result[5]~281_combout\ & ((!\inst16|_~10_combout\) # (!\inst20|Regist\(5))))) ) ) ) # ( !\inst10|Regist\(5) & ( 
-- \inst16|result[5]~282_combout\ & ( (\inst16|result[5]~281_combout\ & ((!\inst16|_~10_combout\) # (!\inst20|Regist\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100000010001000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV__~9_combout\,
	datab => \inst16|ALT_INV_result[5]~281_combout\,
	datac => \inst16|ALT_INV__~10_combout\,
	datad => \inst20|ALT_INV_Regist\(5),
	datae => \inst10|ALT_INV_Regist\(5),
	dataf => \inst16|ALT_INV_result[5]~282_combout\,
	combout => \inst16|result[5]~319_combout\);

-- Location: LABCELL_X56_Y6_N15
\inst16|result[5]~279\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|result[5]~279_combout\ = ( \inst18|Regist\(5) & ( \inst14|Regist\(5) & ( (!\inst16|_~4_combout\ & (!\inst16|_~5_combout\ & ((!\inst16|_~3_combout\) # (!\inst5|Regist\(5))))) ) ) ) # ( !\inst18|Regist\(5) & ( \inst14|Regist\(5) & ( 
-- (!\inst16|_~4_combout\ & ((!\inst16|_~3_combout\) # (!\inst5|Regist\(5)))) ) ) ) # ( \inst18|Regist\(5) & ( !\inst14|Regist\(5) & ( (!\inst16|_~5_combout\ & ((!\inst16|_~3_combout\) # (!\inst5|Regist\(5)))) ) ) ) # ( !\inst18|Regist\(5) & ( 
-- !\inst14|Regist\(5) & ( (!\inst16|_~3_combout\) # (!\inst5|Regist\(5)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000110011001100000010101010101000001000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV__~4_combout\,
	datab => \inst16|ALT_INV__~5_combout\,
	datac => \inst16|ALT_INV__~3_combout\,
	datad => \inst5|ALT_INV_Regist\(5),
	datae => \inst18|ALT_INV_Regist\(5),
	dataf => \inst14|ALT_INV_Regist\(5),
	combout => \inst16|result[5]~279_combout\);

-- Location: LABCELL_X55_Y5_N36
\inst16|result[5]~278\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|result[5]~278_combout\ = ( \inst11|Regist\(5) & ( \inst6|Regist\(5) & ( (!\inst16|_~1_combout\ & (!\inst16|_~0_combout\ & ((!\inst16|_~2_combout\) # (!\inst7|Regist\(5))))) ) ) ) # ( !\inst11|Regist\(5) & ( \inst6|Regist\(5) & ( 
-- (!\inst16|_~0_combout\ & ((!\inst16|_~2_combout\) # (!\inst7|Regist\(5)))) ) ) ) # ( \inst11|Regist\(5) & ( !\inst6|Regist\(5) & ( (!\inst16|_~1_combout\ & ((!\inst16|_~2_combout\) # (!\inst7|Regist\(5)))) ) ) ) # ( !\inst11|Regist\(5) & ( 
-- !\inst6|Regist\(5) & ( (!\inst16|_~2_combout\) # (!\inst7|Regist\(5)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111001100101010101000100011110000110000001010000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV__~1_combout\,
	datab => \inst16|ALT_INV__~2_combout\,
	datac => \inst16|ALT_INV__~0_combout\,
	datad => \inst7|ALT_INV_Regist\(5),
	datae => \inst11|ALT_INV_Regist\(5),
	dataf => \inst6|ALT_INV_Regist\(5),
	combout => \inst16|result[5]~278_combout\);

-- Location: LABCELL_X56_Y5_N30
\inst16|result[5]~283\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|result[5]~283_combout\ = ( \inst16|result[5]~279_combout\ & ( \inst16|result[5]~278_combout\ & ( (!\inst16|result[5]~280_combout\) # ((!\inst16|result[5]~319_combout\) # ((\inst|altsyncram_component|auto_generated|q_a\(5) & 
-- \inst16|_~11_combout\))) ) ) ) # ( !\inst16|result[5]~279_combout\ & ( \inst16|result[5]~278_combout\ ) ) # ( \inst16|result[5]~279_combout\ & ( !\inst16|result[5]~278_combout\ ) ) # ( !\inst16|result[5]~279_combout\ & ( !\inst16|result[5]~278_combout\ ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111110111011101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_result[5]~280_combout\,
	datab => \inst16|ALT_INV_result[5]~319_combout\,
	datac => \inst|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	datad => \inst16|ALT_INV__~11_combout\,
	datae => \inst16|ALT_INV_result[5]~279_combout\,
	dataf => \inst16|ALT_INV_result[5]~278_combout\,
	combout => \inst16|result[5]~283_combout\);

-- Location: MLABCELL_X52_Y4_N57
\inst8|Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|Mux2~1_combout\ = ( \inst8|Regist\(5) & ( (!\SelBus[1]~input_o\ & \inst16|result[5]~283_combout\) ) ) # ( !\inst8|Regist\(5) & ( (\inst16|result[5]~283_combout\) # (\SelBus[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SelBus[1]~input_o\,
	datad => \inst16|ALT_INV_result[5]~283_combout\,
	dataf => \inst8|ALT_INV_Regist\(5),
	combout => \inst8|Mux2~1_combout\);

-- Location: MLABCELL_X52_Y2_N18
\inst8|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|Mux2~0_combout\ = ( \inst8|Regist\(6) & ( (\inst8|Regist\(4)) # (\SelBus[0]~input_o\) ) ) # ( !\inst8|Regist\(6) & ( (!\SelBus[0]~input_o\ & \inst8|Regist\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst8|ALT_INV_Regist\(4),
	dataf => \inst8|ALT_INV_Regist\(6),
	combout => \inst8|Mux2~0_combout\);

-- Location: MLABCELL_X52_Y4_N21
\inst8|Mux2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|Mux2~2_combout\ = ( \inst8|Mux2~0_combout\ & ( ((!\inst3|Regist[6]~0_combout\ & (\inst8|Mux2~1_combout\)) # (\inst3|Regist[6]~0_combout\ & ((\inst8|Add0~1_sumout\)))) # (\SelBus[2]~input_o\) ) ) # ( !\inst8|Mux2~0_combout\ & ( (!\SelBus[2]~input_o\ 
-- & ((!\inst3|Regist[6]~0_combout\ & (\inst8|Mux2~1_combout\)) # (\inst3|Regist[6]~0_combout\ & ((\inst8|Add0~1_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101001011101011111110101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[2]~input_o\,
	datab => \inst3|ALT_INV_Regist[6]~0_combout\,
	datac => \inst8|ALT_INV_Mux2~1_combout\,
	datad => \inst8|ALT_INV_Add0~1_sumout\,
	dataf => \inst8|ALT_INV_Mux2~0_combout\,
	combout => \inst8|Mux2~2_combout\);

-- Location: FF_X52_Y4_N23
\inst8|Regist[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst8|Mux2~2_combout\,
	clrn => \ALT_INV_CLR~inputCLKENA0_outclk\,
	sclr => \inst3|Regist[6]~1_combout\,
	ena => \inst8|Regist[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|Regist\(5));

-- Location: LABCELL_X53_Y2_N9
\inst252|ROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst252|ROM~0_combout\ = ( !\inst8|Regist\(3) & ( (!\inst8|Regist\(2) & (!\inst8|Regist\(1) & !\inst8|Regist\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_Regist\(2),
	datac => \inst8|ALT_INV_Regist\(1),
	datad => \inst8|ALT_INV_Regist\(4),
	dataf => \inst8|ALT_INV_Regist\(3),
	combout => \inst252|ROM~0_combout\);

-- Location: LABCELL_X53_Y2_N6
\inst252|ROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst252|ROM~1_combout\ = ( \inst252|ROM~0_combout\ & ( (!\inst8|Regist\(5) & (!\inst8|Regist\(6) & !\inst8|Regist\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|ALT_INV_Regist\(5),
	datac => \inst8|ALT_INV_Regist\(6),
	datad => \inst8|ALT_INV_Regist\(0),
	dataf => \inst252|ALT_INV_ROM~0_combout\,
	combout => \inst252|ROM~1_combout\);

-- Location: LABCELL_X55_Y1_N12
\inst252|data_out[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst252|data_out[6]~feeder_combout\ = ( \inst252|ROM~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst252|ALT_INV_ROM~1_combout\,
	combout => \inst252|data_out[6]~feeder_combout\);

-- Location: FF_X55_Y1_N13
\inst252|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst252|data_out[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst252|data_out\(6));

-- Location: LABCELL_X55_Y1_N42
\inst252|data_out[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst252|data_out[5]~feeder_combout\ = ( \inst252|ROM~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst252|ALT_INV_ROM~1_combout\,
	combout => \inst252|data_out[5]~feeder_combout\);

-- Location: FF_X55_Y1_N43
\inst252|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst252|data_out[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst252|data_out\(5));

-- Location: LABCELL_X53_Y2_N24
\inst252|data_out[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst252|data_out[0]~feeder_combout\ = ( \inst252|ROM~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst252|ALT_INV_ROM~1_combout\,
	combout => \inst252|data_out[0]~feeder_combout\);

-- Location: FF_X53_Y2_N25
\inst252|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst252|data_out[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst252|data_out\(0));

-- Location: LABCELL_X23_Y50_N3
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


