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

-- DATE "05/25/2022 12:56:37"

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

ENTITY 	MiQro_EVA IS
    PORT (
	MuxA : OUT std_logic;
	Clk : IN std_logic;
	Rst : IN std_logic;
	Cache : IN std_logic_vector(15 DOWNTO 0);
	Flags : IN std_logic_vector(15 DOWNTO 0);
	MDR : IN std_logic_vector(7 DOWNTO 0);
	MuxB : OUT std_logic;
	MuxC : OUT std_logic;
	MuxMAR : OUT std_logic;
	EnableDeco : OUT std_logic;
	WR_Ram : OUT std_logic;
	ALU : OUT std_logic_vector(2 DOWNTO 0);
	cacheOut : OUT std_logic_vector(7 DOWNTO 0);
	MUX_A : IN std_logic;
	MUX_MAR : IN std_logic;
	MUX_B : IN std_logic;
	MUX_MDR : IN std_logic;
	EnDec : IN std_logic;
	WR : IN std_logic;
	AluSel : IN std_logic_vector(3 DOWNTO 0);
	AIN : IN std_logic_vector(7 DOWNTO 0);
	BIN : IN std_logic_vector(7 DOWNTO 0);
	Destino7 : IN std_logic;
	Destino6 : IN std_logic;
	Destino5 : IN std_logic;
	Destino4 : IN std_logic;
	Destino3 : IN std_logic;
	Destino2 : IN std_logic;
	Destino1 : IN std_logic;
	Destino0 : IN std_logic;
	Fuente7 : IN std_logic;
	Fuente6 : IN std_logic;
	Fuente5 : IN std_logic;
	Fuente4 : IN std_logic;
	Fuente3 : IN std_logic;
	Fuente2 : IN std_logic;
	Fuente1 : IN std_logic;
	Fuente0 : IN std_logic;
	muxSel : IN std_logic_vector(5 DOWNTO 0);
	SelBus : IN std_logic_vector(3 DOWNTO 0);
	SelRegD : IN std_logic_vector(3 DOWNTO 0);
	Destino27 : OUT std_logic;
	Destino26 : OUT std_logic;
	Destino25 : OUT std_logic;
	Destino24 : OUT std_logic;
	Destino23 : OUT std_logic;
	Destino22 : OUT std_logic;
	Destino21 : OUT std_logic;
	Destino20 : OUT std_logic;
	Fuente37 : OUT std_logic;
	Fuente36 : OUT std_logic;
	Fuente35 : OUT std_logic;
	Fuente34 : OUT std_logic;
	Fuente33 : OUT std_logic;
	Fuente32 : OUT std_logic;
	Fuente31 : OUT std_logic;
	Fuente30 : OUT std_logic;
	MBusMux : OUT std_logic_vector(4 DOWNTO 0);
	Outd : OUT std_logic_vector(7 DOWNTO 0);
	RegEn : OUT std_logic_vector(3 DOWNTO 0);
	RegVal : OUT std_logic_vector(3 DOWNTO 0);
	UMemOut : OUT std_logic_vector(63 DOWNTO 0)
	);
END MiQro_EVA;

-- Design Ports Information
-- MuxA	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cache[15]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cache[14]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cache[13]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cache[12]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cache[11]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cache[10]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cache[9]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cache[8]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cache[7]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cache[6]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cache[5]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cache[4]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cache[3]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cache[2]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cache[1]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cache[0]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flags[15]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flags[14]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flags[13]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flags[12]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flags[11]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flags[10]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flags[9]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flags[8]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flags[7]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flags[6]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flags[5]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flags[4]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flags[3]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flags[2]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flags[1]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flags[0]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MuxB	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MuxC	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MuxMAR	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EnableDeco	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WR_Ram	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU[2]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU[1]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU[0]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cacheOut[7]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cacheOut[6]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cacheOut[5]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cacheOut[4]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cacheOut[3]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cacheOut[2]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cacheOut[1]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cacheOut[0]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Destino27	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Destino26	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Destino25	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Destino24	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Destino23	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Destino22	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Destino21	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Destino20	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fuente37	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fuente36	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fuente35	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fuente34	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fuente33	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fuente32	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fuente31	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fuente30	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MBusMux[4]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MBusMux[3]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MBusMux[2]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MBusMux[1]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MBusMux[0]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Outd[7]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Outd[6]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Outd[5]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Outd[4]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Outd[3]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Outd[2]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Outd[1]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Outd[0]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegEn[3]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegEn[2]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegEn[1]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegEn[0]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegVal[3]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegVal[2]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegVal[1]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegVal[0]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[63]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[62]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[61]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[60]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[59]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[58]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[57]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[56]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[55]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[54]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[53]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[52]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[51]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[50]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[49]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[48]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[47]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[46]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[45]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[44]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[43]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[42]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[41]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[40]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[39]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[38]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[37]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[36]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[35]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[34]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[33]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[32]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[31]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[30]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[29]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[28]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[27]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[26]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[25]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[24]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[23]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[22]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[21]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[20]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[19]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[18]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[17]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[16]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[15]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[14]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[13]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[12]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[11]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[10]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[9]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[8]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[7]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[6]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[5]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[4]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[3]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[2]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[1]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UMemOut[0]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MDR[7]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MDR[6]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MDR[5]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MDR[4]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MDR[3]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MDR[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MDR[1]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MDR[0]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- muxSel[3]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- muxSel[2]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- muxSel[5]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- muxSel[4]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- muxSel[1]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- muxSel[0]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Destino7	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fuente7	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Destino6	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fuente6	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Destino5	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fuente5	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Destino4	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fuente4	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Destino3	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fuente3	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Destino2	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fuente2	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Destino1	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fuente1	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Destino0	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fuente0	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SelBus[3]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SelBus[0]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SelBus[1]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SelBus[2]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rst	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SelRegD[2]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SelRegD[1]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SelRegD[0]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SelRegD[3]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EnDec	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MUX_MAR	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MUX_MDR	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WR	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MUX_A	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AIN[7]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MUX_B	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BIN[7]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AIN[6]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BIN[6]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AIN[5]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BIN[5]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AIN[4]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BIN[4]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AIN[3]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BIN[3]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AIN[2]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BIN[2]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AIN[1]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BIN[1]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AIN[0]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BIN[0]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AluSel[0]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AluSel[2]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AluSel[3]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AluSel[1]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_MuxA : std_logic;
SIGNAL ww_Clk : std_logic;
SIGNAL ww_Rst : std_logic;
SIGNAL ww_Cache : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Flags : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_MDR : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_MuxB : std_logic;
SIGNAL ww_MuxC : std_logic;
SIGNAL ww_MuxMAR : std_logic;
SIGNAL ww_EnableDeco : std_logic;
SIGNAL ww_WR_Ram : std_logic;
SIGNAL ww_ALU : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_cacheOut : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_MUX_A : std_logic;
SIGNAL ww_MUX_MAR : std_logic;
SIGNAL ww_MUX_B : std_logic;
SIGNAL ww_MUX_MDR : std_logic;
SIGNAL ww_EnDec : std_logic;
SIGNAL ww_WR : std_logic;
SIGNAL ww_AluSel : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_AIN : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_BIN : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Destino7 : std_logic;
SIGNAL ww_Destino6 : std_logic;
SIGNAL ww_Destino5 : std_logic;
SIGNAL ww_Destino4 : std_logic;
SIGNAL ww_Destino3 : std_logic;
SIGNAL ww_Destino2 : std_logic;
SIGNAL ww_Destino1 : std_logic;
SIGNAL ww_Destino0 : std_logic;
SIGNAL ww_Fuente7 : std_logic;
SIGNAL ww_Fuente6 : std_logic;
SIGNAL ww_Fuente5 : std_logic;
SIGNAL ww_Fuente4 : std_logic;
SIGNAL ww_Fuente3 : std_logic;
SIGNAL ww_Fuente2 : std_logic;
SIGNAL ww_Fuente1 : std_logic;
SIGNAL ww_Fuente0 : std_logic;
SIGNAL ww_muxSel : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_SelBus : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SelRegD : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Destino27 : std_logic;
SIGNAL ww_Destino26 : std_logic;
SIGNAL ww_Destino25 : std_logic;
SIGNAL ww_Destino24 : std_logic;
SIGNAL ww_Destino23 : std_logic;
SIGNAL ww_Destino22 : std_logic;
SIGNAL ww_Destino21 : std_logic;
SIGNAL ww_Destino20 : std_logic;
SIGNAL ww_Fuente37 : std_logic;
SIGNAL ww_Fuente36 : std_logic;
SIGNAL ww_Fuente35 : std_logic;
SIGNAL ww_Fuente34 : std_logic;
SIGNAL ww_Fuente33 : std_logic;
SIGNAL ww_Fuente32 : std_logic;
SIGNAL ww_Fuente31 : std_logic;
SIGNAL ww_Fuente30 : std_logic;
SIGNAL ww_MBusMux : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_Outd : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_RegEn : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_RegVal : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_UMemOut : std_logic_vector(63 DOWNTO 0);
SIGNAL \inst1|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \inst1|inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \Cache[15]~input_o\ : std_logic;
SIGNAL \Cache[14]~input_o\ : std_logic;
SIGNAL \Cache[13]~input_o\ : std_logic;
SIGNAL \Cache[12]~input_o\ : std_logic;
SIGNAL \Cache[11]~input_o\ : std_logic;
SIGNAL \Cache[10]~input_o\ : std_logic;
SIGNAL \Cache[9]~input_o\ : std_logic;
SIGNAL \Cache[8]~input_o\ : std_logic;
SIGNAL \Cache[7]~input_o\ : std_logic;
SIGNAL \Cache[6]~input_o\ : std_logic;
SIGNAL \Cache[5]~input_o\ : std_logic;
SIGNAL \Cache[4]~input_o\ : std_logic;
SIGNAL \Cache[3]~input_o\ : std_logic;
SIGNAL \Cache[2]~input_o\ : std_logic;
SIGNAL \Cache[1]~input_o\ : std_logic;
SIGNAL \Cache[0]~input_o\ : std_logic;
SIGNAL \Flags[15]~input_o\ : std_logic;
SIGNAL \Flags[14]~input_o\ : std_logic;
SIGNAL \Flags[13]~input_o\ : std_logic;
SIGNAL \Flags[12]~input_o\ : std_logic;
SIGNAL \Flags[11]~input_o\ : std_logic;
SIGNAL \Flags[10]~input_o\ : std_logic;
SIGNAL \Flags[9]~input_o\ : std_logic;
SIGNAL \Flags[8]~input_o\ : std_logic;
SIGNAL \Flags[7]~input_o\ : std_logic;
SIGNAL \Flags[6]~input_o\ : std_logic;
SIGNAL \Flags[5]~input_o\ : std_logic;
SIGNAL \Flags[4]~input_o\ : std_logic;
SIGNAL \Flags[3]~input_o\ : std_logic;
SIGNAL \Flags[2]~input_o\ : std_logic;
SIGNAL \Flags[1]~input_o\ : std_logic;
SIGNAL \Flags[0]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \Clk~input_o\ : std_logic;
SIGNAL \Clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \inst|NextAddUC[1]~feeder_combout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|NextAddUC[0]~0_combout\ : std_logic;
SIGNAL \inst|address[0]~feeder_combout\ : std_logic;
SIGNAL \inst|Equal1~0_combout\ : std_logic;
SIGNAL \SelBus[2]~input_o\ : std_logic;
SIGNAL \SelBus[0]~input_o\ : std_logic;
SIGNAL \SelBus[3]~input_o\ : std_logic;
SIGNAL \inst1|inst8|Regist[0]~5_combout\ : std_logic;
SIGNAL \SelBus[1]~input_o\ : std_logic;
SIGNAL \inst1|inst8|Regist[0]~4_combout\ : std_logic;
SIGNAL \muxSel[2]~input_o\ : std_logic;
SIGNAL \muxSel[5]~input_o\ : std_logic;
SIGNAL \muxSel[3]~input_o\ : std_logic;
SIGNAL \muxSel[4]~input_o\ : std_logic;
SIGNAL \muxSel[1]~input_o\ : std_logic;
SIGNAL \muxSel[0]~input_o\ : std_logic;
SIGNAL \inst1|inst16|_~0_combout\ : std_logic;
SIGNAL \inst1|inst16|_~5_combout\ : std_logic;
SIGNAL \inst1|inst16|_~4_combout\ : std_logic;
SIGNAL \inst1|inst16|_~6_combout\ : std_logic;
SIGNAL \inst1|inst8|Regist[7]~7_combout\ : std_logic;
SIGNAL \inst1|inst8|Regist[7]~10_combout\ : std_logic;
SIGNAL \inst1|inst8|Regist[0]~9_combout\ : std_logic;
SIGNAL \WR~input_o\ : std_logic;
SIGNAL \inst1|inst17|Add0~29_sumout\ : std_logic;
SIGNAL \inst1|inst8|Regist[4]~0_combout\ : std_logic;
SIGNAL \inst1|inst8|Mux3~0_combout\ : std_logic;
SIGNAL \AluSel[3]~input_o\ : std_logic;
SIGNAL \AluSel[2]~input_o\ : std_logic;
SIGNAL \AluSel[1]~input_o\ : std_logic;
SIGNAL \AluSel[0]~input_o\ : std_logic;
SIGNAL \inst1|inst24|Mux17~0_combout\ : std_logic;
SIGNAL \inst1|inst18|Mux3~0_combout\ : std_logic;
SIGNAL \MUX_MDR~input_o\ : std_logic;
SIGNAL \MUX_MAR~input_o\ : std_logic;
SIGNAL \inst1|inst13|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst13|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst1|Add0~30\ : std_logic;
SIGNAL \inst1|inst1|Add0~25_sumout\ : std_logic;
SIGNAL \inst1|inst17|Mux4~0_combout\ : std_logic;
SIGNAL \inst1|inst17|Mux3~0_combout\ : std_logic;
SIGNAL \inst1|inst17|Mux1~1_combout\ : std_logic;
SIGNAL \inst1|inst18|Mux1~0_combout\ : std_logic;
SIGNAL \inst1|inst18|Mux2~1_combout\ : std_logic;
SIGNAL \inst1|inst18|Mux5~1_combout\ : std_logic;
SIGNAL \inst1|inst1|Mux1~0_combout\ : std_logic;
SIGNAL \inst1|inst13|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst13|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst13|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst13|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst1|Add0~26\ : std_logic;
SIGNAL \inst1|inst1|Add0~22\ : std_logic;
SIGNAL \inst1|inst1|Add0~18\ : std_logic;
SIGNAL \inst1|inst1|Add0~14\ : std_logic;
SIGNAL \inst1|inst1|Add0~10\ : std_logic;
SIGNAL \inst1|inst1|Add0~5_sumout\ : std_logic;
SIGNAL \inst1|inst1|Mux1~1_combout\ : std_logic;
SIGNAL \Rst~input_o\ : std_logic;
SIGNAL \Rst~inputCLKENA0_outclk\ : std_logic;
SIGNAL \inst1|inst8|Regist[4]~1_combout\ : std_logic;
SIGNAL \SelRegD[2]~input_o\ : std_logic;
SIGNAL \SelRegD[0]~input_o\ : std_logic;
SIGNAL \SelRegD[1]~input_o\ : std_logic;
SIGNAL \EnDec~input_o\ : std_logic;
SIGNAL \SelRegD[3]~input_o\ : std_logic;
SIGNAL \inst1|inst6|Regist[6]~0_combout\ : std_logic;
SIGNAL \inst1|inst1|Regist[6]~0_combout\ : std_logic;
SIGNAL \inst1|inst1|Mux2~0_combout\ : std_logic;
SIGNAL \inst1|inst1|Add0~9_sumout\ : std_logic;
SIGNAL \inst1|inst1|Mux2~1_combout\ : std_logic;
SIGNAL \inst1|inst1|Mux3~0_combout\ : std_logic;
SIGNAL \inst1|inst1|Add0~13_sumout\ : std_logic;
SIGNAL \inst1|inst1|Mux3~1_combout\ : std_logic;
SIGNAL \inst1|inst1|Mux4~0_combout\ : std_logic;
SIGNAL \inst1|inst1|Add0~17_sumout\ : std_logic;
SIGNAL \inst1|inst1|Mux4~1_combout\ : std_logic;
SIGNAL \inst1|inst7|Mux2~0_combout\ : std_logic;
SIGNAL \inst1|inst7|Mux2~1_combout\ : std_logic;
SIGNAL \inst1|inst23|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst23|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst23|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst23|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst23|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst23|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst7|Add0~30\ : std_logic;
SIGNAL \inst1|inst7|Add0~26\ : std_logic;
SIGNAL \inst1|inst7|Add0~22\ : std_logic;
SIGNAL \inst1|inst7|Add0~18\ : std_logic;
SIGNAL \inst1|inst7|Add0~14\ : std_logic;
SIGNAL \inst1|inst7|Add0~9_sumout\ : std_logic;
SIGNAL \inst1|inst7|Mux2~2_combout\ : std_logic;
SIGNAL \inst1|inst8|Regist[4]~2_combout\ : std_logic;
SIGNAL \inst1|inst7|Regist[6]~0_combout\ : std_logic;
SIGNAL \inst1|inst7|Mux3~1_combout\ : std_logic;
SIGNAL \inst1|inst7|Mux3~0_combout\ : std_logic;
SIGNAL \inst1|inst7|Add0~13_sumout\ : std_logic;
SIGNAL \inst1|inst7|Mux3~2_combout\ : std_logic;
SIGNAL \inst1|inst7|Mux6~0_combout\ : std_logic;
SIGNAL \inst1|inst7|Add0~25_sumout\ : std_logic;
SIGNAL \inst1|inst7|Mux6~1_combout\ : std_logic;
SIGNAL \inst1|inst7|Mux6~2_combout\ : std_logic;
SIGNAL \inst1|inst7|Mux5~0_combout\ : std_logic;
SIGNAL \inst1|inst7|Mux5~1_combout\ : std_logic;
SIGNAL \inst1|inst7|Add0~21_sumout\ : std_logic;
SIGNAL \inst1|inst7|Mux5~2_combout\ : std_logic;
SIGNAL \inst1|inst16|result[2]~310_combout\ : std_logic;
SIGNAL \inst1|inst16|_~17_combout\ : std_logic;
SIGNAL \inst1|inst16|_~18_combout\ : std_logic;
SIGNAL \Fuente2~input_o\ : std_logic;
SIGNAL \inst1|inst16|result[2]~315_combout\ : std_logic;
SIGNAL \inst1|inst16|_~22_combout\ : std_logic;
SIGNAL \inst1|inst16|_~21_combout\ : std_logic;
SIGNAL \inst1|inst16|_~20_combout\ : std_logic;
SIGNAL \inst1|inst16|_~19_combout\ : std_logic;
SIGNAL \inst1|inst16|_~23_combout\ : std_logic;
SIGNAL \inst1|inst16|result[2]~316_combout\ : std_logic;
SIGNAL \inst1|inst16|_~15_combout\ : std_logic;
SIGNAL \inst1|inst16|_~16_combout\ : std_logic;
SIGNAL \inst1|inst16|_~14_combout\ : std_logic;
SIGNAL \inst1|inst11|Mux2~0_combout\ : std_logic;
SIGNAL \inst1|inst11|Mux4~1_combout\ : std_logic;
SIGNAL \inst1|inst11|Add0~22\ : std_logic;
SIGNAL \inst1|inst11|Add0~17_sumout\ : std_logic;
SIGNAL \inst1|inst11|Mux4~0_combout\ : std_logic;
SIGNAL \inst1|inst11|Mux4~2_combout\ : std_logic;
SIGNAL \inst1|inst11|Regist[6]~0_combout\ : std_logic;
SIGNAL \inst1|inst11|Mux3~1_combout\ : std_logic;
SIGNAL \inst1|inst11|Mux3~0_combout\ : std_logic;
SIGNAL \inst1|inst11|Add0~18\ : std_logic;
SIGNAL \inst1|inst11|Add0~13_sumout\ : std_logic;
SIGNAL \inst1|inst11|Mux3~2_combout\ : std_logic;
SIGNAL \inst1|inst11|Mux2~1_combout\ : std_logic;
SIGNAL \inst1|inst11|Add0~14\ : std_logic;
SIGNAL \inst1|inst11|Add0~9_sumout\ : std_logic;
SIGNAL \inst1|inst11|Mux2~2_combout\ : std_logic;
SIGNAL \inst1|inst11|Mux1~1_combout\ : std_logic;
SIGNAL \inst1|inst11|Mux1~0_combout\ : std_logic;
SIGNAL \inst1|inst11|Add0~10\ : std_logic;
SIGNAL \inst1|inst11|Add0~5_sumout\ : std_logic;
SIGNAL \inst1|inst11|Mux1~2_combout\ : std_logic;
SIGNAL \inst1|inst11|Add0~6\ : std_logic;
SIGNAL \inst1|inst11|Add0~1_sumout\ : std_logic;
SIGNAL \inst1|inst11|Mux0~0_combout\ : std_logic;
SIGNAL \inst1|inst11|Mux0~1_combout\ : std_logic;
SIGNAL \inst1|inst8|Regist[7]~8_combout\ : std_logic;
SIGNAL \inst1|inst11|Add0~29_sumout\ : std_logic;
SIGNAL \inst1|inst11|Mux7~0_combout\ : std_logic;
SIGNAL \inst1|inst11|Mux7~1_combout\ : std_logic;
SIGNAL \inst1|inst8|Regist[0]~6_combout\ : std_logic;
SIGNAL \inst1|inst11|Mux6~1_combout\ : std_logic;
SIGNAL \inst1|inst11|Add0~30\ : std_logic;
SIGNAL \inst1|inst11|Add0~25_sumout\ : std_logic;
SIGNAL \inst1|inst11|Mux6~0_combout\ : std_logic;
SIGNAL \inst1|inst11|Mux6~2_combout\ : std_logic;
SIGNAL \inst1|inst11|Add0~26\ : std_logic;
SIGNAL \inst1|inst11|Add0~21_sumout\ : std_logic;
SIGNAL \inst1|inst11|Mux5~1_combout\ : std_logic;
SIGNAL \inst1|inst11|Mux5~0_combout\ : std_logic;
SIGNAL \inst1|inst11|Mux5~2_combout\ : std_logic;
SIGNAL \inst1|inst2|Mux1~0_combout\ : std_logic;
SIGNAL \inst1|inst2|Mux3~0_combout\ : std_logic;
SIGNAL \inst1|inst2|Mux4~1_combout\ : std_logic;
SIGNAL \inst1|inst2|Add0~30\ : std_logic;
SIGNAL \inst1|inst2|Add0~26\ : std_logic;
SIGNAL \inst1|inst2|Add0~22\ : std_logic;
SIGNAL \inst1|inst2|Add0~17_sumout\ : std_logic;
SIGNAL \inst1|inst2|Mux4~0_combout\ : std_logic;
SIGNAL \inst1|inst2|Mux4~2_combout\ : std_logic;
SIGNAL \inst1|inst2|Regist[6]~0_combout\ : std_logic;
SIGNAL \inst1|inst2|Mux3~1_combout\ : std_logic;
SIGNAL \inst1|inst2|Add0~18\ : std_logic;
SIGNAL \inst1|inst2|Add0~13_sumout\ : std_logic;
SIGNAL \inst1|inst2|Mux3~2_combout\ : std_logic;
SIGNAL \inst1|inst2|Mux2~1_combout\ : std_logic;
SIGNAL \inst1|inst2|Add0~14\ : std_logic;
SIGNAL \inst1|inst2|Add0~9_sumout\ : std_logic;
SIGNAL \inst1|inst2|Mux2~0_combout\ : std_logic;
SIGNAL \inst1|inst2|Mux2~2_combout\ : std_logic;
SIGNAL \inst1|inst2|Mux1~1_combout\ : std_logic;
SIGNAL \inst1|inst2|Add0~10\ : std_logic;
SIGNAL \inst1|inst2|Add0~5_sumout\ : std_logic;
SIGNAL \inst1|inst2|Mux1~2_combout\ : std_logic;
SIGNAL \inst1|inst2|Add0~6\ : std_logic;
SIGNAL \inst1|inst2|Add0~1_sumout\ : std_logic;
SIGNAL \inst1|inst2|Mux0~0_combout\ : std_logic;
SIGNAL \inst1|inst2|Mux0~1_combout\ : std_logic;
SIGNAL \inst1|inst2|Add0~29_sumout\ : std_logic;
SIGNAL \inst1|inst2|Mux7~0_combout\ : std_logic;
SIGNAL \inst1|inst2|Mux7~1_combout\ : std_logic;
SIGNAL \inst1|inst2|Mux6~1_combout\ : std_logic;
SIGNAL \inst1|inst2|Mux6~0_combout\ : std_logic;
SIGNAL \inst1|inst2|Add0~25_sumout\ : std_logic;
SIGNAL \inst1|inst2|Mux6~2_combout\ : std_logic;
SIGNAL \inst1|inst2|Mux5~1_combout\ : std_logic;
SIGNAL \inst1|inst2|Add0~21_sumout\ : std_logic;
SIGNAL \inst1|inst2|Mux5~0_combout\ : std_logic;
SIGNAL \inst1|inst2|Mux5~2_combout\ : std_logic;
SIGNAL \inst1|inst16|result[2]~314_combout\ : std_logic;
SIGNAL \inst1|inst16|_~11_combout\ : std_logic;
SIGNAL \Destino2~input_o\ : std_logic;
SIGNAL \inst1|inst16|_~12_combout\ : std_logic;
SIGNAL \inst1|inst16|_~13_combout\ : std_logic;
SIGNAL \MUX_B~input_o\ : std_logic;
SIGNAL \BIN[2]~input_o\ : std_logic;
SIGNAL \inst1|inst5|Mux5~0_combout\ : std_logic;
SIGNAL \BIN[1]~input_o\ : std_logic;
SIGNAL \inst1|inst200|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \BIN[5]~input_o\ : std_logic;
SIGNAL \inst1|inst5|Mux2~0_combout\ : std_logic;
SIGNAL \BIN[4]~input_o\ : std_logic;
SIGNAL \inst1|inst5|Mux3~0_combout\ : std_logic;
SIGNAL \inst1|inst5|Mux4~1_combout\ : std_logic;
SIGNAL \BIN[3]~input_o\ : std_logic;
SIGNAL \inst1|inst5|Mux4~0_combout\ : std_logic;
SIGNAL \inst1|inst200|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst200|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst5|Add0~26\ : std_logic;
SIGNAL \inst1|inst5|Add0~22\ : std_logic;
SIGNAL \inst1|inst5|Add0~17_sumout\ : std_logic;
SIGNAL \inst1|inst5|Mux4~2_combout\ : std_logic;
SIGNAL \inst1|inst5|Regist[6]~0_combout\ : std_logic;
SIGNAL \inst1|inst5|Mux3~1_combout\ : std_logic;
SIGNAL \inst1|inst200|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst5|Add0~18\ : std_logic;
SIGNAL \inst1|inst5|Add0~13_sumout\ : std_logic;
SIGNAL \inst1|inst5|Mux3~2_combout\ : std_logic;
SIGNAL \inst1|inst5|Mux2~1_combout\ : std_logic;
SIGNAL \inst1|inst200|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst5|Add0~14\ : std_logic;
SIGNAL \inst1|inst5|Add0~9_sumout\ : std_logic;
SIGNAL \inst1|inst5|Mux2~2_combout\ : std_logic;
SIGNAL \inst1|inst5|Mux1~1_combout\ : std_logic;
SIGNAL \BIN[6]~input_o\ : std_logic;
SIGNAL \inst1|inst5|Mux1~0_combout\ : std_logic;
SIGNAL \inst1|inst200|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst5|Add0~10\ : std_logic;
SIGNAL \inst1|inst5|Add0~5_sumout\ : std_logic;
SIGNAL \inst1|inst5|Mux1~2_combout\ : std_logic;
SIGNAL \BIN[7]~input_o\ : std_logic;
SIGNAL \inst1|inst200|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst5|Mux0~0_combout\ : std_logic;
SIGNAL \inst1|inst5|Add0~6\ : std_logic;
SIGNAL \inst1|inst5|Add0~1_sumout\ : std_logic;
SIGNAL \inst1|inst5|Mux0~1_combout\ : std_logic;
SIGNAL \BIN[0]~input_o\ : std_logic;
SIGNAL \inst1|inst200|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst5|Mux7~0_combout\ : std_logic;
SIGNAL \inst1|inst5|Add0~29_sumout\ : std_logic;
SIGNAL \inst1|inst5|Mux7~1_combout\ : std_logic;
SIGNAL \inst1|inst5|Add0~30\ : std_logic;
SIGNAL \inst1|inst5|Add0~25_sumout\ : std_logic;
SIGNAL \inst1|inst5|Mux6~1_combout\ : std_logic;
SIGNAL \inst1|inst5|Mux6~0_combout\ : std_logic;
SIGNAL \inst1|inst5|Mux6~2_combout\ : std_logic;
SIGNAL \inst1|inst5|Mux5~1_combout\ : std_logic;
SIGNAL \inst1|inst5|Add0~21_sumout\ : std_logic;
SIGNAL \inst1|inst5|Mux5~2_combout\ : std_logic;
SIGNAL \inst1|inst10|Mux3~0_combout\ : std_logic;
SIGNAL \inst1|inst10|Mux1~0_combout\ : std_logic;
SIGNAL \inst1|inst10|Add0~29_sumout\ : std_logic;
SIGNAL \inst1|inst10|Mux6~1_combout\ : std_logic;
SIGNAL \inst1|inst10|Add0~30\ : std_logic;
SIGNAL \inst1|inst10|Add0~25_sumout\ : std_logic;
SIGNAL \inst1|inst10|Mux6~0_combout\ : std_logic;
SIGNAL \inst1|inst10|Mux6~2_combout\ : std_logic;
SIGNAL \inst1|inst10|Regist[6]~0_combout\ : std_logic;
SIGNAL \inst1|inst10|Mux7~0_combout\ : std_logic;
SIGNAL \inst1|inst10|Mux7~1_combout\ : std_logic;
SIGNAL \inst1|inst10|Add0~26\ : std_logic;
SIGNAL \inst1|inst10|Add0~22\ : std_logic;
SIGNAL \inst1|inst10|Add0~18\ : std_logic;
SIGNAL \inst1|inst10|Add0~14\ : std_logic;
SIGNAL \inst1|inst10|Add0~10\ : std_logic;
SIGNAL \inst1|inst10|Add0~6\ : std_logic;
SIGNAL \inst1|inst10|Add0~1_sumout\ : std_logic;
SIGNAL \inst1|inst10|Mux0~0_combout\ : std_logic;
SIGNAL \inst1|inst10|Mux0~1_combout\ : std_logic;
SIGNAL \inst1|inst10|Mux1~1_combout\ : std_logic;
SIGNAL \inst1|inst10|Add0~5_sumout\ : std_logic;
SIGNAL \inst1|inst10|Mux1~2_combout\ : std_logic;
SIGNAL \inst1|inst10|Mux2~1_combout\ : std_logic;
SIGNAL \inst1|inst10|Mux2~0_combout\ : std_logic;
SIGNAL \inst1|inst10|Add0~9_sumout\ : std_logic;
SIGNAL \inst1|inst10|Mux2~2_combout\ : std_logic;
SIGNAL \inst1|inst10|Mux3~1_combout\ : std_logic;
SIGNAL \inst1|inst10|Add0~13_sumout\ : std_logic;
SIGNAL \inst1|inst10|Mux3~2_combout\ : std_logic;
SIGNAL \inst1|inst10|Mux4~1_combout\ : std_logic;
SIGNAL \inst1|inst10|Mux4~0_combout\ : std_logic;
SIGNAL \inst1|inst10|Add0~17_sumout\ : std_logic;
SIGNAL \inst1|inst10|Mux4~2_combout\ : std_logic;
SIGNAL \inst1|inst10|Mux5~1_combout\ : std_logic;
SIGNAL \inst1|inst10|Add0~21_sumout\ : std_logic;
SIGNAL \inst1|inst10|Mux5~0_combout\ : std_logic;
SIGNAL \inst1|inst10|Mux5~2_combout\ : std_logic;
SIGNAL \inst1|inst16|result[2]~313_combout\ : std_logic;
SIGNAL \inst1|inst16|_~10_combout\ : std_logic;
SIGNAL \inst1|inst16|_~8_combout\ : std_logic;
SIGNAL \inst1|inst16|_~9_combout\ : std_logic;
SIGNAL \MUX_A~input_o\ : std_logic;
SIGNAL \AIN[3]~input_o\ : std_logic;
SIGNAL \inst1|inst6|Mux4~0_combout\ : std_logic;
SIGNAL \AIN[4]~input_o\ : std_logic;
SIGNAL \inst1|inst6|Mux3~0_combout\ : std_logic;
SIGNAL \AIN[5]~input_o\ : std_logic;
SIGNAL \inst1|inst6|Mux2~0_combout\ : std_logic;
SIGNAL \AIN[6]~input_o\ : std_logic;
SIGNAL \inst1|inst6|Mux1~0_combout\ : std_logic;
SIGNAL \AIN[0]~input_o\ : std_logic;
SIGNAL \inst1|inst15|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst6|Add0~29_sumout\ : std_logic;
SIGNAL \inst1|inst6|Mux6~1_combout\ : std_logic;
SIGNAL \AIN[1]~input_o\ : std_logic;
SIGNAL \inst1|inst15|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst6|Add0~30\ : std_logic;
SIGNAL \inst1|inst6|Add0~25_sumout\ : std_logic;
SIGNAL \inst1|inst6|Mux6~0_combout\ : std_logic;
SIGNAL \inst1|inst6|Mux6~2_combout\ : std_logic;
SIGNAL \inst1|inst6|Regist[6]~1_combout\ : std_logic;
SIGNAL \inst1|inst6|Mux7~0_combout\ : std_logic;
SIGNAL \inst1|inst6|Mux7~1_combout\ : std_logic;
SIGNAL \AIN[7]~input_o\ : std_logic;
SIGNAL \inst1|inst15|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst6|Mux0~0_combout\ : std_logic;
SIGNAL \inst1|inst15|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst15|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst15|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst15|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \AIN[2]~input_o\ : std_logic;
SIGNAL \inst1|inst15|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst6|Add0~26\ : std_logic;
SIGNAL \inst1|inst6|Add0~22\ : std_logic;
SIGNAL \inst1|inst6|Add0~18\ : std_logic;
SIGNAL \inst1|inst6|Add0~14\ : std_logic;
SIGNAL \inst1|inst6|Add0~10\ : std_logic;
SIGNAL \inst1|inst6|Add0~6\ : std_logic;
SIGNAL \inst1|inst6|Add0~1_sumout\ : std_logic;
SIGNAL \inst1|inst6|Mux0~1_combout\ : std_logic;
SIGNAL \inst1|inst6|Mux1~1_combout\ : std_logic;
SIGNAL \inst1|inst6|Add0~5_sumout\ : std_logic;
SIGNAL \inst1|inst6|Mux1~2_combout\ : std_logic;
SIGNAL \inst1|inst6|Mux2~1_combout\ : std_logic;
SIGNAL \inst1|inst6|Add0~9_sumout\ : std_logic;
SIGNAL \inst1|inst6|Mux2~2_combout\ : std_logic;
SIGNAL \inst1|inst6|Mux3~1_combout\ : std_logic;
SIGNAL \inst1|inst6|Add0~13_sumout\ : std_logic;
SIGNAL \inst1|inst6|Mux3~2_combout\ : std_logic;
SIGNAL \inst1|inst6|Mux4~1_combout\ : std_logic;
SIGNAL \inst1|inst6|Add0~17_sumout\ : std_logic;
SIGNAL \inst1|inst6|Mux4~2_combout\ : std_logic;
SIGNAL \inst1|inst6|Mux5~1_combout\ : std_logic;
SIGNAL \inst1|inst6|Mux5~0_combout\ : std_logic;
SIGNAL \inst1|inst6|Add0~21_sumout\ : std_logic;
SIGNAL \inst1|inst6|Mux5~2_combout\ : std_logic;
SIGNAL \inst1|inst9|Mux5~0_combout\ : std_logic;
SIGNAL \inst1|inst9|Mux6~0_combout\ : std_logic;
SIGNAL \inst1|inst9|Mux2~0_combout\ : std_logic;
SIGNAL \inst1|inst9|Mux3~0_combout\ : std_logic;
SIGNAL \inst1|inst9|Mux4~0_combout\ : std_logic;
SIGNAL \inst1|inst9|Mux4~1_combout\ : std_logic;
SIGNAL \inst1|inst9|Add0~26\ : std_logic;
SIGNAL \inst1|inst9|Add0~22\ : std_logic;
SIGNAL \inst1|inst9|Add0~17_sumout\ : std_logic;
SIGNAL \inst1|inst9|Mux4~2_combout\ : std_logic;
SIGNAL \inst1|inst9|Regist[6]~0_combout\ : std_logic;
SIGNAL \inst1|inst9|Mux3~1_combout\ : std_logic;
SIGNAL \inst1|inst9|Add0~18\ : std_logic;
SIGNAL \inst1|inst9|Add0~13_sumout\ : std_logic;
SIGNAL \inst1|inst9|Mux3~2_combout\ : std_logic;
SIGNAL \inst1|inst9|Mux2~1_combout\ : std_logic;
SIGNAL \inst1|inst9|Add0~14\ : std_logic;
SIGNAL \inst1|inst9|Add0~9_sumout\ : std_logic;
SIGNAL \inst1|inst9|Mux2~2_combout\ : std_logic;
SIGNAL \inst1|inst9|Mux1~1_combout\ : std_logic;
SIGNAL \inst1|inst9|Mux1~0_combout\ : std_logic;
SIGNAL \inst1|inst9|Add0~10\ : std_logic;
SIGNAL \inst1|inst9|Add0~5_sumout\ : std_logic;
SIGNAL \inst1|inst9|Mux1~2_combout\ : std_logic;
SIGNAL \inst1|inst9|Add0~6\ : std_logic;
SIGNAL \inst1|inst9|Add0~1_sumout\ : std_logic;
SIGNAL \inst1|inst9|Mux0~0_combout\ : std_logic;
SIGNAL \inst1|inst9|Mux0~1_combout\ : std_logic;
SIGNAL \inst1|inst9|Add0~29_sumout\ : std_logic;
SIGNAL \inst1|inst9|Mux7~0_combout\ : std_logic;
SIGNAL \inst1|inst9|Mux7~1_combout\ : std_logic;
SIGNAL \inst1|inst9|Add0~30\ : std_logic;
SIGNAL \inst1|inst9|Add0~25_sumout\ : std_logic;
SIGNAL \inst1|inst9|Mux6~1_combout\ : std_logic;
SIGNAL \inst1|inst9|Mux6~2_combout\ : std_logic;
SIGNAL \inst1|inst9|Mux5~1_combout\ : std_logic;
SIGNAL \inst1|inst9|Add0~21_sumout\ : std_logic;
SIGNAL \inst1|inst9|Mux5~2_combout\ : std_logic;
SIGNAL \inst1|inst16|result[2]~312_combout\ : std_logic;
SIGNAL \inst1|inst16|result[2]~317_combout\ : std_logic;
SIGNAL \inst1|inst16|_~7_combout\ : std_logic;
SIGNAL \inst1|inst19|Mux3~0_combout\ : std_logic;
SIGNAL \inst1|inst19|Add0~29_sumout\ : std_logic;
SIGNAL \inst1|inst19|Mux6~1_combout\ : std_logic;
SIGNAL \inst1|inst19|Mux6~0_combout\ : std_logic;
SIGNAL \inst1|inst19|Add0~30\ : std_logic;
SIGNAL \inst1|inst19|Add0~25_sumout\ : std_logic;
SIGNAL \inst1|inst19|Mux6~2_combout\ : std_logic;
SIGNAL \inst1|inst19|Regist[6]~0_combout\ : std_logic;
SIGNAL \inst1|inst19|Mux7~0_combout\ : std_logic;
SIGNAL \inst1|inst19|Mux7~1_combout\ : std_logic;
SIGNAL \inst1|inst19|Mux0~0_combout\ : std_logic;
SIGNAL \inst1|inst19|Add0~26\ : std_logic;
SIGNAL \inst1|inst19|Add0~22\ : std_logic;
SIGNAL \inst1|inst19|Add0~18\ : std_logic;
SIGNAL \inst1|inst19|Add0~14\ : std_logic;
SIGNAL \inst1|inst19|Add0~10\ : std_logic;
SIGNAL \inst1|inst19|Add0~6\ : std_logic;
SIGNAL \inst1|inst19|Add0~1_sumout\ : std_logic;
SIGNAL \inst1|inst19|Mux0~1_combout\ : std_logic;
SIGNAL \inst1|inst19|Mux1~1_combout\ : std_logic;
SIGNAL \inst1|inst19|Mux1~0_combout\ : std_logic;
SIGNAL \inst1|inst19|Add0~5_sumout\ : std_logic;
SIGNAL \inst1|inst19|Mux1~2_combout\ : std_logic;
SIGNAL \inst1|inst19|Mux2~1_combout\ : std_logic;
SIGNAL \inst1|inst19|Mux2~0_combout\ : std_logic;
SIGNAL \inst1|inst19|Add0~9_sumout\ : std_logic;
SIGNAL \inst1|inst19|Mux2~2_combout\ : std_logic;
SIGNAL \inst1|inst19|Mux3~1_combout\ : std_logic;
SIGNAL \inst1|inst19|Add0~13_sumout\ : std_logic;
SIGNAL \inst1|inst19|Mux3~2_combout\ : std_logic;
SIGNAL \inst1|inst19|Mux4~1_combout\ : std_logic;
SIGNAL \inst1|inst19|Mux4~0_combout\ : std_logic;
SIGNAL \inst1|inst19|Add0~17_sumout\ : std_logic;
SIGNAL \inst1|inst19|Mux4~2_combout\ : std_logic;
SIGNAL \inst1|inst19|Mux5~1_combout\ : std_logic;
SIGNAL \inst1|inst19|Add0~21_sumout\ : std_logic;
SIGNAL \inst1|inst19|Mux5~0_combout\ : std_logic;
SIGNAL \inst1|inst19|Mux5~2_combout\ : std_logic;
SIGNAL \inst1|inst16|result[2]~311_combout\ : std_logic;
SIGNAL \inst1|inst16|_~3_combout\ : std_logic;
SIGNAL \inst1|inst16|_~1_combout\ : std_logic;
SIGNAL \inst1|inst8|Mux6~1_combout\ : std_logic;
SIGNAL \inst1|inst8|Add0~10\ : std_logic;
SIGNAL \inst1|inst8|Add0~17_sumout\ : std_logic;
SIGNAL \inst1|inst8|Mux6~0_combout\ : std_logic;
SIGNAL \inst1|inst8|Mux6~2_combout\ : std_logic;
SIGNAL \inst1|inst8|Regist[4]~3_combout\ : std_logic;
SIGNAL \inst1|inst8|Add0~18\ : std_logic;
SIGNAL \inst1|inst8|Add0~21_sumout\ : std_logic;
SIGNAL \inst1|inst8|Mux4~0_combout\ : std_logic;
SIGNAL \inst1|inst8|Add0~22\ : std_logic;
SIGNAL \inst1|inst8|Add0~26\ : std_logic;
SIGNAL \inst1|inst8|Add0~13_sumout\ : std_logic;
SIGNAL \inst1|inst8|Mux2~1_combout\ : std_logic;
SIGNAL \inst1|inst8|Mux2~0_combout\ : std_logic;
SIGNAL \inst1|inst8|Add0~14\ : std_logic;
SIGNAL \inst1|inst8|Add0~1_sumout\ : std_logic;
SIGNAL \inst1|inst8|Mux2~2_combout\ : std_logic;
SIGNAL \inst1|inst8|Mux3~2_combout\ : std_logic;
SIGNAL \inst1|inst8|Mux3~1_combout\ : std_logic;
SIGNAL \inst1|inst8|Mux3~3_combout\ : std_logic;
SIGNAL \inst1|inst8|Mux4~1_combout\ : std_logic;
SIGNAL \inst1|inst8|Add0~25_sumout\ : std_logic;
SIGNAL \inst1|inst8|Mux4~2_combout\ : std_logic;
SIGNAL \inst1|inst8|Mux5~1_combout\ : std_logic;
SIGNAL \inst1|inst8|Mux5~0_combout\ : std_logic;
SIGNAL \inst1|inst8|Mux5~2_combout\ : std_logic;
SIGNAL \inst1|inst16|_~2_combout\ : std_logic;
SIGNAL \inst1|inst14|Mux6~0_combout\ : std_logic;
SIGNAL \inst1|inst14|Mux1~0_combout\ : std_logic;
SIGNAL \inst1|inst14|Mux3~0_combout\ : std_logic;
SIGNAL \inst1|inst14|Mux3~1_combout\ : std_logic;
SIGNAL \inst1|inst14|Add0~18\ : std_logic;
SIGNAL \inst1|inst14|Add0~13_sumout\ : std_logic;
SIGNAL \inst1|inst14|Mux3~2_combout\ : std_logic;
SIGNAL \inst1|inst14|Regist[6]~0_combout\ : std_logic;
SIGNAL \inst1|inst14|Mux2~1_combout\ : std_logic;
SIGNAL \inst1|inst14|Mux2~0_combout\ : std_logic;
SIGNAL \inst1|inst14|Add0~14\ : std_logic;
SIGNAL \inst1|inst14|Add0~9_sumout\ : std_logic;
SIGNAL \inst1|inst14|Mux2~2_combout\ : std_logic;
SIGNAL \inst1|inst14|Add0~10\ : std_logic;
SIGNAL \inst1|inst14|Add0~5_sumout\ : std_logic;
SIGNAL \inst1|inst14|Mux1~1_combout\ : std_logic;
SIGNAL \inst1|inst14|Mux1~2_combout\ : std_logic;
SIGNAL \inst1|inst14|Add0~6\ : std_logic;
SIGNAL \inst1|inst14|Add0~1_sumout\ : std_logic;
SIGNAL \inst1|inst14|Mux0~0_combout\ : std_logic;
SIGNAL \inst1|inst14|Mux0~1_combout\ : std_logic;
SIGNAL \inst1|inst14|Add0~29_sumout\ : std_logic;
SIGNAL \inst1|inst14|Mux7~0_combout\ : std_logic;
SIGNAL \inst1|inst14|Mux7~1_combout\ : std_logic;
SIGNAL \inst1|inst14|Mux6~1_combout\ : std_logic;
SIGNAL \inst1|inst14|Add0~30\ : std_logic;
SIGNAL \inst1|inst14|Add0~25_sumout\ : std_logic;
SIGNAL \inst1|inst14|Mux6~2_combout\ : std_logic;
SIGNAL \inst1|inst14|Add0~26\ : std_logic;
SIGNAL \inst1|inst14|Add0~22\ : std_logic;
SIGNAL \inst1|inst14|Add0~17_sumout\ : std_logic;
SIGNAL \inst1|inst14|Mux4~1_combout\ : std_logic;
SIGNAL \inst1|inst14|Mux4~0_combout\ : std_logic;
SIGNAL \inst1|inst14|Mux4~2_combout\ : std_logic;
SIGNAL \inst1|inst14|Mux5~1_combout\ : std_logic;
SIGNAL \inst1|inst14|Mux5~0_combout\ : std_logic;
SIGNAL \inst1|inst14|Add0~21_sumout\ : std_logic;
SIGNAL \inst1|inst14|Mux5~2_combout\ : std_logic;
SIGNAL \inst1|inst16|result[2]~309_combout\ : std_logic;
SIGNAL \inst1|inst18|Mux5~0_combout\ : std_logic;
SIGNAL \inst1|inst18|Add0~30\ : std_logic;
SIGNAL \inst1|inst18|Add0~26\ : std_logic;
SIGNAL \inst1|inst18|Add0~21_sumout\ : std_logic;
SIGNAL \inst1|inst18|Mux5~2_combout\ : std_logic;
SIGNAL \inst1|inst18|Regist[6]~0_combout\ : std_logic;
SIGNAL \inst1|inst18|Mux6~1_combout\ : std_logic;
SIGNAL \inst1|inst18|Mux6~0_combout\ : std_logic;
SIGNAL \inst1|inst18|Add0~25_sumout\ : std_logic;
SIGNAL \inst1|inst18|Mux6~2_combout\ : std_logic;
SIGNAL \inst1|inst18|Mux7~0_combout\ : std_logic;
SIGNAL \inst1|inst18|Add0~29_sumout\ : std_logic;
SIGNAL \inst1|inst18|Mux7~1_combout\ : std_logic;
SIGNAL \inst1|inst18|Add0~22\ : std_logic;
SIGNAL \inst1|inst18|Add0~18\ : std_logic;
SIGNAL \inst1|inst18|Add0~14\ : std_logic;
SIGNAL \inst1|inst18|Add0~10\ : std_logic;
SIGNAL \inst1|inst18|Add0~6\ : std_logic;
SIGNAL \inst1|inst18|Add0~1_sumout\ : std_logic;
SIGNAL \inst1|inst18|Mux0~0_combout\ : std_logic;
SIGNAL \inst1|inst18|Mux0~1_combout\ : std_logic;
SIGNAL \inst1|inst16|result[7]~265_combout\ : std_logic;
SIGNAL \inst1|inst16|result[7]~264_combout\ : std_logic;
SIGNAL \Fuente7~input_o\ : std_logic;
SIGNAL \inst1|inst16|result[7]~270_combout\ : std_logic;
SIGNAL \inst1|inst16|result[7]~271_combout\ : std_logic;
SIGNAL \Destino7~input_o\ : std_logic;
SIGNAL \inst1|inst16|result[7]~268_combout\ : std_logic;
SIGNAL \inst1|inst16|result[7]~267_combout\ : std_logic;
SIGNAL \inst1|inst16|result[7]~269_combout\ : std_logic;
SIGNAL \inst1|inst16|result[7]~272_combout\ : std_logic;
SIGNAL \inst1|inst16|result[7]~266_combout\ : std_logic;
SIGNAL \inst1|inst4|Mux1~0_combout\ : std_logic;
SIGNAL \inst1|inst4|Mux2~0_combout\ : std_logic;
SIGNAL \inst1|inst4|Mux2~1_combout\ : std_logic;
SIGNAL \inst1|inst4|Mux6~0_combout\ : std_logic;
SIGNAL \inst1|inst4|Mux6~1_combout\ : std_logic;
SIGNAL \inst1|inst4|Add0~30\ : std_logic;
SIGNAL \inst1|inst4|Add0~25_sumout\ : std_logic;
SIGNAL \inst1|inst4|Mux6~2_combout\ : std_logic;
SIGNAL \inst1|inst4|Regist[1]~0_combout\ : std_logic;
SIGNAL \inst1|inst4|Add0~26\ : std_logic;
SIGNAL \inst1|inst4|Add0~22\ : std_logic;
SIGNAL \inst1|inst4|Add0~18\ : std_logic;
SIGNAL \inst1|inst4|Add0~14\ : std_logic;
SIGNAL \inst1|inst4|Add0~9_sumout\ : std_logic;
SIGNAL \inst1|inst4|Mux2~2_combout\ : std_logic;
SIGNAL \inst1|inst4|Mux1~1_combout\ : std_logic;
SIGNAL \inst1|inst4|Add0~10\ : std_logic;
SIGNAL \inst1|inst4|Add0~5_sumout\ : std_logic;
SIGNAL \inst1|inst4|Mux1~2_combout\ : std_logic;
SIGNAL \inst1|inst4|Add0~6\ : std_logic;
SIGNAL \inst1|inst4|Add0~1_sumout\ : std_logic;
SIGNAL \inst1|inst4|Mux0~0_combout\ : std_logic;
SIGNAL \inst1|inst4|Mux0~1_combout\ : std_logic;
SIGNAL \inst1|inst4|Mux7~0_combout\ : std_logic;
SIGNAL \inst1|inst4|Add0~29_sumout\ : std_logic;
SIGNAL \inst1|inst4|Mux7~1_combout\ : std_logic;
SIGNAL \inst1|inst3|Mux2~0_combout\ : std_logic;
SIGNAL \inst1|inst3|Mux3~0_combout\ : std_logic;
SIGNAL \inst1|inst3|Add0~30\ : std_logic;
SIGNAL \inst1|inst3|Add0~25_sumout\ : std_logic;
SIGNAL \inst1|inst3|Mux6~0_combout\ : std_logic;
SIGNAL \inst1|inst3|Mux6~1_combout\ : std_logic;
SIGNAL \inst1|inst3|Mux6~2_combout\ : std_logic;
SIGNAL \inst1|inst3|Regist[1]~0_combout\ : std_logic;
SIGNAL \inst1|inst3|Mux5~1_combout\ : std_logic;
SIGNAL \inst1|inst3|Add0~26\ : std_logic;
SIGNAL \inst1|inst3|Add0~21_sumout\ : std_logic;
SIGNAL \inst1|inst3|Mux5~0_combout\ : std_logic;
SIGNAL \inst1|inst3|Mux5~2_combout\ : std_logic;
SIGNAL \inst1|inst3|Mux4~1_combout\ : std_logic;
SIGNAL \inst1|inst3|Mux4~0_combout\ : std_logic;
SIGNAL \inst1|inst3|Add0~22\ : std_logic;
SIGNAL \inst1|inst3|Add0~17_sumout\ : std_logic;
SIGNAL \inst1|inst3|Mux4~2_combout\ : std_logic;
SIGNAL \inst1|inst3|Mux3~1_combout\ : std_logic;
SIGNAL \inst1|inst3|Add0~18\ : std_logic;
SIGNAL \inst1|inst3|Add0~13_sumout\ : std_logic;
SIGNAL \inst1|inst3|Mux3~2_combout\ : std_logic;
SIGNAL \inst1|inst3|Mux2~1_combout\ : std_logic;
SIGNAL \inst1|inst3|Add0~14\ : std_logic;
SIGNAL \inst1|inst3|Add0~9_sumout\ : std_logic;
SIGNAL \inst1|inst3|Mux2~2_combout\ : std_logic;
SIGNAL \inst1|inst3|Mux1~1_combout\ : std_logic;
SIGNAL \inst1|inst3|Mux1~0_combout\ : std_logic;
SIGNAL \inst1|inst3|Add0~10\ : std_logic;
SIGNAL \inst1|inst3|Add0~5_sumout\ : std_logic;
SIGNAL \inst1|inst3|Mux1~2_combout\ : std_logic;
SIGNAL \inst1|inst3|Add0~6\ : std_logic;
SIGNAL \inst1|inst3|Add0~1_sumout\ : std_logic;
SIGNAL \inst1|inst3|Mux0~0_combout\ : std_logic;
SIGNAL \inst1|inst3|Mux0~1_combout\ : std_logic;
SIGNAL \inst1|inst3|Mux7~0_combout\ : std_logic;
SIGNAL \inst1|inst3|Add0~29_sumout\ : std_logic;
SIGNAL \inst1|inst3|Mux7~1_combout\ : std_logic;
SIGNAL \inst1|inst24|Add0~34_cout\ : std_logic;
SIGNAL \inst1|inst24|Add0~29_sumout\ : std_logic;
SIGNAL \inst1|inst24|Mux13~0_combout\ : std_logic;
SIGNAL \inst1|inst24|Mux9~0_combout\ : std_logic;
SIGNAL \inst1|inst20|Add0~29_sumout\ : std_logic;
SIGNAL \inst1|inst20|Mux7~0_combout\ : std_logic;
SIGNAL \inst1|inst20|Mux7~1_combout\ : std_logic;
SIGNAL \inst1|inst20|Regist[6]~0_combout\ : std_logic;
SIGNAL \inst1|inst24|Add0~30\ : std_logic;
SIGNAL \inst1|inst24|Add0~26\ : std_logic;
SIGNAL \inst1|inst24|Add0~22\ : std_logic;
SIGNAL \inst1|inst24|Add0~18\ : std_logic;
SIGNAL \inst1|inst24|Add0~14\ : std_logic;
SIGNAL \inst1|inst24|Add0~10\ : std_logic;
SIGNAL \inst1|inst24|Add0~6\ : std_logic;
SIGNAL \inst1|inst24|Add0~1_sumout\ : std_logic;
SIGNAL \inst1|inst24|Mux16~0_combout\ : std_logic;
SIGNAL \inst1|inst20|Mux0~0_combout\ : std_logic;
SIGNAL \inst1|inst24|Add0~5_sumout\ : std_logic;
SIGNAL \inst1|inst24|Mux15~0_combout\ : std_logic;
SIGNAL \inst1|inst24|Add0~9_sumout\ : std_logic;
SIGNAL \inst1|inst24|Mux14~0_combout\ : std_logic;
SIGNAL \inst1|inst24|Add0~13_sumout\ : std_logic;
SIGNAL \inst1|inst24|Mux13~1_combout\ : std_logic;
SIGNAL \inst1|inst20|Mux3~0_combout\ : std_logic;
SIGNAL \inst1|inst24|Add0~17_sumout\ : std_logic;
SIGNAL \inst1|inst24|Mux12~0_combout\ : std_logic;
SIGNAL \inst1|inst20|Mux4~0_combout\ : std_logic;
SIGNAL \inst1|inst20|Mux4~1_combout\ : std_logic;
SIGNAL \inst1|inst24|Add0~25_sumout\ : std_logic;
SIGNAL \inst1|inst24|Mux10~0_combout\ : std_logic;
SIGNAL \inst1|inst20|Add0~30\ : std_logic;
SIGNAL \inst1|inst20|Add0~26\ : std_logic;
SIGNAL \inst1|inst20|Add0~22\ : std_logic;
SIGNAL \inst1|inst20|Add0~17_sumout\ : std_logic;
SIGNAL \inst1|inst20|Mux4~2_combout\ : std_logic;
SIGNAL \inst1|inst20|Mux3~1_combout\ : std_logic;
SIGNAL \inst1|inst20|Add0~18\ : std_logic;
SIGNAL \inst1|inst20|Add0~13_sumout\ : std_logic;
SIGNAL \inst1|inst20|Mux3~2_combout\ : std_logic;
SIGNAL \inst1|inst20|Add0~14\ : std_logic;
SIGNAL \inst1|inst20|Add0~10\ : std_logic;
SIGNAL \inst1|inst20|Add0~6\ : std_logic;
SIGNAL \inst1|inst20|Add0~1_sumout\ : std_logic;
SIGNAL \inst1|inst20|Mux0~1_combout\ : std_logic;
SIGNAL \inst1|inst20|Mux1~1_combout\ : std_logic;
SIGNAL \inst1|inst20|Mux1~0_combout\ : std_logic;
SIGNAL \inst1|inst20|Add0~5_sumout\ : std_logic;
SIGNAL \inst1|inst20|Mux1~2_combout\ : std_logic;
SIGNAL \inst1|inst20|Mux2~1_combout\ : std_logic;
SIGNAL \inst1|inst20|Mux2~0_combout\ : std_logic;
SIGNAL \inst1|inst20|Add0~9_sumout\ : std_logic;
SIGNAL \inst1|inst20|Mux2~2_combout\ : std_logic;
SIGNAL \inst1|inst16|result[5]~282_combout\ : std_logic;
SIGNAL \inst1|inst16|result[5]~283_combout\ : std_logic;
SIGNAL \inst1|inst16|result[5]~284_combout\ : std_logic;
SIGNAL \Fuente5~input_o\ : std_logic;
SIGNAL \inst1|inst16|result[5]~288_combout\ : std_logic;
SIGNAL \Destino5~input_o\ : std_logic;
SIGNAL \inst1|inst16|result[5]~286_combout\ : std_logic;
SIGNAL \inst1|inst16|result[5]~289_combout\ : std_logic;
SIGNAL \inst1|inst16|result[5]~285_combout\ : std_logic;
SIGNAL \inst1|inst16|result[5]~287_combout\ : std_logic;
SIGNAL \inst1|inst16|result[5]~290_combout\ : std_logic;
SIGNAL \inst1|inst18|Mux2~0_combout\ : std_logic;
SIGNAL \inst1|inst18|Add0~9_sumout\ : std_logic;
SIGNAL \inst1|inst18|Mux2~2_combout\ : std_logic;
SIGNAL \inst1|inst18|Mux1~1_combout\ : std_logic;
SIGNAL \inst1|inst18|Add0~5_sumout\ : std_logic;
SIGNAL \inst1|inst18|Mux1~2_combout\ : std_logic;
SIGNAL \inst1|inst16|result[6]~274_combout\ : std_logic;
SIGNAL \inst1|inst16|result[6]~275_combout\ : std_logic;
SIGNAL \inst1|inst16|result[6]~273_combout\ : std_logic;
SIGNAL \Fuente6~input_o\ : std_logic;
SIGNAL \inst1|inst16|result[6]~280_combout\ : std_logic;
SIGNAL \inst1|inst16|result[6]~279_combout\ : std_logic;
SIGNAL \Destino6~input_o\ : std_logic;
SIGNAL \inst1|inst16|result[6]~277_combout\ : std_logic;
SIGNAL \inst1|inst16|result[6]~276_combout\ : std_logic;
SIGNAL \inst1|inst16|result[6]~278_combout\ : std_logic;
SIGNAL \inst1|inst16|result[6]~281_combout\ : std_logic;
SIGNAL \inst1|inst17|Mux1~0_combout\ : std_logic;
SIGNAL \inst1|inst17|Add0~30\ : std_logic;
SIGNAL \inst1|inst17|Add0~26\ : std_logic;
SIGNAL \inst1|inst17|Add0~22\ : std_logic;
SIGNAL \inst1|inst17|Add0~18\ : std_logic;
SIGNAL \inst1|inst17|Add0~14\ : std_logic;
SIGNAL \inst1|inst17|Add0~10\ : std_logic;
SIGNAL \inst1|inst17|Add0~5_sumout\ : std_logic;
SIGNAL \inst1|inst17|Mux1~2_combout\ : std_logic;
SIGNAL \inst1|inst17|Regist[6]~0_combout\ : std_logic;
SIGNAL \inst1|inst17|Mux2~1_combout\ : std_logic;
SIGNAL \inst1|inst17|Mux2~0_combout\ : std_logic;
SIGNAL \inst1|inst17|Add0~9_sumout\ : std_logic;
SIGNAL \inst1|inst17|Mux2~2_combout\ : std_logic;
SIGNAL \inst1|inst17|Mux3~1_combout\ : std_logic;
SIGNAL \inst1|inst17|Add0~13_sumout\ : std_logic;
SIGNAL \inst1|inst17|Mux3~2_combout\ : std_logic;
SIGNAL \inst1|inst17|Mux4~1_combout\ : std_logic;
SIGNAL \inst1|inst17|Add0~17_sumout\ : std_logic;
SIGNAL \inst1|inst17|Mux4~2_combout\ : std_logic;
SIGNAL \inst1|inst17|Mux5~1_combout\ : std_logic;
SIGNAL \inst1|inst17|Mux5~0_combout\ : std_logic;
SIGNAL \inst1|inst17|Add0~21_sumout\ : std_logic;
SIGNAL \inst1|inst17|Mux5~2_combout\ : std_logic;
SIGNAL \inst1|inst13|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst1|Add0~21_sumout\ : std_logic;
SIGNAL \inst1|inst1|Mux5~0_combout\ : std_logic;
SIGNAL \inst1|inst1|Mux5~1_combout\ : std_logic;
SIGNAL \inst1|inst1|Mux6~0_combout\ : std_logic;
SIGNAL \inst1|inst1|Mux6~1_combout\ : std_logic;
SIGNAL \inst1|inst7|Mux4~0_combout\ : std_logic;
SIGNAL \inst1|inst7|Mux4~1_combout\ : std_logic;
SIGNAL \inst1|inst7|Add0~17_sumout\ : std_logic;
SIGNAL \inst1|inst7|Mux4~2_combout\ : std_logic;
SIGNAL \inst1|inst16|result[3]~301_combout\ : std_logic;
SIGNAL \inst1|inst16|result[3]~300_combout\ : std_logic;
SIGNAL \inst1|inst16|result[3]~302_combout\ : std_logic;
SIGNAL \Fuente3~input_o\ : std_logic;
SIGNAL \inst1|inst16|result[3]~306_combout\ : std_logic;
SIGNAL \inst1|inst16|result[3]~307_combout\ : std_logic;
SIGNAL \Destino3~input_o\ : std_logic;
SIGNAL \inst1|inst16|result[3]~304_combout\ : std_logic;
SIGNAL \inst1|inst16|result[3]~305_combout\ : std_logic;
SIGNAL \inst1|inst16|result[3]~303_combout\ : std_logic;
SIGNAL \inst1|inst16|result[3]~308_combout\ : std_logic;
SIGNAL \inst1|inst18|Mux4~0_combout\ : std_logic;
SIGNAL \inst1|inst18|Mux4~1_combout\ : std_logic;
SIGNAL \inst1|inst18|Add0~17_sumout\ : std_logic;
SIGNAL \inst1|inst18|Mux4~2_combout\ : std_logic;
SIGNAL \inst1|inst18|Mux3~1_combout\ : std_logic;
SIGNAL \inst1|inst18|Add0~13_sumout\ : std_logic;
SIGNAL \inst1|inst18|Mux3~2_combout\ : std_logic;
SIGNAL \inst1|inst16|result[4]~292_combout\ : std_logic;
SIGNAL \inst1|inst16|result[4]~291_combout\ : std_logic;
SIGNAL \Fuente4~input_o\ : std_logic;
SIGNAL \inst1|inst16|result[4]~298_combout\ : std_logic;
SIGNAL \inst1|inst16|result[4]~297_combout\ : std_logic;
SIGNAL \inst1|inst16|result[4]~296_combout\ : std_logic;
SIGNAL \Destino4~input_o\ : std_logic;
SIGNAL \inst1|inst16|result[4]~295_combout\ : std_logic;
SIGNAL \inst1|inst16|result[4]~294_combout\ : std_logic;
SIGNAL \inst1|inst16|result[4]~299_combout\ : std_logic;
SIGNAL \inst1|inst16|result[4]~293_combout\ : std_logic;
SIGNAL \inst1|inst4|Mux3~0_combout\ : std_logic;
SIGNAL \inst1|inst4|Add0~13_sumout\ : std_logic;
SIGNAL \inst1|inst4|Mux3~1_combout\ : std_logic;
SIGNAL \inst1|inst4|Mux3~2_combout\ : std_logic;
SIGNAL \inst1|inst4|Mux4~1_combout\ : std_logic;
SIGNAL \inst1|inst4|Mux4~0_combout\ : std_logic;
SIGNAL \inst1|inst4|Add0~17_sumout\ : std_logic;
SIGNAL \inst1|inst4|Mux4~2_combout\ : std_logic;
SIGNAL \inst1|inst4|Mux5~1_combout\ : std_logic;
SIGNAL \inst1|inst4|Add0~21_sumout\ : std_logic;
SIGNAL \inst1|inst4|Mux5~0_combout\ : std_logic;
SIGNAL \inst1|inst4|Mux5~2_combout\ : std_logic;
SIGNAL \inst1|inst24|Add0~21_sumout\ : std_logic;
SIGNAL \inst1|inst24|Mux11~0_combout\ : std_logic;
SIGNAL \inst1|inst20|Mux5~0_combout\ : std_logic;
SIGNAL \inst1|inst20|Add0~21_sumout\ : std_logic;
SIGNAL \inst1|inst20|Mux5~1_combout\ : std_logic;
SIGNAL \inst1|inst20|Mux5~2_combout\ : std_logic;
SIGNAL \inst1|inst20|Mux6~1_combout\ : std_logic;
SIGNAL \inst1|inst20|Mux6~0_combout\ : std_logic;
SIGNAL \inst1|inst20|Add0~25_sumout\ : std_logic;
SIGNAL \inst1|inst20|Mux6~2_combout\ : std_logic;
SIGNAL \inst1|inst16|result[1]~319_combout\ : std_logic;
SIGNAL \inst1|inst16|result[1]~318_combout\ : std_logic;
SIGNAL \inst1|inst16|result[1]~320_combout\ : std_logic;
SIGNAL \Fuente1~input_o\ : std_logic;
SIGNAL \inst1|inst16|result[1]~325_combout\ : std_logic;
SIGNAL \inst1|inst16|result[1]~324_combout\ : std_logic;
SIGNAL \inst1|inst16|result[1]~323_combout\ : std_logic;
SIGNAL \Destino1~input_o\ : std_logic;
SIGNAL \inst1|inst16|result[1]~322_combout\ : std_logic;
SIGNAL \inst1|inst16|result[1]~321_combout\ : std_logic;
SIGNAL \inst1|inst16|result[1]~326_combout\ : std_logic;
SIGNAL \inst1|inst17|Mux6~0_combout\ : std_logic;
SIGNAL \inst1|inst17|Add0~25_sumout\ : std_logic;
SIGNAL \inst1|inst17|Mux6~1_combout\ : std_logic;
SIGNAL \inst1|inst17|Mux6~2_combout\ : std_logic;
SIGNAL \inst1|inst17|Mux7~0_combout\ : std_logic;
SIGNAL \inst1|inst17|Mux7~1_combout\ : std_logic;
SIGNAL \inst1|inst17|Mux0~0_combout\ : std_logic;
SIGNAL \inst1|inst17|Add0~6\ : std_logic;
SIGNAL \inst1|inst17|Add0~1_sumout\ : std_logic;
SIGNAL \inst1|inst17|Mux0~1_combout\ : std_logic;
SIGNAL \inst1|inst13|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst1|Add0~6\ : std_logic;
SIGNAL \inst1|inst1|Add0~1_sumout\ : std_logic;
SIGNAL \inst1|inst1|Mux0~0_combout\ : std_logic;
SIGNAL \inst1|inst1|Mux0~1_combout\ : std_logic;
SIGNAL \inst1|inst1|Add0~29_sumout\ : std_logic;
SIGNAL \inst1|inst1|Mux7~1_combout\ : std_logic;
SIGNAL \inst1|inst1|Mux7~0_combout\ : std_logic;
SIGNAL \inst1|inst7|Mux1~0_combout\ : std_logic;
SIGNAL \inst1|inst23|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst7|Add0~10\ : std_logic;
SIGNAL \inst1|inst7|Add0~5_sumout\ : std_logic;
SIGNAL \inst1|inst7|Mux1~1_combout\ : std_logic;
SIGNAL \inst1|inst7|Mux1~2_combout\ : std_logic;
SIGNAL \inst1|inst23|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst7|Mux0~0_combout\ : std_logic;
SIGNAL \inst1|inst7|Add0~6\ : std_logic;
SIGNAL \inst1|inst7|Add0~1_sumout\ : std_logic;
SIGNAL \inst1|inst7|Mux0~1_combout\ : std_logic;
SIGNAL \inst1|inst7|Add0~29_sumout\ : std_logic;
SIGNAL \inst1|inst7|Mux7~0_combout\ : std_logic;
SIGNAL \inst1|inst7|Mux7~1_combout\ : std_logic;
SIGNAL \inst1|inst16|result[0]~328_combout\ : std_logic;
SIGNAL \inst1|inst16|result[0]~327_combout\ : std_logic;
SIGNAL \inst1|inst16|result[0]~329_combout\ : std_logic;
SIGNAL \Fuente0~input_o\ : std_logic;
SIGNAL \inst1|inst16|result[0]~333_combout\ : std_logic;
SIGNAL \inst1|inst16|result[0]~334_combout\ : std_logic;
SIGNAL \inst1|inst16|result[0]~330_combout\ : std_logic;
SIGNAL \inst1|inst16|result[0]~332_combout\ : std_logic;
SIGNAL \Destino0~input_o\ : std_logic;
SIGNAL \inst1|inst16|result[0]~331_combout\ : std_logic;
SIGNAL \inst1|inst16|result[0]~335_combout\ : std_logic;
SIGNAL \inst1|inst8|Add0~9_sumout\ : std_logic;
SIGNAL \inst1|inst8|Mux7~0_combout\ : std_logic;
SIGNAL \inst1|inst8|Mux7~1_combout\ : std_logic;
SIGNAL \inst1|inst8|Add0~2\ : std_logic;
SIGNAL \inst1|inst8|Add0~6\ : std_logic;
SIGNAL \inst1|inst8|Add0~29_sumout\ : std_logic;
SIGNAL \inst1|inst8|Mux0~0_combout\ : std_logic;
SIGNAL \inst1|inst8|Mux0~1_combout\ : std_logic;
SIGNAL \inst1|inst8|Mux1~1_combout\ : std_logic;
SIGNAL \inst1|inst8|Add0~5_sumout\ : std_logic;
SIGNAL \inst1|inst8|Mux1~0_combout\ : std_logic;
SIGNAL \inst1|inst8|Mux1~2_combout\ : std_logic;
SIGNAL \inst1|inst252|ROM~0_combout\ : std_logic;
SIGNAL \inst1|inst252|ROM~1_combout\ : std_logic;
SIGNAL \inst1|inst252|data_out[6]~feeder_combout\ : std_logic;
SIGNAL \inst1|inst252|data_out[5]~feeder_combout\ : std_logic;
SIGNAL \inst1|inst252|data_out[0]~feeder_combout\ : std_logic;
SIGNAL \MDR[7]~input_o\ : std_logic;
SIGNAL \MDR[6]~input_o\ : std_logic;
SIGNAL \MDR[5]~input_o\ : std_logic;
SIGNAL \MDR[4]~input_o\ : std_logic;
SIGNAL \MDR[3]~input_o\ : std_logic;
SIGNAL \MDR[2]~input_o\ : std_logic;
SIGNAL \MDR[1]~input_o\ : std_logic;
SIGNAL \MDR[0]~input_o\ : std_logic;
SIGNAL \inst1|inst8|Regist\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|inst20|Regist\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|inst18|Regist\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|inst7|Regist\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|inst14|Regist\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|inst6|Regist\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|inst24|ALU_Result\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|inst1|Regist\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|inst9|Regist\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|inst19|Regist\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|inst17|Regist\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|inst5|Regist\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|inst10|Regist\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|inst11|Regist\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|inst2|Regist\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|inst|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|inst4|Regist\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|inst3|Regist\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|address\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst1|inst252|data_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|NextAddUC\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst1|inst16|result\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_Rst~inputCLKENA0_outclk\ : std_logic;
SIGNAL \ALT_INV_AluSel[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_AluSel[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_AluSel[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_AluSel[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_BIN[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_AIN[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_BIN[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_AIN[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_BIN[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_AIN[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_BIN[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_AIN[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_BIN[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_AIN[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_BIN[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_AIN[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_BIN[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_AIN[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_BIN[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_MUX_B~input_o\ : std_logic;
SIGNAL \ALT_INV_AIN[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_MUX_A~input_o\ : std_logic;
SIGNAL \ALT_INV_MUX_MDR~input_o\ : std_logic;
SIGNAL \ALT_INV_MUX_MAR~input_o\ : std_logic;
SIGNAL \ALT_INV_EnDec~input_o\ : std_logic;
SIGNAL \ALT_INV_SelRegD[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SelRegD[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_SelRegD[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SelRegD[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SelBus[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SelBus[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SelBus[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_SelBus[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_Fuente0~input_o\ : std_logic;
SIGNAL \ALT_INV_Destino0~input_o\ : std_logic;
SIGNAL \ALT_INV_Fuente1~input_o\ : std_logic;
SIGNAL \ALT_INV_Destino1~input_o\ : std_logic;
SIGNAL \ALT_INV_Fuente2~input_o\ : std_logic;
SIGNAL \ALT_INV_Destino2~input_o\ : std_logic;
SIGNAL \ALT_INV_Fuente3~input_o\ : std_logic;
SIGNAL \ALT_INV_Destino3~input_o\ : std_logic;
SIGNAL \ALT_INV_Fuente4~input_o\ : std_logic;
SIGNAL \ALT_INV_Destino4~input_o\ : std_logic;
SIGNAL \ALT_INV_Fuente5~input_o\ : std_logic;
SIGNAL \ALT_INV_Destino5~input_o\ : std_logic;
SIGNAL \ALT_INV_Fuente6~input_o\ : std_logic;
SIGNAL \ALT_INV_Destino6~input_o\ : std_logic;
SIGNAL \ALT_INV_Fuente7~input_o\ : std_logic;
SIGNAL \ALT_INV_Destino7~input_o\ : std_logic;
SIGNAL \ALT_INV_muxSel[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_muxSel[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_muxSel[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_muxSel[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_muxSel[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_muxSel[3]~input_o\ : std_logic;
SIGNAL \inst1|inst24|ALT_INV_ALU_Result\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|inst3|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \inst1|inst4|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \inst1|inst3|ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \inst1|inst3|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \inst1|inst4|ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \inst1|inst4|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \inst1|inst3|ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \inst1|inst3|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \inst1|inst4|ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \inst1|inst4|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \inst1|inst3|ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \inst1|inst3|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \inst1|inst4|ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \inst1|inst4|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \inst1|inst3|ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \inst1|inst3|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \inst1|inst4|ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \inst1|inst4|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \inst1|inst3|ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \inst1|inst3|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \inst1|inst4|ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \inst1|inst4|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \inst1|inst3|ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \inst1|inst3|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \inst1|inst4|ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \inst1|inst4|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \inst1|inst3|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst1|inst4|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst1|inst13|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst24|ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \inst1|inst200|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst15|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst23|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst24|ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \inst1|inst200|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst15|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst23|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst24|ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \inst1|inst200|$00000|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst15|$00000|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst23|$00000|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst24|ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \inst1|inst200|$00000|auto_generated|ALT_INV_l1_w4_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst15|$00000|auto_generated|ALT_INV_l1_w4_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst23|$00000|auto_generated|ALT_INV_l1_w4_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst24|ALT_INV_Mux13~1_combout\ : std_logic;
SIGNAL \inst1|inst200|$00000|auto_generated|ALT_INV_l1_w5_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst15|$00000|auto_generated|ALT_INV_l1_w5_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst23|$00000|auto_generated|ALT_INV_l1_w5_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst24|ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \inst1|inst200|$00000|auto_generated|ALT_INV_l1_w6_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst15|$00000|auto_generated|ALT_INV_l1_w6_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst23|$00000|auto_generated|ALT_INV_l1_w6_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst24|ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \inst1|inst24|ALT_INV_Mux17~0_combout\ : std_logic;
SIGNAL \inst1|inst24|ALT_INV_Mux16~0_combout\ : std_logic;
SIGNAL \inst1|inst24|ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \inst1|inst2|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \inst1|inst11|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \inst1|inst10|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \inst1|inst5|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \inst1|inst200|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst17|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \inst1|inst9|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \inst1|inst6|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \inst1|inst15|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst19|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \inst1|inst18|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \inst1|inst7|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \inst1|inst23|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst14|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \inst1|inst20|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \inst1|inst2|ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \inst1|inst2|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \inst1|inst11|ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \inst1|inst11|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \inst1|inst10|ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \inst1|inst10|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \inst1|inst5|ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \inst1|inst5|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \inst1|inst17|ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \inst1|inst17|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \inst1|inst9|ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \inst1|inst9|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \inst1|inst6|ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \inst1|inst6|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \inst1|inst19|ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \inst1|inst19|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \inst1|inst18|ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \inst1|inst18|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \inst1|inst7|ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \inst1|inst7|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \inst1|inst1|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \inst1|inst13|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst14|ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \inst1|inst14|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \inst1|inst20|ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \inst1|inst20|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \inst1|inst2|ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \inst1|inst2|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \inst1|inst11|ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \inst1|inst11|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \inst1|inst10|ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \inst1|inst10|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \inst1|inst5|ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \inst1|inst5|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \inst1|inst17|ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \inst1|inst17|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \inst1|inst9|ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \inst1|inst9|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \inst1|inst6|ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \inst1|inst6|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \inst1|inst19|ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \inst1|inst19|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \inst1|inst18|ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \inst1|inst18|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \inst1|inst7|ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \inst1|inst7|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \inst1|inst1|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \inst1|inst13|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst14|ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \inst1|inst14|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \inst1|inst20|ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \inst1|inst20|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \inst1|inst2|ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \inst1|inst2|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \inst1|inst11|ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \inst1|inst11|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \inst1|inst10|ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \inst1|inst10|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \inst1|inst5|ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \inst1|inst5|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \inst1|inst17|ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \inst1|inst17|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \inst1|inst9|ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \inst1|inst9|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \inst1|inst6|ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \inst1|inst6|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \inst1|inst19|ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \inst1|inst19|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \inst1|inst18|ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \inst1|inst18|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \inst1|inst7|ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \inst1|inst7|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \inst1|inst1|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \inst1|inst13|$00000|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst14|ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \inst1|inst14|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \inst1|inst20|ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \inst1|inst20|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \inst1|inst2|ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \inst1|inst2|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \inst1|inst11|ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \inst1|inst11|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \inst1|inst10|ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \inst1|inst10|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \inst1|inst5|ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \inst1|inst5|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \inst1|inst17|ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \inst1|inst17|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \inst1|inst9|ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \inst1|inst9|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \inst1|inst6|ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \inst1|inst6|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \inst1|inst19|ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \inst1|inst19|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \inst1|inst18|ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \inst1|inst18|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \inst1|inst7|ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \inst1|inst7|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \inst1|inst1|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \inst1|inst13|$00000|auto_generated|ALT_INV_l1_w4_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst14|ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \inst1|inst14|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \inst1|inst20|ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \inst1|inst20|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \inst1|inst2|ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \inst1|inst2|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \inst1|inst11|ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \inst1|inst11|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \inst1|inst10|ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \inst1|inst10|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \inst1|inst5|ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \inst1|inst5|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \inst1|inst17|ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \inst1|inst17|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \inst1|inst9|ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \inst1|inst9|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \inst1|inst6|ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \inst1|inst6|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \inst1|inst19|ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \inst1|inst19|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \inst1|inst18|ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \inst1|inst18|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \inst1|inst7|ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \inst1|inst7|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \inst1|inst1|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \inst1|inst13|$00000|auto_generated|ALT_INV_l1_w5_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst14|ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \inst1|inst14|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \inst1|inst20|ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \inst1|inst20|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \inst1|inst2|ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \inst1|inst2|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \inst1|inst11|ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \inst1|inst11|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \inst1|inst10|ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \inst1|inst10|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \inst1|inst5|ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \inst1|inst5|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \inst1|inst17|ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \inst1|inst17|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \inst1|inst9|ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \inst1|inst9|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \inst1|inst6|ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \inst1|inst6|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \inst1|inst19|ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \inst1|inst19|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \inst1|inst18|ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \inst1|inst18|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \inst1|inst7|ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \inst1|inst7|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \inst1|inst1|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \inst1|inst13|$00000|auto_generated|ALT_INV_l1_w6_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst14|ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \inst1|inst14|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \inst1|inst20|ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \inst1|inst20|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \inst1|inst2|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst1|inst11|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst1|inst10|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst1|inst5|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst1|inst200|$00000|auto_generated|ALT_INV_l1_w7_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst17|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst1|inst9|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst1|inst6|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst1|inst15|$00000|auto_generated|ALT_INV_l1_w7_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst19|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst1|inst18|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst1|inst7|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst1|inst23|$00000|auto_generated|ALT_INV_l1_w7_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst8|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst1|inst1|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst1|inst13|$00000|auto_generated|ALT_INV_l1_w7_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|inst8|ALT_INV_Regist[7]~10_combout\ : std_logic;
SIGNAL \inst1|inst8|ALT_INV_Regist[0]~9_combout\ : std_logic;
SIGNAL \inst1|inst6|ALT_INV_Regist[6]~0_combout\ : std_logic;
SIGNAL \inst1|inst14|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst1|inst20|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst1|inst8|ALT_INV_Regist[7]~7_combout\ : std_logic;
SIGNAL \inst1|inst8|ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \inst1|inst8|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \inst1|inst8|ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \inst1|inst8|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \inst1|inst8|ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \inst1|inst8|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \inst1|inst8|ALT_INV_Mux3~2_combout\ : std_logic;
SIGNAL \inst1|inst8|ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \inst1|inst8|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \inst1|inst8|ALT_INV_Regist[0]~5_combout\ : std_logic;
SIGNAL \inst1|inst8|ALT_INV_Regist[0]~4_combout\ : std_logic;
SIGNAL \inst1|inst8|ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \inst1|inst8|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \inst1|inst8|ALT_INV_Regist[4]~2_combout\ : std_logic;
SIGNAL \inst1|inst8|ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \inst1|inst8|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \inst1|inst8|ALT_INV_Regist[4]~0_combout\ : std_logic;
SIGNAL \inst1|inst8|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \inst1|inst16|ALT_INV_result\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|inst16|ALT_INV_result[0]~335_combout\ : std_logic;
SIGNAL \inst1|inst16|ALT_INV_result[0]~334_combout\ : std_logic;
SIGNAL \inst1|inst16|ALT_INV_result[0]~333_combout\ : std_logic;
SIGNAL \inst1|inst16|ALT_INV_result[0]~332_combout\ : std_logic;
SIGNAL \inst1|inst16|ALT_INV_result[0]~331_combout\ : std_logic;
SIGNAL \inst1|inst16|ALT_INV_result[0]~330_combout\ : std_logic;
SIGNAL \inst1|inst16|ALT_INV_result[0]~329_combout\ : std_logic;
SIGNAL \inst1|inst16|ALT_INV_result[0]~328_combout\ : std_logic;
SIGNAL \inst1|inst16|ALT_INV_result[0]~327_combout\ : std_logic;
SIGNAL \inst1|inst16|ALT_INV_result[1]~326_combout\ : std_logic;
SIGNAL \inst1|inst16|ALT_INV_result[1]~325_combout\ : std_logic;
SIGNAL \inst1|inst16|ALT_INV_result[1]~324_combout\ : std_logic;
SIGNAL \inst1|inst16|ALT_INV_result[1]~323_combout\ : std_logic;
SIGNAL \inst1|inst16|ALT_INV_result[1]~322_combout\ : std_logic;
SIGNAL \inst1|inst16|ALT_INV_result[1]~321_combout\ : std_logic;
SIGNAL \inst1|inst16|ALT_INV_result[1]~320_combout\ : std_logic;
SIGNAL \inst1|inst16|ALT_INV_result[1]~319_combout\ : std_logic;
SIGNAL \inst1|inst16|ALT_INV_result[1]~318_combout\ : std_logic;
SIGNAL \inst1|inst16|ALT_INV_result[2]~317_combout\ : std_logic;
SIGNAL \inst1|inst16|ALT_INV_result[2]~316_combout\ : std_logic;
SIGNAL \inst1|inst16|ALT_INV_result[2]~315_combout\ : std_logic;
SIGNAL \inst1|inst16|ALT_INV_result[2]~314_combout\ : std_logic;
SIGNAL \inst1|inst16|ALT_INV_result[2]~313_combout\ : std_logic;
SIGNAL \inst1|inst16|ALT_INV_result[2]~312_combout\ : std_logic;
SIGNAL \inst1|inst16|ALT_INV_result[2]~311_combout\ : std_logic;
SIGNAL \inst1|inst16|ALT_INV_result[2]~310_combout\ : std_logic;
SIGNAL \inst1|inst16|ALT_INV_result[2]~309_combout\ : std_logic;
SIGNAL \inst1|inst16|ALT_INV_result[3]~308_combout\ : std_logic;
SIGNAL \inst1|inst16|ALT_INV_result[3]~307_combout\ : std_logic;
SIGNAL \inst1|inst16|ALT_INV_result[3]~306_combout\ : std_logic;
SIGNAL \inst1|inst16|ALT_INV_result[3]~305_combout\ : std_logic;
SIGNAL \inst1|inst16|ALT_INV_result[3]~304_combout\ : std_logic;
SIGNAL \inst1|inst16|ALT_INV_result[3]~303_combout\ : std_logic;
SIGNAL \inst1|inst16|ALT_INV_result[3]~302_combout\ : std_logic;
SIGNAL \inst1|inst16|ALT_INV_result[3]~301_combout\ : std_logic;
SIGNAL \inst1|inst16|ALT_INV_result[3]~300_combout\ : std_logic;
SIGNAL \inst1|inst16|ALT_INV_result[4]~299_combout\ : std_logic;
SIGNAL \inst1|inst16|ALT_INV_result[4]~298_combout\ : std_logic;
SIGNAL \inst1|inst16|ALT_INV_result[4]~297_combout\ : std_logic;
SIGNAL \inst1|inst16|ALT_INV_result[4]~296_combout\ : std_logic;
SIGNAL \inst1|inst16|ALT_INV_result[4]~295_combout\ : std_logic;
SIGNAL \inst1|inst16|ALT_INV_result[4]~294_combout\ : std_logic;
SIGNAL \inst1|inst16|ALT_INV_result[4]~293_combout\ : std_logic;
SIGNAL \inst1|inst16|ALT_INV_result[4]~292_combout\ : std_logic;
SIGNAL \inst1|inst16|ALT_INV_result[4]~291_combout\ : std_logic;
SIGNAL \inst1|inst16|ALT_INV_result[5]~290_combout\ : std_logic;
SIGNAL \inst1|inst16|ALT_INV_result[5]~289_combout\ : std_logic;
SIGNAL \inst1|inst16|ALT_INV_result[5]~288_combout\ : std_logic;
SIGNAL \inst1|inst16|ALT_INV_result[5]~287_combout\ : std_logic;
SIGNAL \inst1|inst16|ALT_INV_result[5]~286_combout\ : std_logic;
SIGNAL \inst1|inst16|ALT_INV_result[5]~285_combout\ : std_logic;
SIGNAL \inst1|inst16|ALT_INV_result[5]~284_combout\ : std_logic;
SIGNAL \inst1|inst16|ALT_INV_result[5]~283_combout\ : std_logic;
SIGNAL \inst1|inst16|ALT_INV_result[5]~282_combout\ : std_logic;
SIGNAL \inst1|inst16|ALT_INV_result[6]~281_combout\ : std_logic;
SIGNAL \inst1|inst16|ALT_INV_result[6]~280_combout\ : std_logic;
SIGNAL \inst1|inst16|ALT_INV_result[6]~279_combout\ : std_logic;
SIGNAL \inst1|inst16|ALT_INV_result[6]~278_combout\ : std_logic;
SIGNAL \inst1|inst16|ALT_INV_result[6]~277_combout\ : std_logic;
SIGNAL \inst1|inst16|ALT_INV_result[6]~276_combout\ : std_logic;
SIGNAL \inst1|inst16|ALT_INV_result[6]~275_combout\ : std_logic;
SIGNAL \inst1|inst16|ALT_INV_result[6]~274_combout\ : std_logic;
SIGNAL \inst1|inst16|ALT_INV_result[6]~273_combout\ : std_logic;
SIGNAL \inst1|inst16|ALT_INV_result[7]~272_combout\ : std_logic;
SIGNAL \inst1|inst16|ALT_INV_result[7]~271_combout\ : std_logic;
SIGNAL \inst1|inst16|ALT_INV__~23_combout\ : std_logic;
SIGNAL \inst1|inst16|ALT_INV__~22_combout\ : std_logic;
SIGNAL \inst1|inst16|ALT_INV__~21_combout\ : std_logic;
SIGNAL \inst1|inst16|ALT_INV__~20_combout\ : std_logic;
SIGNAL \inst1|inst16|ALT_INV__~19_combout\ : std_logic;
SIGNAL \inst1|inst16|ALT_INV_result[7]~270_combout\ : std_logic;
SIGNAL \inst1|inst16|ALT_INV__~18_combout\ : std_logic;
SIGNAL \inst1|inst16|ALT_INV__~17_combout\ : std_logic;
SIGNAL \inst1|inst16|ALT_INV_result[7]~269_combout\ : std_logic;
SIGNAL \inst1|inst16|ALT_INV__~16_combout\ : std_logic;
SIGNAL \inst1|inst16|ALT_INV__~15_combout\ : std_logic;
SIGNAL \inst1|inst16|ALT_INV__~14_combout\ : std_logic;
SIGNAL \inst1|inst16|ALT_INV_result[7]~268_combout\ : std_logic;
SIGNAL \inst1|inst16|ALT_INV__~13_combout\ : std_logic;
SIGNAL \inst1|inst16|ALT_INV__~12_combout\ : std_logic;
SIGNAL \inst1|inst16|ALT_INV__~11_combout\ : std_logic;
SIGNAL \inst1|inst16|ALT_INV_result[7]~267_combout\ : std_logic;
SIGNAL \inst1|inst16|ALT_INV__~10_combout\ : std_logic;
SIGNAL \inst1|inst16|ALT_INV__~9_combout\ : std_logic;
SIGNAL \inst1|inst16|ALT_INV__~8_combout\ : std_logic;
SIGNAL \inst1|inst16|ALT_INV_result[7]~266_combout\ : std_logic;
SIGNAL \inst1|inst16|ALT_INV__~7_combout\ : std_logic;
SIGNAL \inst1|inst16|ALT_INV_result[7]~265_combout\ : std_logic;
SIGNAL \inst1|inst16|ALT_INV__~6_combout\ : std_logic;
SIGNAL \inst1|inst16|ALT_INV__~5_combout\ : std_logic;
SIGNAL \inst1|inst16|ALT_INV__~4_combout\ : std_logic;
SIGNAL \inst1|inst16|ALT_INV_result[7]~264_combout\ : std_logic;
SIGNAL \inst1|inst16|ALT_INV__~3_combout\ : std_logic;
SIGNAL \inst1|inst16|ALT_INV__~2_combout\ : std_logic;
SIGNAL \inst1|inst16|ALT_INV__~1_combout\ : std_logic;
SIGNAL \inst1|inst16|ALT_INV__~0_combout\ : std_logic;
SIGNAL \inst1|inst252|ALT_INV_ROM~1_combout\ : std_logic;
SIGNAL \inst1|inst252|ALT_INV_ROM~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_NextAddUC\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_address\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst1|inst1|ALT_INV_Mux7~1_combout\ : std_logic;
SIGNAL \inst1|inst3|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \inst1|inst4|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \inst1|inst3|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \inst1|inst4|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \inst1|inst3|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \inst1|inst4|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \inst1|inst3|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \inst1|inst4|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \inst1|inst3|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \inst1|inst4|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \inst1|inst3|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \inst1|inst4|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \inst1|inst3|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \inst1|inst4|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \inst1|inst3|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \inst1|inst4|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \inst1|inst24|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \inst1|inst3|ALT_INV_Regist\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|inst4|ALT_INV_Regist\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|inst24|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \inst1|inst24|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \inst1|inst24|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \inst1|inst24|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \inst1|inst24|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \inst1|inst24|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \inst1|inst24|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \inst1|inst2|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \inst1|inst11|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \inst1|inst10|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \inst1|inst5|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \inst1|inst17|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \inst1|inst9|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \inst1|inst6|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \inst1|inst19|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \inst1|inst18|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \inst1|inst7|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \inst1|inst1|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \inst1|inst14|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \inst1|inst20|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \inst1|inst2|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \inst1|inst11|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \inst1|inst10|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \inst1|inst5|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \inst1|inst17|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \inst1|inst9|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \inst1|inst6|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \inst1|inst19|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \inst1|inst18|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \inst1|inst7|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \inst1|inst1|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \inst1|inst14|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \inst1|inst20|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \inst1|inst2|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \inst1|inst11|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \inst1|inst10|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \inst1|inst5|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \inst1|inst17|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \inst1|inst9|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \inst1|inst6|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \inst1|inst19|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \inst1|inst18|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \inst1|inst7|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \inst1|inst1|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \inst1|inst14|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \inst1|inst20|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \inst1|inst2|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \inst1|inst11|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \inst1|inst10|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \inst1|inst5|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \inst1|inst17|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \inst1|inst9|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \inst1|inst6|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \inst1|inst19|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \inst1|inst18|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \inst1|inst7|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \inst1|inst1|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \inst1|inst14|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \inst1|inst20|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \inst1|inst2|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \inst1|inst11|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \inst1|inst10|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \inst1|inst5|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \inst1|inst17|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \inst1|inst9|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \inst1|inst6|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \inst1|inst19|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \inst1|inst18|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \inst1|inst7|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \inst1|inst1|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \inst1|inst14|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \inst1|inst20|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \inst1|inst2|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \inst1|inst11|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \inst1|inst10|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \inst1|inst5|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \inst1|inst17|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \inst1|inst9|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \inst1|inst6|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \inst1|inst19|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \inst1|inst18|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \inst1|inst7|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \inst1|inst1|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \inst1|inst14|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \inst1|inst20|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \inst1|inst2|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \inst1|inst11|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \inst1|inst10|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \inst1|inst5|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \inst1|inst17|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \inst1|inst9|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \inst1|inst6|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \inst1|inst19|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \inst1|inst18|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \inst1|inst7|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \inst1|inst1|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \inst1|inst14|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \inst1|inst20|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \inst1|inst2|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \inst1|inst11|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \inst1|inst10|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \inst1|inst5|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \inst1|inst17|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \inst1|inst9|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \inst1|inst6|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \inst1|inst19|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \inst1|inst18|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \inst1|inst7|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \inst1|inst8|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \inst1|inst1|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \inst1|inst14|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \inst1|inst20|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \inst1|inst8|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \inst1|inst8|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \inst1|inst8|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \inst1|inst8|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \inst1|inst8|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \inst1|inst8|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \inst1|inst8|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \inst1|inst2|ALT_INV_Regist\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|inst11|ALT_INV_Regist\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|inst10|ALT_INV_Regist\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|inst5|ALT_INV_Regist\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|inst17|ALT_INV_Regist\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|inst9|ALT_INV_Regist\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|inst6|ALT_INV_Regist\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|inst|altsyncram_component|auto_generated|ALT_INV_q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|inst19|ALT_INV_Regist\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|inst18|ALT_INV_Regist\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|inst7|ALT_INV_Regist\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|inst1|ALT_INV_Regist\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|inst14|ALT_INV_Regist\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|inst20|ALT_INV_Regist\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|inst8|ALT_INV_Regist\ : std_logic_vector(7 DOWNTO 0);

BEGIN

MuxA <= ww_MuxA;
ww_Clk <= Clk;
ww_Rst <= Rst;
ww_Cache <= Cache;
ww_Flags <= Flags;
ww_MDR <= MDR;
MuxB <= ww_MuxB;
MuxC <= ww_MuxC;
MuxMAR <= ww_MuxMAR;
EnableDeco <= ww_EnableDeco;
WR_Ram <= ww_WR_Ram;
ALU <= ww_ALU;
cacheOut <= ww_cacheOut;
ww_MUX_A <= MUX_A;
ww_MUX_MAR <= MUX_MAR;
ww_MUX_B <= MUX_B;
ww_MUX_MDR <= MUX_MDR;
ww_EnDec <= EnDec;
ww_WR <= WR;
ww_AluSel <= AluSel;
ww_AIN <= AIN;
ww_BIN <= BIN;
ww_Destino7 <= Destino7;
ww_Destino6 <= Destino6;
ww_Destino5 <= Destino5;
ww_Destino4 <= Destino4;
ww_Destino3 <= Destino3;
ww_Destino2 <= Destino2;
ww_Destino1 <= Destino1;
ww_Destino0 <= Destino0;
ww_Fuente7 <= Fuente7;
ww_Fuente6 <= Fuente6;
ww_Fuente5 <= Fuente5;
ww_Fuente4 <= Fuente4;
ww_Fuente3 <= Fuente3;
ww_Fuente2 <= Fuente2;
ww_Fuente1 <= Fuente1;
ww_Fuente0 <= Fuente0;
ww_muxSel <= muxSel;
ww_SelBus <= SelBus;
ww_SelRegD <= SelRegD;
Destino27 <= ww_Destino27;
Destino26 <= ww_Destino26;
Destino25 <= ww_Destino25;
Destino24 <= ww_Destino24;
Destino23 <= ww_Destino23;
Destino22 <= ww_Destino22;
Destino21 <= ww_Destino21;
Destino20 <= ww_Destino20;
Fuente37 <= ww_Fuente37;
Fuente36 <= ww_Fuente36;
Fuente35 <= ww_Fuente35;
Fuente34 <= ww_Fuente34;
Fuente33 <= ww_Fuente33;
Fuente32 <= ww_Fuente32;
Fuente31 <= ww_Fuente31;
Fuente30 <= ww_Fuente30;
MBusMux <= ww_MBusMux;
Outd <= ww_Outd;
RegEn <= ww_RegEn;
RegVal <= ww_RegVal;
UMemOut <= ww_UMemOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst1|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \inst1|inst7|Regist\(7) & \inst1|inst7|Regist\(6) & \inst1|inst7|Regist\(5) & 
\inst1|inst7|Regist\(4) & \inst1|inst7|Regist\(3) & \inst1|inst7|Regist\(2) & \inst1|inst7|Regist\(1) & \inst1|inst7|Regist\(0));

\inst1|inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst1|inst1|Regist\(7) & \inst1|inst1|Regist\(6) & \inst1|inst1|Regist\(5) & \inst1|inst1|Regist\(4) & \inst1|inst1|Regist\(3) & \inst1|inst1|Regist\(2) & 
\inst1|inst1|Regist\(1) & \inst1|inst1|Regist\(0));

\inst1|inst|altsyncram_component|auto_generated|q_a\(0) <= \inst1|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst1|inst|altsyncram_component|auto_generated|q_a\(1) <= \inst1|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst1|inst|altsyncram_component|auto_generated|q_a\(2) <= \inst1|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst1|inst|altsyncram_component|auto_generated|q_a\(3) <= \inst1|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\inst1|inst|altsyncram_component|auto_generated|q_a\(4) <= \inst1|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\inst1|inst|altsyncram_component|auto_generated|q_a\(5) <= \inst1|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\inst1|inst|altsyncram_component|auto_generated|q_a\(6) <= \inst1|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\inst1|inst|altsyncram_component|auto_generated|q_a\(7) <= \inst1|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\ALT_INV_Rst~inputCLKENA0_outclk\ <= NOT \Rst~inputCLKENA0_outclk\;
\ALT_INV_AluSel[1]~input_o\ <= NOT \AluSel[1]~input_o\;
\ALT_INV_AluSel[3]~input_o\ <= NOT \AluSel[3]~input_o\;
\ALT_INV_AluSel[2]~input_o\ <= NOT \AluSel[2]~input_o\;
\ALT_INV_AluSel[0]~input_o\ <= NOT \AluSel[0]~input_o\;
\ALT_INV_BIN[0]~input_o\ <= NOT \BIN[0]~input_o\;
\ALT_INV_AIN[0]~input_o\ <= NOT \AIN[0]~input_o\;
\ALT_INV_BIN[1]~input_o\ <= NOT \BIN[1]~input_o\;
\ALT_INV_AIN[1]~input_o\ <= NOT \AIN[1]~input_o\;
\ALT_INV_BIN[2]~input_o\ <= NOT \BIN[2]~input_o\;
\ALT_INV_AIN[2]~input_o\ <= NOT \AIN[2]~input_o\;
\ALT_INV_BIN[3]~input_o\ <= NOT \BIN[3]~input_o\;
\ALT_INV_AIN[3]~input_o\ <= NOT \AIN[3]~input_o\;
\ALT_INV_BIN[4]~input_o\ <= NOT \BIN[4]~input_o\;
\ALT_INV_AIN[4]~input_o\ <= NOT \AIN[4]~input_o\;
\ALT_INV_BIN[5]~input_o\ <= NOT \BIN[5]~input_o\;
\ALT_INV_AIN[5]~input_o\ <= NOT \AIN[5]~input_o\;
\ALT_INV_BIN[6]~input_o\ <= NOT \BIN[6]~input_o\;
\ALT_INV_AIN[6]~input_o\ <= NOT \AIN[6]~input_o\;
\ALT_INV_BIN[7]~input_o\ <= NOT \BIN[7]~input_o\;
\ALT_INV_MUX_B~input_o\ <= NOT \MUX_B~input_o\;
\ALT_INV_AIN[7]~input_o\ <= NOT \AIN[7]~input_o\;
\ALT_INV_MUX_A~input_o\ <= NOT \MUX_A~input_o\;
\ALT_INV_MUX_MDR~input_o\ <= NOT \MUX_MDR~input_o\;
\ALT_INV_MUX_MAR~input_o\ <= NOT \MUX_MAR~input_o\;
\ALT_INV_EnDec~input_o\ <= NOT \EnDec~input_o\;
\ALT_INV_SelRegD[3]~input_o\ <= NOT \SelRegD[3]~input_o\;
\ALT_INV_SelRegD[0]~input_o\ <= NOT \SelRegD[0]~input_o\;
\ALT_INV_SelRegD[1]~input_o\ <= NOT \SelRegD[1]~input_o\;
\ALT_INV_SelRegD[2]~input_o\ <= NOT \SelRegD[2]~input_o\;
\ALT_INV_SelBus[2]~input_o\ <= NOT \SelBus[2]~input_o\;
\ALT_INV_SelBus[1]~input_o\ <= NOT \SelBus[1]~input_o\;
\ALT_INV_SelBus[0]~input_o\ <= NOT \SelBus[0]~input_o\;
\ALT_INV_SelBus[3]~input_o\ <= NOT \SelBus[3]~input_o\;
\ALT_INV_Fuente0~input_o\ <= NOT \Fuente0~input_o\;
\ALT_INV_Destino0~input_o\ <= NOT \Destino0~input_o\;
\ALT_INV_Fuente1~input_o\ <= NOT \Fuente1~input_o\;
\ALT_INV_Destino1~input_o\ <= NOT \Destino1~input_o\;
\ALT_INV_Fuente2~input_o\ <= NOT \Fuente2~input_o\;
\ALT_INV_Destino2~input_o\ <= NOT \Destino2~input_o\;
\ALT_INV_Fuente3~input_o\ <= NOT \Fuente3~input_o\;
\ALT_INV_Destino3~input_o\ <= NOT \Destino3~input_o\;
\ALT_INV_Fuente4~input_o\ <= NOT \Fuente4~input_o\;
\ALT_INV_Destino4~input_o\ <= NOT \Destino4~input_o\;
\ALT_INV_Fuente5~input_o\ <= NOT \Fuente5~input_o\;
\ALT_INV_Destino5~input_o\ <= NOT \Destino5~input_o\;
\ALT_INV_Fuente6~input_o\ <= NOT \Fuente6~input_o\;
\ALT_INV_Destino6~input_o\ <= NOT \Destino6~input_o\;
\ALT_INV_Fuente7~input_o\ <= NOT \Fuente7~input_o\;
\ALT_INV_Destino7~input_o\ <= NOT \Destino7~input_o\;
\ALT_INV_muxSel[0]~input_o\ <= NOT \muxSel[0]~input_o\;
\ALT_INV_muxSel[1]~input_o\ <= NOT \muxSel[1]~input_o\;
\ALT_INV_muxSel[4]~input_o\ <= NOT \muxSel[4]~input_o\;
\ALT_INV_muxSel[5]~input_o\ <= NOT \muxSel[5]~input_o\;
\ALT_INV_muxSel[2]~input_o\ <= NOT \muxSel[2]~input_o\;
\ALT_INV_muxSel[3]~input_o\ <= NOT \muxSel[3]~input_o\;
\inst1|inst24|ALT_INV_ALU_Result\(0) <= NOT \inst1|inst24|ALU_Result\(0);
\inst1|inst24|ALT_INV_ALU_Result\(1) <= NOT \inst1|inst24|ALU_Result\(1);
\inst1|inst24|ALT_INV_ALU_Result\(2) <= NOT \inst1|inst24|ALU_Result\(2);
\inst1|inst24|ALT_INV_ALU_Result\(3) <= NOT \inst1|inst24|ALU_Result\(3);
\inst1|inst24|ALT_INV_ALU_Result\(4) <= NOT \inst1|inst24|ALU_Result\(4);
\inst1|inst24|ALT_INV_ALU_Result\(5) <= NOT \inst1|inst24|ALU_Result\(5);
\inst1|inst24|ALT_INV_ALU_Result\(6) <= NOT \inst1|inst24|ALU_Result\(6);
\inst1|inst24|ALT_INV_ALU_Result\(7) <= NOT \inst1|inst24|ALU_Result\(7);
\inst1|inst3|ALT_INV_Mux7~0_combout\ <= NOT \inst1|inst3|Mux7~0_combout\;
\inst1|inst4|ALT_INV_Mux7~0_combout\ <= NOT \inst1|inst4|Mux7~0_combout\;
\inst1|inst3|ALT_INV_Mux6~1_combout\ <= NOT \inst1|inst3|Mux6~1_combout\;
\inst1|inst3|ALT_INV_Mux6~0_combout\ <= NOT \inst1|inst3|Mux6~0_combout\;
\inst1|inst4|ALT_INV_Mux6~1_combout\ <= NOT \inst1|inst4|Mux6~1_combout\;
\inst1|inst4|ALT_INV_Mux6~0_combout\ <= NOT \inst1|inst4|Mux6~0_combout\;
\inst1|inst3|ALT_INV_Mux5~1_combout\ <= NOT \inst1|inst3|Mux5~1_combout\;
\inst1|inst3|ALT_INV_Mux5~0_combout\ <= NOT \inst1|inst3|Mux5~0_combout\;
\inst1|inst4|ALT_INV_Mux5~1_combout\ <= NOT \inst1|inst4|Mux5~1_combout\;
\inst1|inst4|ALT_INV_Mux5~0_combout\ <= NOT \inst1|inst4|Mux5~0_combout\;
\inst1|inst3|ALT_INV_Mux4~1_combout\ <= NOT \inst1|inst3|Mux4~1_combout\;
\inst1|inst3|ALT_INV_Mux4~0_combout\ <= NOT \inst1|inst3|Mux4~0_combout\;
\inst1|inst4|ALT_INV_Mux4~1_combout\ <= NOT \inst1|inst4|Mux4~1_combout\;
\inst1|inst4|ALT_INV_Mux4~0_combout\ <= NOT \inst1|inst4|Mux4~0_combout\;
\inst1|inst3|ALT_INV_Mux3~1_combout\ <= NOT \inst1|inst3|Mux3~1_combout\;
\inst1|inst3|ALT_INV_Mux3~0_combout\ <= NOT \inst1|inst3|Mux3~0_combout\;
\inst1|inst4|ALT_INV_Mux3~1_combout\ <= NOT \inst1|inst4|Mux3~1_combout\;
\inst1|inst4|ALT_INV_Mux3~0_combout\ <= NOT \inst1|inst4|Mux3~0_combout\;
\inst1|inst3|ALT_INV_Mux2~1_combout\ <= NOT \inst1|inst3|Mux2~1_combout\;
\inst1|inst3|ALT_INV_Mux2~0_combout\ <= NOT \inst1|inst3|Mux2~0_combout\;
\inst1|inst4|ALT_INV_Mux2~1_combout\ <= NOT \inst1|inst4|Mux2~1_combout\;
\inst1|inst4|ALT_INV_Mux2~0_combout\ <= NOT \inst1|inst4|Mux2~0_combout\;
\inst1|inst3|ALT_INV_Mux1~1_combout\ <= NOT \inst1|inst3|Mux1~1_combout\;
\inst1|inst3|ALT_INV_Mux1~0_combout\ <= NOT \inst1|inst3|Mux1~0_combout\;
\inst1|inst4|ALT_INV_Mux1~1_combout\ <= NOT \inst1|inst4|Mux1~1_combout\;
\inst1|inst4|ALT_INV_Mux1~0_combout\ <= NOT \inst1|inst4|Mux1~0_combout\;
\inst1|inst3|ALT_INV_Mux0~0_combout\ <= NOT \inst1|inst3|Mux0~0_combout\;
\inst1|inst4|ALT_INV_Mux0~0_combout\ <= NOT \inst1|inst4|Mux0~0_combout\;
\inst1|inst13|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst1|inst13|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst1|inst24|ALT_INV_Mux9~0_combout\ <= NOT \inst1|inst24|Mux9~0_combout\;
\inst1|inst200|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\ <= NOT \inst1|inst200|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\;
\inst1|inst15|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\ <= NOT \inst1|inst15|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\;
\inst1|inst23|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\ <= NOT \inst1|inst23|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\;
\inst1|inst24|ALT_INV_Mux10~0_combout\ <= NOT \inst1|inst24|Mux10~0_combout\;
\inst1|inst200|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\ <= NOT \inst1|inst200|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\;
\inst1|inst15|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\ <= NOT \inst1|inst15|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\;
\inst1|inst23|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\ <= NOT \inst1|inst23|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\;
\inst1|inst24|ALT_INV_Mux11~0_combout\ <= NOT \inst1|inst24|Mux11~0_combout\;
\inst1|inst200|$00000|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\ <= NOT \inst1|inst200|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\;
\inst1|inst15|$00000|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\ <= NOT \inst1|inst15|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\;
\inst1|inst23|$00000|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\ <= NOT \inst1|inst23|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\;
\inst1|inst24|ALT_INV_Mux12~0_combout\ <= NOT \inst1|inst24|Mux12~0_combout\;
\inst1|inst200|$00000|auto_generated|ALT_INV_l1_w4_n0_mux_dataout~0_combout\ <= NOT \inst1|inst200|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\;
\inst1|inst15|$00000|auto_generated|ALT_INV_l1_w4_n0_mux_dataout~0_combout\ <= NOT \inst1|inst15|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\;
\inst1|inst23|$00000|auto_generated|ALT_INV_l1_w4_n0_mux_dataout~0_combout\ <= NOT \inst1|inst23|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\;
\inst1|inst24|ALT_INV_Mux13~1_combout\ <= NOT \inst1|inst24|Mux13~1_combout\;
\inst1|inst200|$00000|auto_generated|ALT_INV_l1_w5_n0_mux_dataout~0_combout\ <= NOT \inst1|inst200|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\;
\inst1|inst15|$00000|auto_generated|ALT_INV_l1_w5_n0_mux_dataout~0_combout\ <= NOT \inst1|inst15|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\;
\inst1|inst23|$00000|auto_generated|ALT_INV_l1_w5_n0_mux_dataout~0_combout\ <= NOT \inst1|inst23|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\;
\inst1|inst24|ALT_INV_Mux14~0_combout\ <= NOT \inst1|inst24|Mux14~0_combout\;
\inst1|inst200|$00000|auto_generated|ALT_INV_l1_w6_n0_mux_dataout~0_combout\ <= NOT \inst1|inst200|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\;
\inst1|inst15|$00000|auto_generated|ALT_INV_l1_w6_n0_mux_dataout~0_combout\ <= NOT \inst1|inst15|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\;
\inst1|inst23|$00000|auto_generated|ALT_INV_l1_w6_n0_mux_dataout~0_combout\ <= NOT \inst1|inst23|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\;
\inst1|inst24|ALT_INV_Mux15~0_combout\ <= NOT \inst1|inst24|Mux15~0_combout\;
\inst1|inst24|ALT_INV_Mux17~0_combout\ <= NOT \inst1|inst24|Mux17~0_combout\;
\inst1|inst24|ALT_INV_Mux16~0_combout\ <= NOT \inst1|inst24|Mux16~0_combout\;
\inst1|inst24|ALT_INV_Mux13~0_combout\ <= NOT \inst1|inst24|Mux13~0_combout\;
\inst1|inst2|ALT_INV_Mux7~0_combout\ <= NOT \inst1|inst2|Mux7~0_combout\;
\inst1|inst11|ALT_INV_Mux7~0_combout\ <= NOT \inst1|inst11|Mux7~0_combout\;
\inst1|inst10|ALT_INV_Mux7~0_combout\ <= NOT \inst1|inst10|Mux7~0_combout\;
\inst1|inst5|ALT_INV_Mux7~0_combout\ <= NOT \inst1|inst5|Mux7~0_combout\;
\inst1|inst200|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst1|inst200|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst1|inst17|ALT_INV_Mux7~0_combout\ <= NOT \inst1|inst17|Mux7~0_combout\;
\inst1|inst9|ALT_INV_Mux7~0_combout\ <= NOT \inst1|inst9|Mux7~0_combout\;
\inst1|inst6|ALT_INV_Mux7~0_combout\ <= NOT \inst1|inst6|Mux7~0_combout\;
\inst1|inst15|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst1|inst15|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst1|inst19|ALT_INV_Mux7~0_combout\ <= NOT \inst1|inst19|Mux7~0_combout\;
\inst1|inst18|ALT_INV_Mux7~0_combout\ <= NOT \inst1|inst18|Mux7~0_combout\;
\inst1|inst7|ALT_INV_Mux7~0_combout\ <= NOT \inst1|inst7|Mux7~0_combout\;
\inst1|inst23|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst1|inst23|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst1|inst14|ALT_INV_Mux7~0_combout\ <= NOT \inst1|inst14|Mux7~0_combout\;
\inst1|inst20|ALT_INV_Mux7~0_combout\ <= NOT \inst1|inst20|Mux7~0_combout\;
\inst1|inst2|ALT_INV_Mux6~1_combout\ <= NOT \inst1|inst2|Mux6~1_combout\;
\inst1|inst2|ALT_INV_Mux6~0_combout\ <= NOT \inst1|inst2|Mux6~0_combout\;
\inst1|inst11|ALT_INV_Mux6~1_combout\ <= NOT \inst1|inst11|Mux6~1_combout\;
\inst1|inst11|ALT_INV_Mux6~0_combout\ <= NOT \inst1|inst11|Mux6~0_combout\;
\inst1|inst10|ALT_INV_Mux6~1_combout\ <= NOT \inst1|inst10|Mux6~1_combout\;
\inst1|inst10|ALT_INV_Mux6~0_combout\ <= NOT \inst1|inst10|Mux6~0_combout\;
\inst1|inst5|ALT_INV_Mux6~1_combout\ <= NOT \inst1|inst5|Mux6~1_combout\;
\inst1|inst5|ALT_INV_Mux6~0_combout\ <= NOT \inst1|inst5|Mux6~0_combout\;
\inst1|inst17|ALT_INV_Mux6~1_combout\ <= NOT \inst1|inst17|Mux6~1_combout\;
\inst1|inst17|ALT_INV_Mux6~0_combout\ <= NOT \inst1|inst17|Mux6~0_combout\;
\inst1|inst9|ALT_INV_Mux6~1_combout\ <= NOT \inst1|inst9|Mux6~1_combout\;
\inst1|inst9|ALT_INV_Mux6~0_combout\ <= NOT \inst1|inst9|Mux6~0_combout\;
\inst1|inst6|ALT_INV_Mux6~1_combout\ <= NOT \inst1|inst6|Mux6~1_combout\;
\inst1|inst6|ALT_INV_Mux6~0_combout\ <= NOT \inst1|inst6|Mux6~0_combout\;
\inst1|inst19|ALT_INV_Mux6~1_combout\ <= NOT \inst1|inst19|Mux6~1_combout\;
\inst1|inst19|ALT_INV_Mux6~0_combout\ <= NOT \inst1|inst19|Mux6~0_combout\;
\inst1|inst18|ALT_INV_Mux6~1_combout\ <= NOT \inst1|inst18|Mux6~1_combout\;
\inst1|inst18|ALT_INV_Mux6~0_combout\ <= NOT \inst1|inst18|Mux6~0_combout\;
\inst1|inst7|ALT_INV_Mux6~1_combout\ <= NOT \inst1|inst7|Mux6~1_combout\;
\inst1|inst7|ALT_INV_Mux6~0_combout\ <= NOT \inst1|inst7|Mux6~0_combout\;
\inst1|inst1|ALT_INV_Mux6~0_combout\ <= NOT \inst1|inst1|Mux6~0_combout\;
\inst1|inst13|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\ <= NOT \inst1|inst13|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\;
\inst1|inst14|ALT_INV_Mux6~1_combout\ <= NOT \inst1|inst14|Mux6~1_combout\;
\inst1|inst14|ALT_INV_Mux6~0_combout\ <= NOT \inst1|inst14|Mux6~0_combout\;
\inst1|inst20|ALT_INV_Mux6~1_combout\ <= NOT \inst1|inst20|Mux6~1_combout\;
\inst1|inst20|ALT_INV_Mux6~0_combout\ <= NOT \inst1|inst20|Mux6~0_combout\;
\inst1|inst2|ALT_INV_Mux5~1_combout\ <= NOT \inst1|inst2|Mux5~1_combout\;
\inst1|inst2|ALT_INV_Mux5~0_combout\ <= NOT \inst1|inst2|Mux5~0_combout\;
\inst1|inst11|ALT_INV_Mux5~1_combout\ <= NOT \inst1|inst11|Mux5~1_combout\;
\inst1|inst11|ALT_INV_Mux5~0_combout\ <= NOT \inst1|inst11|Mux5~0_combout\;
\inst1|inst10|ALT_INV_Mux5~1_combout\ <= NOT \inst1|inst10|Mux5~1_combout\;
\inst1|inst10|ALT_INV_Mux5~0_combout\ <= NOT \inst1|inst10|Mux5~0_combout\;
\inst1|inst5|ALT_INV_Mux5~1_combout\ <= NOT \inst1|inst5|Mux5~1_combout\;
\inst1|inst5|ALT_INV_Mux5~0_combout\ <= NOT \inst1|inst5|Mux5~0_combout\;
\inst1|inst17|ALT_INV_Mux5~1_combout\ <= NOT \inst1|inst17|Mux5~1_combout\;
\inst1|inst17|ALT_INV_Mux5~0_combout\ <= NOT \inst1|inst17|Mux5~0_combout\;
\inst1|inst9|ALT_INV_Mux5~1_combout\ <= NOT \inst1|inst9|Mux5~1_combout\;
\inst1|inst9|ALT_INV_Mux5~0_combout\ <= NOT \inst1|inst9|Mux5~0_combout\;
\inst1|inst6|ALT_INV_Mux5~1_combout\ <= NOT \inst1|inst6|Mux5~1_combout\;
\inst1|inst6|ALT_INV_Mux5~0_combout\ <= NOT \inst1|inst6|Mux5~0_combout\;
\inst1|inst19|ALT_INV_Mux5~1_combout\ <= NOT \inst1|inst19|Mux5~1_combout\;
\inst1|inst19|ALT_INV_Mux5~0_combout\ <= NOT \inst1|inst19|Mux5~0_combout\;
\inst1|inst18|ALT_INV_Mux5~1_combout\ <= NOT \inst1|inst18|Mux5~1_combout\;
\inst1|inst18|ALT_INV_Mux5~0_combout\ <= NOT \inst1|inst18|Mux5~0_combout\;
\inst1|inst7|ALT_INV_Mux5~1_combout\ <= NOT \inst1|inst7|Mux5~1_combout\;
\inst1|inst7|ALT_INV_Mux5~0_combout\ <= NOT \inst1|inst7|Mux5~0_combout\;
\inst1|inst1|ALT_INV_Mux5~0_combout\ <= NOT \inst1|inst1|Mux5~0_combout\;
\inst1|inst13|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\ <= NOT \inst1|inst13|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\;
\inst1|inst14|ALT_INV_Mux5~1_combout\ <= NOT \inst1|inst14|Mux5~1_combout\;
\inst1|inst14|ALT_INV_Mux5~0_combout\ <= NOT \inst1|inst14|Mux5~0_combout\;
\inst1|inst20|ALT_INV_Mux5~1_combout\ <= NOT \inst1|inst20|Mux5~1_combout\;
\inst1|inst20|ALT_INV_Mux5~0_combout\ <= NOT \inst1|inst20|Mux5~0_combout\;
\inst1|inst2|ALT_INV_Mux4~1_combout\ <= NOT \inst1|inst2|Mux4~1_combout\;
\inst1|inst2|ALT_INV_Mux4~0_combout\ <= NOT \inst1|inst2|Mux4~0_combout\;
\inst1|inst11|ALT_INV_Mux4~1_combout\ <= NOT \inst1|inst11|Mux4~1_combout\;
\inst1|inst11|ALT_INV_Mux4~0_combout\ <= NOT \inst1|inst11|Mux4~0_combout\;
\inst1|inst10|ALT_INV_Mux4~1_combout\ <= NOT \inst1|inst10|Mux4~1_combout\;
\inst1|inst10|ALT_INV_Mux4~0_combout\ <= NOT \inst1|inst10|Mux4~0_combout\;
\inst1|inst5|ALT_INV_Mux4~1_combout\ <= NOT \inst1|inst5|Mux4~1_combout\;
\inst1|inst5|ALT_INV_Mux4~0_combout\ <= NOT \inst1|inst5|Mux4~0_combout\;
\inst1|inst17|ALT_INV_Mux4~1_combout\ <= NOT \inst1|inst17|Mux4~1_combout\;
\inst1|inst17|ALT_INV_Mux4~0_combout\ <= NOT \inst1|inst17|Mux4~0_combout\;
\inst1|inst9|ALT_INV_Mux4~1_combout\ <= NOT \inst1|inst9|Mux4~1_combout\;
\inst1|inst9|ALT_INV_Mux4~0_combout\ <= NOT \inst1|inst9|Mux4~0_combout\;
\inst1|inst6|ALT_INV_Mux4~1_combout\ <= NOT \inst1|inst6|Mux4~1_combout\;
\inst1|inst6|ALT_INV_Mux4~0_combout\ <= NOT \inst1|inst6|Mux4~0_combout\;
\inst1|inst19|ALT_INV_Mux4~1_combout\ <= NOT \inst1|inst19|Mux4~1_combout\;
\inst1|inst19|ALT_INV_Mux4~0_combout\ <= NOT \inst1|inst19|Mux4~0_combout\;
\inst1|inst18|ALT_INV_Mux4~1_combout\ <= NOT \inst1|inst18|Mux4~1_combout\;
\inst1|inst18|ALT_INV_Mux4~0_combout\ <= NOT \inst1|inst18|Mux4~0_combout\;
\inst1|inst7|ALT_INV_Mux4~1_combout\ <= NOT \inst1|inst7|Mux4~1_combout\;
\inst1|inst7|ALT_INV_Mux4~0_combout\ <= NOT \inst1|inst7|Mux4~0_combout\;
\inst1|inst1|ALT_INV_Mux4~0_combout\ <= NOT \inst1|inst1|Mux4~0_combout\;
\inst1|inst13|$00000|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\ <= NOT \inst1|inst13|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\;
\inst1|inst14|ALT_INV_Mux4~1_combout\ <= NOT \inst1|inst14|Mux4~1_combout\;
\inst1|inst14|ALT_INV_Mux4~0_combout\ <= NOT \inst1|inst14|Mux4~0_combout\;
\inst1|inst20|ALT_INV_Mux4~1_combout\ <= NOT \inst1|inst20|Mux4~1_combout\;
\inst1|inst20|ALT_INV_Mux4~0_combout\ <= NOT \inst1|inst20|Mux4~0_combout\;
\inst1|inst2|ALT_INV_Mux3~1_combout\ <= NOT \inst1|inst2|Mux3~1_combout\;
\inst1|inst2|ALT_INV_Mux3~0_combout\ <= NOT \inst1|inst2|Mux3~0_combout\;
\inst1|inst11|ALT_INV_Mux3~1_combout\ <= NOT \inst1|inst11|Mux3~1_combout\;
\inst1|inst11|ALT_INV_Mux3~0_combout\ <= NOT \inst1|inst11|Mux3~0_combout\;
\inst1|inst10|ALT_INV_Mux3~1_combout\ <= NOT \inst1|inst10|Mux3~1_combout\;
\inst1|inst10|ALT_INV_Mux3~0_combout\ <= NOT \inst1|inst10|Mux3~0_combout\;
\inst1|inst5|ALT_INV_Mux3~1_combout\ <= NOT \inst1|inst5|Mux3~1_combout\;
\inst1|inst5|ALT_INV_Mux3~0_combout\ <= NOT \inst1|inst5|Mux3~0_combout\;
\inst1|inst17|ALT_INV_Mux3~1_combout\ <= NOT \inst1|inst17|Mux3~1_combout\;
\inst1|inst17|ALT_INV_Mux3~0_combout\ <= NOT \inst1|inst17|Mux3~0_combout\;
\inst1|inst9|ALT_INV_Mux3~1_combout\ <= NOT \inst1|inst9|Mux3~1_combout\;
\inst1|inst9|ALT_INV_Mux3~0_combout\ <= NOT \inst1|inst9|Mux3~0_combout\;
\inst1|inst6|ALT_INV_Mux3~1_combout\ <= NOT \inst1|inst6|Mux3~1_combout\;
\inst1|inst6|ALT_INV_Mux3~0_combout\ <= NOT \inst1|inst6|Mux3~0_combout\;
\inst1|inst19|ALT_INV_Mux3~1_combout\ <= NOT \inst1|inst19|Mux3~1_combout\;
\inst1|inst19|ALT_INV_Mux3~0_combout\ <= NOT \inst1|inst19|Mux3~0_combout\;
\inst1|inst18|ALT_INV_Mux3~1_combout\ <= NOT \inst1|inst18|Mux3~1_combout\;
\inst1|inst18|ALT_INV_Mux3~0_combout\ <= NOT \inst1|inst18|Mux3~0_combout\;
\inst1|inst7|ALT_INV_Mux3~1_combout\ <= NOT \inst1|inst7|Mux3~1_combout\;
\inst1|inst7|ALT_INV_Mux3~0_combout\ <= NOT \inst1|inst7|Mux3~0_combout\;
\inst1|inst1|ALT_INV_Mux3~0_combout\ <= NOT \inst1|inst1|Mux3~0_combout\;
\inst1|inst13|$00000|auto_generated|ALT_INV_l1_w4_n0_mux_dataout~0_combout\ <= NOT \inst1|inst13|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\;
\inst1|inst14|ALT_INV_Mux3~1_combout\ <= NOT \inst1|inst14|Mux3~1_combout\;
\inst1|inst14|ALT_INV_Mux3~0_combout\ <= NOT \inst1|inst14|Mux3~0_combout\;
\inst1|inst20|ALT_INV_Mux3~1_combout\ <= NOT \inst1|inst20|Mux3~1_combout\;
\inst1|inst20|ALT_INV_Mux3~0_combout\ <= NOT \inst1|inst20|Mux3~0_combout\;
\inst1|inst2|ALT_INV_Mux2~1_combout\ <= NOT \inst1|inst2|Mux2~1_combout\;
\inst1|inst2|ALT_INV_Mux2~0_combout\ <= NOT \inst1|inst2|Mux2~0_combout\;
\inst1|inst11|ALT_INV_Mux2~1_combout\ <= NOT \inst1|inst11|Mux2~1_combout\;
\inst1|inst11|ALT_INV_Mux2~0_combout\ <= NOT \inst1|inst11|Mux2~0_combout\;
\inst1|inst10|ALT_INV_Mux2~1_combout\ <= NOT \inst1|inst10|Mux2~1_combout\;
\inst1|inst10|ALT_INV_Mux2~0_combout\ <= NOT \inst1|inst10|Mux2~0_combout\;
\inst1|inst5|ALT_INV_Mux2~1_combout\ <= NOT \inst1|inst5|Mux2~1_combout\;
\inst1|inst5|ALT_INV_Mux2~0_combout\ <= NOT \inst1|inst5|Mux2~0_combout\;
\inst1|inst17|ALT_INV_Mux2~1_combout\ <= NOT \inst1|inst17|Mux2~1_combout\;
\inst1|inst17|ALT_INV_Mux2~0_combout\ <= NOT \inst1|inst17|Mux2~0_combout\;
\inst1|inst9|ALT_INV_Mux2~1_combout\ <= NOT \inst1|inst9|Mux2~1_combout\;
\inst1|inst9|ALT_INV_Mux2~0_combout\ <= NOT \inst1|inst9|Mux2~0_combout\;
\inst1|inst6|ALT_INV_Mux2~1_combout\ <= NOT \inst1|inst6|Mux2~1_combout\;
\inst1|inst6|ALT_INV_Mux2~0_combout\ <= NOT \inst1|inst6|Mux2~0_combout\;
\inst1|inst19|ALT_INV_Mux2~1_combout\ <= NOT \inst1|inst19|Mux2~1_combout\;
\inst1|inst19|ALT_INV_Mux2~0_combout\ <= NOT \inst1|inst19|Mux2~0_combout\;
\inst1|inst18|ALT_INV_Mux2~1_combout\ <= NOT \inst1|inst18|Mux2~1_combout\;
\inst1|inst18|ALT_INV_Mux2~0_combout\ <= NOT \inst1|inst18|Mux2~0_combout\;
\inst1|inst7|ALT_INV_Mux2~1_combout\ <= NOT \inst1|inst7|Mux2~1_combout\;
\inst1|inst7|ALT_INV_Mux2~0_combout\ <= NOT \inst1|inst7|Mux2~0_combout\;
\inst1|inst1|ALT_INV_Mux2~0_combout\ <= NOT \inst1|inst1|Mux2~0_combout\;
\inst1|inst13|$00000|auto_generated|ALT_INV_l1_w5_n0_mux_dataout~0_combout\ <= NOT \inst1|inst13|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\;
\inst1|inst14|ALT_INV_Mux2~1_combout\ <= NOT \inst1|inst14|Mux2~1_combout\;
\inst1|inst14|ALT_INV_Mux2~0_combout\ <= NOT \inst1|inst14|Mux2~0_combout\;
\inst1|inst20|ALT_INV_Mux2~1_combout\ <= NOT \inst1|inst20|Mux2~1_combout\;
\inst1|inst20|ALT_INV_Mux2~0_combout\ <= NOT \inst1|inst20|Mux2~0_combout\;
\inst1|inst2|ALT_INV_Mux1~1_combout\ <= NOT \inst1|inst2|Mux1~1_combout\;
\inst1|inst2|ALT_INV_Mux1~0_combout\ <= NOT \inst1|inst2|Mux1~0_combout\;
\inst1|inst11|ALT_INV_Mux1~1_combout\ <= NOT \inst1|inst11|Mux1~1_combout\;
\inst1|inst11|ALT_INV_Mux1~0_combout\ <= NOT \inst1|inst11|Mux1~0_combout\;
\inst1|inst10|ALT_INV_Mux1~1_combout\ <= NOT \inst1|inst10|Mux1~1_combout\;
\inst1|inst10|ALT_INV_Mux1~0_combout\ <= NOT \inst1|inst10|Mux1~0_combout\;
\inst1|inst5|ALT_INV_Mux1~1_combout\ <= NOT \inst1|inst5|Mux1~1_combout\;
\inst1|inst5|ALT_INV_Mux1~0_combout\ <= NOT \inst1|inst5|Mux1~0_combout\;
\inst1|inst17|ALT_INV_Mux1~1_combout\ <= NOT \inst1|inst17|Mux1~1_combout\;
\inst1|inst17|ALT_INV_Mux1~0_combout\ <= NOT \inst1|inst17|Mux1~0_combout\;
\inst1|inst9|ALT_INV_Mux1~1_combout\ <= NOT \inst1|inst9|Mux1~1_combout\;
\inst1|inst9|ALT_INV_Mux1~0_combout\ <= NOT \inst1|inst9|Mux1~0_combout\;
\inst1|inst6|ALT_INV_Mux1~1_combout\ <= NOT \inst1|inst6|Mux1~1_combout\;
\inst1|inst6|ALT_INV_Mux1~0_combout\ <= NOT \inst1|inst6|Mux1~0_combout\;
\inst1|inst19|ALT_INV_Mux1~1_combout\ <= NOT \inst1|inst19|Mux1~1_combout\;
\inst1|inst19|ALT_INV_Mux1~0_combout\ <= NOT \inst1|inst19|Mux1~0_combout\;
\inst1|inst18|ALT_INV_Mux1~1_combout\ <= NOT \inst1|inst18|Mux1~1_combout\;
\inst1|inst18|ALT_INV_Mux1~0_combout\ <= NOT \inst1|inst18|Mux1~0_combout\;
\inst1|inst7|ALT_INV_Mux1~1_combout\ <= NOT \inst1|inst7|Mux1~1_combout\;
\inst1|inst7|ALT_INV_Mux1~0_combout\ <= NOT \inst1|inst7|Mux1~0_combout\;
\inst1|inst1|ALT_INV_Mux1~0_combout\ <= NOT \inst1|inst1|Mux1~0_combout\;
\inst1|inst13|$00000|auto_generated|ALT_INV_l1_w6_n0_mux_dataout~0_combout\ <= NOT \inst1|inst13|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\;
\inst1|inst14|ALT_INV_Mux1~1_combout\ <= NOT \inst1|inst14|Mux1~1_combout\;
\inst1|inst14|ALT_INV_Mux1~0_combout\ <= NOT \inst1|inst14|Mux1~0_combout\;
\inst1|inst20|ALT_INV_Mux1~1_combout\ <= NOT \inst1|inst20|Mux1~1_combout\;
\inst1|inst20|ALT_INV_Mux1~0_combout\ <= NOT \inst1|inst20|Mux1~0_combout\;
\inst1|inst2|ALT_INV_Mux0~0_combout\ <= NOT \inst1|inst2|Mux0~0_combout\;
\inst1|inst11|ALT_INV_Mux0~0_combout\ <= NOT \inst1|inst11|Mux0~0_combout\;
\inst1|inst10|ALT_INV_Mux0~0_combout\ <= NOT \inst1|inst10|Mux0~0_combout\;
\inst1|inst5|ALT_INV_Mux0~0_combout\ <= NOT \inst1|inst5|Mux0~0_combout\;
\inst1|inst200|$00000|auto_generated|ALT_INV_l1_w7_n0_mux_dataout~0_combout\ <= NOT \inst1|inst200|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\;
\inst1|inst17|ALT_INV_Mux0~0_combout\ <= NOT \inst1|inst17|Mux0~0_combout\;
\inst1|inst9|ALT_INV_Mux0~0_combout\ <= NOT \inst1|inst9|Mux0~0_combout\;
\inst1|inst6|ALT_INV_Mux0~0_combout\ <= NOT \inst1|inst6|Mux0~0_combout\;
\inst1|inst15|$00000|auto_generated|ALT_INV_l1_w7_n0_mux_dataout~0_combout\ <= NOT \inst1|inst15|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\;
\inst1|inst19|ALT_INV_Mux0~0_combout\ <= NOT \inst1|inst19|Mux0~0_combout\;
\inst1|inst18|ALT_INV_Mux0~0_combout\ <= NOT \inst1|inst18|Mux0~0_combout\;
\inst1|inst7|ALT_INV_Mux0~0_combout\ <= NOT \inst1|inst7|Mux0~0_combout\;
\inst1|inst23|$00000|auto_generated|ALT_INV_l1_w7_n0_mux_dataout~0_combout\ <= NOT \inst1|inst23|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\;
\inst1|inst8|ALT_INV_Mux0~0_combout\ <= NOT \inst1|inst8|Mux0~0_combout\;
\inst1|inst1|ALT_INV_Mux0~0_combout\ <= NOT \inst1|inst1|Mux0~0_combout\;
\inst1|inst13|$00000|auto_generated|ALT_INV_l1_w7_n0_mux_dataout~0_combout\ <= NOT \inst1|inst13|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\;
\inst1|inst8|ALT_INV_Regist[7]~10_combout\ <= NOT \inst1|inst8|Regist[7]~10_combout\;
\inst1|inst8|ALT_INV_Regist[0]~9_combout\ <= NOT \inst1|inst8|Regist[0]~9_combout\;
\inst1|inst6|ALT_INV_Regist[6]~0_combout\ <= NOT \inst1|inst6|Regist[6]~0_combout\;
\inst1|inst14|ALT_INV_Mux0~0_combout\ <= NOT \inst1|inst14|Mux0~0_combout\;
\inst1|inst20|ALT_INV_Mux0~0_combout\ <= NOT \inst1|inst20|Mux0~0_combout\;
\inst1|inst8|ALT_INV_Regist[7]~7_combout\ <= NOT \inst1|inst8|Regist[7]~7_combout\;
\inst1|inst8|ALT_INV_Mux4~1_combout\ <= NOT \inst1|inst8|Mux4~1_combout\;
\inst1|inst8|ALT_INV_Mux4~0_combout\ <= NOT \inst1|inst8|Mux4~0_combout\;
\inst1|inst8|ALT_INV_Mux5~1_combout\ <= NOT \inst1|inst8|Mux5~1_combout\;
\inst1|inst8|ALT_INV_Mux5~0_combout\ <= NOT \inst1|inst8|Mux5~0_combout\;
\inst1|inst8|ALT_INV_Mux6~1_combout\ <= NOT \inst1|inst8|Mux6~1_combout\;
\inst1|inst8|ALT_INV_Mux6~0_combout\ <= NOT \inst1|inst8|Mux6~0_combout\;
\inst1|inst8|ALT_INV_Mux3~2_combout\ <= NOT \inst1|inst8|Mux3~2_combout\;
\inst1|inst8|ALT_INV_Mux3~1_combout\ <= NOT \inst1|inst8|Mux3~1_combout\;
\inst1|inst8|ALT_INV_Mux7~0_combout\ <= NOT \inst1|inst8|Mux7~0_combout\;
\inst1|inst8|ALT_INV_Regist[0]~5_combout\ <= NOT \inst1|inst8|Regist[0]~5_combout\;
\inst1|inst8|ALT_INV_Regist[0]~4_combout\ <= NOT \inst1|inst8|Regist[0]~4_combout\;
\inst1|inst8|ALT_INV_Mux1~1_combout\ <= NOT \inst1|inst8|Mux1~1_combout\;
\inst1|inst8|ALT_INV_Mux1~0_combout\ <= NOT \inst1|inst8|Mux1~0_combout\;
\inst1|inst8|ALT_INV_Regist[4]~2_combout\ <= NOT \inst1|inst8|Regist[4]~2_combout\;
\inst1|inst8|ALT_INV_Mux2~1_combout\ <= NOT \inst1|inst8|Mux2~1_combout\;
\inst1|inst8|ALT_INV_Mux2~0_combout\ <= NOT \inst1|inst8|Mux2~0_combout\;
\inst1|inst8|ALT_INV_Regist[4]~0_combout\ <= NOT \inst1|inst8|Regist[4]~0_combout\;
\inst1|inst8|ALT_INV_Mux3~0_combout\ <= NOT \inst1|inst8|Mux3~0_combout\;
\inst1|inst16|ALT_INV_result\(0) <= NOT \inst1|inst16|result\(0);
\inst1|inst16|ALT_INV_result[0]~335_combout\ <= NOT \inst1|inst16|result[0]~335_combout\;
\inst1|inst16|ALT_INV_result[0]~334_combout\ <= NOT \inst1|inst16|result[0]~334_combout\;
\inst1|inst16|ALT_INV_result[0]~333_combout\ <= NOT \inst1|inst16|result[0]~333_combout\;
\inst1|inst16|ALT_INV_result[0]~332_combout\ <= NOT \inst1|inst16|result[0]~332_combout\;
\inst1|inst16|ALT_INV_result[0]~331_combout\ <= NOT \inst1|inst16|result[0]~331_combout\;
\inst1|inst16|ALT_INV_result[0]~330_combout\ <= NOT \inst1|inst16|result[0]~330_combout\;
\inst1|inst16|ALT_INV_result[0]~329_combout\ <= NOT \inst1|inst16|result[0]~329_combout\;
\inst1|inst16|ALT_INV_result[0]~328_combout\ <= NOT \inst1|inst16|result[0]~328_combout\;
\inst1|inst16|ALT_INV_result[0]~327_combout\ <= NOT \inst1|inst16|result[0]~327_combout\;
\inst1|inst16|ALT_INV_result\(1) <= NOT \inst1|inst16|result\(1);
\inst1|inst16|ALT_INV_result[1]~326_combout\ <= NOT \inst1|inst16|result[1]~326_combout\;
\inst1|inst16|ALT_INV_result[1]~325_combout\ <= NOT \inst1|inst16|result[1]~325_combout\;
\inst1|inst16|ALT_INV_result[1]~324_combout\ <= NOT \inst1|inst16|result[1]~324_combout\;
\inst1|inst16|ALT_INV_result[1]~323_combout\ <= NOT \inst1|inst16|result[1]~323_combout\;
\inst1|inst16|ALT_INV_result[1]~322_combout\ <= NOT \inst1|inst16|result[1]~322_combout\;
\inst1|inst16|ALT_INV_result[1]~321_combout\ <= NOT \inst1|inst16|result[1]~321_combout\;
\inst1|inst16|ALT_INV_result[1]~320_combout\ <= NOT \inst1|inst16|result[1]~320_combout\;
\inst1|inst16|ALT_INV_result[1]~319_combout\ <= NOT \inst1|inst16|result[1]~319_combout\;
\inst1|inst16|ALT_INV_result[1]~318_combout\ <= NOT \inst1|inst16|result[1]~318_combout\;
\inst1|inst16|ALT_INV_result\(2) <= NOT \inst1|inst16|result\(2);
\inst1|inst16|ALT_INV_result[2]~317_combout\ <= NOT \inst1|inst16|result[2]~317_combout\;
\inst1|inst16|ALT_INV_result[2]~316_combout\ <= NOT \inst1|inst16|result[2]~316_combout\;
\inst1|inst16|ALT_INV_result[2]~315_combout\ <= NOT \inst1|inst16|result[2]~315_combout\;
\inst1|inst16|ALT_INV_result[2]~314_combout\ <= NOT \inst1|inst16|result[2]~314_combout\;
\inst1|inst16|ALT_INV_result[2]~313_combout\ <= NOT \inst1|inst16|result[2]~313_combout\;
\inst1|inst16|ALT_INV_result[2]~312_combout\ <= NOT \inst1|inst16|result[2]~312_combout\;
\inst1|inst16|ALT_INV_result[2]~311_combout\ <= NOT \inst1|inst16|result[2]~311_combout\;
\inst1|inst16|ALT_INV_result[2]~310_combout\ <= NOT \inst1|inst16|result[2]~310_combout\;
\inst1|inst16|ALT_INV_result[2]~309_combout\ <= NOT \inst1|inst16|result[2]~309_combout\;
\inst1|inst16|ALT_INV_result\(3) <= NOT \inst1|inst16|result\(3);
\inst1|inst16|ALT_INV_result[3]~308_combout\ <= NOT \inst1|inst16|result[3]~308_combout\;
\inst1|inst16|ALT_INV_result[3]~307_combout\ <= NOT \inst1|inst16|result[3]~307_combout\;
\inst1|inst16|ALT_INV_result[3]~306_combout\ <= NOT \inst1|inst16|result[3]~306_combout\;
\inst1|inst16|ALT_INV_result[3]~305_combout\ <= NOT \inst1|inst16|result[3]~305_combout\;
\inst1|inst16|ALT_INV_result[3]~304_combout\ <= NOT \inst1|inst16|result[3]~304_combout\;
\inst1|inst16|ALT_INV_result[3]~303_combout\ <= NOT \inst1|inst16|result[3]~303_combout\;
\inst1|inst16|ALT_INV_result[3]~302_combout\ <= NOT \inst1|inst16|result[3]~302_combout\;
\inst1|inst16|ALT_INV_result[3]~301_combout\ <= NOT \inst1|inst16|result[3]~301_combout\;
\inst1|inst16|ALT_INV_result[3]~300_combout\ <= NOT \inst1|inst16|result[3]~300_combout\;
\inst1|inst16|ALT_INV_result\(4) <= NOT \inst1|inst16|result\(4);
\inst1|inst16|ALT_INV_result[4]~299_combout\ <= NOT \inst1|inst16|result[4]~299_combout\;
\inst1|inst16|ALT_INV_result[4]~298_combout\ <= NOT \inst1|inst16|result[4]~298_combout\;
\inst1|inst16|ALT_INV_result[4]~297_combout\ <= NOT \inst1|inst16|result[4]~297_combout\;
\inst1|inst16|ALT_INV_result[4]~296_combout\ <= NOT \inst1|inst16|result[4]~296_combout\;
\inst1|inst16|ALT_INV_result[4]~295_combout\ <= NOT \inst1|inst16|result[4]~295_combout\;
\inst1|inst16|ALT_INV_result[4]~294_combout\ <= NOT \inst1|inst16|result[4]~294_combout\;
\inst1|inst16|ALT_INV_result[4]~293_combout\ <= NOT \inst1|inst16|result[4]~293_combout\;
\inst1|inst16|ALT_INV_result[4]~292_combout\ <= NOT \inst1|inst16|result[4]~292_combout\;
\inst1|inst16|ALT_INV_result[4]~291_combout\ <= NOT \inst1|inst16|result[4]~291_combout\;
\inst1|inst16|ALT_INV_result\(5) <= NOT \inst1|inst16|result\(5);
\inst1|inst16|ALT_INV_result[5]~290_combout\ <= NOT \inst1|inst16|result[5]~290_combout\;
\inst1|inst16|ALT_INV_result[5]~289_combout\ <= NOT \inst1|inst16|result[5]~289_combout\;
\inst1|inst16|ALT_INV_result[5]~288_combout\ <= NOT \inst1|inst16|result[5]~288_combout\;
\inst1|inst16|ALT_INV_result[5]~287_combout\ <= NOT \inst1|inst16|result[5]~287_combout\;
\inst1|inst16|ALT_INV_result[5]~286_combout\ <= NOT \inst1|inst16|result[5]~286_combout\;
\inst1|inst16|ALT_INV_result[5]~285_combout\ <= NOT \inst1|inst16|result[5]~285_combout\;
\inst1|inst16|ALT_INV_result[5]~284_combout\ <= NOT \inst1|inst16|result[5]~284_combout\;
\inst1|inst16|ALT_INV_result[5]~283_combout\ <= NOT \inst1|inst16|result[5]~283_combout\;
\inst1|inst16|ALT_INV_result[5]~282_combout\ <= NOT \inst1|inst16|result[5]~282_combout\;
\inst1|inst16|ALT_INV_result\(6) <= NOT \inst1|inst16|result\(6);
\inst1|inst16|ALT_INV_result[6]~281_combout\ <= NOT \inst1|inst16|result[6]~281_combout\;
\inst1|inst16|ALT_INV_result[6]~280_combout\ <= NOT \inst1|inst16|result[6]~280_combout\;
\inst1|inst16|ALT_INV_result[6]~279_combout\ <= NOT \inst1|inst16|result[6]~279_combout\;
\inst1|inst16|ALT_INV_result[6]~278_combout\ <= NOT \inst1|inst16|result[6]~278_combout\;
\inst1|inst16|ALT_INV_result[6]~277_combout\ <= NOT \inst1|inst16|result[6]~277_combout\;
\inst1|inst16|ALT_INV_result[6]~276_combout\ <= NOT \inst1|inst16|result[6]~276_combout\;
\inst1|inst16|ALT_INV_result[6]~275_combout\ <= NOT \inst1|inst16|result[6]~275_combout\;
\inst1|inst16|ALT_INV_result[6]~274_combout\ <= NOT \inst1|inst16|result[6]~274_combout\;
\inst1|inst16|ALT_INV_result[6]~273_combout\ <= NOT \inst1|inst16|result[6]~273_combout\;
\inst1|inst16|ALT_INV_result\(7) <= NOT \inst1|inst16|result\(7);
\inst1|inst16|ALT_INV_result[7]~272_combout\ <= NOT \inst1|inst16|result[7]~272_combout\;
\inst1|inst16|ALT_INV_result[7]~271_combout\ <= NOT \inst1|inst16|result[7]~271_combout\;
\inst1|inst16|ALT_INV__~23_combout\ <= NOT \inst1|inst16|_~23_combout\;
\inst1|inst16|ALT_INV__~22_combout\ <= NOT \inst1|inst16|_~22_combout\;
\inst1|inst16|ALT_INV__~21_combout\ <= NOT \inst1|inst16|_~21_combout\;
\inst1|inst16|ALT_INV__~20_combout\ <= NOT \inst1|inst16|_~20_combout\;
\inst1|inst16|ALT_INV__~19_combout\ <= NOT \inst1|inst16|_~19_combout\;
\inst1|inst16|ALT_INV_result[7]~270_combout\ <= NOT \inst1|inst16|result[7]~270_combout\;
\inst1|inst16|ALT_INV__~18_combout\ <= NOT \inst1|inst16|_~18_combout\;
\inst1|inst16|ALT_INV__~17_combout\ <= NOT \inst1|inst16|_~17_combout\;
\inst1|inst16|ALT_INV_result[7]~269_combout\ <= NOT \inst1|inst16|result[7]~269_combout\;
\inst1|inst16|ALT_INV__~16_combout\ <= NOT \inst1|inst16|_~16_combout\;
\inst1|inst16|ALT_INV__~15_combout\ <= NOT \inst1|inst16|_~15_combout\;
\inst1|inst16|ALT_INV__~14_combout\ <= NOT \inst1|inst16|_~14_combout\;
\inst1|inst16|ALT_INV_result[7]~268_combout\ <= NOT \inst1|inst16|result[7]~268_combout\;
\inst1|inst16|ALT_INV__~13_combout\ <= NOT \inst1|inst16|_~13_combout\;
\inst1|inst16|ALT_INV__~12_combout\ <= NOT \inst1|inst16|_~12_combout\;
\inst1|inst16|ALT_INV__~11_combout\ <= NOT \inst1|inst16|_~11_combout\;
\inst1|inst16|ALT_INV_result[7]~267_combout\ <= NOT \inst1|inst16|result[7]~267_combout\;
\inst1|inst16|ALT_INV__~10_combout\ <= NOT \inst1|inst16|_~10_combout\;
\inst1|inst16|ALT_INV__~9_combout\ <= NOT \inst1|inst16|_~9_combout\;
\inst1|inst16|ALT_INV__~8_combout\ <= NOT \inst1|inst16|_~8_combout\;
\inst1|inst16|ALT_INV_result[7]~266_combout\ <= NOT \inst1|inst16|result[7]~266_combout\;
\inst1|inst16|ALT_INV__~7_combout\ <= NOT \inst1|inst16|_~7_combout\;
\inst1|inst16|ALT_INV_result[7]~265_combout\ <= NOT \inst1|inst16|result[7]~265_combout\;
\inst1|inst16|ALT_INV__~6_combout\ <= NOT \inst1|inst16|_~6_combout\;
\inst1|inst16|ALT_INV__~5_combout\ <= NOT \inst1|inst16|_~5_combout\;
\inst1|inst16|ALT_INV__~4_combout\ <= NOT \inst1|inst16|_~4_combout\;
\inst1|inst16|ALT_INV_result[7]~264_combout\ <= NOT \inst1|inst16|result[7]~264_combout\;
\inst1|inst16|ALT_INV__~3_combout\ <= NOT \inst1|inst16|_~3_combout\;
\inst1|inst16|ALT_INV__~2_combout\ <= NOT \inst1|inst16|_~2_combout\;
\inst1|inst16|ALT_INV__~1_combout\ <= NOT \inst1|inst16|_~1_combout\;
\inst1|inst16|ALT_INV__~0_combout\ <= NOT \inst1|inst16|_~0_combout\;
\inst1|inst252|ALT_INV_ROM~1_combout\ <= NOT \inst1|inst252|ROM~1_combout\;
\inst1|inst252|ALT_INV_ROM~0_combout\ <= NOT \inst1|inst252|ROM~0_combout\;
\inst|ALT_INV_NextAddUC\(0) <= NOT \inst|NextAddUC\(0);
\inst|ALT_INV_Equal0~0_combout\ <= NOT \inst|Equal0~0_combout\;
\inst|ALT_INV_Equal1~0_combout\ <= NOT \inst|Equal1~0_combout\;
\inst|ALT_INV_address\(1) <= NOT \inst|address\(1);
\inst|ALT_INV_address\(0) <= NOT \inst|address\(0);
\inst1|inst1|ALT_INV_Mux7~1_combout\ <= NOT \inst1|inst1|Mux7~1_combout\;
\inst1|inst3|ALT_INV_Add0~29_sumout\ <= NOT \inst1|inst3|Add0~29_sumout\;
\inst1|inst4|ALT_INV_Add0~29_sumout\ <= NOT \inst1|inst4|Add0~29_sumout\;
\inst1|inst3|ALT_INV_Add0~25_sumout\ <= NOT \inst1|inst3|Add0~25_sumout\;
\inst1|inst4|ALT_INV_Add0~25_sumout\ <= NOT \inst1|inst4|Add0~25_sumout\;
\inst1|inst3|ALT_INV_Add0~21_sumout\ <= NOT \inst1|inst3|Add0~21_sumout\;
\inst1|inst4|ALT_INV_Add0~21_sumout\ <= NOT \inst1|inst4|Add0~21_sumout\;
\inst1|inst3|ALT_INV_Add0~17_sumout\ <= NOT \inst1|inst3|Add0~17_sumout\;
\inst1|inst4|ALT_INV_Add0~17_sumout\ <= NOT \inst1|inst4|Add0~17_sumout\;
\inst1|inst3|ALT_INV_Add0~13_sumout\ <= NOT \inst1|inst3|Add0~13_sumout\;
\inst1|inst4|ALT_INV_Add0~13_sumout\ <= NOT \inst1|inst4|Add0~13_sumout\;
\inst1|inst3|ALT_INV_Add0~9_sumout\ <= NOT \inst1|inst3|Add0~9_sumout\;
\inst1|inst4|ALT_INV_Add0~9_sumout\ <= NOT \inst1|inst4|Add0~9_sumout\;
\inst1|inst3|ALT_INV_Add0~5_sumout\ <= NOT \inst1|inst3|Add0~5_sumout\;
\inst1|inst4|ALT_INV_Add0~5_sumout\ <= NOT \inst1|inst4|Add0~5_sumout\;
\inst1|inst3|ALT_INV_Add0~1_sumout\ <= NOT \inst1|inst3|Add0~1_sumout\;
\inst1|inst4|ALT_INV_Add0~1_sumout\ <= NOT \inst1|inst4|Add0~1_sumout\;
\inst1|inst24|ALT_INV_Add0~29_sumout\ <= NOT \inst1|inst24|Add0~29_sumout\;
\inst1|inst3|ALT_INV_Regist\(0) <= NOT \inst1|inst3|Regist\(0);
\inst1|inst4|ALT_INV_Regist\(0) <= NOT \inst1|inst4|Regist\(0);
\inst1|inst24|ALT_INV_Add0~25_sumout\ <= NOT \inst1|inst24|Add0~25_sumout\;
\inst1|inst3|ALT_INV_Regist\(1) <= NOT \inst1|inst3|Regist\(1);
\inst1|inst4|ALT_INV_Regist\(1) <= NOT \inst1|inst4|Regist\(1);
\inst1|inst24|ALT_INV_Add0~21_sumout\ <= NOT \inst1|inst24|Add0~21_sumout\;
\inst1|inst3|ALT_INV_Regist\(2) <= NOT \inst1|inst3|Regist\(2);
\inst1|inst4|ALT_INV_Regist\(2) <= NOT \inst1|inst4|Regist\(2);
\inst1|inst24|ALT_INV_Add0~17_sumout\ <= NOT \inst1|inst24|Add0~17_sumout\;
\inst1|inst3|ALT_INV_Regist\(3) <= NOT \inst1|inst3|Regist\(3);
\inst1|inst4|ALT_INV_Regist\(3) <= NOT \inst1|inst4|Regist\(3);
\inst1|inst24|ALT_INV_Add0~13_sumout\ <= NOT \inst1|inst24|Add0~13_sumout\;
\inst1|inst3|ALT_INV_Regist\(4) <= NOT \inst1|inst3|Regist\(4);
\inst1|inst4|ALT_INV_Regist\(4) <= NOT \inst1|inst4|Regist\(4);
\inst1|inst24|ALT_INV_Add0~9_sumout\ <= NOT \inst1|inst24|Add0~9_sumout\;
\inst1|inst3|ALT_INV_Regist\(5) <= NOT \inst1|inst3|Regist\(5);
\inst1|inst4|ALT_INV_Regist\(5) <= NOT \inst1|inst4|Regist\(5);
\inst1|inst24|ALT_INV_Add0~5_sumout\ <= NOT \inst1|inst24|Add0~5_sumout\;
\inst1|inst3|ALT_INV_Regist\(6) <= NOT \inst1|inst3|Regist\(6);
\inst1|inst4|ALT_INV_Regist\(6) <= NOT \inst1|inst4|Regist\(6);
\inst1|inst24|ALT_INV_Add0~1_sumout\ <= NOT \inst1|inst24|Add0~1_sumout\;
\inst1|inst3|ALT_INV_Regist\(7) <= NOT \inst1|inst3|Regist\(7);
\inst1|inst4|ALT_INV_Regist\(7) <= NOT \inst1|inst4|Regist\(7);
\inst1|inst2|ALT_INV_Add0~29_sumout\ <= NOT \inst1|inst2|Add0~29_sumout\;
\inst1|inst11|ALT_INV_Add0~29_sumout\ <= NOT \inst1|inst11|Add0~29_sumout\;
\inst1|inst10|ALT_INV_Add0~29_sumout\ <= NOT \inst1|inst10|Add0~29_sumout\;
\inst1|inst5|ALT_INV_Add0~29_sumout\ <= NOT \inst1|inst5|Add0~29_sumout\;
\inst1|inst17|ALT_INV_Add0~29_sumout\ <= NOT \inst1|inst17|Add0~29_sumout\;
\inst1|inst9|ALT_INV_Add0~29_sumout\ <= NOT \inst1|inst9|Add0~29_sumout\;
\inst1|inst6|ALT_INV_Add0~29_sumout\ <= NOT \inst1|inst6|Add0~29_sumout\;
\inst1|inst19|ALT_INV_Add0~29_sumout\ <= NOT \inst1|inst19|Add0~29_sumout\;
\inst1|inst18|ALT_INV_Add0~29_sumout\ <= NOT \inst1|inst18|Add0~29_sumout\;
\inst1|inst7|ALT_INV_Add0~29_sumout\ <= NOT \inst1|inst7|Add0~29_sumout\;
\inst1|inst1|ALT_INV_Add0~29_sumout\ <= NOT \inst1|inst1|Add0~29_sumout\;
\inst1|inst14|ALT_INV_Add0~29_sumout\ <= NOT \inst1|inst14|Add0~29_sumout\;
\inst1|inst20|ALT_INV_Add0~29_sumout\ <= NOT \inst1|inst20|Add0~29_sumout\;
\inst1|inst2|ALT_INV_Add0~25_sumout\ <= NOT \inst1|inst2|Add0~25_sumout\;
\inst1|inst11|ALT_INV_Add0~25_sumout\ <= NOT \inst1|inst11|Add0~25_sumout\;
\inst1|inst10|ALT_INV_Add0~25_sumout\ <= NOT \inst1|inst10|Add0~25_sumout\;
\inst1|inst5|ALT_INV_Add0~25_sumout\ <= NOT \inst1|inst5|Add0~25_sumout\;
\inst1|inst17|ALT_INV_Add0~25_sumout\ <= NOT \inst1|inst17|Add0~25_sumout\;
\inst1|inst9|ALT_INV_Add0~25_sumout\ <= NOT \inst1|inst9|Add0~25_sumout\;
\inst1|inst6|ALT_INV_Add0~25_sumout\ <= NOT \inst1|inst6|Add0~25_sumout\;
\inst1|inst19|ALT_INV_Add0~25_sumout\ <= NOT \inst1|inst19|Add0~25_sumout\;
\inst1|inst18|ALT_INV_Add0~25_sumout\ <= NOT \inst1|inst18|Add0~25_sumout\;
\inst1|inst7|ALT_INV_Add0~25_sumout\ <= NOT \inst1|inst7|Add0~25_sumout\;
\inst1|inst1|ALT_INV_Add0~25_sumout\ <= NOT \inst1|inst1|Add0~25_sumout\;
\inst1|inst14|ALT_INV_Add0~25_sumout\ <= NOT \inst1|inst14|Add0~25_sumout\;
\inst1|inst20|ALT_INV_Add0~25_sumout\ <= NOT \inst1|inst20|Add0~25_sumout\;
\inst1|inst2|ALT_INV_Add0~21_sumout\ <= NOT \inst1|inst2|Add0~21_sumout\;
\inst1|inst11|ALT_INV_Add0~21_sumout\ <= NOT \inst1|inst11|Add0~21_sumout\;
\inst1|inst10|ALT_INV_Add0~21_sumout\ <= NOT \inst1|inst10|Add0~21_sumout\;
\inst1|inst5|ALT_INV_Add0~21_sumout\ <= NOT \inst1|inst5|Add0~21_sumout\;
\inst1|inst17|ALT_INV_Add0~21_sumout\ <= NOT \inst1|inst17|Add0~21_sumout\;
\inst1|inst9|ALT_INV_Add0~21_sumout\ <= NOT \inst1|inst9|Add0~21_sumout\;
\inst1|inst6|ALT_INV_Add0~21_sumout\ <= NOT \inst1|inst6|Add0~21_sumout\;
\inst1|inst19|ALT_INV_Add0~21_sumout\ <= NOT \inst1|inst19|Add0~21_sumout\;
\inst1|inst18|ALT_INV_Add0~21_sumout\ <= NOT \inst1|inst18|Add0~21_sumout\;
\inst1|inst7|ALT_INV_Add0~21_sumout\ <= NOT \inst1|inst7|Add0~21_sumout\;
\inst1|inst1|ALT_INV_Add0~21_sumout\ <= NOT \inst1|inst1|Add0~21_sumout\;
\inst1|inst14|ALT_INV_Add0~21_sumout\ <= NOT \inst1|inst14|Add0~21_sumout\;
\inst1|inst20|ALT_INV_Add0~21_sumout\ <= NOT \inst1|inst20|Add0~21_sumout\;
\inst1|inst2|ALT_INV_Add0~17_sumout\ <= NOT \inst1|inst2|Add0~17_sumout\;
\inst1|inst11|ALT_INV_Add0~17_sumout\ <= NOT \inst1|inst11|Add0~17_sumout\;
\inst1|inst10|ALT_INV_Add0~17_sumout\ <= NOT \inst1|inst10|Add0~17_sumout\;
\inst1|inst5|ALT_INV_Add0~17_sumout\ <= NOT \inst1|inst5|Add0~17_sumout\;
\inst1|inst17|ALT_INV_Add0~17_sumout\ <= NOT \inst1|inst17|Add0~17_sumout\;
\inst1|inst9|ALT_INV_Add0~17_sumout\ <= NOT \inst1|inst9|Add0~17_sumout\;
\inst1|inst6|ALT_INV_Add0~17_sumout\ <= NOT \inst1|inst6|Add0~17_sumout\;
\inst1|inst19|ALT_INV_Add0~17_sumout\ <= NOT \inst1|inst19|Add0~17_sumout\;
\inst1|inst18|ALT_INV_Add0~17_sumout\ <= NOT \inst1|inst18|Add0~17_sumout\;
\inst1|inst7|ALT_INV_Add0~17_sumout\ <= NOT \inst1|inst7|Add0~17_sumout\;
\inst1|inst1|ALT_INV_Add0~17_sumout\ <= NOT \inst1|inst1|Add0~17_sumout\;
\inst1|inst14|ALT_INV_Add0~17_sumout\ <= NOT \inst1|inst14|Add0~17_sumout\;
\inst1|inst20|ALT_INV_Add0~17_sumout\ <= NOT \inst1|inst20|Add0~17_sumout\;
\inst1|inst2|ALT_INV_Add0~13_sumout\ <= NOT \inst1|inst2|Add0~13_sumout\;
\inst1|inst11|ALT_INV_Add0~13_sumout\ <= NOT \inst1|inst11|Add0~13_sumout\;
\inst1|inst10|ALT_INV_Add0~13_sumout\ <= NOT \inst1|inst10|Add0~13_sumout\;
\inst1|inst5|ALT_INV_Add0~13_sumout\ <= NOT \inst1|inst5|Add0~13_sumout\;
\inst1|inst17|ALT_INV_Add0~13_sumout\ <= NOT \inst1|inst17|Add0~13_sumout\;
\inst1|inst9|ALT_INV_Add0~13_sumout\ <= NOT \inst1|inst9|Add0~13_sumout\;
\inst1|inst6|ALT_INV_Add0~13_sumout\ <= NOT \inst1|inst6|Add0~13_sumout\;
\inst1|inst19|ALT_INV_Add0~13_sumout\ <= NOT \inst1|inst19|Add0~13_sumout\;
\inst1|inst18|ALT_INV_Add0~13_sumout\ <= NOT \inst1|inst18|Add0~13_sumout\;
\inst1|inst7|ALT_INV_Add0~13_sumout\ <= NOT \inst1|inst7|Add0~13_sumout\;
\inst1|inst1|ALT_INV_Add0~13_sumout\ <= NOT \inst1|inst1|Add0~13_sumout\;
\inst1|inst14|ALT_INV_Add0~13_sumout\ <= NOT \inst1|inst14|Add0~13_sumout\;
\inst1|inst20|ALT_INV_Add0~13_sumout\ <= NOT \inst1|inst20|Add0~13_sumout\;
\inst1|inst2|ALT_INV_Add0~9_sumout\ <= NOT \inst1|inst2|Add0~9_sumout\;
\inst1|inst11|ALT_INV_Add0~9_sumout\ <= NOT \inst1|inst11|Add0~9_sumout\;
\inst1|inst10|ALT_INV_Add0~9_sumout\ <= NOT \inst1|inst10|Add0~9_sumout\;
\inst1|inst5|ALT_INV_Add0~9_sumout\ <= NOT \inst1|inst5|Add0~9_sumout\;
\inst1|inst17|ALT_INV_Add0~9_sumout\ <= NOT \inst1|inst17|Add0~9_sumout\;
\inst1|inst9|ALT_INV_Add0~9_sumout\ <= NOT \inst1|inst9|Add0~9_sumout\;
\inst1|inst6|ALT_INV_Add0~9_sumout\ <= NOT \inst1|inst6|Add0~9_sumout\;
\inst1|inst19|ALT_INV_Add0~9_sumout\ <= NOT \inst1|inst19|Add0~9_sumout\;
\inst1|inst18|ALT_INV_Add0~9_sumout\ <= NOT \inst1|inst18|Add0~9_sumout\;
\inst1|inst7|ALT_INV_Add0~9_sumout\ <= NOT \inst1|inst7|Add0~9_sumout\;
\inst1|inst1|ALT_INV_Add0~9_sumout\ <= NOT \inst1|inst1|Add0~9_sumout\;
\inst1|inst14|ALT_INV_Add0~9_sumout\ <= NOT \inst1|inst14|Add0~9_sumout\;
\inst1|inst20|ALT_INV_Add0~9_sumout\ <= NOT \inst1|inst20|Add0~9_sumout\;
\inst1|inst2|ALT_INV_Add0~5_sumout\ <= NOT \inst1|inst2|Add0~5_sumout\;
\inst1|inst11|ALT_INV_Add0~5_sumout\ <= NOT \inst1|inst11|Add0~5_sumout\;
\inst1|inst10|ALT_INV_Add0~5_sumout\ <= NOT \inst1|inst10|Add0~5_sumout\;
\inst1|inst5|ALT_INV_Add0~5_sumout\ <= NOT \inst1|inst5|Add0~5_sumout\;
\inst1|inst17|ALT_INV_Add0~5_sumout\ <= NOT \inst1|inst17|Add0~5_sumout\;
\inst1|inst9|ALT_INV_Add0~5_sumout\ <= NOT \inst1|inst9|Add0~5_sumout\;
\inst1|inst6|ALT_INV_Add0~5_sumout\ <= NOT \inst1|inst6|Add0~5_sumout\;
\inst1|inst19|ALT_INV_Add0~5_sumout\ <= NOT \inst1|inst19|Add0~5_sumout\;
\inst1|inst18|ALT_INV_Add0~5_sumout\ <= NOT \inst1|inst18|Add0~5_sumout\;
\inst1|inst7|ALT_INV_Add0~5_sumout\ <= NOT \inst1|inst7|Add0~5_sumout\;
\inst1|inst1|ALT_INV_Add0~5_sumout\ <= NOT \inst1|inst1|Add0~5_sumout\;
\inst1|inst14|ALT_INV_Add0~5_sumout\ <= NOT \inst1|inst14|Add0~5_sumout\;
\inst1|inst20|ALT_INV_Add0~5_sumout\ <= NOT \inst1|inst20|Add0~5_sumout\;
\inst1|inst2|ALT_INV_Add0~1_sumout\ <= NOT \inst1|inst2|Add0~1_sumout\;
\inst1|inst11|ALT_INV_Add0~1_sumout\ <= NOT \inst1|inst11|Add0~1_sumout\;
\inst1|inst10|ALT_INV_Add0~1_sumout\ <= NOT \inst1|inst10|Add0~1_sumout\;
\inst1|inst5|ALT_INV_Add0~1_sumout\ <= NOT \inst1|inst5|Add0~1_sumout\;
\inst1|inst17|ALT_INV_Add0~1_sumout\ <= NOT \inst1|inst17|Add0~1_sumout\;
\inst1|inst9|ALT_INV_Add0~1_sumout\ <= NOT \inst1|inst9|Add0~1_sumout\;
\inst1|inst6|ALT_INV_Add0~1_sumout\ <= NOT \inst1|inst6|Add0~1_sumout\;
\inst1|inst19|ALT_INV_Add0~1_sumout\ <= NOT \inst1|inst19|Add0~1_sumout\;
\inst1|inst18|ALT_INV_Add0~1_sumout\ <= NOT \inst1|inst18|Add0~1_sumout\;
\inst1|inst7|ALT_INV_Add0~1_sumout\ <= NOT \inst1|inst7|Add0~1_sumout\;
\inst1|inst8|ALT_INV_Add0~29_sumout\ <= NOT \inst1|inst8|Add0~29_sumout\;
\inst1|inst1|ALT_INV_Add0~1_sumout\ <= NOT \inst1|inst1|Add0~1_sumout\;
\inst1|inst14|ALT_INV_Add0~1_sumout\ <= NOT \inst1|inst14|Add0~1_sumout\;
\inst1|inst20|ALT_INV_Add0~1_sumout\ <= NOT \inst1|inst20|Add0~1_sumout\;
\inst1|inst8|ALT_INV_Add0~25_sumout\ <= NOT \inst1|inst8|Add0~25_sumout\;
\inst1|inst8|ALT_INV_Add0~21_sumout\ <= NOT \inst1|inst8|Add0~21_sumout\;
\inst1|inst8|ALT_INV_Add0~17_sumout\ <= NOT \inst1|inst8|Add0~17_sumout\;
\inst1|inst8|ALT_INV_Add0~13_sumout\ <= NOT \inst1|inst8|Add0~13_sumout\;
\inst1|inst8|ALT_INV_Add0~9_sumout\ <= NOT \inst1|inst8|Add0~9_sumout\;
\inst1|inst8|ALT_INV_Add0~5_sumout\ <= NOT \inst1|inst8|Add0~5_sumout\;
\inst1|inst8|ALT_INV_Add0~1_sumout\ <= NOT \inst1|inst8|Add0~1_sumout\;
\inst1|inst2|ALT_INV_Regist\(0) <= NOT \inst1|inst2|Regist\(0);
\inst1|inst11|ALT_INV_Regist\(0) <= NOT \inst1|inst11|Regist\(0);
\inst1|inst10|ALT_INV_Regist\(0) <= NOT \inst1|inst10|Regist\(0);
\inst1|inst5|ALT_INV_Regist\(0) <= NOT \inst1|inst5|Regist\(0);
\inst1|inst17|ALT_INV_Regist\(0) <= NOT \inst1|inst17|Regist\(0);
\inst1|inst9|ALT_INV_Regist\(0) <= NOT \inst1|inst9|Regist\(0);
\inst1|inst6|ALT_INV_Regist\(0) <= NOT \inst1|inst6|Regist\(0);
\inst1|inst|altsyncram_component|auto_generated|ALT_INV_q_a\(1) <= NOT \inst1|inst|altsyncram_component|auto_generated|q_a\(1);
\inst1|inst|altsyncram_component|auto_generated|ALT_INV_q_a\(2) <= NOT \inst1|inst|altsyncram_component|auto_generated|q_a\(2);
\inst1|inst|altsyncram_component|auto_generated|ALT_INV_q_a\(3) <= NOT \inst1|inst|altsyncram_component|auto_generated|q_a\(3);
\inst1|inst|altsyncram_component|auto_generated|ALT_INV_q_a\(4) <= NOT \inst1|inst|altsyncram_component|auto_generated|q_a\(4);
\inst1|inst|altsyncram_component|auto_generated|ALT_INV_q_a\(5) <= NOT \inst1|inst|altsyncram_component|auto_generated|q_a\(5);
\inst1|inst|altsyncram_component|auto_generated|ALT_INV_q_a\(6) <= NOT \inst1|inst|altsyncram_component|auto_generated|q_a\(6);
\inst1|inst|altsyncram_component|auto_generated|ALT_INV_q_a\(7) <= NOT \inst1|inst|altsyncram_component|auto_generated|q_a\(7);
\inst1|inst|altsyncram_component|auto_generated|ALT_INV_q_a\(0) <= NOT \inst1|inst|altsyncram_component|auto_generated|q_a\(0);
\inst1|inst19|ALT_INV_Regist\(0) <= NOT \inst1|inst19|Regist\(0);
\inst1|inst18|ALT_INV_Regist\(0) <= NOT \inst1|inst18|Regist\(0);
\inst1|inst7|ALT_INV_Regist\(0) <= NOT \inst1|inst7|Regist\(0);
\inst1|inst1|ALT_INV_Regist\(0) <= NOT \inst1|inst1|Regist\(0);
\inst1|inst14|ALT_INV_Regist\(0) <= NOT \inst1|inst14|Regist\(0);
\inst1|inst20|ALT_INV_Regist\(0) <= NOT \inst1|inst20|Regist\(0);
\inst1|inst2|ALT_INV_Regist\(1) <= NOT \inst1|inst2|Regist\(1);
\inst1|inst11|ALT_INV_Regist\(1) <= NOT \inst1|inst11|Regist\(1);
\inst1|inst10|ALT_INV_Regist\(1) <= NOT \inst1|inst10|Regist\(1);
\inst1|inst5|ALT_INV_Regist\(1) <= NOT \inst1|inst5|Regist\(1);
\inst1|inst17|ALT_INV_Regist\(1) <= NOT \inst1|inst17|Regist\(1);
\inst1|inst9|ALT_INV_Regist\(1) <= NOT \inst1|inst9|Regist\(1);
\inst1|inst6|ALT_INV_Regist\(1) <= NOT \inst1|inst6|Regist\(1);
\inst1|inst19|ALT_INV_Regist\(1) <= NOT \inst1|inst19|Regist\(1);
\inst1|inst18|ALT_INV_Regist\(1) <= NOT \inst1|inst18|Regist\(1);
\inst1|inst7|ALT_INV_Regist\(1) <= NOT \inst1|inst7|Regist\(1);
\inst1|inst1|ALT_INV_Regist\(1) <= NOT \inst1|inst1|Regist\(1);
\inst1|inst14|ALT_INV_Regist\(1) <= NOT \inst1|inst14|Regist\(1);
\inst1|inst20|ALT_INV_Regist\(1) <= NOT \inst1|inst20|Regist\(1);
\inst1|inst2|ALT_INV_Regist\(2) <= NOT \inst1|inst2|Regist\(2);
\inst1|inst11|ALT_INV_Regist\(2) <= NOT \inst1|inst11|Regist\(2);
\inst1|inst10|ALT_INV_Regist\(2) <= NOT \inst1|inst10|Regist\(2);
\inst1|inst5|ALT_INV_Regist\(2) <= NOT \inst1|inst5|Regist\(2);
\inst1|inst17|ALT_INV_Regist\(2) <= NOT \inst1|inst17|Regist\(2);
\inst1|inst9|ALT_INV_Regist\(2) <= NOT \inst1|inst9|Regist\(2);
\inst1|inst6|ALT_INV_Regist\(2) <= NOT \inst1|inst6|Regist\(2);
\inst1|inst19|ALT_INV_Regist\(2) <= NOT \inst1|inst19|Regist\(2);
\inst1|inst18|ALT_INV_Regist\(2) <= NOT \inst1|inst18|Regist\(2);
\inst1|inst7|ALT_INV_Regist\(2) <= NOT \inst1|inst7|Regist\(2);
\inst1|inst1|ALT_INV_Regist\(2) <= NOT \inst1|inst1|Regist\(2);
\inst1|inst14|ALT_INV_Regist\(2) <= NOT \inst1|inst14|Regist\(2);
\inst1|inst20|ALT_INV_Regist\(2) <= NOT \inst1|inst20|Regist\(2);
\inst1|inst2|ALT_INV_Regist\(3) <= NOT \inst1|inst2|Regist\(3);
\inst1|inst11|ALT_INV_Regist\(3) <= NOT \inst1|inst11|Regist\(3);
\inst1|inst10|ALT_INV_Regist\(3) <= NOT \inst1|inst10|Regist\(3);
\inst1|inst5|ALT_INV_Regist\(3) <= NOT \inst1|inst5|Regist\(3);
\inst1|inst17|ALT_INV_Regist\(3) <= NOT \inst1|inst17|Regist\(3);
\inst1|inst9|ALT_INV_Regist\(3) <= NOT \inst1|inst9|Regist\(3);
\inst1|inst6|ALT_INV_Regist\(3) <= NOT \inst1|inst6|Regist\(3);
\inst1|inst19|ALT_INV_Regist\(3) <= NOT \inst1|inst19|Regist\(3);
\inst1|inst18|ALT_INV_Regist\(3) <= NOT \inst1|inst18|Regist\(3);
\inst1|inst7|ALT_INV_Regist\(3) <= NOT \inst1|inst7|Regist\(3);
\inst1|inst1|ALT_INV_Regist\(3) <= NOT \inst1|inst1|Regist\(3);
\inst1|inst14|ALT_INV_Regist\(3) <= NOT \inst1|inst14|Regist\(3);
\inst1|inst20|ALT_INV_Regist\(3) <= NOT \inst1|inst20|Regist\(3);
\inst1|inst2|ALT_INV_Regist\(4) <= NOT \inst1|inst2|Regist\(4);
\inst1|inst11|ALT_INV_Regist\(4) <= NOT \inst1|inst11|Regist\(4);
\inst1|inst10|ALT_INV_Regist\(4) <= NOT \inst1|inst10|Regist\(4);
\inst1|inst5|ALT_INV_Regist\(4) <= NOT \inst1|inst5|Regist\(4);
\inst1|inst17|ALT_INV_Regist\(4) <= NOT \inst1|inst17|Regist\(4);
\inst1|inst9|ALT_INV_Regist\(4) <= NOT \inst1|inst9|Regist\(4);
\inst1|inst6|ALT_INV_Regist\(4) <= NOT \inst1|inst6|Regist\(4);
\inst1|inst19|ALT_INV_Regist\(4) <= NOT \inst1|inst19|Regist\(4);
\inst1|inst18|ALT_INV_Regist\(4) <= NOT \inst1|inst18|Regist\(4);
\inst1|inst7|ALT_INV_Regist\(4) <= NOT \inst1|inst7|Regist\(4);
\inst1|inst1|ALT_INV_Regist\(4) <= NOT \inst1|inst1|Regist\(4);
\inst1|inst14|ALT_INV_Regist\(4) <= NOT \inst1|inst14|Regist\(4);
\inst1|inst20|ALT_INV_Regist\(4) <= NOT \inst1|inst20|Regist\(4);
\inst1|inst2|ALT_INV_Regist\(5) <= NOT \inst1|inst2|Regist\(5);
\inst1|inst11|ALT_INV_Regist\(5) <= NOT \inst1|inst11|Regist\(5);
\inst1|inst10|ALT_INV_Regist\(5) <= NOT \inst1|inst10|Regist\(5);
\inst1|inst5|ALT_INV_Regist\(5) <= NOT \inst1|inst5|Regist\(5);
\inst1|inst17|ALT_INV_Regist\(5) <= NOT \inst1|inst17|Regist\(5);
\inst1|inst9|ALT_INV_Regist\(5) <= NOT \inst1|inst9|Regist\(5);
\inst1|inst6|ALT_INV_Regist\(5) <= NOT \inst1|inst6|Regist\(5);
\inst1|inst19|ALT_INV_Regist\(5) <= NOT \inst1|inst19|Regist\(5);
\inst1|inst18|ALT_INV_Regist\(5) <= NOT \inst1|inst18|Regist\(5);
\inst1|inst7|ALT_INV_Regist\(5) <= NOT \inst1|inst7|Regist\(5);
\inst1|inst1|ALT_INV_Regist\(5) <= NOT \inst1|inst1|Regist\(5);
\inst1|inst14|ALT_INV_Regist\(5) <= NOT \inst1|inst14|Regist\(5);
\inst1|inst20|ALT_INV_Regist\(5) <= NOT \inst1|inst20|Regist\(5);
\inst1|inst2|ALT_INV_Regist\(6) <= NOT \inst1|inst2|Regist\(6);
\inst1|inst11|ALT_INV_Regist\(6) <= NOT \inst1|inst11|Regist\(6);
\inst1|inst10|ALT_INV_Regist\(6) <= NOT \inst1|inst10|Regist\(6);
\inst1|inst5|ALT_INV_Regist\(6) <= NOT \inst1|inst5|Regist\(6);
\inst1|inst17|ALT_INV_Regist\(6) <= NOT \inst1|inst17|Regist\(6);
\inst1|inst9|ALT_INV_Regist\(6) <= NOT \inst1|inst9|Regist\(6);
\inst1|inst6|ALT_INV_Regist\(6) <= NOT \inst1|inst6|Regist\(6);
\inst1|inst19|ALT_INV_Regist\(6) <= NOT \inst1|inst19|Regist\(6);
\inst1|inst18|ALT_INV_Regist\(6) <= NOT \inst1|inst18|Regist\(6);
\inst1|inst7|ALT_INV_Regist\(6) <= NOT \inst1|inst7|Regist\(6);
\inst1|inst1|ALT_INV_Regist\(6) <= NOT \inst1|inst1|Regist\(6);
\inst1|inst14|ALT_INV_Regist\(6) <= NOT \inst1|inst14|Regist\(6);
\inst1|inst20|ALT_INV_Regist\(6) <= NOT \inst1|inst20|Regist\(6);
\inst1|inst2|ALT_INV_Regist\(7) <= NOT \inst1|inst2|Regist\(7);
\inst1|inst11|ALT_INV_Regist\(7) <= NOT \inst1|inst11|Regist\(7);
\inst1|inst10|ALT_INV_Regist\(7) <= NOT \inst1|inst10|Regist\(7);
\inst1|inst5|ALT_INV_Regist\(7) <= NOT \inst1|inst5|Regist\(7);
\inst1|inst17|ALT_INV_Regist\(7) <= NOT \inst1|inst17|Regist\(7);
\inst1|inst9|ALT_INV_Regist\(7) <= NOT \inst1|inst9|Regist\(7);
\inst1|inst6|ALT_INV_Regist\(7) <= NOT \inst1|inst6|Regist\(7);
\inst1|inst19|ALT_INV_Regist\(7) <= NOT \inst1|inst19|Regist\(7);
\inst1|inst18|ALT_INV_Regist\(7) <= NOT \inst1|inst18|Regist\(7);
\inst1|inst7|ALT_INV_Regist\(7) <= NOT \inst1|inst7|Regist\(7);
\inst1|inst8|ALT_INV_Regist\(7) <= NOT \inst1|inst8|Regist\(7);
\inst1|inst1|ALT_INV_Regist\(7) <= NOT \inst1|inst1|Regist\(7);
\inst1|inst14|ALT_INV_Regist\(7) <= NOT \inst1|inst14|Regist\(7);
\inst1|inst20|ALT_INV_Regist\(7) <= NOT \inst1|inst20|Regist\(7);
\inst1|inst8|ALT_INV_Regist\(3) <= NOT \inst1|inst8|Regist\(3);
\inst1|inst8|ALT_INV_Regist\(2) <= NOT \inst1|inst8|Regist\(2);
\inst1|inst8|ALT_INV_Regist\(1) <= NOT \inst1|inst8|Regist\(1);
\inst1|inst8|ALT_INV_Regist\(4) <= NOT \inst1|inst8|Regist\(4);
\inst1|inst8|ALT_INV_Regist\(0) <= NOT \inst1|inst8|Regist\(0);
\inst1|inst8|ALT_INV_Regist\(6) <= NOT \inst1|inst8|Regist\(6);
\inst1|inst8|ALT_INV_Regist\(5) <= NOT \inst1|inst8|Regist\(5);

-- Location: IOOBUF_X68_Y81_N2
\MuxA~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_MuxA);

-- Location: IOOBUF_X89_Y37_N39
\MuxB~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Equal1~0_combout\,
	devoe => ww_devoe,
	o => ww_MuxB);

-- Location: IOOBUF_X80_Y81_N19
\MuxC~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_Equal0~0_combout\,
	devoe => ww_devoe,
	o => ww_MuxC);

-- Location: IOOBUF_X34_Y81_N93
\MuxMAR~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_MuxMAR);

-- Location: IOOBUF_X78_Y81_N19
\EnableDeco~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_EnableDeco);

-- Location: IOOBUF_X84_Y81_N53
\WR_Ram~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_WR_Ram);

-- Location: IOOBUF_X40_Y81_N53
\ALU[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ALU(2));

-- Location: IOOBUF_X89_Y6_N5
\ALU[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Equal1~0_combout\,
	devoe => ww_devoe,
	o => ww_ALU(1));

-- Location: IOOBUF_X76_Y81_N19
\ALU[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_Equal0~0_combout\,
	devoe => ww_devoe,
	o => ww_ALU(0));

-- Location: IOOBUF_X66_Y81_N59
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

-- Location: IOOBUF_X54_Y0_N19
\cacheOut[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst252|data_out\(6),
	devoe => ww_devoe,
	o => ww_cacheOut(6));

-- Location: IOOBUF_X54_Y0_N2
\cacheOut[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst252|data_out\(5),
	devoe => ww_devoe,
	o => ww_cacheOut(5));

-- Location: IOOBUF_X4_Y0_N19
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

-- Location: IOOBUF_X60_Y0_N36
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

-- Location: IOOBUF_X70_Y0_N2
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

-- Location: IOOBUF_X74_Y81_N59
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

-- Location: IOOBUF_X54_Y0_N36
\cacheOut[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst252|data_out\(0),
	devoe => ww_devoe,
	o => ww_cacheOut(0));

-- Location: IOOBUF_X64_Y81_N36
\Destino27~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MDR[7]~input_o\,
	devoe => ww_devoe,
	o => ww_Destino27);

-- Location: IOOBUF_X52_Y81_N2
\Destino26~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MDR[6]~input_o\,
	devoe => ww_devoe,
	o => ww_Destino26);

-- Location: IOOBUF_X38_Y81_N2
\Destino25~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MDR[5]~input_o\,
	devoe => ww_devoe,
	o => ww_Destino25);

-- Location: IOOBUF_X72_Y81_N19
\Destino24~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MDR[4]~input_o\,
	devoe => ww_devoe,
	o => ww_Destino24);

-- Location: IOOBUF_X89_Y36_N56
\Destino23~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MDR[3]~input_o\,
	devoe => ww_devoe,
	o => ww_Destino23);

-- Location: IOOBUF_X62_Y81_N19
\Destino22~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MDR[2]~input_o\,
	devoe => ww_devoe,
	o => ww_Destino22);

-- Location: IOOBUF_X70_Y81_N53
\Destino21~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MDR[1]~input_o\,
	devoe => ww_devoe,
	o => ww_Destino21);

-- Location: IOOBUF_X68_Y0_N19
\Destino20~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MDR[0]~input_o\,
	devoe => ww_devoe,
	o => ww_Destino20);

-- Location: IOOBUF_X62_Y0_N36
\Fuente37~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Fuente37);

-- Location: IOOBUF_X6_Y0_N53
\Fuente36~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Fuente36);

-- Location: IOOBUF_X68_Y81_N53
\Fuente35~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Fuente35);

-- Location: IOOBUF_X2_Y0_N42
\Fuente34~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Fuente34);

-- Location: IOOBUF_X60_Y81_N53
\Fuente33~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Fuente33);

-- Location: IOOBUF_X68_Y81_N19
\Fuente32~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Fuente32);

-- Location: IOOBUF_X56_Y81_N53
\Fuente31~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Fuente31);

-- Location: IOOBUF_X36_Y81_N53
\Fuente30~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Fuente30);

-- Location: IOOBUF_X72_Y81_N2
\MBusMux[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_MBusMux(4));

-- Location: IOOBUF_X32_Y81_N2
\MBusMux[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_MBusMux(3));

-- Location: IOOBUF_X89_Y4_N79
\MBusMux[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_MBusMux(2));

-- Location: IOOBUF_X89_Y6_N39
\MBusMux[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Equal1~0_combout\,
	devoe => ww_devoe,
	o => ww_MBusMux(1));

-- Location: IOOBUF_X82_Y81_N59
\MBusMux[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_Equal0~0_combout\,
	devoe => ww_devoe,
	o => ww_MBusMux(0));

-- Location: IOOBUF_X34_Y0_N93
\Outd[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst16|result\(7),
	devoe => ww_devoe,
	o => ww_Outd(7));

-- Location: IOOBUF_X32_Y0_N36
\Outd[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst16|result\(6),
	devoe => ww_devoe,
	o => ww_Outd(6));

-- Location: IOOBUF_X36_Y0_N36
\Outd[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst16|result\(5),
	devoe => ww_devoe,
	o => ww_Outd(5));

-- Location: IOOBUF_X34_Y0_N76
\Outd[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst16|result\(4),
	devoe => ww_devoe,
	o => ww_Outd(4));

-- Location: IOOBUF_X36_Y0_N19
\Outd[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst16|result\(3),
	devoe => ww_devoe,
	o => ww_Outd(3));

-- Location: IOOBUF_X34_Y0_N59
\Outd[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst16|result\(2),
	devoe => ww_devoe,
	o => ww_Outd(2));

-- Location: IOOBUF_X32_Y0_N2
\Outd[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst16|result\(1),
	devoe => ww_devoe,
	o => ww_Outd(1));

-- Location: IOOBUF_X38_Y0_N19
\Outd[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst16|result\(0),
	devoe => ww_devoe,
	o => ww_Outd(0));

-- Location: IOOBUF_X84_Y81_N2
\RegEn[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RegEn(3));

-- Location: IOOBUF_X86_Y81_N19
\RegEn[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RegEn(2));

-- Location: IOOBUF_X89_Y6_N22
\RegEn[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Equal1~0_combout\,
	devoe => ww_devoe,
	o => ww_RegEn(1));

-- Location: IOOBUF_X89_Y38_N56
\RegEn[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_Equal0~0_combout\,
	devoe => ww_devoe,
	o => ww_RegEn(0));

-- Location: IOOBUF_X89_Y37_N22
\RegVal[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RegVal(3));

-- Location: IOOBUF_X88_Y81_N54
\RegVal[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RegVal(2));

-- Location: IOOBUF_X72_Y81_N53
\RegVal[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Equal1~0_combout\,
	devoe => ww_devoe,
	o => ww_RegVal(1));

-- Location: IOOBUF_X76_Y81_N2
\RegVal[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_Equal0~0_combout\,
	devoe => ww_devoe,
	o => ww_RegVal(0));

-- Location: IOOBUF_X50_Y81_N42
\UMemOut[63]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_UMemOut(63));

-- Location: IOOBUF_X68_Y0_N53
\UMemOut[62]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_UMemOut(62));

-- Location: IOOBUF_X66_Y0_N42
\UMemOut[61]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_UMemOut(61));

-- Location: IOOBUF_X89_Y9_N5
\UMemOut[60]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Equal1~0_combout\,
	devoe => ww_devoe,
	o => ww_UMemOut(60));

-- Location: IOOBUF_X82_Y81_N93
\UMemOut[59]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_Equal0~0_combout\,
	devoe => ww_devoe,
	o => ww_UMemOut(59));

-- Location: IOOBUF_X36_Y81_N2
\UMemOut[58]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_UMemOut(58));

-- Location: IOOBUF_X66_Y0_N59
\UMemOut[57]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_UMemOut(57));

-- Location: IOOBUF_X89_Y8_N56
\UMemOut[56]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Equal1~0_combout\,
	devoe => ww_devoe,
	o => ww_UMemOut(56));

-- Location: IOOBUF_X78_Y81_N2
\UMemOut[55]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_Equal0~0_combout\,
	devoe => ww_devoe,
	o => ww_UMemOut(55));

-- Location: IOOBUF_X26_Y81_N59
\UMemOut[54]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_UMemOut(54));

-- Location: IOOBUF_X89_Y9_N22
\UMemOut[53]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Equal1~0_combout\,
	devoe => ww_devoe,
	o => ww_UMemOut(53));

-- Location: IOOBUF_X89_Y38_N39
\UMemOut[52]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_Equal0~0_combout\,
	devoe => ww_devoe,
	o => ww_UMemOut(52));

-- Location: IOOBUF_X56_Y81_N2
\UMemOut[51]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_UMemOut(51));

-- Location: IOOBUF_X26_Y81_N42
\UMemOut[50]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_UMemOut(50));

-- Location: IOOBUF_X89_Y35_N96
\UMemOut[49]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Equal1~0_combout\,
	devoe => ww_devoe,
	o => ww_UMemOut(49));

-- Location: IOOBUF_X88_Y81_N37
\UMemOut[48]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_Equal0~0_combout\,
	devoe => ww_devoe,
	o => ww_UMemOut(48));

-- Location: IOOBUF_X89_Y36_N5
\UMemOut[47]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_UMemOut(47));

-- Location: IOOBUF_X89_Y35_N79
\UMemOut[46]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Equal1~0_combout\,
	devoe => ww_devoe,
	o => ww_UMemOut(46));

-- Location: IOOBUF_X86_Y81_N2
\UMemOut[45]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_Equal0~0_combout\,
	devoe => ww_devoe,
	o => ww_UMemOut(45));

-- Location: IOOBUF_X52_Y81_N53
\UMemOut[44]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_UMemOut(44));

-- Location: IOOBUF_X84_Y81_N36
\UMemOut[43]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_UMemOut(43));

-- Location: IOOBUF_X66_Y0_N93
\UMemOut[42]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_UMemOut(42));

-- Location: IOOBUF_X86_Y81_N53
\UMemOut[41]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_UMemOut(41));

-- Location: IOOBUF_X74_Y81_N93
\UMemOut[40]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_UMemOut(40));

-- Location: IOOBUF_X72_Y0_N53
\UMemOut[39]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_UMemOut(39));

-- Location: IOOBUF_X54_Y81_N53
\UMemOut[38]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_UMemOut(38));

-- Location: IOOBUF_X80_Y81_N36
\UMemOut[37]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_UMemOut(37));

-- Location: IOOBUF_X58_Y81_N59
\UMemOut[36]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_UMemOut(36));

-- Location: IOOBUF_X50_Y81_N76
\UMemOut[35]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_UMemOut(35));

-- Location: IOOBUF_X50_Y81_N59
\UMemOut[34]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_UMemOut(34));

-- Location: IOOBUF_X72_Y81_N36
\UMemOut[33]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Equal1~0_combout\,
	devoe => ww_devoe,
	o => ww_UMemOut(33));

-- Location: IOOBUF_X89_Y38_N5
\UMemOut[32]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_Equal0~0_combout\,
	devoe => ww_devoe,
	o => ww_UMemOut(32));

-- Location: IOOBUF_X62_Y81_N36
\UMemOut[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_UMemOut(31));

-- Location: IOOBUF_X64_Y0_N2
\UMemOut[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_UMemOut(30));

-- Location: IOOBUF_X52_Y81_N19
\UMemOut[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_UMemOut(29));

-- Location: IOOBUF_X76_Y81_N36
\UMemOut[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_UMemOut(28));

-- Location: IOOBUF_X34_Y81_N59
\UMemOut[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_UMemOut(27));

-- Location: IOOBUF_X54_Y81_N2
\UMemOut[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_UMemOut(26));

-- Location: IOOBUF_X2_Y0_N76
\UMemOut[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_UMemOut(25));

-- Location: IOOBUF_X70_Y0_N19
\UMemOut[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_UMemOut(24));

-- Location: IOOBUF_X80_Y81_N53
\UMemOut[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_UMemOut(23));

-- Location: IOOBUF_X72_Y0_N2
\UMemOut[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_UMemOut(22));

-- Location: IOOBUF_X32_Y81_N53
\UMemOut[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_UMemOut(21));

-- Location: IOOBUF_X60_Y81_N36
\UMemOut[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_UMemOut(20));

-- Location: IOOBUF_X89_Y4_N96
\UMemOut[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_UMemOut(19));

-- Location: IOOBUF_X89_Y8_N22
\UMemOut[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_UMemOut(18));

-- Location: IOOBUF_X89_Y9_N56
\UMemOut[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Equal1~0_combout\,
	devoe => ww_devoe,
	o => ww_UMemOut(17));

-- Location: IOOBUF_X88_Y81_N3
\UMemOut[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_Equal0~0_combout\,
	devoe => ww_devoe,
	o => ww_UMemOut(16));

-- Location: IOOBUF_X58_Y0_N59
\UMemOut[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_UMemOut(15));

-- Location: IOOBUF_X32_Y81_N36
\UMemOut[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_UMemOut(14));

-- Location: IOOBUF_X68_Y81_N36
\UMemOut[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_UMemOut(13));

-- Location: IOOBUF_X6_Y0_N2
\UMemOut[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_UMemOut(12));

-- Location: IOOBUF_X58_Y81_N76
\UMemOut[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_UMemOut(11));

-- Location: IOOBUF_X40_Y81_N19
\UMemOut[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_UMemOut(10));

-- Location: IOOBUF_X66_Y81_N93
\UMemOut[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_UMemOut(9));

-- Location: IOOBUF_X4_Y0_N36
\UMemOut[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_UMemOut(8));

-- Location: IOOBUF_X89_Y36_N22
\UMemOut[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_UMemOut(7));

-- Location: IOOBUF_X86_Y81_N36
\UMemOut[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_UMemOut(6));

-- Location: IOOBUF_X30_Y81_N36
\UMemOut[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_UMemOut(5));

-- Location: IOOBUF_X74_Y81_N76
\UMemOut[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_UMemOut(4));

-- Location: IOOBUF_X2_Y0_N59
\UMemOut[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_UMemOut(3));

-- Location: IOOBUF_X64_Y0_N19
\UMemOut[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_UMemOut(2));

-- Location: IOOBUF_X89_Y6_N56
\UMemOut[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Equal1~0_combout\,
	devoe => ww_devoe,
	o => ww_UMemOut(1));

-- Location: IOOBUF_X78_Y81_N53
\UMemOut[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_Equal0~0_combout\,
	devoe => ww_devoe,
	o => ww_UMemOut(0));

-- Location: IOIBUF_X89_Y35_N61
\Clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clk,
	o => \Clk~input_o\);

-- Location: CLKCTRL_G10
\Clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \Clk~input_o\,
	outclk => \Clk~inputCLKENA0_outclk\);

-- Location: LABCELL_X88_Y39_N30
\inst|NextAddUC[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|NextAddUC[1]~feeder_combout\ = ( \inst|Equal1~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst|ALT_INV_Equal1~0_combout\,
	combout => \inst|NextAddUC[1]~feeder_combout\);

-- Location: FF_X88_Y39_N31
\inst|NextAddUC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst|NextAddUC[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|NextAddUC\(1));

-- Location: FF_X88_Y39_N7
\inst|address[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \inst|NextAddUC\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|address\(1));

-- Location: LABCELL_X88_Y39_N12
\inst|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = ( \inst|address\(1) ) # ( !\inst|address\(1) & ( \inst|address\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_address\(0),
	dataf => \inst|ALT_INV_address\(1),
	combout => \inst|Equal0~0_combout\);

-- Location: LABCELL_X88_Y39_N9
\inst|NextAddUC[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|NextAddUC[0]~0_combout\ = ( !\inst|Equal0~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst|ALT_INV_Equal0~0_combout\,
	combout => \inst|NextAddUC[0]~0_combout\);

-- Location: FF_X88_Y39_N11
\inst|NextAddUC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst|NextAddUC[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|NextAddUC\(0));

-- Location: LABCELL_X88_Y39_N33
\inst|address[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|address[0]~feeder_combout\ = \inst|NextAddUC\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_NextAddUC\(0),
	combout => \inst|address[0]~feeder_combout\);

-- Location: FF_X88_Y39_N35
\inst|address[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst|address[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|address\(0));

-- Location: LABCELL_X88_Y39_N6
\inst|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal1~0_combout\ = ( \inst|address\(0) & ( !\inst|address\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_address\(1),
	dataf => \inst|ALT_INV_address\(0),
	combout => \inst|Equal1~0_combout\);

-- Location: IOIBUF_X38_Y0_N35
\SelBus[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SelBus(2),
	o => \SelBus[2]~input_o\);

-- Location: IOIBUF_X38_Y0_N52
\SelBus[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SelBus(0),
	o => \SelBus[0]~input_o\);

-- Location: IOIBUF_X34_Y0_N41
\SelBus[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SelBus(3),
	o => \SelBus[3]~input_o\);

-- Location: LABCELL_X27_Y1_N36
\inst1|inst8|Regist[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst8|Regist[0]~5_combout\ = ( \SelBus[2]~input_o\ & ( !\SelBus[0]~input_o\ & ( !\SelBus[3]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SelBus[3]~input_o\,
	datae => \ALT_INV_SelBus[2]~input_o\,
	dataf => \ALT_INV_SelBus[0]~input_o\,
	combout => \inst1|inst8|Regist[0]~5_combout\);

-- Location: IOIBUF_X36_Y0_N1
\SelBus[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SelBus(1),
	o => \SelBus[1]~input_o\);

-- Location: LABCELL_X31_Y3_N42
\inst1|inst8|Regist[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst8|Regist[0]~4_combout\ = ( \SelBus[0]~input_o\ & ( (\SelBus[1]~input_o\ & (!\SelBus[2]~input_o\ & !\SelBus[3]~input_o\)) ) ) # ( !\SelBus[0]~input_o\ & ( ((\SelBus[1]~input_o\ & !\SelBus[2]~input_o\)) # (\SelBus[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111101001111010011110100111101000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[2]~input_o\,
	datac => \ALT_INV_SelBus[3]~input_o\,
	dataf => \ALT_INV_SelBus[0]~input_o\,
	combout => \inst1|inst8|Regist[0]~4_combout\);

-- Location: IOIBUF_X38_Y0_N1
\muxSel[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_muxSel(2),
	o => \muxSel[2]~input_o\);

-- Location: IOIBUF_X30_Y0_N18
\muxSel[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_muxSel(5),
	o => \muxSel[5]~input_o\);

-- Location: IOIBUF_X28_Y0_N35
\muxSel[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_muxSel(3),
	o => \muxSel[3]~input_o\);

-- Location: IOIBUF_X40_Y0_N1
\muxSel[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_muxSel(4),
	o => \muxSel[4]~input_o\);

-- Location: IOIBUF_X32_Y0_N52
\muxSel[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_muxSel(1),
	o => \muxSel[1]~input_o\);

-- Location: IOIBUF_X52_Y0_N18
\muxSel[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_muxSel(0),
	o => \muxSel[0]~input_o\);

-- Location: MLABCELL_X34_Y5_N51
\inst1|inst16|_~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|_~0_combout\ = ( !\muxSel[1]~input_o\ & ( \muxSel[0]~input_o\ & ( (\muxSel[2]~input_o\ & (!\muxSel[5]~input_o\ & (\muxSel[3]~input_o\ & !\muxSel[4]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_muxSel[2]~input_o\,
	datab => \ALT_INV_muxSel[5]~input_o\,
	datac => \ALT_INV_muxSel[3]~input_o\,
	datad => \ALT_INV_muxSel[4]~input_o\,
	datae => \ALT_INV_muxSel[1]~input_o\,
	dataf => \ALT_INV_muxSel[0]~input_o\,
	combout => \inst1|inst16|_~0_combout\);

-- Location: MLABCELL_X34_Y5_N24
\inst1|inst16|_~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|_~5_combout\ = ( \muxSel[3]~input_o\ & ( !\muxSel[0]~input_o\ & ( (\muxSel[1]~input_o\ & (!\muxSel[5]~input_o\ & (!\muxSel[2]~input_o\ & !\muxSel[4]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_muxSel[1]~input_o\,
	datab => \ALT_INV_muxSel[5]~input_o\,
	datac => \ALT_INV_muxSel[2]~input_o\,
	datad => \ALT_INV_muxSel[4]~input_o\,
	datae => \ALT_INV_muxSel[3]~input_o\,
	dataf => \ALT_INV_muxSel[0]~input_o\,
	combout => \inst1|inst16|_~5_combout\);

-- Location: MLABCELL_X34_Y5_N18
\inst1|inst16|_~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|_~4_combout\ = ( \muxSel[3]~input_o\ & ( !\muxSel[0]~input_o\ & ( (!\muxSel[1]~input_o\ & (!\muxSel[5]~input_o\ & (!\muxSel[2]~input_o\ & !\muxSel[4]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_muxSel[1]~input_o\,
	datab => \ALT_INV_muxSel[5]~input_o\,
	datac => \ALT_INV_muxSel[2]~input_o\,
	datad => \ALT_INV_muxSel[4]~input_o\,
	datae => \ALT_INV_muxSel[3]~input_o\,
	dataf => \ALT_INV_muxSel[0]~input_o\,
	combout => \inst1|inst16|_~4_combout\);

-- Location: MLABCELL_X34_Y5_N54
\inst1|inst16|_~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|_~6_combout\ = ( \muxSel[1]~input_o\ & ( !\muxSel[4]~input_o\ & ( (\muxSel[2]~input_o\ & (!\muxSel[5]~input_o\ & (!\muxSel[0]~input_o\ & \muxSel[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_muxSel[2]~input_o\,
	datab => \ALT_INV_muxSel[5]~input_o\,
	datac => \ALT_INV_muxSel[0]~input_o\,
	datad => \ALT_INV_muxSel[3]~input_o\,
	datae => \ALT_INV_muxSel[1]~input_o\,
	dataf => \ALT_INV_muxSel[4]~input_o\,
	combout => \inst1|inst16|_~6_combout\);

-- Location: LABCELL_X35_Y3_N30
\inst1|inst8|Regist[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst8|Regist[7]~7_combout\ = ( \SelBus[0]~input_o\ & ( (\SelBus[2]~input_o\ & !\SelBus[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000000000000000000000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[2]~input_o\,
	datac => \ALT_INV_SelBus[3]~input_o\,
	datae => \ALT_INV_SelBus[0]~input_o\,
	combout => \inst1|inst8|Regist[7]~7_combout\);

-- Location: MLABCELL_X34_Y3_N39
\inst1|inst8|Regist[7]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst8|Regist[7]~10_combout\ = ( \SelBus[0]~input_o\ & ( (!\SelBus[2]~input_o\ & !\SelBus[3]~input_o\) ) ) # ( !\SelBus[0]~input_o\ & ( !\SelBus[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SelBus[2]~input_o\,
	datad => \ALT_INV_SelBus[3]~input_o\,
	dataf => \ALT_INV_SelBus[0]~input_o\,
	combout => \inst1|inst8|Regist[7]~10_combout\);

-- Location: LABCELL_X27_Y3_N12
\inst1|inst8|Regist[0]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst8|Regist[0]~9_combout\ = ( !\SelBus[3]~input_o\ & ( \SelBus[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[2]~input_o\,
	dataf => \ALT_INV_SelBus[3]~input_o\,
	combout => \inst1|inst8|Regist[0]~9_combout\);

-- Location: IOIBUF_X26_Y0_N41
\WR~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WR,
	o => \WR~input_o\);

-- Location: LABCELL_X31_Y4_N0
\inst1|inst17|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst17|Add0~29_sumout\ = SUM(( ((!\SelBus[3]~input_o\) # (\inst1|inst16|result\(0))) # (\SelBus[1]~input_o\) ) + ( !\inst1|inst17|Regist\(0) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( !VCC ))
-- \inst1|inst17|Add0~30\ = CARRY(( ((!\SelBus[3]~input_o\) # (\inst1|inst16|result\(0))) # (\SelBus[1]~input_o\) ) + ( !\inst1|inst17|Regist\(0) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000001101110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[3]~input_o\,
	datad => \inst1|inst16|ALT_INV_result\(0),
	dataf => \inst1|inst17|ALT_INV_Regist\(0),
	cin => GND,
	sumout => \inst1|inst17|Add0~29_sumout\,
	cout => \inst1|inst17|Add0~30\);

-- Location: LABCELL_X35_Y3_N15
\inst1|inst8|Regist[4]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst8|Regist[4]~0_combout\ = ( \SelBus[0]~input_o\ & ( !\SelBus[2]~input_o\ & ( (!\SelBus[1]~input_o\) # (\SelBus[3]~input_o\) ) ) ) # ( !\SelBus[0]~input_o\ & ( !\SelBus[2]~input_o\ & ( (!\SelBus[3]~input_o\ & !\SelBus[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000111101011111010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[3]~input_o\,
	datac => \ALT_INV_SelBus[1]~input_o\,
	datae => \ALT_INV_SelBus[0]~input_o\,
	dataf => \ALT_INV_SelBus[2]~input_o\,
	combout => \inst1|inst8|Regist[4]~0_combout\);

-- Location: LABCELL_X30_Y3_N51
\inst1|inst8|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst8|Mux3~0_combout\ = ( \SelBus[1]~input_o\ & ( (!\SelBus[2]~input_o\ & ((!\SelBus[3]~input_o\) # (!\SelBus[0]~input_o\))) ) ) # ( !\SelBus[1]~input_o\ & ( (!\SelBus[2]~input_o\ & (\SelBus[3]~input_o\ & !\SelBus[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000010101000101010001010100010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[2]~input_o\,
	datab => \ALT_INV_SelBus[3]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	dataf => \ALT_INV_SelBus[1]~input_o\,
	combout => \inst1|inst8|Mux3~0_combout\);

-- Location: IOIBUF_X40_Y0_N35
\AluSel[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AluSel(3),
	o => \AluSel[3]~input_o\);

-- Location: IOIBUF_X40_Y0_N18
\AluSel[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AluSel(2),
	o => \AluSel[2]~input_o\);

-- Location: IOIBUF_X36_Y81_N35
\AluSel[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AluSel(1),
	o => \AluSel[1]~input_o\);

-- Location: IOIBUF_X36_Y0_N52
\AluSel[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AluSel(0),
	o => \AluSel[0]~input_o\);

-- Location: LABCELL_X37_Y1_N3
\inst1|inst24|Mux17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst24|Mux17~0_combout\ = ( \AluSel[0]~input_o\ & ( (!\AluSel[3]~input_o\ & \AluSel[2]~input_o\) ) ) # ( !\AluSel[0]~input_o\ & ( (\AluSel[3]~input_o\ & (!\AluSel[2]~input_o\ & !\AluSel[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AluSel[3]~input_o\,
	datac => \ALT_INV_AluSel[2]~input_o\,
	datad => \ALT_INV_AluSel[1]~input_o\,
	dataf => \ALT_INV_AluSel[0]~input_o\,
	combout => \inst1|inst24|Mux17~0_combout\);

-- Location: LABCELL_X27_Y4_N54
\inst1|inst18|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst18|Mux3~0_combout\ = ( \inst1|inst18|Regist\(4) & ( (!\SelBus[1]~input_o\ & \inst1|inst16|result\(4)) ) ) # ( !\inst1|inst18|Regist\(4) & ( (\inst1|inst16|result\(4)) # (\SelBus[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111111111001100111111111100000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SelBus[1]~input_o\,
	datad => \inst1|inst16|ALT_INV_result\(4),
	dataf => \inst1|inst18|ALT_INV_Regist\(4),
	combout => \inst1|inst18|Mux3~0_combout\);

-- Location: IOIBUF_X28_Y0_N1
\MUX_MDR~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MUX_MDR,
	o => \MUX_MDR~input_o\);

-- Location: IOIBUF_X30_Y0_N52
\MUX_MAR~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MUX_MAR,
	o => \MUX_MAR~input_o\);

-- Location: LABCELL_X30_Y2_N18
\inst1|inst13|$00000|auto_generated|l1_w1_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst13|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ = ( \inst1|inst16|result\(1) & ( (!\MUX_MAR~input_o\) # (\inst1|inst17|Regist\(1)) ) ) # ( !\inst1|inst16|result\(1) & ( (\MUX_MAR~input_o\ & \inst1|inst17|Regist\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_MUX_MAR~input_o\,
	datad => \inst1|inst17|ALT_INV_Regist\(1),
	dataf => \inst1|inst16|ALT_INV_result\(1),
	combout => \inst1|inst13|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X34_Y4_N39
\inst1|inst13|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst13|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst1|inst16|result\(0) & ( (!\MUX_MAR~input_o\) # (\inst1|inst17|Regist\(0)) ) ) # ( !\inst1|inst16|result\(0) & ( (\MUX_MAR~input_o\ & \inst1|inst17|Regist\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MUX_MAR~input_o\,
	datad => \inst1|inst17|ALT_INV_Regist\(0),
	dataf => \inst1|inst16|ALT_INV_result\(0),
	combout => \inst1|inst13|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X34_Y4_N0
\inst1|inst1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst1|Add0~29_sumout\ = SUM(( ((!\SelBus[3]~input_o\) # (\inst1|inst13|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\)) # (\SelBus[1]~input_o\) ) + ( !\inst1|inst1|Regist\(0) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( !VCC 
-- ))
-- \inst1|inst1|Add0~30\ = CARRY(( ((!\SelBus[3]~input_o\) # (\inst1|inst13|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\)) # (\SelBus[1]~input_o\) ) + ( !\inst1|inst1|Regist\(0) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111000011110000100000000000000001101110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[3]~input_o\,
	datac => \inst1|inst1|ALT_INV_Regist\(0),
	datad => \inst1|inst13|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	cin => GND,
	sumout => \inst1|inst1|Add0~29_sumout\,
	cout => \inst1|inst1|Add0~30\);

-- Location: MLABCELL_X34_Y4_N3
\inst1|inst1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst1|Add0~25_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst13|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\)))) ) + ( !\inst1|inst1|Regist\(1) $ 
-- (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( \inst1|inst1|Add0~30\ ))
-- \inst1|inst1|Add0~26\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst13|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\)))) ) + ( !\inst1|inst1|Regist\(1) $ 
-- (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( \inst1|inst1|Add0~30\ ))

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
	datad => \inst1|inst13|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\,
	dataf => \inst1|inst1|ALT_INV_Regist\(1),
	cin => \inst1|inst1|Add0~30\,
	sumout => \inst1|inst1|Add0~25_sumout\,
	cout => \inst1|inst1|Add0~26\);

-- Location: LABCELL_X31_Y4_N27
\inst1|inst17|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst17|Mux4~0_combout\ = (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(3)))) # (\SelBus[1]~input_o\ & (!\inst1|inst17|Regist\(3)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000011111010010100001111101001010000111110100101000011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datac => \inst1|inst17|ALT_INV_Regist\(3),
	datad => \inst1|inst16|ALT_INV_result\(3),
	combout => \inst1|inst17|Mux4~0_combout\);

-- Location: LABCELL_X31_Y4_N36
\inst1|inst17|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst17|Mux3~0_combout\ = ( \inst1|inst17|Regist\(4) & ( (\inst1|inst16|result\(4) & !\SelBus[1]~input_o\) ) ) # ( !\inst1|inst17|Regist\(4) & ( (\SelBus[1]~input_o\) # (\inst1|inst16|result\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst16|ALT_INV_result\(4),
	datad => \ALT_INV_SelBus[1]~input_o\,
	dataf => \inst1|inst17|ALT_INV_Regist\(4),
	combout => \inst1|inst17|Mux3~0_combout\);

-- Location: LABCELL_X33_Y4_N30
\inst1|inst17|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst17|Mux1~1_combout\ = ( \inst1|inst17|Regist\(7) & ( (\SelBus[2]~input_o\ & ((\inst1|inst17|Regist\(5)) # (\SelBus[0]~input_o\))) ) ) # ( !\inst1|inst17|Regist\(7) & ( (!\SelBus[0]~input_o\ & (\SelBus[2]~input_o\ & \inst1|inst17|Regist\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110000000011000011110000001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SelBus[0]~input_o\,
	datac => \ALT_INV_SelBus[2]~input_o\,
	datad => \inst1|inst17|ALT_INV_Regist\(5),
	dataf => \inst1|inst17|ALT_INV_Regist\(7),
	combout => \inst1|inst17|Mux1~1_combout\);

-- Location: MLABCELL_X28_Y4_N54
\inst1|inst18|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst18|Mux1~0_combout\ = ( \inst1|inst18|Regist\(6) & ( (\inst1|inst16|result\(6) & !\SelBus[1]~input_o\) ) ) # ( !\inst1|inst18|Regist\(6) & ( (\SelBus[1]~input_o\) # (\inst1|inst16|result\(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111111111001100111111111100110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst16|ALT_INV_result\(6),
	datad => \ALT_INV_SelBus[1]~input_o\,
	dataf => \inst1|inst18|ALT_INV_Regist\(6),
	combout => \inst1|inst18|Mux1~0_combout\);

-- Location: LABCELL_X27_Y4_N57
\inst1|inst18|Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst18|Mux2~1_combout\ = ( \SelBus[2]~input_o\ & ( (!\SelBus[0]~input_o\ & (\inst1|inst18|Regist\(4))) # (\SelBus[0]~input_o\ & ((\inst1|inst18|Regist\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst18|ALT_INV_Regist\(4),
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst1|inst18|ALT_INV_Regist\(6),
	dataf => \ALT_INV_SelBus[2]~input_o\,
	combout => \inst1|inst18|Mux2~1_combout\);

-- Location: LABCELL_X27_Y4_N6
\inst1|inst18|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst18|Mux5~1_combout\ = ( \inst1|inst18|Regist\(3) & ( (\SelBus[2]~input_o\ & ((\inst1|inst18|Regist\(1)) # (\SelBus[0]~input_o\))) ) ) # ( !\inst1|inst18|Regist\(3) & ( (\SelBus[2]~input_o\ & (!\SelBus[0]~input_o\ & \inst1|inst18|Regist\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000010101000101010001010100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[2]~input_o\,
	datab => \ALT_INV_SelBus[0]~input_o\,
	datac => \inst1|inst18|ALT_INV_Regist\(1),
	dataf => \inst1|inst18|ALT_INV_Regist\(3),
	combout => \inst1|inst18|Mux5~1_combout\);

-- Location: LABCELL_X33_Y4_N3
\inst1|inst1|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst1|Mux1~0_combout\ = ( \inst1|inst1|Regist\(5) & ( (\SelBus[2]~input_o\ & ((!\SelBus[0]~input_o\) # (\inst1|inst1|Regist\(7)))) ) ) # ( !\inst1|inst1|Regist\(5) & ( (\SelBus[2]~input_o\ & (\SelBus[0]~input_o\ & \inst1|inst1|Regist\(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000101000101010001010100010101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[2]~input_o\,
	datab => \ALT_INV_SelBus[0]~input_o\,
	datac => \inst1|inst1|ALT_INV_Regist\(7),
	dataf => \inst1|inst1|ALT_INV_Regist\(5),
	combout => \inst1|inst1|Mux1~0_combout\);

-- Location: LABCELL_X33_Y4_N57
\inst1|inst13|$00000|auto_generated|l1_w6_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst13|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\ = ( \inst1|inst16|result\(6) & ( (!\MUX_MAR~input_o\) # (\inst1|inst17|Regist\(6)) ) ) # ( !\inst1|inst16|result\(6) & ( (\MUX_MAR~input_o\ & \inst1|inst17|Regist\(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MUX_MAR~input_o\,
	datac => \inst1|inst17|ALT_INV_Regist\(6),
	dataf => \inst1|inst16|ALT_INV_result\(6),
	combout => \inst1|inst13|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X31_Y5_N45
\inst1|inst13|$00000|auto_generated|l1_w5_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst13|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\ = ( \inst1|inst16|result\(5) & ( (!\MUX_MAR~input_o\) # (\inst1|inst17|Regist\(5)) ) ) # ( !\inst1|inst16|result\(5) & ( (\inst1|inst17|Regist\(5) & \MUX_MAR~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst17|ALT_INV_Regist\(5),
	datad => \ALT_INV_MUX_MAR~input_o\,
	dataf => \inst1|inst16|ALT_INV_result\(5),
	combout => \inst1|inst13|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X33_Y4_N33
\inst1|inst13|$00000|auto_generated|l1_w4_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst13|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\ = ( \inst1|inst16|result\(4) & ( (!\MUX_MAR~input_o\) # (\inst1|inst17|Regist\(4)) ) ) # ( !\inst1|inst16|result\(4) & ( (\MUX_MAR~input_o\ & \inst1|inst17|Regist\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MUX_MAR~input_o\,
	datac => \inst1|inst17|ALT_INV_Regist\(4),
	dataf => \inst1|inst16|ALT_INV_result\(4),
	combout => \inst1|inst13|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X33_Y4_N12
\inst1|inst13|$00000|auto_generated|l1_w3_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst13|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\ = ( \inst1|inst16|result\(3) & ( (!\MUX_MAR~input_o\) # (\inst1|inst17|Regist\(3)) ) ) # ( !\inst1|inst16|result\(3) & ( (\inst1|inst17|Regist\(3) & \MUX_MAR~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst17|ALT_INV_Regist\(3),
	datac => \ALT_INV_MUX_MAR~input_o\,
	dataf => \inst1|inst16|ALT_INV_result\(3),
	combout => \inst1|inst13|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X34_Y4_N6
\inst1|inst1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst1|Add0~21_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst13|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\)))) ) + ( !\inst1|inst1|Regist\(2) $ 
-- (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( \inst1|inst1|Add0~26\ ))
-- \inst1|inst1|Add0~22\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst13|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\)))) ) + ( !\inst1|inst1|Regist\(2) $ 
-- (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( \inst1|inst1|Add0~26\ ))

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
	datad => \inst1|inst13|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\,
	dataf => \inst1|inst1|ALT_INV_Regist\(2),
	cin => \inst1|inst1|Add0~26\,
	sumout => \inst1|inst1|Add0~21_sumout\,
	cout => \inst1|inst1|Add0~22\);

-- Location: MLABCELL_X34_Y4_N9
\inst1|inst1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst1|Add0~17_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst13|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\)))) ) + ( !\inst1|inst1|Regist\(3) $ 
-- (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( \inst1|inst1|Add0~22\ ))
-- \inst1|inst1|Add0~18\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst13|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\)))) ) + ( !\inst1|inst1|Regist\(3) $ 
-- (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( \inst1|inst1|Add0~22\ ))

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
	datad => \inst1|inst13|$00000|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\,
	dataf => \inst1|inst1|ALT_INV_Regist\(3),
	cin => \inst1|inst1|Add0~22\,
	sumout => \inst1|inst1|Add0~17_sumout\,
	cout => \inst1|inst1|Add0~18\);

-- Location: MLABCELL_X34_Y4_N12
\inst1|inst1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst1|Add0~13_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst13|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\)))) ) + ( !\inst1|inst1|Regist\(4) $ 
-- (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( \inst1|inst1|Add0~18\ ))
-- \inst1|inst1|Add0~14\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst13|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\)))) ) + ( !\inst1|inst1|Regist\(4) $ 
-- (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( \inst1|inst1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000010100000000000000000011000000111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[0]~input_o\,
	datac => \ALT_INV_SelBus[3]~input_o\,
	datad => \inst1|inst13|$00000|auto_generated|ALT_INV_l1_w4_n0_mux_dataout~0_combout\,
	dataf => \inst1|inst1|ALT_INV_Regist\(4),
	cin => \inst1|inst1|Add0~18\,
	sumout => \inst1|inst1|Add0~13_sumout\,
	cout => \inst1|inst1|Add0~14\);

-- Location: MLABCELL_X34_Y4_N15
\inst1|inst1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst1|Add0~9_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst13|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\)))) ) + ( !\inst1|inst1|Regist\(5) $ 
-- (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( \inst1|inst1|Add0~14\ ))
-- \inst1|inst1|Add0~10\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst13|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\)))) ) + ( !\inst1|inst1|Regist\(5) $ 
-- (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( \inst1|inst1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000010100000000000000000011000000111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[0]~input_o\,
	datac => \ALT_INV_SelBus[3]~input_o\,
	datad => \inst1|inst13|$00000|auto_generated|ALT_INV_l1_w5_n0_mux_dataout~0_combout\,
	dataf => \inst1|inst1|ALT_INV_Regist\(5),
	cin => \inst1|inst1|Add0~14\,
	sumout => \inst1|inst1|Add0~9_sumout\,
	cout => \inst1|inst1|Add0~10\);

-- Location: MLABCELL_X34_Y4_N18
\inst1|inst1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst1|Add0~5_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst13|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\)))) ) + ( !\inst1|inst1|Regist\(6) $ 
-- (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( \inst1|inst1|Add0~10\ ))
-- \inst1|inst1|Add0~6\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst13|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\)))) ) + ( !\inst1|inst1|Regist\(6) $ 
-- (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( \inst1|inst1|Add0~10\ ))

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
	datad => \inst1|inst13|$00000|auto_generated|ALT_INV_l1_w6_n0_mux_dataout~0_combout\,
	dataf => \inst1|inst1|ALT_INV_Regist\(6),
	cin => \inst1|inst1|Add0~10\,
	sumout => \inst1|inst1|Add0~5_sumout\,
	cout => \inst1|inst1|Add0~6\);

-- Location: MLABCELL_X34_Y4_N42
\inst1|inst1|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst1|Mux1~1_combout\ = ( !\SelBus[1]~input_o\ & ( ((!\inst1|inst8|Mux3~0_combout\ & (\inst1|inst13|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\ & (\inst1|inst8|Regist[4]~0_combout\))) # (\inst1|inst8|Mux3~0_combout\ & 
-- (((\inst1|inst13|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\ & \inst1|inst8|Regist[4]~0_combout\)) # (\inst1|inst1|Add0~5_sumout\)))) # (\inst1|inst1|Mux1~0_combout\) ) ) # ( \SelBus[1]~input_o\ & ( ((!\inst1|inst8|Mux3~0_combout\ & 
-- (!\inst1|inst1|Regist\(6) & (\inst1|inst8|Regist[4]~0_combout\))) # (\inst1|inst8|Mux3~0_combout\ & (((!\inst1|inst1|Regist\(6) & \inst1|inst8|Regist[4]~0_combout\)) # (\inst1|inst1|Add0~5_sumout\)))) # (\inst1|inst1|Mux1~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011001100111111001100111111001101110111011111110111011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Mux3~0_combout\,
	datab => \inst1|inst1|ALT_INV_Mux1~0_combout\,
	datac => \inst1|inst1|ALT_INV_Regist\(6),
	datad => \inst1|inst8|ALT_INV_Regist[4]~0_combout\,
	datae => \ALT_INV_SelBus[1]~input_o\,
	dataf => \inst1|inst1|ALT_INV_Add0~5_sumout\,
	datag => \inst1|inst13|$00000|auto_generated|ALT_INV_l1_w6_n0_mux_dataout~0_combout\,
	combout => \inst1|inst1|Mux1~1_combout\);

-- Location: IOIBUF_X89_Y35_N44
\Rst~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Rst,
	o => \Rst~input_o\);

-- Location: CLKCTRL_G8
\Rst~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \Rst~input_o\,
	outclk => \Rst~inputCLKENA0_outclk\);

-- Location: LABCELL_X33_Y4_N27
\inst1|inst8|Regist[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst8|Regist[4]~1_combout\ = ( \inst1|inst8|Regist[4]~0_combout\ & ( (\SelBus[3]~input_o\ & !\SelBus[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SelBus[3]~input_o\,
	datad => \ALT_INV_SelBus[1]~input_o\,
	dataf => \inst1|inst8|ALT_INV_Regist[4]~0_combout\,
	combout => \inst1|inst8|Regist[4]~1_combout\);

-- Location: IOIBUF_X52_Y0_N35
\SelRegD[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SelRegD(2),
	o => \SelRegD[2]~input_o\);

-- Location: IOIBUF_X28_Y0_N18
\SelRegD[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SelRegD(0),
	o => \SelRegD[0]~input_o\);

-- Location: IOIBUF_X40_Y0_N52
\SelRegD[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SelRegD(1),
	o => \SelRegD[1]~input_o\);

-- Location: IOIBUF_X30_Y0_N1
\EnDec~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EnDec,
	o => \EnDec~input_o\);

-- Location: IOIBUF_X8_Y0_N35
\SelRegD[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SelRegD(3),
	o => \SelRegD[3]~input_o\);

-- Location: LABCELL_X31_Y1_N48
\inst1|inst6|Regist[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst6|Regist[6]~0_combout\ = ( \SelBus[2]~input_o\ & ( \SelBus[0]~input_o\ & ( (!\SelBus[3]~input_o\ & (\EnDec~input_o\ & !\SelRegD[3]~input_o\)) ) ) ) # ( !\SelBus[2]~input_o\ & ( \SelBus[0]~input_o\ & ( (\EnDec~input_o\ & !\SelRegD[3]~input_o\) ) 
-- ) ) # ( \SelBus[2]~input_o\ & ( !\SelBus[0]~input_o\ & ( (!\SelBus[3]~input_o\ & (\EnDec~input_o\ & !\SelRegD[3]~input_o\)) ) ) ) # ( !\SelBus[2]~input_o\ & ( !\SelBus[0]~input_o\ & ( (\EnDec~input_o\ & (!\SelRegD[3]~input_o\ & ((\SelBus[3]~input_o\) # 
-- (\SelBus[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000000000011000000000000001111000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[3]~input_o\,
	datac => \ALT_INV_EnDec~input_o\,
	datad => \ALT_INV_SelRegD[3]~input_o\,
	datae => \ALT_INV_SelBus[2]~input_o\,
	dataf => \ALT_INV_SelBus[0]~input_o\,
	combout => \inst1|inst6|Regist[6]~0_combout\);

-- Location: LABCELL_X35_Y4_N33
\inst1|inst1|Regist[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst1|Regist[6]~0_combout\ = ( \SelRegD[1]~input_o\ & ( \inst1|inst6|Regist[6]~0_combout\ & ( (\SelRegD[2]~input_o\ & \SelRegD[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelRegD[2]~input_o\,
	datad => \ALT_INV_SelRegD[0]~input_o\,
	datae => \ALT_INV_SelRegD[1]~input_o\,
	dataf => \inst1|inst6|ALT_INV_Regist[6]~0_combout\,
	combout => \inst1|inst1|Regist[6]~0_combout\);

-- Location: FF_X34_Y4_N44
\inst1|inst1|Regist[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst1|Mux1~1_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[4]~1_combout\,
	ena => \inst1|inst1|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst1|Regist\(6));

-- Location: LABCELL_X35_Y4_N57
\inst1|inst1|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst1|Mux2~0_combout\ = ( \SelBus[2]~input_o\ & ( \inst1|inst1|Regist\(6) & ( (\inst1|inst1|Regist\(4)) # (\SelBus[0]~input_o\) ) ) ) # ( \SelBus[2]~input_o\ & ( !\inst1|inst1|Regist\(6) & ( (!\SelBus[0]~input_o\ & \inst1|inst1|Regist\(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101000000000000000000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[0]~input_o\,
	datac => \inst1|inst1|ALT_INV_Regist\(4),
	datae => \ALT_INV_SelBus[2]~input_o\,
	dataf => \inst1|inst1|ALT_INV_Regist\(6),
	combout => \inst1|inst1|Mux2~0_combout\);

-- Location: MLABCELL_X34_Y4_N30
\inst1|inst1|Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst1|Mux2~1_combout\ = ( !\SelBus[1]~input_o\ & ( ((!\inst1|inst8|Mux3~0_combout\ & (\inst1|inst13|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\ & (\inst1|inst8|Regist[4]~0_combout\))) # (\inst1|inst8|Mux3~0_combout\ & 
-- (((\inst1|inst13|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\ & \inst1|inst8|Regist[4]~0_combout\)) # (\inst1|inst1|Add0~9_sumout\)))) # (\inst1|inst1|Mux2~0_combout\) ) ) # ( \SelBus[1]~input_o\ & ( ((!\inst1|inst8|Mux3~0_combout\ & 
-- (!\inst1|inst1|Regist\(5) & (\inst1|inst8|Regist[4]~0_combout\))) # (\inst1|inst8|Mux3~0_combout\ & (((!\inst1|inst1|Regist\(5) & \inst1|inst8|Regist[4]~0_combout\)) # (\inst1|inst1|Add0~9_sumout\)))) # (\inst1|inst1|Mux2~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011001100111111001100111111001101110111011111110111011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Mux3~0_combout\,
	datab => \inst1|inst1|ALT_INV_Mux2~0_combout\,
	datac => \inst1|inst1|ALT_INV_Regist\(5),
	datad => \inst1|inst8|ALT_INV_Regist[4]~0_combout\,
	datae => \ALT_INV_SelBus[1]~input_o\,
	dataf => \inst1|inst1|ALT_INV_Add0~9_sumout\,
	datag => \inst1|inst13|$00000|auto_generated|ALT_INV_l1_w5_n0_mux_dataout~0_combout\,
	combout => \inst1|inst1|Mux2~1_combout\);

-- Location: FF_X34_Y4_N32
\inst1|inst1|Regist[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst1|Mux2~1_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[4]~1_combout\,
	ena => \inst1|inst1|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst1|Regist\(5));

-- Location: LABCELL_X33_Y4_N0
\inst1|inst1|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst1|Mux3~0_combout\ = ( \inst1|inst1|Regist\(5) & ( (\SelBus[2]~input_o\ & ((\inst1|inst1|Regist\(3)) # (\SelBus[0]~input_o\))) ) ) # ( !\inst1|inst1|Regist\(5) & ( (\SelBus[2]~input_o\ & (!\SelBus[0]~input_o\ & \inst1|inst1|Regist\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010000010001010101010001000101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[2]~input_o\,
	datab => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst1|inst1|ALT_INV_Regist\(3),
	dataf => \inst1|inst1|ALT_INV_Regist\(5),
	combout => \inst1|inst1|Mux3~0_combout\);

-- Location: MLABCELL_X34_Y4_N48
\inst1|inst1|Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst1|Mux3~1_combout\ = ( !\SelBus[1]~input_o\ & ( ((!\inst1|inst8|Mux3~0_combout\ & (\inst1|inst13|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\ & (\inst1|inst8|Regist[4]~0_combout\))) # (\inst1|inst8|Mux3~0_combout\ & 
-- (((\inst1|inst13|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\ & \inst1|inst8|Regist[4]~0_combout\)) # (\inst1|inst1|Add0~13_sumout\)))) # (\inst1|inst1|Mux3~0_combout\) ) ) # ( \SelBus[1]~input_o\ & ( ((!\inst1|inst8|Mux3~0_combout\ & 
-- (!\inst1|inst1|Regist\(4) & (\inst1|inst8|Regist[4]~0_combout\))) # (\inst1|inst8|Mux3~0_combout\ & (((!\inst1|inst1|Regist\(4) & \inst1|inst8|Regist[4]~0_combout\)) # (\inst1|inst1|Add0~13_sumout\)))) # (\inst1|inst1|Mux3~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011001100111111001100111111001101110111011111110111011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Mux3~0_combout\,
	datab => \inst1|inst1|ALT_INV_Mux3~0_combout\,
	datac => \inst1|inst1|ALT_INV_Regist\(4),
	datad => \inst1|inst8|ALT_INV_Regist[4]~0_combout\,
	datae => \ALT_INV_SelBus[1]~input_o\,
	dataf => \inst1|inst1|ALT_INV_Add0~13_sumout\,
	datag => \inst1|inst13|$00000|auto_generated|ALT_INV_l1_w4_n0_mux_dataout~0_combout\,
	combout => \inst1|inst1|Mux3~1_combout\);

-- Location: FF_X34_Y4_N50
\inst1|inst1|Regist[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst1|Mux3~1_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[4]~1_combout\,
	ena => \inst1|inst1|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst1|Regist\(4));

-- Location: LABCELL_X35_Y3_N39
\inst1|inst1|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst1|Mux4~0_combout\ = ( \inst1|inst1|Regist\(2) & ( (\SelBus[2]~input_o\ & ((!\SelBus[0]~input_o\) # (\inst1|inst1|Regist\(4)))) ) ) # ( !\inst1|inst1|Regist\(2) & ( (\SelBus[2]~input_o\ & (\inst1|inst1|Regist\(4) & \SelBus[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101010101010000010100000000000001010101010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[2]~input_o\,
	datac => \inst1|inst1|ALT_INV_Regist\(4),
	datad => \ALT_INV_SelBus[0]~input_o\,
	datae => \inst1|inst1|ALT_INV_Regist\(2),
	combout => \inst1|inst1|Mux4~0_combout\);

-- Location: MLABCELL_X34_Y4_N54
\inst1|inst1|Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst1|Mux4~1_combout\ = ( !\SelBus[1]~input_o\ & ( ((!\inst1|inst8|Mux3~0_combout\ & (\inst1|inst13|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\ & (\inst1|inst8|Regist[4]~0_combout\))) # (\inst1|inst8|Mux3~0_combout\ & 
-- (((\inst1|inst13|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\ & \inst1|inst8|Regist[4]~0_combout\)) # (\inst1|inst1|Add0~17_sumout\)))) # (\inst1|inst1|Mux4~0_combout\) ) ) # ( \SelBus[1]~input_o\ & ( ((!\inst1|inst8|Mux3~0_combout\ & 
-- (!\inst1|inst1|Regist\(3) & (\inst1|inst8|Regist[4]~0_combout\))) # (\inst1|inst8|Mux3~0_combout\ & (((!\inst1|inst1|Regist\(3) & \inst1|inst8|Regist[4]~0_combout\)) # (\inst1|inst1|Add0~17_sumout\)))) # (\inst1|inst1|Mux4~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011001100111111001100111111001101110111011111110111011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Mux3~0_combout\,
	datab => \inst1|inst1|ALT_INV_Mux4~0_combout\,
	datac => \inst1|inst1|ALT_INV_Regist\(3),
	datad => \inst1|inst8|ALT_INV_Regist[4]~0_combout\,
	datae => \ALT_INV_SelBus[1]~input_o\,
	dataf => \inst1|inst1|ALT_INV_Add0~17_sumout\,
	datag => \inst1|inst13|$00000|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\,
	combout => \inst1|inst1|Mux4~1_combout\);

-- Location: FF_X34_Y4_N56
\inst1|inst1|Regist[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst1|Mux4~1_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[4]~1_combout\,
	ena => \inst1|inst1|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst1|Regist\(3));

-- Location: M10K_X26_Y1_N0
\inst1|inst|altsyncram_component|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "ElMicro:inst1|RP:inst|altsyncram:altsyncram_component|altsyncram_rev3:auto_generated|ALTSYNCRAM",
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
	clk0 => \Clk~inputCLKENA0_outclk\,
	portadatain => \inst1|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \inst1|inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: MLABCELL_X28_Y4_N15
\inst1|inst7|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst7|Mux2~0_combout\ = ( \inst1|inst16|result\(5) & ( (!\SelBus[1]~input_o\ & (((\inst1|inst|altsyncram_component|auto_generated|q_a\(5)) # (\MUX_MDR~input_o\)))) # (\SelBus[1]~input_o\ & (!\inst1|inst7|Regist\(5))) ) ) # ( 
-- !\inst1|inst16|result\(5) & ( (!\SelBus[1]~input_o\ & (((!\MUX_MDR~input_o\ & \inst1|inst|altsyncram_component|auto_generated|q_a\(5))))) # (\SelBus[1]~input_o\ & (!\inst1|inst7|Regist\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001011100010001000101110001000101110111011100010111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst7|ALT_INV_Regist\(5),
	datab => \ALT_INV_SelBus[1]~input_o\,
	datac => \ALT_INV_MUX_MDR~input_o\,
	datad => \inst1|inst|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	dataf => \inst1|inst16|ALT_INV_result\(5),
	combout => \inst1|inst7|Mux2~0_combout\);

-- Location: LABCELL_X27_Y4_N21
\inst1|inst7|Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst7|Mux2~1_combout\ = ( \inst1|inst7|Regist\(4) & ( (\SelBus[2]~input_o\ & ((!\SelBus[0]~input_o\) # (\inst1|inst7|Regist\(6)))) ) ) # ( !\inst1|inst7|Regist\(4) & ( (\SelBus[2]~input_o\ & (\SelBus[0]~input_o\ & \inst1|inst7|Regist\(6))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100110000001100110011000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SelBus[2]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst1|inst7|ALT_INV_Regist\(6),
	dataf => \inst1|inst7|ALT_INV_Regist\(4),
	combout => \inst1|inst7|Mux2~1_combout\);

-- Location: MLABCELL_X28_Y4_N57
\inst1|inst23|$00000|auto_generated|l1_w5_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst23|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\ = ( \inst1|inst16|result\(5) & ( (\inst1|inst|altsyncram_component|auto_generated|q_a\(5)) # (\MUX_MDR~input_o\) ) ) # ( !\inst1|inst16|result\(5) & ( (!\MUX_MDR~input_o\ & 
-- \inst1|inst|altsyncram_component|auto_generated|q_a\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_MUX_MDR~input_o\,
	datad => \inst1|inst|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	dataf => \inst1|inst16|ALT_INV_result\(5),
	combout => \inst1|inst23|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X29_Y4_N12
\inst1|inst23|$00000|auto_generated|l1_w4_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst23|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\ = ( \inst1|inst16|result\(4) & ( (\inst1|inst|altsyncram_component|auto_generated|q_a\(4)) # (\MUX_MDR~input_o\) ) ) # ( !\inst1|inst16|result\(4) & ( (!\MUX_MDR~input_o\ & 
-- \inst1|inst|altsyncram_component|auto_generated|q_a\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_MUX_MDR~input_o\,
	datad => \inst1|inst|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	dataf => \inst1|inst16|ALT_INV_result\(4),
	combout => \inst1|inst23|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X29_Y4_N57
\inst1|inst23|$00000|auto_generated|l1_w3_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst23|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\ = (!\MUX_MDR~input_o\ & ((\inst1|inst|altsyncram_component|auto_generated|q_a\(3)))) # (\MUX_MDR~input_o\ & (\inst1|inst16|result\(3)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MUX_MDR~input_o\,
	datac => \inst1|inst16|ALT_INV_result\(3),
	datad => \inst1|inst|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	combout => \inst1|inst23|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X29_Y4_N21
\inst1|inst23|$00000|auto_generated|l1_w2_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst23|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ = ( \inst1|inst16|result\(2) & ( (\inst1|inst|altsyncram_component|auto_generated|q_a\(2)) # (\MUX_MDR~input_o\) ) ) # ( !\inst1|inst16|result\(2) & ( (!\MUX_MDR~input_o\ & 
-- \inst1|inst|altsyncram_component|auto_generated|q_a\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_MUX_MDR~input_o\,
	datad => \inst1|inst|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	dataf => \inst1|inst16|ALT_INV_result\(2),
	combout => \inst1|inst23|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X29_Y4_N0
\inst1|inst23|$00000|auto_generated|l1_w1_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst23|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ = ( \inst1|inst16|result\(1) & ( (\inst1|inst|altsyncram_component|auto_generated|q_a\(1)) # (\MUX_MDR~input_o\) ) ) # ( !\inst1|inst16|result\(1) & ( (!\MUX_MDR~input_o\ & 
-- \inst1|inst|altsyncram_component|auto_generated|q_a\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MUX_MDR~input_o\,
	datac => \inst1|inst|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	dataf => \inst1|inst16|ALT_INV_result\(1),
	combout => \inst1|inst23|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X28_Y3_N51
\inst1|inst23|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst23|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst1|inst16|result\(0) & ( (\MUX_MDR~input_o\) # (\inst1|inst|altsyncram_component|auto_generated|q_a\(0)) ) ) # ( !\inst1|inst16|result\(0) & ( 
-- (\inst1|inst|altsyncram_component|auto_generated|q_a\(0) & !\MUX_MDR~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	datad => \ALT_INV_MUX_MDR~input_o\,
	dataf => \inst1|inst16|ALT_INV_result\(0),
	combout => \inst1|inst23|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X29_Y4_N30
\inst1|inst7|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst7|Add0~29_sumout\ = SUM(( (!\SelBus[3]~input_o\) # ((\inst1|inst23|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\) # (\SelBus[1]~input_o\)) ) + ( !\inst1|inst7|Regist\(0) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( !VCC 
-- ))
-- \inst1|inst7|Add0~30\ = CARRY(( (!\SelBus[3]~input_o\) # ((\inst1|inst23|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\) # (\SelBus[1]~input_o\)) ) + ( !\inst1|inst7|Regist\(0) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000001011101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[3]~input_o\,
	datab => \ALT_INV_SelBus[1]~input_o\,
	datad => \inst1|inst23|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	dataf => \inst1|inst7|ALT_INV_Regist\(0),
	cin => GND,
	sumout => \inst1|inst7|Add0~29_sumout\,
	cout => \inst1|inst7|Add0~30\);

-- Location: LABCELL_X29_Y4_N33
\inst1|inst7|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst7|Add0~25_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst23|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\)))) ) + ( !\inst1|inst7|Regist\(1) $ 
-- (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( \inst1|inst7|Add0~30\ ))
-- \inst1|inst7|Add0~26\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst23|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\)))) ) + ( !\inst1|inst7|Regist\(1) $ 
-- (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( \inst1|inst7|Add0~30\ ))

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
	datad => \inst1|inst23|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\,
	dataf => \inst1|inst7|ALT_INV_Regist\(1),
	cin => \inst1|inst7|Add0~30\,
	sumout => \inst1|inst7|Add0~25_sumout\,
	cout => \inst1|inst7|Add0~26\);

-- Location: LABCELL_X29_Y4_N36
\inst1|inst7|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst7|Add0~21_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst23|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\)))) ) + ( !\inst1|inst7|Regist\(2) $ 
-- (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( \inst1|inst7|Add0~26\ ))
-- \inst1|inst7|Add0~22\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst23|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\)))) ) + ( !\inst1|inst7|Regist\(2) $ 
-- (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( \inst1|inst7|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000010100000000000000000011000000111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[0]~input_o\,
	datac => \ALT_INV_SelBus[3]~input_o\,
	datad => \inst1|inst23|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\,
	dataf => \inst1|inst7|ALT_INV_Regist\(2),
	cin => \inst1|inst7|Add0~26\,
	sumout => \inst1|inst7|Add0~21_sumout\,
	cout => \inst1|inst7|Add0~22\);

-- Location: LABCELL_X29_Y4_N39
\inst1|inst7|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst7|Add0~17_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst23|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\)))) ) + ( !\inst1|inst7|Regist\(3) $ 
-- (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( \inst1|inst7|Add0~22\ ))
-- \inst1|inst7|Add0~18\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst23|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\)))) ) + ( !\inst1|inst7|Regist\(3) $ 
-- (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( \inst1|inst7|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000010100000000000000000011000000111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[0]~input_o\,
	datac => \ALT_INV_SelBus[3]~input_o\,
	datad => \inst1|inst23|$00000|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\,
	dataf => \inst1|inst7|ALT_INV_Regist\(3),
	cin => \inst1|inst7|Add0~22\,
	sumout => \inst1|inst7|Add0~17_sumout\,
	cout => \inst1|inst7|Add0~18\);

-- Location: LABCELL_X29_Y4_N42
\inst1|inst7|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst7|Add0~13_sumout\ = SUM(( !\inst1|inst7|Regist\(4) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & 
-- ((\inst1|inst23|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\)))) ) + ( \inst1|inst7|Add0~18\ ))
-- \inst1|inst7|Add0~14\ = CARRY(( !\inst1|inst7|Regist\(4) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & 
-- ((\inst1|inst23|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\)))) ) + ( \inst1|inst7|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011111100010100000000000000000000010111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[0]~input_o\,
	datac => \ALT_INV_SelBus[3]~input_o\,
	datad => \inst1|inst7|ALT_INV_Regist\(4),
	dataf => \inst1|inst23|$00000|auto_generated|ALT_INV_l1_w4_n0_mux_dataout~0_combout\,
	cin => \inst1|inst7|Add0~18\,
	sumout => \inst1|inst7|Add0~13_sumout\,
	cout => \inst1|inst7|Add0~14\);

-- Location: LABCELL_X29_Y4_N45
\inst1|inst7|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst7|Add0~9_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst23|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\)))) ) + ( !\inst1|inst7|Regist\(5) $ 
-- (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( \inst1|inst7|Add0~14\ ))
-- \inst1|inst7|Add0~10\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst23|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\)))) ) + ( !\inst1|inst7|Regist\(5) $ 
-- (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( \inst1|inst7|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000010100000000000000000011000000111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[0]~input_o\,
	datac => \ALT_INV_SelBus[3]~input_o\,
	datad => \inst1|inst23|$00000|auto_generated|ALT_INV_l1_w5_n0_mux_dataout~0_combout\,
	dataf => \inst1|inst7|ALT_INV_Regist\(5),
	cin => \inst1|inst7|Add0~14\,
	sumout => \inst1|inst7|Add0~9_sumout\,
	cout => \inst1|inst7|Add0~10\);

-- Location: MLABCELL_X28_Y4_N48
\inst1|inst7|Mux2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst7|Mux2~2_combout\ = ( \inst1|inst7|Add0~9_sumout\ & ( (((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst7|Mux2~0_combout\)) # (\inst1|inst7|Mux2~1_combout\)) # (\inst1|inst8|Mux3~0_combout\) ) ) # ( !\inst1|inst7|Add0~9_sumout\ & ( 
-- ((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst7|Mux2~0_combout\)) # (\inst1|inst7|Mux2~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111111000000111111111101010111111111110101011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Mux3~0_combout\,
	datab => \inst1|inst8|ALT_INV_Regist[4]~0_combout\,
	datac => \inst1|inst7|ALT_INV_Mux2~0_combout\,
	datad => \inst1|inst7|ALT_INV_Mux2~1_combout\,
	dataf => \inst1|inst7|ALT_INV_Add0~9_sumout\,
	combout => \inst1|inst7|Mux2~2_combout\);

-- Location: LABCELL_X31_Y1_N42
\inst1|inst8|Regist[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst8|Regist[4]~2_combout\ = ( \SelBus[2]~input_o\ & ( \SelBus[0]~input_o\ & ( (!\SelBus[3]~input_o\ & (\EnDec~input_o\ & \SelRegD[3]~input_o\)) ) ) ) # ( !\SelBus[2]~input_o\ & ( \SelBus[0]~input_o\ & ( (\EnDec~input_o\ & \SelRegD[3]~input_o\) ) ) 
-- ) # ( \SelBus[2]~input_o\ & ( !\SelBus[0]~input_o\ & ( (!\SelBus[3]~input_o\ & (\EnDec~input_o\ & \SelRegD[3]~input_o\)) ) ) ) # ( !\SelBus[2]~input_o\ & ( !\SelBus[0]~input_o\ & ( (\EnDec~input_o\ & (\SelRegD[3]~input_o\ & ((\SelBus[3]~input_o\) # 
-- (\SelBus[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000111000000000000110000000000000011110000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[3]~input_o\,
	datac => \ALT_INV_EnDec~input_o\,
	datad => \ALT_INV_SelRegD[3]~input_o\,
	datae => \ALT_INV_SelBus[2]~input_o\,
	dataf => \ALT_INV_SelBus[0]~input_o\,
	combout => \inst1|inst8|Regist[4]~2_combout\);

-- Location: MLABCELL_X28_Y5_N36
\inst1|inst7|Regist[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst7|Regist[6]~0_combout\ = ( !\SelRegD[1]~input_o\ & ( !\SelRegD[2]~input_o\ & ( (\inst1|inst8|Regist[4]~2_combout\ & !\SelRegD[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst8|ALT_INV_Regist[4]~2_combout\,
	datad => \ALT_INV_SelRegD[0]~input_o\,
	datae => \ALT_INV_SelRegD[1]~input_o\,
	dataf => \ALT_INV_SelRegD[2]~input_o\,
	combout => \inst1|inst7|Regist[6]~0_combout\);

-- Location: FF_X28_Y4_N50
\inst1|inst7|Regist[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst7|Mux2~2_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[4]~1_combout\,
	ena => \inst1|inst7|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst7|Regist\(5));

-- Location: LABCELL_X27_Y4_N12
\inst1|inst7|Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst7|Mux3~1_combout\ = ( \SelBus[0]~input_o\ & ( (\SelBus[2]~input_o\ & \inst1|inst7|Regist\(5)) ) ) # ( !\SelBus[0]~input_o\ & ( (\SelBus[2]~input_o\ & \inst1|inst7|Regist\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SelBus[2]~input_o\,
	datac => \inst1|inst7|ALT_INV_Regist\(5),
	datad => \inst1|inst7|ALT_INV_Regist\(3),
	dataf => \ALT_INV_SelBus[0]~input_o\,
	combout => \inst1|inst7|Mux3~1_combout\);

-- Location: LABCELL_X29_Y4_N3
\inst1|inst7|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst7|Mux3~0_combout\ = ( \inst1|inst16|result\(4) & ( (!\SelBus[1]~input_o\ & (((\inst1|inst|altsyncram_component|auto_generated|q_a\(4))) # (\MUX_MDR~input_o\))) # (\SelBus[1]~input_o\ & (((!\inst1|inst7|Regist\(4))))) ) ) # ( 
-- !\inst1|inst16|result\(4) & ( (!\SelBus[1]~input_o\ & (!\MUX_MDR~input_o\ & (\inst1|inst|altsyncram_component|auto_generated|q_a\(4)))) # (\SelBus[1]~input_o\ & (((!\inst1|inst7|Regist\(4))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101100001000001110110000100001111111010011000111111101001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MUX_MDR~input_o\,
	datab => \ALT_INV_SelBus[1]~input_o\,
	datac => \inst1|inst|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	datad => \inst1|inst7|ALT_INV_Regist\(4),
	dataf => \inst1|inst16|ALT_INV_result\(4),
	combout => \inst1|inst7|Mux3~0_combout\);

-- Location: MLABCELL_X28_Y4_N51
\inst1|inst7|Mux3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst7|Mux3~2_combout\ = ( \inst1|inst7|Add0~13_sumout\ & ( (((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst7|Mux3~0_combout\)) # (\inst1|inst7|Mux3~1_combout\)) # (\inst1|inst8|Mux3~0_combout\) ) ) # ( !\inst1|inst7|Add0~13_sumout\ & ( 
-- ((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst7|Mux3~0_combout\)) # (\inst1|inst7|Mux3~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111111000011110011111101011111011111110101111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Mux3~0_combout\,
	datab => \inst1|inst8|ALT_INV_Regist[4]~0_combout\,
	datac => \inst1|inst7|ALT_INV_Mux3~1_combout\,
	datad => \inst1|inst7|ALT_INV_Mux3~0_combout\,
	dataf => \inst1|inst7|ALT_INV_Add0~13_sumout\,
	combout => \inst1|inst7|Mux3~2_combout\);

-- Location: FF_X28_Y4_N53
\inst1|inst7|Regist[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst7|Mux3~2_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[4]~1_combout\,
	ena => \inst1|inst7|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst7|Regist\(4));

-- Location: LABCELL_X29_Y4_N27
\inst1|inst7|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst7|Mux6~0_combout\ = ( \inst1|inst16|result\(1) & ( (!\SelBus[1]~input_o\ & (((\inst1|inst|altsyncram_component|auto_generated|q_a\(1))) # (\MUX_MDR~input_o\))) # (\SelBus[1]~input_o\ & (((!\inst1|inst7|Regist\(1))))) ) ) # ( 
-- !\inst1|inst16|result\(1) & ( (!\SelBus[1]~input_o\ & (!\MUX_MDR~input_o\ & ((\inst1|inst|altsyncram_component|auto_generated|q_a\(1))))) # (\SelBus[1]~input_o\ & (((!\inst1|inst7|Regist\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000010111000001100001011100001110100111111000111010011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MUX_MDR~input_o\,
	datab => \ALT_INV_SelBus[1]~input_o\,
	datac => \inst1|inst7|ALT_INV_Regist\(1),
	datad => \inst1|inst|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	dataf => \inst1|inst16|ALT_INV_result\(1),
	combout => \inst1|inst7|Mux6~0_combout\);

-- Location: MLABCELL_X25_Y4_N18
\inst1|inst7|Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst7|Mux6~1_combout\ = ( \inst1|inst7|Regist\(2) & ( (\SelBus[2]~input_o\ & ((\inst1|inst7|Regist\(0)) # (\SelBus[0]~input_o\))) ) ) # ( !\inst1|inst7|Regist\(2) & ( (!\SelBus[0]~input_o\ & (\inst1|inst7|Regist\(0) & \SelBus[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110000000000001111110000000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SelBus[0]~input_o\,
	datac => \inst1|inst7|ALT_INV_Regist\(0),
	datad => \ALT_INV_SelBus[2]~input_o\,
	dataf => \inst1|inst7|ALT_INV_Regist\(2),
	combout => \inst1|inst7|Mux6~1_combout\);

-- Location: MLABCELL_X25_Y4_N42
\inst1|inst7|Mux6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst7|Mux6~2_combout\ = ( \inst1|inst7|Mux6~1_combout\ ) # ( !\inst1|inst7|Mux6~1_combout\ & ( (!\inst1|inst7|Mux6~0_combout\ & (((\inst1|inst8|Mux3~0_combout\ & \inst1|inst7|Add0~25_sumout\)))) # (\inst1|inst7|Mux6~0_combout\ & 
-- (((\inst1|inst8|Mux3~0_combout\ & \inst1|inst7|Add0~25_sumout\)) # (\inst1|inst8|Regist[4]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011111000100010001111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst7|ALT_INV_Mux6~0_combout\,
	datab => \inst1|inst8|ALT_INV_Regist[4]~0_combout\,
	datac => \inst1|inst8|ALT_INV_Mux3~0_combout\,
	datad => \inst1|inst7|ALT_INV_Add0~25_sumout\,
	dataf => \inst1|inst7|ALT_INV_Mux6~1_combout\,
	combout => \inst1|inst7|Mux6~2_combout\);

-- Location: FF_X25_Y4_N44
\inst1|inst7|Regist[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst7|Mux6~2_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[4]~1_combout\,
	ena => \inst1|inst7|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst7|Regist\(1));

-- Location: LABCELL_X29_Y4_N24
\inst1|inst7|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst7|Mux5~0_combout\ = ( \inst1|inst16|result\(2) & ( (!\SelBus[1]~input_o\ & (((\inst1|inst|altsyncram_component|auto_generated|q_a\(2))) # (\MUX_MDR~input_o\))) # (\SelBus[1]~input_o\ & (((!\inst1|inst7|Regist\(2))))) ) ) # ( 
-- !\inst1|inst16|result\(2) & ( (!\SelBus[1]~input_o\ & (!\MUX_MDR~input_o\ & ((\inst1|inst|altsyncram_component|auto_generated|q_a\(2))))) # (\SelBus[1]~input_o\ & (((!\inst1|inst7|Regist\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000010111000001100001011100001110100111111000111010011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MUX_MDR~input_o\,
	datab => \ALT_INV_SelBus[1]~input_o\,
	datac => \inst1|inst7|ALT_INV_Regist\(2),
	datad => \inst1|inst|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	dataf => \inst1|inst16|ALT_INV_result\(2),
	combout => \inst1|inst7|Mux5~0_combout\);

-- Location: MLABCELL_X25_Y4_N21
\inst1|inst7|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst7|Mux5~1_combout\ = ( \inst1|inst7|Regist\(3) & ( (\SelBus[2]~input_o\ & ((\inst1|inst7|Regist\(1)) # (\SelBus[0]~input_o\))) ) ) # ( !\inst1|inst7|Regist\(3) & ( (!\SelBus[0]~input_o\ & (\inst1|inst7|Regist\(1) & \SelBus[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110000000000001111110000000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SelBus[0]~input_o\,
	datac => \inst1|inst7|ALT_INV_Regist\(1),
	datad => \ALT_INV_SelBus[2]~input_o\,
	dataf => \inst1|inst7|ALT_INV_Regist\(3),
	combout => \inst1|inst7|Mux5~1_combout\);

-- Location: MLABCELL_X25_Y4_N33
\inst1|inst7|Mux5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst7|Mux5~2_combout\ = ( \inst1|inst7|Add0~21_sumout\ & ( (((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst7|Mux5~0_combout\)) # (\inst1|inst7|Mux5~1_combout\)) # (\inst1|inst8|Mux3~0_combout\) ) ) # ( !\inst1|inst7|Add0~21_sumout\ & ( 
-- ((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst7|Mux5~0_combout\)) # (\inst1|inst7|Mux5~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111111000000111111111101010111111111110101011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Mux3~0_combout\,
	datab => \inst1|inst8|ALT_INV_Regist[4]~0_combout\,
	datac => \inst1|inst7|ALT_INV_Mux5~0_combout\,
	datad => \inst1|inst7|ALT_INV_Mux5~1_combout\,
	dataf => \inst1|inst7|ALT_INV_Add0~21_sumout\,
	combout => \inst1|inst7|Mux5~2_combout\);

-- Location: FF_X25_Y4_N35
\inst1|inst7|Regist[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst7|Mux5~2_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[4]~1_combout\,
	ena => \inst1|inst7|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst7|Regist\(2));

-- Location: MLABCELL_X25_Y4_N6
\inst1|inst16|result[2]~310\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|result[2]~310_combout\ = ( \inst1|inst16|_~6_combout\ & ( \inst1|inst18|Regist\(2) & ( (!\inst1|inst16|result\(2) & (!\inst1|inst16|_~5_combout\ & ((!\inst1|inst7|Regist\(2)) # (!\inst1|inst16|_~4_combout\)))) ) ) ) # ( 
-- !\inst1|inst16|_~6_combout\ & ( \inst1|inst18|Regist\(2) & ( (!\inst1|inst16|_~5_combout\ & ((!\inst1|inst7|Regist\(2)) # (!\inst1|inst16|_~4_combout\))) ) ) ) # ( \inst1|inst16|_~6_combout\ & ( !\inst1|inst18|Regist\(2) & ( (!\inst1|inst16|result\(2) & 
-- ((!\inst1|inst7|Regist\(2)) # (!\inst1|inst16|_~4_combout\))) ) ) ) # ( !\inst1|inst16|_~6_combout\ & ( !\inst1|inst18|Regist\(2) & ( (!\inst1|inst7|Regist\(2)) # (!\inst1|inst16|_~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000101010101010000011001100110000001000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst16|ALT_INV_result\(2),
	datab => \inst1|inst16|ALT_INV__~5_combout\,
	datac => \inst1|inst7|ALT_INV_Regist\(2),
	datad => \inst1|inst16|ALT_INV__~4_combout\,
	datae => \inst1|inst16|ALT_INV__~6_combout\,
	dataf => \inst1|inst18|ALT_INV_Regist\(2),
	combout => \inst1|inst16|result[2]~310_combout\);

-- Location: LABCELL_X33_Y3_N48
\inst1|inst16|_~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|_~17_combout\ = ( \muxSel[0]~input_o\ & ( (\muxSel[4]~input_o\ & !\muxSel[5]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_muxSel[4]~input_o\,
	datac => \ALT_INV_muxSel[5]~input_o\,
	dataf => \ALT_INV_muxSel[0]~input_o\,
	combout => \inst1|inst16|_~17_combout\);

-- Location: LABCELL_X36_Y4_N3
\inst1|inst16|_~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|_~18_combout\ = ( !\muxSel[5]~input_o\ & ( !\muxSel[0]~input_o\ & ( (\muxSel[4]~input_o\ & \muxSel[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_muxSel[4]~input_o\,
	datac => \ALT_INV_muxSel[1]~input_o\,
	datae => \ALT_INV_muxSel[5]~input_o\,
	dataf => \ALT_INV_muxSel[0]~input_o\,
	combout => \inst1|inst16|_~18_combout\);

-- Location: IOIBUF_X50_Y0_N41
\Fuente2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Fuente2,
	o => \Fuente2~input_o\);

-- Location: LABCELL_X33_Y3_N18
\inst1|inst16|result[2]~315\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|result[2]~315_combout\ = ( \Fuente2~input_o\ & ( (!\inst1|inst16|_~17_combout\ & (\inst1|inst16|_~18_combout\ & ((!\muxSel[3]~input_o\) # (!\muxSel[2]~input_o\)))) # (\inst1|inst16|_~17_combout\ & ((!\muxSel[3]~input_o\) # 
-- ((!\muxSel[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010100111111000101010011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst16|ALT_INV__~17_combout\,
	datab => \ALT_INV_muxSel[3]~input_o\,
	datac => \ALT_INV_muxSel[2]~input_o\,
	datad => \inst1|inst16|ALT_INV__~18_combout\,
	dataf => \ALT_INV_Fuente2~input_o\,
	combout => \inst1|inst16|result[2]~315_combout\);

-- Location: MLABCELL_X34_Y5_N33
\inst1|inst16|_~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|_~22_combout\ = ( !\muxSel[0]~input_o\ & ( \muxSel[1]~input_o\ & ( (\muxSel[2]~input_o\ & (!\muxSel[5]~input_o\ & (\muxSel[3]~input_o\ & \muxSel[4]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_muxSel[2]~input_o\,
	datab => \ALT_INV_muxSel[5]~input_o\,
	datac => \ALT_INV_muxSel[3]~input_o\,
	datad => \ALT_INV_muxSel[4]~input_o\,
	datae => \ALT_INV_muxSel[0]~input_o\,
	dataf => \ALT_INV_muxSel[1]~input_o\,
	combout => \inst1|inst16|_~22_combout\);

-- Location: MLABCELL_X34_Y5_N30
\inst1|inst16|_~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|_~21_combout\ = ( !\muxSel[1]~input_o\ & ( \muxSel[0]~input_o\ & ( (\muxSel[2]~input_o\ & (!\muxSel[5]~input_o\ & (\muxSel[4]~input_o\ & \muxSel[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_muxSel[2]~input_o\,
	datab => \ALT_INV_muxSel[5]~input_o\,
	datac => \ALT_INV_muxSel[4]~input_o\,
	datad => \ALT_INV_muxSel[3]~input_o\,
	datae => \ALT_INV_muxSel[1]~input_o\,
	dataf => \ALT_INV_muxSel[0]~input_o\,
	combout => \inst1|inst16|_~21_combout\);

-- Location: MLABCELL_X34_Y5_N12
\inst1|inst16|_~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|_~20_combout\ = ( !\muxSel[0]~input_o\ & ( \muxSel[2]~input_o\ & ( (\muxSel[4]~input_o\ & (!\muxSel[5]~input_o\ & (!\muxSel[1]~input_o\ & \muxSel[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_muxSel[4]~input_o\,
	datab => \ALT_INV_muxSel[5]~input_o\,
	datac => \ALT_INV_muxSel[1]~input_o\,
	datad => \ALT_INV_muxSel[3]~input_o\,
	datae => \ALT_INV_muxSel[0]~input_o\,
	dataf => \ALT_INV_muxSel[2]~input_o\,
	combout => \inst1|inst16|_~20_combout\);

-- Location: MLABCELL_X34_Y5_N42
\inst1|inst16|_~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|_~19_combout\ = ( !\muxSel[0]~input_o\ & ( !\muxSel[2]~input_o\ & ( (\muxSel[4]~input_o\ & (!\muxSel[5]~input_o\ & (!\muxSel[1]~input_o\ & \muxSel[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_muxSel[4]~input_o\,
	datab => \ALT_INV_muxSel[5]~input_o\,
	datac => \ALT_INV_muxSel[1]~input_o\,
	datad => \ALT_INV_muxSel[3]~input_o\,
	datae => \ALT_INV_muxSel[0]~input_o\,
	dataf => \ALT_INV_muxSel[2]~input_o\,
	combout => \inst1|inst16|_~19_combout\);

-- Location: LABCELL_X36_Y4_N54
\inst1|inst16|_~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|_~23_combout\ = ( \muxSel[1]~input_o\ & ( \muxSel[0]~input_o\ & ( (\muxSel[4]~input_o\ & (\muxSel[2]~input_o\ & (\muxSel[3]~input_o\ & !\muxSel[5]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_muxSel[4]~input_o\,
	datab => \ALT_INV_muxSel[2]~input_o\,
	datac => \ALT_INV_muxSel[3]~input_o\,
	datad => \ALT_INV_muxSel[5]~input_o\,
	datae => \ALT_INV_muxSel[1]~input_o\,
	dataf => \ALT_INV_muxSel[0]~input_o\,
	combout => \inst1|inst16|_~23_combout\);

-- Location: LABCELL_X36_Y4_N24
\inst1|inst16|result[2]~316\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|result[2]~316_combout\ = ( \inst1|inst16|_~23_combout\ & ( \Fuente2~input_o\ ) ) # ( !\inst1|inst16|_~23_combout\ & ( \Fuente2~input_o\ & ( (((\inst1|inst16|_~19_combout\) # (\inst1|inst16|_~20_combout\)) # (\inst1|inst16|_~21_combout\)) # 
-- (\inst1|inst16|_~22_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst16|ALT_INV__~22_combout\,
	datab => \inst1|inst16|ALT_INV__~21_combout\,
	datac => \inst1|inst16|ALT_INV__~20_combout\,
	datad => \inst1|inst16|ALT_INV__~19_combout\,
	datae => \inst1|inst16|ALT_INV__~23_combout\,
	dataf => \ALT_INV_Fuente2~input_o\,
	combout => \inst1|inst16|result[2]~316_combout\);

-- Location: MLABCELL_X28_Y1_N18
\inst1|inst16|_~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|_~15_combout\ = ( !\muxSel[4]~input_o\ & ( !\muxSel[0]~input_o\ & ( (\muxSel[3]~input_o\ & (!\muxSel[5]~input_o\ & (\muxSel[2]~input_o\ & !\muxSel[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_muxSel[3]~input_o\,
	datab => \ALT_INV_muxSel[5]~input_o\,
	datac => \ALT_INV_muxSel[2]~input_o\,
	datad => \ALT_INV_muxSel[1]~input_o\,
	datae => \ALT_INV_muxSel[4]~input_o\,
	dataf => \ALT_INV_muxSel[0]~input_o\,
	combout => \inst1|inst16|_~15_combout\);

-- Location: MLABCELL_X34_Y5_N3
\inst1|inst16|_~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|_~16_combout\ = ( !\muxSel[3]~input_o\ & ( !\muxSel[0]~input_o\ & ( (\muxSel[2]~input_o\ & (!\muxSel[5]~input_o\ & (!\muxSel[1]~input_o\ & \muxSel[4]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_muxSel[2]~input_o\,
	datab => \ALT_INV_muxSel[5]~input_o\,
	datac => \ALT_INV_muxSel[1]~input_o\,
	datad => \ALT_INV_muxSel[4]~input_o\,
	datae => \ALT_INV_muxSel[3]~input_o\,
	dataf => \ALT_INV_muxSel[0]~input_o\,
	combout => \inst1|inst16|_~16_combout\);

-- Location: LABCELL_X29_Y1_N45
\inst1|inst16|_~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|_~14_combout\ = ( !\muxSel[4]~input_o\ & ( !\muxSel[0]~input_o\ & ( (\muxSel[2]~input_o\ & (!\muxSel[1]~input_o\ & (!\muxSel[3]~input_o\ & !\muxSel[5]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_muxSel[2]~input_o\,
	datab => \ALT_INV_muxSel[1]~input_o\,
	datac => \ALT_INV_muxSel[3]~input_o\,
	datad => \ALT_INV_muxSel[5]~input_o\,
	datae => \ALT_INV_muxSel[4]~input_o\,
	dataf => \ALT_INV_muxSel[0]~input_o\,
	combout => \inst1|inst16|_~14_combout\);

-- Location: LABCELL_X29_Y6_N15
\inst1|inst11|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst11|Mux2~0_combout\ = ( \inst1|inst16|result\(5) & ( \inst1|inst11|Regist\(5) & ( !\SelBus[1]~input_o\ ) ) ) # ( \inst1|inst16|result\(5) & ( !\inst1|inst11|Regist\(5) ) ) # ( !\inst1|inst16|result\(5) & ( !\inst1|inst11|Regist\(5) & ( 
-- \SelBus[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SelBus[1]~input_o\,
	datae => \inst1|inst16|ALT_INV_result\(5),
	dataf => \inst1|inst11|ALT_INV_Regist\(5),
	combout => \inst1|inst11|Mux2~0_combout\);

-- Location: MLABCELL_X28_Y6_N36
\inst1|inst11|Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst11|Mux4~1_combout\ = ( \inst1|inst11|Regist\(2) & ( (\SelBus[2]~input_o\ & ((!\SelBus[0]~input_o\) # (\inst1|inst11|Regist\(4)))) ) ) # ( !\inst1|inst11|Regist\(2) & ( (\SelBus[0]~input_o\ & (\SelBus[2]~input_o\ & \inst1|inst11|Regist\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001001000110010001100000001000000010010001100100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[0]~input_o\,
	datab => \ALT_INV_SelBus[2]~input_o\,
	datac => \inst1|inst11|ALT_INV_Regist\(4),
	datae => \inst1|inst11|ALT_INV_Regist\(2),
	combout => \inst1|inst11|Mux4~1_combout\);

-- Location: LABCELL_X29_Y6_N36
\inst1|inst11|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst11|Add0~21_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(2))))) ) + ( !\inst1|inst11|Regist\(2) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) 
-- ) + ( \inst1|inst11|Add0~26\ ))
-- \inst1|inst11|Add0~22\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(2))))) ) + ( !\inst1|inst11|Regist\(2) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst1|inst11|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000010100000000000000000011000000111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[0]~input_o\,
	datac => \ALT_INV_SelBus[3]~input_o\,
	datad => \inst1|inst16|ALT_INV_result\(2),
	dataf => \inst1|inst11|ALT_INV_Regist\(2),
	cin => \inst1|inst11|Add0~26\,
	sumout => \inst1|inst11|Add0~21_sumout\,
	cout => \inst1|inst11|Add0~22\);

-- Location: LABCELL_X29_Y6_N39
\inst1|inst11|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst11|Add0~17_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(3))))) ) + ( !\inst1|inst11|Regist\(3) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) 
-- ) + ( \inst1|inst11|Add0~22\ ))
-- \inst1|inst11|Add0~18\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(3))))) ) + ( !\inst1|inst11|Regist\(3) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst1|inst11|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000010100000000000000000011000000111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[0]~input_o\,
	datac => \ALT_INV_SelBus[3]~input_o\,
	datad => \inst1|inst16|ALT_INV_result\(3),
	dataf => \inst1|inst11|ALT_INV_Regist\(3),
	cin => \inst1|inst11|Add0~22\,
	sumout => \inst1|inst11|Add0~17_sumout\,
	cout => \inst1|inst11|Add0~18\);

-- Location: LABCELL_X30_Y6_N15
\inst1|inst11|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst11|Mux4~0_combout\ = ( \inst1|inst16|result\(3) & ( (!\inst1|inst11|Regist\(3)) # (!\SelBus[1]~input_o\) ) ) # ( !\inst1|inst16|result\(3) & ( (!\inst1|inst11|Regist\(3) & \SelBus[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst11|ALT_INV_Regist\(3),
	datad => \ALT_INV_SelBus[1]~input_o\,
	dataf => \inst1|inst16|ALT_INV_result\(3),
	combout => \inst1|inst11|Mux4~0_combout\);

-- Location: LABCELL_X30_Y6_N30
\inst1|inst11|Mux4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst11|Mux4~2_combout\ = ( \inst1|inst11|Mux4~0_combout\ & ( (((\inst1|inst8|Mux3~0_combout\ & \inst1|inst11|Add0~17_sumout\)) # (\inst1|inst8|Regist[4]~0_combout\)) # (\inst1|inst11|Mux4~1_combout\) ) ) # ( !\inst1|inst11|Mux4~0_combout\ & ( 
-- ((\inst1|inst8|Mux3~0_combout\ & \inst1|inst11|Add0~17_sumout\)) # (\inst1|inst11|Mux4~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011100110111001101110011011100110111111111110011011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Mux3~0_combout\,
	datab => \inst1|inst11|ALT_INV_Mux4~1_combout\,
	datac => \inst1|inst11|ALT_INV_Add0~17_sumout\,
	datad => \inst1|inst8|ALT_INV_Regist[4]~0_combout\,
	dataf => \inst1|inst11|ALT_INV_Mux4~0_combout\,
	combout => \inst1|inst11|Mux4~2_combout\);

-- Location: MLABCELL_X28_Y5_N15
\inst1|inst11|Regist[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst11|Regist[6]~0_combout\ = ( !\SelRegD[0]~input_o\ & ( \SelRegD[2]~input_o\ & ( (\inst1|inst6|Regist[6]~0_combout\ & !\SelRegD[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000100010001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst6|ALT_INV_Regist[6]~0_combout\,
	datab => \ALT_INV_SelRegD[1]~input_o\,
	datae => \ALT_INV_SelRegD[0]~input_o\,
	dataf => \ALT_INV_SelRegD[2]~input_o\,
	combout => \inst1|inst11|Regist[6]~0_combout\);

-- Location: FF_X30_Y6_N32
\inst1|inst11|Regist[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst11|Mux4~2_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[4]~1_combout\,
	ena => \inst1|inst11|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst11|Regist\(3));

-- Location: LABCELL_X29_Y6_N6
\inst1|inst11|Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst11|Mux3~1_combout\ = ( \inst1|inst11|Regist\(5) & ( (\SelBus[2]~input_o\ & ((\inst1|inst11|Regist\(3)) # (\SelBus[0]~input_o\))) ) ) # ( !\inst1|inst11|Regist\(5) & ( (\SelBus[2]~input_o\ & (!\SelBus[0]~input_o\ & \inst1|inst11|Regist\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000010101000101010001010100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[2]~input_o\,
	datab => \ALT_INV_SelBus[0]~input_o\,
	datac => \inst1|inst11|ALT_INV_Regist\(3),
	dataf => \inst1|inst11|ALT_INV_Regist\(5),
	combout => \inst1|inst11|Mux3~1_combout\);

-- Location: LABCELL_X31_Y6_N33
\inst1|inst11|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst11|Mux3~0_combout\ = ( \inst1|inst11|Regist\(4) & ( (\inst1|inst16|result\(4) & !\SelBus[1]~input_o\) ) ) # ( !\inst1|inst11|Regist\(4) & ( (\SelBus[1]~input_o\) # (\inst1|inst16|result\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst16|ALT_INV_result\(4),
	datad => \ALT_INV_SelBus[1]~input_o\,
	dataf => \inst1|inst11|ALT_INV_Regist\(4),
	combout => \inst1|inst11|Mux3~0_combout\);

-- Location: LABCELL_X29_Y6_N42
\inst1|inst11|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst11|Add0~13_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\)) # (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst1|inst16|result\(4))))) ) + ( !\inst1|inst11|Regist\(4) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + 
-- ( \inst1|inst11|Add0~18\ ))
-- \inst1|inst11|Add0~14\ = CARRY(( (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\)) # (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst1|inst16|result\(4))))) ) + ( !\inst1|inst11|Regist\(4) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst1|inst11|Add0~18\ ))

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
	datad => \inst1|inst16|ALT_INV_result\(4),
	dataf => \inst1|inst11|ALT_INV_Regist\(4),
	cin => \inst1|inst11|Add0~18\,
	sumout => \inst1|inst11|Add0~13_sumout\,
	cout => \inst1|inst11|Add0~14\);

-- Location: LABCELL_X30_Y6_N36
\inst1|inst11|Mux3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst11|Mux3~2_combout\ = ( \inst1|inst11|Mux3~0_combout\ & ( \inst1|inst11|Add0~13_sumout\ & ( ((\inst1|inst8|Regist[4]~0_combout\) # (\inst1|inst11|Mux3~1_combout\)) # (\inst1|inst8|Mux3~0_combout\) ) ) ) # ( !\inst1|inst11|Mux3~0_combout\ & ( 
-- \inst1|inst11|Add0~13_sumout\ & ( (\inst1|inst11|Mux3~1_combout\) # (\inst1|inst8|Mux3~0_combout\) ) ) ) # ( \inst1|inst11|Mux3~0_combout\ & ( !\inst1|inst11|Add0~13_sumout\ & ( (\inst1|inst8|Regist[4]~0_combout\) # (\inst1|inst11|Mux3~1_combout\) ) ) ) # 
-- ( !\inst1|inst11|Mux3~0_combout\ & ( !\inst1|inst11|Add0~13_sumout\ & ( \inst1|inst11|Mux3~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001111110011111101110111011101110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Mux3~0_combout\,
	datab => \inst1|inst11|ALT_INV_Mux3~1_combout\,
	datac => \inst1|inst8|ALT_INV_Regist[4]~0_combout\,
	datae => \inst1|inst11|ALT_INV_Mux3~0_combout\,
	dataf => \inst1|inst11|ALT_INV_Add0~13_sumout\,
	combout => \inst1|inst11|Mux3~2_combout\);

-- Location: FF_X30_Y6_N38
\inst1|inst11|Regist[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst11|Mux3~2_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[4]~1_combout\,
	ena => \inst1|inst11|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst11|Regist\(4));

-- Location: LABCELL_X29_Y6_N9
\inst1|inst11|Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst11|Mux2~1_combout\ = ( \inst1|inst11|Regist\(4) & ( (\SelBus[2]~input_o\ & ((!\SelBus[0]~input_o\) # (\inst1|inst11|Regist\(6)))) ) ) # ( !\inst1|inst11|Regist\(4) & ( (\SelBus[2]~input_o\ & (\SelBus[0]~input_o\ & \inst1|inst11|Regist\(6))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000101000101010001010100010101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[2]~input_o\,
	datab => \ALT_INV_SelBus[0]~input_o\,
	datac => \inst1|inst11|ALT_INV_Regist\(6),
	dataf => \inst1|inst11|ALT_INV_Regist\(4),
	combout => \inst1|inst11|Mux2~1_combout\);

-- Location: LABCELL_X29_Y6_N45
\inst1|inst11|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst11|Add0~9_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\)) # (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst1|inst16|result\(5))))) ) + ( !\inst1|inst11|Regist\(5) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst1|inst11|Add0~14\ ))
-- \inst1|inst11|Add0~10\ = CARRY(( (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\)) # (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst1|inst16|result\(5))))) ) + ( !\inst1|inst11|Regist\(5) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst1|inst11|Add0~14\ ))

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
	datad => \inst1|inst16|ALT_INV_result\(5),
	dataf => \inst1|inst11|ALT_INV_Regist\(5),
	cin => \inst1|inst11|Add0~14\,
	sumout => \inst1|inst11|Add0~9_sumout\,
	cout => \inst1|inst11|Add0~10\);

-- Location: LABCELL_X30_Y6_N45
\inst1|inst11|Mux2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst11|Mux2~2_combout\ = ( \inst1|inst11|Add0~9_sumout\ & ( (((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst11|Mux2~0_combout\)) # (\inst1|inst11|Mux2~1_combout\)) # (\inst1|inst8|Mux3~0_combout\) ) ) # ( !\inst1|inst11|Add0~9_sumout\ & ( 
-- ((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst11|Mux2~0_combout\)) # (\inst1|inst11|Mux2~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111111000001011111111100110111111111110011011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Regist[4]~0_combout\,
	datab => \inst1|inst8|ALT_INV_Mux3~0_combout\,
	datac => \inst1|inst11|ALT_INV_Mux2~0_combout\,
	datad => \inst1|inst11|ALT_INV_Mux2~1_combout\,
	dataf => \inst1|inst11|ALT_INV_Add0~9_sumout\,
	combout => \inst1|inst11|Mux2~2_combout\);

-- Location: FF_X30_Y6_N47
\inst1|inst11|Regist[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst11|Mux2~2_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[4]~1_combout\,
	ena => \inst1|inst11|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst11|Regist\(5));

-- Location: LABCELL_X29_Y6_N21
\inst1|inst11|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst11|Mux1~1_combout\ = ( \inst1|inst11|Regist\(5) & ( (\SelBus[2]~input_o\ & ((!\SelBus[0]~input_o\) # (\inst1|inst11|Regist\(7)))) ) ) # ( !\inst1|inst11|Regist\(5) & ( (\SelBus[2]~input_o\ & (\SelBus[0]~input_o\ & \inst1|inst11|Regist\(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000101000100010101010100010001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[2]~input_o\,
	datab => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst1|inst11|ALT_INV_Regist\(7),
	dataf => \inst1|inst11|ALT_INV_Regist\(5),
	combout => \inst1|inst11|Mux1~1_combout\);

-- Location: LABCELL_X30_Y6_N3
\inst1|inst11|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst11|Mux1~0_combout\ = (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(6)))) # (\SelBus[1]~input_o\ & (!\inst1|inst11|Regist\(6)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001011101110001000101110111000100010111011100010001011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst11|ALT_INV_Regist\(6),
	datab => \ALT_INV_SelBus[1]~input_o\,
	datad => \inst1|inst16|ALT_INV_result\(6),
	combout => \inst1|inst11|Mux1~0_combout\);

-- Location: LABCELL_X29_Y6_N48
\inst1|inst11|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst11|Add0~5_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\)) # (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst1|inst16|result\(6))))) ) + ( !\inst1|inst11|Regist\(6) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst1|inst11|Add0~10\ ))
-- \inst1|inst11|Add0~6\ = CARRY(( (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\)) # (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst1|inst16|result\(6))))) ) + ( !\inst1|inst11|Regist\(6) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst1|inst11|Add0~10\ ))

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
	datad => \inst1|inst16|ALT_INV_result\(6),
	dataf => \inst1|inst11|ALT_INV_Regist\(6),
	cin => \inst1|inst11|Add0~10\,
	sumout => \inst1|inst11|Add0~5_sumout\,
	cout => \inst1|inst11|Add0~6\);

-- Location: LABCELL_X30_Y6_N54
\inst1|inst11|Mux1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst11|Mux1~2_combout\ = ( \inst1|inst11|Add0~5_sumout\ & ( (((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst11|Mux1~0_combout\)) # (\inst1|inst11|Mux1~1_combout\)) # (\inst1|inst8|Mux3~0_combout\) ) ) # ( !\inst1|inst11|Add0~5_sumout\ & ( 
-- ((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst11|Mux1~0_combout\)) # (\inst1|inst11|Mux1~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011111000011110101111100111111011111110011111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Regist[4]~0_combout\,
	datab => \inst1|inst8|ALT_INV_Mux3~0_combout\,
	datac => \inst1|inst11|ALT_INV_Mux1~1_combout\,
	datad => \inst1|inst11|ALT_INV_Mux1~0_combout\,
	dataf => \inst1|inst11|ALT_INV_Add0~5_sumout\,
	combout => \inst1|inst11|Mux1~2_combout\);

-- Location: FF_X30_Y6_N56
\inst1|inst11|Regist[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst11|Mux1~2_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[4]~1_combout\,
	ena => \inst1|inst11|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst11|Regist\(6));

-- Location: LABCELL_X29_Y6_N51
\inst1|inst11|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst11|Add0~1_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\)) # (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst1|inst16|result\(7))))) ) + ( !\inst1|inst11|Regist\(7) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst1|inst11|Add0~6\ ))

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
	datad => \inst1|inst16|ALT_INV_result\(7),
	dataf => \inst1|inst11|ALT_INV_Regist\(7),
	cin => \inst1|inst11|Add0~6\,
	sumout => \inst1|inst11|Add0~1_sumout\);

-- Location: LABCELL_X29_Y6_N24
\inst1|inst11|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst11|Mux0~0_combout\ = ( \inst1|inst11|Regist\(7) & ( \inst1|inst16|result\(7) & ( (!\SelBus[3]~input_o\ & ((!\SelBus[2]~input_o\) # (\inst1|inst11|Regist\(6)))) ) ) ) # ( !\inst1|inst11|Regist\(7) & ( \inst1|inst16|result\(7) & ( 
-- (!\SelBus[2]~input_o\) # ((\inst1|inst11|Regist\(6)) # (\SelBus[3]~input_o\)) ) ) ) # ( \inst1|inst11|Regist\(7) & ( !\inst1|inst16|result\(7) & ( (\SelBus[2]~input_o\ & (!\SelBus[3]~input_o\ & \inst1|inst11|Regist\(6))) ) ) ) # ( 
-- !\inst1|inst11|Regist\(7) & ( !\inst1|inst16|result\(7) & ( ((\SelBus[2]~input_o\ & \inst1|inst11|Regist\(6))) # (\SelBus[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101110111000000000100010010111011111111111000100011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[2]~input_o\,
	datab => \ALT_INV_SelBus[3]~input_o\,
	datad => \inst1|inst11|ALT_INV_Regist\(6),
	datae => \inst1|inst11|ALT_INV_Regist\(7),
	dataf => \inst1|inst16|ALT_INV_result\(7),
	combout => \inst1|inst11|Mux0~0_combout\);

-- Location: LABCELL_X29_Y6_N0
\inst1|inst11|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst11|Mux0~1_combout\ = ( \inst1|inst11|Mux0~0_combout\ & ( (!\inst1|inst8|Regist[0]~4_combout\ & (((!\inst1|inst8|Regist[7]~7_combout\)) # (\inst1|inst11|Regist\(0)))) # (\inst1|inst8|Regist[0]~4_combout\ & (((\inst1|inst11|Add0~1_sumout\)))) ) ) 
-- # ( !\inst1|inst11|Mux0~0_combout\ & ( (!\inst1|inst8|Regist[0]~4_combout\ & (\inst1|inst11|Regist\(0) & ((\inst1|inst8|Regist[7]~7_combout\)))) # (\inst1|inst8|Regist[0]~4_combout\ & (((\inst1|inst11|Add0~1_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000111000000110100011111001111010001111100111101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst11|ALT_INV_Regist\(0),
	datab => \inst1|inst8|ALT_INV_Regist[0]~4_combout\,
	datac => \inst1|inst11|ALT_INV_Add0~1_sumout\,
	datad => \inst1|inst8|ALT_INV_Regist[7]~7_combout\,
	dataf => \inst1|inst11|ALT_INV_Mux0~0_combout\,
	combout => \inst1|inst11|Mux0~1_combout\);

-- Location: LABCELL_X31_Y5_N54
\inst1|inst8|Regist[7]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst8|Regist[7]~8_combout\ = ( \SelBus[0]~input_o\ & ( (!\SelBus[1]~input_o\ & ((\SelBus[3]~input_o\) # (\SelBus[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100110011000000110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SelBus[1]~input_o\,
	datac => \ALT_INV_SelBus[2]~input_o\,
	datad => \ALT_INV_SelBus[3]~input_o\,
	dataf => \ALT_INV_SelBus[0]~input_o\,
	combout => \inst1|inst8|Regist[7]~8_combout\);

-- Location: FF_X29_Y6_N2
\inst1|inst11|Regist[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst11|Mux0~1_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[7]~8_combout\,
	ena => \inst1|inst11|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst11|Regist\(7));

-- Location: LABCELL_X29_Y6_N30
\inst1|inst11|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst11|Add0~29_sumout\ = SUM(( (!\SelBus[3]~input_o\) # ((\inst1|inst16|result\(0)) # (\SelBus[1]~input_o\)) ) + ( !\inst1|inst11|Regist\(0) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( !VCC ))
-- \inst1|inst11|Add0~30\ = CARRY(( (!\SelBus[3]~input_o\) # ((\inst1|inst16|result\(0)) # (\SelBus[1]~input_o\)) ) + ( !\inst1|inst11|Regist\(0) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111000011110000100000000000000001011101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[3]~input_o\,
	datab => \ALT_INV_SelBus[1]~input_o\,
	datac => \inst1|inst11|ALT_INV_Regist\(0),
	datad => \inst1|inst16|ALT_INV_result\(0),
	cin => GND,
	sumout => \inst1|inst11|Add0~29_sumout\,
	cout => \inst1|inst11|Add0~30\);

-- Location: MLABCELL_X28_Y1_N48
\inst1|inst11|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst11|Mux7~0_combout\ = ( \inst1|inst11|Regist\(0) & ( (!\SelBus[3]~input_o\ & ((!\SelBus[2]~input_o\ & ((\inst1|inst16|result\(0)))) # (\SelBus[2]~input_o\ & (\inst1|inst11|Regist\(1))))) ) ) # ( !\inst1|inst11|Regist\(0) & ( 
-- ((!\SelBus[2]~input_o\ & ((\inst1|inst16|result\(0)))) # (\SelBus[2]~input_o\ & (\inst1|inst11|Regist\(1)))) # (\SelBus[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011111011111010101111101111100000010100010100000001010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[3]~input_o\,
	datab => \ALT_INV_SelBus[2]~input_o\,
	datac => \inst1|inst11|ALT_INV_Regist\(1),
	datad => \inst1|inst16|ALT_INV_result\(0),
	dataf => \inst1|inst11|ALT_INV_Regist\(0),
	combout => \inst1|inst11|Mux7~0_combout\);

-- Location: MLABCELL_X28_Y1_N9
\inst1|inst11|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst11|Mux7~1_combout\ = ( \inst1|inst11|Add0~29_sumout\ & ( \inst1|inst11|Mux7~0_combout\ & ( (!\inst1|inst8|Regist[0]~5_combout\) # ((\inst1|inst8|Regist[0]~4_combout\) # (\inst1|inst11|Regist\(7))) ) ) ) # ( !\inst1|inst11|Add0~29_sumout\ & ( 
-- \inst1|inst11|Mux7~0_combout\ & ( (!\inst1|inst8|Regist[0]~4_combout\ & ((!\inst1|inst8|Regist[0]~5_combout\) # (\inst1|inst11|Regist\(7)))) ) ) ) # ( \inst1|inst11|Add0~29_sumout\ & ( !\inst1|inst11|Mux7~0_combout\ & ( ((\inst1|inst8|Regist[0]~5_combout\ 
-- & \inst1|inst11|Regist\(7))) # (\inst1|inst8|Regist[0]~4_combout\) ) ) ) # ( !\inst1|inst11|Add0~29_sumout\ & ( !\inst1|inst11|Mux7~0_combout\ & ( (\inst1|inst8|Regist[0]~5_combout\ & (\inst1|inst11|Regist\(7) & !\inst1|inst8|Regist[0]~4_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001011111111110101111000000001010111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Regist[0]~5_combout\,
	datac => \inst1|inst11|ALT_INV_Regist\(7),
	datad => \inst1|inst8|ALT_INV_Regist[0]~4_combout\,
	datae => \inst1|inst11|ALT_INV_Add0~29_sumout\,
	dataf => \inst1|inst11|ALT_INV_Mux7~0_combout\,
	combout => \inst1|inst11|Mux7~1_combout\);

-- Location: MLABCELL_X34_Y3_N15
\inst1|inst8|Regist[0]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst8|Regist[0]~6_combout\ = (!\SelBus[1]~input_o\ & ((!\SelBus[0]~input_o\ & (\SelBus[2]~input_o\ & !\SelBus[3]~input_o\)) # (\SelBus[0]~input_o\ & ((\SelBus[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010100000000001001010000000000100101000000000010010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[0]~input_o\,
	datab => \ALT_INV_SelBus[2]~input_o\,
	datac => \ALT_INV_SelBus[3]~input_o\,
	datad => \ALT_INV_SelBus[1]~input_o\,
	combout => \inst1|inst8|Regist[0]~6_combout\);

-- Location: FF_X28_Y1_N11
\inst1|inst11|Regist[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst11|Mux7~1_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[0]~6_combout\,
	ena => \inst1|inst11|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst11|Regist\(0));

-- Location: LABCELL_X29_Y6_N3
\inst1|inst11|Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst11|Mux6~1_combout\ = ( \inst1|inst11|Regist\(2) & ( (\SelBus[2]~input_o\ & ((\SelBus[0]~input_o\) # (\inst1|inst11|Regist\(0)))) ) ) # ( !\inst1|inst11|Regist\(2) & ( (\inst1|inst11|Regist\(0) & (!\SelBus[0]~input_o\ & \SelBus[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000000000010111110000000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst11|ALT_INV_Regist\(0),
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \ALT_INV_SelBus[2]~input_o\,
	dataf => \inst1|inst11|ALT_INV_Regist\(2),
	combout => \inst1|inst11|Mux6~1_combout\);

-- Location: LABCELL_X29_Y6_N33
\inst1|inst11|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst11|Add0~25_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(1))))) ) + ( !\inst1|inst11|Regist\(1) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) 
-- ) + ( \inst1|inst11|Add0~30\ ))
-- \inst1|inst11|Add0~26\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(1))))) ) + ( !\inst1|inst11|Regist\(1) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst1|inst11|Add0~30\ ))

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
	datad => \inst1|inst16|ALT_INV_result\(1),
	dataf => \inst1|inst11|ALT_INV_Regist\(1),
	cin => \inst1|inst11|Add0~30\,
	sumout => \inst1|inst11|Add0~25_sumout\,
	cout => \inst1|inst11|Add0~26\);

-- Location: LABCELL_X30_Y6_N9
\inst1|inst11|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst11|Mux6~0_combout\ = ( \inst1|inst11|Regist\(1) & ( (\inst1|inst16|result\(1) & !\SelBus[1]~input_o\) ) ) # ( !\inst1|inst11|Regist\(1) & ( (\SelBus[1]~input_o\) # (\inst1|inst16|result\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst16|ALT_INV_result\(1),
	datad => \ALT_INV_SelBus[1]~input_o\,
	dataf => \inst1|inst11|ALT_INV_Regist\(1),
	combout => \inst1|inst11|Mux6~0_combout\);

-- Location: LABCELL_X30_Y6_N48
\inst1|inst11|Mux6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst11|Mux6~2_combout\ = ( \inst1|inst11|Mux6~0_combout\ & ( (((\inst1|inst8|Mux3~0_combout\ & \inst1|inst11|Add0~25_sumout\)) # (\inst1|inst8|Regist[4]~0_combout\)) # (\inst1|inst11|Mux6~1_combout\) ) ) # ( !\inst1|inst11|Mux6~0_combout\ & ( 
-- ((\inst1|inst8|Mux3~0_combout\ & \inst1|inst11|Add0~25_sumout\)) # (\inst1|inst11|Mux6~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101110111001100110111011100111111011111110011111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Mux3~0_combout\,
	datab => \inst1|inst11|ALT_INV_Mux6~1_combout\,
	datac => \inst1|inst8|ALT_INV_Regist[4]~0_combout\,
	datad => \inst1|inst11|ALT_INV_Add0~25_sumout\,
	dataf => \inst1|inst11|ALT_INV_Mux6~0_combout\,
	combout => \inst1|inst11|Mux6~2_combout\);

-- Location: FF_X30_Y6_N50
\inst1|inst11|Regist[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst11|Mux6~2_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[4]~1_combout\,
	ena => \inst1|inst11|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst11|Regist\(1));

-- Location: LABCELL_X29_Y6_N18
\inst1|inst11|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst11|Mux5~1_combout\ = ( \inst1|inst11|Regist\(3) & ( (\SelBus[2]~input_o\ & ((\inst1|inst11|Regist\(1)) # (\SelBus[0]~input_o\))) ) ) # ( !\inst1|inst11|Regist\(3) & ( (\SelBus[2]~input_o\ & (!\SelBus[0]~input_o\ & \inst1|inst11|Regist\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010000010001010101010001000101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[2]~input_o\,
	datab => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst1|inst11|ALT_INV_Regist\(1),
	dataf => \inst1|inst11|ALT_INV_Regist\(3),
	combout => \inst1|inst11|Mux5~1_combout\);

-- Location: LABCELL_X30_Y6_N51
\inst1|inst11|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst11|Mux5~0_combout\ = ( \inst1|inst16|result\(2) & ( (!\inst1|inst11|Regist\(2)) # (!\SelBus[1]~input_o\) ) ) # ( !\inst1|inst16|result\(2) & ( (!\inst1|inst11|Regist\(2) & \SelBus[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst11|ALT_INV_Regist\(2),
	datad => \ALT_INV_SelBus[1]~input_o\,
	dataf => \inst1|inst16|ALT_INV_result\(2),
	combout => \inst1|inst11|Mux5~0_combout\);

-- Location: LABCELL_X30_Y6_N42
\inst1|inst11|Mux5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst11|Mux5~2_combout\ = ( \inst1|inst11|Mux5~0_combout\ & ( (((\inst1|inst8|Mux3~0_combout\ & \inst1|inst11|Add0~21_sumout\)) # (\inst1|inst11|Mux5~1_combout\)) # (\inst1|inst8|Regist[4]~0_combout\) ) ) # ( !\inst1|inst11|Mux5~0_combout\ & ( 
-- ((\inst1|inst8|Mux3~0_combout\ & \inst1|inst11|Add0~21_sumout\)) # (\inst1|inst11|Mux5~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111111000000111111111101010111111111110101011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Regist[4]~0_combout\,
	datab => \inst1|inst8|ALT_INV_Mux3~0_combout\,
	datac => \inst1|inst11|ALT_INV_Add0~21_sumout\,
	datad => \inst1|inst11|ALT_INV_Mux5~1_combout\,
	dataf => \inst1|inst11|ALT_INV_Mux5~0_combout\,
	combout => \inst1|inst11|Mux5~2_combout\);

-- Location: FF_X30_Y6_N44
\inst1|inst11|Regist[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst11|Mux5~2_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[4]~1_combout\,
	ena => \inst1|inst11|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst11|Regist\(2));

-- Location: LABCELL_X31_Y6_N21
\inst1|inst2|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Mux1~0_combout\ = ( \inst1|inst2|Regist\(6) & ( (!\SelBus[1]~input_o\ & \inst1|inst16|result\(6)) ) ) # ( !\inst1|inst2|Regist\(6) & ( (\inst1|inst16|result\(6)) # (\SelBus[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SelBus[1]~input_o\,
	datad => \inst1|inst16|ALT_INV_result\(6),
	dataf => \inst1|inst2|ALT_INV_Regist\(6),
	combout => \inst1|inst2|Mux1~0_combout\);

-- Location: LABCELL_X31_Y6_N39
\inst1|inst2|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Mux3~0_combout\ = ( \inst1|inst2|Regist\(4) & ( (!\SelBus[1]~input_o\ & \inst1|inst16|result\(4)) ) ) # ( !\inst1|inst2|Regist\(4) & ( (\inst1|inst16|result\(4)) # (\SelBus[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SelBus[1]~input_o\,
	datad => \inst1|inst16|ALT_INV_result\(4),
	dataf => \inst1|inst2|ALT_INV_Regist\(4),
	combout => \inst1|inst2|Mux3~0_combout\);

-- Location: LABCELL_X30_Y4_N30
\inst1|inst2|Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Mux4~1_combout\ = ( \inst1|inst2|Regist\(2) & ( (\SelBus[2]~input_o\ & ((!\SelBus[0]~input_o\) # (\inst1|inst2|Regist\(4)))) ) ) # ( !\inst1|inst2|Regist\(2) & ( (\SelBus[2]~input_o\ & (\inst1|inst2|Regist\(4) & \SelBus[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000101010001010100010101000101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[2]~input_o\,
	datab => \inst1|inst2|ALT_INV_Regist\(4),
	datac => \ALT_INV_SelBus[0]~input_o\,
	dataf => \inst1|inst2|ALT_INV_Regist\(2),
	combout => \inst1|inst2|Mux4~1_combout\);

-- Location: LABCELL_X30_Y4_N0
\inst1|inst2|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Add0~29_sumout\ = SUM(( !\inst1|inst2|Regist\(0) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( ((!\SelBus[3]~input_o\) # (\inst1|inst16|result\(0))) # (\SelBus[1]~input_o\) ) + ( !VCC ))
-- \inst1|inst2|Add0~30\ = CARRY(( !\inst1|inst2|Regist\(0) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( ((!\SelBus[3]~input_o\) # (\inst1|inst16|result\(0))) # (\SelBus[1]~input_o\) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000010000000000000000000000001000111101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[3]~input_o\,
	datac => \inst1|inst16|ALT_INV_result\(0),
	datad => \inst1|inst2|ALT_INV_Regist\(0),
	cin => GND,
	sumout => \inst1|inst2|Add0~29_sumout\,
	cout => \inst1|inst2|Add0~30\);

-- Location: LABCELL_X30_Y4_N3
\inst1|inst2|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Add0~25_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(1))))) ) + ( !\inst1|inst2|Regist\(1) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) 
-- + ( \inst1|inst2|Add0~30\ ))
-- \inst1|inst2|Add0~26\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(1))))) ) + ( !\inst1|inst2|Regist\(1) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst1|inst2|Add0~30\ ))

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
	datad => \inst1|inst16|ALT_INV_result\(1),
	dataf => \inst1|inst2|ALT_INV_Regist\(1),
	cin => \inst1|inst2|Add0~30\,
	sumout => \inst1|inst2|Add0~25_sumout\,
	cout => \inst1|inst2|Add0~26\);

-- Location: LABCELL_X30_Y4_N6
\inst1|inst2|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Add0~21_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(2))))) ) + ( !\inst1|inst2|Regist\(2) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) 
-- + ( \inst1|inst2|Add0~26\ ))
-- \inst1|inst2|Add0~22\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(2))))) ) + ( !\inst1|inst2|Regist\(2) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst1|inst2|Add0~26\ ))

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
	datad => \inst1|inst16|ALT_INV_result\(2),
	dataf => \inst1|inst2|ALT_INV_Regist\(2),
	cin => \inst1|inst2|Add0~26\,
	sumout => \inst1|inst2|Add0~21_sumout\,
	cout => \inst1|inst2|Add0~22\);

-- Location: LABCELL_X30_Y4_N9
\inst1|inst2|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Add0~17_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(3))))) ) + ( !\inst1|inst2|Regist\(3) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) 
-- + ( \inst1|inst2|Add0~22\ ))
-- \inst1|inst2|Add0~18\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(3))))) ) + ( !\inst1|inst2|Regist\(3) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst1|inst2|Add0~22\ ))

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
	datad => \inst1|inst16|ALT_INV_result\(3),
	dataf => \inst1|inst2|ALT_INV_Regist\(3),
	cin => \inst1|inst2|Add0~22\,
	sumout => \inst1|inst2|Add0~17_sumout\,
	cout => \inst1|inst2|Add0~18\);

-- Location: LABCELL_X30_Y6_N33
\inst1|inst2|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Mux4~0_combout\ = ( \inst1|inst16|result\(3) & ( (!\inst1|inst2|Regist\(3)) # (!\SelBus[1]~input_o\) ) ) # ( !\inst1|inst16|result\(3) & ( (!\inst1|inst2|Regist\(3) & \SelBus[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst2|ALT_INV_Regist\(3),
	datad => \ALT_INV_SelBus[1]~input_o\,
	dataf => \inst1|inst16|ALT_INV_result\(3),
	combout => \inst1|inst2|Mux4~0_combout\);

-- Location: LABCELL_X30_Y6_N12
\inst1|inst2|Mux4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Mux4~2_combout\ = ( \inst1|inst2|Mux4~0_combout\ & ( (((\inst1|inst8|Mux3~0_combout\ & \inst1|inst2|Add0~17_sumout\)) # (\inst1|inst8|Regist[4]~0_combout\)) # (\inst1|inst2|Mux4~1_combout\) ) ) # ( !\inst1|inst2|Mux4~0_combout\ & ( 
-- ((\inst1|inst8|Mux3~0_combout\ & \inst1|inst2|Add0~17_sumout\)) # (\inst1|inst2|Mux4~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101110111001100110111011100111111011111110011111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Mux3~0_combout\,
	datab => \inst1|inst2|ALT_INV_Mux4~1_combout\,
	datac => \inst1|inst8|ALT_INV_Regist[4]~0_combout\,
	datad => \inst1|inst2|ALT_INV_Add0~17_sumout\,
	dataf => \inst1|inst2|ALT_INV_Mux4~0_combout\,
	combout => \inst1|inst2|Mux4~2_combout\);

-- Location: MLABCELL_X28_Y5_N30
\inst1|inst2|Regist[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Regist[6]~0_combout\ = ( !\SelRegD[1]~input_o\ & ( \SelRegD[2]~input_o\ & ( (\inst1|inst8|Regist[4]~2_combout\ & !\SelRegD[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst8|ALT_INV_Regist[4]~2_combout\,
	datad => \ALT_INV_SelRegD[0]~input_o\,
	datae => \ALT_INV_SelRegD[1]~input_o\,
	dataf => \ALT_INV_SelRegD[2]~input_o\,
	combout => \inst1|inst2|Regist[6]~0_combout\);

-- Location: FF_X30_Y6_N14
\inst1|inst2|Regist[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst2|Mux4~2_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[4]~1_combout\,
	ena => \inst1|inst2|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst2|Regist\(3));

-- Location: LABCELL_X31_Y6_N24
\inst1|inst2|Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Mux3~1_combout\ = ( \inst1|inst2|Regist\(3) & ( (\SelBus[2]~input_o\ & ((!\SelBus[0]~input_o\) # (\inst1|inst2|Regist\(5)))) ) ) # ( !\inst1|inst2|Regist\(3) & ( (\SelBus[2]~input_o\ & (\SelBus[0]~input_o\ & \inst1|inst2|Regist\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000101000101010001010100010101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[2]~input_o\,
	datab => \ALT_INV_SelBus[0]~input_o\,
	datac => \inst1|inst2|ALT_INV_Regist\(5),
	dataf => \inst1|inst2|ALT_INV_Regist\(3),
	combout => \inst1|inst2|Mux3~1_combout\);

-- Location: LABCELL_X30_Y4_N12
\inst1|inst2|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Add0~13_sumout\ = SUM(( !\inst1|inst2|Regist\(4) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(4))))) ) 
-- + ( \inst1|inst2|Add0~18\ ))
-- \inst1|inst2|Add0~14\ = CARRY(( !\inst1|inst2|Regist\(4) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(4))))) ) + ( 
-- \inst1|inst2|Add0~18\ ))

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
	datad => \inst1|inst2|ALT_INV_Regist\(4),
	dataf => \inst1|inst16|ALT_INV_result\(4),
	cin => \inst1|inst2|Add0~18\,
	sumout => \inst1|inst2|Add0~13_sumout\,
	cout => \inst1|inst2|Add0~14\);

-- Location: LABCELL_X31_Y6_N36
\inst1|inst2|Mux3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Mux3~2_combout\ = ( \inst1|inst2|Add0~13_sumout\ & ( (((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst2|Mux3~0_combout\)) # (\inst1|inst8|Mux3~0_combout\)) # (\inst1|inst2|Mux3~1_combout\) ) ) # ( !\inst1|inst2|Add0~13_sumout\ & ( 
-- ((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst2|Mux3~0_combout\)) # (\inst1|inst2|Mux3~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100011111000111110001111100011111111111110001111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Regist[4]~0_combout\,
	datab => \inst1|inst2|ALT_INV_Mux3~0_combout\,
	datac => \inst1|inst2|ALT_INV_Mux3~1_combout\,
	datad => \inst1|inst8|ALT_INV_Mux3~0_combout\,
	dataf => \inst1|inst2|ALT_INV_Add0~13_sumout\,
	combout => \inst1|inst2|Mux3~2_combout\);

-- Location: FF_X31_Y6_N38
\inst1|inst2|Regist[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst2|Mux3~2_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[4]~1_combout\,
	ena => \inst1|inst2|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst2|Regist\(4));

-- Location: LABCELL_X31_Y6_N30
\inst1|inst2|Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Mux2~1_combout\ = ( \inst1|inst2|Regist\(6) & ( (\SelBus[2]~input_o\ & ((\SelBus[0]~input_o\) # (\inst1|inst2|Regist\(4)))) ) ) # ( !\inst1|inst2|Regist\(6) & ( (\inst1|inst2|Regist\(4) & (!\SelBus[0]~input_o\ & \SelBus[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000000000010111110000000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|ALT_INV_Regist\(4),
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \ALT_INV_SelBus[2]~input_o\,
	dataf => \inst1|inst2|ALT_INV_Regist\(6),
	combout => \inst1|inst2|Mux2~1_combout\);

-- Location: LABCELL_X30_Y4_N15
\inst1|inst2|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Add0~9_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(5))))) ) + ( !\inst1|inst2|Regist\(5) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + 
-- ( \inst1|inst2|Add0~14\ ))
-- \inst1|inst2|Add0~10\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(5))))) ) + ( !\inst1|inst2|Regist\(5) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst1|inst2|Add0~14\ ))

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
	datad => \inst1|inst16|ALT_INV_result\(5),
	dataf => \inst1|inst2|ALT_INV_Regist\(5),
	cin => \inst1|inst2|Add0~14\,
	sumout => \inst1|inst2|Add0~9_sumout\,
	cout => \inst1|inst2|Add0~10\);

-- Location: LABCELL_X31_Y6_N15
\inst1|inst2|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Mux2~0_combout\ = ( \inst1|inst2|Regist\(5) & ( (\inst1|inst16|result\(5) & !\SelBus[1]~input_o\) ) ) # ( !\inst1|inst2|Regist\(5) & ( (\SelBus[1]~input_o\) # (\inst1|inst16|result\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst16|ALT_INV_result\(5),
	datad => \ALT_INV_SelBus[1]~input_o\,
	dataf => \inst1|inst2|ALT_INV_Regist\(5),
	combout => \inst1|inst2|Mux2~0_combout\);

-- Location: LABCELL_X31_Y6_N45
\inst1|inst2|Mux2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Mux2~2_combout\ = ( \inst1|inst2|Add0~9_sumout\ & ( \inst1|inst2|Mux2~0_combout\ & ( ((\inst1|inst8|Mux3~0_combout\) # (\inst1|inst2|Mux2~1_combout\)) # (\inst1|inst8|Regist[4]~0_combout\) ) ) ) # ( !\inst1|inst2|Add0~9_sumout\ & ( 
-- \inst1|inst2|Mux2~0_combout\ & ( (\inst1|inst2|Mux2~1_combout\) # (\inst1|inst8|Regist[4]~0_combout\) ) ) ) # ( \inst1|inst2|Add0~9_sumout\ & ( !\inst1|inst2|Mux2~0_combout\ & ( (\inst1|inst8|Mux3~0_combout\) # (\inst1|inst2|Mux2~1_combout\) ) ) ) # ( 
-- !\inst1|inst2|Add0~9_sumout\ & ( !\inst1|inst2|Mux2~0_combout\ & ( \inst1|inst2|Mux2~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001111110011111101110111011101110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Regist[4]~0_combout\,
	datab => \inst1|inst2|ALT_INV_Mux2~1_combout\,
	datac => \inst1|inst8|ALT_INV_Mux3~0_combout\,
	datae => \inst1|inst2|ALT_INV_Add0~9_sumout\,
	dataf => \inst1|inst2|ALT_INV_Mux2~0_combout\,
	combout => \inst1|inst2|Mux2~2_combout\);

-- Location: FF_X31_Y6_N47
\inst1|inst2|Regist[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst2|Mux2~2_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[4]~1_combout\,
	ena => \inst1|inst2|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst2|Regist\(5));

-- Location: LABCELL_X31_Y6_N27
\inst1|inst2|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Mux1~1_combout\ = ( \inst1|inst2|Regist\(7) & ( (\SelBus[2]~input_o\ & ((\inst1|inst2|Regist\(5)) # (\SelBus[0]~input_o\))) ) ) # ( !\inst1|inst2|Regist\(7) & ( (\SelBus[2]~input_o\ & (!\SelBus[0]~input_o\ & \inst1|inst2|Regist\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000010101000101010001010100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[2]~input_o\,
	datab => \ALT_INV_SelBus[0]~input_o\,
	datac => \inst1|inst2|ALT_INV_Regist\(5),
	dataf => \inst1|inst2|ALT_INV_Regist\(7),
	combout => \inst1|inst2|Mux1~1_combout\);

-- Location: LABCELL_X30_Y4_N18
\inst1|inst2|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Add0~5_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\)) # (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst1|inst16|result\(6))))) ) + ( !\inst1|inst2|Regist\(6) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst1|inst2|Add0~10\ ))
-- \inst1|inst2|Add0~6\ = CARRY(( (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\)) # (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst1|inst16|result\(6))))) ) + ( !\inst1|inst2|Regist\(6) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst1|inst2|Add0~10\ ))

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
	datad => \inst1|inst16|ALT_INV_result\(6),
	dataf => \inst1|inst2|ALT_INV_Regist\(6),
	cin => \inst1|inst2|Add0~10\,
	sumout => \inst1|inst2|Add0~5_sumout\,
	cout => \inst1|inst2|Add0~6\);

-- Location: LABCELL_X31_Y6_N18
\inst1|inst2|Mux1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Mux1~2_combout\ = ( \inst1|inst2|Add0~5_sumout\ & ( (((\inst1|inst2|Mux1~0_combout\ & \inst1|inst8|Regist[4]~0_combout\)) # (\inst1|inst2|Mux1~1_combout\)) # (\inst1|inst8|Mux3~0_combout\) ) ) # ( !\inst1|inst2|Add0~5_sumout\ & ( 
-- ((\inst1|inst2|Mux1~0_combout\ & \inst1|inst8|Regist[4]~0_combout\)) # (\inst1|inst2|Mux1~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111111000001011111111100110111111111110011011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|ALT_INV_Mux1~0_combout\,
	datab => \inst1|inst8|ALT_INV_Mux3~0_combout\,
	datac => \inst1|inst8|ALT_INV_Regist[4]~0_combout\,
	datad => \inst1|inst2|ALT_INV_Mux1~1_combout\,
	dataf => \inst1|inst2|ALT_INV_Add0~5_sumout\,
	combout => \inst1|inst2|Mux1~2_combout\);

-- Location: FF_X31_Y6_N20
\inst1|inst2|Regist[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst2|Mux1~2_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[4]~1_combout\,
	ena => \inst1|inst2|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst2|Regist\(6));

-- Location: LABCELL_X30_Y4_N21
\inst1|inst2|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Add0~1_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\)) # (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst1|inst16|result\(7))))) ) + ( !\inst1|inst2|Regist\(7) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst1|inst2|Add0~6\ ))

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
	datad => \inst1|inst16|ALT_INV_result\(7),
	dataf => \inst1|inst2|ALT_INV_Regist\(7),
	cin => \inst1|inst2|Add0~6\,
	sumout => \inst1|inst2|Add0~1_sumout\);

-- Location: LABCELL_X30_Y4_N48
\inst1|inst2|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Mux0~0_combout\ = ( \inst1|inst2|Regist\(7) & ( (!\SelBus[3]~input_o\ & ((!\SelBus[2]~input_o\ & (\inst1|inst16|result\(7))) # (\SelBus[2]~input_o\ & ((\inst1|inst2|Regist\(6)))))) ) ) # ( !\inst1|inst2|Regist\(7) & ( ((!\SelBus[2]~input_o\ & 
-- (\inst1|inst16|result\(7))) # (\SelBus[2]~input_o\ & ((\inst1|inst2|Regist\(6))))) # (\SelBus[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111001101111111011100110111111101000000010011000100000001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst16|ALT_INV_result\(7),
	datab => \ALT_INV_SelBus[3]~input_o\,
	datac => \ALT_INV_SelBus[2]~input_o\,
	datad => \inst1|inst2|ALT_INV_Regist\(6),
	dataf => \inst1|inst2|ALT_INV_Regist\(7),
	combout => \inst1|inst2|Mux0~0_combout\);

-- Location: LABCELL_X30_Y4_N36
\inst1|inst2|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Mux0~1_combout\ = ( \inst1|inst2|Mux0~0_combout\ & ( (!\inst1|inst8|Regist[0]~4_combout\ & (((!\inst1|inst8|Regist[7]~7_combout\)) # (\inst1|inst2|Regist\(0)))) # (\inst1|inst8|Regist[0]~4_combout\ & (((\inst1|inst2|Add0~1_sumout\)))) ) ) # ( 
-- !\inst1|inst2|Mux0~0_combout\ & ( (!\inst1|inst8|Regist[0]~4_combout\ & (\inst1|inst2|Regist\(0) & (\inst1|inst8|Regist[7]~7_combout\))) # (\inst1|inst8|Regist[0]~4_combout\ & (((\inst1|inst2|Add0~1_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011111000100000001111111010000110111111101000011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|ALT_INV_Regist\(0),
	datab => \inst1|inst8|ALT_INV_Regist[7]~7_combout\,
	datac => \inst1|inst8|ALT_INV_Regist[0]~4_combout\,
	datad => \inst1|inst2|ALT_INV_Add0~1_sumout\,
	dataf => \inst1|inst2|ALT_INV_Mux0~0_combout\,
	combout => \inst1|inst2|Mux0~1_combout\);

-- Location: FF_X30_Y4_N38
\inst1|inst2|Regist[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst2|Mux0~1_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[7]~8_combout\,
	ena => \inst1|inst2|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst2|Regist\(7));

-- Location: MLABCELL_X28_Y1_N51
\inst1|inst2|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Mux7~0_combout\ = ( \inst1|inst2|Regist\(0) & ( (!\SelBus[3]~input_o\ & ((!\SelBus[2]~input_o\ & (\inst1|inst16|result\(0))) # (\SelBus[2]~input_o\ & ((\inst1|inst2|Regist\(1)))))) ) ) # ( !\inst1|inst2|Regist\(0) & ( ((!\SelBus[2]~input_o\ & 
-- (\inst1|inst16|result\(0))) # (\SelBus[2]~input_o\ & ((\inst1|inst2|Regist\(1))))) # (\SelBus[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110101111111010111010111111100001000001010100000100000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[3]~input_o\,
	datab => \ALT_INV_SelBus[2]~input_o\,
	datac => \inst1|inst16|ALT_INV_result\(0),
	datad => \inst1|inst2|ALT_INV_Regist\(1),
	dataf => \inst1|inst2|ALT_INV_Regist\(0),
	combout => \inst1|inst2|Mux7~0_combout\);

-- Location: MLABCELL_X28_Y1_N42
\inst1|inst2|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Mux7~1_combout\ = ( \inst1|inst2|Add0~29_sumout\ & ( \inst1|inst2|Mux7~0_combout\ & ( ((!\inst1|inst8|Regist[0]~5_combout\) # (\inst1|inst2|Regist\(7))) # (\inst1|inst8|Regist[0]~4_combout\) ) ) ) # ( !\inst1|inst2|Add0~29_sumout\ & ( 
-- \inst1|inst2|Mux7~0_combout\ & ( (!\inst1|inst8|Regist[0]~4_combout\ & ((!\inst1|inst8|Regist[0]~5_combout\) # (\inst1|inst2|Regist\(7)))) ) ) ) # ( \inst1|inst2|Add0~29_sumout\ & ( !\inst1|inst2|Mux7~0_combout\ & ( ((\inst1|inst2|Regist\(7) & 
-- \inst1|inst8|Regist[0]~5_combout\)) # (\inst1|inst8|Regist[0]~4_combout\) ) ) ) # ( !\inst1|inst2|Add0~29_sumout\ & ( !\inst1|inst2|Mux7~0_combout\ & ( (!\inst1|inst8|Regist[0]~4_combout\ & (\inst1|inst2|Regist\(7) & \inst1|inst8|Regist[0]~5_combout\)) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010010101110101011110100010101000101111011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Regist[0]~4_combout\,
	datab => \inst1|inst2|ALT_INV_Regist\(7),
	datac => \inst1|inst8|ALT_INV_Regist[0]~5_combout\,
	datae => \inst1|inst2|ALT_INV_Add0~29_sumout\,
	dataf => \inst1|inst2|ALT_INV_Mux7~0_combout\,
	combout => \inst1|inst2|Mux7~1_combout\);

-- Location: FF_X28_Y1_N44
\inst1|inst2|Regist[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst2|Mux7~1_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[0]~6_combout\,
	ena => \inst1|inst2|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst2|Regist\(0));

-- Location: LABCELL_X30_Y4_N39
\inst1|inst2|Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Mux6~1_combout\ = ( \inst1|inst2|Regist\(2) & ( (\SelBus[2]~input_o\ & ((\SelBus[0]~input_o\) # (\inst1|inst2|Regist\(0)))) ) ) # ( !\inst1|inst2|Regist\(2) & ( (\inst1|inst2|Regist\(0) & (!\SelBus[0]~input_o\ & \SelBus[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000000000010111110000000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|ALT_INV_Regist\(0),
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \ALT_INV_SelBus[2]~input_o\,
	dataf => \inst1|inst2|ALT_INV_Regist\(2),
	combout => \inst1|inst2|Mux6~1_combout\);

-- Location: LABCELL_X30_Y6_N57
\inst1|inst2|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Mux6~0_combout\ = ( \inst1|inst2|Regist\(1) & ( (!\SelBus[1]~input_o\ & \inst1|inst16|result\(1)) ) ) # ( !\inst1|inst2|Regist\(1) & ( (\inst1|inst16|result\(1)) # (\SelBus[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SelBus[1]~input_o\,
	datad => \inst1|inst16|ALT_INV_result\(1),
	dataf => \inst1|inst2|ALT_INV_Regist\(1),
	combout => \inst1|inst2|Mux6~0_combout\);

-- Location: LABCELL_X30_Y6_N6
\inst1|inst2|Mux6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Mux6~2_combout\ = ( \inst1|inst2|Add0~25_sumout\ & ( (((\inst1|inst2|Mux6~0_combout\ & \inst1|inst8|Regist[4]~0_combout\)) # (\inst1|inst8|Mux3~0_combout\)) # (\inst1|inst2|Mux6~1_combout\) ) ) # ( !\inst1|inst2|Add0~25_sumout\ & ( 
-- ((\inst1|inst2|Mux6~0_combout\ & \inst1|inst8|Regist[4]~0_combout\)) # (\inst1|inst2|Mux6~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101110111010101010111011101011111011111110101111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|ALT_INV_Mux6~1_combout\,
	datab => \inst1|inst2|ALT_INV_Mux6~0_combout\,
	datac => \inst1|inst8|ALT_INV_Mux3~0_combout\,
	datad => \inst1|inst8|ALT_INV_Regist[4]~0_combout\,
	dataf => \inst1|inst2|ALT_INV_Add0~25_sumout\,
	combout => \inst1|inst2|Mux6~2_combout\);

-- Location: FF_X30_Y6_N8
\inst1|inst2|Regist[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst2|Mux6~2_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[4]~1_combout\,
	ena => \inst1|inst2|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst2|Regist\(1));

-- Location: MLABCELL_X28_Y6_N6
\inst1|inst2|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Mux5~1_combout\ = ( \inst1|inst2|Regist\(1) & ( \inst1|inst2|Regist\(3) & ( \SelBus[2]~input_o\ ) ) ) # ( !\inst1|inst2|Regist\(1) & ( \inst1|inst2|Regist\(3) & ( (\SelBus[2]~input_o\ & \SelBus[0]~input_o\) ) ) ) # ( \inst1|inst2|Regist\(1) & 
-- ( !\inst1|inst2|Regist\(3) & ( (\SelBus[2]~input_o\ & !\SelBus[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000000000011000000110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SelBus[2]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datae => \inst1|inst2|ALT_INV_Regist\(1),
	dataf => \inst1|inst2|ALT_INV_Regist\(3),
	combout => \inst1|inst2|Mux5~1_combout\);

-- Location: LABCELL_X30_Y6_N0
\inst1|inst2|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Mux5~0_combout\ = ( \inst1|inst2|Regist\(2) & ( (\inst1|inst16|result\(2) & !\SelBus[1]~input_o\) ) ) # ( !\inst1|inst2|Regist\(2) & ( (\SelBus[1]~input_o\) # (\inst1|inst16|result\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst16|ALT_INV_result\(2),
	datad => \ALT_INV_SelBus[1]~input_o\,
	dataf => \inst1|inst2|ALT_INV_Regist\(2),
	combout => \inst1|inst2|Mux5~0_combout\);

-- Location: LABCELL_X31_Y6_N12
\inst1|inst2|Mux5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2|Mux5~2_combout\ = ( \inst1|inst2|Mux5~0_combout\ & ( (((\inst1|inst8|Mux3~0_combout\ & \inst1|inst2|Add0~21_sumout\)) # (\inst1|inst8|Regist[4]~0_combout\)) # (\inst1|inst2|Mux5~1_combout\) ) ) # ( !\inst1|inst2|Mux5~0_combout\ & ( 
-- ((\inst1|inst8|Mux3~0_combout\ & \inst1|inst2|Add0~21_sumout\)) # (\inst1|inst2|Mux5~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101110111010101010111011101011111011111110101111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|ALT_INV_Mux5~1_combout\,
	datab => \inst1|inst8|ALT_INV_Mux3~0_combout\,
	datac => \inst1|inst8|ALT_INV_Regist[4]~0_combout\,
	datad => \inst1|inst2|ALT_INV_Add0~21_sumout\,
	dataf => \inst1|inst2|ALT_INV_Mux5~0_combout\,
	combout => \inst1|inst2|Mux5~2_combout\);

-- Location: FF_X31_Y6_N14
\inst1|inst2|Regist[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst2|Mux5~2_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[4]~1_combout\,
	ena => \inst1|inst2|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst2|Regist\(2));

-- Location: LABCELL_X31_Y6_N54
\inst1|inst16|result[2]~314\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|result[2]~314_combout\ = ( \inst1|inst11|Regist\(2) & ( \inst1|inst2|Regist\(2) & ( (!\inst1|inst16|_~15_combout\ & (!\inst1|inst16|_~14_combout\ & ((!\inst1|inst16|_~16_combout\) # (!\Fuente2~input_o\)))) ) ) ) # ( !\inst1|inst11|Regist\(2) 
-- & ( \inst1|inst2|Regist\(2) & ( (!\inst1|inst16|_~15_combout\ & ((!\inst1|inst16|_~16_combout\) # (!\Fuente2~input_o\))) ) ) ) # ( \inst1|inst11|Regist\(2) & ( !\inst1|inst2|Regist\(2) & ( (!\inst1|inst16|_~14_combout\ & ((!\inst1|inst16|_~16_combout\) # 
-- (!\Fuente2~input_o\))) ) ) ) # ( !\inst1|inst11|Regist\(2) & ( !\inst1|inst2|Regist\(2) & ( (!\inst1|inst16|_~16_combout\) # (!\Fuente2~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111001100111100001100000010101010100010001010000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst16|ALT_INV__~15_combout\,
	datab => \inst1|inst16|ALT_INV__~16_combout\,
	datac => \inst1|inst16|ALT_INV__~14_combout\,
	datad => \ALT_INV_Fuente2~input_o\,
	datae => \inst1|inst11|ALT_INV_Regist\(2),
	dataf => \inst1|inst2|ALT_INV_Regist\(2),
	combout => \inst1|inst16|result[2]~314_combout\);

-- Location: MLABCELL_X34_Y5_N21
\inst1|inst16|_~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|_~11_combout\ = ( \muxSel[0]~input_o\ & ( !\muxSel[3]~input_o\ & ( (!\muxSel[1]~input_o\ & (!\muxSel[5]~input_o\ & (!\muxSel[4]~input_o\ & !\muxSel[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_muxSel[1]~input_o\,
	datab => \ALT_INV_muxSel[5]~input_o\,
	datac => \ALT_INV_muxSel[4]~input_o\,
	datad => \ALT_INV_muxSel[2]~input_o\,
	datae => \ALT_INV_muxSel[0]~input_o\,
	dataf => \ALT_INV_muxSel[3]~input_o\,
	combout => \inst1|inst16|_~11_combout\);

-- Location: IOIBUF_X26_Y81_N75
\Destino2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Destino2,
	o => \Destino2~input_o\);

-- Location: MLABCELL_X34_Y5_N27
\inst1|inst16|_~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|_~12_combout\ = ( \muxSel[0]~input_o\ & ( !\muxSel[3]~input_o\ & ( (\muxSel[1]~input_o\ & (!\muxSel[5]~input_o\ & (!\muxSel[4]~input_o\ & !\muxSel[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_muxSel[1]~input_o\,
	datab => \ALT_INV_muxSel[5]~input_o\,
	datac => \ALT_INV_muxSel[4]~input_o\,
	datad => \ALT_INV_muxSel[2]~input_o\,
	datae => \ALT_INV_muxSel[0]~input_o\,
	dataf => \ALT_INV_muxSel[3]~input_o\,
	combout => \inst1|inst16|_~12_combout\);

-- Location: MLABCELL_X34_Y5_N6
\inst1|inst16|_~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|_~13_combout\ = ( \muxSel[4]~input_o\ & ( !\muxSel[1]~input_o\ & ( (!\muxSel[0]~input_o\ & (!\muxSel[3]~input_o\ & (!\muxSel[2]~input_o\ & !\muxSel[5]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_muxSel[0]~input_o\,
	datab => \ALT_INV_muxSel[3]~input_o\,
	datac => \ALT_INV_muxSel[2]~input_o\,
	datad => \ALT_INV_muxSel[5]~input_o\,
	datae => \ALT_INV_muxSel[4]~input_o\,
	dataf => \ALT_INV_muxSel[1]~input_o\,
	combout => \inst1|inst16|_~13_combout\);

-- Location: IOIBUF_X26_Y0_N75
\MUX_B~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MUX_B,
	o => \MUX_B~input_o\);

-- Location: IOIBUF_X6_Y0_N18
\BIN[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BIN(2),
	o => \BIN[2]~input_o\);

-- Location: MLABCELL_X28_Y3_N24
\inst1|inst5|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|Mux5~0_combout\ = ( \inst1|inst5|Regist\(2) & ( (!\SelBus[1]~input_o\ & ((!\MUX_B~input_o\ & (\inst1|inst16|result\(2))) # (\MUX_B~input_o\ & ((\BIN[2]~input_o\))))) ) ) # ( !\inst1|inst5|Regist\(2) & ( ((!\MUX_B~input_o\ & 
-- (\inst1|inst16|result\(2))) # (\MUX_B~input_o\ & ((\BIN[2]~input_o\)))) # (\SelBus[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011111111111001001111111111100100111000000000010011100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MUX_B~input_o\,
	datab => \inst1|inst16|ALT_INV_result\(2),
	datac => \ALT_INV_BIN[2]~input_o\,
	datad => \ALT_INV_SelBus[1]~input_o\,
	dataf => \inst1|inst5|ALT_INV_Regist\(2),
	combout => \inst1|inst5|Mux5~0_combout\);

-- Location: IOIBUF_X56_Y0_N35
\BIN[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BIN(1),
	o => \BIN[1]~input_o\);

-- Location: MLABCELL_X28_Y3_N36
\inst1|inst200|$00000|auto_generated|l1_w1_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst200|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ = ( \MUX_B~input_o\ & ( \inst1|inst16|result\(1) & ( \BIN[1]~input_o\ ) ) ) # ( !\MUX_B~input_o\ & ( \inst1|inst16|result\(1) ) ) # ( \MUX_B~input_o\ & ( !\inst1|inst16|result\(1) & ( 
-- \BIN[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_BIN[1]~input_o\,
	datae => \ALT_INV_MUX_B~input_o\,
	dataf => \inst1|inst16|ALT_INV_result\(1),
	combout => \inst1|inst200|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\);

-- Location: IOIBUF_X52_Y0_N1
\BIN[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BIN(5),
	o => \BIN[5]~input_o\);

-- Location: MLABCELL_X28_Y2_N54
\inst1|inst5|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|Mux2~0_combout\ = ( \BIN[5]~input_o\ & ( (!\SelBus[1]~input_o\ & (((\inst1|inst16|result\(5))) # (\MUX_B~input_o\))) # (\SelBus[1]~input_o\ & (((!\inst1|inst5|Regist\(5))))) ) ) # ( !\BIN[5]~input_o\ & ( (!\SelBus[1]~input_o\ & 
-- (!\MUX_B~input_o\ & ((\inst1|inst16|result\(5))))) # (\SelBus[1]~input_o\ & (((!\inst1|inst5|Regist\(5))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000010111000001100001011100001110100111111000111010011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MUX_B~input_o\,
	datab => \ALT_INV_SelBus[1]~input_o\,
	datac => \inst1|inst5|ALT_INV_Regist\(5),
	datad => \inst1|inst16|ALT_INV_result\(5),
	dataf => \ALT_INV_BIN[5]~input_o\,
	combout => \inst1|inst5|Mux2~0_combout\);

-- Location: IOIBUF_X56_Y0_N18
\BIN[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BIN(4),
	o => \BIN[4]~input_o\);

-- Location: LABCELL_X27_Y2_N36
\inst1|inst5|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|Mux3~0_combout\ = ( \inst1|inst5|Regist\(4) & ( (!\SelBus[1]~input_o\ & ((!\MUX_B~input_o\ & ((\inst1|inst16|result\(4)))) # (\MUX_B~input_o\ & (\BIN[4]~input_o\)))) ) ) # ( !\inst1|inst5|Regist\(4) & ( ((!\MUX_B~input_o\ & 
-- ((\inst1|inst16|result\(4)))) # (\MUX_B~input_o\ & (\BIN[4]~input_o\))) # (\SelBus[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011111110111001101111111011100000100110001000000010011000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BIN[4]~input_o\,
	datab => \ALT_INV_SelBus[1]~input_o\,
	datac => \ALT_INV_MUX_B~input_o\,
	datad => \inst1|inst16|ALT_INV_result\(4),
	dataf => \inst1|inst5|ALT_INV_Regist\(4),
	combout => \inst1|inst5|Mux3~0_combout\);

-- Location: LABCELL_X27_Y2_N12
\inst1|inst5|Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|Mux4~1_combout\ = ( \inst1|inst5|Regist\(2) & ( (\SelBus[2]~input_o\ & ((!\SelBus[0]~input_o\) # (\inst1|inst5|Regist\(4)))) ) ) # ( !\inst1|inst5|Regist\(2) & ( (\SelBus[0]~input_o\ & (\SelBus[2]~input_o\ & \inst1|inst5|Regist\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100100011001000110010001100100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[0]~input_o\,
	datab => \ALT_INV_SelBus[2]~input_o\,
	datac => \inst1|inst5|ALT_INV_Regist\(4),
	dataf => \inst1|inst5|ALT_INV_Regist\(2),
	combout => \inst1|inst5|Mux4~1_combout\);

-- Location: IOIBUF_X8_Y0_N1
\BIN[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BIN(3),
	o => \BIN[3]~input_o\);

-- Location: MLABCELL_X28_Y2_N15
\inst1|inst5|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|Mux4~0_combout\ = ( \inst1|inst5|Regist\(3) & ( (!\SelBus[1]~input_o\ & ((!\MUX_B~input_o\ & (\inst1|inst16|result\(3))) # (\MUX_B~input_o\ & ((\BIN[3]~input_o\))))) ) ) # ( !\inst1|inst5|Regist\(3) & ( ((!\MUX_B~input_o\ & 
-- (\inst1|inst16|result\(3))) # (\MUX_B~input_o\ & ((\BIN[3]~input_o\)))) # (\SelBus[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101101111111001110110111111100001000010011000000100001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MUX_B~input_o\,
	datab => \ALT_INV_SelBus[1]~input_o\,
	datac => \inst1|inst16|ALT_INV_result\(3),
	datad => \ALT_INV_BIN[3]~input_o\,
	dataf => \inst1|inst5|ALT_INV_Regist\(3),
	combout => \inst1|inst5|Mux4~0_combout\);

-- Location: MLABCELL_X28_Y3_N54
\inst1|inst200|$00000|auto_generated|l1_w3_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst200|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\ = ( \inst1|inst16|result\(3) & ( (!\MUX_B~input_o\) # (\BIN[3]~input_o\) ) ) # ( !\inst1|inst16|result\(3) & ( (\MUX_B~input_o\ & \BIN[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MUX_B~input_o\,
	datac => \ALT_INV_BIN[3]~input_o\,
	dataf => \inst1|inst16|ALT_INV_result\(3),
	combout => \inst1|inst200|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X28_Y3_N45
\inst1|inst200|$00000|auto_generated|l1_w2_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst200|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ = ( \inst1|inst16|result\(2) & ( (!\MUX_B~input_o\) # (\BIN[2]~input_o\) ) ) # ( !\inst1|inst16|result\(2) & ( (\BIN[2]~input_o\ & \MUX_B~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BIN[2]~input_o\,
	datad => \ALT_INV_MUX_B~input_o\,
	dataf => \inst1|inst16|ALT_INV_result\(2),
	combout => \inst1|inst200|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X28_Y3_N3
\inst1|inst5|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|Add0~25_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst200|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\)))) ) + ( !\inst1|inst5|Regist\(1) $ 
-- (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( \inst1|inst5|Add0~30\ ))
-- \inst1|inst5|Add0~26\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst200|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\)))) ) + ( !\inst1|inst5|Regist\(1) $ 
-- (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( \inst1|inst5|Add0~30\ ))

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
	datad => \inst1|inst200|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\,
	dataf => \inst1|inst5|ALT_INV_Regist\(1),
	cin => \inst1|inst5|Add0~30\,
	sumout => \inst1|inst5|Add0~25_sumout\,
	cout => \inst1|inst5|Add0~26\);

-- Location: MLABCELL_X28_Y3_N6
\inst1|inst5|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|Add0~21_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst200|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\)))) ) + ( !\inst1|inst5|Regist\(2) $ 
-- (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( \inst1|inst5|Add0~26\ ))
-- \inst1|inst5|Add0~22\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst200|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\)))) ) + ( !\inst1|inst5|Regist\(2) $ 
-- (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( \inst1|inst5|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000010100000000000000000011000000111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[0]~input_o\,
	datac => \ALT_INV_SelBus[3]~input_o\,
	datad => \inst1|inst200|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\,
	dataf => \inst1|inst5|ALT_INV_Regist\(2),
	cin => \inst1|inst5|Add0~26\,
	sumout => \inst1|inst5|Add0~21_sumout\,
	cout => \inst1|inst5|Add0~22\);

-- Location: MLABCELL_X28_Y3_N9
\inst1|inst5|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|Add0~17_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst200|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\)))) ) + ( !\inst1|inst5|Regist\(3) $ 
-- (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( \inst1|inst5|Add0~22\ ))
-- \inst1|inst5|Add0~18\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst200|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\)))) ) + ( !\inst1|inst5|Regist\(3) $ 
-- (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( \inst1|inst5|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000010100000000000000000011000000111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[0]~input_o\,
	datac => \ALT_INV_SelBus[3]~input_o\,
	datad => \inst1|inst200|$00000|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\,
	dataf => \inst1|inst5|ALT_INV_Regist\(3),
	cin => \inst1|inst5|Add0~22\,
	sumout => \inst1|inst5|Add0~17_sumout\,
	cout => \inst1|inst5|Add0~18\);

-- Location: LABCELL_X27_Y2_N21
\inst1|inst5|Mux4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|Mux4~2_combout\ = ( \inst1|inst5|Add0~17_sumout\ & ( (((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst5|Mux4~0_combout\)) # (\inst1|inst5|Mux4~1_combout\)) # (\inst1|inst8|Mux3~0_combout\) ) ) # ( !\inst1|inst5|Add0~17_sumout\ & ( 
-- ((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst5|Mux4~0_combout\)) # (\inst1|inst5|Mux4~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111111000011110011111101011111011111110101111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Mux3~0_combout\,
	datab => \inst1|inst8|ALT_INV_Regist[4]~0_combout\,
	datac => \inst1|inst5|ALT_INV_Mux4~1_combout\,
	datad => \inst1|inst5|ALT_INV_Mux4~0_combout\,
	dataf => \inst1|inst5|ALT_INV_Add0~17_sumout\,
	combout => \inst1|inst5|Mux4~2_combout\);

-- Location: MLABCELL_X28_Y5_N24
\inst1|inst5|Regist[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|Regist[6]~0_combout\ = ( !\SelRegD[1]~input_o\ & ( !\SelRegD[2]~input_o\ & ( (\SelRegD[0]~input_o\ & \inst1|inst6|Regist[6]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SelRegD[0]~input_o\,
	datac => \inst1|inst6|ALT_INV_Regist[6]~0_combout\,
	datae => \ALT_INV_SelRegD[1]~input_o\,
	dataf => \ALT_INV_SelRegD[2]~input_o\,
	combout => \inst1|inst5|Regist[6]~0_combout\);

-- Location: FF_X27_Y2_N23
\inst1|inst5|Regist[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst5|Mux4~2_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[4]~1_combout\,
	ena => \inst1|inst5|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|Regist\(3));

-- Location: LABCELL_X27_Y2_N57
\inst1|inst5|Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|Mux3~1_combout\ = ( \inst1|inst5|Regist\(5) & ( (\SelBus[2]~input_o\ & ((\inst1|inst5|Regist\(3)) # (\SelBus[0]~input_o\))) ) ) # ( !\inst1|inst5|Regist\(5) & ( (!\SelBus[0]~input_o\ & (\SelBus[2]~input_o\ & \inst1|inst5|Regist\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001000010001001100110001000100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[0]~input_o\,
	datab => \ALT_INV_SelBus[2]~input_o\,
	datad => \inst1|inst5|ALT_INV_Regist\(3),
	dataf => \inst1|inst5|ALT_INV_Regist\(5),
	combout => \inst1|inst5|Mux3~1_combout\);

-- Location: MLABCELL_X28_Y3_N27
\inst1|inst200|$00000|auto_generated|l1_w4_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst200|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\ = ( \inst1|inst16|result\(4) & ( (!\MUX_B~input_o\) # (\BIN[4]~input_o\) ) ) # ( !\inst1|inst16|result\(4) & ( (\MUX_B~input_o\ & \BIN[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MUX_B~input_o\,
	datac => \ALT_INV_BIN[4]~input_o\,
	dataf => \inst1|inst16|ALT_INV_result\(4),
	combout => \inst1|inst200|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X28_Y3_N12
\inst1|inst5|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|Add0~13_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst200|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\)))) ) + ( !\inst1|inst5|Regist\(4) $ 
-- (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( \inst1|inst5|Add0~18\ ))
-- \inst1|inst5|Add0~14\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst200|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\)))) ) + ( !\inst1|inst5|Regist\(4) $ 
-- (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( \inst1|inst5|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000010100000000000000000011000000111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[0]~input_o\,
	datac => \ALT_INV_SelBus[3]~input_o\,
	datad => \inst1|inst200|$00000|auto_generated|ALT_INV_l1_w4_n0_mux_dataout~0_combout\,
	dataf => \inst1|inst5|ALT_INV_Regist\(4),
	cin => \inst1|inst5|Add0~18\,
	sumout => \inst1|inst5|Add0~13_sumout\,
	cout => \inst1|inst5|Add0~14\);

-- Location: LABCELL_X27_Y2_N42
\inst1|inst5|Mux3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|Mux3~2_combout\ = ( \inst1|inst5|Mux3~1_combout\ & ( \inst1|inst5|Add0~13_sumout\ ) ) # ( !\inst1|inst5|Mux3~1_combout\ & ( \inst1|inst5|Add0~13_sumout\ & ( ((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst5|Mux3~0_combout\)) # 
-- (\inst1|inst8|Mux3~0_combout\) ) ) ) # ( \inst1|inst5|Mux3~1_combout\ & ( !\inst1|inst5|Add0~13_sumout\ ) ) # ( !\inst1|inst5|Mux3~1_combout\ & ( !\inst1|inst5|Add0~13_sumout\ & ( (\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst5|Mux3~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011111111111111111100000011111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst8|ALT_INV_Regist[4]~0_combout\,
	datac => \inst1|inst5|ALT_INV_Mux3~0_combout\,
	datad => \inst1|inst8|ALT_INV_Mux3~0_combout\,
	datae => \inst1|inst5|ALT_INV_Mux3~1_combout\,
	dataf => \inst1|inst5|ALT_INV_Add0~13_sumout\,
	combout => \inst1|inst5|Mux3~2_combout\);

-- Location: FF_X27_Y2_N44
\inst1|inst5|Regist[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst5|Mux3~2_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[4]~1_combout\,
	ena => \inst1|inst5|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|Regist\(4));

-- Location: LABCELL_X27_Y2_N15
\inst1|inst5|Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|Mux2~1_combout\ = ( \inst1|inst5|Regist\(6) & ( (\SelBus[2]~input_o\ & ((\inst1|inst5|Regist\(4)) # (\SelBus[0]~input_o\))) ) ) # ( !\inst1|inst5|Regist\(6) & ( (!\SelBus[0]~input_o\ & (\SelBus[2]~input_o\ & \inst1|inst5|Regist\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000010011000100110001001100010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[0]~input_o\,
	datab => \ALT_INV_SelBus[2]~input_o\,
	datac => \inst1|inst5|ALT_INV_Regist\(4),
	dataf => \inst1|inst5|ALT_INV_Regist\(6),
	combout => \inst1|inst5|Mux2~1_combout\);

-- Location: MLABCELL_X28_Y3_N42
\inst1|inst200|$00000|auto_generated|l1_w5_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst200|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\ = ( \inst1|inst16|result\(5) & ( (!\MUX_B~input_o\) # (\BIN[5]~input_o\) ) ) # ( !\inst1|inst16|result\(5) & ( (\BIN[5]~input_o\ & \MUX_B~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_BIN[5]~input_o\,
	datad => \ALT_INV_MUX_B~input_o\,
	dataf => \inst1|inst16|ALT_INV_result\(5),
	combout => \inst1|inst200|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X28_Y3_N15
\inst1|inst5|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|Add0~9_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst200|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\)))) ) + ( !\inst1|inst5|Regist\(5) $ 
-- (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( \inst1|inst5|Add0~14\ ))
-- \inst1|inst5|Add0~10\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst200|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\)))) ) + ( !\inst1|inst5|Regist\(5) $ 
-- (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( \inst1|inst5|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000010100000000000000000011000000111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[0]~input_o\,
	datac => \ALT_INV_SelBus[3]~input_o\,
	datad => \inst1|inst200|$00000|auto_generated|ALT_INV_l1_w5_n0_mux_dataout~0_combout\,
	dataf => \inst1|inst5|ALT_INV_Regist\(5),
	cin => \inst1|inst5|Add0~14\,
	sumout => \inst1|inst5|Add0~9_sumout\,
	cout => \inst1|inst5|Add0~10\);

-- Location: MLABCELL_X28_Y2_N36
\inst1|inst5|Mux2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|Mux2~2_combout\ = ( \inst1|inst5|Add0~9_sumout\ & ( (((\inst1|inst5|Mux2~0_combout\ & \inst1|inst8|Regist[4]~0_combout\)) # (\inst1|inst5|Mux2~1_combout\)) # (\inst1|inst8|Mux3~0_combout\) ) ) # ( !\inst1|inst5|Add0~9_sumout\ & ( 
-- ((\inst1|inst5|Mux2~0_combout\ & \inst1|inst8|Regist[4]~0_combout\)) # (\inst1|inst5|Mux2~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111111000001011111111100110111111111110011011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|ALT_INV_Mux2~0_combout\,
	datab => \inst1|inst8|ALT_INV_Mux3~0_combout\,
	datac => \inst1|inst8|ALT_INV_Regist[4]~0_combout\,
	datad => \inst1|inst5|ALT_INV_Mux2~1_combout\,
	dataf => \inst1|inst5|ALT_INV_Add0~9_sumout\,
	combout => \inst1|inst5|Mux2~2_combout\);

-- Location: FF_X28_Y2_N38
\inst1|inst5|Regist[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst5|Mux2~2_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[4]~1_combout\,
	ena => \inst1|inst5|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|Regist\(5));

-- Location: LABCELL_X27_Y2_N54
\inst1|inst5|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|Mux1~1_combout\ = ( \inst1|inst5|Regist\(5) & ( (\SelBus[2]~input_o\ & ((!\SelBus[0]~input_o\) # (\inst1|inst5|Regist\(7)))) ) ) # ( !\inst1|inst5|Regist\(5) & ( (\SelBus[0]~input_o\ & (\SelBus[2]~input_o\ & \inst1|inst5|Regist\(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100100011001000110010001100100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[0]~input_o\,
	datab => \ALT_INV_SelBus[2]~input_o\,
	datac => \inst1|inst5|ALT_INV_Regist\(7),
	dataf => \inst1|inst5|ALT_INV_Regist\(5),
	combout => \inst1|inst5|Mux1~1_combout\);

-- Location: IOIBUF_X6_Y0_N35
\BIN[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BIN(6),
	o => \BIN[6]~input_o\);

-- Location: MLABCELL_X28_Y2_N57
\inst1|inst5|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|Mux1~0_combout\ = ( \inst1|inst16|result\(6) & ( (!\SelBus[1]~input_o\ & ((!\MUX_B~input_o\) # ((\BIN[6]~input_o\)))) # (\SelBus[1]~input_o\ & (((!\inst1|inst5|Regist\(6))))) ) ) # ( !\inst1|inst16|result\(6) & ( (!\SelBus[1]~input_o\ & 
-- (\MUX_B~input_o\ & (\BIN[6]~input_o\))) # (\SelBus[1]~input_o\ & (((!\inst1|inst5|Regist\(6))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011100000100001101110000010010111111100011001011111110001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MUX_B~input_o\,
	datab => \ALT_INV_SelBus[1]~input_o\,
	datac => \ALT_INV_BIN[6]~input_o\,
	datad => \inst1|inst5|ALT_INV_Regist\(6),
	dataf => \inst1|inst16|ALT_INV_result\(6),
	combout => \inst1|inst5|Mux1~0_combout\);

-- Location: MLABCELL_X28_Y2_N24
\inst1|inst200|$00000|auto_generated|l1_w6_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst200|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\ = ( \inst1|inst16|result\(6) & ( (!\MUX_B~input_o\) # (\BIN[6]~input_o\) ) ) # ( !\inst1|inst16|result\(6) & ( (\MUX_B~input_o\ & \BIN[6]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_MUX_B~input_o\,
	datad => \ALT_INV_BIN[6]~input_o\,
	dataf => \inst1|inst16|ALT_INV_result\(6),
	combout => \inst1|inst200|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X28_Y3_N18
\inst1|inst5|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|Add0~5_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst200|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\)))) ) + ( !\inst1|inst5|Regist\(6) $ 
-- (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( \inst1|inst5|Add0~10\ ))
-- \inst1|inst5|Add0~6\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst200|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\)))) ) + ( !\inst1|inst5|Regist\(6) $ 
-- (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( \inst1|inst5|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000010100000000000000000011000000111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[0]~input_o\,
	datac => \ALT_INV_SelBus[3]~input_o\,
	datad => \inst1|inst200|$00000|auto_generated|ALT_INV_l1_w6_n0_mux_dataout~0_combout\,
	dataf => \inst1|inst5|ALT_INV_Regist\(6),
	cin => \inst1|inst5|Add0~10\,
	sumout => \inst1|inst5|Add0~5_sumout\,
	cout => \inst1|inst5|Add0~6\);

-- Location: LABCELL_X27_Y2_N18
\inst1|inst5|Mux1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|Mux1~2_combout\ = ( \inst1|inst5|Add0~5_sumout\ & ( (((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst5|Mux1~0_combout\)) # (\inst1|inst5|Mux1~1_combout\)) # (\inst1|inst8|Mux3~0_combout\) ) ) # ( !\inst1|inst5|Add0~5_sumout\ & ( 
-- ((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst5|Mux1~0_combout\)) # (\inst1|inst5|Mux1~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111111000011110011111101011111011111110101111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Mux3~0_combout\,
	datab => \inst1|inst8|ALT_INV_Regist[4]~0_combout\,
	datac => \inst1|inst5|ALT_INV_Mux1~1_combout\,
	datad => \inst1|inst5|ALT_INV_Mux1~0_combout\,
	dataf => \inst1|inst5|ALT_INV_Add0~5_sumout\,
	combout => \inst1|inst5|Mux1~2_combout\);

-- Location: FF_X27_Y2_N20
\inst1|inst5|Regist[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst5|Mux1~2_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[4]~1_combout\,
	ena => \inst1|inst5|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|Regist\(6));

-- Location: IOIBUF_X8_Y0_N52
\BIN[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BIN(7),
	o => \BIN[7]~input_o\);

-- Location: LABCELL_X27_Y3_N6
\inst1|inst200|$00000|auto_generated|l1_w7_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst200|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\ = ( \BIN[7]~input_o\ & ( \inst1|inst16|result\(7) ) ) # ( !\BIN[7]~input_o\ & ( \inst1|inst16|result\(7) & ( !\MUX_B~input_o\ ) ) ) # ( \BIN[7]~input_o\ & ( !\inst1|inst16|result\(7) & ( 
-- \MUX_B~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111110000111100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_MUX_B~input_o\,
	datae => \ALT_INV_BIN[7]~input_o\,
	dataf => \inst1|inst16|ALT_INV_result\(7),
	combout => \inst1|inst200|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X27_Y3_N24
\inst1|inst5|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|Mux0~0_combout\ = ( \inst1|inst8|Regist[0]~9_combout\ & ( \inst1|inst200|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\ & ( (\inst1|inst8|Regist[7]~10_combout\ & \inst1|inst5|Regist\(6)) ) ) ) # ( !\inst1|inst8|Regist[0]~9_combout\ & ( 
-- \inst1|inst200|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\ & ( (!\inst1|inst5|Regist\(7)) # (\inst1|inst8|Regist[7]~10_combout\) ) ) ) # ( \inst1|inst8|Regist[0]~9_combout\ & ( 
-- !\inst1|inst200|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\ & ( (\inst1|inst8|Regist[7]~10_combout\ & \inst1|inst5|Regist\(6)) ) ) ) # ( !\inst1|inst8|Regist[0]~9_combout\ & ( !\inst1|inst200|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\ 
-- & ( (!\inst1|inst8|Regist[7]~10_combout\ & !\inst1|inst5|Regist\(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000000000000101010111011101110111010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Regist[7]~10_combout\,
	datab => \inst1|inst5|ALT_INV_Regist\(7),
	datad => \inst1|inst5|ALT_INV_Regist\(6),
	datae => \inst1|inst8|ALT_INV_Regist[0]~9_combout\,
	dataf => \inst1|inst200|$00000|auto_generated|ALT_INV_l1_w7_n0_mux_dataout~0_combout\,
	combout => \inst1|inst5|Mux0~0_combout\);

-- Location: MLABCELL_X28_Y3_N21
\inst1|inst5|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|Add0~1_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst200|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\)))) ) + ( !\inst1|inst5|Regist\(7) $ 
-- (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( \inst1|inst5|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000010100000000000000000011000000111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[0]~input_o\,
	datac => \ALT_INV_SelBus[3]~input_o\,
	datad => \inst1|inst200|$00000|auto_generated|ALT_INV_l1_w7_n0_mux_dataout~0_combout\,
	dataf => \inst1|inst5|ALT_INV_Regist\(7),
	cin => \inst1|inst5|Add0~6\,
	sumout => \inst1|inst5|Add0~1_sumout\);

-- Location: MLABCELL_X28_Y3_N48
\inst1|inst5|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|Mux0~1_combout\ = ( \inst1|inst5|Add0~1_sumout\ & ( (((\inst1|inst8|Regist[7]~7_combout\ & \inst1|inst5|Regist\(0))) # (\inst1|inst8|Regist[0]~4_combout\)) # (\inst1|inst5|Mux0~0_combout\) ) ) # ( !\inst1|inst5|Add0~1_sumout\ & ( 
-- (!\inst1|inst8|Regist[0]~4_combout\ & (((\inst1|inst8|Regist[7]~7_combout\ & \inst1|inst5|Regist\(0))) # (\inst1|inst5|Mux0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011100000000010101110000000001010111111111110101011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|ALT_INV_Mux0~0_combout\,
	datab => \inst1|inst8|ALT_INV_Regist[7]~7_combout\,
	datac => \inst1|inst5|ALT_INV_Regist\(0),
	datad => \inst1|inst8|ALT_INV_Regist[0]~4_combout\,
	dataf => \inst1|inst5|ALT_INV_Add0~1_sumout\,
	combout => \inst1|inst5|Mux0~1_combout\);

-- Location: FF_X28_Y3_N50
\inst1|inst5|Regist[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst5|Mux0~1_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[7]~8_combout\,
	ena => \inst1|inst5|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|Regist\(7));

-- Location: IOIBUF_X68_Y0_N35
\BIN[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BIN(0),
	o => \BIN[0]~input_o\);

-- Location: MLABCELL_X28_Y3_N57
\inst1|inst200|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst200|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst1|inst16|result\(0) & ( (!\MUX_B~input_o\) # (\BIN[0]~input_o\) ) ) # ( !\inst1|inst16|result\(0) & ( (\MUX_B~input_o\ & \BIN[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MUX_B~input_o\,
	datad => \ALT_INV_BIN[0]~input_o\,
	dataf => \inst1|inst16|ALT_INV_result\(0),
	combout => \inst1|inst200|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X27_Y5_N21
\inst1|inst5|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|Mux7~0_combout\ = ( \inst1|inst5|Regist\(0) & ( \inst1|inst200|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (!\SelBus[3]~input_o\ & ((!\SelBus[2]~input_o\) # (\inst1|inst5|Regist\(1)))) ) ) ) # ( !\inst1|inst5|Regist\(0) & ( 
-- \inst1|inst200|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( ((!\SelBus[2]~input_o\) # (\inst1|inst5|Regist\(1))) # (\SelBus[3]~input_o\) ) ) ) # ( \inst1|inst5|Regist\(0) & ( 
-- !\inst1|inst200|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (!\SelBus[3]~input_o\ & (\inst1|inst5|Regist\(1) & \SelBus[2]~input_o\)) ) ) ) # ( !\inst1|inst5|Regist\(0) & ( !\inst1|inst200|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ 
-- & ( ((\inst1|inst5|Regist\(1) & \SelBus[2]~input_o\)) # (\SelBus[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011101010111000000100000001011110111111101111010001010100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[3]~input_o\,
	datab => \inst1|inst5|ALT_INV_Regist\(1),
	datac => \ALT_INV_SelBus[2]~input_o\,
	datae => \inst1|inst5|ALT_INV_Regist\(0),
	dataf => \inst1|inst200|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	combout => \inst1|inst5|Mux7~0_combout\);

-- Location: MLABCELL_X28_Y3_N0
\inst1|inst5|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|Add0~29_sumout\ = SUM(( ((!\SelBus[3]~input_o\) # (\inst1|inst200|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\)) # (\SelBus[1]~input_o\) ) + ( !\inst1|inst5|Regist\(0) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( !VCC 
-- ))
-- \inst1|inst5|Add0~30\ = CARRY(( ((!\SelBus[3]~input_o\) # (\inst1|inst200|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\)) # (\SelBus[1]~input_o\) ) + ( !\inst1|inst5|Regist\(0) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111000011110000100000000000000001101110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[3]~input_o\,
	datac => \inst1|inst5|ALT_INV_Regist\(0),
	datad => \inst1|inst200|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	cin => GND,
	sumout => \inst1|inst5|Add0~29_sumout\,
	cout => \inst1|inst5|Add0~30\);

-- Location: LABCELL_X27_Y5_N3
\inst1|inst5|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|Mux7~1_combout\ = ( \inst1|inst5|Mux7~0_combout\ & ( \inst1|inst5|Add0~29_sumout\ & ( (!\inst1|inst8|Regist[0]~5_combout\) # ((\inst1|inst8|Regist[0]~4_combout\) # (\inst1|inst5|Regist\(7))) ) ) ) # ( !\inst1|inst5|Mux7~0_combout\ & ( 
-- \inst1|inst5|Add0~29_sumout\ & ( ((\inst1|inst8|Regist[0]~5_combout\ & \inst1|inst5|Regist\(7))) # (\inst1|inst8|Regist[0]~4_combout\) ) ) ) # ( \inst1|inst5|Mux7~0_combout\ & ( !\inst1|inst5|Add0~29_sumout\ & ( (!\inst1|inst8|Regist[0]~4_combout\ & 
-- ((!\inst1|inst8|Regist[0]~5_combout\) # (\inst1|inst5|Regist\(7)))) ) ) ) # ( !\inst1|inst5|Mux7~0_combout\ & ( !\inst1|inst5|Add0~29_sumout\ & ( (\inst1|inst8|Regist[0]~5_combout\ & (\inst1|inst5|Regist\(7) & !\inst1|inst8|Regist[0]~4_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000000101110110000000000010001111111111011101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Regist[0]~5_combout\,
	datab => \inst1|inst5|ALT_INV_Regist\(7),
	datad => \inst1|inst8|ALT_INV_Regist[0]~4_combout\,
	datae => \inst1|inst5|ALT_INV_Mux7~0_combout\,
	dataf => \inst1|inst5|ALT_INV_Add0~29_sumout\,
	combout => \inst1|inst5|Mux7~1_combout\);

-- Location: FF_X27_Y5_N5
\inst1|inst5|Regist[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst5|Mux7~1_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[0]~6_combout\,
	ena => \inst1|inst5|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|Regist\(0));

-- Location: LABCELL_X27_Y3_N15
\inst1|inst5|Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|Mux6~1_combout\ = ( \inst1|inst5|Regist\(2) & ( (\SelBus[2]~input_o\ & ((\SelBus[0]~input_o\) # (\inst1|inst5|Regist\(0)))) ) ) # ( !\inst1|inst5|Regist\(2) & ( (\SelBus[2]~input_o\ & (\inst1|inst5|Regist\(0) & !\SelBus[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000000101010101010000010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[2]~input_o\,
	datac => \inst1|inst5|ALT_INV_Regist\(0),
	datad => \ALT_INV_SelBus[0]~input_o\,
	dataf => \inst1|inst5|ALT_INV_Regist\(2),
	combout => \inst1|inst5|Mux6~1_combout\);

-- Location: MLABCELL_X28_Y2_N12
\inst1|inst5|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|Mux6~0_combout\ = ( \inst1|inst5|Regist\(1) & ( (!\SelBus[1]~input_o\ & ((!\MUX_B~input_o\ & ((\inst1|inst16|result\(1)))) # (\MUX_B~input_o\ & (\BIN[1]~input_o\)))) ) ) # ( !\inst1|inst5|Regist\(1) & ( ((!\MUX_B~input_o\ & 
-- ((\inst1|inst16|result\(1)))) # (\MUX_B~input_o\ & (\BIN[1]~input_o\))) # (\SelBus[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011110111111001101111011111100000100100011000000010010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MUX_B~input_o\,
	datab => \ALT_INV_SelBus[1]~input_o\,
	datac => \ALT_INV_BIN[1]~input_o\,
	datad => \inst1|inst16|ALT_INV_result\(1),
	dataf => \inst1|inst5|ALT_INV_Regist\(1),
	combout => \inst1|inst5|Mux6~0_combout\);

-- Location: MLABCELL_X28_Y2_N18
\inst1|inst5|Mux6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|Mux6~2_combout\ = ( \inst1|inst5|Mux6~0_combout\ & ( (((\inst1|inst8|Mux3~0_combout\ & \inst1|inst5|Add0~25_sumout\)) # (\inst1|inst5|Mux6~1_combout\)) # (\inst1|inst8|Regist[4]~0_combout\) ) ) # ( !\inst1|inst5|Mux6~0_combout\ & ( 
-- ((\inst1|inst8|Mux3~0_combout\ & \inst1|inst5|Add0~25_sumout\)) # (\inst1|inst5|Mux6~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111111000000111111111101010111111111110101011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Regist[4]~0_combout\,
	datab => \inst1|inst8|ALT_INV_Mux3~0_combout\,
	datac => \inst1|inst5|ALT_INV_Add0~25_sumout\,
	datad => \inst1|inst5|ALT_INV_Mux6~1_combout\,
	dataf => \inst1|inst5|ALT_INV_Mux6~0_combout\,
	combout => \inst1|inst5|Mux6~2_combout\);

-- Location: FF_X28_Y2_N20
\inst1|inst5|Regist[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst5|Mux6~2_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[4]~1_combout\,
	ena => \inst1|inst5|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|Regist\(1));

-- Location: LABCELL_X27_Y3_N48
\inst1|inst5|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|Mux5~1_combout\ = ( \inst1|inst5|Regist\(3) & ( (\SelBus[2]~input_o\ & ((\SelBus[0]~input_o\) # (\inst1|inst5|Regist\(1)))) ) ) # ( !\inst1|inst5|Regist\(3) & ( (\inst1|inst5|Regist\(1) & (\SelBus[2]~input_o\ & !\SelBus[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000111100000101000000000000010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|ALT_INV_Regist\(1),
	datac => \ALT_INV_SelBus[2]~input_o\,
	datad => \ALT_INV_SelBus[0]~input_o\,
	datae => \inst1|inst5|ALT_INV_Regist\(3),
	combout => \inst1|inst5|Mux5~1_combout\);

-- Location: LABCELL_X27_Y3_N36
\inst1|inst5|Mux5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst5|Mux5~2_combout\ = ( \inst1|inst5|Add0~21_sumout\ & ( (((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst5|Mux5~0_combout\)) # (\inst1|inst5|Mux5~1_combout\)) # (\inst1|inst8|Mux3~0_combout\) ) ) # ( !\inst1|inst5|Add0~21_sumout\ & ( 
-- ((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst5|Mux5~0_combout\)) # (\inst1|inst5|Mux5~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111111000000111111111101010111111111110101011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Mux3~0_combout\,
	datab => \inst1|inst8|ALT_INV_Regist[4]~0_combout\,
	datac => \inst1|inst5|ALT_INV_Mux5~0_combout\,
	datad => \inst1|inst5|ALT_INV_Mux5~1_combout\,
	dataf => \inst1|inst5|ALT_INV_Add0~21_sumout\,
	combout => \inst1|inst5|Mux5~2_combout\);

-- Location: FF_X27_Y3_N38
\inst1|inst5|Regist[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst5|Mux5~2_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[4]~1_combout\,
	ena => \inst1|inst5|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|Regist\(2));

-- Location: LABCELL_X27_Y2_N51
\inst1|inst10|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst10|Mux3~0_combout\ = ( \inst1|inst10|Regist\(4) & ( (\inst1|inst16|result\(4) & !\SelBus[1]~input_o\) ) ) # ( !\inst1|inst10|Regist\(4) & ( (\SelBus[1]~input_o\) # (\inst1|inst16|result\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst16|ALT_INV_result\(4),
	datad => \ALT_INV_SelBus[1]~input_o\,
	dataf => \inst1|inst10|ALT_INV_Regist\(4),
	combout => \inst1|inst10|Mux3~0_combout\);

-- Location: MLABCELL_X28_Y2_N39
\inst1|inst10|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst10|Mux1~0_combout\ = ( \inst1|inst16|result\(6) & ( (!\SelBus[1]~input_o\) # (!\inst1|inst10|Regist\(6)) ) ) # ( !\inst1|inst16|result\(6) & ( (\SelBus[1]~input_o\ & !\inst1|inst10|Regist\(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000011111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SelBus[1]~input_o\,
	datad => \inst1|inst10|ALT_INV_Regist\(6),
	dataf => \inst1|inst16|ALT_INV_result\(6),
	combout => \inst1|inst10|Mux1~0_combout\);

-- Location: LABCELL_X29_Y2_N0
\inst1|inst10|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst10|Add0~29_sumout\ = SUM(( ((!\SelBus[3]~input_o\) # (\inst1|inst16|result\(0))) # (\SelBus[1]~input_o\) ) + ( !\inst1|inst10|Regist\(0) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( !VCC ))
-- \inst1|inst10|Add0~30\ = CARRY(( ((!\SelBus[3]~input_o\) # (\inst1|inst16|result\(0))) # (\SelBus[1]~input_o\) ) + ( !\inst1|inst10|Regist\(0) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000001101111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[3]~input_o\,
	datac => \inst1|inst16|ALT_INV_result\(0),
	dataf => \inst1|inst10|ALT_INV_Regist\(0),
	cin => GND,
	sumout => \inst1|inst10|Add0~29_sumout\,
	cout => \inst1|inst10|Add0~30\);

-- Location: LABCELL_X29_Y2_N33
\inst1|inst10|Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst10|Mux6~1_combout\ = ( \inst1|inst10|Regist\(2) & ( (\SelBus[2]~input_o\ & ((\SelBus[0]~input_o\) # (\inst1|inst10|Regist\(0)))) ) ) # ( !\inst1|inst10|Regist\(2) & ( (\inst1|inst10|Regist\(0) & (\SelBus[2]~input_o\ & !\SelBus[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000000000011000011110000001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst10|ALT_INV_Regist\(0),
	datac => \ALT_INV_SelBus[2]~input_o\,
	datad => \ALT_INV_SelBus[0]~input_o\,
	dataf => \inst1|inst10|ALT_INV_Regist\(2),
	combout => \inst1|inst10|Mux6~1_combout\);

-- Location: LABCELL_X29_Y2_N3
\inst1|inst10|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst10|Add0~25_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(1))))) ) + ( !\inst1|inst10|Regist\(1) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) 
-- ) + ( \inst1|inst10|Add0~30\ ))
-- \inst1|inst10|Add0~26\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(1))))) ) + ( !\inst1|inst10|Regist\(1) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst1|inst10|Add0~30\ ))

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
	datad => \inst1|inst16|ALT_INV_result\(1),
	dataf => \inst1|inst10|ALT_INV_Regist\(1),
	cin => \inst1|inst10|Add0~30\,
	sumout => \inst1|inst10|Add0~25_sumout\,
	cout => \inst1|inst10|Add0~26\);

-- Location: MLABCELL_X28_Y2_N21
\inst1|inst10|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst10|Mux6~0_combout\ = ( \inst1|inst10|Regist\(1) & ( (!\SelBus[1]~input_o\ & \inst1|inst16|result\(1)) ) ) # ( !\inst1|inst10|Regist\(1) & ( (\inst1|inst16|result\(1)) # (\SelBus[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SelBus[1]~input_o\,
	datad => \inst1|inst16|ALT_INV_result\(1),
	dataf => \inst1|inst10|ALT_INV_Regist\(1),
	combout => \inst1|inst10|Mux6~0_combout\);

-- Location: MLABCELL_X28_Y2_N30
\inst1|inst10|Mux6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst10|Mux6~2_combout\ = ( \inst1|inst10|Mux6~0_combout\ & ( (((\inst1|inst8|Mux3~0_combout\ & \inst1|inst10|Add0~25_sumout\)) # (\inst1|inst10|Mux6~1_combout\)) # (\inst1|inst8|Regist[4]~0_combout\) ) ) # ( !\inst1|inst10|Mux6~0_combout\ & ( 
-- ((\inst1|inst8|Mux3~0_combout\ & \inst1|inst10|Add0~25_sumout\)) # (\inst1|inst10|Mux6~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111111000011110011111101011111011111110101111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Regist[4]~0_combout\,
	datab => \inst1|inst8|ALT_INV_Mux3~0_combout\,
	datac => \inst1|inst10|ALT_INV_Mux6~1_combout\,
	datad => \inst1|inst10|ALT_INV_Add0~25_sumout\,
	dataf => \inst1|inst10|ALT_INV_Mux6~0_combout\,
	combout => \inst1|inst10|Mux6~2_combout\);

-- Location: MLABCELL_X28_Y5_N21
\inst1|inst10|Regist[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst10|Regist[6]~0_combout\ = ( \SelRegD[0]~input_o\ & ( !\SelRegD[2]~input_o\ & ( (\inst1|inst6|Regist[6]~0_combout\ & \SelRegD[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100010001000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst6|ALT_INV_Regist[6]~0_combout\,
	datab => \ALT_INV_SelRegD[1]~input_o\,
	datae => \ALT_INV_SelRegD[0]~input_o\,
	dataf => \ALT_INV_SelRegD[2]~input_o\,
	combout => \inst1|inst10|Regist[6]~0_combout\);

-- Location: FF_X28_Y2_N32
\inst1|inst10|Regist[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst10|Mux6~2_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[4]~1_combout\,
	ena => \inst1|inst10|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst10|Regist\(1));

-- Location: MLABCELL_X28_Y1_N33
\inst1|inst10|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst10|Mux7~0_combout\ = ( \inst1|inst10|Regist\(0) & ( (!\SelBus[3]~input_o\ & ((!\SelBus[2]~input_o\ & ((\inst1|inst16|result\(0)))) # (\SelBus[2]~input_o\ & (\inst1|inst10|Regist\(1))))) ) ) # ( !\inst1|inst10|Regist\(0) & ( 
-- ((!\SelBus[2]~input_o\ & ((\inst1|inst16|result\(0)))) # (\SelBus[2]~input_o\ & (\inst1|inst10|Regist\(1)))) # (\SelBus[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011111011111010101111101111100000010100010100000001010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[3]~input_o\,
	datab => \ALT_INV_SelBus[2]~input_o\,
	datac => \inst1|inst10|ALT_INV_Regist\(1),
	datad => \inst1|inst16|ALT_INV_result\(0),
	dataf => \inst1|inst10|ALT_INV_Regist\(0),
	combout => \inst1|inst10|Mux7~0_combout\);

-- Location: MLABCELL_X28_Y1_N15
\inst1|inst10|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst10|Mux7~1_combout\ = ( \inst1|inst10|Regist\(7) & ( \inst1|inst10|Mux7~0_combout\ & ( (!\inst1|inst8|Regist[0]~4_combout\) # (\inst1|inst10|Add0~29_sumout\) ) ) ) # ( !\inst1|inst10|Regist\(7) & ( \inst1|inst10|Mux7~0_combout\ & ( 
-- (!\inst1|inst8|Regist[0]~4_combout\ & (!\inst1|inst8|Regist[0]~5_combout\)) # (\inst1|inst8|Regist[0]~4_combout\ & ((\inst1|inst10|Add0~29_sumout\))) ) ) ) # ( \inst1|inst10|Regist\(7) & ( !\inst1|inst10|Mux7~0_combout\ & ( 
-- (!\inst1|inst8|Regist[0]~4_combout\ & (\inst1|inst8|Regist[0]~5_combout\)) # (\inst1|inst8|Regist[0]~4_combout\ & ((\inst1|inst10|Add0~29_sumout\))) ) ) ) # ( !\inst1|inst10|Regist\(7) & ( !\inst1|inst10|Mux7~0_combout\ & ( (\inst1|inst10|Add0~29_sumout\ 
-- & \inst1|inst8|Regist[0]~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111010101010000111110101010000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Regist[0]~5_combout\,
	datac => \inst1|inst10|ALT_INV_Add0~29_sumout\,
	datad => \inst1|inst8|ALT_INV_Regist[0]~4_combout\,
	datae => \inst1|inst10|ALT_INV_Regist\(7),
	dataf => \inst1|inst10|ALT_INV_Mux7~0_combout\,
	combout => \inst1|inst10|Mux7~1_combout\);

-- Location: FF_X28_Y1_N17
\inst1|inst10|Regist[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst10|Mux7~1_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[0]~6_combout\,
	ena => \inst1|inst10|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst10|Regist\(0));

-- Location: LABCELL_X29_Y2_N6
\inst1|inst10|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst10|Add0~21_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(2))))) ) + ( !\inst1|inst10|Regist\(2) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) 
-- ) + ( \inst1|inst10|Add0~26\ ))
-- \inst1|inst10|Add0~22\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(2))))) ) + ( !\inst1|inst10|Regist\(2) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst1|inst10|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000010100000000000000000011000000111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[0]~input_o\,
	datac => \ALT_INV_SelBus[3]~input_o\,
	datad => \inst1|inst16|ALT_INV_result\(2),
	dataf => \inst1|inst10|ALT_INV_Regist\(2),
	cin => \inst1|inst10|Add0~26\,
	sumout => \inst1|inst10|Add0~21_sumout\,
	cout => \inst1|inst10|Add0~22\);

-- Location: LABCELL_X29_Y2_N9
\inst1|inst10|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst10|Add0~17_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(3))))) ) + ( !\inst1|inst10|Regist\(3) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) 
-- ) + ( \inst1|inst10|Add0~22\ ))
-- \inst1|inst10|Add0~18\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(3))))) ) + ( !\inst1|inst10|Regist\(3) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst1|inst10|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000010100000000000000000011000000111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[0]~input_o\,
	datac => \ALT_INV_SelBus[3]~input_o\,
	datad => \inst1|inst16|ALT_INV_result\(3),
	dataf => \inst1|inst10|ALT_INV_Regist\(3),
	cin => \inst1|inst10|Add0~22\,
	sumout => \inst1|inst10|Add0~17_sumout\,
	cout => \inst1|inst10|Add0~18\);

-- Location: LABCELL_X29_Y2_N12
\inst1|inst10|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst10|Add0~13_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(4))))) ) + ( !\inst1|inst10|Regist\(4) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) 
-- ) + ( \inst1|inst10|Add0~18\ ))
-- \inst1|inst10|Add0~14\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(4))))) ) + ( !\inst1|inst10|Regist\(4) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst1|inst10|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000010100000000000000000011000000111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[0]~input_o\,
	datac => \ALT_INV_SelBus[3]~input_o\,
	datad => \inst1|inst16|ALT_INV_result\(4),
	dataf => \inst1|inst10|ALT_INV_Regist\(4),
	cin => \inst1|inst10|Add0~18\,
	sumout => \inst1|inst10|Add0~13_sumout\,
	cout => \inst1|inst10|Add0~14\);

-- Location: LABCELL_X29_Y2_N15
\inst1|inst10|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst10|Add0~9_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(5))))) ) + ( !\inst1|inst10|Regist\(5) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) 
-- + ( \inst1|inst10|Add0~14\ ))
-- \inst1|inst10|Add0~10\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(5))))) ) + ( !\inst1|inst10|Regist\(5) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst1|inst10|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000010100000000000000000011000000111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[0]~input_o\,
	datac => \ALT_INV_SelBus[3]~input_o\,
	datad => \inst1|inst16|ALT_INV_result\(5),
	dataf => \inst1|inst10|ALT_INV_Regist\(5),
	cin => \inst1|inst10|Add0~14\,
	sumout => \inst1|inst10|Add0~9_sumout\,
	cout => \inst1|inst10|Add0~10\);

-- Location: LABCELL_X29_Y2_N18
\inst1|inst10|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst10|Add0~5_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(6))))) ) + ( !\inst1|inst10|Regist\(6) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) 
-- + ( \inst1|inst10|Add0~10\ ))
-- \inst1|inst10|Add0~6\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(6))))) ) + ( !\inst1|inst10|Regist\(6) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst1|inst10|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000010100000000000000000011000000111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[0]~input_o\,
	datac => \ALT_INV_SelBus[3]~input_o\,
	datad => \inst1|inst16|ALT_INV_result\(6),
	dataf => \inst1|inst10|ALT_INV_Regist\(6),
	cin => \inst1|inst10|Add0~10\,
	sumout => \inst1|inst10|Add0~5_sumout\,
	cout => \inst1|inst10|Add0~6\);

-- Location: LABCELL_X29_Y2_N21
\inst1|inst10|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst10|Add0~1_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(7))))) ) + ( !\inst1|inst10|Regist\(7) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) 
-- + ( \inst1|inst10|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000010100000000000000000011000000111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[0]~input_o\,
	datac => \ALT_INV_SelBus[3]~input_o\,
	datad => \inst1|inst16|ALT_INV_result\(7),
	dataf => \inst1|inst10|ALT_INV_Regist\(7),
	cin => \inst1|inst10|Add0~6\,
	sumout => \inst1|inst10|Add0~1_sumout\);

-- Location: LABCELL_X29_Y2_N24
\inst1|inst10|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst10|Mux0~0_combout\ = ( !\SelBus[3]~input_o\ & ( \inst1|inst10|Regist\(7) & ( (!\SelBus[2]~input_o\ & (\inst1|inst16|result\(7))) # (\SelBus[2]~input_o\ & ((\inst1|inst10|Regist\(6)))) ) ) ) # ( \SelBus[3]~input_o\ & ( !\inst1|inst10|Regist\(7) 
-- ) ) # ( !\SelBus[3]~input_o\ & ( !\inst1|inst10|Regist\(7) & ( (!\SelBus[2]~input_o\ & (\inst1|inst16|result\(7))) # (\SelBus[2]~input_o\ & ((\inst1|inst10|Regist\(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111111111111111111101000111010001110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst16|ALT_INV_result\(7),
	datab => \ALT_INV_SelBus[2]~input_o\,
	datac => \inst1|inst10|ALT_INV_Regist\(6),
	datae => \ALT_INV_SelBus[3]~input_o\,
	dataf => \inst1|inst10|ALT_INV_Regist\(7),
	combout => \inst1|inst10|Mux0~0_combout\);

-- Location: LABCELL_X29_Y2_N30
\inst1|inst10|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst10|Mux0~1_combout\ = ( \inst1|inst10|Mux0~0_combout\ & ( (!\inst1|inst8|Regist[0]~4_combout\ & (((!\inst1|inst8|Regist[7]~7_combout\)) # (\inst1|inst10|Regist\(0)))) # (\inst1|inst8|Regist[0]~4_combout\ & (((\inst1|inst10|Add0~1_sumout\)))) ) ) 
-- # ( !\inst1|inst10|Mux0~0_combout\ & ( (!\inst1|inst8|Regist[0]~4_combout\ & (\inst1|inst10|Regist\(0) & (\inst1|inst8|Regist[7]~7_combout\))) # (\inst1|inst8|Regist[0]~4_combout\ & (((\inst1|inst10|Add0~1_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010111000000100101011110100010111101111010001011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Regist[0]~4_combout\,
	datab => \inst1|inst10|ALT_INV_Regist\(0),
	datac => \inst1|inst8|ALT_INV_Regist[7]~7_combout\,
	datad => \inst1|inst10|ALT_INV_Add0~1_sumout\,
	dataf => \inst1|inst10|ALT_INV_Mux0~0_combout\,
	combout => \inst1|inst10|Mux0~1_combout\);

-- Location: FF_X29_Y2_N32
\inst1|inst10|Regist[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst10|Mux0~1_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[7]~8_combout\,
	ena => \inst1|inst10|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst10|Regist\(7));

-- Location: LABCELL_X27_Y2_N9
\inst1|inst10|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst10|Mux1~1_combout\ = ( \inst1|inst10|Regist\(5) & ( (\SelBus[2]~input_o\ & ((!\SelBus[0]~input_o\) # (\inst1|inst10|Regist\(7)))) ) ) # ( !\inst1|inst10|Regist\(5) & ( (\SelBus[0]~input_o\ & (\SelBus[2]~input_o\ & \inst1|inst10|Regist\(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100100011001000110010001100100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[0]~input_o\,
	datab => \ALT_INV_SelBus[2]~input_o\,
	datac => \inst1|inst10|ALT_INV_Regist\(7),
	dataf => \inst1|inst10|ALT_INV_Regist\(5),
	combout => \inst1|inst10|Mux1~1_combout\);

-- Location: MLABCELL_X28_Y2_N45
\inst1|inst10|Mux1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst10|Mux1~2_combout\ = ( \inst1|inst10|Add0~5_sumout\ & ( (((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst10|Mux1~0_combout\)) # (\inst1|inst10|Mux1~1_combout\)) # (\inst1|inst8|Mux3~0_combout\) ) ) # ( !\inst1|inst10|Add0~5_sumout\ & ( 
-- ((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst10|Mux1~0_combout\)) # (\inst1|inst10|Mux1~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111111000001011111111100110111111111110011011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Regist[4]~0_combout\,
	datab => \inst1|inst8|ALT_INV_Mux3~0_combout\,
	datac => \inst1|inst10|ALT_INV_Mux1~0_combout\,
	datad => \inst1|inst10|ALT_INV_Mux1~1_combout\,
	dataf => \inst1|inst10|ALT_INV_Add0~5_sumout\,
	combout => \inst1|inst10|Mux1~2_combout\);

-- Location: FF_X28_Y2_N47
\inst1|inst10|Regist[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst10|Mux1~2_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[4]~1_combout\,
	ena => \inst1|inst10|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst10|Regist\(6));

-- Location: LABCELL_X27_Y2_N6
\inst1|inst10|Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst10|Mux2~1_combout\ = ( \inst1|inst10|Regist\(4) & ( (\SelBus[2]~input_o\ & ((!\SelBus[0]~input_o\) # (\inst1|inst10|Regist\(6)))) ) ) # ( !\inst1|inst10|Regist\(4) & ( (\SelBus[0]~input_o\ & (\SelBus[2]~input_o\ & \inst1|inst10|Regist\(6))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100100011001000110010001100100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[0]~input_o\,
	datab => \ALT_INV_SelBus[2]~input_o\,
	datac => \inst1|inst10|ALT_INV_Regist\(6),
	dataf => \inst1|inst10|ALT_INV_Regist\(4),
	combout => \inst1|inst10|Mux2~1_combout\);

-- Location: LABCELL_X29_Y2_N42
\inst1|inst10|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst10|Mux2~0_combout\ = ( \inst1|inst10|Regist\(5) & ( (!\SelBus[1]~input_o\ & \inst1|inst16|result\(5)) ) ) # ( !\inst1|inst10|Regist\(5) & ( (\inst1|inst16|result\(5)) # (\SelBus[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SelBus[1]~input_o\,
	datad => \inst1|inst16|ALT_INV_result\(5),
	dataf => \inst1|inst10|ALT_INV_Regist\(5),
	combout => \inst1|inst10|Mux2~0_combout\);

-- Location: MLABCELL_X28_Y2_N42
\inst1|inst10|Mux2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst10|Mux2~2_combout\ = ( \inst1|inst10|Add0~9_sumout\ & ( (((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst10|Mux2~0_combout\)) # (\inst1|inst10|Mux2~1_combout\)) # (\inst1|inst8|Mux3~0_combout\) ) ) # ( !\inst1|inst10|Add0~9_sumout\ & ( 
-- ((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst10|Mux2~0_combout\)) # (\inst1|inst10|Mux2~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011111000011110101111100111111011111110011111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Regist[4]~0_combout\,
	datab => \inst1|inst8|ALT_INV_Mux3~0_combout\,
	datac => \inst1|inst10|ALT_INV_Mux2~1_combout\,
	datad => \inst1|inst10|ALT_INV_Mux2~0_combout\,
	dataf => \inst1|inst10|ALT_INV_Add0~9_sumout\,
	combout => \inst1|inst10|Mux2~2_combout\);

-- Location: FF_X28_Y2_N44
\inst1|inst10|Regist[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst10|Mux2~2_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[4]~1_combout\,
	ena => \inst1|inst10|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst10|Regist\(5));

-- Location: LABCELL_X27_Y2_N24
\inst1|inst10|Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst10|Mux3~1_combout\ = ( \inst1|inst10|Regist\(5) & ( (\SelBus[2]~input_o\ & ((\inst1|inst10|Regist\(3)) # (\SelBus[0]~input_o\))) ) ) # ( !\inst1|inst10|Regist\(5) & ( (!\SelBus[0]~input_o\ & (\SelBus[2]~input_o\ & \inst1|inst10|Regist\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000010011000100110001001100010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[0]~input_o\,
	datab => \ALT_INV_SelBus[2]~input_o\,
	datac => \inst1|inst10|ALT_INV_Regist\(3),
	dataf => \inst1|inst10|ALT_INV_Regist\(5),
	combout => \inst1|inst10|Mux3~1_combout\);

-- Location: LABCELL_X27_Y2_N48
\inst1|inst10|Mux3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst10|Mux3~2_combout\ = ( \inst1|inst10|Add0~13_sumout\ & ( (((\inst1|inst10|Mux3~0_combout\ & \inst1|inst8|Regist[4]~0_combout\)) # (\inst1|inst10|Mux3~1_combout\)) # (\inst1|inst8|Mux3~0_combout\) ) ) # ( !\inst1|inst10|Add0~13_sumout\ & ( 
-- ((\inst1|inst10|Mux3~0_combout\ & \inst1|inst8|Regist[4]~0_combout\)) # (\inst1|inst10|Mux3~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011111000011110101111100111111011111110011111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst10|ALT_INV_Mux3~0_combout\,
	datab => \inst1|inst8|ALT_INV_Mux3~0_combout\,
	datac => \inst1|inst10|ALT_INV_Mux3~1_combout\,
	datad => \inst1|inst8|ALT_INV_Regist[4]~0_combout\,
	dataf => \inst1|inst10|ALT_INV_Add0~13_sumout\,
	combout => \inst1|inst10|Mux3~2_combout\);

-- Location: FF_X27_Y2_N50
\inst1|inst10|Regist[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst10|Mux3~2_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[4]~1_combout\,
	ena => \inst1|inst10|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst10|Regist\(4));

-- Location: LABCELL_X27_Y2_N27
\inst1|inst10|Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst10|Mux4~1_combout\ = ( \inst1|inst10|Regist\(4) & ( (\SelBus[2]~input_o\ & ((\inst1|inst10|Regist\(2)) # (\SelBus[0]~input_o\))) ) ) # ( !\inst1|inst10|Regist\(4) & ( (!\SelBus[0]~input_o\ & (\SelBus[2]~input_o\ & \inst1|inst10|Regist\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000010011000100110001001100010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[0]~input_o\,
	datab => \ALT_INV_SelBus[2]~input_o\,
	datac => \inst1|inst10|ALT_INV_Regist\(2),
	dataf => \inst1|inst10|ALT_INV_Regist\(4),
	combout => \inst1|inst10|Mux4~1_combout\);

-- Location: MLABCELL_X28_Y2_N27
\inst1|inst10|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst10|Mux4~0_combout\ = ( \inst1|inst10|Regist\(3) & ( (!\SelBus[1]~input_o\ & \inst1|inst16|result\(3)) ) ) # ( !\inst1|inst10|Regist\(3) & ( (\inst1|inst16|result\(3)) # (\SelBus[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SelBus[1]~input_o\,
	datad => \inst1|inst16|ALT_INV_result\(3),
	dataf => \inst1|inst10|ALT_INV_Regist\(3),
	combout => \inst1|inst10|Mux4~0_combout\);

-- Location: MLABCELL_X28_Y2_N33
\inst1|inst10|Mux4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst10|Mux4~2_combout\ = ( \inst1|inst10|Add0~17_sumout\ & ( (((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst10|Mux4~0_combout\)) # (\inst1|inst10|Mux4~1_combout\)) # (\inst1|inst8|Mux3~0_combout\) ) ) # ( !\inst1|inst10|Add0~17_sumout\ & ( 
-- ((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst10|Mux4~0_combout\)) # (\inst1|inst10|Mux4~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011111000011110101111100111111011111110011111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Regist[4]~0_combout\,
	datab => \inst1|inst8|ALT_INV_Mux3~0_combout\,
	datac => \inst1|inst10|ALT_INV_Mux4~1_combout\,
	datad => \inst1|inst10|ALT_INV_Mux4~0_combout\,
	dataf => \inst1|inst10|ALT_INV_Add0~17_sumout\,
	combout => \inst1|inst10|Mux4~2_combout\);

-- Location: FF_X28_Y2_N35
\inst1|inst10|Regist[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst10|Mux4~2_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[4]~1_combout\,
	ena => \inst1|inst10|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst10|Regist\(3));

-- Location: LABCELL_X29_Y2_N45
\inst1|inst10|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst10|Mux5~1_combout\ = ( \inst1|inst10|Regist\(1) & ( (\SelBus[2]~input_o\ & ((!\SelBus[0]~input_o\) # (\inst1|inst10|Regist\(3)))) ) ) # ( !\inst1|inst10|Regist\(1) & ( (\SelBus[2]~input_o\ & (\SelBus[0]~input_o\ & \inst1|inst10|Regist\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100110000001100110011000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SelBus[2]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst1|inst10|ALT_INV_Regist\(3),
	dataf => \inst1|inst10|ALT_INV_Regist\(1),
	combout => \inst1|inst10|Mux5~1_combout\);

-- Location: LABCELL_X27_Y3_N39
\inst1|inst10|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst10|Mux5~0_combout\ = ( \inst1|inst10|Regist\(2) & ( (!\SelBus[1]~input_o\ & \inst1|inst16|result\(2)) ) ) # ( !\inst1|inst10|Regist\(2) & ( (\inst1|inst16|result\(2)) # (\SelBus[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SelBus[1]~input_o\,
	datad => \inst1|inst16|ALT_INV_result\(2),
	dataf => \inst1|inst10|ALT_INV_Regist\(2),
	combout => \inst1|inst10|Mux5~0_combout\);

-- Location: LABCELL_X27_Y3_N42
\inst1|inst10|Mux5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst10|Mux5~2_combout\ = ( \inst1|inst10|Add0~21_sumout\ & ( \inst1|inst10|Mux5~0_combout\ & ( ((\inst1|inst10|Mux5~1_combout\) # (\inst1|inst8|Regist[4]~0_combout\)) # (\inst1|inst8|Mux3~0_combout\) ) ) ) # ( !\inst1|inst10|Add0~21_sumout\ & ( 
-- \inst1|inst10|Mux5~0_combout\ & ( (\inst1|inst10|Mux5~1_combout\) # (\inst1|inst8|Regist[4]~0_combout\) ) ) ) # ( \inst1|inst10|Add0~21_sumout\ & ( !\inst1|inst10|Mux5~0_combout\ & ( (\inst1|inst10|Mux5~1_combout\) # (\inst1|inst8|Mux3~0_combout\) ) ) ) # 
-- ( !\inst1|inst10|Add0~21_sumout\ & ( !\inst1|inst10|Mux5~0_combout\ & ( \inst1|inst10|Mux5~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010111110101111100111111001111110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Mux3~0_combout\,
	datab => \inst1|inst8|ALT_INV_Regist[4]~0_combout\,
	datac => \inst1|inst10|ALT_INV_Mux5~1_combout\,
	datae => \inst1|inst10|ALT_INV_Add0~21_sumout\,
	dataf => \inst1|inst10|ALT_INV_Mux5~0_combout\,
	combout => \inst1|inst10|Mux5~2_combout\);

-- Location: FF_X27_Y3_N44
\inst1|inst10|Regist[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst10|Mux5~2_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[4]~1_combout\,
	ena => \inst1|inst10|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst10|Regist\(2));

-- Location: LABCELL_X27_Y3_N18
\inst1|inst16|result[2]~313\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|result[2]~313_combout\ = ( \inst1|inst5|Regist\(2) & ( \inst1|inst10|Regist\(2) & ( (!\inst1|inst16|_~11_combout\ & (!\inst1|inst16|_~12_combout\ & ((!\Destino2~input_o\) # (!\inst1|inst16|_~13_combout\)))) ) ) ) # ( !\inst1|inst5|Regist\(2) 
-- & ( \inst1|inst10|Regist\(2) & ( (!\inst1|inst16|_~12_combout\ & ((!\Destino2~input_o\) # (!\inst1|inst16|_~13_combout\))) ) ) ) # ( \inst1|inst5|Regist\(2) & ( !\inst1|inst10|Regist\(2) & ( (!\inst1|inst16|_~11_combout\ & ((!\Destino2~input_o\) # 
-- (!\inst1|inst16|_~13_combout\))) ) ) ) # ( !\inst1|inst5|Regist\(2) & ( !\inst1|inst10|Regist\(2) & ( (!\Destino2~input_o\) # (!\inst1|inst16|_~13_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111001100101010101000100011110000110000001010000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst16|ALT_INV__~11_combout\,
	datab => \ALT_INV_Destino2~input_o\,
	datac => \inst1|inst16|ALT_INV__~12_combout\,
	datad => \inst1|inst16|ALT_INV__~13_combout\,
	datae => \inst1|inst5|ALT_INV_Regist\(2),
	dataf => \inst1|inst10|ALT_INV_Regist\(2),
	combout => \inst1|inst16|result[2]~313_combout\);

-- Location: MLABCELL_X28_Y1_N57
\inst1|inst16|_~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|_~10_combout\ = ( !\muxSel[4]~input_o\ & ( !\muxSel[0]~input_o\ & ( (\muxSel[2]~input_o\ & (!\muxSel[5]~input_o\ & (\muxSel[1]~input_o\ & !\muxSel[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_muxSel[2]~input_o\,
	datab => \ALT_INV_muxSel[5]~input_o\,
	datac => \ALT_INV_muxSel[1]~input_o\,
	datad => \ALT_INV_muxSel[3]~input_o\,
	datae => \ALT_INV_muxSel[4]~input_o\,
	dataf => \ALT_INV_muxSel[0]~input_o\,
	combout => \inst1|inst16|_~10_combout\);

-- Location: MLABCELL_X34_Y5_N36
\inst1|inst16|_~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|_~8_combout\ = ( !\muxSel[0]~input_o\ & ( !\muxSel[2]~input_o\ & ( (!\muxSel[4]~input_o\ & (!\muxSel[5]~input_o\ & (!\muxSel[1]~input_o\ & !\muxSel[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_muxSel[4]~input_o\,
	datab => \ALT_INV_muxSel[5]~input_o\,
	datac => \ALT_INV_muxSel[1]~input_o\,
	datad => \ALT_INV_muxSel[3]~input_o\,
	datae => \ALT_INV_muxSel[0]~input_o\,
	dataf => \ALT_INV_muxSel[2]~input_o\,
	combout => \inst1|inst16|_~8_combout\);

-- Location: MLABCELL_X34_Y5_N9
\inst1|inst16|_~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|_~9_combout\ = ( \muxSel[1]~input_o\ & ( !\muxSel[4]~input_o\ & ( (!\muxSel[0]~input_o\ & (!\muxSel[3]~input_o\ & (!\muxSel[5]~input_o\ & !\muxSel[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_muxSel[0]~input_o\,
	datab => \ALT_INV_muxSel[3]~input_o\,
	datac => \ALT_INV_muxSel[5]~input_o\,
	datad => \ALT_INV_muxSel[2]~input_o\,
	datae => \ALT_INV_muxSel[1]~input_o\,
	dataf => \ALT_INV_muxSel[4]~input_o\,
	combout => \inst1|inst16|_~9_combout\);

-- Location: IOIBUF_X50_Y0_N58
\MUX_A~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MUX_A,
	o => \MUX_A~input_o\);

-- Location: IOIBUF_X56_Y0_N52
\AIN[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AIN(3),
	o => \AIN[3]~input_o\);

-- Location: LABCELL_X30_Y3_N36
\inst1|inst6|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst6|Mux4~0_combout\ = ( \inst1|inst16|result\(3) & ( (!\SelBus[1]~input_o\ & (((!\MUX_A~input_o\) # (\AIN[3]~input_o\)))) # (\SelBus[1]~input_o\ & (!\inst1|inst6|Regist\(3))) ) ) # ( !\inst1|inst16|result\(3) & ( (!\SelBus[1]~input_o\ & 
-- (((\MUX_A~input_o\ & \AIN[3]~input_o\)))) # (\SelBus[1]~input_o\ & (!\inst1|inst6|Regist\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000101110001000100010111011100010111011101110001011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst6|ALT_INV_Regist\(3),
	datab => \ALT_INV_SelBus[1]~input_o\,
	datac => \ALT_INV_MUX_A~input_o\,
	datad => \ALT_INV_AIN[3]~input_o\,
	dataf => \inst1|inst16|ALT_INV_result\(3),
	combout => \inst1|inst6|Mux4~0_combout\);

-- Location: IOIBUF_X28_Y81_N52
\AIN[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AIN(4),
	o => \AIN[4]~input_o\);

-- Location: LABCELL_X29_Y3_N30
\inst1|inst6|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst6|Mux3~0_combout\ = ( \inst1|inst6|Regist\(4) & ( (!\SelBus[1]~input_o\ & ((!\MUX_A~input_o\ & (\inst1|inst16|result\(4))) # (\MUX_A~input_o\ & ((\AIN[4]~input_o\))))) ) ) # ( !\inst1|inst6|Regist\(4) & ( ((!\MUX_A~input_o\ & 
-- (\inst1|inst16|result\(4))) # (\MUX_A~input_o\ & ((\AIN[4]~input_o\)))) # (\SelBus[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110101111111010111010111111100001000001010100000100000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_MUX_A~input_o\,
	datac => \inst1|inst16|ALT_INV_result\(4),
	datad => \ALT_INV_AIN[4]~input_o\,
	dataf => \inst1|inst6|ALT_INV_Regist\(4),
	combout => \inst1|inst6|Mux3~0_combout\);

-- Location: IOIBUF_X58_Y0_N92
\AIN[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AIN(5),
	o => \AIN[5]~input_o\);

-- Location: LABCELL_X30_Y3_N42
\inst1|inst6|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst6|Mux2~0_combout\ = ( \inst1|inst16|result\(5) & ( (!\SelBus[1]~input_o\ & ((!\MUX_A~input_o\) # ((\AIN[5]~input_o\)))) # (\SelBus[1]~input_o\ & (((!\inst1|inst6|Regist\(5))))) ) ) # ( !\inst1|inst16|result\(5) & ( (!\SelBus[1]~input_o\ & 
-- (\MUX_A~input_o\ & ((\AIN[5]~input_o\)))) # (\SelBus[1]~input_o\ & (((!\inst1|inst6|Regist\(5))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001110100001100000111010010111000111111001011100011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MUX_A~input_o\,
	datab => \ALT_INV_SelBus[1]~input_o\,
	datac => \inst1|inst6|ALT_INV_Regist\(5),
	datad => \ALT_INV_AIN[5]~input_o\,
	dataf => \inst1|inst16|ALT_INV_result\(5),
	combout => \inst1|inst6|Mux2~0_combout\);

-- Location: IOIBUF_X32_Y0_N18
\AIN[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AIN(6),
	o => \AIN[6]~input_o\);

-- Location: LABCELL_X30_Y3_N45
\inst1|inst6|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst6|Mux1~0_combout\ = ( \inst1|inst16|result\(6) & ( (!\SelBus[1]~input_o\ & ((!\MUX_A~input_o\) # ((\AIN[6]~input_o\)))) # (\SelBus[1]~input_o\ & (((!\inst1|inst6|Regist\(6))))) ) ) # ( !\inst1|inst16|result\(6) & ( (!\SelBus[1]~input_o\ & 
-- (\MUX_A~input_o\ & ((\AIN[6]~input_o\)))) # (\SelBus[1]~input_o\ & (((!\inst1|inst6|Regist\(6))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001110100001100000111010010111000111111001011100011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MUX_A~input_o\,
	datab => \ALT_INV_SelBus[1]~input_o\,
	datac => \inst1|inst6|ALT_INV_Regist\(6),
	datad => \ALT_INV_AIN[6]~input_o\,
	dataf => \inst1|inst16|ALT_INV_result\(6),
	combout => \inst1|inst6|Mux1~0_combout\);

-- Location: IOIBUF_X58_Y0_N41
\AIN[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AIN(0),
	o => \AIN[0]~input_o\);

-- Location: LABCELL_X29_Y3_N45
\inst1|inst15|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst15|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst1|inst16|result\(0) & ( (!\MUX_A~input_o\) # (\AIN[0]~input_o\) ) ) # ( !\inst1|inst16|result\(0) & ( (\AIN[0]~input_o\ & \MUX_A~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_AIN[0]~input_o\,
	datad => \ALT_INV_MUX_A~input_o\,
	dataf => \inst1|inst16|ALT_INV_result\(0),
	combout => \inst1|inst15|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X29_Y3_N0
\inst1|inst6|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst6|Add0~29_sumout\ = SUM(( ((!\SelBus[3]~input_o\) # (\inst1|inst15|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\)) # (\SelBus[1]~input_o\) ) + ( !\inst1|inst6|Regist\(0) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( !VCC 
-- ))
-- \inst1|inst6|Add0~30\ = CARRY(( ((!\SelBus[3]~input_o\) # (\inst1|inst15|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\)) # (\SelBus[1]~input_o\) ) + ( !\inst1|inst6|Regist\(0) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111000011110000100000000000000001101110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[3]~input_o\,
	datac => \inst1|inst6|ALT_INV_Regist\(0),
	datad => \inst1|inst15|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	cin => GND,
	sumout => \inst1|inst6|Add0~29_sumout\,
	cout => \inst1|inst6|Add0~30\);

-- Location: LABCELL_X30_Y3_N54
\inst1|inst6|Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst6|Mux6~1_combout\ = ( \SelBus[2]~input_o\ & ( (!\SelBus[0]~input_o\ & (\inst1|inst6|Regist\(0))) # (\SelBus[0]~input_o\ & ((\inst1|inst6|Regist\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst6|ALT_INV_Regist\(0),
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst1|inst6|ALT_INV_Regist\(2),
	dataf => \ALT_INV_SelBus[2]~input_o\,
	combout => \inst1|inst6|Mux6~1_combout\);

-- Location: IOIBUF_X30_Y81_N1
\AIN[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AIN(1),
	o => \AIN[1]~input_o\);

-- Location: LABCELL_X30_Y2_N42
\inst1|inst15|$00000|auto_generated|l1_w1_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst15|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\ = ( \AIN[1]~input_o\ & ( \inst1|inst16|result\(1) ) ) # ( !\AIN[1]~input_o\ & ( \inst1|inst16|result\(1) & ( !\MUX_A~input_o\ ) ) ) # ( \AIN[1]~input_o\ & ( !\inst1|inst16|result\(1) & ( 
-- \MUX_A~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111110000111100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_MUX_A~input_o\,
	datae => \ALT_INV_AIN[1]~input_o\,
	dataf => \inst1|inst16|ALT_INV_result\(1),
	combout => \inst1|inst15|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X29_Y3_N3
\inst1|inst6|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst6|Add0~25_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst15|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\)))) ) + ( !\inst1|inst6|Regist\(1) $ 
-- (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( \inst1|inst6|Add0~30\ ))
-- \inst1|inst6|Add0~26\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst15|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\)))) ) + ( !\inst1|inst6|Regist\(1) $ 
-- (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( \inst1|inst6|Add0~30\ ))

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
	datad => \inst1|inst15|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\,
	dataf => \inst1|inst6|ALT_INV_Regist\(1),
	cin => \inst1|inst6|Add0~30\,
	sumout => \inst1|inst6|Add0~25_sumout\,
	cout => \inst1|inst6|Add0~26\);

-- Location: LABCELL_X30_Y2_N21
\inst1|inst6|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst6|Mux6~0_combout\ = ( \MUX_A~input_o\ & ( (!\SelBus[1]~input_o\ & ((\AIN[1]~input_o\))) # (\SelBus[1]~input_o\ & (!\inst1|inst6|Regist\(1))) ) ) # ( !\MUX_A~input_o\ & ( (!\SelBus[1]~input_o\ & (\inst1|inst16|result\(1))) # (\SelBus[1]~input_o\ 
-- & ((!\inst1|inst6|Regist\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111001100010101011100110000001111110011000000111111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst16|ALT_INV_result\(1),
	datab => \inst1|inst6|ALT_INV_Regist\(1),
	datac => \ALT_INV_AIN[1]~input_o\,
	datad => \ALT_INV_SelBus[1]~input_o\,
	dataf => \ALT_INV_MUX_A~input_o\,
	combout => \inst1|inst6|Mux6~0_combout\);

-- Location: LABCELL_X29_Y3_N51
\inst1|inst6|Mux6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst6|Mux6~2_combout\ = ( \inst1|inst6|Mux6~0_combout\ & ( (((\inst1|inst8|Mux3~0_combout\ & \inst1|inst6|Add0~25_sumout\)) # (\inst1|inst6|Mux6~1_combout\)) # (\inst1|inst8|Regist[4]~0_combout\) ) ) # ( !\inst1|inst6|Mux6~0_combout\ & ( 
-- ((\inst1|inst8|Mux3~0_combout\ & \inst1|inst6|Add0~25_sumout\)) # (\inst1|inst6|Mux6~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011111000011110101111100111111011111110011111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Mux3~0_combout\,
	datab => \inst1|inst8|ALT_INV_Regist[4]~0_combout\,
	datac => \inst1|inst6|ALT_INV_Mux6~1_combout\,
	datad => \inst1|inst6|ALT_INV_Add0~25_sumout\,
	dataf => \inst1|inst6|ALT_INV_Mux6~0_combout\,
	combout => \inst1|inst6|Mux6~2_combout\);

-- Location: LABCELL_X31_Y1_N0
\inst1|inst6|Regist[6]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst6|Regist[6]~1_combout\ = ( !\SelRegD[2]~input_o\ & ( (!\SelRegD[1]~input_o\ & (\inst1|inst6|Regist[6]~0_combout\ & !\SelRegD[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000000000000000000001010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelRegD[1]~input_o\,
	datac => \inst1|inst6|ALT_INV_Regist[6]~0_combout\,
	datad => \ALT_INV_SelRegD[0]~input_o\,
	datae => \ALT_INV_SelRegD[2]~input_o\,
	combout => \inst1|inst6|Regist[6]~1_combout\);

-- Location: FF_X29_Y3_N53
\inst1|inst6|Regist[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst6|Mux6~2_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[4]~1_combout\,
	ena => \inst1|inst6|Regist[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst6|Regist\(1));

-- Location: MLABCELL_X25_Y3_N24
\inst1|inst6|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst6|Mux7~0_combout\ = ( \inst1|inst6|Regist\(0) & ( \inst1|inst15|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (!\SelBus[3]~input_o\ & ((!\SelBus[2]~input_o\) # (\inst1|inst6|Regist\(1)))) ) ) ) # ( !\inst1|inst6|Regist\(0) & ( 
-- \inst1|inst15|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (!\SelBus[2]~input_o\) # ((\inst1|inst6|Regist\(1)) # (\SelBus[3]~input_o\)) ) ) ) # ( \inst1|inst6|Regist\(0) & ( !\inst1|inst15|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ 
-- & ( (\SelBus[2]~input_o\ & (!\SelBus[3]~input_o\ & \inst1|inst6|Regist\(1))) ) ) ) # ( !\inst1|inst6|Regist\(0) & ( !\inst1|inst15|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( ((\SelBus[2]~input_o\ & \inst1|inst6|Regist\(1))) # 
-- (\SelBus[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111111000000000011000011001111111111111100000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SelBus[2]~input_o\,
	datac => \ALT_INV_SelBus[3]~input_o\,
	datad => \inst1|inst6|ALT_INV_Regist\(1),
	datae => \inst1|inst6|ALT_INV_Regist\(0),
	dataf => \inst1|inst15|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	combout => \inst1|inst6|Mux7~0_combout\);

-- Location: MLABCELL_X25_Y3_N54
\inst1|inst6|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst6|Mux7~1_combout\ = ( \inst1|inst6|Add0~29_sumout\ & ( \inst1|inst6|Mux7~0_combout\ & ( ((!\inst1|inst8|Regist[0]~5_combout\) # (\inst1|inst8|Regist[0]~4_combout\)) # (\inst1|inst6|Regist\(7)) ) ) ) # ( !\inst1|inst6|Add0~29_sumout\ & ( 
-- \inst1|inst6|Mux7~0_combout\ & ( (!\inst1|inst8|Regist[0]~4_combout\ & ((!\inst1|inst8|Regist[0]~5_combout\) # (\inst1|inst6|Regist\(7)))) ) ) ) # ( \inst1|inst6|Add0~29_sumout\ & ( !\inst1|inst6|Mux7~0_combout\ & ( ((\inst1|inst6|Regist\(7) & 
-- \inst1|inst8|Regist[0]~5_combout\)) # (\inst1|inst8|Regist[0]~4_combout\) ) ) ) # ( !\inst1|inst6|Add0~29_sumout\ & ( !\inst1|inst6|Mux7~0_combout\ & ( (\inst1|inst6|Regist\(7) & (!\inst1|inst8|Regist[0]~4_combout\ & \inst1|inst8|Regist[0]~5_combout\)) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000011110101111111110000010100001111111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst6|ALT_INV_Regist\(7),
	datac => \inst1|inst8|ALT_INV_Regist[0]~4_combout\,
	datad => \inst1|inst8|ALT_INV_Regist[0]~5_combout\,
	datae => \inst1|inst6|ALT_INV_Add0~29_sumout\,
	dataf => \inst1|inst6|ALT_INV_Mux7~0_combout\,
	combout => \inst1|inst6|Mux7~1_combout\);

-- Location: FF_X25_Y3_N56
\inst1|inst6|Regist[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst6|Mux7~1_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[0]~6_combout\,
	ena => \inst1|inst6|Regist[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst6|Regist\(0));

-- Location: IOIBUF_X30_Y81_N52
\AIN[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AIN(7),
	o => \AIN[7]~input_o\);

-- Location: LABCELL_X30_Y3_N21
\inst1|inst15|$00000|auto_generated|l1_w7_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst15|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\ = ( \inst1|inst16|result\(7) & ( (!\MUX_A~input_o\) # (\AIN[7]~input_o\) ) ) # ( !\inst1|inst16|result\(7) & ( (\MUX_A~input_o\ & \AIN[7]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MUX_A~input_o\,
	datad => \ALT_INV_AIN[7]~input_o\,
	dataf => \inst1|inst16|ALT_INV_result\(7),
	combout => \inst1|inst15|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X27_Y3_N3
\inst1|inst6|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst6|Mux0~0_combout\ = ( \inst1|inst6|Regist\(7) & ( \inst1|inst15|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\ & ( (\inst1|inst8|Regist[7]~10_combout\ & ((!\inst1|inst8|Regist[0]~9_combout\) # (\inst1|inst6|Regist\(6)))) ) ) ) # ( 
-- !\inst1|inst6|Regist\(7) & ( \inst1|inst15|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\ & ( (!\inst1|inst8|Regist[0]~9_combout\) # ((\inst1|inst8|Regist[7]~10_combout\ & \inst1|inst6|Regist\(6))) ) ) ) # ( \inst1|inst6|Regist\(7) & ( 
-- !\inst1|inst15|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\ & ( (\inst1|inst8|Regist[7]~10_combout\ & (\inst1|inst8|Regist[0]~9_combout\ & \inst1|inst6|Regist\(6))) ) ) ) # ( !\inst1|inst6|Regist\(7) & ( 
-- !\inst1|inst15|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\ & ( (!\inst1|inst8|Regist[7]~10_combout\ & (!\inst1|inst8|Regist[0]~9_combout\)) # (\inst1|inst8|Regist[7]~10_combout\ & (\inst1|inst8|Regist[0]~9_combout\ & \inst1|inst6|Regist\(6))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010011001000000000001000111001100110111010100010001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Regist[7]~10_combout\,
	datab => \inst1|inst8|ALT_INV_Regist[0]~9_combout\,
	datad => \inst1|inst6|ALT_INV_Regist\(6),
	datae => \inst1|inst6|ALT_INV_Regist\(7),
	dataf => \inst1|inst15|$00000|auto_generated|ALT_INV_l1_w7_n0_mux_dataout~0_combout\,
	combout => \inst1|inst6|Mux0~0_combout\);

-- Location: LABCELL_X30_Y3_N9
\inst1|inst15|$00000|auto_generated|l1_w6_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst15|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\ = ( \inst1|inst16|result\(6) & ( (!\MUX_A~input_o\) # (\AIN[6]~input_o\) ) ) # ( !\inst1|inst16|result\(6) & ( (\MUX_A~input_o\ & \AIN[6]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MUX_A~input_o\,
	datad => \ALT_INV_AIN[6]~input_o\,
	dataf => \inst1|inst16|ALT_INV_result\(6),
	combout => \inst1|inst15|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X30_Y3_N48
\inst1|inst15|$00000|auto_generated|l1_w5_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst15|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\ = ( \inst1|inst16|result\(5) & ( (!\MUX_A~input_o\) # (\AIN[5]~input_o\) ) ) # ( !\inst1|inst16|result\(5) & ( (\MUX_A~input_o\ & \AIN[5]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_MUX_A~input_o\,
	datad => \ALT_INV_AIN[5]~input_o\,
	dataf => \inst1|inst16|ALT_INV_result\(5),
	combout => \inst1|inst15|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X29_Y3_N57
\inst1|inst15|$00000|auto_generated|l1_w4_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst15|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\ = ( \inst1|inst16|result\(4) & ( (!\MUX_A~input_o\) # (\AIN[4]~input_o\) ) ) # ( !\inst1|inst16|result\(4) & ( (\MUX_A~input_o\ & \AIN[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_MUX_A~input_o\,
	datac => \ALT_INV_AIN[4]~input_o\,
	dataf => \inst1|inst16|ALT_INV_result\(4),
	combout => \inst1|inst15|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X29_Y3_N33
\inst1|inst15|$00000|auto_generated|l1_w3_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst15|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\ = ( \inst1|inst16|result\(3) & ( (!\MUX_A~input_o\) # (\AIN[3]~input_o\) ) ) # ( !\inst1|inst16|result\(3) & ( (\AIN[3]~input_o\ & \MUX_A~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_AIN[3]~input_o\,
	datad => \ALT_INV_MUX_A~input_o\,
	dataf => \inst1|inst16|ALT_INV_result\(3),
	combout => \inst1|inst15|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\);

-- Location: IOIBUF_X28_Y81_N35
\AIN[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AIN(2),
	o => \AIN[2]~input_o\);

-- Location: LABCELL_X29_Y3_N54
\inst1|inst15|$00000|auto_generated|l1_w2_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst15|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ = ( \inst1|inst16|result\(2) & ( (!\MUX_A~input_o\) # (\AIN[2]~input_o\) ) ) # ( !\inst1|inst16|result\(2) & ( (\MUX_A~input_o\ & \AIN[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_MUX_A~input_o\,
	datad => \ALT_INV_AIN[2]~input_o\,
	dataf => \inst1|inst16|ALT_INV_result\(2),
	combout => \inst1|inst15|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X29_Y3_N6
\inst1|inst6|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst6|Add0~21_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst15|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\)))) ) + ( !\inst1|inst6|Regist\(2) $ 
-- (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( \inst1|inst6|Add0~26\ ))
-- \inst1|inst6|Add0~22\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst15|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\)))) ) + ( !\inst1|inst6|Regist\(2) $ 
-- (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( \inst1|inst6|Add0~26\ ))

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
	datad => \inst1|inst15|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\,
	dataf => \inst1|inst6|ALT_INV_Regist\(2),
	cin => \inst1|inst6|Add0~26\,
	sumout => \inst1|inst6|Add0~21_sumout\,
	cout => \inst1|inst6|Add0~22\);

-- Location: LABCELL_X29_Y3_N9
\inst1|inst6|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst6|Add0~17_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst15|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\)))) ) + ( !\inst1|inst6|Regist\(3) $ 
-- (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( \inst1|inst6|Add0~22\ ))
-- \inst1|inst6|Add0~18\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst15|$00000|auto_generated|l1_w3_n0_mux_dataout~0_combout\)))) ) + ( !\inst1|inst6|Regist\(3) $ 
-- (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( \inst1|inst6|Add0~22\ ))

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
	datad => \inst1|inst15|$00000|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\,
	dataf => \inst1|inst6|ALT_INV_Regist\(3),
	cin => \inst1|inst6|Add0~22\,
	sumout => \inst1|inst6|Add0~17_sumout\,
	cout => \inst1|inst6|Add0~18\);

-- Location: LABCELL_X29_Y3_N12
\inst1|inst6|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst6|Add0~13_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\)) # (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst1|inst15|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\)))) ) + ( !\inst1|inst6|Regist\(4) $ 
-- (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( \inst1|inst6|Add0~18\ ))
-- \inst1|inst6|Add0~14\ = CARRY(( (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\)) # (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst1|inst15|$00000|auto_generated|l1_w4_n0_mux_dataout~0_combout\)))) ) + ( !\inst1|inst6|Regist\(4) $ 
-- (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( \inst1|inst6|Add0~18\ ))

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
	datad => \inst1|inst15|$00000|auto_generated|ALT_INV_l1_w4_n0_mux_dataout~0_combout\,
	dataf => \inst1|inst6|ALT_INV_Regist\(4),
	cin => \inst1|inst6|Add0~18\,
	sumout => \inst1|inst6|Add0~13_sumout\,
	cout => \inst1|inst6|Add0~14\);

-- Location: LABCELL_X29_Y3_N15
\inst1|inst6|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst6|Add0~9_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\)) # (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst1|inst15|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\)))) ) + ( !\inst1|inst6|Regist\(5) $ 
-- (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( \inst1|inst6|Add0~14\ ))
-- \inst1|inst6|Add0~10\ = CARRY(( (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\)) # (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst1|inst15|$00000|auto_generated|l1_w5_n0_mux_dataout~0_combout\)))) ) + ( !\inst1|inst6|Regist\(5) $ 
-- (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( \inst1|inst6|Add0~14\ ))

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
	datad => \inst1|inst15|$00000|auto_generated|ALT_INV_l1_w5_n0_mux_dataout~0_combout\,
	dataf => \inst1|inst6|ALT_INV_Regist\(5),
	cin => \inst1|inst6|Add0~14\,
	sumout => \inst1|inst6|Add0~9_sumout\,
	cout => \inst1|inst6|Add0~10\);

-- Location: LABCELL_X29_Y3_N18
\inst1|inst6|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst6|Add0~5_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\)) # (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst1|inst15|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\)))) ) + ( !\inst1|inst6|Regist\(6) $ 
-- (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( \inst1|inst6|Add0~10\ ))
-- \inst1|inst6|Add0~6\ = CARRY(( (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\)) # (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst1|inst15|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\)))) ) + ( !\inst1|inst6|Regist\(6) $ 
-- (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( \inst1|inst6|Add0~10\ ))

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
	datad => \inst1|inst15|$00000|auto_generated|ALT_INV_l1_w6_n0_mux_dataout~0_combout\,
	dataf => \inst1|inst6|ALT_INV_Regist\(6),
	cin => \inst1|inst6|Add0~10\,
	sumout => \inst1|inst6|Add0~5_sumout\,
	cout => \inst1|inst6|Add0~6\);

-- Location: LABCELL_X29_Y3_N21
\inst1|inst6|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst6|Add0~1_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\)) # (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst1|inst15|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\)))) ) + ( !\inst1|inst6|Regist\(7) $ 
-- (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( \inst1|inst6|Add0~6\ ))

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
	datad => \inst1|inst15|$00000|auto_generated|ALT_INV_l1_w7_n0_mux_dataout~0_combout\,
	dataf => \inst1|inst6|ALT_INV_Regist\(7),
	cin => \inst1|inst6|Add0~6\,
	sumout => \inst1|inst6|Add0~1_sumout\);

-- Location: LABCELL_X30_Y3_N57
\inst1|inst6|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst6|Mux0~1_combout\ = ( \inst1|inst6|Add0~1_sumout\ & ( (((\inst1|inst6|Regist\(0) & \inst1|inst8|Regist[7]~7_combout\)) # (\inst1|inst6|Mux0~0_combout\)) # (\inst1|inst8|Regist[0]~4_combout\) ) ) # ( !\inst1|inst6|Add0~1_sumout\ & ( 
-- (!\inst1|inst8|Regist[0]~4_combout\ & (((\inst1|inst6|Regist\(0) & \inst1|inst8|Regist[7]~7_combout\)) # (\inst1|inst6|Mux0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011001100000001001100110000110111111111110011011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst6|ALT_INV_Regist\(0),
	datab => \inst1|inst8|ALT_INV_Regist[0]~4_combout\,
	datac => \inst1|inst8|ALT_INV_Regist[7]~7_combout\,
	datad => \inst1|inst6|ALT_INV_Mux0~0_combout\,
	dataf => \inst1|inst6|ALT_INV_Add0~1_sumout\,
	combout => \inst1|inst6|Mux0~1_combout\);

-- Location: FF_X30_Y3_N59
\inst1|inst6|Regist[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst6|Mux0~1_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[7]~8_combout\,
	ena => \inst1|inst6|Regist[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst6|Regist\(7));

-- Location: LABCELL_X31_Y5_N18
\inst1|inst6|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst6|Mux1~1_combout\ = ( \inst1|inst6|Regist\(7) & ( (\SelBus[2]~input_o\ & ((\SelBus[0]~input_o\) # (\inst1|inst6|Regist\(5)))) ) ) # ( !\inst1|inst6|Regist\(7) & ( (\inst1|inst6|Regist\(5) & (!\SelBus[0]~input_o\ & \SelBus[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000000000001111110000000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst6|ALT_INV_Regist\(5),
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \ALT_INV_SelBus[2]~input_o\,
	dataf => \inst1|inst6|ALT_INV_Regist\(7),
	combout => \inst1|inst6|Mux1~1_combout\);

-- Location: LABCELL_X29_Y3_N48
\inst1|inst6|Mux1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst6|Mux1~2_combout\ = ( \inst1|inst6|Add0~5_sumout\ & ( (((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst6|Mux1~0_combout\)) # (\inst1|inst6|Mux1~1_combout\)) # (\inst1|inst8|Mux3~0_combout\) ) ) # ( !\inst1|inst6|Add0~5_sumout\ & ( 
-- ((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst6|Mux1~0_combout\)) # (\inst1|inst6|Mux1~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111111000000111111111101010111111111110101011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Mux3~0_combout\,
	datab => \inst1|inst8|ALT_INV_Regist[4]~0_combout\,
	datac => \inst1|inst6|ALT_INV_Mux1~0_combout\,
	datad => \inst1|inst6|ALT_INV_Mux1~1_combout\,
	dataf => \inst1|inst6|ALT_INV_Add0~5_sumout\,
	combout => \inst1|inst6|Mux1~2_combout\);

-- Location: FF_X29_Y3_N50
\inst1|inst6|Regist[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst6|Mux1~2_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[4]~1_combout\,
	ena => \inst1|inst6|Regist[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst6|Regist\(6));

-- Location: LABCELL_X30_Y3_N15
\inst1|inst6|Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst6|Mux2~1_combout\ = ( \SelBus[0]~input_o\ & ( (\SelBus[2]~input_o\ & \inst1|inst6|Regist\(6)) ) ) # ( !\SelBus[0]~input_o\ & ( (\SelBus[2]~input_o\ & \inst1|inst6|Regist\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[2]~input_o\,
	datac => \inst1|inst6|ALT_INV_Regist\(6),
	datad => \inst1|inst6|ALT_INV_Regist\(4),
	dataf => \ALT_INV_SelBus[0]~input_o\,
	combout => \inst1|inst6|Mux2~1_combout\);

-- Location: LABCELL_X29_Y3_N27
\inst1|inst6|Mux2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst6|Mux2~2_combout\ = ( \inst1|inst6|Add0~9_sumout\ & ( (((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst6|Mux2~0_combout\)) # (\inst1|inst6|Mux2~1_combout\)) # (\inst1|inst8|Mux3~0_combout\) ) ) # ( !\inst1|inst6|Add0~9_sumout\ & ( 
-- ((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst6|Mux2~0_combout\)) # (\inst1|inst6|Mux2~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111111000000111111111101010111111111110101011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Mux3~0_combout\,
	datab => \inst1|inst8|ALT_INV_Regist[4]~0_combout\,
	datac => \inst1|inst6|ALT_INV_Mux2~0_combout\,
	datad => \inst1|inst6|ALT_INV_Mux2~1_combout\,
	dataf => \inst1|inst6|ALT_INV_Add0~9_sumout\,
	combout => \inst1|inst6|Mux2~2_combout\);

-- Location: FF_X29_Y3_N29
\inst1|inst6|Regist[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst6|Mux2~2_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[4]~1_combout\,
	ena => \inst1|inst6|Regist[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst6|Regist\(5));

-- Location: LABCELL_X30_Y3_N39
\inst1|inst6|Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst6|Mux3~1_combout\ = ( \SelBus[2]~input_o\ & ( (!\SelBus[0]~input_o\ & (\inst1|inst6|Regist\(3))) # (\SelBus[0]~input_o\ & ((\inst1|inst6|Regist\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101000011110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst6|ALT_INV_Regist\(3),
	datac => \inst1|inst6|ALT_INV_Regist\(5),
	datad => \ALT_INV_SelBus[0]~input_o\,
	dataf => \ALT_INV_SelBus[2]~input_o\,
	combout => \inst1|inst6|Mux3~1_combout\);

-- Location: LABCELL_X29_Y3_N39
\inst1|inst6|Mux3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst6|Mux3~2_combout\ = ( \inst1|inst6|Add0~13_sumout\ & ( (((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst6|Mux3~0_combout\)) # (\inst1|inst6|Mux3~1_combout\)) # (\inst1|inst8|Mux3~0_combout\) ) ) # ( !\inst1|inst6|Add0~13_sumout\ & ( 
-- ((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst6|Mux3~0_combout\)) # (\inst1|inst6|Mux3~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111111000000111111111101010111111111110101011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Mux3~0_combout\,
	datab => \inst1|inst8|ALT_INV_Regist[4]~0_combout\,
	datac => \inst1|inst6|ALT_INV_Mux3~0_combout\,
	datad => \inst1|inst6|ALT_INV_Mux3~1_combout\,
	dataf => \inst1|inst6|ALT_INV_Add0~13_sumout\,
	combout => \inst1|inst6|Mux3~2_combout\);

-- Location: FF_X29_Y3_N41
\inst1|inst6|Regist[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst6|Mux3~2_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[4]~1_combout\,
	ena => \inst1|inst6|Regist[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst6|Regist\(4));

-- Location: LABCELL_X30_Y3_N6
\inst1|inst6|Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst6|Mux4~1_combout\ = ( \inst1|inst6|Regist\(4) & ( (\SelBus[2]~input_o\ & ((\inst1|inst6|Regist\(2)) # (\SelBus[0]~input_o\))) ) ) # ( !\inst1|inst6|Regist\(4) & ( (!\SelBus[0]~input_o\ & (\SelBus[2]~input_o\ & \inst1|inst6|Regist\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110000000011000011110000001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SelBus[0]~input_o\,
	datac => \ALT_INV_SelBus[2]~input_o\,
	datad => \inst1|inst6|ALT_INV_Regist\(2),
	dataf => \inst1|inst6|ALT_INV_Regist\(4),
	combout => \inst1|inst6|Mux4~1_combout\);

-- Location: LABCELL_X29_Y3_N36
\inst1|inst6|Mux4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst6|Mux4~2_combout\ = ( \inst1|inst6|Add0~17_sumout\ & ( (((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst6|Mux4~0_combout\)) # (\inst1|inst6|Mux4~1_combout\)) # (\inst1|inst8|Mux3~0_combout\) ) ) # ( !\inst1|inst6|Add0~17_sumout\ & ( 
-- ((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst6|Mux4~0_combout\)) # (\inst1|inst6|Mux4~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111111000000111111111101010111111111110101011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Mux3~0_combout\,
	datab => \inst1|inst8|ALT_INV_Regist[4]~0_combout\,
	datac => \inst1|inst6|ALT_INV_Mux4~0_combout\,
	datad => \inst1|inst6|ALT_INV_Mux4~1_combout\,
	dataf => \inst1|inst6|ALT_INV_Add0~17_sumout\,
	combout => \inst1|inst6|Mux4~2_combout\);

-- Location: FF_X29_Y3_N38
\inst1|inst6|Regist[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst6|Mux4~2_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[4]~1_combout\,
	ena => \inst1|inst6|Regist[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst6|Regist\(3));

-- Location: MLABCELL_X25_Y3_N42
\inst1|inst6|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst6|Mux5~1_combout\ = ( \inst1|inst6|Regist\(1) & ( (\SelBus[2]~input_o\ & ((!\SelBus[0]~input_o\) # (\inst1|inst6|Regist\(3)))) ) ) # ( !\inst1|inst6|Regist\(1) & ( (\inst1|inst6|Regist\(3) & (\SelBus[2]~input_o\ & \SelBus[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100110001001100010011000100110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst6|ALT_INV_Regist\(3),
	datab => \ALT_INV_SelBus[2]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	dataf => \inst1|inst6|ALT_INV_Regist\(1),
	combout => \inst1|inst6|Mux5~1_combout\);

-- Location: LABCELL_X29_Y3_N42
\inst1|inst6|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst6|Mux5~0_combout\ = ( \inst1|inst6|Regist\(2) & ( (!\SelBus[1]~input_o\ & ((!\MUX_A~input_o\ & (\inst1|inst16|result\(2))) # (\MUX_A~input_o\ & ((\AIN[2]~input_o\))))) ) ) # ( !\inst1|inst6|Regist\(2) & ( ((!\MUX_A~input_o\ & 
-- (\inst1|inst16|result\(2))) # (\MUX_A~input_o\ & ((\AIN[2]~input_o\)))) # (\SelBus[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111101111111010011110111111101000000011100000100000001110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst16|ALT_INV_result\(2),
	datab => \ALT_INV_MUX_A~input_o\,
	datac => \ALT_INV_SelBus[1]~input_o\,
	datad => \ALT_INV_AIN[2]~input_o\,
	dataf => \inst1|inst6|ALT_INV_Regist\(2),
	combout => \inst1|inst6|Mux5~0_combout\);

-- Location: LABCELL_X29_Y3_N24
\inst1|inst6|Mux5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst6|Mux5~2_combout\ = ( \inst1|inst6|Add0~21_sumout\ & ( (((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst6|Mux5~0_combout\)) # (\inst1|inst6|Mux5~1_combout\)) # (\inst1|inst8|Mux3~0_combout\) ) ) # ( !\inst1|inst6|Add0~21_sumout\ & ( 
-- ((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst6|Mux5~0_combout\)) # (\inst1|inst6|Mux5~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111111000011110011111101011111011111110101111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Mux3~0_combout\,
	datab => \inst1|inst8|ALT_INV_Regist[4]~0_combout\,
	datac => \inst1|inst6|ALT_INV_Mux5~1_combout\,
	datad => \inst1|inst6|ALT_INV_Mux5~0_combout\,
	dataf => \inst1|inst6|ALT_INV_Add0~21_sumout\,
	combout => \inst1|inst6|Mux5~2_combout\);

-- Location: FF_X29_Y3_N26
\inst1|inst6|Regist[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst6|Mux5~2_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[4]~1_combout\,
	ena => \inst1|inst6|Regist[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst6|Regist\(2));

-- Location: LABCELL_X30_Y5_N33
\inst1|inst9|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst9|Mux5~0_combout\ = ( \inst1|inst9|Regist\(2) & ( (!\SelBus[1]~input_o\ & \inst1|inst16|result\(2)) ) ) # ( !\inst1|inst9|Regist\(2) & ( (\inst1|inst16|result\(2)) # (\SelBus[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SelBus[1]~input_o\,
	datad => \inst1|inst16|ALT_INV_result\(2),
	dataf => \inst1|inst9|ALT_INV_Regist\(2),
	combout => \inst1|inst9|Mux5~0_combout\);

-- Location: LABCELL_X31_Y5_N12
\inst1|inst9|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst9|Mux6~0_combout\ = ( \SelBus[1]~input_o\ & ( \inst1|inst16|result\(1) & ( !\inst1|inst9|Regist\(1) ) ) ) # ( !\SelBus[1]~input_o\ & ( \inst1|inst16|result\(1) ) ) # ( \SelBus[1]~input_o\ & ( !\inst1|inst16|result\(1) & ( 
-- !\inst1|inst9|Regist\(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110011111111111111111100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst9|ALT_INV_Regist\(1),
	datae => \ALT_INV_SelBus[1]~input_o\,
	dataf => \inst1|inst16|ALT_INV_result\(1),
	combout => \inst1|inst9|Mux6~0_combout\);

-- Location: LABCELL_X31_Y5_N39
\inst1|inst9|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst9|Mux2~0_combout\ = ( \inst1|inst16|result\(5) & ( (!\inst1|inst9|Regist\(5)) # (!\SelBus[1]~input_o\) ) ) # ( !\inst1|inst16|result\(5) & ( (!\inst1|inst9|Regist\(5) & \SelBus[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst9|ALT_INV_Regist\(5),
	datad => \ALT_INV_SelBus[1]~input_o\,
	dataf => \inst1|inst16|ALT_INV_result\(5),
	combout => \inst1|inst9|Mux2~0_combout\);

-- Location: LABCELL_X31_Y5_N57
\inst1|inst9|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst9|Mux3~0_combout\ = ( \inst1|inst16|result\(4) & ( (!\SelBus[1]~input_o\) # (!\inst1|inst9|Regist\(4)) ) ) # ( !\inst1|inst16|result\(4) & ( (\SelBus[1]~input_o\ & !\inst1|inst9|Regist\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000011111100111111001111110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SelBus[1]~input_o\,
	datac => \inst1|inst9|ALT_INV_Regist\(4),
	dataf => \inst1|inst16|ALT_INV_result\(4),
	combout => \inst1|inst9|Mux3~0_combout\);

-- Location: LABCELL_X30_Y5_N39
\inst1|inst9|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst9|Mux4~0_combout\ = ( \inst1|inst9|Regist\(3) & ( (!\SelBus[1]~input_o\ & \inst1|inst16|result\(3)) ) ) # ( !\inst1|inst9|Regist\(3) & ( (\inst1|inst16|result\(3)) # (\SelBus[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SelBus[1]~input_o\,
	datad => \inst1|inst16|ALT_INV_result\(3),
	dataf => \inst1|inst9|ALT_INV_Regist\(3),
	combout => \inst1|inst9|Mux4~0_combout\);

-- Location: LABCELL_X30_Y5_N54
\inst1|inst9|Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst9|Mux4~1_combout\ = ( \inst1|inst9|Regist\(4) & ( (\SelBus[2]~input_o\ & ((\SelBus[0]~input_o\) # (\inst1|inst9|Regist\(2)))) ) ) # ( !\inst1|inst9|Regist\(4) & ( (\inst1|inst9|Regist\(2) & (!\SelBus[0]~input_o\ & \SelBus[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000111000001110000011100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst9|ALT_INV_Regist\(2),
	datab => \ALT_INV_SelBus[0]~input_o\,
	datac => \ALT_INV_SelBus[2]~input_o\,
	dataf => \inst1|inst9|ALT_INV_Regist\(4),
	combout => \inst1|inst9|Mux4~1_combout\);

-- Location: LABCELL_X30_Y5_N3
\inst1|inst9|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst9|Add0~25_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(1))))) ) + ( !\inst1|inst9|Regist\(1) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) 
-- + ( \inst1|inst9|Add0~30\ ))
-- \inst1|inst9|Add0~26\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(1))))) ) + ( !\inst1|inst9|Regist\(1) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst1|inst9|Add0~30\ ))

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
	datad => \inst1|inst16|ALT_INV_result\(1),
	dataf => \inst1|inst9|ALT_INV_Regist\(1),
	cin => \inst1|inst9|Add0~30\,
	sumout => \inst1|inst9|Add0~25_sumout\,
	cout => \inst1|inst9|Add0~26\);

-- Location: LABCELL_X30_Y5_N6
\inst1|inst9|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst9|Add0~21_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(2))))) ) + ( !\inst1|inst9|Regist\(2) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) 
-- + ( \inst1|inst9|Add0~26\ ))
-- \inst1|inst9|Add0~22\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(2))))) ) + ( !\inst1|inst9|Regist\(2) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst1|inst9|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000010100000000000000000011000000111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[0]~input_o\,
	datac => \ALT_INV_SelBus[3]~input_o\,
	datad => \inst1|inst16|ALT_INV_result\(2),
	dataf => \inst1|inst9|ALT_INV_Regist\(2),
	cin => \inst1|inst9|Add0~26\,
	sumout => \inst1|inst9|Add0~21_sumout\,
	cout => \inst1|inst9|Add0~22\);

-- Location: LABCELL_X30_Y5_N9
\inst1|inst9|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst9|Add0~17_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(3))))) ) + ( !\inst1|inst9|Regist\(3) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) 
-- + ( \inst1|inst9|Add0~22\ ))
-- \inst1|inst9|Add0~18\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(3))))) ) + ( !\inst1|inst9|Regist\(3) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst1|inst9|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000010100000000000000000011000000111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[0]~input_o\,
	datac => \ALT_INV_SelBus[3]~input_o\,
	datad => \inst1|inst16|ALT_INV_result\(3),
	dataf => \inst1|inst9|ALT_INV_Regist\(3),
	cin => \inst1|inst9|Add0~22\,
	sumout => \inst1|inst9|Add0~17_sumout\,
	cout => \inst1|inst9|Add0~18\);

-- Location: LABCELL_X30_Y5_N36
\inst1|inst9|Mux4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst9|Mux4~2_combout\ = ( \inst1|inst9|Add0~17_sumout\ & ( (((\inst1|inst9|Mux4~0_combout\ & \inst1|inst8|Regist[4]~0_combout\)) # (\inst1|inst9|Mux4~1_combout\)) # (\inst1|inst8|Mux3~0_combout\) ) ) # ( !\inst1|inst9|Add0~17_sumout\ & ( 
-- ((\inst1|inst9|Mux4~0_combout\ & \inst1|inst8|Regist[4]~0_combout\)) # (\inst1|inst9|Mux4~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111111000000111111111101010111111111110101011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Mux3~0_combout\,
	datab => \inst1|inst9|ALT_INV_Mux4~0_combout\,
	datac => \inst1|inst8|ALT_INV_Regist[4]~0_combout\,
	datad => \inst1|inst9|ALT_INV_Mux4~1_combout\,
	dataf => \inst1|inst9|ALT_INV_Add0~17_sumout\,
	combout => \inst1|inst9|Mux4~2_combout\);

-- Location: MLABCELL_X28_Y5_N48
\inst1|inst9|Regist[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst9|Regist[6]~0_combout\ = ( \SelRegD[1]~input_o\ & ( !\SelRegD[2]~input_o\ & ( (!\SelRegD[0]~input_o\ & \inst1|inst6|Regist[6]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SelRegD[0]~input_o\,
	datac => \inst1|inst6|ALT_INV_Regist[6]~0_combout\,
	datae => \ALT_INV_SelRegD[1]~input_o\,
	dataf => \ALT_INV_SelRegD[2]~input_o\,
	combout => \inst1|inst9|Regist[6]~0_combout\);

-- Location: FF_X30_Y5_N38
\inst1|inst9|Regist[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst9|Mux4~2_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[4]~1_combout\,
	ena => \inst1|inst9|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst9|Regist\(3));

-- Location: LABCELL_X31_Y5_N9
\inst1|inst9|Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst9|Mux3~1_combout\ = ( \SelBus[0]~input_o\ & ( (\SelBus[2]~input_o\ & \inst1|inst9|Regist\(5)) ) ) # ( !\SelBus[0]~input_o\ & ( (\SelBus[2]~input_o\ & \inst1|inst9|Regist\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[2]~input_o\,
	datac => \inst1|inst9|ALT_INV_Regist\(3),
	datad => \inst1|inst9|ALT_INV_Regist\(5),
	dataf => \ALT_INV_SelBus[0]~input_o\,
	combout => \inst1|inst9|Mux3~1_combout\);

-- Location: LABCELL_X30_Y5_N12
\inst1|inst9|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst9|Add0~13_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(4))))) ) + ( !\inst1|inst9|Regist\(4) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) 
-- + ( \inst1|inst9|Add0~18\ ))
-- \inst1|inst9|Add0~14\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(4))))) ) + ( !\inst1|inst9|Regist\(4) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst1|inst9|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000010100000000000000000011000000111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[0]~input_o\,
	datac => \ALT_INV_SelBus[3]~input_o\,
	datad => \inst1|inst16|ALT_INV_result\(4),
	dataf => \inst1|inst9|ALT_INV_Regist\(4),
	cin => \inst1|inst9|Add0~18\,
	sumout => \inst1|inst9|Add0~13_sumout\,
	cout => \inst1|inst9|Add0~14\);

-- Location: LABCELL_X30_Y5_N51
\inst1|inst9|Mux3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst9|Mux3~2_combout\ = ( \inst1|inst9|Add0~13_sumout\ & ( (((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst9|Mux3~0_combout\)) # (\inst1|inst9|Mux3~1_combout\)) # (\inst1|inst8|Mux3~0_combout\) ) ) # ( !\inst1|inst9|Add0~13_sumout\ & ( 
-- ((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst9|Mux3~0_combout\)) # (\inst1|inst9|Mux3~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111111000001011111111100110111111111110011011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Regist[4]~0_combout\,
	datab => \inst1|inst8|ALT_INV_Mux3~0_combout\,
	datac => \inst1|inst9|ALT_INV_Mux3~0_combout\,
	datad => \inst1|inst9|ALT_INV_Mux3~1_combout\,
	dataf => \inst1|inst9|ALT_INV_Add0~13_sumout\,
	combout => \inst1|inst9|Mux3~2_combout\);

-- Location: FF_X30_Y5_N53
\inst1|inst9|Regist[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst9|Mux3~2_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[4]~1_combout\,
	ena => \inst1|inst9|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst9|Regist\(4));

-- Location: LABCELL_X31_Y5_N42
\inst1|inst9|Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst9|Mux2~1_combout\ = ( \inst1|inst9|Regist\(6) & ( (\SelBus[2]~input_o\ & ((\SelBus[0]~input_o\) # (\inst1|inst9|Regist\(4)))) ) ) # ( !\inst1|inst9|Regist\(6) & ( (\inst1|inst9|Regist\(4) & (!\SelBus[0]~input_o\ & \SelBus[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000000000001111110000000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst9|ALT_INV_Regist\(4),
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \ALT_INV_SelBus[2]~input_o\,
	dataf => \inst1|inst9|ALT_INV_Regist\(6),
	combout => \inst1|inst9|Mux2~1_combout\);

-- Location: LABCELL_X30_Y5_N15
\inst1|inst9|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst9|Add0~9_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(5))))) ) + ( !\inst1|inst9|Regist\(5) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + 
-- ( \inst1|inst9|Add0~14\ ))
-- \inst1|inst9|Add0~10\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(5))))) ) + ( !\inst1|inst9|Regist\(5) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst1|inst9|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000010100000000000000000011000000111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[0]~input_o\,
	datac => \ALT_INV_SelBus[3]~input_o\,
	datad => \inst1|inst16|ALT_INV_result\(5),
	dataf => \inst1|inst9|ALT_INV_Regist\(5),
	cin => \inst1|inst9|Add0~14\,
	sumout => \inst1|inst9|Add0~9_sumout\,
	cout => \inst1|inst9|Add0~10\);

-- Location: LABCELL_X30_Y5_N30
\inst1|inst9|Mux2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst9|Mux2~2_combout\ = ( \inst1|inst9|Add0~9_sumout\ & ( (((\inst1|inst9|Mux2~0_combout\ & \inst1|inst8|Regist[4]~0_combout\)) # (\inst1|inst9|Mux2~1_combout\)) # (\inst1|inst8|Mux3~0_combout\) ) ) # ( !\inst1|inst9|Add0~9_sumout\ & ( 
-- ((\inst1|inst9|Mux2~0_combout\ & \inst1|inst8|Regist[4]~0_combout\)) # (\inst1|inst9|Mux2~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111111000000111111111101010111111111110101011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Mux3~0_combout\,
	datab => \inst1|inst9|ALT_INV_Mux2~0_combout\,
	datac => \inst1|inst8|ALT_INV_Regist[4]~0_combout\,
	datad => \inst1|inst9|ALT_INV_Mux2~1_combout\,
	dataf => \inst1|inst9|ALT_INV_Add0~9_sumout\,
	combout => \inst1|inst9|Mux2~2_combout\);

-- Location: FF_X30_Y5_N32
\inst1|inst9|Regist[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst9|Mux2~2_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[4]~1_combout\,
	ena => \inst1|inst9|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst9|Regist\(5));

-- Location: LABCELL_X31_Y5_N6
\inst1|inst9|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst9|Mux1~1_combout\ = ( \SelBus[0]~input_o\ & ( (\inst1|inst9|Regist\(7) & \SelBus[2]~input_o\) ) ) # ( !\SelBus[0]~input_o\ & ( (\inst1|inst9|Regist\(5) & \SelBus[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst9|ALT_INV_Regist\(5),
	datac => \inst1|inst9|ALT_INV_Regist\(7),
	datad => \ALT_INV_SelBus[2]~input_o\,
	dataf => \ALT_INV_SelBus[0]~input_o\,
	combout => \inst1|inst9|Mux1~1_combout\);

-- Location: LABCELL_X31_Y5_N21
\inst1|inst9|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst9|Mux1~0_combout\ = ( \inst1|inst16|result\(6) & ( (!\inst1|inst9|Regist\(6)) # (!\SelBus[1]~input_o\) ) ) # ( !\inst1|inst16|result\(6) & ( (!\inst1|inst9|Regist\(6) & \SelBus[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101011111111101010101111111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst9|ALT_INV_Regist\(6),
	datad => \ALT_INV_SelBus[1]~input_o\,
	dataf => \inst1|inst16|ALT_INV_result\(6),
	combout => \inst1|inst9|Mux1~0_combout\);

-- Location: LABCELL_X30_Y5_N18
\inst1|inst9|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst9|Add0~5_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(6))))) ) + ( !\inst1|inst9|Regist\(6) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + 
-- ( \inst1|inst9|Add0~10\ ))
-- \inst1|inst9|Add0~6\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(6))))) ) + ( !\inst1|inst9|Regist\(6) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst1|inst9|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000010100000000000000000011000000111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[0]~input_o\,
	datac => \ALT_INV_SelBus[3]~input_o\,
	datad => \inst1|inst16|ALT_INV_result\(6),
	dataf => \inst1|inst9|ALT_INV_Regist\(6),
	cin => \inst1|inst9|Add0~10\,
	sumout => \inst1|inst9|Add0~5_sumout\,
	cout => \inst1|inst9|Add0~6\);

-- Location: LABCELL_X30_Y5_N48
\inst1|inst9|Mux1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst9|Mux1~2_combout\ = ( \inst1|inst9|Add0~5_sumout\ & ( (((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst9|Mux1~0_combout\)) # (\inst1|inst9|Mux1~1_combout\)) # (\inst1|inst8|Mux3~0_combout\) ) ) # ( !\inst1|inst9|Add0~5_sumout\ & ( 
-- ((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst9|Mux1~0_combout\)) # (\inst1|inst9|Mux1~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011111000011110101111100111111011111110011111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Regist[4]~0_combout\,
	datab => \inst1|inst8|ALT_INV_Mux3~0_combout\,
	datac => \inst1|inst9|ALT_INV_Mux1~1_combout\,
	datad => \inst1|inst9|ALT_INV_Mux1~0_combout\,
	dataf => \inst1|inst9|ALT_INV_Add0~5_sumout\,
	combout => \inst1|inst9|Mux1~2_combout\);

-- Location: FF_X30_Y5_N50
\inst1|inst9|Regist[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst9|Mux1~2_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[4]~1_combout\,
	ena => \inst1|inst9|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst9|Regist\(6));

-- Location: LABCELL_X30_Y5_N21
\inst1|inst9|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst9|Add0~1_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(7))))) ) + ( !\inst1|inst9|Regist\(7) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + 
-- ( \inst1|inst9|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000010100000000000000000011000000111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[0]~input_o\,
	datac => \ALT_INV_SelBus[3]~input_o\,
	datad => \inst1|inst16|ALT_INV_result\(7),
	dataf => \inst1|inst9|ALT_INV_Regist\(7),
	cin => \inst1|inst9|Add0~6\,
	sumout => \inst1|inst9|Add0~1_sumout\);

-- Location: LABCELL_X31_Y5_N24
\inst1|inst9|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst9|Mux0~0_combout\ = ( \inst1|inst9|Regist\(7) & ( \inst1|inst16|result\(7) & ( (!\SelBus[3]~input_o\ & ((!\SelBus[2]~input_o\) # (\inst1|inst9|Regist\(6)))) ) ) ) # ( !\inst1|inst9|Regist\(7) & ( \inst1|inst16|result\(7) & ( 
-- ((!\SelBus[2]~input_o\) # (\SelBus[3]~input_o\)) # (\inst1|inst9|Regist\(6)) ) ) ) # ( \inst1|inst9|Regist\(7) & ( !\inst1|inst16|result\(7) & ( (\inst1|inst9|Regist\(6) & (!\SelBus[3]~input_o\ & \SelBus[2]~input_o\)) ) ) ) # ( !\inst1|inst9|Regist\(7) & 
-- ( !\inst1|inst16|result\(7) & ( ((\inst1|inst9|Regist\(6) & \SelBus[2]~input_o\)) # (\SelBus[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011100110111000001000000010011110111111101111100010011000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst9|ALT_INV_Regist\(6),
	datab => \ALT_INV_SelBus[3]~input_o\,
	datac => \ALT_INV_SelBus[2]~input_o\,
	datae => \inst1|inst9|ALT_INV_Regist\(7),
	dataf => \inst1|inst16|ALT_INV_result\(7),
	combout => \inst1|inst9|Mux0~0_combout\);

-- Location: LABCELL_X31_Y5_N3
\inst1|inst9|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst9|Mux0~1_combout\ = ( \inst1|inst9|Add0~1_sumout\ & ( \inst1|inst9|Mux0~0_combout\ & ( ((!\inst1|inst8|Regist[7]~7_combout\) # (\inst1|inst8|Regist[0]~4_combout\)) # (\inst1|inst9|Regist\(0)) ) ) ) # ( !\inst1|inst9|Add0~1_sumout\ & ( 
-- \inst1|inst9|Mux0~0_combout\ & ( (!\inst1|inst8|Regist[0]~4_combout\ & ((!\inst1|inst8|Regist[7]~7_combout\) # (\inst1|inst9|Regist\(0)))) ) ) ) # ( \inst1|inst9|Add0~1_sumout\ & ( !\inst1|inst9|Mux0~0_combout\ & ( ((\inst1|inst9|Regist\(0) & 
-- \inst1|inst8|Regist[7]~7_combout\)) # (\inst1|inst8|Regist[0]~4_combout\) ) ) ) # ( !\inst1|inst9|Add0~1_sumout\ & ( !\inst1|inst9|Mux0~0_combout\ & ( (\inst1|inst9|Regist\(0) & (\inst1|inst8|Regist[7]~7_combout\ & !\inst1|inst8|Regist[0]~4_combout\)) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000111110001111111010000110100001101111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst9|ALT_INV_Regist\(0),
	datab => \inst1|inst8|ALT_INV_Regist[7]~7_combout\,
	datac => \inst1|inst8|ALT_INV_Regist[0]~4_combout\,
	datae => \inst1|inst9|ALT_INV_Add0~1_sumout\,
	dataf => \inst1|inst9|ALT_INV_Mux0~0_combout\,
	combout => \inst1|inst9|Mux0~1_combout\);

-- Location: FF_X31_Y5_N5
\inst1|inst9|Regist[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst9|Mux0~1_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[7]~8_combout\,
	ena => \inst1|inst9|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst9|Regist\(7));

-- Location: LABCELL_X30_Y5_N0
\inst1|inst9|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst9|Add0~29_sumout\ = SUM(( ((!\SelBus[3]~input_o\) # (\inst1|inst16|result\(0))) # (\SelBus[1]~input_o\) ) + ( !\inst1|inst9|Regist\(0) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( !VCC ))
-- \inst1|inst9|Add0~30\ = CARRY(( ((!\SelBus[3]~input_o\) # (\inst1|inst16|result\(0))) # (\SelBus[1]~input_o\) ) + ( !\inst1|inst9|Regist\(0) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111000011110000100000000000000001101110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[3]~input_o\,
	datac => \inst1|inst9|ALT_INV_Regist\(0),
	datad => \inst1|inst16|ALT_INV_result\(0),
	cin => GND,
	sumout => \inst1|inst9|Add0~29_sumout\,
	cout => \inst1|inst9|Add0~30\);

-- Location: MLABCELL_X25_Y3_N30
\inst1|inst9|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst9|Mux7~0_combout\ = ( \inst1|inst9|Regist\(0) & ( \inst1|inst16|result\(0) & ( (!\SelBus[3]~input_o\ & ((!\SelBus[2]~input_o\) # (\inst1|inst9|Regist\(1)))) ) ) ) # ( !\inst1|inst9|Regist\(0) & ( \inst1|inst16|result\(0) & ( 
-- ((!\SelBus[2]~input_o\) # (\SelBus[3]~input_o\)) # (\inst1|inst9|Regist\(1)) ) ) ) # ( \inst1|inst9|Regist\(0) & ( !\inst1|inst16|result\(0) & ( (\inst1|inst9|Regist\(1) & (\SelBus[2]~input_o\ & !\SelBus[3]~input_o\)) ) ) ) # ( !\inst1|inst9|Regist\(0) & 
-- ( !\inst1|inst16|result\(0) & ( ((\inst1|inst9|Regist\(1) & \SelBus[2]~input_o\)) # (\SelBus[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100011111000100000001000011011111110111111101000011010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst9|ALT_INV_Regist\(1),
	datab => \ALT_INV_SelBus[2]~input_o\,
	datac => \ALT_INV_SelBus[3]~input_o\,
	datae => \inst1|inst9|ALT_INV_Regist\(0),
	dataf => \inst1|inst16|ALT_INV_result\(0),
	combout => \inst1|inst9|Mux7~0_combout\);

-- Location: MLABCELL_X25_Y3_N36
\inst1|inst9|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst9|Mux7~1_combout\ = ( \inst1|inst9|Add0~29_sumout\ & ( \inst1|inst9|Mux7~0_combout\ & ( ((!\inst1|inst8|Regist[0]~5_combout\) # (\inst1|inst8|Regist[0]~4_combout\)) # (\inst1|inst9|Regist\(7)) ) ) ) # ( !\inst1|inst9|Add0~29_sumout\ & ( 
-- \inst1|inst9|Mux7~0_combout\ & ( (!\inst1|inst8|Regist[0]~4_combout\ & ((!\inst1|inst8|Regist[0]~5_combout\) # (\inst1|inst9|Regist\(7)))) ) ) ) # ( \inst1|inst9|Add0~29_sumout\ & ( !\inst1|inst9|Mux7~0_combout\ & ( ((\inst1|inst9|Regist\(7) & 
-- \inst1|inst8|Regist[0]~5_combout\)) # (\inst1|inst8|Regist[0]~4_combout\) ) ) ) # ( !\inst1|inst9|Add0~29_sumout\ & ( !\inst1|inst9|Mux7~0_combout\ & ( (\inst1|inst9|Regist\(7) & (!\inst1|inst8|Regist[0]~4_combout\ & \inst1|inst8|Regist[0]~5_combout\)) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000011110011111111110000001100001111111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst9|ALT_INV_Regist\(7),
	datac => \inst1|inst8|ALT_INV_Regist[0]~4_combout\,
	datad => \inst1|inst8|ALT_INV_Regist[0]~5_combout\,
	datae => \inst1|inst9|ALT_INV_Add0~29_sumout\,
	dataf => \inst1|inst9|ALT_INV_Mux7~0_combout\,
	combout => \inst1|inst9|Mux7~1_combout\);

-- Location: FF_X25_Y3_N38
\inst1|inst9|Regist[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst9|Mux7~1_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[0]~6_combout\,
	ena => \inst1|inst9|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst9|Regist\(0));

-- Location: LABCELL_X30_Y5_N57
\inst1|inst9|Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst9|Mux6~1_combout\ = ( \inst1|inst9|Regist\(0) & ( (\SelBus[2]~input_o\ & ((!\SelBus[0]~input_o\) # (\inst1|inst9|Regist\(2)))) ) ) # ( !\inst1|inst9|Regist\(0) & ( (\inst1|inst9|Regist\(2) & (\SelBus[0]~input_o\ & \SelBus[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100000000110111010000000011011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst9|ALT_INV_Regist\(2),
	datab => \ALT_INV_SelBus[0]~input_o\,
	datad => \ALT_INV_SelBus[2]~input_o\,
	dataf => \inst1|inst9|ALT_INV_Regist\(0),
	combout => \inst1|inst9|Mux6~1_combout\);

-- Location: LABCELL_X30_Y5_N27
\inst1|inst9|Mux6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst9|Mux6~2_combout\ = ( \inst1|inst9|Mux6~1_combout\ ) # ( !\inst1|inst9|Mux6~1_combout\ & ( (!\inst1|inst8|Regist[4]~0_combout\ & (\inst1|inst8|Mux3~0_combout\ & ((\inst1|inst9|Add0~25_sumout\)))) # (\inst1|inst8|Regist[4]~0_combout\ & 
-- (((\inst1|inst8|Mux3~0_combout\ & \inst1|inst9|Add0~25_sumout\)) # (\inst1|inst9|Mux6~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111000001010011011111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Regist[4]~0_combout\,
	datab => \inst1|inst8|ALT_INV_Mux3~0_combout\,
	datac => \inst1|inst9|ALT_INV_Mux6~0_combout\,
	datad => \inst1|inst9|ALT_INV_Add0~25_sumout\,
	dataf => \inst1|inst9|ALT_INV_Mux6~1_combout\,
	combout => \inst1|inst9|Mux6~2_combout\);

-- Location: FF_X30_Y5_N29
\inst1|inst9|Regist[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst9|Mux6~2_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[4]~1_combout\,
	ena => \inst1|inst9|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst9|Regist\(1));

-- Location: LABCELL_X31_Y5_N36
\inst1|inst9|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst9|Mux5~1_combout\ = ( \inst1|inst9|Regist\(3) & ( (\SelBus[2]~input_o\ & ((\inst1|inst9|Regist\(1)) # (\SelBus[0]~input_o\))) ) ) # ( !\inst1|inst9|Regist\(3) & ( (!\SelBus[0]~input_o\ & (\inst1|inst9|Regist\(1) & \SelBus[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000111000001110000011100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[0]~input_o\,
	datab => \inst1|inst9|ALT_INV_Regist\(1),
	datac => \ALT_INV_SelBus[2]~input_o\,
	dataf => \inst1|inst9|ALT_INV_Regist\(3),
	combout => \inst1|inst9|Mux5~1_combout\);

-- Location: LABCELL_X30_Y5_N24
\inst1|inst9|Mux5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst9|Mux5~2_combout\ = ( \inst1|inst9|Add0~21_sumout\ & ( (((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst9|Mux5~0_combout\)) # (\inst1|inst9|Mux5~1_combout\)) # (\inst1|inst8|Mux3~0_combout\) ) ) # ( !\inst1|inst9|Add0~21_sumout\ & ( 
-- ((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst9|Mux5~0_combout\)) # (\inst1|inst9|Mux5~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111111000001011111111100110111111111110011011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Regist[4]~0_combout\,
	datab => \inst1|inst8|ALT_INV_Mux3~0_combout\,
	datac => \inst1|inst9|ALT_INV_Mux5~0_combout\,
	datad => \inst1|inst9|ALT_INV_Mux5~1_combout\,
	dataf => \inst1|inst9|ALT_INV_Add0~21_sumout\,
	combout => \inst1|inst9|Mux5~2_combout\);

-- Location: FF_X30_Y5_N26
\inst1|inst9|Regist[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst9|Mux5~2_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[4]~1_combout\,
	ena => \inst1|inst9|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst9|Regist\(2));

-- Location: LABCELL_X31_Y3_N48
\inst1|inst16|result[2]~312\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|result[2]~312_combout\ = ( \inst1|inst17|Regist\(2) & ( \inst1|inst9|Regist\(2) & ( (!\inst1|inst16|_~10_combout\ & (!\inst1|inst16|_~9_combout\ & ((!\inst1|inst16|_~8_combout\) # (!\inst1|inst6|Regist\(2))))) ) ) ) # ( 
-- !\inst1|inst17|Regist\(2) & ( \inst1|inst9|Regist\(2) & ( (!\inst1|inst16|_~9_combout\ & ((!\inst1|inst16|_~8_combout\) # (!\inst1|inst6|Regist\(2)))) ) ) ) # ( \inst1|inst17|Regist\(2) & ( !\inst1|inst9|Regist\(2) & ( (!\inst1|inst16|_~10_combout\ & 
-- ((!\inst1|inst16|_~8_combout\) # (!\inst1|inst6|Regist\(2)))) ) ) ) # ( !\inst1|inst17|Regist\(2) & ( !\inst1|inst9|Regist\(2) & ( (!\inst1|inst16|_~8_combout\) # (!\inst1|inst6|Regist\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111001100101010101000100011110000110000001010000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst16|ALT_INV__~10_combout\,
	datab => \inst1|inst16|ALT_INV__~8_combout\,
	datac => \inst1|inst16|ALT_INV__~9_combout\,
	datad => \inst1|inst6|ALT_INV_Regist\(2),
	datae => \inst1|inst17|ALT_INV_Regist\(2),
	dataf => \inst1|inst9|ALT_INV_Regist\(2),
	combout => \inst1|inst16|result[2]~312_combout\);

-- Location: LABCELL_X31_Y3_N30
\inst1|inst16|result[2]~317\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|result[2]~317_combout\ = ( \inst1|inst16|result[2]~313_combout\ & ( \inst1|inst16|result[2]~312_combout\ & ( (!\inst1|inst16|result[2]~315_combout\ & (!\inst1|inst16|result[2]~316_combout\ & \inst1|inst16|result[2]~314_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst16|ALT_INV_result[2]~315_combout\,
	datac => \inst1|inst16|ALT_INV_result[2]~316_combout\,
	datad => \inst1|inst16|ALT_INV_result[2]~314_combout\,
	datae => \inst1|inst16|ALT_INV_result[2]~313_combout\,
	dataf => \inst1|inst16|ALT_INV_result[2]~312_combout\,
	combout => \inst1|inst16|result[2]~317_combout\);

-- Location: MLABCELL_X28_Y1_N27
\inst1|inst16|_~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|_~7_combout\ = ( \muxSel[1]~input_o\ & ( \muxSel[0]~input_o\ & ( (!\muxSel[4]~input_o\ & !\muxSel[5]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_muxSel[4]~input_o\,
	datac => \ALT_INV_muxSel[5]~input_o\,
	datae => \ALT_INV_muxSel[1]~input_o\,
	dataf => \ALT_INV_muxSel[0]~input_o\,
	combout => \inst1|inst16|_~7_combout\);

-- Location: LABCELL_X29_Y1_N33
\inst1|inst19|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst19|Mux3~0_combout\ = ( \inst1|inst19|Regist\(4) & ( (!\SelBus[1]~input_o\ & \inst1|inst16|result\(4)) ) ) # ( !\inst1|inst19|Regist\(4) & ( (\inst1|inst16|result\(4)) # (\SelBus[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111010101011111111100000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datad => \inst1|inst16|ALT_INV_result\(4),
	dataf => \inst1|inst19|ALT_INV_Regist\(4),
	combout => \inst1|inst19|Mux3~0_combout\);

-- Location: LABCELL_X30_Y1_N30
\inst1|inst19|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst19|Add0~29_sumout\ = SUM(( ((!\SelBus[3]~input_o\) # (\inst1|inst16|result\(0))) # (\SelBus[1]~input_o\) ) + ( !\inst1|inst19|Regist\(0) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( !VCC ))
-- \inst1|inst19|Add0~30\ = CARRY(( ((!\SelBus[3]~input_o\) # (\inst1|inst16|result\(0))) # (\SelBus[1]~input_o\) ) + ( !\inst1|inst19|Regist\(0) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000001101111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[3]~input_o\,
	datac => \inst1|inst16|ALT_INV_result\(0),
	dataf => \inst1|inst19|ALT_INV_Regist\(0),
	cin => GND,
	sumout => \inst1|inst19|Add0~29_sumout\,
	cout => \inst1|inst19|Add0~30\);

-- Location: LABCELL_X29_Y1_N18
\inst1|inst19|Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst19|Mux6~1_combout\ = ( \inst1|inst19|Regist\(2) & ( (\SelBus[2]~input_o\ & ((\inst1|inst19|Regist\(0)) # (\SelBus[0]~input_o\))) ) ) # ( !\inst1|inst19|Regist\(2) & ( (\SelBus[2]~input_o\ & (!\SelBus[0]~input_o\ & \inst1|inst19|Regist\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000000011001100110000001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SelBus[2]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst1|inst19|ALT_INV_Regist\(0),
	dataf => \inst1|inst19|ALT_INV_Regist\(2),
	combout => \inst1|inst19|Mux6~1_combout\);

-- Location: LABCELL_X29_Y1_N21
\inst1|inst19|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst19|Mux6~0_combout\ = ( \inst1|inst19|Regist\(1) & ( (!\SelBus[1]~input_o\ & \inst1|inst16|result\(1)) ) ) # ( !\inst1|inst19|Regist\(1) & ( (\inst1|inst16|result\(1)) # (\SelBus[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111100001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datac => \inst1|inst16|ALT_INV_result\(1),
	dataf => \inst1|inst19|ALT_INV_Regist\(1),
	combout => \inst1|inst19|Mux6~0_combout\);

-- Location: LABCELL_X30_Y1_N33
\inst1|inst19|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst19|Add0~25_sumout\ = SUM(( !\inst1|inst19|Regist\(1) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(1))))) 
-- ) + ( \inst1|inst19|Add0~30\ ))
-- \inst1|inst19|Add0~26\ = CARRY(( !\inst1|inst19|Regist\(1) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(1))))) ) + ( 
-- \inst1|inst19|Add0~30\ ))

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
	datad => \inst1|inst19|ALT_INV_Regist\(1),
	dataf => \inst1|inst16|ALT_INV_result\(1),
	cin => \inst1|inst19|Add0~30\,
	sumout => \inst1|inst19|Add0~25_sumout\,
	cout => \inst1|inst19|Add0~26\);

-- Location: LABCELL_X30_Y1_N0
\inst1|inst19|Mux6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst19|Mux6~2_combout\ = ( \inst1|inst19|Add0~25_sumout\ & ( (((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst19|Mux6~0_combout\)) # (\inst1|inst19|Mux6~1_combout\)) # (\inst1|inst8|Mux3~0_combout\) ) ) # ( !\inst1|inst19|Add0~25_sumout\ & ( 
-- ((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst19|Mux6~0_combout\)) # (\inst1|inst19|Mux6~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111111000011110011111101011111011111110101111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Mux3~0_combout\,
	datab => \inst1|inst8|ALT_INV_Regist[4]~0_combout\,
	datac => \inst1|inst19|ALT_INV_Mux6~1_combout\,
	datad => \inst1|inst19|ALT_INV_Mux6~0_combout\,
	dataf => \inst1|inst19|ALT_INV_Add0~25_sumout\,
	combout => \inst1|inst19|Mux6~2_combout\);

-- Location: LABCELL_X31_Y1_N33
\inst1|inst19|Regist[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst19|Regist[6]~0_combout\ = ( \inst1|inst8|Regist[4]~2_combout\ & ( (!\SelRegD[2]~input_o\ & (\SelRegD[0]~input_o\ & \SelRegD[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelRegD[2]~input_o\,
	datac => \ALT_INV_SelRegD[0]~input_o\,
	datad => \ALT_INV_SelRegD[1]~input_o\,
	dataf => \inst1|inst8|ALT_INV_Regist[4]~2_combout\,
	combout => \inst1|inst19|Regist[6]~0_combout\);

-- Location: FF_X30_Y1_N2
\inst1|inst19|Regist[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst19|Mux6~2_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[4]~1_combout\,
	ena => \inst1|inst19|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst19|Regist\(1));

-- Location: LABCELL_X27_Y1_N27
\inst1|inst19|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst19|Mux7~0_combout\ = ( \inst1|inst19|Regist\(1) & ( \inst1|inst16|result\(0) & ( (!\inst1|inst19|Regist\(0)) # (!\SelBus[3]~input_o\) ) ) ) # ( !\inst1|inst19|Regist\(1) & ( \inst1|inst16|result\(0) & ( (!\SelBus[3]~input_o\ & 
-- ((!\SelBus[2]~input_o\))) # (\SelBus[3]~input_o\ & (!\inst1|inst19|Regist\(0))) ) ) ) # ( \inst1|inst19|Regist\(1) & ( !\inst1|inst16|result\(0) & ( (!\SelBus[3]~input_o\ & ((\SelBus[2]~input_o\))) # (\SelBus[3]~input_o\ & (!\inst1|inst19|Regist\(0))) ) ) 
-- ) # ( !\inst1|inst19|Regist\(1) & ( !\inst1|inst16|result\(0) & ( (!\inst1|inst19|Regist\(0) & \SelBus[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010001100111010101011001100101010101111111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst19|ALT_INV_Regist\(0),
	datab => \ALT_INV_SelBus[2]~input_o\,
	datad => \ALT_INV_SelBus[3]~input_o\,
	datae => \inst1|inst19|ALT_INV_Regist\(1),
	dataf => \inst1|inst16|ALT_INV_result\(0),
	combout => \inst1|inst19|Mux7~0_combout\);

-- Location: LABCELL_X27_Y1_N54
\inst1|inst19|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst19|Mux7~1_combout\ = ( \inst1|inst19|Add0~29_sumout\ & ( \inst1|inst19|Mux7~0_combout\ & ( ((!\inst1|inst8|Regist[0]~5_combout\) # (\inst1|inst8|Regist[0]~4_combout\)) # (\inst1|inst19|Regist\(7)) ) ) ) # ( !\inst1|inst19|Add0~29_sumout\ & ( 
-- \inst1|inst19|Mux7~0_combout\ & ( (!\inst1|inst8|Regist[0]~4_combout\ & ((!\inst1|inst8|Regist[0]~5_combout\) # (\inst1|inst19|Regist\(7)))) ) ) ) # ( \inst1|inst19|Add0~29_sumout\ & ( !\inst1|inst19|Mux7~0_combout\ & ( ((\inst1|inst19|Regist\(7) & 
-- \inst1|inst8|Regist[0]~5_combout\)) # (\inst1|inst8|Regist[0]~4_combout\) ) ) ) # ( !\inst1|inst19|Add0~29_sumout\ & ( !\inst1|inst19|Mux7~0_combout\ & ( (\inst1|inst19|Regist\(7) & (\inst1|inst8|Regist[0]~5_combout\ & !\inst1|inst8|Regist[0]~4_combout\)) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000111110001111111010000110100001101111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst19|ALT_INV_Regist\(7),
	datab => \inst1|inst8|ALT_INV_Regist[0]~5_combout\,
	datac => \inst1|inst8|ALT_INV_Regist[0]~4_combout\,
	datae => \inst1|inst19|ALT_INV_Add0~29_sumout\,
	dataf => \inst1|inst19|ALT_INV_Mux7~0_combout\,
	combout => \inst1|inst19|Mux7~1_combout\);

-- Location: FF_X27_Y1_N56
\inst1|inst19|Regist[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst19|Mux7~1_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[0]~6_combout\,
	ena => \inst1|inst19|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst19|Regist\(0));

-- Location: MLABCELL_X28_Y1_N30
\inst1|inst19|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst19|Mux0~0_combout\ = ( \inst1|inst16|result\(7) & ( (!\SelBus[3]~input_o\ & ((!\SelBus[2]~input_o\) # ((\inst1|inst19|Regist\(6))))) # (\SelBus[3]~input_o\ & (((!\inst1|inst19|Regist\(7))))) ) ) # ( !\inst1|inst16|result\(7) & ( 
-- (!\SelBus[3]~input_o\ & (\SelBus[2]~input_o\ & (\inst1|inst19|Regist\(6)))) # (\SelBus[3]~input_o\ & (((!\inst1|inst19|Regist\(7))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011100000010010101110000001011011111100010101101111110001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[3]~input_o\,
	datab => \ALT_INV_SelBus[2]~input_o\,
	datac => \inst1|inst19|ALT_INV_Regist\(6),
	datad => \inst1|inst19|ALT_INV_Regist\(7),
	dataf => \inst1|inst16|ALT_INV_result\(7),
	combout => \inst1|inst19|Mux0~0_combout\);

-- Location: LABCELL_X30_Y1_N36
\inst1|inst19|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst19|Add0~21_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(2))))) ) + ( !\inst1|inst19|Regist\(2) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) 
-- ) + ( \inst1|inst19|Add0~26\ ))
-- \inst1|inst19|Add0~22\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(2))))) ) + ( !\inst1|inst19|Regist\(2) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst1|inst19|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000010100000000000000000011000000111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[0]~input_o\,
	datac => \ALT_INV_SelBus[3]~input_o\,
	datad => \inst1|inst16|ALT_INV_result\(2),
	dataf => \inst1|inst19|ALT_INV_Regist\(2),
	cin => \inst1|inst19|Add0~26\,
	sumout => \inst1|inst19|Add0~21_sumout\,
	cout => \inst1|inst19|Add0~22\);

-- Location: LABCELL_X30_Y1_N39
\inst1|inst19|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst19|Add0~17_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(3))))) ) + ( !\inst1|inst19|Regist\(3) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) 
-- ) + ( \inst1|inst19|Add0~22\ ))
-- \inst1|inst19|Add0~18\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(3))))) ) + ( !\inst1|inst19|Regist\(3) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst1|inst19|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000010100000000000000000011000000111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[0]~input_o\,
	datac => \ALT_INV_SelBus[3]~input_o\,
	datad => \inst1|inst16|ALT_INV_result\(3),
	dataf => \inst1|inst19|ALT_INV_Regist\(3),
	cin => \inst1|inst19|Add0~22\,
	sumout => \inst1|inst19|Add0~17_sumout\,
	cout => \inst1|inst19|Add0~18\);

-- Location: LABCELL_X30_Y1_N42
\inst1|inst19|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst19|Add0~13_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\)) # (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst1|inst16|result\(4))))) ) + ( !\inst1|inst19|Regist\(4) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + 
-- ( \inst1|inst19|Add0~18\ ))
-- \inst1|inst19|Add0~14\ = CARRY(( (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\)) # (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst1|inst16|result\(4))))) ) + ( !\inst1|inst19|Regist\(4) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst1|inst19|Add0~18\ ))

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
	datad => \inst1|inst16|ALT_INV_result\(4),
	dataf => \inst1|inst19|ALT_INV_Regist\(4),
	cin => \inst1|inst19|Add0~18\,
	sumout => \inst1|inst19|Add0~13_sumout\,
	cout => \inst1|inst19|Add0~14\);

-- Location: LABCELL_X30_Y1_N45
\inst1|inst19|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst19|Add0~9_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\)) # (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst1|inst16|result\(5))))) ) + ( !\inst1|inst19|Regist\(5) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst1|inst19|Add0~14\ ))
-- \inst1|inst19|Add0~10\ = CARRY(( (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\)) # (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst1|inst16|result\(5))))) ) + ( !\inst1|inst19|Regist\(5) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst1|inst19|Add0~14\ ))

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
	datad => \inst1|inst16|ALT_INV_result\(5),
	dataf => \inst1|inst19|ALT_INV_Regist\(5),
	cin => \inst1|inst19|Add0~14\,
	sumout => \inst1|inst19|Add0~9_sumout\,
	cout => \inst1|inst19|Add0~10\);

-- Location: LABCELL_X30_Y1_N48
\inst1|inst19|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst19|Add0~5_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\)) # (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst1|inst16|result\(6))))) ) + ( !\inst1|inst19|Regist\(6) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst1|inst19|Add0~10\ ))
-- \inst1|inst19|Add0~6\ = CARRY(( (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\)) # (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst1|inst16|result\(6))))) ) + ( !\inst1|inst19|Regist\(6) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst1|inst19|Add0~10\ ))

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
	datad => \inst1|inst16|ALT_INV_result\(6),
	dataf => \inst1|inst19|ALT_INV_Regist\(6),
	cin => \inst1|inst19|Add0~10\,
	sumout => \inst1|inst19|Add0~5_sumout\,
	cout => \inst1|inst19|Add0~6\);

-- Location: LABCELL_X30_Y1_N51
\inst1|inst19|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst19|Add0~1_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\)) # (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst1|inst16|result\(7))))) ) + ( !\inst1|inst19|Regist\(7) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst1|inst19|Add0~6\ ))

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
	datad => \inst1|inst16|ALT_INV_result\(7),
	dataf => \inst1|inst19|ALT_INV_Regist\(7),
	cin => \inst1|inst19|Add0~6\,
	sumout => \inst1|inst19|Add0~1_sumout\);

-- Location: LABCELL_X29_Y1_N54
\inst1|inst19|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst19|Mux0~1_combout\ = ( \inst1|inst8|Regist[0]~4_combout\ & ( \inst1|inst19|Add0~1_sumout\ ) ) # ( !\inst1|inst8|Regist[0]~4_combout\ & ( \inst1|inst19|Add0~1_sumout\ & ( (!\inst1|inst8|Regist[7]~7_combout\ & ((\inst1|inst19|Mux0~0_combout\))) # 
-- (\inst1|inst8|Regist[7]~7_combout\ & (\inst1|inst19|Regist\(0))) ) ) ) # ( !\inst1|inst8|Regist[0]~4_combout\ & ( !\inst1|inst19|Add0~1_sumout\ & ( (!\inst1|inst8|Regist[7]~7_combout\ & ((\inst1|inst19|Mux0~0_combout\))) # 
-- (\inst1|inst8|Regist[7]~7_combout\ & (\inst1|inst19|Regist\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000000000000000000011011000110111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Regist[7]~7_combout\,
	datab => \inst1|inst19|ALT_INV_Regist\(0),
	datac => \inst1|inst19|ALT_INV_Mux0~0_combout\,
	datae => \inst1|inst8|ALT_INV_Regist[0]~4_combout\,
	dataf => \inst1|inst19|ALT_INV_Add0~1_sumout\,
	combout => \inst1|inst19|Mux0~1_combout\);

-- Location: FF_X29_Y1_N56
\inst1|inst19|Regist[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst19|Mux0~1_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[7]~8_combout\,
	ena => \inst1|inst19|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst19|Regist\(7));

-- Location: LABCELL_X27_Y1_N42
\inst1|inst19|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst19|Mux1~1_combout\ = ( \inst1|inst19|Regist\(7) & ( \inst1|inst19|Regist\(5) & ( \SelBus[2]~input_o\ ) ) ) # ( !\inst1|inst19|Regist\(7) & ( \inst1|inst19|Regist\(5) & ( (\SelBus[2]~input_o\ & !\SelBus[0]~input_o\) ) ) ) # ( 
-- \inst1|inst19|Regist\(7) & ( !\inst1|inst19|Regist\(5) & ( (\SelBus[2]~input_o\ & \SelBus[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100110000001100000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SelBus[2]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datae => \inst1|inst19|ALT_INV_Regist\(7),
	dataf => \inst1|inst19|ALT_INV_Regist\(5),
	combout => \inst1|inst19|Mux1~1_combout\);

-- Location: LABCELL_X30_Y1_N15
\inst1|inst19|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst19|Mux1~0_combout\ = ( \inst1|inst19|Regist\(6) & ( (!\SelBus[1]~input_o\ & \inst1|inst16|result\(6)) ) ) # ( !\inst1|inst19|Regist\(6) & ( (\inst1|inst16|result\(6)) # (\SelBus[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SelBus[1]~input_o\,
	datad => \inst1|inst16|ALT_INV_result\(6),
	dataf => \inst1|inst19|ALT_INV_Regist\(6),
	combout => \inst1|inst19|Mux1~0_combout\);

-- Location: LABCELL_X30_Y1_N18
\inst1|inst19|Mux1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst19|Mux1~2_combout\ = ( \inst1|inst19|Add0~5_sumout\ & ( (((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst19|Mux1~0_combout\)) # (\inst1|inst19|Mux1~1_combout\)) # (\inst1|inst8|Mux3~0_combout\) ) ) # ( !\inst1|inst19|Add0~5_sumout\ & ( 
-- ((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst19|Mux1~0_combout\)) # (\inst1|inst19|Mux1~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111111000011110011111101011111011111110101111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Mux3~0_combout\,
	datab => \inst1|inst8|ALT_INV_Regist[4]~0_combout\,
	datac => \inst1|inst19|ALT_INV_Mux1~1_combout\,
	datad => \inst1|inst19|ALT_INV_Mux1~0_combout\,
	dataf => \inst1|inst19|ALT_INV_Add0~5_sumout\,
	combout => \inst1|inst19|Mux1~2_combout\);

-- Location: FF_X30_Y1_N20
\inst1|inst19|Regist[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst19|Mux1~2_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[4]~1_combout\,
	ena => \inst1|inst19|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst19|Regist\(6));

-- Location: LABCELL_X29_Y1_N0
\inst1|inst19|Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst19|Mux2~1_combout\ = ( \inst1|inst19|Regist\(4) & ( (\SelBus[2]~input_o\ & ((!\SelBus[0]~input_o\) # (\inst1|inst19|Regist\(6)))) ) ) # ( !\inst1|inst19|Regist\(4) & ( (\inst1|inst19|Regist\(6) & (\SelBus[0]~input_o\ & \SelBus[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000000111100110000000011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst19|ALT_INV_Regist\(6),
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \ALT_INV_SelBus[2]~input_o\,
	dataf => \inst1|inst19|ALT_INV_Regist\(4),
	combout => \inst1|inst19|Mux2~1_combout\);

-- Location: LABCELL_X31_Y1_N6
\inst1|inst19|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst19|Mux2~0_combout\ = ( \inst1|inst19|Regist\(5) & ( \inst1|inst16|result\(5) & ( !\SelBus[1]~input_o\ ) ) ) # ( !\inst1|inst19|Regist\(5) & ( \inst1|inst16|result\(5) ) ) # ( !\inst1|inst19|Regist\(5) & ( !\inst1|inst16|result\(5) & ( 
-- \SelBus[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000011111111111111111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SelBus[1]~input_o\,
	datae => \inst1|inst19|ALT_INV_Regist\(5),
	dataf => \inst1|inst16|ALT_INV_result\(5),
	combout => \inst1|inst19|Mux2~0_combout\);

-- Location: LABCELL_X30_Y1_N24
\inst1|inst19|Mux2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst19|Mux2~2_combout\ = ( \inst1|inst19|Add0~9_sumout\ & ( (((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst19|Mux2~0_combout\)) # (\inst1|inst8|Mux3~0_combout\)) # (\inst1|inst19|Mux2~1_combout\) ) ) # ( !\inst1|inst19|Add0~9_sumout\ & ( 
-- ((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst19|Mux2~0_combout\)) # (\inst1|inst19|Mux2~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101110111010101010111011101011111011111110101111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst19|ALT_INV_Mux2~1_combout\,
	datab => \inst1|inst8|ALT_INV_Regist[4]~0_combout\,
	datac => \inst1|inst8|ALT_INV_Mux3~0_combout\,
	datad => \inst1|inst19|ALT_INV_Mux2~0_combout\,
	dataf => \inst1|inst19|ALT_INV_Add0~9_sumout\,
	combout => \inst1|inst19|Mux2~2_combout\);

-- Location: FF_X30_Y1_N26
\inst1|inst19|Regist[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst19|Mux2~2_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[4]~1_combout\,
	ena => \inst1|inst19|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst19|Regist\(5));

-- Location: LABCELL_X29_Y1_N6
\inst1|inst19|Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst19|Mux3~1_combout\ = ( \inst1|inst19|Regist\(3) & ( \inst1|inst19|Regist\(5) & ( \SelBus[2]~input_o\ ) ) ) # ( !\inst1|inst19|Regist\(3) & ( \inst1|inst19|Regist\(5) & ( (\SelBus[2]~input_o\ & \SelBus[0]~input_o\) ) ) ) # ( 
-- \inst1|inst19|Regist\(3) & ( !\inst1|inst19|Regist\(5) & ( (\SelBus[2]~input_o\ & !\SelBus[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000000000011000000110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SelBus[2]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datae => \inst1|inst19|ALT_INV_Regist\(3),
	dataf => \inst1|inst19|ALT_INV_Regist\(5),
	combout => \inst1|inst19|Mux3~1_combout\);

-- Location: LABCELL_X30_Y1_N21
\inst1|inst19|Mux3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst19|Mux3~2_combout\ = ( \inst1|inst19|Add0~13_sumout\ & ( (((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst19|Mux3~0_combout\)) # (\inst1|inst19|Mux3~1_combout\)) # (\inst1|inst8|Mux3~0_combout\) ) ) # ( !\inst1|inst19|Add0~13_sumout\ & ( 
-- ((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst19|Mux3~0_combout\)) # (\inst1|inst19|Mux3~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111111000000111111111101010111111111110101011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Mux3~0_combout\,
	datab => \inst1|inst8|ALT_INV_Regist[4]~0_combout\,
	datac => \inst1|inst19|ALT_INV_Mux3~0_combout\,
	datad => \inst1|inst19|ALT_INV_Mux3~1_combout\,
	dataf => \inst1|inst19|ALT_INV_Add0~13_sumout\,
	combout => \inst1|inst19|Mux3~2_combout\);

-- Location: FF_X30_Y1_N23
\inst1|inst19|Regist[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst19|Mux3~2_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[4]~1_combout\,
	ena => \inst1|inst19|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst19|Regist\(4));

-- Location: LABCELL_X29_Y1_N39
\inst1|inst19|Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst19|Mux4~1_combout\ = ( \inst1|inst19|Regist\(4) & ( (\SelBus[2]~input_o\ & ((\inst1|inst19|Regist\(2)) # (\SelBus[0]~input_o\))) ) ) # ( !\inst1|inst19|Regist\(4) & ( (!\SelBus[0]~input_o\ & (\SelBus[2]~input_o\ & \inst1|inst19|Regist\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000010011000100110001001100010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[0]~input_o\,
	datab => \ALT_INV_SelBus[2]~input_o\,
	datac => \inst1|inst19|ALT_INV_Regist\(2),
	dataf => \inst1|inst19|ALT_INV_Regist\(4),
	combout => \inst1|inst19|Mux4~1_combout\);

-- Location: LABCELL_X30_Y1_N27
\inst1|inst19|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst19|Mux4~0_combout\ = ( \inst1|inst19|Regist\(3) & ( (!\SelBus[1]~input_o\ & \inst1|inst16|result\(3)) ) ) # ( !\inst1|inst19|Regist\(3) & ( (\inst1|inst16|result\(3)) # (\SelBus[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SelBus[1]~input_o\,
	datad => \inst1|inst16|ALT_INV_result\(3),
	dataf => \inst1|inst19|ALT_INV_Regist\(3),
	combout => \inst1|inst19|Mux4~0_combout\);

-- Location: LABCELL_X30_Y1_N3
\inst1|inst19|Mux4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst19|Mux4~2_combout\ = ( \inst1|inst19|Add0~17_sumout\ & ( (((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst19|Mux4~0_combout\)) # (\inst1|inst19|Mux4~1_combout\)) # (\inst1|inst8|Mux3~0_combout\) ) ) # ( !\inst1|inst19|Add0~17_sumout\ & ( 
-- ((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst19|Mux4~0_combout\)) # (\inst1|inst19|Mux4~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111111000011110011111101011111011111110101111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Mux3~0_combout\,
	datab => \inst1|inst8|ALT_INV_Regist[4]~0_combout\,
	datac => \inst1|inst19|ALT_INV_Mux4~1_combout\,
	datad => \inst1|inst19|ALT_INV_Mux4~0_combout\,
	dataf => \inst1|inst19|ALT_INV_Add0~17_sumout\,
	combout => \inst1|inst19|Mux4~2_combout\);

-- Location: FF_X30_Y1_N5
\inst1|inst19|Regist[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst19|Mux4~2_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[4]~1_combout\,
	ena => \inst1|inst19|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst19|Regist\(3));

-- Location: LABCELL_X29_Y1_N30
\inst1|inst19|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst19|Mux5~1_combout\ = ( \inst1|inst19|Regist\(1) & ( (\SelBus[2]~input_o\ & ((!\SelBus[0]~input_o\) # (\inst1|inst19|Regist\(3)))) ) ) # ( !\inst1|inst19|Regist\(1) & ( (\SelBus[2]~input_o\ & (\SelBus[0]~input_o\ & \inst1|inst19|Regist\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100110000001100110011000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SelBus[2]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst1|inst19|ALT_INV_Regist\(3),
	dataf => \inst1|inst19|ALT_INV_Regist\(1),
	combout => \inst1|inst19|Mux5~1_combout\);

-- Location: LABCELL_X29_Y1_N3
\inst1|inst19|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst19|Mux5~0_combout\ = ( \inst1|inst19|Regist\(2) & ( (!\SelBus[1]~input_o\ & \inst1|inst16|result\(2)) ) ) # ( !\inst1|inst19|Regist\(2) & ( (\inst1|inst16|result\(2)) # (\SelBus[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111010101011111111100000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datad => \inst1|inst16|ALT_INV_result\(2),
	dataf => \inst1|inst19|ALT_INV_Regist\(2),
	combout => \inst1|inst19|Mux5~0_combout\);

-- Location: LABCELL_X30_Y1_N12
\inst1|inst19|Mux5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst19|Mux5~2_combout\ = ( \inst1|inst19|Mux5~0_combout\ & ( (((\inst1|inst8|Mux3~0_combout\ & \inst1|inst19|Add0~21_sumout\)) # (\inst1|inst8|Regist[4]~0_combout\)) # (\inst1|inst19|Mux5~1_combout\) ) ) # ( !\inst1|inst19|Mux5~0_combout\ & ( 
-- ((\inst1|inst8|Mux3~0_combout\ & \inst1|inst19|Add0~21_sumout\)) # (\inst1|inst19|Mux5~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101011111010101010101111101110111011111110111011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst19|ALT_INV_Mux5~1_combout\,
	datab => \inst1|inst8|ALT_INV_Regist[4]~0_combout\,
	datac => \inst1|inst8|ALT_INV_Mux3~0_combout\,
	datad => \inst1|inst19|ALT_INV_Add0~21_sumout\,
	dataf => \inst1|inst19|ALT_INV_Mux5~0_combout\,
	combout => \inst1|inst19|Mux5~2_combout\);

-- Location: FF_X30_Y1_N14
\inst1|inst19|Regist[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst19|Mux5~2_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[4]~1_combout\,
	ena => \inst1|inst19|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst19|Regist\(2));

-- Location: LABCELL_X29_Y1_N15
\inst1|inst16|result[2]~311\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|result[2]~311_combout\ = ( \inst1|inst|altsyncram_component|auto_generated|q_a\(2) & ( (\inst1|inst16|_~7_combout\ & (\muxSel[3]~input_o\ & ((\muxSel[2]~input_o\) # (\inst1|inst19|Regist\(2))))) ) ) # ( 
-- !\inst1|inst|altsyncram_component|auto_generated|q_a\(2) & ( (\inst1|inst16|_~7_combout\ & (\muxSel[3]~input_o\ & (\inst1|inst19|Regist\(2) & !\muxSel[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010001000100000001000000000000000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst16|ALT_INV__~7_combout\,
	datab => \ALT_INV_muxSel[3]~input_o\,
	datac => \inst1|inst19|ALT_INV_Regist\(2),
	datad => \ALT_INV_muxSel[2]~input_o\,
	datae => \inst1|inst|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	combout => \inst1|inst16|result[2]~311_combout\);

-- Location: LABCELL_X33_Y3_N42
\inst1|inst16|_~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|_~3_combout\ = ( !\muxSel[1]~input_o\ & ( \muxSel[0]~input_o\ & ( (!\muxSel[2]~input_o\ & (\muxSel[3]~input_o\ & (!\muxSel[5]~input_o\ & !\muxSel[4]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_muxSel[2]~input_o\,
	datab => \ALT_INV_muxSel[3]~input_o\,
	datac => \ALT_INV_muxSel[5]~input_o\,
	datad => \ALT_INV_muxSel[4]~input_o\,
	datae => \ALT_INV_muxSel[1]~input_o\,
	dataf => \ALT_INV_muxSel[0]~input_o\,
	combout => \inst1|inst16|_~3_combout\);

-- Location: LABCELL_X33_Y3_N39
\inst1|inst16|_~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|_~1_combout\ = ( !\muxSel[1]~input_o\ & ( \muxSel[0]~input_o\ & ( (\muxSel[2]~input_o\ & (!\muxSel[4]~input_o\ & (!\muxSel[3]~input_o\ & !\muxSel[5]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_muxSel[2]~input_o\,
	datab => \ALT_INV_muxSel[4]~input_o\,
	datac => \ALT_INV_muxSel[3]~input_o\,
	datad => \ALT_INV_muxSel[5]~input_o\,
	datae => \ALT_INV_muxSel[1]~input_o\,
	dataf => \ALT_INV_muxSel[0]~input_o\,
	combout => \inst1|inst16|_~1_combout\);

-- Location: LABCELL_X31_Y2_N57
\inst1|inst8|Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst8|Mux6~1_combout\ = ( \inst1|inst8|Regist\(2) & ( (\SelBus[2]~input_o\ & ((\SelBus[0]~input_o\) # (\inst1|inst8|Regist\(0)))) ) ) # ( !\inst1|inst8|Regist\(2) & ( (\inst1|inst8|Regist\(0) & (!\SelBus[0]~input_o\ & \SelBus[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000000000010111110000000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Regist\(0),
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \ALT_INV_SelBus[2]~input_o\,
	dataf => \inst1|inst8|ALT_INV_Regist\(2),
	combout => \inst1|inst8|Mux6~1_combout\);

-- Location: LABCELL_X31_Y2_N30
\inst1|inst8|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst8|Add0~9_sumout\ = SUM(( (!\SelBus[3]~input_o\) # ((\inst1|inst16|result\(0)) # (\SelBus[1]~input_o\)) ) + ( !\inst1|inst8|Regist\(0) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( !VCC ))
-- \inst1|inst8|Add0~10\ = CARRY(( (!\SelBus[3]~input_o\) # ((\inst1|inst16|result\(0)) # (\SelBus[1]~input_o\)) ) + ( !\inst1|inst8|Regist\(0) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111000011110000100000000000000001011101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[3]~input_o\,
	datab => \ALT_INV_SelBus[1]~input_o\,
	datac => \inst1|inst8|ALT_INV_Regist\(0),
	datad => \inst1|inst16|ALT_INV_result\(0),
	cin => GND,
	sumout => \inst1|inst8|Add0~9_sumout\,
	cout => \inst1|inst8|Add0~10\);

-- Location: LABCELL_X31_Y2_N33
\inst1|inst8|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst8|Add0~17_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(1))))) ) + ( !\inst1|inst8|Regist\(1) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) 
-- + ( \inst1|inst8|Add0~10\ ))
-- \inst1|inst8|Add0~18\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(1))))) ) + ( !\inst1|inst8|Regist\(1) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst1|inst8|Add0~10\ ))

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
	datad => \inst1|inst16|ALT_INV_result\(1),
	dataf => \inst1|inst8|ALT_INV_Regist\(1),
	cin => \inst1|inst8|Add0~10\,
	sumout => \inst1|inst8|Add0~17_sumout\,
	cout => \inst1|inst8|Add0~18\);

-- Location: LABCELL_X30_Y2_N57
\inst1|inst8|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst8|Mux6~0_combout\ = ( \inst1|inst16|result\(1) & ( (!\SelBus[1]~input_o\) # (!\inst1|inst8|Regist\(1)) ) ) # ( !\inst1|inst16|result\(1) & ( (\SelBus[1]~input_o\ & !\inst1|inst8|Regist\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000011111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SelBus[1]~input_o\,
	datad => \inst1|inst8|ALT_INV_Regist\(1),
	dataf => \inst1|inst16|ALT_INV_result\(1),
	combout => \inst1|inst8|Mux6~0_combout\);

-- Location: LABCELL_X30_Y2_N54
\inst1|inst8|Mux6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst8|Mux6~2_combout\ = ( \inst1|inst8|Mux6~0_combout\ & ( (((\inst1|inst8|Mux3~0_combout\ & \inst1|inst8|Add0~17_sumout\)) # (\inst1|inst8|Regist[4]~0_combout\)) # (\inst1|inst8|Mux6~1_combout\) ) ) # ( !\inst1|inst8|Mux6~0_combout\ & ( 
-- ((\inst1|inst8|Mux3~0_combout\ & \inst1|inst8|Add0~17_sumout\)) # (\inst1|inst8|Mux6~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011100110111001101110011011100110111111111110011011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Mux3~0_combout\,
	datab => \inst1|inst8|ALT_INV_Mux6~1_combout\,
	datac => \inst1|inst8|ALT_INV_Add0~17_sumout\,
	datad => \inst1|inst8|ALT_INV_Regist[4]~0_combout\,
	dataf => \inst1|inst8|ALT_INV_Mux6~0_combout\,
	combout => \inst1|inst8|Mux6~2_combout\);

-- Location: MLABCELL_X34_Y1_N3
\inst1|inst8|Regist[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst8|Regist[4]~3_combout\ = ( \SelRegD[0]~input_o\ & ( !\SelRegD[2]~input_o\ & ( (\inst1|inst8|Regist[4]~2_combout\ & !\SelRegD[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Regist[4]~2_combout\,
	datad => \ALT_INV_SelRegD[1]~input_o\,
	datae => \ALT_INV_SelRegD[0]~input_o\,
	dataf => \ALT_INV_SelRegD[2]~input_o\,
	combout => \inst1|inst8|Regist[4]~3_combout\);

-- Location: FF_X30_Y2_N56
\inst1|inst8|Regist[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst8|Mux6~2_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[4]~1_combout\,
	ena => \inst1|inst8|Regist[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst8|Regist\(1));

-- Location: LABCELL_X31_Y2_N36
\inst1|inst8|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst8|Add0~21_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(2))))) ) + ( !\inst1|inst8|Regist\(2) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) 
-- + ( \inst1|inst8|Add0~18\ ))
-- \inst1|inst8|Add0~22\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(2))))) ) + ( !\inst1|inst8|Regist\(2) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst1|inst8|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000010100000000000000000011000000111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[0]~input_o\,
	datac => \ALT_INV_SelBus[3]~input_o\,
	datad => \inst1|inst16|ALT_INV_result\(2),
	dataf => \inst1|inst8|ALT_INV_Regist\(2),
	cin => \inst1|inst8|Add0~18\,
	sumout => \inst1|inst8|Add0~21_sumout\,
	cout => \inst1|inst8|Add0~22\);

-- Location: MLABCELL_X34_Y2_N0
\inst1|inst8|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst8|Mux4~0_combout\ = ( \inst1|inst16|result\(3) & ( (!\inst1|inst8|Regist\(3)) # (!\SelBus[1]~input_o\) ) ) # ( !\inst1|inst16|result\(3) & ( (!\inst1|inst8|Regist\(3) & \SelBus[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst8|ALT_INV_Regist\(3),
	datad => \ALT_INV_SelBus[1]~input_o\,
	dataf => \inst1|inst16|ALT_INV_result\(3),
	combout => \inst1|inst8|Mux4~0_combout\);

-- Location: LABCELL_X31_Y2_N39
\inst1|inst8|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst8|Add0~25_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(3))))) ) + ( !\inst1|inst8|Regist\(3) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) 
-- + ( \inst1|inst8|Add0~22\ ))
-- \inst1|inst8|Add0~26\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(3))))) ) + ( !\inst1|inst8|Regist\(3) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst1|inst8|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000010100000000000000000011000000111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[0]~input_o\,
	datac => \ALT_INV_SelBus[3]~input_o\,
	datad => \inst1|inst16|ALT_INV_result\(3),
	dataf => \inst1|inst8|ALT_INV_Regist\(3),
	cin => \inst1|inst8|Add0~22\,
	sumout => \inst1|inst8|Add0~25_sumout\,
	cout => \inst1|inst8|Add0~26\);

-- Location: LABCELL_X31_Y2_N42
\inst1|inst8|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst8|Add0~13_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\)) # (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst1|inst16|result\(4))))) ) + ( !\inst1|inst8|Regist\(4) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst1|inst8|Add0~26\ ))
-- \inst1|inst8|Add0~14\ = CARRY(( (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\)) # (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst1|inst16|result\(4))))) ) + ( !\inst1|inst8|Regist\(4) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst1|inst8|Add0~26\ ))

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
	datad => \inst1|inst16|ALT_INV_result\(4),
	dataf => \inst1|inst8|ALT_INV_Regist\(4),
	cin => \inst1|inst8|Add0~26\,
	sumout => \inst1|inst8|Add0~13_sumout\,
	cout => \inst1|inst8|Add0~14\);

-- Location: LABCELL_X31_Y2_N27
\inst1|inst8|Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst8|Mux2~1_combout\ = ( \inst1|inst8|Regist\(4) & ( (\SelBus[2]~input_o\ & ((!\SelBus[0]~input_o\) # (\inst1|inst8|Regist\(6)))) ) ) # ( !\inst1|inst8|Regist\(4) & ( (\inst1|inst8|Regist\(6) & (\SelBus[0]~input_o\ & \SelBus[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000111101010000000011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Regist\(6),
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \ALT_INV_SelBus[2]~input_o\,
	dataf => \inst1|inst8|ALT_INV_Regist\(4),
	combout => \inst1|inst8|Mux2~1_combout\);

-- Location: LABCELL_X33_Y2_N33
\inst1|inst8|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst8|Mux2~0_combout\ = ( \inst1|inst16|result\(5) & ( \inst1|inst8|Regist\(5) & ( !\SelBus[1]~input_o\ ) ) ) # ( \inst1|inst16|result\(5) & ( !\inst1|inst8|Regist\(5) ) ) # ( !\inst1|inst16|result\(5) & ( !\inst1|inst8|Regist\(5) & ( 
-- \SelBus[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SelBus[1]~input_o\,
	datae => \inst1|inst16|ALT_INV_result\(5),
	dataf => \inst1|inst8|ALT_INV_Regist\(5),
	combout => \inst1|inst8|Mux2~0_combout\);

-- Location: LABCELL_X31_Y2_N45
\inst1|inst8|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst8|Add0~1_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\)) # (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst1|inst16|result\(5))))) ) + ( !\inst1|inst8|Regist\(5) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst1|inst8|Add0~14\ ))
-- \inst1|inst8|Add0~2\ = CARRY(( (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\)) # (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst1|inst16|result\(5))))) ) + ( !\inst1|inst8|Regist\(5) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst1|inst8|Add0~14\ ))

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
	datad => \inst1|inst16|ALT_INV_result\(5),
	dataf => \inst1|inst8|ALT_INV_Regist\(5),
	cin => \inst1|inst8|Add0~14\,
	sumout => \inst1|inst8|Add0~1_sumout\,
	cout => \inst1|inst8|Add0~2\);

-- Location: MLABCELL_X34_Y2_N33
\inst1|inst8|Mux2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst8|Mux2~2_combout\ = ( \inst1|inst8|Add0~1_sumout\ & ( (((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst8|Mux2~0_combout\)) # (\inst1|inst8|Mux2~1_combout\)) # (\inst1|inst8|Mux3~0_combout\) ) ) # ( !\inst1|inst8|Add0~1_sumout\ & ( 
-- ((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst8|Mux2~0_combout\)) # (\inst1|inst8|Mux2~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011111000011110101111100111111011111110011111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Regist[4]~0_combout\,
	datab => \inst1|inst8|ALT_INV_Mux3~0_combout\,
	datac => \inst1|inst8|ALT_INV_Mux2~1_combout\,
	datad => \inst1|inst8|ALT_INV_Mux2~0_combout\,
	dataf => \inst1|inst8|ALT_INV_Add0~1_sumout\,
	combout => \inst1|inst8|Mux2~2_combout\);

-- Location: FF_X34_Y2_N35
\inst1|inst8|Regist[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst8|Mux2~2_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[4]~1_combout\,
	ena => \inst1|inst8|Regist[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst8|Regist\(5));

-- Location: MLABCELL_X34_Y2_N36
\inst1|inst8|Mux3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst8|Mux3~2_combout\ = ( \inst1|inst8|Regist\(3) & ( (\SelBus[2]~input_o\ & ((!\SelBus[0]~input_o\) # (\inst1|inst8|Regist\(5)))) ) ) # ( !\inst1|inst8|Regist\(3) & ( (\SelBus[0]~input_o\ & (\inst1|inst8|Regist\(5) & \SelBus[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000000110011110000000011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SelBus[0]~input_o\,
	datac => \inst1|inst8|ALT_INV_Regist\(5),
	datad => \ALT_INV_SelBus[2]~input_o\,
	dataf => \inst1|inst8|ALT_INV_Regist\(3),
	combout => \inst1|inst8|Mux3~2_combout\);

-- Location: MLABCELL_X34_Y2_N39
\inst1|inst8|Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst8|Mux3~1_combout\ = ( \inst1|inst16|result\(4) & ( (!\inst1|inst8|Regist\(4)) # (!\SelBus[1]~input_o\) ) ) # ( !\inst1|inst16|result\(4) & ( (!\inst1|inst8|Regist\(4) & \SelBus[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101011111111101010101111111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Regist\(4),
	datad => \ALT_INV_SelBus[1]~input_o\,
	dataf => \inst1|inst16|ALT_INV_result\(4),
	combout => \inst1|inst8|Mux3~1_combout\);

-- Location: MLABCELL_X34_Y2_N48
\inst1|inst8|Mux3~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst8|Mux3~3_combout\ = ( \inst1|inst8|Mux3~1_combout\ & ( (((\inst1|inst8|Mux3~0_combout\ & \inst1|inst8|Add0~13_sumout\)) # (\inst1|inst8|Mux3~2_combout\)) # (\inst1|inst8|Regist[4]~0_combout\) ) ) # ( !\inst1|inst8|Mux3~1_combout\ & ( 
-- ((\inst1|inst8|Mux3~0_combout\ & \inst1|inst8|Add0~13_sumout\)) # (\inst1|inst8|Mux3~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111111000001011111111100110111111111110011011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Mux3~0_combout\,
	datab => \inst1|inst8|ALT_INV_Regist[4]~0_combout\,
	datac => \inst1|inst8|ALT_INV_Add0~13_sumout\,
	datad => \inst1|inst8|ALT_INV_Mux3~2_combout\,
	dataf => \inst1|inst8|ALT_INV_Mux3~1_combout\,
	combout => \inst1|inst8|Mux3~3_combout\);

-- Location: FF_X34_Y2_N50
\inst1|inst8|Regist[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst8|Mux3~3_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[4]~1_combout\,
	ena => \inst1|inst8|Regist[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst8|Regist\(4));

-- Location: MLABCELL_X34_Y2_N3
\inst1|inst8|Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst8|Mux4~1_combout\ = ( \inst1|inst8|Regist\(2) & ( (\SelBus[2]~input_o\ & ((!\SelBus[0]~input_o\) # (\inst1|inst8|Regist\(4)))) ) ) # ( !\inst1|inst8|Regist\(2) & ( (\inst1|inst8|Regist\(4) & (\SelBus[0]~input_o\ & \SelBus[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000111101010000000011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Regist\(4),
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \ALT_INV_SelBus[2]~input_o\,
	dataf => \inst1|inst8|ALT_INV_Regist\(2),
	combout => \inst1|inst8|Mux4~1_combout\);

-- Location: MLABCELL_X34_Y2_N51
\inst1|inst8|Mux4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst8|Mux4~2_combout\ = ( \inst1|inst8|Add0~25_sumout\ & ( (((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst8|Mux4~0_combout\)) # (\inst1|inst8|Mux4~1_combout\)) # (\inst1|inst8|Mux3~0_combout\) ) ) # ( !\inst1|inst8|Add0~25_sumout\ & ( 
-- ((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst8|Mux4~0_combout\)) # (\inst1|inst8|Mux4~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111111000000111111111101010111111111110101011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Mux3~0_combout\,
	datab => \inst1|inst8|ALT_INV_Regist[4]~0_combout\,
	datac => \inst1|inst8|ALT_INV_Mux4~0_combout\,
	datad => \inst1|inst8|ALT_INV_Mux4~1_combout\,
	dataf => \inst1|inst8|ALT_INV_Add0~25_sumout\,
	combout => \inst1|inst8|Mux4~2_combout\);

-- Location: FF_X34_Y2_N53
\inst1|inst8|Regist[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst8|Mux4~2_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[4]~1_combout\,
	ena => \inst1|inst8|Regist[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst8|Regist\(3));

-- Location: MLABCELL_X34_Y2_N57
\inst1|inst8|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst8|Mux5~1_combout\ = ( \inst1|inst8|Regist\(3) & ( (\SelBus[2]~input_o\ & ((\SelBus[0]~input_o\) # (\inst1|inst8|Regist\(1)))) ) ) # ( !\inst1|inst8|Regist\(3) & ( (\SelBus[2]~input_o\ & (\inst1|inst8|Regist\(1) & !\SelBus[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000010101000101010001010100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[2]~input_o\,
	datab => \inst1|inst8|ALT_INV_Regist\(1),
	datac => \ALT_INV_SelBus[0]~input_o\,
	dataf => \inst1|inst8|ALT_INV_Regist\(3),
	combout => \inst1|inst8|Mux5~1_combout\);

-- Location: MLABCELL_X34_Y2_N9
\inst1|inst8|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst8|Mux5~0_combout\ = ( \inst1|inst16|result\(2) & ( (!\inst1|inst8|Regist\(2)) # (!\SelBus[1]~input_o\) ) ) # ( !\inst1|inst16|result\(2) & ( (!\inst1|inst8|Regist\(2) & \SelBus[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst8|ALT_INV_Regist\(2),
	datad => \ALT_INV_SelBus[1]~input_o\,
	dataf => \inst1|inst16|ALT_INV_result\(2),
	combout => \inst1|inst8|Mux5~0_combout\);

-- Location: MLABCELL_X34_Y2_N6
\inst1|inst8|Mux5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst8|Mux5~2_combout\ = ( \inst1|inst8|Mux5~0_combout\ & ( (((\inst1|inst8|Mux3~0_combout\ & \inst1|inst8|Add0~21_sumout\)) # (\inst1|inst8|Mux5~1_combout\)) # (\inst1|inst8|Regist[4]~0_combout\) ) ) # ( !\inst1|inst8|Mux5~0_combout\ & ( 
-- ((\inst1|inst8|Mux3~0_combout\ & \inst1|inst8|Add0~21_sumout\)) # (\inst1|inst8|Mux5~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111111111000100011111111100011111111111110001111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Mux3~0_combout\,
	datab => \inst1|inst8|ALT_INV_Add0~21_sumout\,
	datac => \inst1|inst8|ALT_INV_Regist[4]~0_combout\,
	datad => \inst1|inst8|ALT_INV_Mux5~1_combout\,
	dataf => \inst1|inst8|ALT_INV_Mux5~0_combout\,
	combout => \inst1|inst8|Mux5~2_combout\);

-- Location: FF_X34_Y2_N8
\inst1|inst8|Regist[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst8|Mux5~2_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[4]~1_combout\,
	ena => \inst1|inst8|Regist[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst8|Regist\(2));

-- Location: MLABCELL_X28_Y1_N0
\inst1|inst16|_~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|_~2_combout\ = ( !\muxSel[4]~input_o\ & ( \muxSel[0]~input_o\ & ( (!\muxSel[3]~input_o\ & (!\muxSel[5]~input_o\ & (\muxSel[2]~input_o\ & \muxSel[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_muxSel[3]~input_o\,
	datab => \ALT_INV_muxSel[5]~input_o\,
	datac => \ALT_INV_muxSel[2]~input_o\,
	datad => \ALT_INV_muxSel[1]~input_o\,
	datae => \ALT_INV_muxSel[4]~input_o\,
	dataf => \ALT_INV_muxSel[0]~input_o\,
	combout => \inst1|inst16|_~2_combout\);

-- Location: MLABCELL_X34_Y3_N27
\inst1|inst14|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst14|Mux6~0_combout\ = ( \inst1|inst14|Regist\(1) & ( (\inst1|inst16|result\(1) & !\SelBus[1]~input_o\) ) ) # ( !\inst1|inst14|Regist\(1) & ( (\SelBus[1]~input_o\) # (\inst1|inst16|result\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst16|ALT_INV_result\(1),
	datad => \ALT_INV_SelBus[1]~input_o\,
	dataf => \inst1|inst14|ALT_INV_Regist\(1),
	combout => \inst1|inst14|Mux6~0_combout\);

-- Location: MLABCELL_X34_Y3_N42
\inst1|inst14|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst14|Mux1~0_combout\ = ( \SelBus[1]~input_o\ & ( \inst1|inst16|result\(6) & ( !\inst1|inst14|Regist\(6) ) ) ) # ( !\SelBus[1]~input_o\ & ( \inst1|inst16|result\(6) ) ) # ( \SelBus[1]~input_o\ & ( !\inst1|inst16|result\(6) & ( 
-- !\inst1|inst14|Regist\(6) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000011111111111111111111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst1|inst14|ALT_INV_Regist\(6),
	datae => \ALT_INV_SelBus[1]~input_o\,
	dataf => \inst1|inst16|ALT_INV_result\(6),
	combout => \inst1|inst14|Mux1~0_combout\);

-- Location: MLABCELL_X34_Y3_N51
\inst1|inst14|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst14|Mux3~0_combout\ = ( !\SelBus[1]~input_o\ & ( \inst1|inst14|Regist\(4) & ( \inst1|inst16|result\(4) ) ) ) # ( \SelBus[1]~input_o\ & ( !\inst1|inst14|Regist\(4) ) ) # ( !\SelBus[1]~input_o\ & ( !\inst1|inst14|Regist\(4) & ( 
-- \inst1|inst16|result\(4) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111111111111100000000111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst1|inst16|ALT_INV_result\(4),
	datae => \ALT_INV_SelBus[1]~input_o\,
	dataf => \inst1|inst14|ALT_INV_Regist\(4),
	combout => \inst1|inst14|Mux3~0_combout\);

-- Location: LABCELL_X35_Y3_N24
\inst1|inst14|Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst14|Mux3~1_combout\ = ( \SelBus[2]~input_o\ & ( (!\SelBus[0]~input_o\ & (\inst1|inst14|Regist\(3))) # (\SelBus[0]~input_o\ & ((\inst1|inst14|Regist\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst14|ALT_INV_Regist\(3),
	datac => \inst1|inst14|ALT_INV_Regist\(5),
	datad => \ALT_INV_SelBus[0]~input_o\,
	dataf => \ALT_INV_SelBus[2]~input_o\,
	combout => \inst1|inst14|Mux3~1_combout\);

-- Location: LABCELL_X31_Y3_N9
\inst1|inst14|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst14|Add0~17_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(3))))) ) + ( !\inst1|inst14|Regist\(3) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) 
-- ) + ( \inst1|inst14|Add0~22\ ))
-- \inst1|inst14|Add0~18\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(3))))) ) + ( !\inst1|inst14|Regist\(3) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst1|inst14|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000010100000000000000000011000000111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[0]~input_o\,
	datac => \ALT_INV_SelBus[3]~input_o\,
	datad => \inst1|inst16|ALT_INV_result\(3),
	dataf => \inst1|inst14|ALT_INV_Regist\(3),
	cin => \inst1|inst14|Add0~22\,
	sumout => \inst1|inst14|Add0~17_sumout\,
	cout => \inst1|inst14|Add0~18\);

-- Location: LABCELL_X31_Y3_N12
\inst1|inst14|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst14|Add0~13_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(4))))) ) + ( !\inst1|inst14|Regist\(4) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) 
-- ) + ( \inst1|inst14|Add0~18\ ))
-- \inst1|inst14|Add0~14\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(4))))) ) + ( !\inst1|inst14|Regist\(4) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst1|inst14|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000010100000000000000000011000000111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[0]~input_o\,
	datac => \ALT_INV_SelBus[3]~input_o\,
	datad => \inst1|inst16|ALT_INV_result\(4),
	dataf => \inst1|inst14|ALT_INV_Regist\(4),
	cin => \inst1|inst14|Add0~18\,
	sumout => \inst1|inst14|Add0~13_sumout\,
	cout => \inst1|inst14|Add0~14\);

-- Location: MLABCELL_X34_Y3_N36
\inst1|inst14|Mux3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst14|Mux3~2_combout\ = ( \inst1|inst14|Add0~13_sumout\ & ( (((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst14|Mux3~0_combout\)) # (\inst1|inst14|Mux3~1_combout\)) # (\inst1|inst8|Mux3~0_combout\) ) ) # ( !\inst1|inst14|Add0~13_sumout\ & ( 
-- ((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst14|Mux3~0_combout\)) # (\inst1|inst14|Mux3~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111111000000111111111101010111111111110101011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Mux3~0_combout\,
	datab => \inst1|inst8|ALT_INV_Regist[4]~0_combout\,
	datac => \inst1|inst14|ALT_INV_Mux3~0_combout\,
	datad => \inst1|inst14|ALT_INV_Mux3~1_combout\,
	dataf => \inst1|inst14|ALT_INV_Add0~13_sumout\,
	combout => \inst1|inst14|Mux3~2_combout\);

-- Location: LABCELL_X35_Y4_N42
\inst1|inst14|Regist[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst14|Regist[6]~0_combout\ = ( \SelRegD[0]~input_o\ & ( \inst1|inst6|Regist[6]~0_combout\ & ( (!\SelRegD[1]~input_o\ & \SelRegD[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelRegD[1]~input_o\,
	datac => \ALT_INV_SelRegD[2]~input_o\,
	datae => \ALT_INV_SelRegD[0]~input_o\,
	dataf => \inst1|inst6|ALT_INV_Regist[6]~0_combout\,
	combout => \inst1|inst14|Regist[6]~0_combout\);

-- Location: FF_X34_Y3_N38
\inst1|inst14|Regist[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst14|Mux3~2_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[4]~1_combout\,
	ena => \inst1|inst14|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst14|Regist\(4));

-- Location: MLABCELL_X34_Y3_N24
\inst1|inst14|Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst14|Mux2~1_combout\ = ( \inst1|inst14|Regist\(6) & ( (\SelBus[2]~input_o\ & ((\SelBus[0]~input_o\) # (\inst1|inst14|Regist\(4)))) ) ) # ( !\inst1|inst14|Regist\(6) & ( (\inst1|inst14|Regist\(4) & (\SelBus[2]~input_o\ & !\SelBus[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000000000100010000000000010001001100110001000100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst14|ALT_INV_Regist\(4),
	datab => \ALT_INV_SelBus[2]~input_o\,
	datad => \ALT_INV_SelBus[0]~input_o\,
	dataf => \inst1|inst14|ALT_INV_Regist\(6),
	combout => \inst1|inst14|Mux2~1_combout\);

-- Location: MLABCELL_X34_Y3_N57
\inst1|inst14|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst14|Mux2~0_combout\ = ( \inst1|inst14|Regist\(5) & ( (\inst1|inst16|result\(5) & !\SelBus[1]~input_o\) ) ) # ( !\inst1|inst14|Regist\(5) & ( (\SelBus[1]~input_o\) # (\inst1|inst16|result\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst16|ALT_INV_result\(5),
	datad => \ALT_INV_SelBus[1]~input_o\,
	dataf => \inst1|inst14|ALT_INV_Regist\(5),
	combout => \inst1|inst14|Mux2~0_combout\);

-- Location: LABCELL_X31_Y3_N15
\inst1|inst14|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst14|Add0~9_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(5))))) ) + ( !\inst1|inst14|Regist\(5) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) 
-- + ( \inst1|inst14|Add0~14\ ))
-- \inst1|inst14|Add0~10\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(5))))) ) + ( !\inst1|inst14|Regist\(5) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst1|inst14|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000010100000000000000000011000000111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[0]~input_o\,
	datac => \ALT_INV_SelBus[3]~input_o\,
	datad => \inst1|inst16|ALT_INV_result\(5),
	dataf => \inst1|inst14|ALT_INV_Regist\(5),
	cin => \inst1|inst14|Add0~14\,
	sumout => \inst1|inst14|Add0~9_sumout\,
	cout => \inst1|inst14|Add0~10\);

-- Location: MLABCELL_X34_Y3_N54
\inst1|inst14|Mux2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst14|Mux2~2_combout\ = ( \inst1|inst14|Add0~9_sumout\ & ( (((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst14|Mux2~0_combout\)) # (\inst1|inst14|Mux2~1_combout\)) # (\inst1|inst8|Mux3~0_combout\) ) ) # ( !\inst1|inst14|Add0~9_sumout\ & ( 
-- ((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst14|Mux2~0_combout\)) # (\inst1|inst14|Mux2~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111111000011110011111101011111011111110101111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Mux3~0_combout\,
	datab => \inst1|inst8|ALT_INV_Regist[4]~0_combout\,
	datac => \inst1|inst14|ALT_INV_Mux2~1_combout\,
	datad => \inst1|inst14|ALT_INV_Mux2~0_combout\,
	dataf => \inst1|inst14|ALT_INV_Add0~9_sumout\,
	combout => \inst1|inst14|Mux2~2_combout\);

-- Location: FF_X34_Y3_N56
\inst1|inst14|Regist[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst14|Mux2~2_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[4]~1_combout\,
	ena => \inst1|inst14|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst14|Regist\(5));

-- Location: LABCELL_X31_Y3_N18
\inst1|inst14|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst14|Add0~5_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(6))))) ) + ( !\inst1|inst14|Regist\(6) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) 
-- + ( \inst1|inst14|Add0~10\ ))
-- \inst1|inst14|Add0~6\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(6))))) ) + ( !\inst1|inst14|Regist\(6) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst1|inst14|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000010100000000000000000011000000111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[0]~input_o\,
	datac => \ALT_INV_SelBus[3]~input_o\,
	datad => \inst1|inst16|ALT_INV_result\(6),
	dataf => \inst1|inst14|ALT_INV_Regist\(6),
	cin => \inst1|inst14|Add0~10\,
	sumout => \inst1|inst14|Add0~5_sumout\,
	cout => \inst1|inst14|Add0~6\);

-- Location: MLABCELL_X34_Y3_N12
\inst1|inst14|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst14|Mux1~1_combout\ = ( \inst1|inst14|Regist\(7) & ( (\SelBus[2]~input_o\ & ((\SelBus[0]~input_o\) # (\inst1|inst14|Regist\(5)))) ) ) # ( !\inst1|inst14|Regist\(7) & ( (\SelBus[2]~input_o\ & (\inst1|inst14|Regist\(5) & !\SelBus[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000000000011001100110000001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SelBus[2]~input_o\,
	datac => \inst1|inst14|ALT_INV_Regist\(5),
	datad => \ALT_INV_SelBus[0]~input_o\,
	dataf => \inst1|inst14|ALT_INV_Regist\(7),
	combout => \inst1|inst14|Mux1~1_combout\);

-- Location: MLABCELL_X34_Y3_N30
\inst1|inst14|Mux1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst14|Mux1~2_combout\ = ( \inst1|inst14|Add0~5_sumout\ & ( \inst1|inst14|Mux1~1_combout\ ) ) # ( !\inst1|inst14|Add0~5_sumout\ & ( \inst1|inst14|Mux1~1_combout\ ) ) # ( \inst1|inst14|Add0~5_sumout\ & ( !\inst1|inst14|Mux1~1_combout\ & ( 
-- ((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst14|Mux1~0_combout\)) # (\inst1|inst8|Mux3~0_combout\) ) ) ) # ( !\inst1|inst14|Add0~5_sumout\ & ( !\inst1|inst14|Mux1~1_combout\ & ( (\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst14|Mux1~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011010101010111011111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Mux3~0_combout\,
	datab => \inst1|inst8|ALT_INV_Regist[4]~0_combout\,
	datad => \inst1|inst14|ALT_INV_Mux1~0_combout\,
	datae => \inst1|inst14|ALT_INV_Add0~5_sumout\,
	dataf => \inst1|inst14|ALT_INV_Mux1~1_combout\,
	combout => \inst1|inst14|Mux1~2_combout\);

-- Location: FF_X34_Y3_N32
\inst1|inst14|Regist[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst14|Mux1~2_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[4]~1_combout\,
	ena => \inst1|inst14|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst14|Regist\(6));

-- Location: LABCELL_X31_Y3_N21
\inst1|inst14|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst14|Add0~1_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(7))))) ) + ( !\inst1|inst14|Regist\(7) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) 
-- + ( \inst1|inst14|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000010100000000000000000011000000111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[0]~input_o\,
	datac => \ALT_INV_SelBus[3]~input_o\,
	datad => \inst1|inst16|ALT_INV_result\(7),
	dataf => \inst1|inst14|ALT_INV_Regist\(7),
	cin => \inst1|inst14|Add0~6\,
	sumout => \inst1|inst14|Add0~1_sumout\);

-- Location: LABCELL_X31_Y3_N24
\inst1|inst14|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst14|Mux0~0_combout\ = ( \inst1|inst14|Regist\(7) & ( \SelBus[2]~input_o\ & ( (\inst1|inst14|Regist\(6) & !\SelBus[3]~input_o\) ) ) ) # ( !\inst1|inst14|Regist\(7) & ( \SelBus[2]~input_o\ & ( (\SelBus[3]~input_o\) # (\inst1|inst14|Regist\(6)) ) ) 
-- ) # ( \inst1|inst14|Regist\(7) & ( !\SelBus[2]~input_o\ & ( (!\SelBus[3]~input_o\ & \inst1|inst16|result\(7)) ) ) ) # ( !\inst1|inst14|Regist\(7) & ( !\SelBus[2]~input_o\ & ( (\inst1|inst16|result\(7)) # (\SelBus[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111000011000000110001110111011101110100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst14|ALT_INV_Regist\(6),
	datab => \ALT_INV_SelBus[3]~input_o\,
	datac => \inst1|inst16|ALT_INV_result\(7),
	datae => \inst1|inst14|ALT_INV_Regist\(7),
	dataf => \ALT_INV_SelBus[2]~input_o\,
	combout => \inst1|inst14|Mux0~0_combout\);

-- Location: LABCELL_X31_Y3_N54
\inst1|inst14|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst14|Mux0~1_combout\ = ( \inst1|inst14|Add0~1_sumout\ & ( \inst1|inst14|Mux0~0_combout\ & ( ((!\inst1|inst8|Regist[7]~7_combout\) # (\inst1|inst8|Regist[0]~4_combout\)) # (\inst1|inst14|Regist\(0)) ) ) ) # ( !\inst1|inst14|Add0~1_sumout\ & ( 
-- \inst1|inst14|Mux0~0_combout\ & ( (!\inst1|inst8|Regist[0]~4_combout\ & ((!\inst1|inst8|Regist[7]~7_combout\) # (\inst1|inst14|Regist\(0)))) ) ) ) # ( \inst1|inst14|Add0~1_sumout\ & ( !\inst1|inst14|Mux0~0_combout\ & ( ((\inst1|inst14|Regist\(0) & 
-- \inst1|inst8|Regist[7]~7_combout\)) # (\inst1|inst8|Regist[0]~4_combout\) ) ) ) # ( !\inst1|inst14|Add0~1_sumout\ & ( !\inst1|inst14|Mux0~0_combout\ & ( (\inst1|inst14|Regist\(0) & (\inst1|inst8|Regist[7]~7_combout\ & !\inst1|inst8|Regist[0]~4_combout\)) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000111111111111110011000000001111001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst14|ALT_INV_Regist\(0),
	datac => \inst1|inst8|ALT_INV_Regist[7]~7_combout\,
	datad => \inst1|inst8|ALT_INV_Regist[0]~4_combout\,
	datae => \inst1|inst14|ALT_INV_Add0~1_sumout\,
	dataf => \inst1|inst14|ALT_INV_Mux0~0_combout\,
	combout => \inst1|inst14|Mux0~1_combout\);

-- Location: FF_X31_Y3_N56
\inst1|inst14|Regist[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst14|Mux0~1_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[7]~8_combout\,
	ena => \inst1|inst14|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst14|Regist\(7));

-- Location: LABCELL_X31_Y3_N0
\inst1|inst14|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst14|Add0~29_sumout\ = SUM(( !\inst1|inst14|Regist\(0) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( ((!\SelBus[3]~input_o\) # (\inst1|inst16|result\(0))) # (\SelBus[1]~input_o\) ) + ( !VCC ))
-- \inst1|inst14|Add0~30\ = CARRY(( !\inst1|inst14|Regist\(0) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( ((!\SelBus[3]~input_o\) # (\inst1|inst16|result\(0))) # (\SelBus[1]~input_o\) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000010000000000000000000000001000111101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[3]~input_o\,
	datac => \inst1|inst16|ALT_INV_result\(0),
	datad => \inst1|inst14|ALT_INV_Regist\(0),
	cin => GND,
	sumout => \inst1|inst14|Add0~29_sumout\,
	cout => \inst1|inst14|Add0~30\);

-- Location: MLABCELL_X34_Y3_N18
\inst1|inst14|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst14|Mux7~0_combout\ = ( \inst1|inst16|result\(0) & ( (!\SelBus[3]~input_o\ & (((!\SelBus[2]~input_o\) # (\inst1|inst14|Regist\(1))))) # (\SelBus[3]~input_o\ & (!\inst1|inst14|Regist\(0))) ) ) # ( !\inst1|inst16|result\(0) & ( 
-- (!\SelBus[3]~input_o\ & (((\SelBus[2]~input_o\ & \inst1|inst14|Regist\(1))))) # (\SelBus[3]~input_o\ & (!\inst1|inst14|Regist\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001110101010000000111010101011001111101010101100111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst14|ALT_INV_Regist\(0),
	datab => \ALT_INV_SelBus[2]~input_o\,
	datac => \inst1|inst14|ALT_INV_Regist\(1),
	datad => \ALT_INV_SelBus[3]~input_o\,
	dataf => \inst1|inst16|ALT_INV_result\(0),
	combout => \inst1|inst14|Mux7~0_combout\);

-- Location: LABCELL_X33_Y3_N54
\inst1|inst14|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst14|Mux7~1_combout\ = ( \inst1|inst14|Add0~29_sumout\ & ( \inst1|inst14|Mux7~0_combout\ & ( ((!\inst1|inst8|Regist[0]~5_combout\) # (\inst1|inst8|Regist[0]~4_combout\)) # (\inst1|inst14|Regist\(7)) ) ) ) # ( !\inst1|inst14|Add0~29_sumout\ & ( 
-- \inst1|inst14|Mux7~0_combout\ & ( (!\inst1|inst8|Regist[0]~4_combout\ & ((!\inst1|inst8|Regist[0]~5_combout\) # (\inst1|inst14|Regist\(7)))) ) ) ) # ( \inst1|inst14|Add0~29_sumout\ & ( !\inst1|inst14|Mux7~0_combout\ & ( ((\inst1|inst14|Regist\(7) & 
-- \inst1|inst8|Regist[0]~5_combout\)) # (\inst1|inst8|Regist[0]~4_combout\) ) ) ) # ( !\inst1|inst14|Add0~29_sumout\ & ( !\inst1|inst14|Mux7~0_combout\ & ( (\inst1|inst14|Regist\(7) & (!\inst1|inst8|Regist[0]~4_combout\ & \inst1|inst8|Regist[0]~5_combout\)) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100001101110011011111000100110001001111011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst14|ALT_INV_Regist\(7),
	datab => \inst1|inst8|ALT_INV_Regist[0]~4_combout\,
	datac => \inst1|inst8|ALT_INV_Regist[0]~5_combout\,
	datae => \inst1|inst14|ALT_INV_Add0~29_sumout\,
	dataf => \inst1|inst14|ALT_INV_Mux7~0_combout\,
	combout => \inst1|inst14|Mux7~1_combout\);

-- Location: FF_X33_Y3_N56
\inst1|inst14|Regist[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst14|Mux7~1_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[0]~6_combout\,
	ena => \inst1|inst14|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst14|Regist\(0));

-- Location: MLABCELL_X34_Y3_N21
\inst1|inst14|Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst14|Mux6~1_combout\ = (\SelBus[2]~input_o\ & ((!\SelBus[0]~input_o\ & (\inst1|inst14|Regist\(0))) # (\SelBus[0]~input_o\ & ((\inst1|inst14|Regist\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010011000100000001001100010000000100110001000000010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst14|ALT_INV_Regist\(0),
	datab => \ALT_INV_SelBus[2]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst1|inst14|ALT_INV_Regist\(2),
	combout => \inst1|inst14|Mux6~1_combout\);

-- Location: LABCELL_X31_Y3_N3
\inst1|inst14|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst14|Add0~25_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(1))))) ) + ( !\inst1|inst14|Regist\(1) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) 
-- ) + ( \inst1|inst14|Add0~30\ ))
-- \inst1|inst14|Add0~26\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(1))))) ) + ( !\inst1|inst14|Regist\(1) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst1|inst14|Add0~30\ ))

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
	datad => \inst1|inst16|ALT_INV_result\(1),
	dataf => \inst1|inst14|ALT_INV_Regist\(1),
	cin => \inst1|inst14|Add0~30\,
	sumout => \inst1|inst14|Add0~25_sumout\,
	cout => \inst1|inst14|Add0~26\);

-- Location: MLABCELL_X34_Y3_N3
\inst1|inst14|Mux6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst14|Mux6~2_combout\ = ( \inst1|inst14|Mux6~1_combout\ & ( \inst1|inst14|Add0~25_sumout\ ) ) # ( !\inst1|inst14|Mux6~1_combout\ & ( \inst1|inst14|Add0~25_sumout\ & ( ((\inst1|inst14|Mux6~0_combout\ & \inst1|inst8|Regist[4]~0_combout\)) # 
-- (\inst1|inst8|Mux3~0_combout\) ) ) ) # ( \inst1|inst14|Mux6~1_combout\ & ( !\inst1|inst14|Add0~25_sumout\ ) ) # ( !\inst1|inst14|Mux6~1_combout\ & ( !\inst1|inst14|Add0~25_sumout\ & ( (\inst1|inst14|Mux6~0_combout\ & \inst1|inst8|Regist[4]~0_combout\) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001111111111111111100010001111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst14|ALT_INV_Mux6~0_combout\,
	datab => \inst1|inst8|ALT_INV_Regist[4]~0_combout\,
	datad => \inst1|inst8|ALT_INV_Mux3~0_combout\,
	datae => \inst1|inst14|ALT_INV_Mux6~1_combout\,
	dataf => \inst1|inst14|ALT_INV_Add0~25_sumout\,
	combout => \inst1|inst14|Mux6~2_combout\);

-- Location: FF_X34_Y3_N5
\inst1|inst14|Regist[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst14|Mux6~2_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[4]~1_combout\,
	ena => \inst1|inst14|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst14|Regist\(1));

-- Location: LABCELL_X31_Y3_N6
\inst1|inst14|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst14|Add0~21_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(2))))) ) + ( !\inst1|inst14|Regist\(2) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) 
-- ) + ( \inst1|inst14|Add0~26\ ))
-- \inst1|inst14|Add0~22\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(2))))) ) + ( !\inst1|inst14|Regist\(2) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst1|inst14|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000010100000000000000000011000000111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[0]~input_o\,
	datac => \ALT_INV_SelBus[3]~input_o\,
	datad => \inst1|inst16|ALT_INV_result\(2),
	dataf => \inst1|inst14|ALT_INV_Regist\(2),
	cin => \inst1|inst14|Add0~26\,
	sumout => \inst1|inst14|Add0~21_sumout\,
	cout => \inst1|inst14|Add0~22\);

-- Location: LABCELL_X35_Y3_N54
\inst1|inst14|Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst14|Mux4~1_combout\ = ( \SelBus[0]~input_o\ & ( (\SelBus[2]~input_o\ & \inst1|inst14|Regist\(4)) ) ) # ( !\SelBus[0]~input_o\ & ( (\SelBus[2]~input_o\ & \inst1|inst14|Regist\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000100010001000100000101000001010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[2]~input_o\,
	datab => \inst1|inst14|ALT_INV_Regist\(4),
	datac => \inst1|inst14|ALT_INV_Regist\(2),
	datae => \ALT_INV_SelBus[0]~input_o\,
	combout => \inst1|inst14|Mux4~1_combout\);

-- Location: LABCELL_X33_Y4_N51
\inst1|inst14|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst14|Mux4~0_combout\ = ( !\SelBus[1]~input_o\ & ( \inst1|inst14|Regist\(3) & ( \inst1|inst16|result\(3) ) ) ) # ( \SelBus[1]~input_o\ & ( !\inst1|inst14|Regist\(3) ) ) # ( !\SelBus[1]~input_o\ & ( !\inst1|inst14|Regist\(3) & ( 
-- \inst1|inst16|result\(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111111111111111100001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst16|ALT_INV_result\(3),
	datae => \ALT_INV_SelBus[1]~input_o\,
	dataf => \inst1|inst14|ALT_INV_Regist\(3),
	combout => \inst1|inst14|Mux4~0_combout\);

-- Location: LABCELL_X33_Y4_N24
\inst1|inst14|Mux4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst14|Mux4~2_combout\ = ( \inst1|inst14|Mux4~0_combout\ & ( (((\inst1|inst8|Mux3~0_combout\ & \inst1|inst14|Add0~17_sumout\)) # (\inst1|inst14|Mux4~1_combout\)) # (\inst1|inst8|Regist[4]~0_combout\) ) ) # ( !\inst1|inst14|Mux4~0_combout\ & ( 
-- ((\inst1|inst8|Mux3~0_combout\ & \inst1|inst14|Add0~17_sumout\)) # (\inst1|inst14|Mux4~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111111000001011111111100110111111111110011011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Mux3~0_combout\,
	datab => \inst1|inst8|ALT_INV_Regist[4]~0_combout\,
	datac => \inst1|inst14|ALT_INV_Add0~17_sumout\,
	datad => \inst1|inst14|ALT_INV_Mux4~1_combout\,
	dataf => \inst1|inst14|ALT_INV_Mux4~0_combout\,
	combout => \inst1|inst14|Mux4~2_combout\);

-- Location: FF_X33_Y4_N26
\inst1|inst14|Regist[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst14|Mux4~2_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[4]~1_combout\,
	ena => \inst1|inst14|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst14|Regist\(3));

-- Location: LABCELL_X35_Y3_N27
\inst1|inst14|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst14|Mux5~1_combout\ = ( \inst1|inst14|Regist\(1) & ( (\SelBus[2]~input_o\ & ((!\SelBus[0]~input_o\) # (\inst1|inst14|Regist\(3)))) ) ) # ( !\inst1|inst14|Regist\(1) & ( (\SelBus[2]~input_o\ & (\inst1|inst14|Regist\(3) & \SelBus[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000101010101000100010101010100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[2]~input_o\,
	datab => \inst1|inst14|ALT_INV_Regist\(3),
	datad => \ALT_INV_SelBus[0]~input_o\,
	dataf => \inst1|inst14|ALT_INV_Regist\(1),
	combout => \inst1|inst14|Mux5~1_combout\);

-- Location: LABCELL_X31_Y3_N45
\inst1|inst14|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst14|Mux5~0_combout\ = (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(2)))) # (\SelBus[1]~input_o\ & (!\inst1|inst14|Regist\(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000011111010010100001111101001010000111110100101000011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datac => \inst1|inst14|ALT_INV_Regist\(2),
	datad => \inst1|inst16|ALT_INV_result\(2),
	combout => \inst1|inst14|Mux5~0_combout\);

-- Location: LABCELL_X35_Y3_N0
\inst1|inst14|Mux5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst14|Mux5~2_combout\ = ( \inst1|inst14|Mux5~0_combout\ & ( \inst1|inst14|Add0~21_sumout\ & ( ((\inst1|inst8|Mux3~0_combout\) # (\inst1|inst14|Mux5~1_combout\)) # (\inst1|inst8|Regist[4]~0_combout\) ) ) ) # ( !\inst1|inst14|Mux5~0_combout\ & ( 
-- \inst1|inst14|Add0~21_sumout\ & ( (\inst1|inst8|Mux3~0_combout\) # (\inst1|inst14|Mux5~1_combout\) ) ) ) # ( \inst1|inst14|Mux5~0_combout\ & ( !\inst1|inst14|Add0~21_sumout\ & ( (\inst1|inst14|Mux5~1_combout\) # (\inst1|inst8|Regist[4]~0_combout\) ) ) ) # 
-- ( !\inst1|inst14|Mux5~0_combout\ & ( !\inst1|inst14|Add0~21_sumout\ & ( \inst1|inst14|Mux5~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001111110011111100001111111111110011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst8|ALT_INV_Regist[4]~0_combout\,
	datac => \inst1|inst14|ALT_INV_Mux5~1_combout\,
	datad => \inst1|inst8|ALT_INV_Mux3~0_combout\,
	datae => \inst1|inst14|ALT_INV_Mux5~0_combout\,
	dataf => \inst1|inst14|ALT_INV_Add0~21_sumout\,
	combout => \inst1|inst14|Mux5~2_combout\);

-- Location: FF_X35_Y3_N2
\inst1|inst14|Regist[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst14|Mux5~2_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[4]~1_combout\,
	ena => \inst1|inst14|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst14|Regist\(2));

-- Location: LABCELL_X35_Y3_N51
\inst1|inst16|result[2]~309\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|result[2]~309_combout\ = ( \inst1|inst14|Regist\(2) & ( \inst1|inst1|Regist\(2) & ( (!\inst1|inst16|_~1_combout\ & (!\inst1|inst16|_~2_combout\ & ((!\inst1|inst16|_~3_combout\) # (!\inst1|inst8|Regist\(2))))) ) ) ) # ( 
-- !\inst1|inst14|Regist\(2) & ( \inst1|inst1|Regist\(2) & ( (!\inst1|inst16|_~2_combout\ & ((!\inst1|inst16|_~3_combout\) # (!\inst1|inst8|Regist\(2)))) ) ) ) # ( \inst1|inst14|Regist\(2) & ( !\inst1|inst1|Regist\(2) & ( (!\inst1|inst16|_~1_combout\ & 
-- ((!\inst1|inst16|_~3_combout\) # (!\inst1|inst8|Regist\(2)))) ) ) ) # ( !\inst1|inst14|Regist\(2) & ( !\inst1|inst1|Regist\(2) & ( (!\inst1|inst16|_~3_combout\) # (!\inst1|inst8|Regist\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010110010001100100011111010000000001100100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst16|ALT_INV__~3_combout\,
	datab => \inst1|inst16|ALT_INV__~1_combout\,
	datac => \inst1|inst8|ALT_INV_Regist\(2),
	datad => \inst1|inst16|ALT_INV__~2_combout\,
	datae => \inst1|inst14|ALT_INV_Regist\(2),
	dataf => \inst1|inst1|ALT_INV_Regist\(2),
	combout => \inst1|inst16|result[2]~309_combout\);

-- Location: LABCELL_X31_Y3_N36
\inst1|inst16|result[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|result\(2) = ( \inst1|inst16|result[2]~311_combout\ & ( \inst1|inst16|result[2]~309_combout\ ) ) # ( !\inst1|inst16|result[2]~311_combout\ & ( \inst1|inst16|result[2]~309_combout\ & ( (!\inst1|inst16|result[2]~310_combout\) # 
-- ((!\inst1|inst16|result[2]~317_combout\) # ((\inst1|inst16|_~0_combout\ & \inst1|inst20|Regist\(2)))) ) ) ) # ( \inst1|inst16|result[2]~311_combout\ & ( !\inst1|inst16|result[2]~309_combout\ ) ) # ( !\inst1|inst16|result[2]~311_combout\ & ( 
-- !\inst1|inst16|result[2]~309_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111101010111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst16|ALT_INV_result[2]~310_combout\,
	datab => \inst1|inst16|ALT_INV__~0_combout\,
	datac => \inst1|inst20|ALT_INV_Regist\(2),
	datad => \inst1|inst16|ALT_INV_result[2]~317_combout\,
	datae => \inst1|inst16|ALT_INV_result[2]~311_combout\,
	dataf => \inst1|inst16|ALT_INV_result[2]~309_combout\,
	combout => \inst1|inst16|result\(2));

-- Location: MLABCELL_X25_Y4_N3
\inst1|inst18|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst18|Mux5~0_combout\ = ( \inst1|inst18|Regist\(2) & ( (!\SelBus[1]~input_o\ & \inst1|inst16|result\(2)) ) ) # ( !\inst1|inst18|Regist\(2) & ( (\inst1|inst16|result\(2)) # (\SelBus[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111100001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datac => \inst1|inst16|ALT_INV_result\(2),
	dataf => \inst1|inst18|ALT_INV_Regist\(2),
	combout => \inst1|inst18|Mux5~0_combout\);

-- Location: LABCELL_X27_Y4_N30
\inst1|inst18|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst18|Add0~29_sumout\ = SUM(( !\inst1|inst18|Regist\(0) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( (!\SelBus[3]~input_o\) # ((\inst1|inst16|result\(0)) # (\SelBus[1]~input_o\)) ) + ( !VCC ))
-- \inst1|inst18|Add0~30\ = CARRY(( !\inst1|inst18|Regist\(0) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( (!\SelBus[3]~input_o\) # ((\inst1|inst16|result\(0)) # (\SelBus[1]~input_o\)) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000100000000000000000000000001000111101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[3]~input_o\,
	datab => \ALT_INV_SelBus[1]~input_o\,
	datac => \inst1|inst16|ALT_INV_result\(0),
	datad => \inst1|inst18|ALT_INV_Regist\(0),
	cin => GND,
	sumout => \inst1|inst18|Add0~29_sumout\,
	cout => \inst1|inst18|Add0~30\);

-- Location: LABCELL_X27_Y4_N33
\inst1|inst18|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst18|Add0~25_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(1))))) ) + ( !\inst1|inst18|Regist\(1) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) 
-- ) + ( \inst1|inst18|Add0~30\ ))
-- \inst1|inst18|Add0~26\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(1))))) ) + ( !\inst1|inst18|Regist\(1) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst1|inst18|Add0~30\ ))

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
	datad => \inst1|inst16|ALT_INV_result\(1),
	dataf => \inst1|inst18|ALT_INV_Regist\(1),
	cin => \inst1|inst18|Add0~30\,
	sumout => \inst1|inst18|Add0~25_sumout\,
	cout => \inst1|inst18|Add0~26\);

-- Location: LABCELL_X27_Y4_N36
\inst1|inst18|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst18|Add0~21_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\)) # (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst1|inst16|result\(2))))) ) + ( !\inst1|inst18|Regist\(2) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + 
-- ( \inst1|inst18|Add0~26\ ))
-- \inst1|inst18|Add0~22\ = CARRY(( (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\)) # (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst1|inst16|result\(2))))) ) + ( !\inst1|inst18|Regist\(2) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst1|inst18|Add0~26\ ))

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
	datad => \inst1|inst16|ALT_INV_result\(2),
	dataf => \inst1|inst18|ALT_INV_Regist\(2),
	cin => \inst1|inst18|Add0~26\,
	sumout => \inst1|inst18|Add0~21_sumout\,
	cout => \inst1|inst18|Add0~22\);

-- Location: MLABCELL_X25_Y4_N15
\inst1|inst18|Mux5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst18|Mux5~2_combout\ = ( \inst1|inst18|Add0~21_sumout\ & ( (((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst18|Mux5~0_combout\)) # (\inst1|inst18|Mux5~1_combout\)) # (\inst1|inst8|Mux3~0_combout\) ) ) # ( !\inst1|inst18|Add0~21_sumout\ & ( 
-- ((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst18|Mux5~0_combout\)) # (\inst1|inst18|Mux5~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111111000011110011111101011111011111110101111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Mux3~0_combout\,
	datab => \inst1|inst8|ALT_INV_Regist[4]~0_combout\,
	datac => \inst1|inst18|ALT_INV_Mux5~1_combout\,
	datad => \inst1|inst18|ALT_INV_Mux5~0_combout\,
	dataf => \inst1|inst18|ALT_INV_Add0~21_sumout\,
	combout => \inst1|inst18|Mux5~2_combout\);

-- Location: MLABCELL_X28_Y5_N54
\inst1|inst18|Regist[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst18|Regist[6]~0_combout\ = ( \SelRegD[1]~input_o\ & ( !\SelRegD[2]~input_o\ & ( (\inst1|inst8|Regist[4]~2_combout\ & !\SelRegD[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst8|ALT_INV_Regist[4]~2_combout\,
	datad => \ALT_INV_SelRegD[0]~input_o\,
	datae => \ALT_INV_SelRegD[1]~input_o\,
	dataf => \ALT_INV_SelRegD[2]~input_o\,
	combout => \inst1|inst18|Regist[6]~0_combout\);

-- Location: FF_X25_Y4_N17
\inst1|inst18|Regist[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst18|Mux5~2_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[4]~1_combout\,
	ena => \inst1|inst18|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst18|Regist\(2));

-- Location: LABCELL_X27_Y4_N27
\inst1|inst18|Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst18|Mux6~1_combout\ = ( \inst1|inst18|Regist\(2) & ( (\SelBus[2]~input_o\ & ((\SelBus[0]~input_o\) # (\inst1|inst18|Regist\(0)))) ) ) # ( !\inst1|inst18|Regist\(2) & ( (\inst1|inst18|Regist\(0) & (!\SelBus[0]~input_o\ & \SelBus[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000000000001111110000000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst18|ALT_INV_Regist\(0),
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \ALT_INV_SelBus[2]~input_o\,
	dataf => \inst1|inst18|ALT_INV_Regist\(2),
	combout => \inst1|inst18|Mux6~1_combout\);

-- Location: MLABCELL_X25_Y4_N45
\inst1|inst18|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst18|Mux6~0_combout\ = ( \inst1|inst18|Regist\(1) & ( (\inst1|inst16|result\(1) & !\SelBus[1]~input_o\) ) ) # ( !\inst1|inst18|Regist\(1) & ( (\SelBus[1]~input_o\) # (\inst1|inst16|result\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst16|ALT_INV_result\(1),
	datad => \ALT_INV_SelBus[1]~input_o\,
	dataf => \inst1|inst18|ALT_INV_Regist\(1),
	combout => \inst1|inst18|Mux6~0_combout\);

-- Location: MLABCELL_X25_Y4_N48
\inst1|inst18|Mux6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst18|Mux6~2_combout\ = ( \inst1|inst18|Add0~25_sumout\ & ( (((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst18|Mux6~0_combout\)) # (\inst1|inst18|Mux6~1_combout\)) # (\inst1|inst8|Mux3~0_combout\) ) ) # ( !\inst1|inst18|Add0~25_sumout\ & ( 
-- ((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst18|Mux6~0_combout\)) # (\inst1|inst18|Mux6~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111111000011110011111101011111011111110101111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Mux3~0_combout\,
	datab => \inst1|inst8|ALT_INV_Regist[4]~0_combout\,
	datac => \inst1|inst18|ALT_INV_Mux6~1_combout\,
	datad => \inst1|inst18|ALT_INV_Mux6~0_combout\,
	dataf => \inst1|inst18|ALT_INV_Add0~25_sumout\,
	combout => \inst1|inst18|Mux6~2_combout\);

-- Location: FF_X25_Y4_N50
\inst1|inst18|Regist[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst18|Mux6~2_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[4]~1_combout\,
	ena => \inst1|inst18|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst18|Regist\(1));

-- Location: LABCELL_X27_Y4_N15
\inst1|inst18|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst18|Mux7~0_combout\ = ( \inst1|inst18|Regist\(1) & ( (!\SelBus[3]~input_o\ & (((\SelBus[2]~input_o\)) # (\inst1|inst16|result\(0)))) # (\SelBus[3]~input_o\ & (((!\inst1|inst18|Regist\(0))))) ) ) # ( !\inst1|inst18|Regist\(1) & ( 
-- (!\SelBus[3]~input_o\ & (\inst1|inst16|result\(0) & (!\SelBus[2]~input_o\))) # (\SelBus[3]~input_o\ & (((!\inst1|inst18|Regist\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010011110000010001001111000001110111111100000111011111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst16|ALT_INV_result\(0),
	datab => \ALT_INV_SelBus[2]~input_o\,
	datac => \inst1|inst18|ALT_INV_Regist\(0),
	datad => \ALT_INV_SelBus[3]~input_o\,
	dataf => \inst1|inst18|ALT_INV_Regist\(1),
	combout => \inst1|inst18|Mux7~0_combout\);

-- Location: LABCELL_X27_Y5_N30
\inst1|inst18|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst18|Mux7~1_combout\ = ( \inst1|inst18|Mux7~0_combout\ & ( \inst1|inst18|Add0~29_sumout\ & ( ((!\inst1|inst8|Regist[0]~5_combout\) # (\inst1|inst18|Regist\(7))) # (\inst1|inst8|Regist[0]~4_combout\) ) ) ) # ( !\inst1|inst18|Mux7~0_combout\ & ( 
-- \inst1|inst18|Add0~29_sumout\ & ( ((\inst1|inst18|Regist\(7) & \inst1|inst8|Regist[0]~5_combout\)) # (\inst1|inst8|Regist[0]~4_combout\) ) ) ) # ( \inst1|inst18|Mux7~0_combout\ & ( !\inst1|inst18|Add0~29_sumout\ & ( (!\inst1|inst8|Regist[0]~4_combout\ & 
-- ((!\inst1|inst8|Regist[0]~5_combout\) # (\inst1|inst18|Regist\(7)))) ) ) ) # ( !\inst1|inst18|Mux7~0_combout\ & ( !\inst1|inst18|Add0~29_sumout\ & ( (!\inst1|inst8|Regist[0]~4_combout\ & (\inst1|inst18|Regist\(7) & \inst1|inst8|Regist[0]~5_combout\)) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010101010100000101001010101010111111111111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Regist[0]~4_combout\,
	datac => \inst1|inst18|ALT_INV_Regist\(7),
	datad => \inst1|inst8|ALT_INV_Regist[0]~5_combout\,
	datae => \inst1|inst18|ALT_INV_Mux7~0_combout\,
	dataf => \inst1|inst18|ALT_INV_Add0~29_sumout\,
	combout => \inst1|inst18|Mux7~1_combout\);

-- Location: FF_X27_Y5_N32
\inst1|inst18|Regist[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst18|Mux7~1_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[0]~6_combout\,
	ena => \inst1|inst18|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst18|Regist\(0));

-- Location: LABCELL_X27_Y4_N39
\inst1|inst18|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst18|Add0~17_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\)) # (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst1|inst16|result\(3))))) ) + ( !\inst1|inst18|Regist\(3) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + 
-- ( \inst1|inst18|Add0~22\ ))
-- \inst1|inst18|Add0~18\ = CARRY(( (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\)) # (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst1|inst16|result\(3))))) ) + ( !\inst1|inst18|Regist\(3) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst1|inst18|Add0~22\ ))

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
	datad => \inst1|inst16|ALT_INV_result\(3),
	dataf => \inst1|inst18|ALT_INV_Regist\(3),
	cin => \inst1|inst18|Add0~22\,
	sumout => \inst1|inst18|Add0~17_sumout\,
	cout => \inst1|inst18|Add0~18\);

-- Location: LABCELL_X27_Y4_N42
\inst1|inst18|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst18|Add0~13_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\)) # (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst1|inst16|result\(4))))) ) + ( !\inst1|inst18|Regist\(4) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + 
-- ( \inst1|inst18|Add0~18\ ))
-- \inst1|inst18|Add0~14\ = CARRY(( (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\)) # (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst1|inst16|result\(4))))) ) + ( !\inst1|inst18|Regist\(4) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst1|inst18|Add0~18\ ))

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
	datad => \inst1|inst16|ALT_INV_result\(4),
	dataf => \inst1|inst18|ALT_INV_Regist\(4),
	cin => \inst1|inst18|Add0~18\,
	sumout => \inst1|inst18|Add0~13_sumout\,
	cout => \inst1|inst18|Add0~14\);

-- Location: LABCELL_X27_Y4_N45
\inst1|inst18|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst18|Add0~9_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\)) # (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst1|inst16|result\(5))))) ) + ( !\inst1|inst18|Regist\(5) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst1|inst18|Add0~14\ ))
-- \inst1|inst18|Add0~10\ = CARRY(( (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\)) # (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst1|inst16|result\(5))))) ) + ( !\inst1|inst18|Regist\(5) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst1|inst18|Add0~14\ ))

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
	datad => \inst1|inst16|ALT_INV_result\(5),
	dataf => \inst1|inst18|ALT_INV_Regist\(5),
	cin => \inst1|inst18|Add0~14\,
	sumout => \inst1|inst18|Add0~9_sumout\,
	cout => \inst1|inst18|Add0~10\);

-- Location: LABCELL_X27_Y4_N48
\inst1|inst18|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst18|Add0~5_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(6))))) ) + ( !\inst1|inst18|Regist\(6) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) 
-- + ( \inst1|inst18|Add0~10\ ))
-- \inst1|inst18|Add0~6\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(6))))) ) + ( !\inst1|inst18|Regist\(6) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst1|inst18|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000010100000000000000000011000000111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[0]~input_o\,
	datac => \ALT_INV_SelBus[3]~input_o\,
	datad => \inst1|inst16|ALT_INV_result\(6),
	dataf => \inst1|inst18|ALT_INV_Regist\(6),
	cin => \inst1|inst18|Add0~10\,
	sumout => \inst1|inst18|Add0~5_sumout\,
	cout => \inst1|inst18|Add0~6\);

-- Location: LABCELL_X27_Y4_N51
\inst1|inst18|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst18|Add0~1_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(7))))) ) + ( !\inst1|inst18|Regist\(7) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) 
-- + ( \inst1|inst18|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000010100000000000000000011000000111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[0]~input_o\,
	datac => \ALT_INV_SelBus[3]~input_o\,
	datad => \inst1|inst16|ALT_INV_result\(7),
	dataf => \inst1|inst18|ALT_INV_Regist\(7),
	cin => \inst1|inst18|Add0~6\,
	sumout => \inst1|inst18|Add0~1_sumout\);

-- Location: LABCELL_X27_Y4_N18
\inst1|inst18|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst18|Mux0~0_combout\ = ( \inst1|inst18|Regist\(7) & ( (!\SelBus[3]~input_o\ & ((!\SelBus[2]~input_o\ & (\inst1|inst16|result\(7))) # (\SelBus[2]~input_o\ & ((\inst1|inst18|Regist\(6)))))) ) ) # ( !\inst1|inst18|Regist\(7) & ( 
-- ((!\SelBus[2]~input_o\ & (\inst1|inst16|result\(7))) # (\SelBus[2]~input_o\ & ((\inst1|inst18|Regist\(6))))) # (\SelBus[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111101111111010011110111111101000000011100000100000001110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst16|ALT_INV_result\(7),
	datab => \ALT_INV_SelBus[2]~input_o\,
	datac => \ALT_INV_SelBus[3]~input_o\,
	datad => \inst1|inst18|ALT_INV_Regist\(6),
	dataf => \inst1|inst18|ALT_INV_Regist\(7),
	combout => \inst1|inst18|Mux0~0_combout\);

-- Location: LABCELL_X27_Y4_N24
\inst1|inst18|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst18|Mux0~1_combout\ = ( \inst1|inst18|Mux0~0_combout\ & ( (!\inst1|inst8|Regist[0]~4_combout\ & (((!\inst1|inst8|Regist[7]~7_combout\)) # (\inst1|inst18|Regist\(0)))) # (\inst1|inst8|Regist[0]~4_combout\ & (((\inst1|inst18|Add0~1_sumout\)))) ) ) 
-- # ( !\inst1|inst18|Mux0~0_combout\ & ( (!\inst1|inst8|Regist[0]~4_combout\ & (\inst1|inst18|Regist\(0) & ((\inst1|inst8|Regist[7]~7_combout\)))) # (\inst1|inst8|Regist[0]~4_combout\ & (((\inst1|inst18|Add0~1_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111000001010010011110101111001001111010111100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Regist[0]~4_combout\,
	datab => \inst1|inst18|ALT_INV_Regist\(0),
	datac => \inst1|inst18|ALT_INV_Add0~1_sumout\,
	datad => \inst1|inst8|ALT_INV_Regist[7]~7_combout\,
	dataf => \inst1|inst18|ALT_INV_Mux0~0_combout\,
	combout => \inst1|inst18|Mux0~1_combout\);

-- Location: FF_X27_Y4_N26
\inst1|inst18|Regist[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst18|Mux0~1_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[7]~8_combout\,
	ena => \inst1|inst18|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst18|Regist\(7));

-- Location: MLABCELL_X28_Y4_N42
\inst1|inst16|result[7]~265\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|result[7]~265_combout\ = ( \inst1|inst16|result\(7) & ( \inst1|inst18|Regist\(7) & ( (!\inst1|inst16|_~5_combout\ & (!\inst1|inst16|_~6_combout\ & ((!\inst1|inst16|_~4_combout\) # (!\inst1|inst7|Regist\(7))))) ) ) ) # ( 
-- !\inst1|inst16|result\(7) & ( \inst1|inst18|Regist\(7) & ( (!\inst1|inst16|_~5_combout\ & ((!\inst1|inst16|_~4_combout\) # (!\inst1|inst7|Regist\(7)))) ) ) ) # ( \inst1|inst16|result\(7) & ( !\inst1|inst18|Regist\(7) & ( (!\inst1|inst16|_~6_combout\ & 
-- ((!\inst1|inst16|_~4_combout\) # (!\inst1|inst7|Regist\(7)))) ) ) ) # ( !\inst1|inst16|result\(7) & ( !\inst1|inst18|Regist\(7) & ( (!\inst1|inst16|_~4_combout\) # (!\inst1|inst7|Regist\(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110101010111100001010000011001100100010001100000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst16|ALT_INV__~4_combout\,
	datab => \inst1|inst16|ALT_INV__~5_combout\,
	datac => \inst1|inst16|ALT_INV__~6_combout\,
	datad => \inst1|inst7|ALT_INV_Regist\(7),
	datae => \inst1|inst16|ALT_INV_result\(7),
	dataf => \inst1|inst18|ALT_INV_Regist\(7),
	combout => \inst1|inst16|result[7]~265_combout\);

-- Location: LABCELL_X30_Y2_N39
\inst1|inst16|result[7]~264\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|result[7]~264_combout\ = ( \inst1|inst8|Regist\(7) & ( \inst1|inst14|Regist\(7) & ( (!\inst1|inst16|_~3_combout\ & (!\inst1|inst16|_~1_combout\ & ((!\inst1|inst16|_~2_combout\) # (!\inst1|inst1|Regist\(7))))) ) ) ) # ( 
-- !\inst1|inst8|Regist\(7) & ( \inst1|inst14|Regist\(7) & ( (!\inst1|inst16|_~1_combout\ & ((!\inst1|inst16|_~2_combout\) # (!\inst1|inst1|Regist\(7)))) ) ) ) # ( \inst1|inst8|Regist\(7) & ( !\inst1|inst14|Regist\(7) & ( (!\inst1|inst16|_~3_combout\ & 
-- ((!\inst1|inst16|_~2_combout\) # (!\inst1|inst1|Regist\(7)))) ) ) ) # ( !\inst1|inst8|Regist\(7) & ( !\inst1|inst14|Regist\(7) & ( (!\inst1|inst16|_~2_combout\) # (!\inst1|inst1|Regist\(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010110010001100100011111010000000001100100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst16|ALT_INV__~2_combout\,
	datab => \inst1|inst16|ALT_INV__~3_combout\,
	datac => \inst1|inst1|ALT_INV_Regist\(7),
	datad => \inst1|inst16|ALT_INV__~1_combout\,
	datae => \inst1|inst8|ALT_INV_Regist\(7),
	dataf => \inst1|inst14|ALT_INV_Regist\(7),
	combout => \inst1|inst16|result[7]~264_combout\);

-- Location: IOIBUF_X50_Y0_N92
\Fuente7~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Fuente7,
	o => \Fuente7~input_o\);

-- Location: LABCELL_X35_Y3_N42
\inst1|inst16|result[7]~270\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|result[7]~270_combout\ = ( \muxSel[2]~input_o\ & ( (!\muxSel[3]~input_o\ & (\Fuente7~input_o\ & ((\inst1|inst16|_~17_combout\) # (\inst1|inst16|_~18_combout\)))) ) ) # ( !\muxSel[2]~input_o\ & ( (\Fuente7~input_o\ & 
-- ((\inst1|inst16|_~17_combout\) # (\inst1|inst16|_~18_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110011000000110011001100000010001000100000001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_muxSel[3]~input_o\,
	datab => \ALT_INV_Fuente7~input_o\,
	datac => \inst1|inst16|ALT_INV__~18_combout\,
	datad => \inst1|inst16|ALT_INV__~17_combout\,
	dataf => \ALT_INV_muxSel[2]~input_o\,
	combout => \inst1|inst16|result[7]~270_combout\);

-- Location: LABCELL_X36_Y4_N48
\inst1|inst16|result[7]~271\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|result[7]~271_combout\ = ( \inst1|inst16|_~19_combout\ & ( \inst1|inst16|_~22_combout\ & ( \Fuente7~input_o\ ) ) ) # ( !\inst1|inst16|_~19_combout\ & ( \inst1|inst16|_~22_combout\ & ( \Fuente7~input_o\ ) ) ) # ( \inst1|inst16|_~19_combout\ & 
-- ( !\inst1|inst16|_~22_combout\ & ( \Fuente7~input_o\ ) ) ) # ( !\inst1|inst16|_~19_combout\ & ( !\inst1|inst16|_~22_combout\ & ( (\Fuente7~input_o\ & (((\inst1|inst16|_~21_combout\) # (\inst1|inst16|_~20_combout\)) # (\inst1|inst16|_~23_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst16|ALT_INV__~23_combout\,
	datab => \ALT_INV_Fuente7~input_o\,
	datac => \inst1|inst16|ALT_INV__~20_combout\,
	datad => \inst1|inst16|ALT_INV__~21_combout\,
	datae => \inst1|inst16|ALT_INV__~19_combout\,
	dataf => \inst1|inst16|ALT_INV__~22_combout\,
	combout => \inst1|inst16|result[7]~271_combout\);

-- Location: IOIBUF_X66_Y0_N75
\Destino7~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Destino7,
	o => \Destino7~input_o\);

-- Location: MLABCELL_X28_Y2_N6
\inst1|inst16|result[7]~268\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|result[7]~268_combout\ = ( \Destino7~input_o\ & ( \inst1|inst5|Regist\(7) & ( (!\inst1|inst16|_~13_combout\ & (!\inst1|inst16|_~11_combout\ & ((!\inst1|inst10|Regist\(7)) # (!\inst1|inst16|_~12_combout\)))) ) ) ) # ( !\Destino7~input_o\ & ( 
-- \inst1|inst5|Regist\(7) & ( (!\inst1|inst16|_~11_combout\ & ((!\inst1|inst10|Regist\(7)) # (!\inst1|inst16|_~12_combout\))) ) ) ) # ( \Destino7~input_o\ & ( !\inst1|inst5|Regist\(7) & ( (!\inst1|inst16|_~13_combout\ & ((!\inst1|inst10|Regist\(7)) # 
-- (!\inst1|inst16|_~12_combout\))) ) ) ) # ( !\Destino7~input_o\ & ( !\inst1|inst5|Regist\(7) & ( (!\inst1|inst10|Regist\(7)) # (!\inst1|inst16|_~12_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000101010101010000011001100110000001000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst16|ALT_INV__~13_combout\,
	datab => \inst1|inst16|ALT_INV__~11_combout\,
	datac => \inst1|inst10|ALT_INV_Regist\(7),
	datad => \inst1|inst16|ALT_INV__~12_combout\,
	datae => \ALT_INV_Destino7~input_o\,
	dataf => \inst1|inst5|ALT_INV_Regist\(7),
	combout => \inst1|inst16|result[7]~268_combout\);

-- Location: LABCELL_X30_Y3_N30
\inst1|inst16|result[7]~267\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|result[7]~267_combout\ = ( \inst1|inst6|Regist\(7) & ( \inst1|inst17|Regist\(7) & ( (!\inst1|inst16|_~8_combout\ & (!\inst1|inst16|_~10_combout\ & ((!\inst1|inst9|Regist\(7)) # (!\inst1|inst16|_~9_combout\)))) ) ) ) # ( 
-- !\inst1|inst6|Regist\(7) & ( \inst1|inst17|Regist\(7) & ( (!\inst1|inst16|_~10_combout\ & ((!\inst1|inst9|Regist\(7)) # (!\inst1|inst16|_~9_combout\))) ) ) ) # ( \inst1|inst6|Regist\(7) & ( !\inst1|inst17|Regist\(7) & ( (!\inst1|inst16|_~8_combout\ & 
-- ((!\inst1|inst9|Regist\(7)) # (!\inst1|inst16|_~9_combout\))) ) ) ) # ( !\inst1|inst6|Regist\(7) & ( !\inst1|inst17|Regist\(7) & ( (!\inst1|inst9|Regist\(7)) # (!\inst1|inst16|_~9_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000101010101010000011001100110000001000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst16|ALT_INV__~8_combout\,
	datab => \inst1|inst16|ALT_INV__~10_combout\,
	datac => \inst1|inst9|ALT_INV_Regist\(7),
	datad => \inst1|inst16|ALT_INV__~9_combout\,
	datae => \inst1|inst6|ALT_INV_Regist\(7),
	dataf => \inst1|inst17|ALT_INV_Regist\(7),
	combout => \inst1|inst16|result[7]~267_combout\);

-- Location: LABCELL_X29_Y6_N54
\inst1|inst16|result[7]~269\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|result[7]~269_combout\ = ( \inst1|inst11|Regist\(7) & ( \inst1|inst2|Regist\(7) & ( (!\inst1|inst16|_~14_combout\ & (!\inst1|inst16|_~15_combout\ & ((!\inst1|inst16|_~16_combout\) # (!\Fuente7~input_o\)))) ) ) ) # ( !\inst1|inst11|Regist\(7) 
-- & ( \inst1|inst2|Regist\(7) & ( (!\inst1|inst16|_~15_combout\ & ((!\inst1|inst16|_~16_combout\) # (!\Fuente7~input_o\))) ) ) ) # ( \inst1|inst11|Regist\(7) & ( !\inst1|inst2|Regist\(7) & ( (!\inst1|inst16|_~14_combout\ & ((!\inst1|inst16|_~16_combout\) # 
-- (!\Fuente7~input_o\))) ) ) ) # ( !\inst1|inst11|Regist\(7) & ( !\inst1|inst2|Regist\(7) & ( (!\inst1|inst16|_~16_combout\) # (!\Fuente7~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011111100101010001010100011111100000000001010100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst16|ALT_INV__~14_combout\,
	datab => \inst1|inst16|ALT_INV__~16_combout\,
	datac => \ALT_INV_Fuente7~input_o\,
	datad => \inst1|inst16|ALT_INV__~15_combout\,
	datae => \inst1|inst11|ALT_INV_Regist\(7),
	dataf => \inst1|inst2|ALT_INV_Regist\(7),
	combout => \inst1|inst16|result[7]~269_combout\);

-- Location: LABCELL_X29_Y2_N36
\inst1|inst16|result[7]~272\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|result[7]~272_combout\ = ( \inst1|inst16|result[7]~267_combout\ & ( \inst1|inst16|result[7]~269_combout\ & ( (!\inst1|inst16|result[7]~270_combout\ & (!\inst1|inst16|result[7]~271_combout\ & \inst1|inst16|result[7]~268_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst16|ALT_INV_result[7]~270_combout\,
	datab => \inst1|inst16|ALT_INV_result[7]~271_combout\,
	datac => \inst1|inst16|ALT_INV_result[7]~268_combout\,
	datae => \inst1|inst16|ALT_INV_result[7]~267_combout\,
	dataf => \inst1|inst16|ALT_INV_result[7]~269_combout\,
	combout => \inst1|inst16|result[7]~272_combout\);

-- Location: LABCELL_X29_Y1_N24
\inst1|inst16|result[7]~266\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|result[7]~266_combout\ = ( \inst1|inst19|Regist\(7) & ( \inst1|inst|altsyncram_component|auto_generated|q_a\(7) & ( (\muxSel[3]~input_o\ & \inst1|inst16|_~7_combout\) ) ) ) # ( !\inst1|inst19|Regist\(7) & ( 
-- \inst1|inst|altsyncram_component|auto_generated|q_a\(7) & ( (\muxSel[2]~input_o\ & (\muxSel[3]~input_o\ & \inst1|inst16|_~7_combout\)) ) ) ) # ( \inst1|inst19|Regist\(7) & ( !\inst1|inst|altsyncram_component|auto_generated|q_a\(7) & ( 
-- (!\muxSel[2]~input_o\ & (\muxSel[3]~input_o\ & \inst1|inst16|_~7_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000001000000001000000010000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_muxSel[2]~input_o\,
	datab => \ALT_INV_muxSel[3]~input_o\,
	datac => \inst1|inst16|ALT_INV__~7_combout\,
	datae => \inst1|inst19|ALT_INV_Regist\(7),
	dataf => \inst1|inst|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	combout => \inst1|inst16|result[7]~266_combout\);

-- Location: LABCELL_X29_Y2_N54
\inst1|inst16|result[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|result\(7) = ( \inst1|inst16|result[7]~272_combout\ & ( \inst1|inst16|result[7]~266_combout\ ) ) # ( !\inst1|inst16|result[7]~272_combout\ & ( \inst1|inst16|result[7]~266_combout\ ) ) # ( \inst1|inst16|result[7]~272_combout\ & ( 
-- !\inst1|inst16|result[7]~266_combout\ & ( (!\inst1|inst16|result[7]~265_combout\) # ((!\inst1|inst16|result[7]~264_combout\) # ((\inst1|inst16|_~0_combout\ & \inst1|inst20|Regist\(7)))) ) ) ) # ( !\inst1|inst16|result[7]~272_combout\ & ( 
-- !\inst1|inst16|result[7]~266_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111001111110111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst16|ALT_INV__~0_combout\,
	datab => \inst1|inst16|ALT_INV_result[7]~265_combout\,
	datac => \inst1|inst16|ALT_INV_result[7]~264_combout\,
	datad => \inst1|inst20|ALT_INV_Regist\(7),
	datae => \inst1|inst16|ALT_INV_result[7]~272_combout\,
	dataf => \inst1|inst16|ALT_INV_result[7]~266_combout\,
	combout => \inst1|inst16|result\(7));

-- Location: MLABCELL_X34_Y2_N27
\inst1|inst4|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst4|Mux1~0_combout\ = ( \inst1|inst4|Regist\(6) & ( (\inst1|inst16|result\(6) & !\SelBus[1]~input_o\) ) ) # ( !\inst1|inst4|Regist\(6) & ( (\SelBus[1]~input_o\) # (\inst1|inst16|result\(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst16|ALT_INV_result\(6),
	datad => \ALT_INV_SelBus[1]~input_o\,
	dataf => \inst1|inst4|ALT_INV_Regist\(6),
	combout => \inst1|inst4|Mux1~0_combout\);

-- Location: LABCELL_X36_Y2_N51
\inst1|inst4|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst4|Mux2~0_combout\ = ( \inst1|inst16|result\(5) & ( (!\inst1|inst4|Regist\(5)) # (!\SelBus[1]~input_o\) ) ) # ( !\inst1|inst16|result\(5) & ( (!\inst1|inst4|Regist\(5) & \SelBus[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst4|ALT_INV_Regist\(5),
	datad => \ALT_INV_SelBus[1]~input_o\,
	dataf => \inst1|inst16|ALT_INV_result\(5),
	combout => \inst1|inst4|Mux2~0_combout\);

-- Location: LABCELL_X36_Y2_N57
\inst1|inst4|Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst4|Mux2~1_combout\ = ( \SelBus[0]~input_o\ & ( (\inst1|inst4|Regist\(6) & \SelBus[2]~input_o\) ) ) # ( !\SelBus[0]~input_o\ & ( (\inst1|inst4|Regist\(4) & \SelBus[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst4|ALT_INV_Regist\(4),
	datac => \inst1|inst4|ALT_INV_Regist\(6),
	datad => \ALT_INV_SelBus[2]~input_o\,
	dataf => \ALT_INV_SelBus[0]~input_o\,
	combout => \inst1|inst4|Mux2~1_combout\);

-- Location: LABCELL_X35_Y2_N24
\inst1|inst4|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst4|Mux6~0_combout\ = (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(1)))) # (\SelBus[1]~input_o\ & (!\inst1|inst4|Regist\(1)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011111100000011001111110000001100111111000000110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst4|ALT_INV_Regist\(1),
	datac => \ALT_INV_SelBus[1]~input_o\,
	datad => \inst1|inst16|ALT_INV_result\(1),
	combout => \inst1|inst4|Mux6~0_combout\);

-- Location: LABCELL_X35_Y2_N51
\inst1|inst4|Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst4|Mux6~1_combout\ = ( \inst1|inst4|Regist\(2) & ( (\SelBus[2]~input_o\ & ((\SelBus[0]~input_o\) # (\inst1|inst4|Regist\(0)))) ) ) # ( !\inst1|inst4|Regist\(2) & ( (\inst1|inst4|Regist\(0) & (\SelBus[2]~input_o\ & !\SelBus[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000010011000100110001001100010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst4|ALT_INV_Regist\(0),
	datab => \ALT_INV_SelBus[2]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	dataf => \inst1|inst4|ALT_INV_Regist\(2),
	combout => \inst1|inst4|Mux6~1_combout\);

-- Location: LABCELL_X35_Y2_N0
\inst1|inst4|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst4|Add0~29_sumout\ = SUM(( (!\SelBus[3]~input_o\) # ((\inst1|inst16|result\(0)) # (\SelBus[1]~input_o\)) ) + ( !\inst1|inst4|Regist\(0) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( !VCC ))
-- \inst1|inst4|Add0~30\ = CARRY(( (!\SelBus[3]~input_o\) # ((\inst1|inst16|result\(0)) # (\SelBus[1]~input_o\)) ) + ( !\inst1|inst4|Regist\(0) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111000011110000100000000000000001011101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[3]~input_o\,
	datab => \ALT_INV_SelBus[1]~input_o\,
	datac => \inst1|inst4|ALT_INV_Regist\(0),
	datad => \inst1|inst16|ALT_INV_result\(0),
	cin => GND,
	sumout => \inst1|inst4|Add0~29_sumout\,
	cout => \inst1|inst4|Add0~30\);

-- Location: LABCELL_X35_Y2_N3
\inst1|inst4|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst4|Add0~25_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(1))))) ) + ( !\inst1|inst4|Regist\(1) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) 
-- + ( \inst1|inst4|Add0~30\ ))
-- \inst1|inst4|Add0~26\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(1))))) ) + ( !\inst1|inst4|Regist\(1) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst1|inst4|Add0~30\ ))

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
	datad => \inst1|inst16|ALT_INV_result\(1),
	dataf => \inst1|inst4|ALT_INV_Regist\(1),
	cin => \inst1|inst4|Add0~30\,
	sumout => \inst1|inst4|Add0~25_sumout\,
	cout => \inst1|inst4|Add0~26\);

-- Location: LABCELL_X36_Y2_N48
\inst1|inst4|Mux6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst4|Mux6~2_combout\ = ( \inst1|inst4|Add0~25_sumout\ & ( (((\inst1|inst4|Mux6~0_combout\ & \inst1|inst8|Regist[4]~0_combout\)) # (\inst1|inst4|Mux6~1_combout\)) # (\inst1|inst8|Mux3~0_combout\) ) ) # ( !\inst1|inst4|Add0~25_sumout\ & ( 
-- ((\inst1|inst4|Mux6~0_combout\ & \inst1|inst8|Regist[4]~0_combout\)) # (\inst1|inst4|Mux6~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111111000011110011111101011111011111110101111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Mux3~0_combout\,
	datab => \inst1|inst4|ALT_INV_Mux6~0_combout\,
	datac => \inst1|inst4|ALT_INV_Mux6~1_combout\,
	datad => \inst1|inst8|ALT_INV_Regist[4]~0_combout\,
	dataf => \inst1|inst4|ALT_INV_Add0~25_sumout\,
	combout => \inst1|inst4|Mux6~2_combout\);

-- Location: LABCELL_X31_Y1_N18
\inst1|inst4|Regist[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst4|Regist[1]~0_combout\ = (\SelRegD[1]~input_o\ & (!\SelRegD[0]~input_o\ & (\SelRegD[2]~input_o\ & \inst1|inst8|Regist[4]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelRegD[1]~input_o\,
	datab => \ALT_INV_SelRegD[0]~input_o\,
	datac => \ALT_INV_SelRegD[2]~input_o\,
	datad => \inst1|inst8|ALT_INV_Regist[4]~2_combout\,
	combout => \inst1|inst4|Regist[1]~0_combout\);

-- Location: FF_X36_Y2_N50
\inst1|inst4|Regist[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst4|Mux6~2_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[4]~1_combout\,
	ena => \inst1|inst4|Regist[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst4|Regist\(1));

-- Location: LABCELL_X35_Y2_N6
\inst1|inst4|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst4|Add0~21_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(2))))) ) + ( !\inst1|inst4|Regist\(2) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) 
-- + ( \inst1|inst4|Add0~26\ ))
-- \inst1|inst4|Add0~22\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(2))))) ) + ( !\inst1|inst4|Regist\(2) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst1|inst4|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000010100000000000000000011000000111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[0]~input_o\,
	datac => \ALT_INV_SelBus[3]~input_o\,
	datad => \inst1|inst16|ALT_INV_result\(2),
	dataf => \inst1|inst4|ALT_INV_Regist\(2),
	cin => \inst1|inst4|Add0~26\,
	sumout => \inst1|inst4|Add0~21_sumout\,
	cout => \inst1|inst4|Add0~22\);

-- Location: LABCELL_X35_Y2_N9
\inst1|inst4|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst4|Add0~17_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(3))))) ) + ( !\inst1|inst4|Regist\(3) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) 
-- + ( \inst1|inst4|Add0~22\ ))
-- \inst1|inst4|Add0~18\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(3))))) ) + ( !\inst1|inst4|Regist\(3) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst1|inst4|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000010100000000000000000011000000111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[0]~input_o\,
	datac => \ALT_INV_SelBus[3]~input_o\,
	datad => \inst1|inst16|ALT_INV_result\(3),
	dataf => \inst1|inst4|ALT_INV_Regist\(3),
	cin => \inst1|inst4|Add0~22\,
	sumout => \inst1|inst4|Add0~17_sumout\,
	cout => \inst1|inst4|Add0~18\);

-- Location: LABCELL_X35_Y2_N12
\inst1|inst4|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst4|Add0~13_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(4))))) ) + ( !\inst1|inst4|Regist\(4) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) 
-- + ( \inst1|inst4|Add0~18\ ))
-- \inst1|inst4|Add0~14\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(4))))) ) + ( !\inst1|inst4|Regist\(4) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst1|inst4|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000010100000000000000000011000000111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[0]~input_o\,
	datac => \ALT_INV_SelBus[3]~input_o\,
	datad => \inst1|inst16|ALT_INV_result\(4),
	dataf => \inst1|inst4|ALT_INV_Regist\(4),
	cin => \inst1|inst4|Add0~18\,
	sumout => \inst1|inst4|Add0~13_sumout\,
	cout => \inst1|inst4|Add0~14\);

-- Location: LABCELL_X35_Y2_N15
\inst1|inst4|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst4|Add0~9_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(5))))) ) + ( !\inst1|inst4|Regist\(5) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + 
-- ( \inst1|inst4|Add0~14\ ))
-- \inst1|inst4|Add0~10\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(5))))) ) + ( !\inst1|inst4|Regist\(5) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst1|inst4|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000010100000000000000000011000000111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[0]~input_o\,
	datac => \ALT_INV_SelBus[3]~input_o\,
	datad => \inst1|inst16|ALT_INV_result\(5),
	dataf => \inst1|inst4|ALT_INV_Regist\(5),
	cin => \inst1|inst4|Add0~14\,
	sumout => \inst1|inst4|Add0~9_sumout\,
	cout => \inst1|inst4|Add0~10\);

-- Location: LABCELL_X36_Y2_N30
\inst1|inst4|Mux2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst4|Mux2~2_combout\ = ( \inst1|inst4|Add0~9_sumout\ & ( (((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst4|Mux2~0_combout\)) # (\inst1|inst4|Mux2~1_combout\)) # (\inst1|inst8|Mux3~0_combout\) ) ) # ( !\inst1|inst4|Add0~9_sumout\ & ( 
-- ((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst4|Mux2~0_combout\)) # (\inst1|inst4|Mux2~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111111000001011111111100110111111111110011011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Regist[4]~0_combout\,
	datab => \inst1|inst8|ALT_INV_Mux3~0_combout\,
	datac => \inst1|inst4|ALT_INV_Mux2~0_combout\,
	datad => \inst1|inst4|ALT_INV_Mux2~1_combout\,
	dataf => \inst1|inst4|ALT_INV_Add0~9_sumout\,
	combout => \inst1|inst4|Mux2~2_combout\);

-- Location: FF_X36_Y2_N32
\inst1|inst4|Regist[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst4|Mux2~2_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[4]~1_combout\,
	ena => \inst1|inst4|Regist[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst4|Regist\(5));

-- Location: MLABCELL_X39_Y2_N42
\inst1|inst4|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst4|Mux1~1_combout\ = ( \inst1|inst4|Regist\(5) & ( \inst1|inst4|Regist\(7) & ( \SelBus[2]~input_o\ ) ) ) # ( !\inst1|inst4|Regist\(5) & ( \inst1|inst4|Regist\(7) & ( (\SelBus[0]~input_o\ & \SelBus[2]~input_o\) ) ) ) # ( \inst1|inst4|Regist\(5) & 
-- ( !\inst1|inst4|Regist\(7) & ( (!\SelBus[0]~input_o\ & \SelBus[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101000000101000001010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[0]~input_o\,
	datac => \ALT_INV_SelBus[2]~input_o\,
	datae => \inst1|inst4|ALT_INV_Regist\(5),
	dataf => \inst1|inst4|ALT_INV_Regist\(7),
	combout => \inst1|inst4|Mux1~1_combout\);

-- Location: LABCELL_X35_Y2_N18
\inst1|inst4|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst4|Add0~5_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(6))))) ) + ( !\inst1|inst4|Regist\(6) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + 
-- ( \inst1|inst4|Add0~10\ ))
-- \inst1|inst4|Add0~6\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(6))))) ) + ( !\inst1|inst4|Regist\(6) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst1|inst4|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000010100000000000000000011000000111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[0]~input_o\,
	datac => \ALT_INV_SelBus[3]~input_o\,
	datad => \inst1|inst16|ALT_INV_result\(6),
	dataf => \inst1|inst4|ALT_INV_Regist\(6),
	cin => \inst1|inst4|Add0~10\,
	sumout => \inst1|inst4|Add0~5_sumout\,
	cout => \inst1|inst4|Add0~6\);

-- Location: MLABCELL_X34_Y2_N12
\inst1|inst4|Mux1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst4|Mux1~2_combout\ = ( \inst1|inst4|Add0~5_sumout\ & ( (((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst4|Mux1~0_combout\)) # (\inst1|inst4|Mux1~1_combout\)) # (\inst1|inst8|Mux3~0_combout\) ) ) # ( !\inst1|inst4|Add0~5_sumout\ & ( 
-- ((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst4|Mux1~0_combout\)) # (\inst1|inst4|Mux1~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111111000001011111111100110111111111110011011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Regist[4]~0_combout\,
	datab => \inst1|inst8|ALT_INV_Mux3~0_combout\,
	datac => \inst1|inst4|ALT_INV_Mux1~0_combout\,
	datad => \inst1|inst4|ALT_INV_Mux1~1_combout\,
	dataf => \inst1|inst4|ALT_INV_Add0~5_sumout\,
	combout => \inst1|inst4|Mux1~2_combout\);

-- Location: FF_X34_Y2_N14
\inst1|inst4|Regist[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst4|Mux1~2_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[4]~1_combout\,
	ena => \inst1|inst4|Regist[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst4|Regist\(6));

-- Location: LABCELL_X35_Y2_N21
\inst1|inst4|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst4|Add0~1_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(7))))) ) + ( !\inst1|inst4|Regist\(7) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + 
-- ( \inst1|inst4|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000010100000000000000000011000000111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[0]~input_o\,
	datac => \ALT_INV_SelBus[3]~input_o\,
	datad => \inst1|inst16|ALT_INV_result\(7),
	dataf => \inst1|inst4|ALT_INV_Regist\(7),
	cin => \inst1|inst4|Add0~6\,
	sumout => \inst1|inst4|Add0~1_sumout\);

-- Location: LABCELL_X35_Y2_N42
\inst1|inst4|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst4|Mux0~0_combout\ = ( \inst1|inst16|result\(7) & ( (!\SelBus[3]~input_o\ & (((!\SelBus[2]~input_o\)) # (\inst1|inst4|Regist\(6)))) # (\SelBus[3]~input_o\ & (((!\inst1|inst4|Regist\(7))))) ) ) # ( !\inst1|inst16|result\(7) & ( 
-- (!\SelBus[3]~input_o\ & (\inst1|inst4|Regist\(6) & (\SelBus[2]~input_o\))) # (\SelBus[3]~input_o\ & (((!\inst1|inst4|Regist\(7))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111110000000100011111000011011101111100001101110111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst4|ALT_INV_Regist\(6),
	datab => \ALT_INV_SelBus[2]~input_o\,
	datac => \inst1|inst4|ALT_INV_Regist\(7),
	datad => \ALT_INV_SelBus[3]~input_o\,
	dataf => \inst1|inst16|ALT_INV_result\(7),
	combout => \inst1|inst4|Mux0~0_combout\);

-- Location: LABCELL_X35_Y2_N36
\inst1|inst4|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst4|Mux0~1_combout\ = ( \inst1|inst4|Mux0~0_combout\ & ( (!\inst1|inst8|Regist[0]~4_combout\ & (((!\inst1|inst8|Regist[7]~7_combout\)) # (\inst1|inst4|Regist\(0)))) # (\inst1|inst8|Regist[0]~4_combout\ & (((\inst1|inst4|Add0~1_sumout\)))) ) ) # ( 
-- !\inst1|inst4|Mux0~0_combout\ & ( (!\inst1|inst8|Regist[0]~4_combout\ & (\inst1|inst4|Regist\(0) & (\inst1|inst8|Regist[7]~7_combout\))) # (\inst1|inst8|Regist[0]~4_combout\ & (((\inst1|inst4|Add0~1_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011111000100000001111111010000110111111101000011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst4|ALT_INV_Regist\(0),
	datab => \inst1|inst8|ALT_INV_Regist[7]~7_combout\,
	datac => \inst1|inst8|ALT_INV_Regist[0]~4_combout\,
	datad => \inst1|inst4|ALT_INV_Add0~1_sumout\,
	dataf => \inst1|inst4|ALT_INV_Mux0~0_combout\,
	combout => \inst1|inst4|Mux0~1_combout\);

-- Location: FF_X35_Y2_N38
\inst1|inst4|Regist[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst4|Mux0~1_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[7]~8_combout\,
	ena => \inst1|inst4|Regist[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst4|Regist\(7));

-- Location: MLABCELL_X39_Y2_N54
\inst1|inst4|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst4|Mux7~0_combout\ = ( \SelBus[2]~input_o\ & ( \inst1|inst16|result\(0) & ( (!\SelBus[3]~input_o\ & ((\inst1|inst4|Regist\(1)))) # (\SelBus[3]~input_o\ & (!\inst1|inst4|Regist\(0))) ) ) ) # ( !\SelBus[2]~input_o\ & ( \inst1|inst16|result\(0) & ( 
-- (!\inst1|inst4|Regist\(0)) # (!\SelBus[3]~input_o\) ) ) ) # ( \SelBus[2]~input_o\ & ( !\inst1|inst16|result\(0) & ( (!\SelBus[3]~input_o\ & ((\inst1|inst4|Regist\(1)))) # (\SelBus[3]~input_o\ & (!\inst1|inst4|Regist\(0))) ) ) ) # ( !\SelBus[2]~input_o\ & 
-- ( !\inst1|inst16|result\(0) & ( (!\inst1|inst4|Regist\(0) & \SelBus[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010001110100011101011111010111110100011101000111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst4|ALT_INV_Regist\(0),
	datab => \inst1|inst4|ALT_INV_Regist\(1),
	datac => \ALT_INV_SelBus[3]~input_o\,
	datae => \ALT_INV_SelBus[2]~input_o\,
	dataf => \inst1|inst16|ALT_INV_result\(0),
	combout => \inst1|inst4|Mux7~0_combout\);

-- Location: MLABCELL_X39_Y2_N33
\inst1|inst4|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst4|Mux7~1_combout\ = ( \inst1|inst4|Mux7~0_combout\ & ( \inst1|inst4|Add0~29_sumout\ & ( ((!\inst1|inst8|Regist[0]~5_combout\) # (\inst1|inst8|Regist[0]~4_combout\)) # (\inst1|inst4|Regist\(7)) ) ) ) # ( !\inst1|inst4|Mux7~0_combout\ & ( 
-- \inst1|inst4|Add0~29_sumout\ & ( ((\inst1|inst4|Regist\(7) & \inst1|inst8|Regist[0]~5_combout\)) # (\inst1|inst8|Regist[0]~4_combout\) ) ) ) # ( \inst1|inst4|Mux7~0_combout\ & ( !\inst1|inst4|Add0~29_sumout\ & ( (!\inst1|inst8|Regist[0]~4_combout\ & 
-- ((!\inst1|inst8|Regist[0]~5_combout\) # (\inst1|inst4|Regist\(7)))) ) ) ) # ( !\inst1|inst4|Mux7~0_combout\ & ( !\inst1|inst4|Add0~29_sumout\ & ( (\inst1|inst4|Regist\(7) & (!\inst1|inst8|Regist[0]~4_combout\ & \inst1|inst8|Regist[0]~5_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100110001001100010000110111001101111111011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst4|ALT_INV_Regist\(7),
	datab => \inst1|inst8|ALT_INV_Regist[0]~4_combout\,
	datac => \inst1|inst8|ALT_INV_Regist[0]~5_combout\,
	datae => \inst1|inst4|ALT_INV_Mux7~0_combout\,
	dataf => \inst1|inst4|ALT_INV_Add0~29_sumout\,
	combout => \inst1|inst4|Mux7~1_combout\);

-- Location: FF_X39_Y2_N35
\inst1|inst4|Regist[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst4|Mux7~1_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[0]~6_combout\,
	ena => \inst1|inst4|Regist[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst4|Regist\(0));

-- Location: LABCELL_X36_Y2_N54
\inst1|inst3|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst3|Mux2~0_combout\ = ( \inst1|inst16|result\(5) & ( (!\inst1|inst3|Regist\(5)) # (!\SelBus[1]~input_o\) ) ) # ( !\inst1|inst16|result\(5) & ( (!\inst1|inst3|Regist\(5) & \SelBus[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110011111111110011001111111111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst3|ALT_INV_Regist\(5),
	datad => \ALT_INV_SelBus[1]~input_o\,
	dataf => \inst1|inst16|ALT_INV_result\(5),
	combout => \inst1|inst3|Mux2~0_combout\);

-- Location: LABCELL_X35_Y2_N39
\inst1|inst3|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst3|Mux3~0_combout\ = ( \inst1|inst16|result\(4) & ( (!\SelBus[1]~input_o\) # (!\inst1|inst3|Regist\(4)) ) ) # ( !\inst1|inst16|result\(4) & ( (\SelBus[1]~input_o\ & !\inst1|inst3|Regist\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000011111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SelBus[1]~input_o\,
	datad => \inst1|inst3|ALT_INV_Regist\(4),
	dataf => \inst1|inst16|ALT_INV_result\(4),
	combout => \inst1|inst3|Mux3~0_combout\);

-- Location: LABCELL_X33_Y2_N0
\inst1|inst3|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst3|Add0~29_sumout\ = SUM(( !\inst1|inst3|Regist\(0) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( ((!\SelBus[3]~input_o\) # (\inst1|inst16|result\(0))) # (\SelBus[1]~input_o\) ) + ( !VCC ))
-- \inst1|inst3|Add0~30\ = CARRY(( !\inst1|inst3|Regist\(0) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( ((!\SelBus[3]~input_o\) # (\inst1|inst16|result\(0))) # (\SelBus[1]~input_o\) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000010000000000000000000000001000111101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[3]~input_o\,
	datac => \inst1|inst16|ALT_INV_result\(0),
	datad => \inst1|inst3|ALT_INV_Regist\(0),
	cin => GND,
	sumout => \inst1|inst3|Add0~29_sumout\,
	cout => \inst1|inst3|Add0~30\);

-- Location: LABCELL_X33_Y2_N3
\inst1|inst3|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst3|Add0~25_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(1))))) ) + ( !\inst1|inst3|Regist\(1) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) 
-- + ( \inst1|inst3|Add0~30\ ))
-- \inst1|inst3|Add0~26\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(1))))) ) + ( !\inst1|inst3|Regist\(1) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst1|inst3|Add0~30\ ))

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
	datad => \inst1|inst16|ALT_INV_result\(1),
	dataf => \inst1|inst3|ALT_INV_Regist\(1),
	cin => \inst1|inst3|Add0~30\,
	sumout => \inst1|inst3|Add0~25_sumout\,
	cout => \inst1|inst3|Add0~26\);

-- Location: LABCELL_X35_Y2_N33
\inst1|inst3|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst3|Mux6~0_combout\ = ( \inst1|inst16|result\(1) & ( \inst1|inst3|Regist\(1) & ( !\SelBus[1]~input_o\ ) ) ) # ( \inst1|inst16|result\(1) & ( !\inst1|inst3|Regist\(1) ) ) # ( !\inst1|inst16|result\(1) & ( !\inst1|inst3|Regist\(1) & ( 
-- \SelBus[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101111111111111111100000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datae => \inst1|inst16|ALT_INV_result\(1),
	dataf => \inst1|inst3|ALT_INV_Regist\(1),
	combout => \inst1|inst3|Mux6~0_combout\);

-- Location: LABCELL_X33_Y2_N54
\inst1|inst3|Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst3|Mux6~1_combout\ = ( \inst1|inst3|Regist\(2) & ( (\SelBus[2]~input_o\ & ((\SelBus[0]~input_o\) # (\inst1|inst3|Regist\(0)))) ) ) # ( !\inst1|inst3|Regist\(2) & ( (\inst1|inst3|Regist\(0) & (!\SelBus[0]~input_o\ & \SelBus[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000000000001111110000000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst3|ALT_INV_Regist\(0),
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \ALT_INV_SelBus[2]~input_o\,
	dataf => \inst1|inst3|ALT_INV_Regist\(2),
	combout => \inst1|inst3|Mux6~1_combout\);

-- Location: LABCELL_X36_Y2_N9
\inst1|inst3|Mux6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst3|Mux6~2_combout\ = ( \inst1|inst3|Mux6~1_combout\ ) # ( !\inst1|inst3|Mux6~1_combout\ & ( (!\inst1|inst8|Regist[4]~0_combout\ & (\inst1|inst8|Mux3~0_combout\ & (\inst1|inst3|Add0~25_sumout\))) # (\inst1|inst8|Regist[4]~0_combout\ & 
-- (((\inst1|inst8|Mux3~0_combout\ & \inst1|inst3|Add0~25_sumout\)) # (\inst1|inst3|Mux6~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010111000000110101011111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Regist[4]~0_combout\,
	datab => \inst1|inst8|ALT_INV_Mux3~0_combout\,
	datac => \inst1|inst3|ALT_INV_Add0~25_sumout\,
	datad => \inst1|inst3|ALT_INV_Mux6~0_combout\,
	dataf => \inst1|inst3|ALT_INV_Mux6~1_combout\,
	combout => \inst1|inst3|Mux6~2_combout\);

-- Location: LABCELL_X33_Y2_N42
\inst1|inst3|Regist[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst3|Regist[1]~0_combout\ = ( !\SelRegD[1]~input_o\ & ( (\SelRegD[2]~input_o\ & (\SelRegD[0]~input_o\ & \inst1|inst8|Regist[4]~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelRegD[2]~input_o\,
	datab => \ALT_INV_SelRegD[0]~input_o\,
	datac => \inst1|inst8|ALT_INV_Regist[4]~2_combout\,
	dataf => \ALT_INV_SelRegD[1]~input_o\,
	combout => \inst1|inst3|Regist[1]~0_combout\);

-- Location: FF_X36_Y2_N11
\inst1|inst3|Regist[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst3|Mux6~2_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[4]~1_combout\,
	ena => \inst1|inst3|Regist[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst3|Regist\(1));

-- Location: LABCELL_X33_Y2_N48
\inst1|inst3|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst3|Mux5~1_combout\ = ( \inst1|inst3|Regist\(1) & ( (\SelBus[2]~input_o\ & ((!\SelBus[0]~input_o\) # (\inst1|inst3|Regist\(3)))) ) ) # ( !\inst1|inst3|Regist\(1) & ( (\inst1|inst3|Regist\(3) & (\SelBus[2]~input_o\ & \SelBus[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100110001001100010011000100110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|ALT_INV_Regist\(3),
	datab => \ALT_INV_SelBus[2]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	dataf => \inst1|inst3|ALT_INV_Regist\(1),
	combout => \inst1|inst3|Mux5~1_combout\);

-- Location: LABCELL_X33_Y2_N6
\inst1|inst3|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst3|Add0~21_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(2))))) ) + ( !\inst1|inst3|Regist\(2) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) 
-- + ( \inst1|inst3|Add0~26\ ))
-- \inst1|inst3|Add0~22\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(2))))) ) + ( !\inst1|inst3|Regist\(2) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst1|inst3|Add0~26\ ))

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
	datad => \inst1|inst16|ALT_INV_result\(2),
	dataf => \inst1|inst3|ALT_INV_Regist\(2),
	cin => \inst1|inst3|Add0~26\,
	sumout => \inst1|inst3|Add0~21_sumout\,
	cout => \inst1|inst3|Add0~22\);

-- Location: MLABCELL_X34_Y2_N30
\inst1|inst3|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst3|Mux5~0_combout\ = ( \inst1|inst16|result\(2) & ( (!\inst1|inst3|Regist\(2)) # (!\SelBus[1]~input_o\) ) ) # ( !\inst1|inst16|result\(2) & ( (!\inst1|inst3|Regist\(2) & \SelBus[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst3|ALT_INV_Regist\(2),
	datad => \ALT_INV_SelBus[1]~input_o\,
	dataf => \inst1|inst16|ALT_INV_result\(2),
	combout => \inst1|inst3|Mux5~0_combout\);

-- Location: MLABCELL_X34_Y2_N18
\inst1|inst3|Mux5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst3|Mux5~2_combout\ = ( \inst1|inst3|Mux5~0_combout\ & ( (((\inst1|inst8|Mux3~0_combout\ & \inst1|inst3|Add0~21_sumout\)) # (\inst1|inst3|Mux5~1_combout\)) # (\inst1|inst8|Regist[4]~0_combout\) ) ) # ( !\inst1|inst3|Mux5~0_combout\ & ( 
-- ((\inst1|inst8|Mux3~0_combout\ & \inst1|inst3|Add0~21_sumout\)) # (\inst1|inst3|Mux5~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111111000011110011111101011111011111110101111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Regist[4]~0_combout\,
	datab => \inst1|inst8|ALT_INV_Mux3~0_combout\,
	datac => \inst1|inst3|ALT_INV_Mux5~1_combout\,
	datad => \inst1|inst3|ALT_INV_Add0~21_sumout\,
	dataf => \inst1|inst3|ALT_INV_Mux5~0_combout\,
	combout => \inst1|inst3|Mux5~2_combout\);

-- Location: FF_X34_Y2_N20
\inst1|inst3|Regist[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst3|Mux5~2_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[4]~1_combout\,
	ena => \inst1|inst3|Regist[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst3|Regist\(2));

-- Location: LABCELL_X36_Y2_N12
\inst1|inst3|Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst3|Mux4~1_combout\ = ( \SelBus[0]~input_o\ & ( (\SelBus[2]~input_o\ & \inst1|inst3|Regist\(4)) ) ) # ( !\SelBus[0]~input_o\ & ( (\SelBus[2]~input_o\ & \inst1|inst3|Regist\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[2]~input_o\,
	datac => \inst1|inst3|ALT_INV_Regist\(4),
	datad => \inst1|inst3|ALT_INV_Regist\(2),
	dataf => \ALT_INV_SelBus[0]~input_o\,
	combout => \inst1|inst3|Mux4~1_combout\);

-- Location: LABCELL_X35_Y2_N54
\inst1|inst3|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst3|Mux4~0_combout\ = ( \inst1|inst16|result\(3) & ( (!\SelBus[1]~input_o\) # (!\inst1|inst3|Regist\(3)) ) ) # ( !\inst1|inst16|result\(3) & ( (\SelBus[1]~input_o\ & !\inst1|inst3|Regist\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000011111010111110101111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datac => \inst1|inst3|ALT_INV_Regist\(3),
	dataf => \inst1|inst16|ALT_INV_result\(3),
	combout => \inst1|inst3|Mux4~0_combout\);

-- Location: LABCELL_X33_Y2_N9
\inst1|inst3|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst3|Add0~17_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(3))))) ) + ( !\inst1|inst3|Regist\(3) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) 
-- + ( \inst1|inst3|Add0~22\ ))
-- \inst1|inst3|Add0~18\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(3))))) ) + ( !\inst1|inst3|Regist\(3) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst1|inst3|Add0~22\ ))

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
	datad => \inst1|inst16|ALT_INV_result\(3),
	dataf => \inst1|inst3|ALT_INV_Regist\(3),
	cin => \inst1|inst3|Add0~22\,
	sumout => \inst1|inst3|Add0~17_sumout\,
	cout => \inst1|inst3|Add0~18\);

-- Location: LABCELL_X36_Y2_N21
\inst1|inst3|Mux4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst3|Mux4~2_combout\ = ( \inst1|inst3|Add0~17_sumout\ & ( (((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst3|Mux4~0_combout\)) # (\inst1|inst3|Mux4~1_combout\)) # (\inst1|inst8|Mux3~0_combout\) ) ) # ( !\inst1|inst3|Add0~17_sumout\ & ( 
-- ((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst3|Mux4~0_combout\)) # (\inst1|inst3|Mux4~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011111000011110101111100111111011111110011111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Regist[4]~0_combout\,
	datab => \inst1|inst8|ALT_INV_Mux3~0_combout\,
	datac => \inst1|inst3|ALT_INV_Mux4~1_combout\,
	datad => \inst1|inst3|ALT_INV_Mux4~0_combout\,
	dataf => \inst1|inst3|ALT_INV_Add0~17_sumout\,
	combout => \inst1|inst3|Mux4~2_combout\);

-- Location: FF_X36_Y2_N23
\inst1|inst3|Regist[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst3|Mux4~2_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[4]~1_combout\,
	ena => \inst1|inst3|Regist[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst3|Regist\(3));

-- Location: LABCELL_X33_Y2_N51
\inst1|inst3|Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst3|Mux3~1_combout\ = ( \inst1|inst3|Regist\(5) & ( (\SelBus[2]~input_o\ & ((\SelBus[0]~input_o\) # (\inst1|inst3|Regist\(3)))) ) ) # ( !\inst1|inst3|Regist\(5) & ( (\inst1|inst3|Regist\(3) & (\SelBus[2]~input_o\ & !\SelBus[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000010011000100110001001100010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|ALT_INV_Regist\(3),
	datab => \ALT_INV_SelBus[2]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	dataf => \inst1|inst3|ALT_INV_Regist\(5),
	combout => \inst1|inst3|Mux3~1_combout\);

-- Location: LABCELL_X33_Y2_N12
\inst1|inst3|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst3|Add0~13_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\)) # (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst1|inst16|result\(4))))) ) + ( !\inst1|inst3|Regist\(4) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst1|inst3|Add0~18\ ))
-- \inst1|inst3|Add0~14\ = CARRY(( (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\)) # (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst1|inst16|result\(4))))) ) + ( !\inst1|inst3|Regist\(4) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst1|inst3|Add0~18\ ))

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
	datad => \inst1|inst16|ALT_INV_result\(4),
	dataf => \inst1|inst3|ALT_INV_Regist\(4),
	cin => \inst1|inst3|Add0~18\,
	sumout => \inst1|inst3|Add0~13_sumout\,
	cout => \inst1|inst3|Add0~14\);

-- Location: LABCELL_X36_Y2_N18
\inst1|inst3|Mux3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst3|Mux3~2_combout\ = ( \inst1|inst3|Add0~13_sumout\ & ( (((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst3|Mux3~0_combout\)) # (\inst1|inst3|Mux3~1_combout\)) # (\inst1|inst8|Mux3~0_combout\) ) ) # ( !\inst1|inst3|Add0~13_sumout\ & ( 
-- ((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst3|Mux3~0_combout\)) # (\inst1|inst3|Mux3~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111111000001011111111100110111111111110011011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Regist[4]~0_combout\,
	datab => \inst1|inst8|ALT_INV_Mux3~0_combout\,
	datac => \inst1|inst3|ALT_INV_Mux3~0_combout\,
	datad => \inst1|inst3|ALT_INV_Mux3~1_combout\,
	dataf => \inst1|inst3|ALT_INV_Add0~13_sumout\,
	combout => \inst1|inst3|Mux3~2_combout\);

-- Location: FF_X36_Y2_N20
\inst1|inst3|Regist[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst3|Mux3~2_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[4]~1_combout\,
	ena => \inst1|inst3|Regist[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst3|Regist\(4));

-- Location: LABCELL_X36_Y2_N27
\inst1|inst3|Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst3|Mux2~1_combout\ = ( \inst1|inst3|Regist\(4) & ( (\SelBus[2]~input_o\ & ((!\SelBus[0]~input_o\) # (\inst1|inst3|Regist\(6)))) ) ) # ( !\inst1|inst3|Regist\(4) & ( (\SelBus[0]~input_o\ & (\SelBus[2]~input_o\ & \inst1|inst3|Regist\(6))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100001010000011110000101000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[0]~input_o\,
	datac => \ALT_INV_SelBus[2]~input_o\,
	datad => \inst1|inst3|ALT_INV_Regist\(6),
	dataf => \inst1|inst3|ALT_INV_Regist\(4),
	combout => \inst1|inst3|Mux2~1_combout\);

-- Location: LABCELL_X33_Y2_N15
\inst1|inst3|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst3|Add0~9_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\)) # (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst1|inst16|result\(5))))) ) + ( !\inst1|inst3|Regist\(5) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst1|inst3|Add0~14\ ))
-- \inst1|inst3|Add0~10\ = CARRY(( (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\)) # (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst1|inst16|result\(5))))) ) + ( !\inst1|inst3|Regist\(5) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst1|inst3|Add0~14\ ))

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
	datad => \inst1|inst16|ALT_INV_result\(5),
	dataf => \inst1|inst3|ALT_INV_Regist\(5),
	cin => \inst1|inst3|Add0~14\,
	sumout => \inst1|inst3|Add0~9_sumout\,
	cout => \inst1|inst3|Add0~10\);

-- Location: LABCELL_X36_Y2_N6
\inst1|inst3|Mux2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst3|Mux2~2_combout\ = ( \inst1|inst3|Add0~9_sumout\ & ( (((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst3|Mux2~0_combout\)) # (\inst1|inst3|Mux2~1_combout\)) # (\inst1|inst8|Mux3~0_combout\) ) ) # ( !\inst1|inst3|Add0~9_sumout\ & ( 
-- ((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst3|Mux2~0_combout\)) # (\inst1|inst3|Mux2~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111111000001011111111100110111111111110011011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Regist[4]~0_combout\,
	datab => \inst1|inst8|ALT_INV_Mux3~0_combout\,
	datac => \inst1|inst3|ALT_INV_Mux2~0_combout\,
	datad => \inst1|inst3|ALT_INV_Mux2~1_combout\,
	dataf => \inst1|inst3|ALT_INV_Add0~9_sumout\,
	combout => \inst1|inst3|Mux2~2_combout\);

-- Location: FF_X36_Y2_N8
\inst1|inst3|Regist[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst3|Mux2~2_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[4]~1_combout\,
	ena => \inst1|inst3|Regist[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst3|Regist\(5));

-- Location: MLABCELL_X34_Y2_N24
\inst1|inst3|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst3|Mux1~1_combout\ = (\SelBus[2]~input_o\ & ((!\SelBus[0]~input_o\ & (\inst1|inst3|Regist\(5))) # (\SelBus[0]~input_o\ & ((\inst1|inst3|Regist\(7))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000111000001000000011100000100000001110000010000000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|ALT_INV_Regist\(5),
	datab => \ALT_INV_SelBus[0]~input_o\,
	datac => \ALT_INV_SelBus[2]~input_o\,
	datad => \inst1|inst3|ALT_INV_Regist\(7),
	combout => \inst1|inst3|Mux1~1_combout\);

-- Location: MLABCELL_X34_Y2_N54
\inst1|inst3|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst3|Mux1~0_combout\ = ( \inst1|inst16|result\(6) & ( (!\SelBus[1]~input_o\) # (!\inst1|inst3|Regist\(6)) ) ) # ( !\inst1|inst16|result\(6) & ( (\SelBus[1]~input_o\ & !\inst1|inst3|Regist\(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000011111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SelBus[1]~input_o\,
	datad => \inst1|inst3|ALT_INV_Regist\(6),
	dataf => \inst1|inst16|ALT_INV_result\(6),
	combout => \inst1|inst3|Mux1~0_combout\);

-- Location: LABCELL_X33_Y2_N18
\inst1|inst3|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst3|Add0~5_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\)) # (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst1|inst16|result\(6))))) ) + ( !\inst1|inst3|Regist\(6) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst1|inst3|Add0~10\ ))
-- \inst1|inst3|Add0~6\ = CARRY(( (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\)) # (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst1|inst16|result\(6))))) ) + ( !\inst1|inst3|Regist\(6) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst1|inst3|Add0~10\ ))

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
	datad => \inst1|inst16|ALT_INV_result\(6),
	dataf => \inst1|inst3|ALT_INV_Regist\(6),
	cin => \inst1|inst3|Add0~10\,
	sumout => \inst1|inst3|Add0~5_sumout\,
	cout => \inst1|inst3|Add0~6\);

-- Location: MLABCELL_X34_Y2_N21
\inst1|inst3|Mux1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst3|Mux1~2_combout\ = ( \inst1|inst3|Add0~5_sumout\ & ( (((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst3|Mux1~0_combout\)) # (\inst1|inst3|Mux1~1_combout\)) # (\inst1|inst8|Mux3~0_combout\) ) ) # ( !\inst1|inst3|Add0~5_sumout\ & ( 
-- ((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst3|Mux1~0_combout\)) # (\inst1|inst3|Mux1~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011111000011110101111100111111011111110011111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Regist[4]~0_combout\,
	datab => \inst1|inst8|ALT_INV_Mux3~0_combout\,
	datac => \inst1|inst3|ALT_INV_Mux1~1_combout\,
	datad => \inst1|inst3|ALT_INV_Mux1~0_combout\,
	dataf => \inst1|inst3|ALT_INV_Add0~5_sumout\,
	combout => \inst1|inst3|Mux1~2_combout\);

-- Location: FF_X34_Y2_N23
\inst1|inst3|Regist[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst3|Mux1~2_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[4]~1_combout\,
	ena => \inst1|inst3|Regist[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst3|Regist\(6));

-- Location: LABCELL_X33_Y2_N21
\inst1|inst3|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst3|Add0~1_sumout\ = SUM(( !\inst1|inst3|Regist\(7) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\)) # (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst1|inst16|result\(7))))) ) + ( 
-- \inst1|inst3|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101110111000101100000000000000000000001111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[0]~input_o\,
	datab => \ALT_INV_SelBus[3]~input_o\,
	datac => \ALT_INV_SelBus[1]~input_o\,
	datad => \inst1|inst3|ALT_INV_Regist\(7),
	dataf => \inst1|inst16|ALT_INV_result\(7),
	cin => \inst1|inst3|Add0~6\,
	sumout => \inst1|inst3|Add0~1_sumout\);

-- Location: LABCELL_X33_Y2_N24
\inst1|inst3|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst3|Mux0~0_combout\ = ( \SelBus[3]~input_o\ & ( \inst1|inst16|result\(7) & ( !\inst1|inst3|Regist\(7) ) ) ) # ( !\SelBus[3]~input_o\ & ( \inst1|inst16|result\(7) & ( (!\SelBus[2]~input_o\) # (\inst1|inst3|Regist\(6)) ) ) ) # ( \SelBus[3]~input_o\ 
-- & ( !\inst1|inst16|result\(7) & ( !\inst1|inst3|Regist\(7) ) ) ) # ( !\SelBus[3]~input_o\ & ( !\inst1|inst16|result\(7) & ( (\inst1|inst3|Regist\(6) & \SelBus[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011101010101010101011111111001100111010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|ALT_INV_Regist\(7),
	datab => \inst1|inst3|ALT_INV_Regist\(6),
	datad => \ALT_INV_SelBus[2]~input_o\,
	datae => \ALT_INV_SelBus[3]~input_o\,
	dataf => \inst1|inst16|ALT_INV_result\(7),
	combout => \inst1|inst3|Mux0~0_combout\);

-- Location: LABCELL_X33_Y2_N36
\inst1|inst3|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst3|Mux0~1_combout\ = ( \inst1|inst3|Add0~1_sumout\ & ( \inst1|inst3|Mux0~0_combout\ & ( (!\inst1|inst8|Regist[7]~7_combout\) # ((\inst1|inst3|Regist\(0)) # (\inst1|inst8|Regist[0]~4_combout\)) ) ) ) # ( !\inst1|inst3|Add0~1_sumout\ & ( 
-- \inst1|inst3|Mux0~0_combout\ & ( (!\inst1|inst8|Regist[0]~4_combout\ & ((!\inst1|inst8|Regist[7]~7_combout\) # (\inst1|inst3|Regist\(0)))) ) ) ) # ( \inst1|inst3|Add0~1_sumout\ & ( !\inst1|inst3|Mux0~0_combout\ & ( ((\inst1|inst8|Regist[7]~7_combout\ & 
-- \inst1|inst3|Regist\(0))) # (\inst1|inst8|Regist[0]~4_combout\) ) ) ) # ( !\inst1|inst3|Add0~1_sumout\ & ( !\inst1|inst3|Mux0~0_combout\ & ( (\inst1|inst8|Regist[7]~7_combout\ & (!\inst1|inst8|Regist[0]~4_combout\ & \inst1|inst3|Regist\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000011110011111111000000111100001100111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst8|ALT_INV_Regist[7]~7_combout\,
	datac => \inst1|inst8|ALT_INV_Regist[0]~4_combout\,
	datad => \inst1|inst3|ALT_INV_Regist\(0),
	datae => \inst1|inst3|ALT_INV_Add0~1_sumout\,
	dataf => \inst1|inst3|ALT_INV_Mux0~0_combout\,
	combout => \inst1|inst3|Mux0~1_combout\);

-- Location: FF_X33_Y2_N38
\inst1|inst3|Regist[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst3|Mux0~1_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[7]~8_combout\,
	ena => \inst1|inst3|Regist[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst3|Regist\(7));

-- Location: LABCELL_X33_Y2_N57
\inst1|inst3|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst3|Mux7~0_combout\ = ( \inst1|inst3|Regist\(1) & ( (!\SelBus[3]~input_o\ & (((\inst1|inst16|result\(0))) # (\SelBus[2]~input_o\))) # (\SelBus[3]~input_o\ & (((!\inst1|inst3|Regist\(0))))) ) ) # ( !\inst1|inst3|Regist\(1) & ( 
-- (!\SelBus[3]~input_o\ & (!\SelBus[2]~input_o\ & ((\inst1|inst16|result\(0))))) # (\SelBus[3]~input_o\ & (((!\inst1|inst3|Regist\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110010101100000011001010110001011100111111000101110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[2]~input_o\,
	datab => \inst1|inst3|ALT_INV_Regist\(0),
	datac => \ALT_INV_SelBus[3]~input_o\,
	datad => \inst1|inst16|ALT_INV_result\(0),
	dataf => \inst1|inst3|ALT_INV_Regist\(1),
	combout => \inst1|inst3|Mux7~0_combout\);

-- Location: LABCELL_X37_Y2_N45
\inst1|inst3|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst3|Mux7~1_combout\ = ( \inst1|inst3|Add0~29_sumout\ & ( ((!\inst1|inst8|Regist[0]~5_combout\ & ((\inst1|inst3|Mux7~0_combout\))) # (\inst1|inst8|Regist[0]~5_combout\ & (\inst1|inst3|Regist\(7)))) # (\inst1|inst8|Regist[0]~4_combout\) ) ) # ( 
-- !\inst1|inst3|Add0~29_sumout\ & ( (!\inst1|inst8|Regist[0]~4_combout\ & ((!\inst1|inst8|Regist[0]~5_combout\ & ((\inst1|inst3|Mux7~0_combout\))) # (\inst1|inst8|Regist[0]~5_combout\ & (\inst1|inst3|Regist\(7))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100000000001101010000000000110101111111110011010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|ALT_INV_Regist\(7),
	datab => \inst1|inst3|ALT_INV_Mux7~0_combout\,
	datac => \inst1|inst8|ALT_INV_Regist[0]~5_combout\,
	datad => \inst1|inst8|ALT_INV_Regist[0]~4_combout\,
	dataf => \inst1|inst3|ALT_INV_Add0~29_sumout\,
	combout => \inst1|inst3|Mux7~1_combout\);

-- Location: FF_X37_Y2_N47
\inst1|inst3|Regist[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst3|Mux7~1_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[0]~6_combout\,
	ena => \inst1|inst3|Regist[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst3|Regist\(0));

-- Location: LABCELL_X37_Y2_N0
\inst1|inst24|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst24|Add0~34_cout\ = CARRY(( (\AluSel[0]~input_o\ & !\AluSel[3]~input_o\) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_AluSel[0]~input_o\,
	datac => \ALT_INV_AluSel[3]~input_o\,
	cin => GND,
	cout => \inst1|inst24|Add0~34_cout\);

-- Location: LABCELL_X37_Y2_N3
\inst1|inst24|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst24|Add0~29_sumout\ = SUM(( \inst1|inst3|Regist\(0) ) + ( !\inst1|inst4|Regist\(0) $ (((!\AluSel[0]~input_o\) # (\AluSel[3]~input_o\))) ) + ( \inst1|inst24|Add0~34_cout\ ))
-- \inst1|inst24|Add0~30\ = CARRY(( \inst1|inst3|Regist\(0) ) + ( !\inst1|inst4|Regist\(0) $ (((!\AluSel[0]~input_o\) # (\AluSel[3]~input_o\))) ) + ( \inst1|inst24|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101001011111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AluSel[0]~input_o\,
	datac => \inst1|inst4|ALT_INV_Regist\(0),
	datad => \inst1|inst3|ALT_INV_Regist\(0),
	dataf => \ALT_INV_AluSel[3]~input_o\,
	cin => \inst1|inst24|Add0~34_cout\,
	sumout => \inst1|inst24|Add0~29_sumout\,
	cout => \inst1|inst24|Add0~30\);

-- Location: LABCELL_X36_Y2_N45
\inst1|inst24|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst24|Mux13~0_combout\ = ( !\AluSel[3]~input_o\ & ( !\AluSel[1]~input_o\ $ (!\AluSel[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AluSel[1]~input_o\,
	datad => \ALT_INV_AluSel[2]~input_o\,
	dataf => \ALT_INV_AluSel[3]~input_o\,
	combout => \inst1|inst24|Mux13~0_combout\);

-- Location: LABCELL_X37_Y2_N51
\inst1|inst24|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst24|Mux9~0_combout\ = ( \inst1|inst3|Regist\(0) & ( \AluSel[0]~input_o\ & ( (!\inst1|inst24|Mux13~0_combout\ & (\inst1|inst24|Add0~29_sumout\)) # (\inst1|inst24|Mux13~0_combout\ & (((!\inst1|inst4|Regist\(0)) # (!\AluSel[2]~input_o\)))) ) ) ) # 
-- ( !\inst1|inst3|Regist\(0) & ( \AluSel[0]~input_o\ & ( (!\inst1|inst24|Mux13~0_combout\ & (\inst1|inst24|Add0~29_sumout\)) # (\inst1|inst24|Mux13~0_combout\ & ((\inst1|inst4|Regist\(0)))) ) ) ) # ( \inst1|inst3|Regist\(0) & ( !\AluSel[0]~input_o\ & ( 
-- (!\inst1|inst24|Mux13~0_combout\ & (\inst1|inst24|Add0~29_sumout\)) # (\inst1|inst24|Mux13~0_combout\ & ((!\inst1|inst4|Regist\(0) $ (!\AluSel[2]~input_o\)))) ) ) ) # ( !\inst1|inst3|Regist\(0) & ( !\AluSel[0]~input_o\ & ( (!\inst1|inst24|Mux13~0_combout\ 
-- & (\inst1|inst24|Add0~29_sumout\)) # (\inst1|inst24|Mux13~0_combout\ & (((\inst1|inst4|Regist\(0) & \AluSel[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000011010101010011110001010101001100110101010111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst24|ALT_INV_Add0~29_sumout\,
	datab => \inst1|inst4|ALT_INV_Regist\(0),
	datac => \ALT_INV_AluSel[2]~input_o\,
	datad => \inst1|inst24|ALT_INV_Mux13~0_combout\,
	datae => \inst1|inst3|ALT_INV_Regist\(0),
	dataf => \ALT_INV_AluSel[0]~input_o\,
	combout => \inst1|inst24|Mux9~0_combout\);

-- Location: LABCELL_X37_Y1_N12
\inst1|inst24|ALU_Result[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst24|ALU_Result\(0) = (!\inst1|inst24|Mux17~0_combout\ & ((\inst1|inst24|Mux9~0_combout\))) # (\inst1|inst24|Mux17~0_combout\ & (\inst1|inst24|ALU_Result\(0)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst24|ALT_INV_ALU_Result\(0),
	datac => \inst1|inst24|ALT_INV_Mux9~0_combout\,
	datad => \inst1|inst24|ALT_INV_Mux17~0_combout\,
	combout => \inst1|inst24|ALU_Result\(0));

-- Location: LABCELL_X36_Y1_N30
\inst1|inst20|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst20|Add0~29_sumout\ = SUM(( !\inst1|inst20|Regist\(0) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( (!\SelBus[3]~input_o\) # ((\inst1|inst24|ALU_Result\(0)) # (\SelBus[1]~input_o\)) ) + ( !VCC ))
-- \inst1|inst20|Add0~30\ = CARRY(( !\inst1|inst20|Regist\(0) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( (!\SelBus[3]~input_o\) # ((\inst1|inst24|ALU_Result\(0)) # (\SelBus[1]~input_o\)) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000100000000000000000000000001000111101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[3]~input_o\,
	datab => \ALT_INV_SelBus[1]~input_o\,
	datac => \inst1|inst24|ALT_INV_ALU_Result\(0),
	datad => \inst1|inst20|ALT_INV_Regist\(0),
	cin => GND,
	sumout => \inst1|inst20|Add0~29_sumout\,
	cout => \inst1|inst20|Add0~30\);

-- Location: LABCELL_X31_Y1_N24
\inst1|inst20|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst20|Mux7~0_combout\ = ( \SelBus[2]~input_o\ & ( \inst1|inst24|ALU_Result\(0) & ( (!\SelBus[3]~input_o\ & (\inst1|inst20|Regist\(1))) # (\SelBus[3]~input_o\ & ((!\inst1|inst20|Regist\(0)))) ) ) ) # ( !\SelBus[2]~input_o\ & ( 
-- \inst1|inst24|ALU_Result\(0) & ( (!\SelBus[3]~input_o\) # (!\inst1|inst20|Regist\(0)) ) ) ) # ( \SelBus[2]~input_o\ & ( !\inst1|inst24|ALU_Result\(0) & ( (!\SelBus[3]~input_o\ & (\inst1|inst20|Regist\(1))) # (\SelBus[3]~input_o\ & 
-- ((!\inst1|inst20|Regist\(0)))) ) ) ) # ( !\SelBus[2]~input_o\ & ( !\inst1|inst24|ALU_Result\(0) & ( (\SelBus[3]~input_o\ & !\inst1|inst20|Regist\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000011101000111010011111100111111000111010001110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst20|ALT_INV_Regist\(1),
	datab => \ALT_INV_SelBus[3]~input_o\,
	datac => \inst1|inst20|ALT_INV_Regist\(0),
	datae => \ALT_INV_SelBus[2]~input_o\,
	dataf => \inst1|inst24|ALT_INV_ALU_Result\(0),
	combout => \inst1|inst20|Mux7~0_combout\);

-- Location: LABCELL_X31_Y1_N36
\inst1|inst20|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst20|Mux7~1_combout\ = ( \inst1|inst20|Add0~29_sumout\ & ( \inst1|inst20|Mux7~0_combout\ & ( ((!\inst1|inst8|Regist[0]~5_combout\) # (\inst1|inst8|Regist[0]~4_combout\)) # (\inst1|inst20|Regist\(7)) ) ) ) # ( !\inst1|inst20|Add0~29_sumout\ & ( 
-- \inst1|inst20|Mux7~0_combout\ & ( (!\inst1|inst8|Regist[0]~4_combout\ & ((!\inst1|inst8|Regist[0]~5_combout\) # (\inst1|inst20|Regist\(7)))) ) ) ) # ( \inst1|inst20|Add0~29_sumout\ & ( !\inst1|inst20|Mux7~0_combout\ & ( ((\inst1|inst20|Regist\(7) & 
-- \inst1|inst8|Regist[0]~5_combout\)) # (\inst1|inst8|Regist[0]~4_combout\) ) ) ) # ( !\inst1|inst20|Add0~29_sumout\ & ( !\inst1|inst20|Mux7~0_combout\ & ( (\inst1|inst20|Regist\(7) & (!\inst1|inst8|Regist[0]~4_combout\ & \inst1|inst8|Regist[0]~5_combout\)) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100001101110011011111000100110001001111011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst20|ALT_INV_Regist\(7),
	datab => \inst1|inst8|ALT_INV_Regist[0]~4_combout\,
	datac => \inst1|inst8|ALT_INV_Regist[0]~5_combout\,
	datae => \inst1|inst20|ALT_INV_Add0~29_sumout\,
	dataf => \inst1|inst20|ALT_INV_Mux7~0_combout\,
	combout => \inst1|inst20|Mux7~1_combout\);

-- Location: MLABCELL_X34_Y1_N6
\inst1|inst20|Regist[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst20|Regist[6]~0_combout\ = ( \SelRegD[0]~input_o\ & ( \SelRegD[2]~input_o\ & ( (\SelRegD[1]~input_o\ & \inst1|inst8|Regist[4]~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelRegD[1]~input_o\,
	datac => \inst1|inst8|ALT_INV_Regist[4]~2_combout\,
	datae => \ALT_INV_SelRegD[0]~input_o\,
	dataf => \ALT_INV_SelRegD[2]~input_o\,
	combout => \inst1|inst20|Regist[6]~0_combout\);

-- Location: FF_X31_Y1_N38
\inst1|inst20|Regist[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst20|Mux7~1_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[0]~6_combout\,
	ena => \inst1|inst20|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst20|Regist\(0));

-- Location: LABCELL_X37_Y2_N6
\inst1|inst24|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst24|Add0~25_sumout\ = SUM(( \inst1|inst3|Regist\(1) ) + ( !\inst1|inst4|Regist\(1) $ (((!\AluSel[0]~input_o\) # (\AluSel[3]~input_o\))) ) + ( \inst1|inst24|Add0~30\ ))
-- \inst1|inst24|Add0~26\ = CARRY(( \inst1|inst3|Regist\(1) ) + ( !\inst1|inst4|Regist\(1) $ (((!\AluSel[0]~input_o\) # (\AluSel[3]~input_o\))) ) + ( \inst1|inst24|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110100101101001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AluSel[3]~input_o\,
	datab => \ALT_INV_AluSel[0]~input_o\,
	datac => \inst1|inst4|ALT_INV_Regist\(1),
	datad => \inst1|inst3|ALT_INV_Regist\(1),
	cin => \inst1|inst24|Add0~30\,
	sumout => \inst1|inst24|Add0~25_sumout\,
	cout => \inst1|inst24|Add0~26\);

-- Location: LABCELL_X37_Y2_N9
\inst1|inst24|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst24|Add0~21_sumout\ = SUM(( \inst1|inst3|Regist\(2) ) + ( !\inst1|inst4|Regist\(2) $ (((!\AluSel[0]~input_o\) # (\AluSel[3]~input_o\))) ) + ( \inst1|inst24|Add0~26\ ))
-- \inst1|inst24|Add0~22\ = CARRY(( \inst1|inst3|Regist\(2) ) + ( !\inst1|inst4|Regist\(2) $ (((!\AluSel[0]~input_o\) # (\AluSel[3]~input_o\))) ) + ( \inst1|inst24|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110100101101001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AluSel[3]~input_o\,
	datab => \ALT_INV_AluSel[0]~input_o\,
	datac => \inst1|inst4|ALT_INV_Regist\(2),
	datad => \inst1|inst3|ALT_INV_Regist\(2),
	cin => \inst1|inst24|Add0~26\,
	sumout => \inst1|inst24|Add0~21_sumout\,
	cout => \inst1|inst24|Add0~22\);

-- Location: LABCELL_X37_Y2_N12
\inst1|inst24|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst24|Add0~17_sumout\ = SUM(( \inst1|inst3|Regist\(3) ) + ( !\inst1|inst4|Regist\(3) $ (((!\AluSel[0]~input_o\) # (\AluSel[3]~input_o\))) ) + ( \inst1|inst24|Add0~22\ ))
-- \inst1|inst24|Add0~18\ = CARRY(( \inst1|inst3|Regist\(3) ) + ( !\inst1|inst4|Regist\(3) $ (((!\AluSel[0]~input_o\) # (\AluSel[3]~input_o\))) ) + ( \inst1|inst24|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101101001011010000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AluSel[0]~input_o\,
	datab => \ALT_INV_AluSel[3]~input_o\,
	datac => \inst1|inst4|ALT_INV_Regist\(3),
	datad => \inst1|inst3|ALT_INV_Regist\(3),
	cin => \inst1|inst24|Add0~22\,
	sumout => \inst1|inst24|Add0~17_sumout\,
	cout => \inst1|inst24|Add0~18\);

-- Location: LABCELL_X37_Y2_N15
\inst1|inst24|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst24|Add0~13_sumout\ = SUM(( \inst1|inst3|Regist\(4) ) + ( !\inst1|inst4|Regist\(4) $ (((!\AluSel[0]~input_o\) # (\AluSel[3]~input_o\))) ) + ( \inst1|inst24|Add0~18\ ))
-- \inst1|inst24|Add0~14\ = CARRY(( \inst1|inst3|Regist\(4) ) + ( !\inst1|inst4|Regist\(4) $ (((!\AluSel[0]~input_o\) # (\AluSel[3]~input_o\))) ) + ( \inst1|inst24|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101101001011010000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AluSel[0]~input_o\,
	datab => \ALT_INV_AluSel[3]~input_o\,
	datac => \inst1|inst4|ALT_INV_Regist\(4),
	datad => \inst1|inst3|ALT_INV_Regist\(4),
	cin => \inst1|inst24|Add0~18\,
	sumout => \inst1|inst24|Add0~13_sumout\,
	cout => \inst1|inst24|Add0~14\);

-- Location: LABCELL_X37_Y2_N18
\inst1|inst24|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst24|Add0~9_sumout\ = SUM(( \inst1|inst3|Regist\(5) ) + ( !\inst1|inst4|Regist\(5) $ (((!\AluSel[0]~input_o\) # (\AluSel[3]~input_o\))) ) + ( \inst1|inst24|Add0~14\ ))
-- \inst1|inst24|Add0~10\ = CARRY(( \inst1|inst3|Regist\(5) ) + ( !\inst1|inst4|Regist\(5) $ (((!\AluSel[0]~input_o\) # (\AluSel[3]~input_o\))) ) + ( \inst1|inst24|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110100101101001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AluSel[3]~input_o\,
	datab => \ALT_INV_AluSel[0]~input_o\,
	datac => \inst1|inst4|ALT_INV_Regist\(5),
	datad => \inst1|inst3|ALT_INV_Regist\(5),
	cin => \inst1|inst24|Add0~14\,
	sumout => \inst1|inst24|Add0~9_sumout\,
	cout => \inst1|inst24|Add0~10\);

-- Location: LABCELL_X37_Y2_N21
\inst1|inst24|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst24|Add0~5_sumout\ = SUM(( \inst1|inst3|Regist\(6) ) + ( !\inst1|inst4|Regist\(6) $ (((!\AluSel[0]~input_o\) # (\AluSel[3]~input_o\))) ) + ( \inst1|inst24|Add0~10\ ))
-- \inst1|inst24|Add0~6\ = CARRY(( \inst1|inst3|Regist\(6) ) + ( !\inst1|inst4|Regist\(6) $ (((!\AluSel[0]~input_o\) # (\AluSel[3]~input_o\))) ) + ( \inst1|inst24|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110100101101001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AluSel[3]~input_o\,
	datab => \ALT_INV_AluSel[0]~input_o\,
	datac => \inst1|inst4|ALT_INV_Regist\(6),
	datad => \inst1|inst3|ALT_INV_Regist\(6),
	cin => \inst1|inst24|Add0~10\,
	sumout => \inst1|inst24|Add0~5_sumout\,
	cout => \inst1|inst24|Add0~6\);

-- Location: LABCELL_X37_Y2_N24
\inst1|inst24|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst24|Add0~1_sumout\ = SUM(( \inst1|inst3|Regist\(7) ) + ( !\inst1|inst4|Regist\(7) $ (((!\AluSel[0]~input_o\) # (\AluSel[3]~input_o\))) ) + ( \inst1|inst24|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110100101101001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AluSel[3]~input_o\,
	datab => \ALT_INV_AluSel[0]~input_o\,
	datac => \inst1|inst4|ALT_INV_Regist\(7),
	datad => \inst1|inst3|ALT_INV_Regist\(7),
	cin => \inst1|inst24|Add0~6\,
	sumout => \inst1|inst24|Add0~1_sumout\);

-- Location: LABCELL_X37_Y2_N36
\inst1|inst24|Mux16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst24|Mux16~0_combout\ = ( \inst1|inst3|Regist\(7) & ( \inst1|inst24|Mux13~0_combout\ & ( (!\inst1|inst4|Regist\(7) & ((\AluSel[2]~input_o\) # (\AluSel[0]~input_o\))) # (\inst1|inst4|Regist\(7) & ((!\AluSel[2]~input_o\))) ) ) ) # ( 
-- !\inst1|inst3|Regist\(7) & ( \inst1|inst24|Mux13~0_combout\ & ( (\inst1|inst4|Regist\(7) & ((\AluSel[2]~input_o\) # (\AluSel[0]~input_o\))) ) ) ) # ( \inst1|inst3|Regist\(7) & ( !\inst1|inst24|Mux13~0_combout\ & ( \inst1|inst24|Add0~1_sumout\ ) ) ) # ( 
-- !\inst1|inst3|Regist\(7) & ( !\inst1|inst24|Mux13~0_combout\ & ( \inst1|inst24|Add0~1_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000011000011110011111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst24|ALT_INV_Add0~1_sumout\,
	datab => \ALT_INV_AluSel[0]~input_o\,
	datac => \inst1|inst4|ALT_INV_Regist\(7),
	datad => \ALT_INV_AluSel[2]~input_o\,
	datae => \inst1|inst3|ALT_INV_Regist\(7),
	dataf => \inst1|inst24|ALT_INV_Mux13~0_combout\,
	combout => \inst1|inst24|Mux16~0_combout\);

-- Location: LABCELL_X37_Y2_N42
\inst1|inst24|ALU_Result[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst24|ALU_Result\(7) = ( \inst1|inst24|Mux17~0_combout\ & ( \inst1|inst24|ALU_Result\(7) ) ) # ( !\inst1|inst24|Mux17~0_combout\ & ( \inst1|inst24|Mux16~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst24|ALT_INV_Mux16~0_combout\,
	datad => \inst1|inst24|ALT_INV_ALU_Result\(7),
	dataf => \inst1|inst24|ALT_INV_Mux17~0_combout\,
	combout => \inst1|inst24|ALU_Result\(7));

-- Location: LABCELL_X35_Y1_N57
\inst1|inst20|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst20|Mux0~0_combout\ = ( \inst1|inst24|ALU_Result\(7) & ( \inst1|inst20|Regist\(7) & ( (!\SelBus[3]~input_o\ & ((!\SelBus[2]~input_o\) # (\inst1|inst20|Regist\(6)))) ) ) ) # ( !\inst1|inst24|ALU_Result\(7) & ( \inst1|inst20|Regist\(7) & ( 
-- (\SelBus[2]~input_o\ & (!\SelBus[3]~input_o\ & \inst1|inst20|Regist\(6))) ) ) ) # ( \inst1|inst24|ALU_Result\(7) & ( !\inst1|inst20|Regist\(7) & ( (!\SelBus[2]~input_o\) # ((\inst1|inst20|Regist\(6)) # (\SelBus[3]~input_o\)) ) ) ) # ( 
-- !\inst1|inst24|ALU_Result\(7) & ( !\inst1|inst20|Regist\(7) & ( ((\SelBus[2]~input_o\ & \inst1|inst20|Regist\(6))) # (\SelBus[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101110111101110111111111100000000010001001000100011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[2]~input_o\,
	datab => \ALT_INV_SelBus[3]~input_o\,
	datad => \inst1|inst20|ALT_INV_Regist\(6),
	datae => \inst1|inst24|ALT_INV_ALU_Result\(7),
	dataf => \inst1|inst20|ALT_INV_Regist\(7),
	combout => \inst1|inst20|Mux0~0_combout\);

-- Location: LABCELL_X37_Y1_N48
\inst1|inst24|Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst24|Mux15~0_combout\ = ( \inst1|inst24|Mux13~0_combout\ & ( \AluSel[0]~input_o\ & ( (!\inst1|inst4|Regist\(6) & (\inst1|inst3|Regist\(6))) # (\inst1|inst4|Regist\(6) & ((!\inst1|inst3|Regist\(6)) # (!\AluSel[2]~input_o\))) ) ) ) # ( 
-- !\inst1|inst24|Mux13~0_combout\ & ( \AluSel[0]~input_o\ & ( \inst1|inst24|Add0~5_sumout\ ) ) ) # ( \inst1|inst24|Mux13~0_combout\ & ( !\AluSel[0]~input_o\ & ( (!\inst1|inst4|Regist\(6) & (\inst1|inst3|Regist\(6) & \AluSel[2]~input_o\)) # 
-- (\inst1|inst4|Regist\(6) & (!\inst1|inst3|Regist\(6) $ (!\AluSel[2]~input_o\))) ) ) ) # ( !\inst1|inst24|Mux13~0_combout\ & ( !\AluSel[0]~input_o\ & ( \inst1|inst24|Add0~5_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000001010101101000110011001100110101111101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst4|ALT_INV_Regist\(6),
	datab => \inst1|inst24|ALT_INV_Add0~5_sumout\,
	datac => \inst1|inst3|ALT_INV_Regist\(6),
	datad => \ALT_INV_AluSel[2]~input_o\,
	datae => \inst1|inst24|ALT_INV_Mux13~0_combout\,
	dataf => \ALT_INV_AluSel[0]~input_o\,
	combout => \inst1|inst24|Mux15~0_combout\);

-- Location: LABCELL_X37_Y1_N21
\inst1|inst24|ALU_Result[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst24|ALU_Result\(6) = ( \inst1|inst24|Mux15~0_combout\ & ( (!\inst1|inst24|Mux17~0_combout\) # (\inst1|inst24|ALU_Result\(6)) ) ) # ( !\inst1|inst24|Mux15~0_combout\ & ( (\inst1|inst24|ALU_Result\(6) & \inst1|inst24|Mux17~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst24|ALT_INV_ALU_Result\(6),
	datad => \inst1|inst24|ALT_INV_Mux17~0_combout\,
	dataf => \inst1|inst24|ALT_INV_Mux15~0_combout\,
	combout => \inst1|inst24|ALU_Result\(6));

-- Location: LABCELL_X37_Y1_N30
\inst1|inst24|Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst24|Mux14~0_combout\ = ( \inst1|inst24|Mux13~0_combout\ & ( \AluSel[0]~input_o\ & ( (!\inst1|inst4|Regist\(5) & (\inst1|inst3|Regist\(5))) # (\inst1|inst4|Regist\(5) & ((!\inst1|inst3|Regist\(5)) # (!\AluSel[2]~input_o\))) ) ) ) # ( 
-- !\inst1|inst24|Mux13~0_combout\ & ( \AluSel[0]~input_o\ & ( \inst1|inst24|Add0~9_sumout\ ) ) ) # ( \inst1|inst24|Mux13~0_combout\ & ( !\AluSel[0]~input_o\ & ( (!\inst1|inst4|Regist\(5) & (\inst1|inst3|Regist\(5) & \AluSel[2]~input_o\)) # 
-- (\inst1|inst4|Regist\(5) & (!\inst1|inst3|Regist\(5) $ (!\AluSel[2]~input_o\))) ) ) ) # ( !\inst1|inst24|Mux13~0_combout\ & ( !\AluSel[0]~input_o\ & ( \inst1|inst24|Add0~9_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000110011110001010101010101010011111100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst24|ALT_INV_Add0~9_sumout\,
	datab => \inst1|inst4|ALT_INV_Regist\(5),
	datac => \inst1|inst3|ALT_INV_Regist\(5),
	datad => \ALT_INV_AluSel[2]~input_o\,
	datae => \inst1|inst24|ALT_INV_Mux13~0_combout\,
	dataf => \ALT_INV_AluSel[0]~input_o\,
	combout => \inst1|inst24|Mux14~0_combout\);

-- Location: LABCELL_X37_Y1_N9
\inst1|inst24|ALU_Result[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst24|ALU_Result\(5) = ( \inst1|inst24|Mux17~0_combout\ & ( \inst1|inst24|Mux14~0_combout\ & ( \inst1|inst24|ALU_Result\(5) ) ) ) # ( !\inst1|inst24|Mux17~0_combout\ & ( \inst1|inst24|Mux14~0_combout\ ) ) # ( \inst1|inst24|Mux17~0_combout\ & ( 
-- !\inst1|inst24|Mux14~0_combout\ & ( \inst1|inst24|ALU_Result\(5) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst24|ALT_INV_ALU_Result\(5),
	datae => \inst1|inst24|ALT_INV_Mux17~0_combout\,
	dataf => \inst1|inst24|ALT_INV_Mux14~0_combout\,
	combout => \inst1|inst24|ALU_Result\(5));

-- Location: LABCELL_X37_Y2_N30
\inst1|inst24|Mux13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst24|Mux13~1_combout\ = ( \AluSel[2]~input_o\ & ( \inst1|inst3|Regist\(4) & ( (!\inst1|inst24|Mux13~0_combout\ & (\inst1|inst24|Add0~13_sumout\)) # (\inst1|inst24|Mux13~0_combout\ & ((!\inst1|inst4|Regist\(4)))) ) ) ) # ( !\AluSel[2]~input_o\ & ( 
-- \inst1|inst3|Regist\(4) & ( (!\inst1|inst24|Mux13~0_combout\ & (\inst1|inst24|Add0~13_sumout\)) # (\inst1|inst24|Mux13~0_combout\ & (((\inst1|inst4|Regist\(4)) # (\AluSel[0]~input_o\)))) ) ) ) # ( \AluSel[2]~input_o\ & ( !\inst1|inst3|Regist\(4) & ( 
-- (!\inst1|inst24|Mux13~0_combout\ & (\inst1|inst24|Add0~13_sumout\)) # (\inst1|inst24|Mux13~0_combout\ & ((\inst1|inst4|Regist\(4)))) ) ) ) # ( !\AluSel[2]~input_o\ & ( !\inst1|inst3|Regist\(4) & ( (!\inst1|inst24|Mux13~0_combout\ & 
-- (\inst1|inst24|Add0~13_sumout\)) # (\inst1|inst24|Mux13~0_combout\ & (((\AluSel[0]~input_o\ & \inst1|inst4|Regist\(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010011010100000101111101010011010111110101111101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst24|ALT_INV_Add0~13_sumout\,
	datab => \ALT_INV_AluSel[0]~input_o\,
	datac => \inst1|inst24|ALT_INV_Mux13~0_combout\,
	datad => \inst1|inst4|ALT_INV_Regist\(4),
	datae => \ALT_INV_AluSel[2]~input_o\,
	dataf => \inst1|inst3|ALT_INV_Regist\(4),
	combout => \inst1|inst24|Mux13~1_combout\);

-- Location: LABCELL_X36_Y2_N15
\inst1|inst24|ALU_Result[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst24|ALU_Result\(4) = ( \inst1|inst24|ALU_Result\(4) & ( (\inst1|inst24|Mux17~0_combout\) # (\inst1|inst24|Mux13~1_combout\) ) ) # ( !\inst1|inst24|ALU_Result\(4) & ( (\inst1|inst24|Mux13~1_combout\ & !\inst1|inst24|Mux17~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst24|ALT_INV_Mux13~1_combout\,
	datad => \inst1|inst24|ALT_INV_Mux17~0_combout\,
	dataf => \inst1|inst24|ALT_INV_ALU_Result\(4),
	combout => \inst1|inst24|ALU_Result\(4));

-- Location: LABCELL_X36_Y1_N21
\inst1|inst20|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst20|Mux3~0_combout\ = ( \SelBus[1]~input_o\ & ( !\inst1|inst20|Regist\(4) ) ) # ( !\SelBus[1]~input_o\ & ( \inst1|inst24|ALU_Result\(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst20|ALT_INV_Regist\(4),
	datad => \inst1|inst24|ALT_INV_ALU_Result\(4),
	dataf => \ALT_INV_SelBus[1]~input_o\,
	combout => \inst1|inst20|Mux3~0_combout\);

-- Location: LABCELL_X36_Y2_N36
\inst1|inst24|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst24|Mux12~0_combout\ = ( \inst1|inst3|Regist\(3) & ( \inst1|inst4|Regist\(3) & ( (!\inst1|inst24|Mux13~0_combout\ & (\inst1|inst24|Add0~17_sumout\)) # (\inst1|inst24|Mux13~0_combout\ & ((!\AluSel[2]~input_o\))) ) ) ) # ( !\inst1|inst3|Regist\(3) 
-- & ( \inst1|inst4|Regist\(3) & ( (!\inst1|inst24|Mux13~0_combout\ & (((\inst1|inst24|Add0~17_sumout\)))) # (\inst1|inst24|Mux13~0_combout\ & (((\AluSel[2]~input_o\)) # (\AluSel[0]~input_o\))) ) ) ) # ( \inst1|inst3|Regist\(3) & ( !\inst1|inst4|Regist\(3) & 
-- ( (!\inst1|inst24|Mux13~0_combout\ & (((\inst1|inst24|Add0~17_sumout\)))) # (\inst1|inst24|Mux13~0_combout\ & (((\AluSel[2]~input_o\)) # (\AluSel[0]~input_o\))) ) ) ) # ( !\inst1|inst3|Regist\(3) & ( !\inst1|inst4|Regist\(3) & ( 
-- (\inst1|inst24|Add0~17_sumout\ & !\inst1|inst24|Mux13~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110101111100110011010111110011001111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AluSel[0]~input_o\,
	datab => \inst1|inst24|ALT_INV_Add0~17_sumout\,
	datac => \ALT_INV_AluSel[2]~input_o\,
	datad => \inst1|inst24|ALT_INV_Mux13~0_combout\,
	datae => \inst1|inst3|ALT_INV_Regist\(3),
	dataf => \inst1|inst4|ALT_INV_Regist\(3),
	combout => \inst1|inst24|Mux12~0_combout\);

-- Location: LABCELL_X36_Y2_N42
\inst1|inst24|ALU_Result[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst24|ALU_Result\(3) = ( \inst1|inst24|ALU_Result\(3) & ( (\inst1|inst24|Mux17~0_combout\) # (\inst1|inst24|Mux12~0_combout\) ) ) # ( !\inst1|inst24|ALU_Result\(3) & ( (\inst1|inst24|Mux12~0_combout\ & !\inst1|inst24|Mux17~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst24|ALT_INV_Mux12~0_combout\,
	datad => \inst1|inst24|ALT_INV_Mux17~0_combout\,
	dataf => \inst1|inst24|ALT_INV_ALU_Result\(3),
	combout => \inst1|inst24|ALU_Result\(3));

-- Location: LABCELL_X36_Y1_N15
\inst1|inst20|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst20|Mux4~0_combout\ = ( \inst1|inst24|ALU_Result\(3) & ( (!\SelBus[1]~input_o\) # (!\inst1|inst20|Regist\(3)) ) ) # ( !\inst1|inst24|ALU_Result\(3) & ( (\SelBus[1]~input_o\ & !\inst1|inst20|Regist\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000011111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SelBus[1]~input_o\,
	datad => \inst1|inst20|ALT_INV_Regist\(3),
	dataf => \inst1|inst24|ALT_INV_ALU_Result\(3),
	combout => \inst1|inst20|Mux4~0_combout\);

-- Location: LABCELL_X37_Y1_N18
\inst1|inst20|Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst20|Mux4~1_combout\ = ( \inst1|inst20|Regist\(2) & ( (\SelBus[2]~input_o\ & ((!\SelBus[0]~input_o\) # (\inst1|inst20|Regist\(4)))) ) ) # ( !\inst1|inst20|Regist\(2) & ( (\inst1|inst20|Regist\(4) & (\SelBus[0]~input_o\ & \SelBus[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000000111100110000000011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst20|ALT_INV_Regist\(4),
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \ALT_INV_SelBus[2]~input_o\,
	dataf => \inst1|inst20|ALT_INV_Regist\(2),
	combout => \inst1|inst20|Mux4~1_combout\);

-- Location: LABCELL_X37_Y1_N42
\inst1|inst24|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst24|Mux10~0_combout\ = ( \inst1|inst24|Mux13~0_combout\ & ( \inst1|inst3|Regist\(1) & ( (!\inst1|inst4|Regist\(1) & ((\AluSel[2]~input_o\) # (\AluSel[0]~input_o\))) # (\inst1|inst4|Regist\(1) & ((!\AluSel[2]~input_o\))) ) ) ) # ( 
-- !\inst1|inst24|Mux13~0_combout\ & ( \inst1|inst3|Regist\(1) & ( \inst1|inst24|Add0~25_sumout\ ) ) ) # ( \inst1|inst24|Mux13~0_combout\ & ( !\inst1|inst3|Regist\(1) & ( (\inst1|inst4|Regist\(1) & ((\AluSel[2]~input_o\) # (\AluSel[0]~input_o\))) ) ) ) # ( 
-- !\inst1|inst24|Mux13~0_combout\ & ( !\inst1|inst3|Regist\(1) & ( \inst1|inst24|Add0~25_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000110000111101010101010101010011111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst24|ALT_INV_Add0~25_sumout\,
	datab => \ALT_INV_AluSel[0]~input_o\,
	datac => \inst1|inst4|ALT_INV_Regist\(1),
	datad => \ALT_INV_AluSel[2]~input_o\,
	datae => \inst1|inst24|ALT_INV_Mux13~0_combout\,
	dataf => \inst1|inst3|ALT_INV_Regist\(1),
	combout => \inst1|inst24|Mux10~0_combout\);

-- Location: LABCELL_X37_Y1_N54
\inst1|inst24|ALU_Result[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst24|ALU_Result\(1) = ( \inst1|inst24|Mux10~0_combout\ & ( (!\inst1|inst24|Mux17~0_combout\) # (\inst1|inst24|ALU_Result\(1)) ) ) # ( !\inst1|inst24|Mux10~0_combout\ & ( (\inst1|inst24|Mux17~0_combout\ & \inst1|inst24|ALU_Result\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst24|ALT_INV_Mux17~0_combout\,
	datad => \inst1|inst24|ALT_INV_ALU_Result\(1),
	dataf => \inst1|inst24|ALT_INV_Mux10~0_combout\,
	combout => \inst1|inst24|ALU_Result\(1));

-- Location: LABCELL_X36_Y1_N33
\inst1|inst20|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst20|Add0~25_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst24|ALU_Result\(1))))) ) + ( !\inst1|inst20|Regist\(1) $ (((!\SelBus[3]~input_o\) # 
-- (!\SelBus[1]~input_o\))) ) + ( \inst1|inst20|Add0~30\ ))
-- \inst1|inst20|Add0~26\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst24|ALU_Result\(1))))) ) + ( !\inst1|inst20|Regist\(1) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) 
-- + ( \inst1|inst20|Add0~30\ ))

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
	datad => \inst1|inst24|ALT_INV_ALU_Result\(1),
	dataf => \inst1|inst20|ALT_INV_Regist\(1),
	cin => \inst1|inst20|Add0~30\,
	sumout => \inst1|inst20|Add0~25_sumout\,
	cout => \inst1|inst20|Add0~26\);

-- Location: LABCELL_X36_Y1_N36
\inst1|inst20|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst20|Add0~21_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\)) # (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst1|inst24|ALU_Result\(2))))) ) + ( !\inst1|inst20|Regist\(2) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) 
-- ) + ( \inst1|inst20|Add0~26\ ))
-- \inst1|inst20|Add0~22\ = CARRY(( (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\)) # (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst1|inst24|ALU_Result\(2))))) ) + ( !\inst1|inst20|Regist\(2) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst1|inst20|Add0~26\ ))

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
	datad => \inst1|inst24|ALT_INV_ALU_Result\(2),
	dataf => \inst1|inst20|ALT_INV_Regist\(2),
	cin => \inst1|inst20|Add0~26\,
	sumout => \inst1|inst20|Add0~21_sumout\,
	cout => \inst1|inst20|Add0~22\);

-- Location: LABCELL_X36_Y1_N39
\inst1|inst20|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst20|Add0~17_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\)) # (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst1|inst24|ALU_Result\(3))))) ) + ( !\inst1|inst20|Regist\(3) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) 
-- ) + ( \inst1|inst20|Add0~22\ ))
-- \inst1|inst20|Add0~18\ = CARRY(( (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\)) # (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst1|inst24|ALU_Result\(3))))) ) + ( !\inst1|inst20|Regist\(3) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst1|inst20|Add0~22\ ))

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
	datad => \inst1|inst24|ALT_INV_ALU_Result\(3),
	dataf => \inst1|inst20|ALT_INV_Regist\(3),
	cin => \inst1|inst20|Add0~22\,
	sumout => \inst1|inst20|Add0~17_sumout\,
	cout => \inst1|inst20|Add0~18\);

-- Location: LABCELL_X36_Y1_N3
\inst1|inst20|Mux4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst20|Mux4~2_combout\ = ( \inst1|inst20|Add0~17_sumout\ & ( (((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst20|Mux4~0_combout\)) # (\inst1|inst20|Mux4~1_combout\)) # (\inst1|inst8|Mux3~0_combout\) ) ) # ( !\inst1|inst20|Add0~17_sumout\ & ( 
-- ((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst20|Mux4~0_combout\)) # (\inst1|inst20|Mux4~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111111000001011111111100110111111111110011011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Regist[4]~0_combout\,
	datab => \inst1|inst8|ALT_INV_Mux3~0_combout\,
	datac => \inst1|inst20|ALT_INV_Mux4~0_combout\,
	datad => \inst1|inst20|ALT_INV_Mux4~1_combout\,
	dataf => \inst1|inst20|ALT_INV_Add0~17_sumout\,
	combout => \inst1|inst20|Mux4~2_combout\);

-- Location: FF_X36_Y1_N5
\inst1|inst20|Regist[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst20|Mux4~2_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[4]~1_combout\,
	ena => \inst1|inst20|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst20|Regist\(3));

-- Location: LABCELL_X37_Y1_N57
\inst1|inst20|Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst20|Mux3~1_combout\ = ( \inst1|inst20|Regist\(3) & ( (\SelBus[2]~input_o\ & ((!\SelBus[0]~input_o\) # (\inst1|inst20|Regist\(5)))) ) ) # ( !\inst1|inst20|Regist\(3) & ( (\SelBus[2]~input_o\ & (\SelBus[0]~input_o\ & \inst1|inst20|Regist\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010101010000010101010101000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[2]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst1|inst20|ALT_INV_Regist\(5),
	dataf => \inst1|inst20|ALT_INV_Regist\(3),
	combout => \inst1|inst20|Mux3~1_combout\);

-- Location: LABCELL_X36_Y1_N42
\inst1|inst20|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst20|Add0~13_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\)) # (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst1|inst24|ALU_Result\(4))))) ) + ( !\inst1|inst20|Regist\(4) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) 
-- ) + ( \inst1|inst20|Add0~18\ ))
-- \inst1|inst20|Add0~14\ = CARRY(( (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\)) # (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst1|inst24|ALU_Result\(4))))) ) + ( !\inst1|inst20|Regist\(4) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst1|inst20|Add0~18\ ))

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
	datad => \inst1|inst24|ALT_INV_ALU_Result\(4),
	dataf => \inst1|inst20|ALT_INV_Regist\(4),
	cin => \inst1|inst20|Add0~18\,
	sumout => \inst1|inst20|Add0~13_sumout\,
	cout => \inst1|inst20|Add0~14\);

-- Location: LABCELL_X36_Y1_N12
\inst1|inst20|Mux3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst20|Mux3~2_combout\ = ( \inst1|inst20|Add0~13_sumout\ & ( (((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst20|Mux3~0_combout\)) # (\inst1|inst20|Mux3~1_combout\)) # (\inst1|inst8|Mux3~0_combout\) ) ) # ( !\inst1|inst20|Add0~13_sumout\ & ( 
-- ((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst20|Mux3~0_combout\)) # (\inst1|inst20|Mux3~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111111000001011111111100110111111111110011011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Regist[4]~0_combout\,
	datab => \inst1|inst8|ALT_INV_Mux3~0_combout\,
	datac => \inst1|inst20|ALT_INV_Mux3~0_combout\,
	datad => \inst1|inst20|ALT_INV_Mux3~1_combout\,
	dataf => \inst1|inst20|ALT_INV_Add0~13_sumout\,
	combout => \inst1|inst20|Mux3~2_combout\);

-- Location: FF_X36_Y1_N14
\inst1|inst20|Regist[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst20|Mux3~2_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[4]~1_combout\,
	ena => \inst1|inst20|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst20|Regist\(4));

-- Location: LABCELL_X36_Y1_N45
\inst1|inst20|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst20|Add0~9_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\)) # (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst1|inst24|ALU_Result\(5))))) ) + ( !\inst1|inst20|Regist\(5) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) 
-- + ( \inst1|inst20|Add0~14\ ))
-- \inst1|inst20|Add0~10\ = CARRY(( (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\)) # (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst1|inst24|ALU_Result\(5))))) ) + ( !\inst1|inst20|Regist\(5) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst1|inst20|Add0~14\ ))

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
	datad => \inst1|inst24|ALT_INV_ALU_Result\(5),
	dataf => \inst1|inst20|ALT_INV_Regist\(5),
	cin => \inst1|inst20|Add0~14\,
	sumout => \inst1|inst20|Add0~9_sumout\,
	cout => \inst1|inst20|Add0~10\);

-- Location: LABCELL_X36_Y1_N48
\inst1|inst20|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst20|Add0~5_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\)) # (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst1|inst24|ALU_Result\(6))))) ) + ( !\inst1|inst20|Regist\(6) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) 
-- + ( \inst1|inst20|Add0~10\ ))
-- \inst1|inst20|Add0~6\ = CARRY(( (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\)) # (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst1|inst24|ALU_Result\(6))))) ) + ( !\inst1|inst20|Regist\(6) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst1|inst20|Add0~10\ ))

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
	datad => \inst1|inst24|ALT_INV_ALU_Result\(6),
	dataf => \inst1|inst20|ALT_INV_Regist\(6),
	cin => \inst1|inst20|Add0~10\,
	sumout => \inst1|inst20|Add0~5_sumout\,
	cout => \inst1|inst20|Add0~6\);

-- Location: LABCELL_X36_Y1_N51
\inst1|inst20|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst20|Add0~1_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\)) # (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst1|inst24|ALU_Result\(7))))) ) + ( !\inst1|inst20|Regist\(7) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) 
-- + ( \inst1|inst20|Add0~6\ ))

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
	datad => \inst1|inst24|ALT_INV_ALU_Result\(7),
	dataf => \inst1|inst20|ALT_INV_Regist\(7),
	cin => \inst1|inst20|Add0~6\,
	sumout => \inst1|inst20|Add0~1_sumout\);

-- Location: LABCELL_X35_Y1_N51
\inst1|inst20|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst20|Mux0~1_combout\ = ( \inst1|inst20|Mux0~0_combout\ & ( \inst1|inst20|Add0~1_sumout\ & ( ((!\inst1|inst8|Regist[7]~7_combout\) # (\inst1|inst20|Regist\(0))) # (\inst1|inst8|Regist[0]~4_combout\) ) ) ) # ( !\inst1|inst20|Mux0~0_combout\ & ( 
-- \inst1|inst20|Add0~1_sumout\ & ( ((\inst1|inst20|Regist\(0) & \inst1|inst8|Regist[7]~7_combout\)) # (\inst1|inst8|Regist[0]~4_combout\) ) ) ) # ( \inst1|inst20|Mux0~0_combout\ & ( !\inst1|inst20|Add0~1_sumout\ & ( (!\inst1|inst8|Regist[0]~4_combout\ & 
-- ((!\inst1|inst8|Regist[7]~7_combout\) # (\inst1|inst20|Regist\(0)))) ) ) ) # ( !\inst1|inst20|Mux0~0_combout\ & ( !\inst1|inst20|Add0~1_sumout\ & ( (!\inst1|inst8|Regist[0]~4_combout\ & (\inst1|inst20|Regist\(0) & \inst1|inst8|Regist[7]~7_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010101010100010001001010101011101111111111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Regist[0]~4_combout\,
	datab => \inst1|inst20|ALT_INV_Regist\(0),
	datad => \inst1|inst8|ALT_INV_Regist[7]~7_combout\,
	datae => \inst1|inst20|ALT_INV_Mux0~0_combout\,
	dataf => \inst1|inst20|ALT_INV_Add0~1_sumout\,
	combout => \inst1|inst20|Mux0~1_combout\);

-- Location: FF_X35_Y1_N53
\inst1|inst20|Regist[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst20|Mux0~1_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[7]~8_combout\,
	ena => \inst1|inst20|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst20|Regist\(7));

-- Location: LABCELL_X37_Y1_N0
\inst1|inst20|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst20|Mux1~1_combout\ = ( \SelBus[0]~input_o\ & ( (\inst1|inst20|Regist\(7) & \SelBus[2]~input_o\) ) ) # ( !\SelBus[0]~input_o\ & ( (\SelBus[2]~input_o\ & \inst1|inst20|Regist\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst20|ALT_INV_Regist\(7),
	datac => \ALT_INV_SelBus[2]~input_o\,
	datad => \inst1|inst20|ALT_INV_Regist\(5),
	dataf => \ALT_INV_SelBus[0]~input_o\,
	combout => \inst1|inst20|Mux1~1_combout\);

-- Location: LABCELL_X36_Y1_N57
\inst1|inst20|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst20|Mux1~0_combout\ = ( \inst1|inst24|ALU_Result\(6) & ( (!\SelBus[1]~input_o\) # (!\inst1|inst20|Regist\(6)) ) ) # ( !\inst1|inst24|ALU_Result\(6) & ( (\SelBus[1]~input_o\ & !\inst1|inst20|Regist\(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000011111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SelBus[1]~input_o\,
	datad => \inst1|inst20|ALT_INV_Regist\(6),
	dataf => \inst1|inst24|ALT_INV_ALU_Result\(6),
	combout => \inst1|inst20|Mux1~0_combout\);

-- Location: LABCELL_X36_Y1_N0
\inst1|inst20|Mux1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst20|Mux1~2_combout\ = ( \inst1|inst20|Add0~5_sumout\ & ( (((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst20|Mux1~0_combout\)) # (\inst1|inst20|Mux1~1_combout\)) # (\inst1|inst8|Mux3~0_combout\) ) ) # ( !\inst1|inst20|Add0~5_sumout\ & ( 
-- ((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst20|Mux1~0_combout\)) # (\inst1|inst20|Mux1~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011111000011110101111100111111011111110011111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Regist[4]~0_combout\,
	datab => \inst1|inst8|ALT_INV_Mux3~0_combout\,
	datac => \inst1|inst20|ALT_INV_Mux1~1_combout\,
	datad => \inst1|inst20|ALT_INV_Mux1~0_combout\,
	dataf => \inst1|inst20|ALT_INV_Add0~5_sumout\,
	combout => \inst1|inst20|Mux1~2_combout\);

-- Location: FF_X36_Y1_N2
\inst1|inst20|Regist[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst20|Mux1~2_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[4]~1_combout\,
	ena => \inst1|inst20|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst20|Regist\(6));

-- Location: LABCELL_X37_Y1_N27
\inst1|inst20|Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst20|Mux2~1_combout\ = ( \inst1|inst20|Regist\(4) & ( (\SelBus[2]~input_o\ & ((!\SelBus[0]~input_o\) # (\inst1|inst20|Regist\(6)))) ) ) # ( !\inst1|inst20|Regist\(4) & ( (\SelBus[2]~input_o\ & (\SelBus[0]~input_o\ & \inst1|inst20|Regist\(6))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010101010000010101010101000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[2]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst1|inst20|ALT_INV_Regist\(6),
	dataf => \inst1|inst20|ALT_INV_Regist\(4),
	combout => \inst1|inst20|Mux2~1_combout\);

-- Location: LABCELL_X36_Y1_N9
\inst1|inst20|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst20|Mux2~0_combout\ = ( \inst1|inst24|ALU_Result\(5) & ( (!\inst1|inst20|Regist\(5)) # (!\SelBus[1]~input_o\) ) ) # ( !\inst1|inst24|ALU_Result\(5) & ( (!\inst1|inst20|Regist\(5) & \SelBus[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst20|ALT_INV_Regist\(5),
	datad => \ALT_INV_SelBus[1]~input_o\,
	dataf => \inst1|inst24|ALT_INV_ALU_Result\(5),
	combout => \inst1|inst20|Mux2~0_combout\);

-- Location: LABCELL_X36_Y1_N6
\inst1|inst20|Mux2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst20|Mux2~2_combout\ = ( \inst1|inst20|Add0~9_sumout\ & ( (((\inst1|inst20|Mux2~0_combout\ & \inst1|inst8|Regist[4]~0_combout\)) # (\inst1|inst8|Mux3~0_combout\)) # (\inst1|inst20|Mux2~1_combout\) ) ) # ( !\inst1|inst20|Add0~9_sumout\ & ( 
-- ((\inst1|inst20|Mux2~0_combout\ & \inst1|inst8|Regist[4]~0_combout\)) # (\inst1|inst20|Mux2~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011101010111010101110101011101010111111111110101011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst20|ALT_INV_Mux2~1_combout\,
	datab => \inst1|inst20|ALT_INV_Mux2~0_combout\,
	datac => \inst1|inst8|ALT_INV_Regist[4]~0_combout\,
	datad => \inst1|inst8|ALT_INV_Mux3~0_combout\,
	dataf => \inst1|inst20|ALT_INV_Add0~9_sumout\,
	combout => \inst1|inst20|Mux2~2_combout\);

-- Location: FF_X36_Y1_N8
\inst1|inst20|Regist[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst20|Mux2~2_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[4]~1_combout\,
	ena => \inst1|inst20|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst20|Regist\(5));

-- Location: MLABCELL_X34_Y3_N6
\inst1|inst16|result[5]~282\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|result[5]~282_combout\ = ( \inst1|inst1|Regist\(5) & ( \inst1|inst8|Regist\(5) & ( (!\inst1|inst16|_~3_combout\ & (!\inst1|inst16|_~2_combout\ & ((!\inst1|inst16|_~1_combout\) # (!\inst1|inst14|Regist\(5))))) ) ) ) # ( 
-- !\inst1|inst1|Regist\(5) & ( \inst1|inst8|Regist\(5) & ( (!\inst1|inst16|_~3_combout\ & ((!\inst1|inst16|_~1_combout\) # (!\inst1|inst14|Regist\(5)))) ) ) ) # ( \inst1|inst1|Regist\(5) & ( !\inst1|inst8|Regist\(5) & ( (!\inst1|inst16|_~2_combout\ & 
-- ((!\inst1|inst16|_~1_combout\) # (!\inst1|inst14|Regist\(5)))) ) ) ) # ( !\inst1|inst1|Regist\(5) & ( !\inst1|inst8|Regist\(5) & ( (!\inst1|inst16|_~1_combout\) # (!\inst1|inst14|Regist\(5)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010111110100000000011001000110010001100100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst16|ALT_INV__~1_combout\,
	datab => \inst1|inst16|ALT_INV__~3_combout\,
	datac => \inst1|inst14|ALT_INV_Regist\(5),
	datad => \inst1|inst16|ALT_INV__~2_combout\,
	datae => \inst1|inst1|ALT_INV_Regist\(5),
	dataf => \inst1|inst8|ALT_INV_Regist\(5),
	combout => \inst1|inst16|result[5]~282_combout\);

-- Location: MLABCELL_X28_Y4_N18
\inst1|inst16|result[5]~283\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|result[5]~283_combout\ = ( \inst1|inst16|result\(5) & ( \inst1|inst7|Regist\(5) & ( (!\inst1|inst16|_~6_combout\ & (!\inst1|inst16|_~4_combout\ & ((!\inst1|inst16|_~5_combout\) # (!\inst1|inst18|Regist\(5))))) ) ) ) # ( 
-- !\inst1|inst16|result\(5) & ( \inst1|inst7|Regist\(5) & ( (!\inst1|inst16|_~4_combout\ & ((!\inst1|inst16|_~5_combout\) # (!\inst1|inst18|Regist\(5)))) ) ) ) # ( \inst1|inst16|result\(5) & ( !\inst1|inst7|Regist\(5) & ( (!\inst1|inst16|_~6_combout\ & 
-- ((!\inst1|inst16|_~5_combout\) # (!\inst1|inst18|Regist\(5)))) ) ) ) # ( !\inst1|inst16|result\(5) & ( !\inst1|inst7|Regist\(5) & ( (!\inst1|inst16|_~5_combout\) # (!\inst1|inst18|Regist\(5)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111001100101010101000100011110000110000001010000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst16|ALT_INV__~6_combout\,
	datab => \inst1|inst16|ALT_INV__~5_combout\,
	datac => \inst1|inst16|ALT_INV__~4_combout\,
	datad => \inst1|inst18|ALT_INV_Regist\(5),
	datae => \inst1|inst16|ALT_INV_result\(5),
	dataf => \inst1|inst7|ALT_INV_Regist\(5),
	combout => \inst1|inst16|result[5]~283_combout\);

-- Location: LABCELL_X30_Y1_N9
\inst1|inst16|result[5]~284\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|result[5]~284_combout\ = ( \inst1|inst|altsyncram_component|auto_generated|q_a\(5) & ( (\muxSel[3]~input_o\ & (\inst1|inst16|_~7_combout\ & ((\inst1|inst19|Regist\(5)) # (\muxSel[2]~input_o\)))) ) ) # ( 
-- !\inst1|inst|altsyncram_component|auto_generated|q_a\(5) & ( (\muxSel[3]~input_o\ & (!\muxSel[2]~input_o\ & (\inst1|inst16|_~7_combout\ & \inst1|inst19|Regist\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000001000001010000000100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_muxSel[3]~input_o\,
	datab => \ALT_INV_muxSel[2]~input_o\,
	datac => \inst1|inst16|ALT_INV__~7_combout\,
	datad => \inst1|inst19|ALT_INV_Regist\(5),
	dataf => \inst1|inst|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	combout => \inst1|inst16|result[5]~284_combout\);

-- Location: IOIBUF_X60_Y0_N18
\Fuente5~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Fuente5,
	o => \Fuente5~input_o\);

-- Location: LABCELL_X36_Y4_N15
\inst1|inst16|result[5]~288\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|result[5]~288_combout\ = ( \inst1|inst16|_~17_combout\ & ( (\Fuente5~input_o\ & ((!\muxSel[2]~input_o\) # (!\muxSel[3]~input_o\))) ) ) # ( !\inst1|inst16|_~17_combout\ & ( (\inst1|inst16|_~18_combout\ & (\Fuente5~input_o\ & 
-- ((!\muxSel[2]~input_o\) # (!\muxSel[3]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000100000001010000010000001111000011000000111100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst16|ALT_INV__~18_combout\,
	datab => \ALT_INV_muxSel[2]~input_o\,
	datac => \ALT_INV_Fuente5~input_o\,
	datad => \ALT_INV_muxSel[3]~input_o\,
	dataf => \inst1|inst16|ALT_INV__~17_combout\,
	combout => \inst1|inst16|result[5]~288_combout\);

-- Location: IOIBUF_X28_Y81_N18
\Destino5~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Destino5,
	o => \Destino5~input_o\);

-- Location: MLABCELL_X28_Y2_N48
\inst1|inst16|result[5]~286\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|result[5]~286_combout\ = ( \inst1|inst5|Regist\(5) & ( \inst1|inst10|Regist\(5) & ( (!\inst1|inst16|_~12_combout\ & (!\inst1|inst16|_~11_combout\ & ((!\inst1|inst16|_~13_combout\) # (!\Destino5~input_o\)))) ) ) ) # ( !\inst1|inst5|Regist\(5) 
-- & ( \inst1|inst10|Regist\(5) & ( (!\inst1|inst16|_~12_combout\ & ((!\inst1|inst16|_~13_combout\) # (!\Destino5~input_o\))) ) ) ) # ( \inst1|inst5|Regist\(5) & ( !\inst1|inst10|Regist\(5) & ( (!\inst1|inst16|_~11_combout\ & ((!\inst1|inst16|_~13_combout\) 
-- # (!\Destino5~input_o\))) ) ) ) # ( !\inst1|inst5|Regist\(5) & ( !\inst1|inst10|Regist\(5) & ( (!\inst1|inst16|_~13_combout\) # (!\Destino5~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110101010111100001010000011001100100010001100000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst16|ALT_INV__~13_combout\,
	datab => \inst1|inst16|ALT_INV__~12_combout\,
	datac => \inst1|inst16|ALT_INV__~11_combout\,
	datad => \ALT_INV_Destino5~input_o\,
	datae => \inst1|inst5|ALT_INV_Regist\(5),
	dataf => \inst1|inst10|ALT_INV_Regist\(5),
	combout => \inst1|inst16|result[5]~286_combout\);

-- Location: LABCELL_X36_Y4_N42
\inst1|inst16|result[5]~289\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|result[5]~289_combout\ = ( \inst1|inst16|_~19_combout\ & ( \inst1|inst16|_~22_combout\ & ( \Fuente5~input_o\ ) ) ) # ( !\inst1|inst16|_~19_combout\ & ( \inst1|inst16|_~22_combout\ & ( \Fuente5~input_o\ ) ) ) # ( \inst1|inst16|_~19_combout\ & 
-- ( !\inst1|inst16|_~22_combout\ & ( \Fuente5~input_o\ ) ) ) # ( !\inst1|inst16|_~19_combout\ & ( !\inst1|inst16|_~22_combout\ & ( (\Fuente5~input_o\ & (((\inst1|inst16|_~21_combout\) # (\inst1|inst16|_~20_combout\)) # (\inst1|inst16|_~23_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst16|ALT_INV__~23_combout\,
	datab => \ALT_INV_Fuente5~input_o\,
	datac => \inst1|inst16|ALT_INV__~20_combout\,
	datad => \inst1|inst16|ALT_INV__~21_combout\,
	datae => \inst1|inst16|ALT_INV__~19_combout\,
	dataf => \inst1|inst16|ALT_INV__~22_combout\,
	combout => \inst1|inst16|result[5]~289_combout\);

-- Location: LABCELL_X30_Y5_N42
\inst1|inst16|result[5]~285\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|result[5]~285_combout\ = ( \inst1|inst17|Regist\(5) & ( \inst1|inst6|Regist\(5) & ( (!\inst1|inst16|_~10_combout\ & (!\inst1|inst16|_~8_combout\ & ((!\inst1|inst16|_~9_combout\) # (!\inst1|inst9|Regist\(5))))) ) ) ) # ( 
-- !\inst1|inst17|Regist\(5) & ( \inst1|inst6|Regist\(5) & ( (!\inst1|inst16|_~8_combout\ & ((!\inst1|inst16|_~9_combout\) # (!\inst1|inst9|Regist\(5)))) ) ) ) # ( \inst1|inst17|Regist\(5) & ( !\inst1|inst6|Regist\(5) & ( (!\inst1|inst16|_~10_combout\ & 
-- ((!\inst1|inst16|_~9_combout\) # (!\inst1|inst9|Regist\(5)))) ) ) ) # ( !\inst1|inst17|Regist\(5) & ( !\inst1|inst6|Regist\(5) & ( (!\inst1|inst16|_~9_combout\) # (!\inst1|inst9|Regist\(5)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110101010110011001000100011110000101000001100000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst16|ALT_INV__~9_combout\,
	datab => \inst1|inst16|ALT_INV__~10_combout\,
	datac => \inst1|inst16|ALT_INV__~8_combout\,
	datad => \inst1|inst9|ALT_INV_Regist\(5),
	datae => \inst1|inst17|ALT_INV_Regist\(5),
	dataf => \inst1|inst6|ALT_INV_Regist\(5),
	combout => \inst1|inst16|result[5]~285_combout\);

-- Location: LABCELL_X31_Y6_N9
\inst1|inst16|result[5]~287\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|result[5]~287_combout\ = ( \inst1|inst2|Regist\(5) & ( \inst1|inst11|Regist\(5) & ( (!\inst1|inst16|_~15_combout\ & (!\inst1|inst16|_~14_combout\ & ((!\inst1|inst16|_~16_combout\) # (!\Fuente5~input_o\)))) ) ) ) # ( !\inst1|inst2|Regist\(5) 
-- & ( \inst1|inst11|Regist\(5) & ( (!\inst1|inst16|_~14_combout\ & ((!\inst1|inst16|_~16_combout\) # (!\Fuente5~input_o\))) ) ) ) # ( \inst1|inst2|Regist\(5) & ( !\inst1|inst11|Regist\(5) & ( (!\inst1|inst16|_~15_combout\ & ((!\inst1|inst16|_~16_combout\) # 
-- (!\Fuente5~input_o\))) ) ) ) # ( !\inst1|inst2|Regist\(5) & ( !\inst1|inst11|Regist\(5) & ( (!\inst1|inst16|_~16_combout\) # (!\Fuente5~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011111100101010001010100011111100000000001010100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst16|ALT_INV__~15_combout\,
	datab => \inst1|inst16|ALT_INV__~16_combout\,
	datac => \ALT_INV_Fuente5~input_o\,
	datad => \inst1|inst16|ALT_INV__~14_combout\,
	datae => \inst1|inst2|ALT_INV_Regist\(5),
	dataf => \inst1|inst11|ALT_INV_Regist\(5),
	combout => \inst1|inst16|result[5]~287_combout\);

-- Location: LABCELL_X31_Y5_N33
\inst1|inst16|result[5]~290\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|result[5]~290_combout\ = ( \inst1|inst16|result[5]~285_combout\ & ( \inst1|inst16|result[5]~287_combout\ & ( (!\inst1|inst16|result[5]~288_combout\ & (\inst1|inst16|result[5]~286_combout\ & !\inst1|inst16|result[5]~289_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst16|ALT_INV_result[5]~288_combout\,
	datac => \inst1|inst16|ALT_INV_result[5]~286_combout\,
	datad => \inst1|inst16|ALT_INV_result[5]~289_combout\,
	datae => \inst1|inst16|ALT_INV_result[5]~285_combout\,
	dataf => \inst1|inst16|ALT_INV_result[5]~287_combout\,
	combout => \inst1|inst16|result[5]~290_combout\);

-- Location: LABCELL_X31_Y5_N48
\inst1|inst16|result[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|result\(5) = ( \inst1|inst16|result[5]~284_combout\ & ( \inst1|inst16|result[5]~290_combout\ ) ) # ( !\inst1|inst16|result[5]~284_combout\ & ( \inst1|inst16|result[5]~290_combout\ & ( (!\inst1|inst16|result[5]~282_combout\) # 
-- ((!\inst1|inst16|result[5]~283_combout\) # ((\inst1|inst20|Regist\(5) & \inst1|inst16|_~0_combout\))) ) ) ) # ( \inst1|inst16|result[5]~284_combout\ & ( !\inst1|inst16|result[5]~290_combout\ ) ) # ( !\inst1|inst16|result[5]~284_combout\ & ( 
-- !\inst1|inst16|result[5]~290_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111100011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst20|ALT_INV_Regist\(5),
	datab => \inst1|inst16|ALT_INV__~0_combout\,
	datac => \inst1|inst16|ALT_INV_result[5]~282_combout\,
	datad => \inst1|inst16|ALT_INV_result[5]~283_combout\,
	datae => \inst1|inst16|ALT_INV_result[5]~284_combout\,
	dataf => \inst1|inst16|ALT_INV_result[5]~290_combout\,
	combout => \inst1|inst16|result\(5));

-- Location: MLABCELL_X28_Y4_N3
\inst1|inst18|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst18|Mux2~0_combout\ = ( \inst1|inst18|Regist\(5) & ( (!\SelBus[1]~input_o\ & \inst1|inst16|result\(5)) ) ) # ( !\inst1|inst18|Regist\(5) & ( (\inst1|inst16|result\(5)) # (\SelBus[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SelBus[1]~input_o\,
	datad => \inst1|inst16|ALT_INV_result\(5),
	dataf => \inst1|inst18|ALT_INV_Regist\(5),
	combout => \inst1|inst18|Mux2~0_combout\);

-- Location: MLABCELL_X28_Y4_N9
\inst1|inst18|Mux2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst18|Mux2~2_combout\ = ( \inst1|inst18|Add0~9_sumout\ & ( (((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst18|Mux2~0_combout\)) # (\inst1|inst18|Mux2~1_combout\)) # (\inst1|inst8|Mux3~0_combout\) ) ) # ( !\inst1|inst18|Add0~9_sumout\ & ( 
-- ((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst18|Mux2~0_combout\)) # (\inst1|inst18|Mux2~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111111000011110011111101011111011111110101111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Mux3~0_combout\,
	datab => \inst1|inst8|ALT_INV_Regist[4]~0_combout\,
	datac => \inst1|inst18|ALT_INV_Mux2~1_combout\,
	datad => \inst1|inst18|ALT_INV_Mux2~0_combout\,
	dataf => \inst1|inst18|ALT_INV_Add0~9_sumout\,
	combout => \inst1|inst18|Mux2~2_combout\);

-- Location: FF_X28_Y4_N11
\inst1|inst18|Regist[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst18|Mux2~2_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[4]~1_combout\,
	ena => \inst1|inst18|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst18|Regist\(5));

-- Location: LABCELL_X27_Y4_N3
\inst1|inst18|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst18|Mux1~1_combout\ = ( \inst1|inst18|Regist\(5) & ( \inst1|inst18|Regist\(7) & ( \SelBus[2]~input_o\ ) ) ) # ( !\inst1|inst18|Regist\(5) & ( \inst1|inst18|Regist\(7) & ( (\SelBus[2]~input_o\ & \SelBus[0]~input_o\) ) ) ) # ( 
-- \inst1|inst18|Regist\(5) & ( !\inst1|inst18|Regist\(7) & ( (\SelBus[2]~input_o\ & !\SelBus[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000000000011000000110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SelBus[2]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datae => \inst1|inst18|ALT_INV_Regist\(5),
	dataf => \inst1|inst18|ALT_INV_Regist\(7),
	combout => \inst1|inst18|Mux1~1_combout\);

-- Location: MLABCELL_X28_Y4_N6
\inst1|inst18|Mux1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst18|Mux1~2_combout\ = ( \inst1|inst18|Add0~5_sumout\ & ( (((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst18|Mux1~0_combout\)) # (\inst1|inst18|Mux1~1_combout\)) # (\inst1|inst8|Mux3~0_combout\) ) ) # ( !\inst1|inst18|Add0~5_sumout\ & ( 
-- ((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst18|Mux1~0_combout\)) # (\inst1|inst18|Mux1~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111111000000111111111101010111111111110101011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Mux3~0_combout\,
	datab => \inst1|inst8|ALT_INV_Regist[4]~0_combout\,
	datac => \inst1|inst18|ALT_INV_Mux1~0_combout\,
	datad => \inst1|inst18|ALT_INV_Mux1~1_combout\,
	dataf => \inst1|inst18|ALT_INV_Add0~5_sumout\,
	combout => \inst1|inst18|Mux1~2_combout\);

-- Location: FF_X28_Y4_N8
\inst1|inst18|Regist[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst18|Mux1~2_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[4]~1_combout\,
	ena => \inst1|inst18|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst18|Regist\(6));

-- Location: MLABCELL_X28_Y4_N24
\inst1|inst16|result[6]~274\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|result[6]~274_combout\ = ( \inst1|inst7|Regist\(6) & ( \inst1|inst16|result\(6) & ( (!\inst1|inst16|_~4_combout\ & (!\inst1|inst16|_~6_combout\ & ((!\inst1|inst16|_~5_combout\) # (!\inst1|inst18|Regist\(6))))) ) ) ) # ( 
-- !\inst1|inst7|Regist\(6) & ( \inst1|inst16|result\(6) & ( (!\inst1|inst16|_~6_combout\ & ((!\inst1|inst16|_~5_combout\) # (!\inst1|inst18|Regist\(6)))) ) ) ) # ( \inst1|inst7|Regist\(6) & ( !\inst1|inst16|result\(6) & ( (!\inst1|inst16|_~4_combout\ & 
-- ((!\inst1|inst16|_~5_combout\) # (!\inst1|inst18|Regist\(6)))) ) ) ) # ( !\inst1|inst7|Regist\(6) & ( !\inst1|inst16|result\(6) & ( (!\inst1|inst16|_~5_combout\) # (!\inst1|inst18|Regist\(6)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111001100101010101000100011110000110000001010000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst16|ALT_INV__~4_combout\,
	datab => \inst1|inst16|ALT_INV__~5_combout\,
	datac => \inst1|inst16|ALT_INV__~6_combout\,
	datad => \inst1|inst18|ALT_INV_Regist\(6),
	datae => \inst1|inst7|ALT_INV_Regist\(6),
	dataf => \inst1|inst16|ALT_INV_result\(6),
	combout => \inst1|inst16|result[6]~274_combout\);

-- Location: LABCELL_X30_Y1_N6
\inst1|inst16|result[6]~275\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|result[6]~275_combout\ = ( \inst1|inst|altsyncram_component|auto_generated|q_a\(6) & ( (\muxSel[3]~input_o\ & (\inst1|inst16|_~7_combout\ & ((\inst1|inst19|Regist\(6)) # (\muxSel[2]~input_o\)))) ) ) # ( 
-- !\inst1|inst|altsyncram_component|auto_generated|q_a\(6) & ( (\muxSel[3]~input_o\ & (!\muxSel[2]~input_o\ & (\inst1|inst19|Regist\(6) & \inst1|inst16|_~7_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000101010000000000010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_muxSel[3]~input_o\,
	datab => \ALT_INV_muxSel[2]~input_o\,
	datac => \inst1|inst19|ALT_INV_Regist\(6),
	datad => \inst1|inst16|ALT_INV__~7_combout\,
	dataf => \inst1|inst|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	combout => \inst1|inst16|result[6]~275_combout\);

-- Location: LABCELL_X31_Y2_N0
\inst1|inst16|result[6]~273\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|result[6]~273_combout\ = ( \inst1|inst1|Regist\(6) & ( \inst1|inst14|Regist\(6) & ( (!\inst1|inst16|_~2_combout\ & (!\inst1|inst16|_~1_combout\ & ((!\inst1|inst16|_~3_combout\) # (!\inst1|inst8|Regist\(6))))) ) ) ) # ( 
-- !\inst1|inst1|Regist\(6) & ( \inst1|inst14|Regist\(6) & ( (!\inst1|inst16|_~1_combout\ & ((!\inst1|inst16|_~3_combout\) # (!\inst1|inst8|Regist\(6)))) ) ) ) # ( \inst1|inst1|Regist\(6) & ( !\inst1|inst14|Regist\(6) & ( (!\inst1|inst16|_~2_combout\ & 
-- ((!\inst1|inst16|_~3_combout\) # (!\inst1|inst8|Regist\(6)))) ) ) ) # ( !\inst1|inst1|Regist\(6) & ( !\inst1|inst14|Regist\(6) & ( (!\inst1|inst16|_~3_combout\) # (!\inst1|inst8|Regist\(6)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011111100101010001010100011111100000000001010100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst16|ALT_INV__~2_combout\,
	datab => \inst1|inst16|ALT_INV__~3_combout\,
	datac => \inst1|inst8|ALT_INV_Regist\(6),
	datad => \inst1|inst16|ALT_INV__~1_combout\,
	datae => \inst1|inst1|ALT_INV_Regist\(6),
	dataf => \inst1|inst14|ALT_INV_Regist\(6),
	combout => \inst1|inst16|result[6]~273_combout\);

-- Location: IOIBUF_X50_Y0_N75
\Fuente6~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Fuente6,
	o => \Fuente6~input_o\);

-- Location: LABCELL_X36_Y4_N9
\inst1|inst16|result[6]~280\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|result[6]~280_combout\ = ( \inst1|inst16|_~23_combout\ & ( \inst1|inst16|_~22_combout\ & ( \Fuente6~input_o\ ) ) ) # ( !\inst1|inst16|_~23_combout\ & ( \inst1|inst16|_~22_combout\ & ( \Fuente6~input_o\ ) ) ) # ( \inst1|inst16|_~23_combout\ & 
-- ( !\inst1|inst16|_~22_combout\ & ( \Fuente6~input_o\ ) ) ) # ( !\inst1|inst16|_~23_combout\ & ( !\inst1|inst16|_~22_combout\ & ( (\Fuente6~input_o\ & (((\inst1|inst16|_~20_combout\) # (\inst1|inst16|_~19_combout\)) # (\inst1|inst16|_~21_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Fuente6~input_o\,
	datab => \inst1|inst16|ALT_INV__~21_combout\,
	datac => \inst1|inst16|ALT_INV__~19_combout\,
	datad => \inst1|inst16|ALT_INV__~20_combout\,
	datae => \inst1|inst16|ALT_INV__~23_combout\,
	dataf => \inst1|inst16|ALT_INV__~22_combout\,
	combout => \inst1|inst16|result[6]~280_combout\);

-- Location: LABCELL_X33_Y3_N21
\inst1|inst16|result[6]~279\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|result[6]~279_combout\ = ( \muxSel[2]~input_o\ & ( (!\muxSel[3]~input_o\ & (\Fuente6~input_o\ & ((\inst1|inst16|_~18_combout\) # (\inst1|inst16|_~17_combout\)))) ) ) # ( !\muxSel[2]~input_o\ & ( (\Fuente6~input_o\ & 
-- ((\inst1|inst16|_~18_combout\) # (\inst1|inst16|_~17_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011111000000000101111100000000010011000000000001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst16|ALT_INV__~17_combout\,
	datab => \ALT_INV_muxSel[3]~input_o\,
	datac => \inst1|inst16|ALT_INV__~18_combout\,
	datad => \ALT_INV_Fuente6~input_o\,
	dataf => \ALT_INV_muxSel[2]~input_o\,
	combout => \inst1|inst16|result[6]~279_combout\);

-- Location: IOIBUF_X89_Y4_N61
\Destino6~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Destino6,
	o => \Destino6~input_o\);

-- Location: LABCELL_X27_Y2_N0
\inst1|inst16|result[6]~277\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|result[6]~277_combout\ = ( \inst1|inst16|_~13_combout\ & ( \inst1|inst10|Regist\(6) & ( (!\Destino6~input_o\ & (!\inst1|inst16|_~12_combout\ & ((!\inst1|inst5|Regist\(6)) # (!\inst1|inst16|_~11_combout\)))) ) ) ) # ( 
-- !\inst1|inst16|_~13_combout\ & ( \inst1|inst10|Regist\(6) & ( (!\inst1|inst16|_~12_combout\ & ((!\inst1|inst5|Regist\(6)) # (!\inst1|inst16|_~11_combout\))) ) ) ) # ( \inst1|inst16|_~13_combout\ & ( !\inst1|inst10|Regist\(6) & ( (!\Destino6~input_o\ & 
-- ((!\inst1|inst5|Regist\(6)) # (!\inst1|inst16|_~11_combout\))) ) ) ) # ( !\inst1|inst16|_~13_combout\ & ( !\inst1|inst10|Regist\(6) & ( (!\inst1|inst5|Regist\(6)) # (!\inst1|inst16|_~11_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000101010101010000011001100110000001000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Destino6~input_o\,
	datab => \inst1|inst16|ALT_INV__~12_combout\,
	datac => \inst1|inst5|ALT_INV_Regist\(6),
	datad => \inst1|inst16|ALT_INV__~11_combout\,
	datae => \inst1|inst16|ALT_INV__~13_combout\,
	dataf => \inst1|inst10|ALT_INV_Regist\(6),
	combout => \inst1|inst16|result[6]~277_combout\);

-- Location: LABCELL_X30_Y2_N48
\inst1|inst16|result[6]~276\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|result[6]~276_combout\ = ( \inst1|inst9|Regist\(6) & ( \inst1|inst17|Regist\(6) & ( (!\inst1|inst16|_~10_combout\ & (!\inst1|inst16|_~9_combout\ & ((!\inst1|inst16|_~8_combout\) # (!\inst1|inst6|Regist\(6))))) ) ) ) # ( 
-- !\inst1|inst9|Regist\(6) & ( \inst1|inst17|Regist\(6) & ( (!\inst1|inst16|_~10_combout\ & ((!\inst1|inst16|_~8_combout\) # (!\inst1|inst6|Regist\(6)))) ) ) ) # ( \inst1|inst9|Regist\(6) & ( !\inst1|inst17|Regist\(6) & ( (!\inst1|inst16|_~9_combout\ & 
-- ((!\inst1|inst16|_~8_combout\) # (!\inst1|inst6|Regist\(6)))) ) ) ) # ( !\inst1|inst9|Regist\(6) & ( !\inst1|inst17|Regist\(6) & ( (!\inst1|inst16|_~8_combout\) # (!\inst1|inst6|Regist\(6)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110101010111100001010000011001100100010001100000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst16|ALT_INV__~8_combout\,
	datab => \inst1|inst16|ALT_INV__~10_combout\,
	datac => \inst1|inst16|ALT_INV__~9_combout\,
	datad => \inst1|inst6|ALT_INV_Regist\(6),
	datae => \inst1|inst9|ALT_INV_Regist\(6),
	dataf => \inst1|inst17|ALT_INV_Regist\(6),
	combout => \inst1|inst16|result[6]~276_combout\);

-- Location: LABCELL_X31_Y6_N51
\inst1|inst16|result[6]~278\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|result[6]~278_combout\ = ( \inst1|inst11|Regist\(6) & ( \inst1|inst2|Regist\(6) & ( (!\inst1|inst16|_~14_combout\ & (!\inst1|inst16|_~15_combout\ & ((!\Fuente6~input_o\) # (!\inst1|inst16|_~16_combout\)))) ) ) ) # ( !\inst1|inst11|Regist\(6) 
-- & ( \inst1|inst2|Regist\(6) & ( (!\inst1|inst16|_~15_combout\ & ((!\Fuente6~input_o\) # (!\inst1|inst16|_~16_combout\))) ) ) ) # ( \inst1|inst11|Regist\(6) & ( !\inst1|inst2|Regist\(6) & ( (!\inst1|inst16|_~14_combout\ & ((!\Fuente6~input_o\) # 
-- (!\inst1|inst16|_~16_combout\))) ) ) ) # ( !\inst1|inst11|Regist\(6) & ( !\inst1|inst2|Regist\(6) & ( (!\Fuente6~input_o\) # (!\inst1|inst16|_~16_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011111100101010001010100011111100000000001010100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst16|ALT_INV__~14_combout\,
	datab => \ALT_INV_Fuente6~input_o\,
	datac => \inst1|inst16|ALT_INV__~16_combout\,
	datad => \inst1|inst16|ALT_INV__~15_combout\,
	datae => \inst1|inst11|ALT_INV_Regist\(6),
	dataf => \inst1|inst2|ALT_INV_Regist\(6),
	combout => \inst1|inst16|result[6]~278_combout\);

-- Location: LABCELL_X31_Y2_N12
\inst1|inst16|result[6]~281\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|result[6]~281_combout\ = ( \inst1|inst16|result[6]~276_combout\ & ( \inst1|inst16|result[6]~278_combout\ & ( (!\inst1|inst16|result[6]~280_combout\ & (!\inst1|inst16|result[6]~279_combout\ & \inst1|inst16|result[6]~277_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst16|ALT_INV_result[6]~280_combout\,
	datab => \inst1|inst16|ALT_INV_result[6]~279_combout\,
	datad => \inst1|inst16|ALT_INV_result[6]~277_combout\,
	datae => \inst1|inst16|ALT_INV_result[6]~276_combout\,
	dataf => \inst1|inst16|ALT_INV_result[6]~278_combout\,
	combout => \inst1|inst16|result[6]~281_combout\);

-- Location: LABCELL_X31_Y2_N6
\inst1|inst16|result[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|result\(6) = ( \inst1|inst16|result[6]~273_combout\ & ( \inst1|inst16|result[6]~281_combout\ & ( (!\inst1|inst16|result[6]~274_combout\) # (((\inst1|inst20|Regist\(6) & \inst1|inst16|_~0_combout\)) # (\inst1|inst16|result[6]~275_combout\)) ) 
-- ) ) # ( !\inst1|inst16|result[6]~273_combout\ & ( \inst1|inst16|result[6]~281_combout\ ) ) # ( \inst1|inst16|result[6]~273_combout\ & ( !\inst1|inst16|result[6]~281_combout\ ) ) # ( !\inst1|inst16|result[6]~273_combout\ & ( 
-- !\inst1|inst16|result[6]~281_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111010111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst16|ALT_INV_result[6]~274_combout\,
	datab => \inst1|inst20|ALT_INV_Regist\(6),
	datac => \inst1|inst16|ALT_INV_result[6]~275_combout\,
	datad => \inst1|inst16|ALT_INV__~0_combout\,
	datae => \inst1|inst16|ALT_INV_result[6]~273_combout\,
	dataf => \inst1|inst16|ALT_INV_result[6]~281_combout\,
	combout => \inst1|inst16|result\(6));

-- Location: LABCELL_X31_Y4_N45
\inst1|inst17|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst17|Mux1~0_combout\ = ( \SelBus[1]~input_o\ & ( !\inst1|inst17|Regist\(6) ) ) # ( !\SelBus[1]~input_o\ & ( \inst1|inst16|result\(6) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst17|ALT_INV_Regist\(6),
	datad => \inst1|inst16|ALT_INV_result\(6),
	dataf => \ALT_INV_SelBus[1]~input_o\,
	combout => \inst1|inst17|Mux1~0_combout\);

-- Location: LABCELL_X31_Y4_N3
\inst1|inst17|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst17|Add0~25_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(1))))) ) + ( !\inst1|inst17|Regist\(1) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) 
-- ) + ( \inst1|inst17|Add0~30\ ))
-- \inst1|inst17|Add0~26\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(1))))) ) + ( !\inst1|inst17|Regist\(1) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst1|inst17|Add0~30\ ))

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
	datad => \inst1|inst16|ALT_INV_result\(1),
	dataf => \inst1|inst17|ALT_INV_Regist\(1),
	cin => \inst1|inst17|Add0~30\,
	sumout => \inst1|inst17|Add0~25_sumout\,
	cout => \inst1|inst17|Add0~26\);

-- Location: LABCELL_X31_Y4_N6
\inst1|inst17|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst17|Add0~21_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\)) # (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst1|inst16|result\(2))))) ) + ( !\inst1|inst17|Regist\(2) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + 
-- ( \inst1|inst17|Add0~26\ ))
-- \inst1|inst17|Add0~22\ = CARRY(( (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\)) # (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst1|inst16|result\(2))))) ) + ( !\inst1|inst17|Regist\(2) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst1|inst17|Add0~26\ ))

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
	datad => \inst1|inst16|ALT_INV_result\(2),
	dataf => \inst1|inst17|ALT_INV_Regist\(2),
	cin => \inst1|inst17|Add0~26\,
	sumout => \inst1|inst17|Add0~21_sumout\,
	cout => \inst1|inst17|Add0~22\);

-- Location: LABCELL_X31_Y4_N9
\inst1|inst17|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst17|Add0~17_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\)) # (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst1|inst16|result\(3))))) ) + ( !\inst1|inst17|Regist\(3) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + 
-- ( \inst1|inst17|Add0~22\ ))
-- \inst1|inst17|Add0~18\ = CARRY(( (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\)) # (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst1|inst16|result\(3))))) ) + ( !\inst1|inst17|Regist\(3) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst1|inst17|Add0~22\ ))

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
	datad => \inst1|inst16|ALT_INV_result\(3),
	dataf => \inst1|inst17|ALT_INV_Regist\(3),
	cin => \inst1|inst17|Add0~22\,
	sumout => \inst1|inst17|Add0~17_sumout\,
	cout => \inst1|inst17|Add0~18\);

-- Location: LABCELL_X31_Y4_N12
\inst1|inst17|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst17|Add0~13_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(4))))) ) + ( !\inst1|inst17|Regist\(4) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) 
-- ) + ( \inst1|inst17|Add0~18\ ))
-- \inst1|inst17|Add0~14\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(4))))) ) + ( !\inst1|inst17|Regist\(4) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst1|inst17|Add0~18\ ))

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
	datad => \inst1|inst16|ALT_INV_result\(4),
	dataf => \inst1|inst17|ALT_INV_Regist\(4),
	cin => \inst1|inst17|Add0~18\,
	sumout => \inst1|inst17|Add0~13_sumout\,
	cout => \inst1|inst17|Add0~14\);

-- Location: LABCELL_X31_Y4_N15
\inst1|inst17|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst17|Add0~9_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(5))))) ) + ( !\inst1|inst17|Regist\(5) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) 
-- + ( \inst1|inst17|Add0~14\ ))
-- \inst1|inst17|Add0~10\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst16|result\(5))))) ) + ( !\inst1|inst17|Regist\(5) $ (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( 
-- \inst1|inst17|Add0~14\ ))

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
	datad => \inst1|inst16|ALT_INV_result\(5),
	dataf => \inst1|inst17|ALT_INV_Regist\(5),
	cin => \inst1|inst17|Add0~14\,
	sumout => \inst1|inst17|Add0~9_sumout\,
	cout => \inst1|inst17|Add0~10\);

-- Location: LABCELL_X31_Y4_N18
\inst1|inst17|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst17|Add0~5_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\)) # (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst1|inst16|result\(6))))) ) + ( !\inst1|inst17|Regist\(6) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst1|inst17|Add0~10\ ))
-- \inst1|inst17|Add0~6\ = CARRY(( (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\)) # (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst1|inst16|result\(6))))) ) + ( !\inst1|inst17|Regist\(6) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst1|inst17|Add0~10\ ))

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
	datad => \inst1|inst16|ALT_INV_result\(6),
	dataf => \inst1|inst17|ALT_INV_Regist\(6),
	cin => \inst1|inst17|Add0~10\,
	sumout => \inst1|inst17|Add0~5_sumout\,
	cout => \inst1|inst17|Add0~6\);

-- Location: LABCELL_X31_Y4_N30
\inst1|inst17|Mux1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst17|Mux1~2_combout\ = ( \inst1|inst17|Add0~5_sumout\ & ( (((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst17|Mux1~0_combout\)) # (\inst1|inst17|Mux1~1_combout\)) # (\inst1|inst8|Mux3~0_combout\) ) ) # ( !\inst1|inst17|Add0~5_sumout\ & ( 
-- ((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst17|Mux1~0_combout\)) # (\inst1|inst17|Mux1~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011111000011110101111100111111011111110011111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Regist[4]~0_combout\,
	datab => \inst1|inst8|ALT_INV_Mux3~0_combout\,
	datac => \inst1|inst17|ALT_INV_Mux1~1_combout\,
	datad => \inst1|inst17|ALT_INV_Mux1~0_combout\,
	dataf => \inst1|inst17|ALT_INV_Add0~5_sumout\,
	combout => \inst1|inst17|Mux1~2_combout\);

-- Location: MLABCELL_X28_Y5_N9
\inst1|inst17|Regist[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst17|Regist[6]~0_combout\ = ( !\SelRegD[0]~input_o\ & ( \SelRegD[2]~input_o\ & ( (\inst1|inst6|Regist[6]~0_combout\ & \SelRegD[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000100010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst6|ALT_INV_Regist[6]~0_combout\,
	datab => \ALT_INV_SelRegD[1]~input_o\,
	datae => \ALT_INV_SelRegD[0]~input_o\,
	dataf => \ALT_INV_SelRegD[2]~input_o\,
	combout => \inst1|inst17|Regist[6]~0_combout\);

-- Location: FF_X31_Y4_N32
\inst1|inst17|Regist[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst17|Mux1~2_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[4]~1_combout\,
	ena => \inst1|inst17|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst17|Regist\(6));

-- Location: LABCELL_X33_Y4_N36
\inst1|inst17|Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst17|Mux2~1_combout\ = ( \inst1|inst17|Regist\(4) & ( \inst1|inst17|Regist\(6) & ( \SelBus[2]~input_o\ ) ) ) # ( !\inst1|inst17|Regist\(4) & ( \inst1|inst17|Regist\(6) & ( (\SelBus[0]~input_o\ & \SelBus[2]~input_o\) ) ) ) # ( 
-- \inst1|inst17|Regist\(4) & ( !\inst1|inst17|Regist\(6) & ( (!\SelBus[0]~input_o\ & \SelBus[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000011000000110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SelBus[0]~input_o\,
	datac => \ALT_INV_SelBus[2]~input_o\,
	datae => \inst1|inst17|ALT_INV_Regist\(4),
	dataf => \inst1|inst17|ALT_INV_Regist\(6),
	combout => \inst1|inst17|Mux2~1_combout\);

-- Location: LABCELL_X31_Y4_N57
\inst1|inst17|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst17|Mux2~0_combout\ = ( \inst1|inst17|Regist\(5) & ( (!\SelBus[1]~input_o\ & \inst1|inst16|result\(5)) ) ) # ( !\inst1|inst17|Regist\(5) & ( (\inst1|inst16|result\(5)) # (\SelBus[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SelBus[1]~input_o\,
	datad => \inst1|inst16|ALT_INV_result\(5),
	dataf => \inst1|inst17|ALT_INV_Regist\(5),
	combout => \inst1|inst17|Mux2~0_combout\);

-- Location: LABCELL_X31_Y4_N48
\inst1|inst17|Mux2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst17|Mux2~2_combout\ = ( \inst1|inst17|Add0~9_sumout\ & ( (((\inst1|inst17|Mux2~0_combout\ & \inst1|inst8|Regist[4]~0_combout\)) # (\inst1|inst8|Mux3~0_combout\)) # (\inst1|inst17|Mux2~1_combout\) ) ) # ( !\inst1|inst17|Add0~9_sumout\ & ( 
-- ((\inst1|inst17|Mux2~0_combout\ & \inst1|inst8|Regist[4]~0_combout\)) # (\inst1|inst17|Mux2~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101011111010101010101111101110111011111110111011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst17|ALT_INV_Mux2~1_combout\,
	datab => \inst1|inst8|ALT_INV_Mux3~0_combout\,
	datac => \inst1|inst17|ALT_INV_Mux2~0_combout\,
	datad => \inst1|inst8|ALT_INV_Regist[4]~0_combout\,
	dataf => \inst1|inst17|ALT_INV_Add0~9_sumout\,
	combout => \inst1|inst17|Mux2~2_combout\);

-- Location: FF_X31_Y4_N50
\inst1|inst17|Regist[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst17|Mux2~2_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[4]~1_combout\,
	ena => \inst1|inst17|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst17|Regist\(5));

-- Location: LABCELL_X33_Y4_N15
\inst1|inst17|Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst17|Mux3~1_combout\ = ( \SelBus[2]~input_o\ & ( (!\SelBus[0]~input_o\ & (\inst1|inst17|Regist\(3))) # (\SelBus[0]~input_o\ & ((\inst1|inst17|Regist\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst17|ALT_INV_Regist\(3),
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst1|inst17|ALT_INV_Regist\(5),
	dataf => \ALT_INV_SelBus[2]~input_o\,
	combout => \inst1|inst17|Mux3~1_combout\);

-- Location: LABCELL_X31_Y4_N39
\inst1|inst17|Mux3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst17|Mux3~2_combout\ = ( \inst1|inst17|Add0~13_sumout\ & ( (((\inst1|inst17|Mux3~0_combout\ & \inst1|inst8|Regist[4]~0_combout\)) # (\inst1|inst17|Mux3~1_combout\)) # (\inst1|inst8|Mux3~0_combout\) ) ) # ( !\inst1|inst17|Add0~13_sumout\ & ( 
-- ((\inst1|inst17|Mux3~0_combout\ & \inst1|inst8|Regist[4]~0_combout\)) # (\inst1|inst17|Mux3~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011111000011110101111100111111011111110011111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst17|ALT_INV_Mux3~0_combout\,
	datab => \inst1|inst8|ALT_INV_Mux3~0_combout\,
	datac => \inst1|inst17|ALT_INV_Mux3~1_combout\,
	datad => \inst1|inst8|ALT_INV_Regist[4]~0_combout\,
	dataf => \inst1|inst17|ALT_INV_Add0~13_sumout\,
	combout => \inst1|inst17|Mux3~2_combout\);

-- Location: FF_X31_Y4_N41
\inst1|inst17|Regist[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst17|Mux3~2_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[4]~1_combout\,
	ena => \inst1|inst17|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst17|Regist\(4));

-- Location: LABCELL_X33_Y4_N54
\inst1|inst17|Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst17|Mux4~1_combout\ = ( \SelBus[0]~input_o\ & ( (\inst1|inst17|Regist\(4) & \SelBus[2]~input_o\) ) ) # ( !\SelBus[0]~input_o\ & ( (\SelBus[2]~input_o\ & \inst1|inst17|Regist\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst17|ALT_INV_Regist\(4),
	datac => \ALT_INV_SelBus[2]~input_o\,
	datad => \inst1|inst17|ALT_INV_Regist\(2),
	dataf => \ALT_INV_SelBus[0]~input_o\,
	combout => \inst1|inst17|Mux4~1_combout\);

-- Location: LABCELL_X31_Y4_N42
\inst1|inst17|Mux4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst17|Mux4~2_combout\ = ( \inst1|inst17|Add0~17_sumout\ & ( (((\inst1|inst17|Mux4~0_combout\ & \inst1|inst8|Regist[4]~0_combout\)) # (\inst1|inst17|Mux4~1_combout\)) # (\inst1|inst8|Mux3~0_combout\) ) ) # ( !\inst1|inst17|Add0~17_sumout\ & ( 
-- ((\inst1|inst17|Mux4~0_combout\ & \inst1|inst8|Regist[4]~0_combout\)) # (\inst1|inst17|Mux4~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111111000001011111111100110111111111110011011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst17|ALT_INV_Mux4~0_combout\,
	datab => \inst1|inst8|ALT_INV_Mux3~0_combout\,
	datac => \inst1|inst8|ALT_INV_Regist[4]~0_combout\,
	datad => \inst1|inst17|ALT_INV_Mux4~1_combout\,
	dataf => \inst1|inst17|ALT_INV_Add0~17_sumout\,
	combout => \inst1|inst17|Mux4~2_combout\);

-- Location: FF_X31_Y4_N44
\inst1|inst17|Regist[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst17|Mux4~2_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[4]~1_combout\,
	ena => \inst1|inst17|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst17|Regist\(3));

-- Location: LABCELL_X30_Y3_N18
\inst1|inst17|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst17|Mux5~1_combout\ = ( \SelBus[2]~input_o\ & ( (!\SelBus[0]~input_o\ & ((\inst1|inst17|Regist\(1)))) # (\SelBus[0]~input_o\ & (\inst1|inst17|Regist\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst17|ALT_INV_Regist\(3),
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst1|inst17|ALT_INV_Regist\(1),
	dataf => \ALT_INV_SelBus[2]~input_o\,
	combout => \inst1|inst17|Mux5~1_combout\);

-- Location: LABCELL_X31_Y4_N51
\inst1|inst17|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst17|Mux5~0_combout\ = ( \inst1|inst17|Regist\(2) & ( (!\SelBus[1]~input_o\ & \inst1|inst16|result\(2)) ) ) # ( !\inst1|inst17|Regist\(2) & ( (\inst1|inst16|result\(2)) # (\SelBus[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SelBus[1]~input_o\,
	datad => \inst1|inst16|ALT_INV_result\(2),
	dataf => \inst1|inst17|ALT_INV_Regist\(2),
	combout => \inst1|inst17|Mux5~0_combout\);

-- Location: LABCELL_X31_Y4_N33
\inst1|inst17|Mux5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst17|Mux5~2_combout\ = ( \inst1|inst17|Add0~21_sumout\ & ( (((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst17|Mux5~0_combout\)) # (\inst1|inst17|Mux5~1_combout\)) # (\inst1|inst8|Mux3~0_combout\) ) ) # ( !\inst1|inst17|Add0~21_sumout\ & ( 
-- ((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst17|Mux5~0_combout\)) # (\inst1|inst17|Mux5~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011111000011110101111100111111011111110011111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Regist[4]~0_combout\,
	datab => \inst1|inst8|ALT_INV_Mux3~0_combout\,
	datac => \inst1|inst17|ALT_INV_Mux5~1_combout\,
	datad => \inst1|inst17|ALT_INV_Mux5~0_combout\,
	dataf => \inst1|inst17|ALT_INV_Add0~21_sumout\,
	combout => \inst1|inst17|Mux5~2_combout\);

-- Location: FF_X31_Y4_N35
\inst1|inst17|Regist[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst17|Mux5~2_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[4]~1_combout\,
	ena => \inst1|inst17|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst17|Regist\(2));

-- Location: MLABCELL_X34_Y4_N36
\inst1|inst13|$00000|auto_generated|l1_w2_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst13|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\ = ( \inst1|inst16|result\(2) & ( (!\MUX_MAR~input_o\) # (\inst1|inst17|Regist\(2)) ) ) # ( !\inst1|inst16|result\(2) & ( (\MUX_MAR~input_o\ & \inst1|inst17|Regist\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MUX_MAR~input_o\,
	datac => \inst1|inst17|ALT_INV_Regist\(2),
	dataf => \inst1|inst16|ALT_INV_result\(2),
	combout => \inst1|inst13|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X33_Y4_N6
\inst1|inst1|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst1|Mux5~0_combout\ = ( \inst1|inst1|Regist\(1) & ( (\SelBus[2]~input_o\ & ((!\SelBus[0]~input_o\) # (\inst1|inst1|Regist\(3)))) ) ) # ( !\inst1|inst1|Regist\(1) & ( (\SelBus[2]~input_o\ & (\SelBus[0]~input_o\ & \inst1|inst1|Regist\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000101000100010101010100010001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[2]~input_o\,
	datab => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst1|inst1|ALT_INV_Regist\(3),
	dataf => \inst1|inst1|ALT_INV_Regist\(1),
	combout => \inst1|inst1|Mux5~0_combout\);

-- Location: MLABCELL_X34_Y4_N24
\inst1|inst1|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst1|Mux5~1_combout\ = ( !\SelBus[1]~input_o\ & ( ((!\inst1|inst8|Mux3~0_combout\ & (\inst1|inst8|Regist[4]~0_combout\ & (\inst1|inst13|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\))) # (\inst1|inst8|Mux3~0_combout\ & 
-- (((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst13|$00000|auto_generated|l1_w2_n0_mux_dataout~0_combout\)) # (\inst1|inst1|Add0~21_sumout\)))) # (\inst1|inst1|Mux5~0_combout\) ) ) # ( \SelBus[1]~input_o\ & ( ((!\inst1|inst8|Mux3~0_combout\ & 
-- (\inst1|inst8|Regist[4]~0_combout\ & (!\inst1|inst1|Regist\(2)))) # (\inst1|inst8|Mux3~0_combout\ & (((\inst1|inst8|Regist[4]~0_combout\ & !\inst1|inst1|Regist\(2))) # (\inst1|inst1|Add0~21_sumout\)))) # (\inst1|inst1|Mux5~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001101010111001100000111010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Mux3~0_combout\,
	datab => \inst1|inst8|ALT_INV_Regist[4]~0_combout\,
	datac => \inst1|inst1|ALT_INV_Regist\(2),
	datad => \inst1|inst1|ALT_INV_Add0~21_sumout\,
	datae => \ALT_INV_SelBus[1]~input_o\,
	dataf => \inst1|inst1|ALT_INV_Mux5~0_combout\,
	datag => \inst1|inst13|$00000|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\,
	combout => \inst1|inst1|Mux5~1_combout\);

-- Location: FF_X34_Y4_N26
\inst1|inst1|Regist[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst1|Mux5~1_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[4]~1_combout\,
	ena => \inst1|inst1|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst1|Regist\(2));

-- Location: LABCELL_X33_Y4_N9
\inst1|inst1|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst1|Mux6~0_combout\ = ( \inst1|inst1|Regist\(2) & ( (\SelBus[2]~input_o\ & ((\inst1|inst1|Regist\(0)) # (\SelBus[0]~input_o\))) ) ) # ( !\inst1|inst1|Regist\(2) & ( (\SelBus[2]~input_o\ & (!\SelBus[0]~input_o\ & \inst1|inst1|Regist\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000010101000101010001010100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[2]~input_o\,
	datab => \ALT_INV_SelBus[0]~input_o\,
	datac => \inst1|inst1|ALT_INV_Regist\(0),
	dataf => \inst1|inst1|ALT_INV_Regist\(2),
	combout => \inst1|inst1|Mux6~0_combout\);

-- Location: LABCELL_X33_Y4_N18
\inst1|inst1|Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst1|Mux6~1_combout\ = ( !\SelBus[1]~input_o\ & ( ((!\inst1|inst1|Add0~25_sumout\ & (\inst1|inst8|Regist[4]~0_combout\ & (\inst1|inst13|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\))) # (\inst1|inst1|Add0~25_sumout\ & 
-- (((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst13|$00000|auto_generated|l1_w1_n0_mux_dataout~0_combout\)) # (\inst1|inst8|Mux3~0_combout\)))) # (\inst1|inst1|Mux6~0_combout\) ) ) # ( \SelBus[1]~input_o\ & ( ((!\inst1|inst1|Add0~25_sumout\ & 
-- (\inst1|inst8|Regist[4]~0_combout\ & (!\inst1|inst1|Regist\(1)))) # (\inst1|inst1|Add0~25_sumout\ & (((\inst1|inst8|Regist[4]~0_combout\ & !\inst1|inst1|Regist\(1))) # (\inst1|inst8|Mux3~0_combout\)))) # (\inst1|inst1|Mux6~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001101010111001100000111010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst1|ALT_INV_Add0~25_sumout\,
	datab => \inst1|inst8|ALT_INV_Regist[4]~0_combout\,
	datac => \inst1|inst1|ALT_INV_Regist\(1),
	datad => \inst1|inst8|ALT_INV_Mux3~0_combout\,
	datae => \ALT_INV_SelBus[1]~input_o\,
	dataf => \inst1|inst1|ALT_INV_Mux6~0_combout\,
	datag => \inst1|inst13|$00000|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\,
	combout => \inst1|inst1|Mux6~1_combout\);

-- Location: FF_X33_Y4_N20
\inst1|inst1|Regist[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst1|Mux6~1_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[4]~1_combout\,
	ena => \inst1|inst1|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst1|Regist\(1));

-- Location: LABCELL_X29_Y4_N54
\inst1|inst7|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst7|Mux4~0_combout\ = ( \inst1|inst7|Regist\(3) & ( (!\SelBus[1]~input_o\ & ((!\MUX_MDR~input_o\ & ((\inst1|inst|altsyncram_component|auto_generated|q_a\(3)))) # (\MUX_MDR~input_o\ & (\inst1|inst16|result\(3))))) ) ) # ( !\inst1|inst7|Regist\(3) 
-- & ( ((!\MUX_MDR~input_o\ & ((\inst1|inst|altsyncram_component|auto_generated|q_a\(3)))) # (\MUX_MDR~input_o\ & (\inst1|inst16|result\(3)))) # (\SelBus[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101111111111000110111111111100011011000000000001101100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MUX_MDR~input_o\,
	datab => \inst1|inst16|ALT_INV_result\(3),
	datac => \inst1|inst|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	datad => \ALT_INV_SelBus[1]~input_o\,
	dataf => \inst1|inst7|ALT_INV_Regist\(3),
	combout => \inst1|inst7|Mux4~0_combout\);

-- Location: MLABCELL_X25_Y4_N54
\inst1|inst7|Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst7|Mux4~1_combout\ = ( \inst1|inst7|Regist\(2) & ( (\SelBus[2]~input_o\ & ((!\SelBus[0]~input_o\) # (\inst1|inst7|Regist\(4)))) ) ) # ( !\inst1|inst7|Regist\(2) & ( (\SelBus[0]~input_o\ & (\inst1|inst7|Regist\(4) & \SelBus[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000000110011110000000011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SelBus[0]~input_o\,
	datac => \inst1|inst7|ALT_INV_Regist\(4),
	datad => \ALT_INV_SelBus[2]~input_o\,
	dataf => \inst1|inst7|ALT_INV_Regist\(2),
	combout => \inst1|inst7|Mux4~1_combout\);

-- Location: MLABCELL_X25_Y4_N30
\inst1|inst7|Mux4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst7|Mux4~2_combout\ = ( \inst1|inst7|Add0~17_sumout\ & ( (((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst7|Mux4~0_combout\)) # (\inst1|inst7|Mux4~1_combout\)) # (\inst1|inst8|Mux3~0_combout\) ) ) # ( !\inst1|inst7|Add0~17_sumout\ & ( 
-- ((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst7|Mux4~0_combout\)) # (\inst1|inst7|Mux4~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111111000000111111111101010111111111110101011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Mux3~0_combout\,
	datab => \inst1|inst8|ALT_INV_Regist[4]~0_combout\,
	datac => \inst1|inst7|ALT_INV_Mux4~0_combout\,
	datad => \inst1|inst7|ALT_INV_Mux4~1_combout\,
	dataf => \inst1|inst7|ALT_INV_Add0~17_sumout\,
	combout => \inst1|inst7|Mux4~2_combout\);

-- Location: FF_X25_Y4_N32
\inst1|inst7|Regist[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst7|Mux4~2_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[4]~1_combout\,
	ena => \inst1|inst7|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst7|Regist\(3));

-- Location: MLABCELL_X25_Y4_N24
\inst1|inst16|result[3]~301\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|result[3]~301_combout\ = ( \inst1|inst16|result\(3) & ( \inst1|inst7|Regist\(3) & ( (!\inst1|inst16|_~6_combout\ & (!\inst1|inst16|_~4_combout\ & ((!\inst1|inst16|_~5_combout\) # (!\inst1|inst18|Regist\(3))))) ) ) ) # ( 
-- !\inst1|inst16|result\(3) & ( \inst1|inst7|Regist\(3) & ( (!\inst1|inst16|_~4_combout\ & ((!\inst1|inst16|_~5_combout\) # (!\inst1|inst18|Regist\(3)))) ) ) ) # ( \inst1|inst16|result\(3) & ( !\inst1|inst7|Regist\(3) & ( (!\inst1|inst16|_~6_combout\ & 
-- ((!\inst1|inst16|_~5_combout\) # (!\inst1|inst18|Regist\(3)))) ) ) ) # ( !\inst1|inst16|result\(3) & ( !\inst1|inst7|Regist\(3) & ( (!\inst1|inst16|_~5_combout\) # (!\inst1|inst18|Regist\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000101010101010000011001100110000001000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst16|ALT_INV__~6_combout\,
	datab => \inst1|inst16|ALT_INV__~4_combout\,
	datac => \inst1|inst16|ALT_INV__~5_combout\,
	datad => \inst1|inst18|ALT_INV_Regist\(3),
	datae => \inst1|inst16|ALT_INV_result\(3),
	dataf => \inst1|inst7|ALT_INV_Regist\(3),
	combout => \inst1|inst16|result[3]~301_combout\);

-- Location: LABCELL_X33_Y4_N45
\inst1|inst16|result[3]~300\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|result[3]~300_combout\ = ( \inst1|inst1|Regist\(3) & ( \inst1|inst8|Regist\(3) & ( (!\inst1|inst16|_~2_combout\ & (!\inst1|inst16|_~3_combout\ & ((!\inst1|inst16|_~1_combout\) # (!\inst1|inst14|Regist\(3))))) ) ) ) # ( 
-- !\inst1|inst1|Regist\(3) & ( \inst1|inst8|Regist\(3) & ( (!\inst1|inst16|_~3_combout\ & ((!\inst1|inst16|_~1_combout\) # (!\inst1|inst14|Regist\(3)))) ) ) ) # ( \inst1|inst1|Regist\(3) & ( !\inst1|inst8|Regist\(3) & ( (!\inst1|inst16|_~2_combout\ & 
-- ((!\inst1|inst16|_~1_combout\) # (!\inst1|inst14|Regist\(3)))) ) ) ) # ( !\inst1|inst1|Regist\(3) & ( !\inst1|inst8|Regist\(3) & ( (!\inst1|inst16|_~1_combout\) # (!\inst1|inst14|Regist\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110101010110011001000100011110000101000001100000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst16|ALT_INV__~1_combout\,
	datab => \inst1|inst16|ALT_INV__~2_combout\,
	datac => \inst1|inst16|ALT_INV__~3_combout\,
	datad => \inst1|inst14|ALT_INV_Regist\(3),
	datae => \inst1|inst1|ALT_INV_Regist\(3),
	dataf => \inst1|inst8|ALT_INV_Regist\(3),
	combout => \inst1|inst16|result[3]~300_combout\);

-- Location: LABCELL_X30_Y1_N54
\inst1|inst16|result[3]~302\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|result[3]~302_combout\ = ( \inst1|inst|altsyncram_component|auto_generated|q_a\(3) & ( (\inst1|inst16|_~7_combout\ & (\muxSel[3]~input_o\ & ((\inst1|inst19|Regist\(3)) # (\muxSel[2]~input_o\)))) ) ) # ( 
-- !\inst1|inst|altsyncram_component|auto_generated|q_a\(3) & ( (\inst1|inst16|_~7_combout\ & (!\muxSel[2]~input_o\ & (\muxSel[3]~input_o\ & \inst1|inst19|Regist\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000001000001010000000100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst16|ALT_INV__~7_combout\,
	datab => \ALT_INV_muxSel[2]~input_o\,
	datac => \ALT_INV_muxSel[3]~input_o\,
	datad => \inst1|inst19|ALT_INV_Regist\(3),
	dataf => \inst1|inst|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	combout => \inst1|inst16|result[3]~302_combout\);

-- Location: IOIBUF_X52_Y0_N52
\Fuente3~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Fuente3,
	o => \Fuente3~input_o\);

-- Location: LABCELL_X36_Y4_N21
\inst1|inst16|result[3]~306\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|result[3]~306_combout\ = ( \Fuente3~input_o\ & ( (!\muxSel[3]~input_o\ & (((\inst1|inst16|_~18_combout\) # (\inst1|inst16|_~17_combout\)))) # (\muxSel[3]~input_o\ & (!\muxSel[2]~input_o\ & ((\inst1|inst16|_~18_combout\) # 
-- (\inst1|inst16|_~17_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001110111011100000111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_muxSel[3]~input_o\,
	datab => \ALT_INV_muxSel[2]~input_o\,
	datac => \inst1|inst16|ALT_INV__~17_combout\,
	datad => \inst1|inst16|ALT_INV__~18_combout\,
	dataf => \ALT_INV_Fuente3~input_o\,
	combout => \inst1|inst16|result[3]~306_combout\);

-- Location: LABCELL_X36_Y4_N27
\inst1|inst16|result[3]~307\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|result[3]~307_combout\ = ( \inst1|inst16|_~23_combout\ & ( \Fuente3~input_o\ ) ) # ( !\inst1|inst16|_~23_combout\ & ( \Fuente3~input_o\ & ( (((\inst1|inst16|_~20_combout\) # (\inst1|inst16|_~19_combout\)) # (\inst1|inst16|_~21_combout\)) # 
-- (\inst1|inst16|_~22_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst16|ALT_INV__~22_combout\,
	datab => \inst1|inst16|ALT_INV__~21_combout\,
	datac => \inst1|inst16|ALT_INV__~19_combout\,
	datad => \inst1|inst16|ALT_INV__~20_combout\,
	datae => \inst1|inst16|ALT_INV__~23_combout\,
	dataf => \ALT_INV_Fuente3~input_o\,
	combout => \inst1|inst16|result[3]~307_combout\);

-- Location: IOIBUF_X28_Y0_N52
\Destino3~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Destino3,
	o => \Destino3~input_o\);

-- Location: MLABCELL_X28_Y2_N0
\inst1|inst16|result[3]~304\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|result[3]~304_combout\ = ( \Destino3~input_o\ & ( \inst1|inst5|Regist\(3) & ( (!\inst1|inst16|_~13_combout\ & (!\inst1|inst16|_~11_combout\ & ((!\inst1|inst10|Regist\(3)) # (!\inst1|inst16|_~12_combout\)))) ) ) ) # ( !\Destino3~input_o\ & ( 
-- \inst1|inst5|Regist\(3) & ( (!\inst1|inst16|_~11_combout\ & ((!\inst1|inst10|Regist\(3)) # (!\inst1|inst16|_~12_combout\))) ) ) ) # ( \Destino3~input_o\ & ( !\inst1|inst5|Regist\(3) & ( (!\inst1|inst16|_~13_combout\ & ((!\inst1|inst10|Regist\(3)) # 
-- (!\inst1|inst16|_~12_combout\))) ) ) ) # ( !\Destino3~input_o\ & ( !\inst1|inst5|Regist\(3) & ( (!\inst1|inst10|Regist\(3)) # (!\inst1|inst16|_~12_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000101010101010000011001100110000001000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst16|ALT_INV__~13_combout\,
	datab => \inst1|inst16|ALT_INV__~11_combout\,
	datac => \inst1|inst10|ALT_INV_Regist\(3),
	datad => \inst1|inst16|ALT_INV__~12_combout\,
	datae => \ALT_INV_Destino3~input_o\,
	dataf => \inst1|inst5|ALT_INV_Regist\(3),
	combout => \inst1|inst16|result[3]~304_combout\);

-- Location: LABCELL_X30_Y6_N18
\inst1|inst16|result[3]~305\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|result[3]~305_combout\ = ( \inst1|inst16|_~15_combout\ & ( \inst1|inst11|Regist\(3) & ( (!\inst1|inst16|_~14_combout\ & (!\inst1|inst2|Regist\(3) & ((!\Fuente3~input_o\) # (!\inst1|inst16|_~16_combout\)))) ) ) ) # ( 
-- !\inst1|inst16|_~15_combout\ & ( \inst1|inst11|Regist\(3) & ( (!\inst1|inst16|_~14_combout\ & ((!\Fuente3~input_o\) # (!\inst1|inst16|_~16_combout\))) ) ) ) # ( \inst1|inst16|_~15_combout\ & ( !\inst1|inst11|Regist\(3) & ( (!\inst1|inst2|Regist\(3) & 
-- ((!\Fuente3~input_o\) # (!\inst1|inst16|_~16_combout\))) ) ) ) # ( !\inst1|inst16|_~15_combout\ & ( !\inst1|inst11|Regist\(3) & ( (!\Fuente3~input_o\) # (!\inst1|inst16|_~16_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010111110100000000011001000110010001100100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Fuente3~input_o\,
	datab => \inst1|inst16|ALT_INV__~14_combout\,
	datac => \inst1|inst16|ALT_INV__~16_combout\,
	datad => \inst1|inst2|ALT_INV_Regist\(3),
	datae => \inst1|inst16|ALT_INV__~15_combout\,
	dataf => \inst1|inst11|ALT_INV_Regist\(3),
	combout => \inst1|inst16|result[3]~305_combout\);

-- Location: LABCELL_X30_Y3_N0
\inst1|inst16|result[3]~303\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|result[3]~303_combout\ = ( \inst1|inst17|Regist\(3) & ( \inst1|inst9|Regist\(3) & ( (!\inst1|inst16|_~10_combout\ & (!\inst1|inst16|_~9_combout\ & ((!\inst1|inst16|_~8_combout\) # (!\inst1|inst6|Regist\(3))))) ) ) ) # ( 
-- !\inst1|inst17|Regist\(3) & ( \inst1|inst9|Regist\(3) & ( (!\inst1|inst16|_~9_combout\ & ((!\inst1|inst16|_~8_combout\) # (!\inst1|inst6|Regist\(3)))) ) ) ) # ( \inst1|inst17|Regist\(3) & ( !\inst1|inst9|Regist\(3) & ( (!\inst1|inst16|_~10_combout\ & 
-- ((!\inst1|inst16|_~8_combout\) # (!\inst1|inst6|Regist\(3)))) ) ) ) # ( !\inst1|inst17|Regist\(3) & ( !\inst1|inst9|Regist\(3) & ( (!\inst1|inst16|_~8_combout\) # (!\inst1|inst6|Regist\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010110010001100100011111010000000001100100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst16|ALT_INV__~8_combout\,
	datab => \inst1|inst16|ALT_INV__~10_combout\,
	datac => \inst1|inst6|ALT_INV_Regist\(3),
	datad => \inst1|inst16|ALT_INV__~9_combout\,
	datae => \inst1|inst17|ALT_INV_Regist\(3),
	dataf => \inst1|inst9|ALT_INV_Regist\(3),
	combout => \inst1|inst16|result[3]~303_combout\);

-- Location: LABCELL_X29_Y4_N15
\inst1|inst16|result[3]~308\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|result[3]~308_combout\ = ( \inst1|inst16|result[3]~303_combout\ & ( (!\inst1|inst16|result[3]~306_combout\ & (!\inst1|inst16|result[3]~307_combout\ & (\inst1|inst16|result[3]~304_combout\ & \inst1|inst16|result[3]~305_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst16|ALT_INV_result[3]~306_combout\,
	datab => \inst1|inst16|ALT_INV_result[3]~307_combout\,
	datac => \inst1|inst16|ALT_INV_result[3]~304_combout\,
	datad => \inst1|inst16|ALT_INV_result[3]~305_combout\,
	dataf => \inst1|inst16|ALT_INV_result[3]~303_combout\,
	combout => \inst1|inst16|result[3]~308_combout\);

-- Location: LABCELL_X29_Y4_N6
\inst1|inst16|result[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|result\(3) = ( \inst1|inst16|result[3]~302_combout\ & ( \inst1|inst16|result[3]~308_combout\ ) ) # ( !\inst1|inst16|result[3]~302_combout\ & ( \inst1|inst16|result[3]~308_combout\ & ( (!\inst1|inst16|result[3]~301_combout\) # 
-- ((!\inst1|inst16|result[3]~300_combout\) # ((\inst1|inst16|_~0_combout\ & \inst1|inst20|Regist\(3)))) ) ) ) # ( \inst1|inst16|result[3]~302_combout\ & ( !\inst1|inst16|result[3]~308_combout\ ) ) # ( !\inst1|inst16|result[3]~302_combout\ & ( 
-- !\inst1|inst16|result[3]~308_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111110011011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst16|ALT_INV__~0_combout\,
	datab => \inst1|inst16|ALT_INV_result[3]~301_combout\,
	datac => \inst1|inst20|ALT_INV_Regist\(3),
	datad => \inst1|inst16|ALT_INV_result[3]~300_combout\,
	datae => \inst1|inst16|ALT_INV_result[3]~302_combout\,
	dataf => \inst1|inst16|ALT_INV_result[3]~308_combout\,
	combout => \inst1|inst16|result\(3));

-- Location: MLABCELL_X25_Y4_N57
\inst1|inst18|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst18|Mux4~0_combout\ = ( \inst1|inst16|result\(3) & ( (!\SelBus[1]~input_o\) # (!\inst1|inst18|Regist\(3)) ) ) # ( !\inst1|inst16|result\(3) & ( (\SelBus[1]~input_o\ & !\inst1|inst18|Regist\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000011111010111110101111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datac => \inst1|inst18|ALT_INV_Regist\(3),
	dataf => \inst1|inst16|ALT_INV_result\(3),
	combout => \inst1|inst18|Mux4~0_combout\);

-- Location: MLABCELL_X25_Y4_N0
\inst1|inst18|Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst18|Mux4~1_combout\ = ( \inst1|inst18|Regist\(4) & ( (\SelBus[2]~input_o\ & ((\SelBus[0]~input_o\) # (\inst1|inst18|Regist\(2)))) ) ) # ( !\inst1|inst18|Regist\(4) & ( (\inst1|inst18|Regist\(2) & (!\SelBus[0]~input_o\ & \SelBus[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000000000001111110000000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst18|ALT_INV_Regist\(2),
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \ALT_INV_SelBus[2]~input_o\,
	dataf => \inst1|inst18|ALT_INV_Regist\(4),
	combout => \inst1|inst18|Mux4~1_combout\);

-- Location: MLABCELL_X25_Y4_N12
\inst1|inst18|Mux4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst18|Mux4~2_combout\ = ( \inst1|inst18|Add0~17_sumout\ & ( (((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst18|Mux4~0_combout\)) # (\inst1|inst18|Mux4~1_combout\)) # (\inst1|inst8|Mux3~0_combout\) ) ) # ( !\inst1|inst18|Add0~17_sumout\ & ( 
-- ((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst18|Mux4~0_combout\)) # (\inst1|inst18|Mux4~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111111000000111111111101010111111111110101011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Mux3~0_combout\,
	datab => \inst1|inst8|ALT_INV_Regist[4]~0_combout\,
	datac => \inst1|inst18|ALT_INV_Mux4~0_combout\,
	datad => \inst1|inst18|ALT_INV_Mux4~1_combout\,
	dataf => \inst1|inst18|ALT_INV_Add0~17_sumout\,
	combout => \inst1|inst18|Mux4~2_combout\);

-- Location: FF_X25_Y4_N14
\inst1|inst18|Regist[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst18|Mux4~2_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[4]~1_combout\,
	ena => \inst1|inst18|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst18|Regist\(3));

-- Location: LABCELL_X27_Y4_N9
\inst1|inst18|Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst18|Mux3~1_combout\ = ( \SelBus[2]~input_o\ & ( (!\SelBus[0]~input_o\ & (\inst1|inst18|Regist\(3))) # (\SelBus[0]~input_o\ & ((\inst1|inst18|Regist\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SelBus[0]~input_o\,
	datac => \inst1|inst18|ALT_INV_Regist\(3),
	datad => \inst1|inst18|ALT_INV_Regist\(5),
	dataf => \ALT_INV_SelBus[2]~input_o\,
	combout => \inst1|inst18|Mux3~1_combout\);

-- Location: MLABCELL_X25_Y4_N51
\inst1|inst18|Mux3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst18|Mux3~2_combout\ = ( \inst1|inst18|Add0~13_sumout\ & ( (((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst18|Mux3~0_combout\)) # (\inst1|inst18|Mux3~1_combout\)) # (\inst1|inst8|Mux3~0_combout\) ) ) # ( !\inst1|inst18|Add0~13_sumout\ & ( 
-- ((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst18|Mux3~0_combout\)) # (\inst1|inst18|Mux3~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111111000000111111111101010111111111110101011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Mux3~0_combout\,
	datab => \inst1|inst8|ALT_INV_Regist[4]~0_combout\,
	datac => \inst1|inst18|ALT_INV_Mux3~0_combout\,
	datad => \inst1|inst18|ALT_INV_Mux3~1_combout\,
	dataf => \inst1|inst18|ALT_INV_Add0~13_sumout\,
	combout => \inst1|inst18|Mux3~2_combout\);

-- Location: FF_X25_Y4_N53
\inst1|inst18|Regist[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst18|Mux3~2_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[4]~1_combout\,
	ena => \inst1|inst18|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst18|Regist\(4));

-- Location: MLABCELL_X28_Y4_N39
\inst1|inst16|result[4]~292\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|result[4]~292_combout\ = ( \inst1|inst18|Regist\(4) & ( \inst1|inst7|Regist\(4) & ( (!\inst1|inst16|_~5_combout\ & (!\inst1|inst16|_~4_combout\ & ((!\inst1|inst16|_~6_combout\) # (!\inst1|inst16|result\(4))))) ) ) ) # ( 
-- !\inst1|inst18|Regist\(4) & ( \inst1|inst7|Regist\(4) & ( (!\inst1|inst16|_~4_combout\ & ((!\inst1|inst16|_~6_combout\) # (!\inst1|inst16|result\(4)))) ) ) ) # ( \inst1|inst18|Regist\(4) & ( !\inst1|inst7|Regist\(4) & ( (!\inst1|inst16|_~5_combout\ & 
-- ((!\inst1|inst16|_~6_combout\) # (!\inst1|inst16|result\(4)))) ) ) ) # ( !\inst1|inst18|Regist\(4) & ( !\inst1|inst7|Regist\(4) & ( (!\inst1|inst16|_~6_combout\) # (!\inst1|inst16|result\(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010110010001100100011111010000000001100100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst16|ALT_INV__~6_combout\,
	datab => \inst1|inst16|ALT_INV__~5_combout\,
	datac => \inst1|inst16|ALT_INV_result\(4),
	datad => \inst1|inst16|ALT_INV__~4_combout\,
	datae => \inst1|inst18|ALT_INV_Regist\(4),
	dataf => \inst1|inst7|ALT_INV_Regist\(4),
	combout => \inst1|inst16|result[4]~292_combout\);

-- Location: LABCELL_X35_Y4_N15
\inst1|inst16|result[4]~291\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|result[4]~291_combout\ = ( \inst1|inst8|Regist\(4) & ( \inst1|inst14|Regist\(4) & ( (!\inst1|inst16|_~1_combout\ & (!\inst1|inst16|_~3_combout\ & ((!\inst1|inst1|Regist\(4)) # (!\inst1|inst16|_~2_combout\)))) ) ) ) # ( 
-- !\inst1|inst8|Regist\(4) & ( \inst1|inst14|Regist\(4) & ( (!\inst1|inst16|_~1_combout\ & ((!\inst1|inst1|Regist\(4)) # (!\inst1|inst16|_~2_combout\))) ) ) ) # ( \inst1|inst8|Regist\(4) & ( !\inst1|inst14|Regist\(4) & ( (!\inst1|inst16|_~3_combout\ & 
-- ((!\inst1|inst1|Regist\(4)) # (!\inst1|inst16|_~2_combout\))) ) ) ) # ( !\inst1|inst8|Regist\(4) & ( !\inst1|inst14|Regist\(4) & ( (!\inst1|inst1|Regist\(4)) # (!\inst1|inst16|_~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000110011001100000010101010101000001000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst16|ALT_INV__~1_combout\,
	datab => \inst1|inst16|ALT_INV__~3_combout\,
	datac => \inst1|inst1|ALT_INV_Regist\(4),
	datad => \inst1|inst16|ALT_INV__~2_combout\,
	datae => \inst1|inst8|ALT_INV_Regist\(4),
	dataf => \inst1|inst14|ALT_INV_Regist\(4),
	combout => \inst1|inst16|result[4]~291_combout\);

-- Location: IOIBUF_X32_Y81_N18
\Fuente4~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Fuente4,
	o => \Fuente4~input_o\);

-- Location: LABCELL_X36_Y4_N36
\inst1|inst16|result[4]~298\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|result[4]~298_combout\ = ( \inst1|inst16|_~23_combout\ & ( \Fuente4~input_o\ ) ) # ( !\inst1|inst16|_~23_combout\ & ( \Fuente4~input_o\ & ( (((\inst1|inst16|_~19_combout\) # (\inst1|inst16|_~20_combout\)) # (\inst1|inst16|_~21_combout\)) # 
-- (\inst1|inst16|_~22_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst16|ALT_INV__~22_combout\,
	datab => \inst1|inst16|ALT_INV__~21_combout\,
	datac => \inst1|inst16|ALT_INV__~20_combout\,
	datad => \inst1|inst16|ALT_INV__~19_combout\,
	datae => \inst1|inst16|ALT_INV__~23_combout\,
	dataf => \ALT_INV_Fuente4~input_o\,
	combout => \inst1|inst16|result[4]~298_combout\);

-- Location: LABCELL_X36_Y4_N12
\inst1|inst16|result[4]~297\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|result[4]~297_combout\ = ( \Fuente4~input_o\ & ( (!\inst1|inst16|_~18_combout\ & (\inst1|inst16|_~17_combout\ & ((!\muxSel[2]~input_o\) # (!\muxSel[3]~input_o\)))) # (\inst1|inst16|_~18_combout\ & ((!\muxSel[2]~input_o\) # 
-- ((!\muxSel[3]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001011111010011000101111101001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst16|ALT_INV__~18_combout\,
	datab => \ALT_INV_muxSel[2]~input_o\,
	datac => \inst1|inst16|ALT_INV__~17_combout\,
	datad => \ALT_INV_muxSel[3]~input_o\,
	dataf => \ALT_INV_Fuente4~input_o\,
	combout => \inst1|inst16|result[4]~297_combout\);

-- Location: LABCELL_X31_Y6_N0
\inst1|inst16|result[4]~296\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|result[4]~296_combout\ = ( \inst1|inst2|Regist\(4) & ( \inst1|inst11|Regist\(4) & ( (!\inst1|inst16|_~15_combout\ & (!\inst1|inst16|_~14_combout\ & ((!\inst1|inst16|_~16_combout\) # (!\Fuente4~input_o\)))) ) ) ) # ( !\inst1|inst2|Regist\(4) 
-- & ( \inst1|inst11|Regist\(4) & ( (!\inst1|inst16|_~14_combout\ & ((!\inst1|inst16|_~16_combout\) # (!\Fuente4~input_o\))) ) ) ) # ( \inst1|inst2|Regist\(4) & ( !\inst1|inst11|Regist\(4) & ( (!\inst1|inst16|_~15_combout\ & ((!\inst1|inst16|_~16_combout\) # 
-- (!\Fuente4~input_o\))) ) ) ) # ( !\inst1|inst2|Regist\(4) & ( !\inst1|inst11|Regist\(4) & ( (!\inst1|inst16|_~16_combout\) # (!\Fuente4~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111001100101010101000100011110000110000001010000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst16|ALT_INV__~15_combout\,
	datab => \inst1|inst16|ALT_INV__~16_combout\,
	datac => \inst1|inst16|ALT_INV__~14_combout\,
	datad => \ALT_INV_Fuente4~input_o\,
	datae => \inst1|inst2|ALT_INV_Regist\(4),
	dataf => \inst1|inst11|ALT_INV_Regist\(4),
	combout => \inst1|inst16|result[4]~296_combout\);

-- Location: IOIBUF_X26_Y0_N58
\Destino4~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Destino4,
	o => \Destino4~input_o\);

-- Location: LABCELL_X27_Y2_N30
\inst1|inst16|result[4]~295\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|result[4]~295_combout\ = ( \inst1|inst16|_~13_combout\ & ( \inst1|inst10|Regist\(4) & ( (!\Destino4~input_o\ & (!\inst1|inst16|_~12_combout\ & ((!\inst1|inst16|_~11_combout\) # (!\inst1|inst5|Regist\(4))))) ) ) ) # ( 
-- !\inst1|inst16|_~13_combout\ & ( \inst1|inst10|Regist\(4) & ( (!\inst1|inst16|_~12_combout\ & ((!\inst1|inst16|_~11_combout\) # (!\inst1|inst5|Regist\(4)))) ) ) ) # ( \inst1|inst16|_~13_combout\ & ( !\inst1|inst10|Regist\(4) & ( (!\Destino4~input_o\ & 
-- ((!\inst1|inst16|_~11_combout\) # (!\inst1|inst5|Regist\(4)))) ) ) ) # ( !\inst1|inst16|_~13_combout\ & ( !\inst1|inst10|Regist\(4) & ( (!\inst1|inst16|_~11_combout\) # (!\inst1|inst5|Regist\(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111001100101010101000100011110000110000001010000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Destino4~input_o\,
	datab => \inst1|inst16|ALT_INV__~11_combout\,
	datac => \inst1|inst16|ALT_INV__~12_combout\,
	datad => \inst1|inst5|ALT_INV_Regist\(4),
	datae => \inst1|inst16|ALT_INV__~13_combout\,
	dataf => \inst1|inst10|ALT_INV_Regist\(4),
	combout => \inst1|inst16|result[4]~295_combout\);

-- Location: LABCELL_X30_Y3_N24
\inst1|inst16|result[4]~294\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|result[4]~294_combout\ = ( \inst1|inst9|Regist\(4) & ( \inst1|inst17|Regist\(4) & ( (!\inst1|inst16|_~10_combout\ & (!\inst1|inst16|_~9_combout\ & ((!\inst1|inst16|_~8_combout\) # (!\inst1|inst6|Regist\(4))))) ) ) ) # ( 
-- !\inst1|inst9|Regist\(4) & ( \inst1|inst17|Regist\(4) & ( (!\inst1|inst16|_~10_combout\ & ((!\inst1|inst16|_~8_combout\) # (!\inst1|inst6|Regist\(4)))) ) ) ) # ( \inst1|inst9|Regist\(4) & ( !\inst1|inst17|Regist\(4) & ( (!\inst1|inst16|_~9_combout\ & 
-- ((!\inst1|inst16|_~8_combout\) # (!\inst1|inst6|Regist\(4)))) ) ) ) # ( !\inst1|inst9|Regist\(4) & ( !\inst1|inst17|Regist\(4) & ( (!\inst1|inst16|_~8_combout\) # (!\inst1|inst6|Regist\(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010111110100000000011001000110010001100100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst16|ALT_INV__~8_combout\,
	datab => \inst1|inst16|ALT_INV__~10_combout\,
	datac => \inst1|inst6|ALT_INV_Regist\(4),
	datad => \inst1|inst16|ALT_INV__~9_combout\,
	datae => \inst1|inst9|ALT_INV_Regist\(4),
	dataf => \inst1|inst17|ALT_INV_Regist\(4),
	combout => \inst1|inst16|result[4]~294_combout\);

-- Location: LABCELL_X30_Y4_N54
\inst1|inst16|result[4]~299\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|result[4]~299_combout\ = ( \inst1|inst16|result[4]~295_combout\ & ( \inst1|inst16|result[4]~294_combout\ & ( (!\inst1|inst16|result[4]~298_combout\ & (!\inst1|inst16|result[4]~297_combout\ & \inst1|inst16|result[4]~296_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst16|ALT_INV_result[4]~298_combout\,
	datab => \inst1|inst16|ALT_INV_result[4]~297_combout\,
	datac => \inst1|inst16|ALT_INV_result[4]~296_combout\,
	datae => \inst1|inst16|ALT_INV_result[4]~295_combout\,
	dataf => \inst1|inst16|ALT_INV_result[4]~294_combout\,
	combout => \inst1|inst16|result[4]~299_combout\);

-- Location: LABCELL_X29_Y1_N48
\inst1|inst16|result[4]~293\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|result[4]~293_combout\ = ( \inst1|inst19|Regist\(4) & ( \inst1|inst|altsyncram_component|auto_generated|q_a\(4) & ( (\muxSel[3]~input_o\ & \inst1|inst16|_~7_combout\) ) ) ) # ( !\inst1|inst19|Regist\(4) & ( 
-- \inst1|inst|altsyncram_component|auto_generated|q_a\(4) & ( (\muxSel[2]~input_o\ & (\muxSel[3]~input_o\ & \inst1|inst16|_~7_combout\)) ) ) ) # ( \inst1|inst19|Regist\(4) & ( !\inst1|inst|altsyncram_component|auto_generated|q_a\(4) & ( 
-- (!\muxSel[2]~input_o\ & (\muxSel[3]~input_o\ & \inst1|inst16|_~7_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000001000000001000000010000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_muxSel[2]~input_o\,
	datab => \ALT_INV_muxSel[3]~input_o\,
	datac => \inst1|inst16|ALT_INV__~7_combout\,
	datae => \inst1|inst19|ALT_INV_Regist\(4),
	dataf => \inst1|inst|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	combout => \inst1|inst16|result[4]~293_combout\);

-- Location: LABCELL_X30_Y4_N24
\inst1|inst16|result[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|result\(4) = ( \inst1|inst16|result[4]~299_combout\ & ( \inst1|inst16|result[4]~293_combout\ ) ) # ( !\inst1|inst16|result[4]~299_combout\ & ( \inst1|inst16|result[4]~293_combout\ ) ) # ( \inst1|inst16|result[4]~299_combout\ & ( 
-- !\inst1|inst16|result[4]~293_combout\ & ( (!\inst1|inst16|result[4]~292_combout\) # ((!\inst1|inst16|result[4]~291_combout\) # ((\inst1|inst16|_~0_combout\ & \inst1|inst20|Regist\(4)))) ) ) ) # ( !\inst1|inst16|result[4]~299_combout\ & ( 
-- !\inst1|inst16|result[4]~293_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111110101111101111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst16|ALT_INV_result[4]~292_combout\,
	datab => \inst1|inst16|ALT_INV__~0_combout\,
	datac => \inst1|inst16|ALT_INV_result[4]~291_combout\,
	datad => \inst1|inst20|ALT_INV_Regist\(4),
	datae => \inst1|inst16|ALT_INV_result[4]~299_combout\,
	dataf => \inst1|inst16|ALT_INV_result[4]~293_combout\,
	combout => \inst1|inst16|result\(4));

-- Location: LABCELL_X36_Y2_N3
\inst1|inst4|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst4|Mux3~0_combout\ = ( \inst1|inst16|result\(4) & ( (!\SelBus[1]~input_o\) # (!\inst1|inst4|Regist\(4)) ) ) # ( !\inst1|inst16|result\(4) & ( (\SelBus[1]~input_o\ & !\inst1|inst4|Regist\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000011111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SelBus[1]~input_o\,
	datad => \inst1|inst4|ALT_INV_Regist\(4),
	dataf => \inst1|inst16|ALT_INV_result\(4),
	combout => \inst1|inst4|Mux3~0_combout\);

-- Location: LABCELL_X36_Y2_N24
\inst1|inst4|Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst4|Mux3~1_combout\ = ( \inst1|inst4|Regist\(3) & ( (\SelBus[2]~input_o\ & ((!\SelBus[0]~input_o\) # (\inst1|inst4|Regist\(5)))) ) ) # ( !\inst1|inst4|Regist\(3) & ( (\inst1|inst4|Regist\(5) & (\SelBus[0]~input_o\ & \SelBus[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000000111100110000000011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst4|ALT_INV_Regist\(5),
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \ALT_INV_SelBus[2]~input_o\,
	dataf => \inst1|inst4|ALT_INV_Regist\(3),
	combout => \inst1|inst4|Mux3~1_combout\);

-- Location: LABCELL_X36_Y2_N0
\inst1|inst4|Mux3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst4|Mux3~2_combout\ = ( \inst1|inst4|Mux3~1_combout\ ) # ( !\inst1|inst4|Mux3~1_combout\ & ( (!\inst1|inst8|Regist[4]~0_combout\ & (\inst1|inst8|Mux3~0_combout\ & ((\inst1|inst4|Add0~13_sumout\)))) # (\inst1|inst8|Regist[4]~0_combout\ & 
-- (((\inst1|inst8|Mux3~0_combout\ & \inst1|inst4|Add0~13_sumout\)) # (\inst1|inst4|Mux3~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111000001010011011111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Regist[4]~0_combout\,
	datab => \inst1|inst8|ALT_INV_Mux3~0_combout\,
	datac => \inst1|inst4|ALT_INV_Mux3~0_combout\,
	datad => \inst1|inst4|ALT_INV_Add0~13_sumout\,
	dataf => \inst1|inst4|ALT_INV_Mux3~1_combout\,
	combout => \inst1|inst4|Mux3~2_combout\);

-- Location: FF_X36_Y2_N2
\inst1|inst4|Regist[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst4|Mux3~2_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[4]~1_combout\,
	ena => \inst1|inst4|Regist[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst4|Regist\(4));

-- Location: LABCELL_X35_Y2_N45
\inst1|inst4|Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst4|Mux4~1_combout\ = ( \inst1|inst4|Regist\(2) & ( (\SelBus[2]~input_o\ & ((!\SelBus[0]~input_o\) # (\inst1|inst4|Regist\(4)))) ) ) # ( !\inst1|inst4|Regist\(2) & ( (\SelBus[2]~input_o\ & (\SelBus[0]~input_o\ & \inst1|inst4|Regist\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100110000001100110011000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SelBus[2]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst1|inst4|ALT_INV_Regist\(4),
	dataf => \inst1|inst4|ALT_INV_Regist\(2),
	combout => \inst1|inst4|Mux4~1_combout\);

-- Location: LABCELL_X35_Y2_N48
\inst1|inst4|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst4|Mux4~0_combout\ = ( \inst1|inst16|result\(3) & ( (!\inst1|inst4|Regist\(3)) # (!\SelBus[1]~input_o\) ) ) # ( !\inst1|inst16|result\(3) & ( (!\inst1|inst4|Regist\(3) & \SelBus[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst4|ALT_INV_Regist\(3),
	datad => \ALT_INV_SelBus[1]~input_o\,
	dataf => \inst1|inst16|ALT_INV_result\(3),
	combout => \inst1|inst4|Mux4~0_combout\);

-- Location: LABCELL_X36_Y2_N33
\inst1|inst4|Mux4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst4|Mux4~2_combout\ = ( \inst1|inst4|Add0~17_sumout\ & ( (((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst4|Mux4~0_combout\)) # (\inst1|inst4|Mux4~1_combout\)) # (\inst1|inst8|Mux3~0_combout\) ) ) # ( !\inst1|inst4|Add0~17_sumout\ & ( 
-- ((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst4|Mux4~0_combout\)) # (\inst1|inst4|Mux4~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011111000011110101111100111111011111110011111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Regist[4]~0_combout\,
	datab => \inst1|inst8|ALT_INV_Mux3~0_combout\,
	datac => \inst1|inst4|ALT_INV_Mux4~1_combout\,
	datad => \inst1|inst4|ALT_INV_Mux4~0_combout\,
	dataf => \inst1|inst4|ALT_INV_Add0~17_sumout\,
	combout => \inst1|inst4|Mux4~2_combout\);

-- Location: FF_X36_Y2_N35
\inst1|inst4|Regist[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst4|Mux4~2_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[4]~1_combout\,
	ena => \inst1|inst4|Regist[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst4|Regist\(3));

-- Location: LABCELL_X35_Y2_N27
\inst1|inst4|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst4|Mux5~1_combout\ = ( \SelBus[2]~input_o\ & ( (!\SelBus[0]~input_o\ & ((\inst1|inst4|Regist\(1)))) # (\SelBus[0]~input_o\ & (\inst1|inst4|Regist\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110101001101010011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst4|ALT_INV_Regist\(3),
	datab => \inst1|inst4|ALT_INV_Regist\(1),
	datac => \ALT_INV_SelBus[0]~input_o\,
	dataf => \ALT_INV_SelBus[2]~input_o\,
	combout => \inst1|inst4|Mux5~1_combout\);

-- Location: MLABCELL_X34_Y2_N42
\inst1|inst4|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst4|Mux5~0_combout\ = ( \inst1|inst16|result\(2) & ( (!\inst1|inst4|Regist\(2)) # (!\SelBus[1]~input_o\) ) ) # ( !\inst1|inst16|result\(2) & ( (!\inst1|inst4|Regist\(2) & \SelBus[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110011111111110011001111111111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst4|ALT_INV_Regist\(2),
	datad => \ALT_INV_SelBus[1]~input_o\,
	dataf => \inst1|inst16|ALT_INV_result\(2),
	combout => \inst1|inst4|Mux5~0_combout\);

-- Location: MLABCELL_X34_Y2_N15
\inst1|inst4|Mux5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst4|Mux5~2_combout\ = ( \inst1|inst4|Mux5~0_combout\ & ( (((\inst1|inst8|Mux3~0_combout\ & \inst1|inst4|Add0~21_sumout\)) # (\inst1|inst4|Mux5~1_combout\)) # (\inst1|inst8|Regist[4]~0_combout\) ) ) # ( !\inst1|inst4|Mux5~0_combout\ & ( 
-- ((\inst1|inst8|Mux3~0_combout\ & \inst1|inst4|Add0~21_sumout\)) # (\inst1|inst4|Mux5~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111111000011110011111101011111011111110101111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Regist[4]~0_combout\,
	datab => \inst1|inst8|ALT_INV_Mux3~0_combout\,
	datac => \inst1|inst4|ALT_INV_Mux5~1_combout\,
	datad => \inst1|inst4|ALT_INV_Add0~21_sumout\,
	dataf => \inst1|inst4|ALT_INV_Mux5~0_combout\,
	combout => \inst1|inst4|Mux5~2_combout\);

-- Location: FF_X34_Y2_N17
\inst1|inst4|Regist[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst4|Mux5~2_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[4]~1_combout\,
	ena => \inst1|inst4|Regist[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst4|Regist\(2));

-- Location: LABCELL_X37_Y2_N54
\inst1|inst24|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst24|Mux11~0_combout\ = ( \inst1|inst3|Regist\(2) & ( \AluSel[0]~input_o\ & ( (!\inst1|inst24|Mux13~0_combout\ & (((\inst1|inst24|Add0~21_sumout\)))) # (\inst1|inst24|Mux13~0_combout\ & ((!\inst1|inst4|Regist\(2)) # ((!\AluSel[2]~input_o\)))) ) ) 
-- ) # ( !\inst1|inst3|Regist\(2) & ( \AluSel[0]~input_o\ & ( (!\inst1|inst24|Mux13~0_combout\ & ((\inst1|inst24|Add0~21_sumout\))) # (\inst1|inst24|Mux13~0_combout\ & (\inst1|inst4|Regist\(2))) ) ) ) # ( \inst1|inst3|Regist\(2) & ( !\AluSel[0]~input_o\ & ( 
-- (!\inst1|inst24|Mux13~0_combout\ & (((\inst1|inst24|Add0~21_sumout\)))) # (\inst1|inst24|Mux13~0_combout\ & (!\inst1|inst4|Regist\(2) $ (((!\AluSel[2]~input_o\))))) ) ) ) # ( !\inst1|inst3|Regist\(2) & ( !\AluSel[0]~input_o\ & ( 
-- (!\inst1|inst24|Mux13~0_combout\ & (((\inst1|inst24|Add0~21_sumout\)))) # (\inst1|inst24|Mux13~0_combout\ & (\inst1|inst4|Regist\(2) & ((\AluSel[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110101001101010011101000110101001101010011111100111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst4|ALT_INV_Regist\(2),
	datab => \inst1|inst24|ALT_INV_Add0~21_sumout\,
	datac => \inst1|inst24|ALT_INV_Mux13~0_combout\,
	datad => \ALT_INV_AluSel[2]~input_o\,
	datae => \inst1|inst3|ALT_INV_Regist\(2),
	dataf => \ALT_INV_AluSel[0]~input_o\,
	combout => \inst1|inst24|Mux11~0_combout\);

-- Location: LABCELL_X37_Y1_N24
\inst1|inst24|ALU_Result[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst24|ALU_Result\(2) = ( \inst1|inst24|Mux11~0_combout\ & ( (!\inst1|inst24|Mux17~0_combout\) # (\inst1|inst24|ALU_Result\(2)) ) ) # ( !\inst1|inst24|Mux11~0_combout\ & ( (\inst1|inst24|ALU_Result\(2) & \inst1|inst24|Mux17~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst24|ALT_INV_ALU_Result\(2),
	datad => \inst1|inst24|ALT_INV_Mux17~0_combout\,
	dataf => \inst1|inst24|ALT_INV_Mux11~0_combout\,
	combout => \inst1|inst24|ALU_Result\(2));

-- Location: LABCELL_X37_Y1_N15
\inst1|inst20|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst20|Mux5~0_combout\ = ( \inst1|inst24|ALU_Result\(2) & ( (!\inst1|inst20|Regist\(2)) # (!\SelBus[1]~input_o\) ) ) # ( !\inst1|inst24|ALU_Result\(2) & ( (!\inst1|inst20|Regist\(2) & \SelBus[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101011111010111110101111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst20|ALT_INV_Regist\(2),
	datac => \ALT_INV_SelBus[1]~input_o\,
	dataf => \inst1|inst24|ALT_INV_ALU_Result\(2),
	combout => \inst1|inst20|Mux5~0_combout\);

-- Location: LABCELL_X36_Y1_N18
\inst1|inst20|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst20|Mux5~1_combout\ = (\SelBus[2]~input_o\ & ((!\SelBus[0]~input_o\ & (\inst1|inst20|Regist\(1))) # (\SelBus[0]~input_o\ & ((\inst1|inst20|Regist\(3))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000111000001000000011100000100000001110000010000000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst20|ALT_INV_Regist\(1),
	datab => \ALT_INV_SelBus[0]~input_o\,
	datac => \ALT_INV_SelBus[2]~input_o\,
	datad => \inst1|inst20|ALT_INV_Regist\(3),
	combout => \inst1|inst20|Mux5~1_combout\);

-- Location: LABCELL_X36_Y1_N54
\inst1|inst20|Mux5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst20|Mux5~2_combout\ = ( \inst1|inst20|Mux5~1_combout\ ) # ( !\inst1|inst20|Mux5~1_combout\ & ( (!\inst1|inst8|Regist[4]~0_combout\ & (\inst1|inst8|Mux3~0_combout\ & ((\inst1|inst20|Add0~21_sumout\)))) # (\inst1|inst8|Regist[4]~0_combout\ & 
-- (((\inst1|inst8|Mux3~0_combout\ & \inst1|inst20|Add0~21_sumout\)) # (\inst1|inst20|Mux5~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111000001010011011111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Regist[4]~0_combout\,
	datab => \inst1|inst8|ALT_INV_Mux3~0_combout\,
	datac => \inst1|inst20|ALT_INV_Mux5~0_combout\,
	datad => \inst1|inst20|ALT_INV_Add0~21_sumout\,
	dataf => \inst1|inst20|ALT_INV_Mux5~1_combout\,
	combout => \inst1|inst20|Mux5~2_combout\);

-- Location: FF_X36_Y1_N56
\inst1|inst20|Regist[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst20|Mux5~2_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[4]~1_combout\,
	ena => \inst1|inst20|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst20|Regist\(2));

-- Location: LABCELL_X37_Y1_N36
\inst1|inst20|Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst20|Mux6~1_combout\ = ( \inst1|inst20|Regist\(0) & ( \SelBus[0]~input_o\ & ( (\inst1|inst20|Regist\(2) & \SelBus[2]~input_o\) ) ) ) # ( !\inst1|inst20|Regist\(0) & ( \SelBus[0]~input_o\ & ( (\inst1|inst20|Regist\(2) & \SelBus[2]~input_o\) ) ) ) 
-- # ( \inst1|inst20|Regist\(0) & ( !\SelBus[0]~input_o\ & ( \SelBus[2]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst20|ALT_INV_Regist\(2),
	datac => \ALT_INV_SelBus[2]~input_o\,
	datae => \inst1|inst20|ALT_INV_Regist\(0),
	dataf => \ALT_INV_SelBus[0]~input_o\,
	combout => \inst1|inst20|Mux6~1_combout\);

-- Location: LABCELL_X36_Y1_N27
\inst1|inst20|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst20|Mux6~0_combout\ = ( \inst1|inst20|Regist\(1) & ( (\inst1|inst24|ALU_Result\(1) & !\SelBus[1]~input_o\) ) ) # ( !\inst1|inst20|Regist\(1) & ( (\SelBus[1]~input_o\) # (\inst1|inst24|ALU_Result\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst24|ALT_INV_ALU_Result\(1),
	datad => \ALT_INV_SelBus[1]~input_o\,
	dataf => \inst1|inst20|ALT_INV_Regist\(1),
	combout => \inst1|inst20|Mux6~0_combout\);

-- Location: LABCELL_X36_Y1_N24
\inst1|inst20|Mux6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst20|Mux6~2_combout\ = ( \inst1|inst20|Add0~25_sumout\ & ( (((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst20|Mux6~0_combout\)) # (\inst1|inst8|Mux3~0_combout\)) # (\inst1|inst20|Mux6~1_combout\) ) ) # ( !\inst1|inst20|Add0~25_sumout\ & ( 
-- ((\inst1|inst8|Regist[4]~0_combout\ & \inst1|inst20|Mux6~0_combout\)) # (\inst1|inst20|Mux6~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101011111010101010101111101110111011111110111011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst20|ALT_INV_Mux6~1_combout\,
	datab => \inst1|inst8|ALT_INV_Mux3~0_combout\,
	datac => \inst1|inst8|ALT_INV_Regist[4]~0_combout\,
	datad => \inst1|inst20|ALT_INV_Mux6~0_combout\,
	dataf => \inst1|inst20|ALT_INV_Add0~25_sumout\,
	combout => \inst1|inst20|Mux6~2_combout\);

-- Location: FF_X36_Y1_N26
\inst1|inst20|Regist[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst20|Mux6~2_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[4]~1_combout\,
	ena => \inst1|inst20|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst20|Regist\(1));

-- Location: MLABCELL_X25_Y4_N36
\inst1|inst16|result[1]~319\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|result[1]~319_combout\ = ( \inst1|inst16|_~4_combout\ & ( \inst1|inst18|Regist\(1) & ( (!\inst1|inst16|_~5_combout\ & (!\inst1|inst7|Regist\(1) & ((!\inst1|inst16|_~6_combout\) # (!\inst1|inst16|result\(1))))) ) ) ) # ( 
-- !\inst1|inst16|_~4_combout\ & ( \inst1|inst18|Regist\(1) & ( (!\inst1|inst16|_~5_combout\ & ((!\inst1|inst16|_~6_combout\) # (!\inst1|inst16|result\(1)))) ) ) ) # ( \inst1|inst16|_~4_combout\ & ( !\inst1|inst18|Regist\(1) & ( (!\inst1|inst7|Regist\(1) & 
-- ((!\inst1|inst16|_~6_combout\) # (!\inst1|inst16|result\(1)))) ) ) ) # ( !\inst1|inst16|_~4_combout\ & ( !\inst1|inst18|Regist\(1) & ( (!\inst1|inst16|_~6_combout\) # (!\inst1|inst16|result\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010111110100000000011001000110010001100100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst16|ALT_INV__~6_combout\,
	datab => \inst1|inst16|ALT_INV__~5_combout\,
	datac => \inst1|inst16|ALT_INV_result\(1),
	datad => \inst1|inst7|ALT_INV_Regist\(1),
	datae => \inst1|inst16|ALT_INV__~4_combout\,
	dataf => \inst1|inst18|ALT_INV_Regist\(1),
	combout => \inst1|inst16|result[1]~319_combout\);

-- Location: LABCELL_X30_Y2_N0
\inst1|inst16|result[1]~318\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|result[1]~318_combout\ = ( \inst1|inst1|Regist\(1) & ( \inst1|inst8|Regist\(1) & ( (!\inst1|inst16|_~2_combout\ & (!\inst1|inst16|_~3_combout\ & ((!\inst1|inst14|Regist\(1)) # (!\inst1|inst16|_~1_combout\)))) ) ) ) # ( 
-- !\inst1|inst1|Regist\(1) & ( \inst1|inst8|Regist\(1) & ( (!\inst1|inst16|_~3_combout\ & ((!\inst1|inst14|Regist\(1)) # (!\inst1|inst16|_~1_combout\))) ) ) ) # ( \inst1|inst1|Regist\(1) & ( !\inst1|inst8|Regist\(1) & ( (!\inst1|inst16|_~2_combout\ & 
-- ((!\inst1|inst14|Regist\(1)) # (!\inst1|inst16|_~1_combout\))) ) ) ) # ( !\inst1|inst1|Regist\(1) & ( !\inst1|inst8|Regist\(1) & ( (!\inst1|inst14|Regist\(1)) # (!\inst1|inst16|_~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000101010101010000011001100110000001000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst16|ALT_INV__~2_combout\,
	datab => \inst1|inst16|ALT_INV__~3_combout\,
	datac => \inst1|inst14|ALT_INV_Regist\(1),
	datad => \inst1|inst16|ALT_INV__~1_combout\,
	datae => \inst1|inst1|ALT_INV_Regist\(1),
	dataf => \inst1|inst8|ALT_INV_Regist\(1),
	combout => \inst1|inst16|result[1]~318_combout\);

-- Location: LABCELL_X30_Y1_N57
\inst1|inst16|result[1]~320\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|result[1]~320_combout\ = ( \inst1|inst|altsyncram_component|auto_generated|q_a\(1) & ( (\inst1|inst16|_~7_combout\ & (\muxSel[3]~input_o\ & ((\inst1|inst19|Regist\(1)) # (\muxSel[2]~input_o\)))) ) ) # ( 
-- !\inst1|inst|altsyncram_component|auto_generated|q_a\(1) & ( (\inst1|inst16|_~7_combout\ & (!\muxSel[2]~input_o\ & (\muxSel[3]~input_o\ & \inst1|inst19|Regist\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000001000001010000000100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst16|ALT_INV__~7_combout\,
	datab => \ALT_INV_muxSel[2]~input_o\,
	datac => \ALT_INV_muxSel[3]~input_o\,
	datad => \inst1|inst19|ALT_INV_Regist\(1),
	dataf => \inst1|inst|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	combout => \inst1|inst16|result[1]~320_combout\);

-- Location: IOIBUF_X54_Y0_N52
\Fuente1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Fuente1,
	o => \Fuente1~input_o\);

-- Location: LABCELL_X36_Y4_N39
\inst1|inst16|result[1]~325\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|result[1]~325_combout\ = ( \inst1|inst16|_~23_combout\ & ( \Fuente1~input_o\ ) ) # ( !\inst1|inst16|_~23_combout\ & ( \Fuente1~input_o\ & ( (((\inst1|inst16|_~20_combout\) # (\inst1|inst16|_~19_combout\)) # (\inst1|inst16|_~21_combout\)) # 
-- (\inst1|inst16|_~22_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst16|ALT_INV__~22_combout\,
	datab => \inst1|inst16|ALT_INV__~21_combout\,
	datac => \inst1|inst16|ALT_INV__~19_combout\,
	datad => \inst1|inst16|ALT_INV__~20_combout\,
	datae => \inst1|inst16|ALT_INV__~23_combout\,
	dataf => \ALT_INV_Fuente1~input_o\,
	combout => \inst1|inst16|result[1]~325_combout\);

-- Location: LABCELL_X36_Y4_N18
\inst1|inst16|result[1]~324\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|result[1]~324_combout\ = ( \Fuente1~input_o\ & ( (!\muxSel[3]~input_o\ & (((\inst1|inst16|_~18_combout\) # (\inst1|inst16|_~17_combout\)))) # (\muxSel[3]~input_o\ & (!\muxSel[2]~input_o\ & ((\inst1|inst16|_~18_combout\) # 
-- (\inst1|inst16|_~17_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001110111011100000111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_muxSel[3]~input_o\,
	datab => \ALT_INV_muxSel[2]~input_o\,
	datac => \inst1|inst16|ALT_INV__~17_combout\,
	datad => \inst1|inst16|ALT_INV__~18_combout\,
	dataf => \ALT_INV_Fuente1~input_o\,
	combout => \inst1|inst16|result[1]~324_combout\);

-- Location: LABCELL_X30_Y6_N24
\inst1|inst16|result[1]~323\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|result[1]~323_combout\ = ( \inst1|inst16|_~15_combout\ & ( \inst1|inst11|Regist\(1) & ( (!\inst1|inst16|_~14_combout\ & (!\inst1|inst2|Regist\(1) & ((!\Fuente1~input_o\) # (!\inst1|inst16|_~16_combout\)))) ) ) ) # ( 
-- !\inst1|inst16|_~15_combout\ & ( \inst1|inst11|Regist\(1) & ( (!\inst1|inst16|_~14_combout\ & ((!\Fuente1~input_o\) # (!\inst1|inst16|_~16_combout\))) ) ) ) # ( \inst1|inst16|_~15_combout\ & ( !\inst1|inst11|Regist\(1) & ( (!\inst1|inst2|Regist\(1) & 
-- ((!\Fuente1~input_o\) # (!\inst1|inst16|_~16_combout\))) ) ) ) # ( !\inst1|inst16|_~15_combout\ & ( !\inst1|inst11|Regist\(1) & ( (!\Fuente1~input_o\) # (!\inst1|inst16|_~16_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010111110100000000011001000110010001100100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Fuente1~input_o\,
	datab => \inst1|inst16|ALT_INV__~14_combout\,
	datac => \inst1|inst16|ALT_INV__~16_combout\,
	datad => \inst1|inst2|ALT_INV_Regist\(1),
	datae => \inst1|inst16|ALT_INV__~15_combout\,
	dataf => \inst1|inst11|ALT_INV_Regist\(1),
	combout => \inst1|inst16|result[1]~323_combout\);

-- Location: IOIBUF_X28_Y81_N1
\Destino1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Destino1,
	o => \Destino1~input_o\);

-- Location: LABCELL_X29_Y2_N48
\inst1|inst16|result[1]~322\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|result[1]~322_combout\ = ( \inst1|inst10|Regist\(1) & ( \inst1|inst5|Regist\(1) & ( (!\inst1|inst16|_~12_combout\ & (!\inst1|inst16|_~11_combout\ & ((!\Destino1~input_o\) # (!\inst1|inst16|_~13_combout\)))) ) ) ) # ( 
-- !\inst1|inst10|Regist\(1) & ( \inst1|inst5|Regist\(1) & ( (!\inst1|inst16|_~11_combout\ & ((!\Destino1~input_o\) # (!\inst1|inst16|_~13_combout\))) ) ) ) # ( \inst1|inst10|Regist\(1) & ( !\inst1|inst5|Regist\(1) & ( (!\inst1|inst16|_~12_combout\ & 
-- ((!\Destino1~input_o\) # (!\inst1|inst16|_~13_combout\))) ) ) ) # ( !\inst1|inst10|Regist\(1) & ( !\inst1|inst5|Regist\(1) & ( (!\Destino1~input_o\) # (!\inst1|inst16|_~13_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000101010101010000011001100110000001000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst16|ALT_INV__~12_combout\,
	datab => \inst1|inst16|ALT_INV__~11_combout\,
	datac => \ALT_INV_Destino1~input_o\,
	datad => \inst1|inst16|ALT_INV__~13_combout\,
	datae => \inst1|inst10|ALT_INV_Regist\(1),
	dataf => \inst1|inst5|ALT_INV_Regist\(1),
	combout => \inst1|inst16|result[1]~322_combout\);

-- Location: LABCELL_X30_Y2_N6
\inst1|inst16|result[1]~321\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|result[1]~321_combout\ = ( \inst1|inst17|Regist\(1) & ( \inst1|inst9|Regist\(1) & ( (!\inst1|inst16|_~10_combout\ & (!\inst1|inst16|_~9_combout\ & ((!\inst1|inst16|_~8_combout\) # (!\inst1|inst6|Regist\(1))))) ) ) ) # ( 
-- !\inst1|inst17|Regist\(1) & ( \inst1|inst9|Regist\(1) & ( (!\inst1|inst16|_~9_combout\ & ((!\inst1|inst16|_~8_combout\) # (!\inst1|inst6|Regist\(1)))) ) ) ) # ( \inst1|inst17|Regist\(1) & ( !\inst1|inst9|Regist\(1) & ( (!\inst1|inst16|_~10_combout\ & 
-- ((!\inst1|inst16|_~8_combout\) # (!\inst1|inst6|Regist\(1)))) ) ) ) # ( !\inst1|inst17|Regist\(1) & ( !\inst1|inst9|Regist\(1) & ( (!\inst1|inst16|_~8_combout\) # (!\inst1|inst6|Regist\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010110010001100100011111010000000001100100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst16|ALT_INV__~8_combout\,
	datab => \inst1|inst16|ALT_INV__~10_combout\,
	datac => \inst1|inst6|ALT_INV_Regist\(1),
	datad => \inst1|inst16|ALT_INV__~9_combout\,
	datae => \inst1|inst17|ALT_INV_Regist\(1),
	dataf => \inst1|inst9|ALT_INV_Regist\(1),
	combout => \inst1|inst16|result[1]~321_combout\);

-- Location: LABCELL_X30_Y2_N15
\inst1|inst16|result[1]~326\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|result[1]~326_combout\ = ( \inst1|inst16|result[1]~322_combout\ & ( \inst1|inst16|result[1]~321_combout\ & ( (!\inst1|inst16|result[1]~325_combout\ & (!\inst1|inst16|result[1]~324_combout\ & \inst1|inst16|result[1]~323_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst16|ALT_INV_result[1]~325_combout\,
	datab => \inst1|inst16|ALT_INV_result[1]~324_combout\,
	datac => \inst1|inst16|ALT_INV_result[1]~323_combout\,
	datae => \inst1|inst16|ALT_INV_result[1]~322_combout\,
	dataf => \inst1|inst16|ALT_INV_result[1]~321_combout\,
	combout => \inst1|inst16|result[1]~326_combout\);

-- Location: LABCELL_X30_Y2_N24
\inst1|inst16|result[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|result\(1) = ( \inst1|inst16|_~0_combout\ & ( \inst1|inst16|result[1]~326_combout\ & ( ((!\inst1|inst16|result[1]~319_combout\) # ((!\inst1|inst16|result[1]~318_combout\) # (\inst1|inst16|result[1]~320_combout\))) # 
-- (\inst1|inst20|Regist\(1)) ) ) ) # ( !\inst1|inst16|_~0_combout\ & ( \inst1|inst16|result[1]~326_combout\ & ( (!\inst1|inst16|result[1]~319_combout\) # ((!\inst1|inst16|result[1]~318_combout\) # (\inst1|inst16|result[1]~320_combout\)) ) ) ) # ( 
-- \inst1|inst16|_~0_combout\ & ( !\inst1|inst16|result[1]~326_combout\ ) ) # ( !\inst1|inst16|_~0_combout\ & ( !\inst1|inst16|result[1]~326_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111100111111111111110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst20|ALT_INV_Regist\(1),
	datab => \inst1|inst16|ALT_INV_result[1]~319_combout\,
	datac => \inst1|inst16|ALT_INV_result[1]~318_combout\,
	datad => \inst1|inst16|ALT_INV_result[1]~320_combout\,
	datae => \inst1|inst16|ALT_INV__~0_combout\,
	dataf => \inst1|inst16|ALT_INV_result[1]~326_combout\,
	combout => \inst1|inst16|result\(1));

-- Location: LABCELL_X30_Y4_N33
\inst1|inst17|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst17|Mux6~0_combout\ = ( \inst1|inst17|Regist\(1) & ( (!\SelBus[1]~input_o\ & \inst1|inst16|result\(1)) ) ) # ( !\inst1|inst17|Regist\(1) & ( (\inst1|inst16|result\(1)) # (\SelBus[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SelBus[1]~input_o\,
	datad => \inst1|inst16|ALT_INV_result\(1),
	dataf => \inst1|inst17|ALT_INV_Regist\(1),
	combout => \inst1|inst17|Mux6~0_combout\);

-- Location: LABCELL_X31_Y4_N24
\inst1|inst17|Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst17|Mux6~1_combout\ = ( \inst1|inst17|Regist\(0) & ( (\SelBus[2]~input_o\ & ((!\SelBus[0]~input_o\) # (\inst1|inst17|Regist\(2)))) ) ) # ( !\inst1|inst17|Regist\(0) & ( (\SelBus[0]~input_o\ & (\inst1|inst17|Regist\(2) & \SelBus[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000000110011110000000011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SelBus[0]~input_o\,
	datac => \inst1|inst17|ALT_INV_Regist\(2),
	datad => \ALT_INV_SelBus[2]~input_o\,
	dataf => \inst1|inst17|ALT_INV_Regist\(0),
	combout => \inst1|inst17|Mux6~1_combout\);

-- Location: LABCELL_X31_Y4_N54
\inst1|inst17|Mux6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst17|Mux6~2_combout\ = ( \inst1|inst17|Mux6~1_combout\ ) # ( !\inst1|inst17|Mux6~1_combout\ & ( (!\inst1|inst17|Mux6~0_combout\ & (\inst1|inst8|Mux3~0_combout\ & (\inst1|inst17|Add0~25_sumout\))) # (\inst1|inst17|Mux6~0_combout\ & 
-- (((\inst1|inst8|Mux3~0_combout\ & \inst1|inst17|Add0~25_sumout\)) # (\inst1|inst8|Regist[4]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010111000000110101011111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst17|ALT_INV_Mux6~0_combout\,
	datab => \inst1|inst8|ALT_INV_Mux3~0_combout\,
	datac => \inst1|inst17|ALT_INV_Add0~25_sumout\,
	datad => \inst1|inst8|ALT_INV_Regist[4]~0_combout\,
	dataf => \inst1|inst17|ALT_INV_Mux6~1_combout\,
	combout => \inst1|inst17|Mux6~2_combout\);

-- Location: FF_X31_Y4_N56
\inst1|inst17|Regist[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst17|Mux6~2_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[4]~1_combout\,
	ena => \inst1|inst17|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst17|Regist\(1));

-- Location: MLABCELL_X25_Y3_N18
\inst1|inst17|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst17|Mux7~0_combout\ = ( \inst1|inst17|Regist\(1) & ( \inst1|inst17|Regist\(0) & ( (!\SelBus[3]~input_o\ & ((\SelBus[2]~input_o\) # (\inst1|inst16|result\(0)))) ) ) ) # ( !\inst1|inst17|Regist\(1) & ( \inst1|inst17|Regist\(0) & ( 
-- (\inst1|inst16|result\(0) & (!\SelBus[2]~input_o\ & !\SelBus[3]~input_o\)) ) ) ) # ( \inst1|inst17|Regist\(1) & ( !\inst1|inst17|Regist\(0) & ( ((\SelBus[3]~input_o\) # (\SelBus[2]~input_o\)) # (\inst1|inst16|result\(0)) ) ) ) # ( 
-- !\inst1|inst17|Regist\(1) & ( !\inst1|inst17|Regist\(0) & ( ((\inst1|inst16|result\(0) & !\SelBus[2]~input_o\)) # (\SelBus[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111101001111011111110111111101000000010000000111000001110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst16|ALT_INV_result\(0),
	datab => \ALT_INV_SelBus[2]~input_o\,
	datac => \ALT_INV_SelBus[3]~input_o\,
	datae => \inst1|inst17|ALT_INV_Regist\(1),
	dataf => \inst1|inst17|ALT_INV_Regist\(0),
	combout => \inst1|inst17|Mux7~0_combout\);

-- Location: MLABCELL_X25_Y3_N12
\inst1|inst17|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst17|Mux7~1_combout\ = ( \inst1|inst17|Add0~29_sumout\ & ( \inst1|inst17|Mux7~0_combout\ & ( ((!\inst1|inst8|Regist[0]~5_combout\) # (\inst1|inst17|Regist\(7))) # (\inst1|inst8|Regist[0]~4_combout\) ) ) ) # ( !\inst1|inst17|Add0~29_sumout\ & ( 
-- \inst1|inst17|Mux7~0_combout\ & ( (!\inst1|inst8|Regist[0]~4_combout\ & ((!\inst1|inst8|Regist[0]~5_combout\) # (\inst1|inst17|Regist\(7)))) ) ) ) # ( \inst1|inst17|Add0~29_sumout\ & ( !\inst1|inst17|Mux7~0_combout\ & ( ((\inst1|inst8|Regist[0]~5_combout\ 
-- & \inst1|inst17|Regist\(7))) # (\inst1|inst8|Regist[0]~4_combout\) ) ) ) # ( !\inst1|inst17|Add0~29_sumout\ & ( !\inst1|inst17|Mux7~0_combout\ & ( (!\inst1|inst8|Regist[0]~4_combout\ & (\inst1|inst8|Regist[0]~5_combout\ & \inst1|inst17|Regist\(7))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010010101110101011110001010100010101101111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Regist[0]~4_combout\,
	datab => \inst1|inst8|ALT_INV_Regist[0]~5_combout\,
	datac => \inst1|inst17|ALT_INV_Regist\(7),
	datae => \inst1|inst17|ALT_INV_Add0~29_sumout\,
	dataf => \inst1|inst17|ALT_INV_Mux7~0_combout\,
	combout => \inst1|inst17|Mux7~1_combout\);

-- Location: FF_X25_Y3_N14
\inst1|inst17|Regist[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst17|Mux7~1_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[0]~6_combout\,
	ena => \inst1|inst17|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst17|Regist\(0));

-- Location: LABCELL_X30_Y3_N12
\inst1|inst17|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst17|Mux0~0_combout\ = ( \inst1|inst16|result\(7) & ( (!\SelBus[3]~input_o\ & ((!\SelBus[2]~input_o\) # ((\inst1|inst17|Regist\(6))))) # (\SelBus[3]~input_o\ & (((!\inst1|inst17|Regist\(7))))) ) ) # ( !\inst1|inst16|result\(7) & ( 
-- (!\SelBus[3]~input_o\ & (\SelBus[2]~input_o\ & (\inst1|inst17|Regist\(6)))) # (\SelBus[3]~input_o\ & (((!\inst1|inst17|Regist\(7))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111110000000100011111000010111011111100001011101111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[2]~input_o\,
	datab => \inst1|inst17|ALT_INV_Regist\(6),
	datac => \inst1|inst17|ALT_INV_Regist\(7),
	datad => \ALT_INV_SelBus[3]~input_o\,
	dataf => \inst1|inst16|ALT_INV_result\(7),
	combout => \inst1|inst17|Mux0~0_combout\);

-- Location: LABCELL_X31_Y4_N21
\inst1|inst17|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst17|Add0~1_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\)) # (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst1|inst16|result\(7))))) ) + ( !\inst1|inst17|Regist\(7) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst1|inst17|Add0~6\ ))

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
	datad => \inst1|inst16|ALT_INV_result\(7),
	dataf => \inst1|inst17|ALT_INV_Regist\(7),
	cin => \inst1|inst17|Add0~6\,
	sumout => \inst1|inst17|Add0~1_sumout\);

-- Location: LABCELL_X30_Y4_N45
\inst1|inst17|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst17|Mux0~1_combout\ = ( \inst1|inst17|Mux0~0_combout\ & ( \inst1|inst17|Add0~1_sumout\ & ( ((!\inst1|inst8|Regist[7]~7_combout\) # (\inst1|inst17|Regist\(0))) # (\inst1|inst8|Regist[0]~4_combout\) ) ) ) # ( !\inst1|inst17|Mux0~0_combout\ & ( 
-- \inst1|inst17|Add0~1_sumout\ & ( ((\inst1|inst8|Regist[7]~7_combout\ & \inst1|inst17|Regist\(0))) # (\inst1|inst8|Regist[0]~4_combout\) ) ) ) # ( \inst1|inst17|Mux0~0_combout\ & ( !\inst1|inst17|Add0~1_sumout\ & ( (!\inst1|inst8|Regist[0]~4_combout\ & 
-- ((!\inst1|inst8|Regist[7]~7_combout\) # (\inst1|inst17|Regist\(0)))) ) ) ) # ( !\inst1|inst17|Mux0~0_combout\ & ( !\inst1|inst17|Add0~1_sumout\ & ( (!\inst1|inst8|Regist[0]~4_combout\ & (\inst1|inst8|Regist[7]~7_combout\ & \inst1|inst17|Regist\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010101000001010101001010101010111111111010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Regist[0]~4_combout\,
	datac => \inst1|inst8|ALT_INV_Regist[7]~7_combout\,
	datad => \inst1|inst17|ALT_INV_Regist\(0),
	datae => \inst1|inst17|ALT_INV_Mux0~0_combout\,
	dataf => \inst1|inst17|ALT_INV_Add0~1_sumout\,
	combout => \inst1|inst17|Mux0~1_combout\);

-- Location: FF_X30_Y4_N47
\inst1|inst17|Regist[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst17|Mux0~1_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[7]~8_combout\,
	ena => \inst1|inst17|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst17|Regist\(7));

-- Location: LABCELL_X35_Y4_N27
\inst1|inst13|$00000|auto_generated|l1_w7_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst13|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\ = ( \inst1|inst16|result\(7) & ( (!\MUX_MAR~input_o\) # (\inst1|inst17|Regist\(7)) ) ) # ( !\inst1|inst16|result\(7) & ( (\inst1|inst17|Regist\(7) & \MUX_MAR~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst17|ALT_INV_Regist\(7),
	datac => \ALT_INV_MUX_MAR~input_o\,
	dataf => \inst1|inst16|ALT_INV_result\(7),
	combout => \inst1|inst13|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X34_Y4_N21
\inst1|inst1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst1|Add0~1_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst13|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\)))) ) + ( !\inst1|inst1|Regist\(7) $ 
-- (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( \inst1|inst1|Add0~6\ ))

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
	datad => \inst1|inst13|$00000|auto_generated|ALT_INV_l1_w7_n0_mux_dataout~0_combout\,
	dataf => \inst1|inst1|ALT_INV_Regist\(7),
	cin => \inst1|inst1|Add0~6\,
	sumout => \inst1|inst1|Add0~1_sumout\);

-- Location: LABCELL_X35_Y4_N18
\inst1|inst1|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst1|Mux0~0_combout\ = ( \inst1|inst13|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\ & ( \inst1|inst1|Regist\(7) & ( (\inst1|inst8|Regist[7]~10_combout\ & ((!\inst1|inst8|Regist[0]~9_combout\) # (\inst1|inst1|Regist\(6)))) ) ) ) # ( 
-- !\inst1|inst13|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\ & ( \inst1|inst1|Regist\(7) & ( (\inst1|inst1|Regist\(6) & (\inst1|inst8|Regist[7]~10_combout\ & \inst1|inst8|Regist[0]~9_combout\)) ) ) ) # ( 
-- \inst1|inst13|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\ & ( !\inst1|inst1|Regist\(7) & ( (!\inst1|inst8|Regist[0]~9_combout\) # ((\inst1|inst1|Regist\(6) & \inst1|inst8|Regist[7]~10_combout\)) ) ) ) # ( 
-- !\inst1|inst13|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\ & ( !\inst1|inst1|Regist\(7) & ( (!\inst1|inst8|Regist[7]~10_combout\ & ((!\inst1|inst8|Regist[0]~9_combout\))) # (\inst1|inst8|Regist[7]~10_combout\ & (\inst1|inst1|Regist\(6) & 
-- \inst1|inst8|Regist[0]~9_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000111000001111100011111000100000001000000010011000100110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst1|ALT_INV_Regist\(6),
	datab => \inst1|inst8|ALT_INV_Regist[7]~10_combout\,
	datac => \inst1|inst8|ALT_INV_Regist[0]~9_combout\,
	datae => \inst1|inst13|$00000|auto_generated|ALT_INV_l1_w7_n0_mux_dataout~0_combout\,
	dataf => \inst1|inst1|ALT_INV_Regist\(7),
	combout => \inst1|inst1|Mux0~0_combout\);

-- Location: LABCELL_X35_Y4_N9
\inst1|inst1|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst1|Mux0~1_combout\ = ( \inst1|inst1|Add0~1_sumout\ & ( \inst1|inst1|Mux0~0_combout\ ) ) # ( !\inst1|inst1|Add0~1_sumout\ & ( \inst1|inst1|Mux0~0_combout\ & ( !\inst1|inst8|Regist[0]~4_combout\ ) ) ) # ( \inst1|inst1|Add0~1_sumout\ & ( 
-- !\inst1|inst1|Mux0~0_combout\ & ( ((\inst1|inst8|Regist[7]~7_combout\ & \inst1|inst1|Regist\(0))) # (\inst1|inst8|Regist[0]~4_combout\) ) ) ) # ( !\inst1|inst1|Add0~1_sumout\ & ( !\inst1|inst1|Mux0~0_combout\ & ( (!\inst1|inst8|Regist[0]~4_combout\ & 
-- (\inst1|inst8|Regist[7]~7_combout\ & \inst1|inst1|Regist\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010010101110101011110101010101010101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Regist[0]~4_combout\,
	datab => \inst1|inst8|ALT_INV_Regist[7]~7_combout\,
	datac => \inst1|inst1|ALT_INV_Regist\(0),
	datae => \inst1|inst1|ALT_INV_Add0~1_sumout\,
	dataf => \inst1|inst1|ALT_INV_Mux0~0_combout\,
	combout => \inst1|inst1|Mux0~1_combout\);

-- Location: FF_X35_Y4_N11
\inst1|inst1|Regist[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst1|Mux0~1_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[7]~8_combout\,
	ena => \inst1|inst1|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst1|Regist\(7));

-- Location: LABCELL_X33_Y3_N33
\inst1|inst1|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst1|Mux7~1_combout\ = ( !\SelBus[2]~input_o\ & ( (!\SelBus[3]~input_o\ & ((!\MUX_MAR~input_o\ & (\inst1|inst16|result\(0))) # (\MUX_MAR~input_o\ & (((\inst1|inst17|Regist\(0))))))) # (\SelBus[3]~input_o\ & ((((!\inst1|inst1|Regist\(0)))))) ) ) # 
-- ( \SelBus[2]~input_o\ & ( ((!\SelBus[3]~input_o\ & (\inst1|inst1|Regist\(1))) # (\SelBus[3]~input_o\ & (((!\inst1|inst1|Regist\(0)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011101101111111001111110011111100001000010011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MUX_MAR~input_o\,
	datab => \ALT_INV_SelBus[3]~input_o\,
	datac => \inst1|inst1|ALT_INV_Regist\(1),
	datad => \inst1|inst17|ALT_INV_Regist\(0),
	datae => \ALT_INV_SelBus[2]~input_o\,
	dataf => \inst1|inst1|ALT_INV_Regist\(0),
	datag => \inst1|inst16|ALT_INV_result\(0),
	combout => \inst1|inst1|Mux7~1_combout\);

-- Location: LABCELL_X33_Y3_N24
\inst1|inst1|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst1|Mux7~0_combout\ = ( \inst1|inst1|Add0~29_sumout\ & ( \inst1|inst1|Mux7~1_combout\ & ( ((!\inst1|inst8|Regist[0]~5_combout\) # (\inst1|inst8|Regist[0]~4_combout\)) # (\inst1|inst1|Regist\(7)) ) ) ) # ( !\inst1|inst1|Add0~29_sumout\ & ( 
-- \inst1|inst1|Mux7~1_combout\ & ( (!\inst1|inst8|Regist[0]~4_combout\ & ((!\inst1|inst8|Regist[0]~5_combout\) # (\inst1|inst1|Regist\(7)))) ) ) ) # ( \inst1|inst1|Add0~29_sumout\ & ( !\inst1|inst1|Mux7~1_combout\ & ( ((\inst1|inst1|Regist\(7) & 
-- \inst1|inst8|Regist[0]~5_combout\)) # (\inst1|inst8|Regist[0]~4_combout\) ) ) ) # ( !\inst1|inst1|Add0~29_sumout\ & ( !\inst1|inst1|Mux7~1_combout\ & ( (\inst1|inst1|Regist\(7) & (!\inst1|inst8|Regist[0]~4_combout\ & \inst1|inst8|Regist[0]~5_combout\)) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100001101110011011111000100110001001111011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst1|ALT_INV_Regist\(7),
	datab => \inst1|inst8|ALT_INV_Regist[0]~4_combout\,
	datac => \inst1|inst8|ALT_INV_Regist[0]~5_combout\,
	datae => \inst1|inst1|ALT_INV_Add0~29_sumout\,
	dataf => \inst1|inst1|ALT_INV_Mux7~1_combout\,
	combout => \inst1|inst1|Mux7~0_combout\);

-- Location: FF_X33_Y3_N26
\inst1|inst1|Regist[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst1|Mux7~0_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[0]~6_combout\,
	ena => \inst1|inst1|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst1|Regist\(0));

-- Location: MLABCELL_X28_Y4_N30
\inst1|inst7|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst7|Mux1~0_combout\ = ( \inst1|inst16|result\(6) & ( (!\SelBus[1]~input_o\ & (((\MUX_MDR~input_o\)) # (\inst1|inst|altsyncram_component|auto_generated|q_a\(6)))) # (\SelBus[1]~input_o\ & (((!\inst1|inst7|Regist\(6))))) ) ) # ( 
-- !\inst1|inst16|result\(6) & ( (!\SelBus[1]~input_o\ & (\inst1|inst|altsyncram_component|auto_generated|q_a\(6) & (!\MUX_MDR~input_o\))) # (\SelBus[1]~input_o\ & (((!\inst1|inst7|Regist\(6))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010011110000010001001111000001110111111100000111011111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	datab => \ALT_INV_MUX_MDR~input_o\,
	datac => \inst1|inst7|ALT_INV_Regist\(6),
	datad => \ALT_INV_SelBus[1]~input_o\,
	dataf => \inst1|inst16|ALT_INV_result\(6),
	combout => \inst1|inst7|Mux1~0_combout\);

-- Location: MLABCELL_X28_Y4_N33
\inst1|inst23|$00000|auto_generated|l1_w6_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst23|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\ = ( \inst1|inst16|result\(6) & ( (\inst1|inst|altsyncram_component|auto_generated|q_a\(6)) # (\MUX_MDR~input_o\) ) ) # ( !\inst1|inst16|result\(6) & ( (!\MUX_MDR~input_o\ & 
-- \inst1|inst|altsyncram_component|auto_generated|q_a\(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_MUX_MDR~input_o\,
	datac => \inst1|inst|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	dataf => \inst1|inst16|ALT_INV_result\(6),
	combout => \inst1|inst23|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X29_Y4_N48
\inst1|inst7|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst7|Add0~5_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst23|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\)))) ) + ( !\inst1|inst7|Regist\(6) $ 
-- (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( \inst1|inst7|Add0~10\ ))
-- \inst1|inst7|Add0~6\ = CARRY(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst23|$00000|auto_generated|l1_w6_n0_mux_dataout~0_combout\)))) ) + ( !\inst1|inst7|Regist\(6) $ 
-- (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( \inst1|inst7|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000010100000000000000000011000000111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[0]~input_o\,
	datac => \ALT_INV_SelBus[3]~input_o\,
	datad => \inst1|inst23|$00000|auto_generated|ALT_INV_l1_w6_n0_mux_dataout~0_combout\,
	dataf => \inst1|inst7|ALT_INV_Regist\(6),
	cin => \inst1|inst7|Add0~10\,
	sumout => \inst1|inst7|Add0~5_sumout\,
	cout => \inst1|inst7|Add0~6\);

-- Location: MLABCELL_X28_Y4_N12
\inst1|inst7|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst7|Mux1~1_combout\ = ( \inst1|inst7|Regist\(7) & ( (\SelBus[2]~input_o\ & ((\SelBus[0]~input_o\) # (\inst1|inst7|Regist\(5)))) ) ) # ( !\inst1|inst7|Regist\(7) & ( (\inst1|inst7|Regist\(5) & (!\SelBus[0]~input_o\ & \SelBus[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000000000010111110000000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst7|ALT_INV_Regist\(5),
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \ALT_INV_SelBus[2]~input_o\,
	dataf => \inst1|inst7|ALT_INV_Regist\(7),
	combout => \inst1|inst7|Mux1~1_combout\);

-- Location: MLABCELL_X28_Y4_N0
\inst1|inst7|Mux1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst7|Mux1~2_combout\ = ( \inst1|inst7|Mux1~1_combout\ ) # ( !\inst1|inst7|Mux1~1_combout\ & ( (!\inst1|inst7|Mux1~0_combout\ & (((\inst1|inst8|Mux3~0_combout\ & \inst1|inst7|Add0~5_sumout\)))) # (\inst1|inst7|Mux1~0_combout\ & 
-- (((\inst1|inst8|Mux3~0_combout\ & \inst1|inst7|Add0~5_sumout\)) # (\inst1|inst8|Regist[4]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011111000100010001111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst7|ALT_INV_Mux1~0_combout\,
	datab => \inst1|inst8|ALT_INV_Regist[4]~0_combout\,
	datac => \inst1|inst8|ALT_INV_Mux3~0_combout\,
	datad => \inst1|inst7|ALT_INV_Add0~5_sumout\,
	dataf => \inst1|inst7|ALT_INV_Mux1~1_combout\,
	combout => \inst1|inst7|Mux1~2_combout\);

-- Location: FF_X28_Y4_N2
\inst1|inst7|Regist[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst7|Mux1~2_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[4]~1_combout\,
	ena => \inst1|inst7|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst7|Regist\(6));

-- Location: LABCELL_X29_Y5_N51
\inst1|inst23|$00000|auto_generated|l1_w7_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst23|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\ = ( \inst1|inst16|result\(7) & ( (\inst1|inst|altsyncram_component|auto_generated|q_a\(7)) # (\MUX_MDR~input_o\) ) ) # ( !\inst1|inst16|result\(7) & ( (!\MUX_MDR~input_o\ & 
-- \inst1|inst|altsyncram_component|auto_generated|q_a\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MUX_MDR~input_o\,
	datad => \inst1|inst|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	dataf => \inst1|inst16|ALT_INV_result\(7),
	combout => \inst1|inst23|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X29_Y5_N45
\inst1|inst7|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst7|Mux0~0_combout\ = ( \inst1|inst7|Regist\(7) & ( \inst1|inst23|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\ & ( (\inst1|inst8|Regist[7]~10_combout\ & ((!\inst1|inst8|Regist[0]~9_combout\) # (\inst1|inst7|Regist\(6)))) ) ) ) # ( 
-- !\inst1|inst7|Regist\(7) & ( \inst1|inst23|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\ & ( (!\inst1|inst8|Regist[0]~9_combout\) # ((\inst1|inst8|Regist[7]~10_combout\ & \inst1|inst7|Regist\(6))) ) ) ) # ( \inst1|inst7|Regist\(7) & ( 
-- !\inst1|inst23|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\ & ( (\inst1|inst8|Regist[7]~10_combout\ & (\inst1|inst8|Regist[0]~9_combout\ & \inst1|inst7|Regist\(6))) ) ) ) # ( !\inst1|inst7|Regist\(7) & ( 
-- !\inst1|inst23|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\ & ( (!\inst1|inst8|Regist[7]~10_combout\ & (!\inst1|inst8|Regist[0]~9_combout\)) # (\inst1|inst8|Regist[7]~10_combout\ & (\inst1|inst8|Regist[0]~9_combout\ & \inst1|inst7|Regist\(6))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100110001001000000010000000111001101110011010100010101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Regist[7]~10_combout\,
	datab => \inst1|inst8|ALT_INV_Regist[0]~9_combout\,
	datac => \inst1|inst7|ALT_INV_Regist\(6),
	datae => \inst1|inst7|ALT_INV_Regist\(7),
	dataf => \inst1|inst23|$00000|auto_generated|ALT_INV_l1_w7_n0_mux_dataout~0_combout\,
	combout => \inst1|inst7|Mux0~0_combout\);

-- Location: LABCELL_X29_Y4_N51
\inst1|inst7|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst7|Add0~1_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (((\SelBus[0]~input_o\)))) # (\SelBus[3]~input_o\ & (!\SelBus[1]~input_o\ & ((\inst1|inst23|$00000|auto_generated|l1_w7_n0_mux_dataout~0_combout\)))) ) + ( !\inst1|inst7|Regist\(7) $ 
-- (((!\SelBus[1]~input_o\) # (!\SelBus[3]~input_o\))) ) + ( \inst1|inst7|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000010100000000000000000011000000111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[1]~input_o\,
	datab => \ALT_INV_SelBus[0]~input_o\,
	datac => \ALT_INV_SelBus[3]~input_o\,
	datad => \inst1|inst23|$00000|auto_generated|ALT_INV_l1_w7_n0_mux_dataout~0_combout\,
	dataf => \inst1|inst7|ALT_INV_Regist\(7),
	cin => \inst1|inst7|Add0~6\,
	sumout => \inst1|inst7|Add0~1_sumout\);

-- Location: LABCELL_X29_Y4_N18
\inst1|inst7|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst7|Mux0~1_combout\ = ( \inst1|inst7|Add0~1_sumout\ & ( (((\inst1|inst7|Regist\(0) & \inst1|inst8|Regist[7]~7_combout\)) # (\inst1|inst8|Regist[0]~4_combout\)) # (\inst1|inst7|Mux0~0_combout\) ) ) # ( !\inst1|inst7|Add0~1_sumout\ & ( 
-- (!\inst1|inst8|Regist[0]~4_combout\ & (((\inst1|inst7|Regist\(0) & \inst1|inst8|Regist[7]~7_combout\)) # (\inst1|inst7|Mux0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100000000000111110000000000011111111111110001111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst7|ALT_INV_Regist\(0),
	datab => \inst1|inst8|ALT_INV_Regist[7]~7_combout\,
	datac => \inst1|inst7|ALT_INV_Mux0~0_combout\,
	datad => \inst1|inst8|ALT_INV_Regist[0]~4_combout\,
	dataf => \inst1|inst7|ALT_INV_Add0~1_sumout\,
	combout => \inst1|inst7|Mux0~1_combout\);

-- Location: FF_X29_Y4_N20
\inst1|inst7|Regist[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst7|Mux0~1_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[7]~8_combout\,
	ena => \inst1|inst7|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst7|Regist\(7));

-- Location: LABCELL_X27_Y5_N12
\inst1|inst7|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst7|Mux7~0_combout\ = ( \inst1|inst7|Regist\(0) & ( \inst1|inst23|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (!\SelBus[3]~input_o\ & ((!\SelBus[2]~input_o\) # (\inst1|inst7|Regist\(1)))) ) ) ) # ( !\inst1|inst7|Regist\(0) & ( 
-- \inst1|inst23|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( ((!\SelBus[2]~input_o\) # (\inst1|inst7|Regist\(1))) # (\SelBus[3]~input_o\) ) ) ) # ( \inst1|inst7|Regist\(0) & ( !\inst1|inst23|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ 
-- & ( (!\SelBus[3]~input_o\ & (\SelBus[2]~input_o\ & \inst1|inst7|Regist\(1))) ) ) ) # ( !\inst1|inst7|Regist\(0) & ( !\inst1|inst23|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( ((\SelBus[2]~input_o\ & \inst1|inst7|Regist\(1))) # 
-- (\SelBus[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101110111000000000010001011011101111111111000100010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[3]~input_o\,
	datab => \ALT_INV_SelBus[2]~input_o\,
	datad => \inst1|inst7|ALT_INV_Regist\(1),
	datae => \inst1|inst7|ALT_INV_Regist\(0),
	dataf => \inst1|inst23|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	combout => \inst1|inst7|Mux7~0_combout\);

-- Location: LABCELL_X27_Y5_N27
\inst1|inst7|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst7|Mux7~1_combout\ = ( \inst1|inst7|Add0~29_sumout\ & ( \inst1|inst7|Mux7~0_combout\ & ( (!\inst1|inst8|Regist[0]~5_combout\) # ((\inst1|inst8|Regist[0]~4_combout\) # (\inst1|inst7|Regist\(7))) ) ) ) # ( !\inst1|inst7|Add0~29_sumout\ & ( 
-- \inst1|inst7|Mux7~0_combout\ & ( (!\inst1|inst8|Regist[0]~4_combout\ & ((!\inst1|inst8|Regist[0]~5_combout\) # (\inst1|inst7|Regist\(7)))) ) ) ) # ( \inst1|inst7|Add0~29_sumout\ & ( !\inst1|inst7|Mux7~0_combout\ & ( ((\inst1|inst8|Regist[0]~5_combout\ & 
-- \inst1|inst7|Regist\(7))) # (\inst1|inst8|Regist[0]~4_combout\) ) ) ) # ( !\inst1|inst7|Add0~29_sumout\ & ( !\inst1|inst7|Mux7~0_combout\ & ( (\inst1|inst8|Regist[0]~5_combout\ & (\inst1|inst7|Regist\(7) & !\inst1|inst8|Regist[0]~4_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001011111111110101111000000001010111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Regist[0]~5_combout\,
	datac => \inst1|inst7|ALT_INV_Regist\(7),
	datad => \inst1|inst8|ALT_INV_Regist[0]~4_combout\,
	datae => \inst1|inst7|ALT_INV_Add0~29_sumout\,
	dataf => \inst1|inst7|ALT_INV_Mux7~0_combout\,
	combout => \inst1|inst7|Mux7~1_combout\);

-- Location: FF_X27_Y5_N29
\inst1|inst7|Regist[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst7|Mux7~1_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[0]~6_combout\,
	ena => \inst1|inst7|Regist[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst7|Regist\(0));

-- Location: LABCELL_X27_Y5_N45
\inst1|inst16|result[0]~328\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|result[0]~328_combout\ = ( \inst1|inst16|result\(0) & ( \inst1|inst18|Regist\(0) & ( (!\inst1|inst16|_~5_combout\ & (!\inst1|inst16|_~6_combout\ & ((!\inst1|inst16|_~4_combout\) # (!\inst1|inst7|Regist\(0))))) ) ) ) # ( 
-- !\inst1|inst16|result\(0) & ( \inst1|inst18|Regist\(0) & ( (!\inst1|inst16|_~5_combout\ & ((!\inst1|inst16|_~4_combout\) # (!\inst1|inst7|Regist\(0)))) ) ) ) # ( \inst1|inst16|result\(0) & ( !\inst1|inst18|Regist\(0) & ( (!\inst1|inst16|_~6_combout\ & 
-- ((!\inst1|inst16|_~4_combout\) # (!\inst1|inst7|Regist\(0)))) ) ) ) # ( !\inst1|inst16|result\(0) & ( !\inst1|inst18|Regist\(0) & ( (!\inst1|inst16|_~4_combout\) # (!\inst1|inst7|Regist\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111001100111100001100000010101010100010001010000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst16|ALT_INV__~5_combout\,
	datab => \inst1|inst16|ALT_INV__~4_combout\,
	datac => \inst1|inst16|ALT_INV__~6_combout\,
	datad => \inst1|inst7|ALT_INV_Regist\(0),
	datae => \inst1|inst16|ALT_INV_result\(0),
	dataf => \inst1|inst18|ALT_INV_Regist\(0),
	combout => \inst1|inst16|result[0]~328_combout\);

-- Location: LABCELL_X33_Y3_N3
\inst1|inst16|result[0]~327\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|result[0]~327_combout\ = ( \inst1|inst14|Regist\(0) & ( \inst1|inst1|Regist\(0) & ( (!\inst1|inst16|_~1_combout\ & (!\inst1|inst16|_~2_combout\ & ((!\inst1|inst16|_~3_combout\) # (!\inst1|inst8|Regist\(0))))) ) ) ) # ( 
-- !\inst1|inst14|Regist\(0) & ( \inst1|inst1|Regist\(0) & ( (!\inst1|inst16|_~2_combout\ & ((!\inst1|inst16|_~3_combout\) # (!\inst1|inst8|Regist\(0)))) ) ) ) # ( \inst1|inst14|Regist\(0) & ( !\inst1|inst1|Regist\(0) & ( (!\inst1|inst16|_~1_combout\ & 
-- ((!\inst1|inst16|_~3_combout\) # (!\inst1|inst8|Regist\(0)))) ) ) ) # ( !\inst1|inst14|Regist\(0) & ( !\inst1|inst1|Regist\(0) & ( (!\inst1|inst16|_~3_combout\) # (!\inst1|inst8|Regist\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010110010001100100011111010000000001100100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst16|ALT_INV__~3_combout\,
	datab => \inst1|inst16|ALT_INV__~1_combout\,
	datac => \inst1|inst8|ALT_INV_Regist\(0),
	datad => \inst1|inst16|ALT_INV__~2_combout\,
	datae => \inst1|inst14|ALT_INV_Regist\(0),
	dataf => \inst1|inst1|ALT_INV_Regist\(0),
	combout => \inst1|inst16|result[0]~327_combout\);

-- Location: LABCELL_X27_Y1_N51
\inst1|inst16|result[0]~329\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|result[0]~329_combout\ = ( \inst1|inst19|Regist\(0) & ( \inst1|inst|altsyncram_component|auto_generated|q_a\(0) & ( (\inst1|inst16|_~7_combout\ & \muxSel[3]~input_o\) ) ) ) # ( !\inst1|inst19|Regist\(0) & ( 
-- \inst1|inst|altsyncram_component|auto_generated|q_a\(0) & ( (\inst1|inst16|_~7_combout\ & (\muxSel[2]~input_o\ & \muxSel[3]~input_o\)) ) ) ) # ( \inst1|inst19|Regist\(0) & ( !\inst1|inst|altsyncram_component|auto_generated|q_a\(0) & ( 
-- (\inst1|inst16|_~7_combout\ & (!\muxSel[2]~input_o\ & \muxSel[3]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000000010000000001000000010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst16|ALT_INV__~7_combout\,
	datab => \ALT_INV_muxSel[2]~input_o\,
	datac => \ALT_INV_muxSel[3]~input_o\,
	datae => \inst1|inst19|ALT_INV_Regist\(0),
	dataf => \inst1|inst|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	combout => \inst1|inst16|result[0]~329_combout\);

-- Location: IOIBUF_X30_Y0_N35
\Fuente0~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Fuente0,
	o => \Fuente0~input_o\);

-- Location: LABCELL_X35_Y3_N18
\inst1|inst16|result[0]~333\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|result[0]~333_combout\ = ( \muxSel[3]~input_o\ & ( \inst1|inst16|_~18_combout\ & ( (!\muxSel[2]~input_o\ & \Fuente0~input_o\) ) ) ) # ( !\muxSel[3]~input_o\ & ( \inst1|inst16|_~18_combout\ & ( \Fuente0~input_o\ ) ) ) # ( \muxSel[3]~input_o\ 
-- & ( !\inst1|inst16|_~18_combout\ & ( (!\muxSel[2]~input_o\ & (\inst1|inst16|_~17_combout\ & \Fuente0~input_o\)) ) ) ) # ( !\muxSel[3]~input_o\ & ( !\inst1|inst16|_~18_combout\ & ( (\inst1|inst16|_~17_combout\ & \Fuente0~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000100000001000001111000011110000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_muxSel[2]~input_o\,
	datab => \inst1|inst16|ALT_INV__~17_combout\,
	datac => \ALT_INV_Fuente0~input_o\,
	datae => \ALT_INV_muxSel[3]~input_o\,
	dataf => \inst1|inst16|ALT_INV__~18_combout\,
	combout => \inst1|inst16|result[0]~333_combout\);

-- Location: LABCELL_X36_Y4_N30
\inst1|inst16|result[0]~334\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|result[0]~334_combout\ = ( \Fuente0~input_o\ & ( \inst1|inst16|_~22_combout\ ) ) # ( \Fuente0~input_o\ & ( !\inst1|inst16|_~22_combout\ & ( (((\inst1|inst16|_~21_combout\) # (\inst1|inst16|_~20_combout\)) # (\inst1|inst16|_~19_combout\)) # 
-- (\inst1|inst16|_~23_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst16|ALT_INV__~23_combout\,
	datab => \inst1|inst16|ALT_INV__~19_combout\,
	datac => \inst1|inst16|ALT_INV__~20_combout\,
	datad => \inst1|inst16|ALT_INV__~21_combout\,
	datae => \ALT_INV_Fuente0~input_o\,
	dataf => \inst1|inst16|ALT_INV__~22_combout\,
	combout => \inst1|inst16|result[0]~334_combout\);

-- Location: MLABCELL_X25_Y3_N48
\inst1|inst16|result[0]~330\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|result[0]~330_combout\ = ( \inst1|inst6|Regist\(0) & ( \inst1|inst17|Regist\(0) & ( (!\inst1|inst16|_~10_combout\ & (!\inst1|inst16|_~8_combout\ & ((!\inst1|inst9|Regist\(0)) # (!\inst1|inst16|_~9_combout\)))) ) ) ) # ( 
-- !\inst1|inst6|Regist\(0) & ( \inst1|inst17|Regist\(0) & ( (!\inst1|inst16|_~10_combout\ & ((!\inst1|inst9|Regist\(0)) # (!\inst1|inst16|_~9_combout\))) ) ) ) # ( \inst1|inst6|Regist\(0) & ( !\inst1|inst17|Regist\(0) & ( (!\inst1|inst16|_~8_combout\ & 
-- ((!\inst1|inst9|Regist\(0)) # (!\inst1|inst16|_~9_combout\))) ) ) ) # ( !\inst1|inst6|Regist\(0) & ( !\inst1|inst17|Regist\(0) & ( (!\inst1|inst9|Regist\(0)) # (!\inst1|inst16|_~9_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000110011001100000010101010101000001000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst16|ALT_INV__~10_combout\,
	datab => \inst1|inst16|ALT_INV__~8_combout\,
	datac => \inst1|inst9|ALT_INV_Regist\(0),
	datad => \inst1|inst16|ALT_INV__~9_combout\,
	datae => \inst1|inst6|ALT_INV_Regist\(0),
	dataf => \inst1|inst17|ALT_INV_Regist\(0),
	combout => \inst1|inst16|result[0]~330_combout\);

-- Location: MLABCELL_X28_Y1_N39
\inst1|inst16|result[0]~332\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|result[0]~332_combout\ = ( \inst1|inst16|_~14_combout\ & ( \inst1|inst2|Regist\(0) & ( (!\inst1|inst11|Regist\(0) & (!\inst1|inst16|_~15_combout\ & ((!\inst1|inst16|_~16_combout\) # (!\Fuente0~input_o\)))) ) ) ) # ( 
-- !\inst1|inst16|_~14_combout\ & ( \inst1|inst2|Regist\(0) & ( (!\inst1|inst16|_~15_combout\ & ((!\inst1|inst16|_~16_combout\) # (!\Fuente0~input_o\))) ) ) ) # ( \inst1|inst16|_~14_combout\ & ( !\inst1|inst2|Regist\(0) & ( (!\inst1|inst11|Regist\(0) & 
-- ((!\inst1|inst16|_~16_combout\) # (!\Fuente0~input_o\))) ) ) ) # ( !\inst1|inst16|_~14_combout\ & ( !\inst1|inst2|Regist\(0) & ( (!\inst1|inst16|_~16_combout\) # (!\Fuente0~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101110111000001110000011101110000000001110000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst16|ALT_INV__~16_combout\,
	datab => \ALT_INV_Fuente0~input_o\,
	datac => \inst1|inst11|ALT_INV_Regist\(0),
	datad => \inst1|inst16|ALT_INV__~15_combout\,
	datae => \inst1|inst16|ALT_INV__~14_combout\,
	dataf => \inst1|inst2|ALT_INV_Regist\(0),
	combout => \inst1|inst16|result[0]~332_combout\);

-- Location: IOIBUF_X26_Y0_N92
\Destino0~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Destino0,
	o => \Destino0~input_o\);

-- Location: LABCELL_X27_Y3_N30
\inst1|inst16|result[0]~331\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|result[0]~331_combout\ = ( \inst1|inst16|_~13_combout\ & ( \inst1|inst10|Regist\(0) & ( (!\Destino0~input_o\ & (!\inst1|inst16|_~12_combout\ & ((!\inst1|inst16|_~11_combout\) # (!\inst1|inst5|Regist\(0))))) ) ) ) # ( 
-- !\inst1|inst16|_~13_combout\ & ( \inst1|inst10|Regist\(0) & ( (!\inst1|inst16|_~12_combout\ & ((!\inst1|inst16|_~11_combout\) # (!\inst1|inst5|Regist\(0)))) ) ) ) # ( \inst1|inst16|_~13_combout\ & ( !\inst1|inst10|Regist\(0) & ( (!\Destino0~input_o\ & 
-- ((!\inst1|inst16|_~11_combout\) # (!\inst1|inst5|Regist\(0)))) ) ) ) # ( !\inst1|inst16|_~13_combout\ & ( !\inst1|inst10|Regist\(0) & ( (!\inst1|inst16|_~11_combout\) # (!\inst1|inst5|Regist\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110101010110011001000100011110000101000001100000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst16|ALT_INV__~11_combout\,
	datab => \ALT_INV_Destino0~input_o\,
	datac => \inst1|inst16|ALT_INV__~12_combout\,
	datad => \inst1|inst5|ALT_INV_Regist\(0),
	datae => \inst1|inst16|ALT_INV__~13_combout\,
	dataf => \inst1|inst10|ALT_INV_Regist\(0),
	combout => \inst1|inst16|result[0]~331_combout\);

-- Location: LABCELL_X27_Y3_N54
\inst1|inst16|result[0]~335\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|result[0]~335_combout\ = ( \inst1|inst16|result[0]~332_combout\ & ( \inst1|inst16|result[0]~331_combout\ & ( (!\inst1|inst16|result[0]~333_combout\ & (!\inst1|inst16|result[0]~334_combout\ & \inst1|inst16|result[0]~330_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst16|ALT_INV_result[0]~333_combout\,
	datac => \inst1|inst16|ALT_INV_result[0]~334_combout\,
	datad => \inst1|inst16|ALT_INV_result[0]~330_combout\,
	datae => \inst1|inst16|ALT_INV_result[0]~332_combout\,
	dataf => \inst1|inst16|ALT_INV_result[0]~331_combout\,
	combout => \inst1|inst16|result[0]~335_combout\);

-- Location: MLABCELL_X28_Y3_N30
\inst1|inst16|result[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16|result\(0) = ( \inst1|inst16|result[0]~329_combout\ & ( \inst1|inst16|result[0]~335_combout\ ) ) # ( !\inst1|inst16|result[0]~329_combout\ & ( \inst1|inst16|result[0]~335_combout\ & ( (!\inst1|inst16|result[0]~328_combout\) # 
-- ((!\inst1|inst16|result[0]~327_combout\) # ((\inst1|inst16|_~0_combout\ & \inst1|inst20|Regist\(0)))) ) ) ) # ( \inst1|inst16|result[0]~329_combout\ & ( !\inst1|inst16|result[0]~335_combout\ ) ) # ( !\inst1|inst16|result[0]~329_combout\ & ( 
-- !\inst1|inst16|result[0]~335_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111110011011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst16|ALT_INV__~0_combout\,
	datab => \inst1|inst16|ALT_INV_result[0]~328_combout\,
	datac => \inst1|inst20|ALT_INV_Regist\(0),
	datad => \inst1|inst16|ALT_INV_result[0]~327_combout\,
	datae => \inst1|inst16|ALT_INV_result[0]~329_combout\,
	dataf => \inst1|inst16|ALT_INV_result[0]~335_combout\,
	combout => \inst1|inst16|result\(0));

-- Location: LABCELL_X33_Y3_N9
\inst1|inst8|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst8|Mux7~0_combout\ = ( \SelBus[2]~input_o\ & ( \inst1|inst8|Regist\(0) & ( (!\SelBus[3]~input_o\ & \inst1|inst8|Regist\(1)) ) ) ) # ( !\SelBus[2]~input_o\ & ( \inst1|inst8|Regist\(0) & ( (!\SelBus[3]~input_o\ & \inst1|inst16|result\(0)) ) ) ) # 
-- ( \SelBus[2]~input_o\ & ( !\inst1|inst8|Regist\(0) & ( (\inst1|inst8|Regist\(1)) # (\SelBus[3]~input_o\) ) ) ) # ( !\SelBus[2]~input_o\ & ( !\inst1|inst8|Regist\(0) & ( (\inst1|inst16|result\(0)) # (\SelBus[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111111111001111110011111100000000110011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SelBus[3]~input_o\,
	datac => \inst1|inst8|ALT_INV_Regist\(1),
	datad => \inst1|inst16|ALT_INV_result\(0),
	datae => \ALT_INV_SelBus[2]~input_o\,
	dataf => \inst1|inst8|ALT_INV_Regist\(0),
	combout => \inst1|inst8|Mux7~0_combout\);

-- Location: LABCELL_X33_Y3_N12
\inst1|inst8|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst8|Mux7~1_combout\ = ( \inst1|inst8|Add0~9_sumout\ & ( \inst1|inst8|Mux7~0_combout\ & ( (!\inst1|inst8|Regist[0]~5_combout\) # ((\inst1|inst8|Regist[0]~4_combout\) # (\inst1|inst8|Regist\(7))) ) ) ) # ( !\inst1|inst8|Add0~9_sumout\ & ( 
-- \inst1|inst8|Mux7~0_combout\ & ( (!\inst1|inst8|Regist[0]~4_combout\ & ((!\inst1|inst8|Regist[0]~5_combout\) # (\inst1|inst8|Regist\(7)))) ) ) ) # ( \inst1|inst8|Add0~9_sumout\ & ( !\inst1|inst8|Mux7~0_combout\ & ( ((\inst1|inst8|Regist[0]~5_combout\ & 
-- \inst1|inst8|Regist\(7))) # (\inst1|inst8|Regist[0]~4_combout\) ) ) ) # ( !\inst1|inst8|Add0~9_sumout\ & ( !\inst1|inst8|Mux7~0_combout\ & ( (\inst1|inst8|Regist[0]~5_combout\ & (\inst1|inst8|Regist\(7) & !\inst1|inst8|Regist[0]~4_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000111110001111110110000101100001011111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Regist[0]~5_combout\,
	datab => \inst1|inst8|ALT_INV_Regist\(7),
	datac => \inst1|inst8|ALT_INV_Regist[0]~4_combout\,
	datae => \inst1|inst8|ALT_INV_Add0~9_sumout\,
	dataf => \inst1|inst8|ALT_INV_Mux7~0_combout\,
	combout => \inst1|inst8|Mux7~1_combout\);

-- Location: FF_X33_Y3_N14
\inst1|inst8|Regist[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst8|Mux7~1_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[0]~6_combout\,
	ena => \inst1|inst8|Regist[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst8|Regist\(0));

-- Location: LABCELL_X31_Y2_N48
\inst1|inst8|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst8|Add0~5_sumout\ = SUM(( (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\)) # (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst1|inst16|result\(6))))) ) + ( !\inst1|inst8|Regist\(6) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst1|inst8|Add0~2\ ))
-- \inst1|inst8|Add0~6\ = CARRY(( (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\)) # (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst1|inst16|result\(6))))) ) + ( !\inst1|inst8|Regist\(6) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( 
-- \inst1|inst8|Add0~2\ ))

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
	datad => \inst1|inst16|ALT_INV_result\(6),
	dataf => \inst1|inst8|ALT_INV_Regist\(6),
	cin => \inst1|inst8|Add0~2\,
	sumout => \inst1|inst8|Add0~5_sumout\,
	cout => \inst1|inst8|Add0~6\);

-- Location: LABCELL_X31_Y2_N51
\inst1|inst8|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst8|Add0~29_sumout\ = SUM(( !\inst1|inst8|Regist\(7) $ (((!\SelBus[3]~input_o\) # (!\SelBus[1]~input_o\))) ) + ( (!\SelBus[3]~input_o\ & (\SelBus[0]~input_o\)) # (\SelBus[3]~input_o\ & (((!\SelBus[1]~input_o\ & \inst1|inst16|result\(7))))) ) + ( 
-- \inst1|inst8|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110111011000110100000000000000000000010111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[3]~input_o\,
	datab => \ALT_INV_SelBus[0]~input_o\,
	datac => \ALT_INV_SelBus[1]~input_o\,
	datad => \inst1|inst8|ALT_INV_Regist\(7),
	dataf => \inst1|inst16|ALT_INV_result\(7),
	cin => \inst1|inst8|Add0~6\,
	sumout => \inst1|inst8|Add0~29_sumout\);

-- Location: LABCELL_X31_Y2_N24
\inst1|inst8|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst8|Mux0~0_combout\ = ( \inst1|inst16|result\(7) & ( (!\SelBus[3]~input_o\ & (((!\SelBus[2]~input_o\)) # (\inst1|inst8|Regist\(6)))) # (\SelBus[3]~input_o\ & (((!\inst1|inst8|Regist\(7))))) ) ) # ( !\inst1|inst16|result\(7) & ( 
-- (!\SelBus[3]~input_o\ & (\inst1|inst8|Regist\(6) & (\SelBus[2]~input_o\))) # (\SelBus[3]~input_o\ & (((!\inst1|inst8|Regist\(7))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100010000000111110001000011011111110100001101111111010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Regist\(6),
	datab => \ALT_INV_SelBus[2]~input_o\,
	datac => \ALT_INV_SelBus[3]~input_o\,
	datad => \inst1|inst8|ALT_INV_Regist\(7),
	dataf => \inst1|inst16|ALT_INV_result\(7),
	combout => \inst1|inst8|Mux0~0_combout\);

-- Location: LABCELL_X31_Y2_N54
\inst1|inst8|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst8|Mux0~1_combout\ = ( \inst1|inst8|Mux0~0_combout\ & ( (!\inst1|inst8|Regist[0]~4_combout\ & (((!\inst1|inst8|Regist[7]~7_combout\)) # (\inst1|inst8|Regist\(0)))) # (\inst1|inst8|Regist[0]~4_combout\ & (((\inst1|inst8|Add0~29_sumout\)))) ) ) # 
-- ( !\inst1|inst8|Mux0~0_combout\ & ( (!\inst1|inst8|Regist[0]~4_combout\ & (\inst1|inst8|Regist\(0) & ((\inst1|inst8|Regist[7]~7_combout\)))) # (\inst1|inst8|Regist[0]~4_combout\ & (((\inst1|inst8|Add0~29_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000111000000110100011111001111010001111100111101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Regist\(0),
	datab => \inst1|inst8|ALT_INV_Regist[0]~4_combout\,
	datac => \inst1|inst8|ALT_INV_Add0~29_sumout\,
	datad => \inst1|inst8|ALT_INV_Regist[7]~7_combout\,
	dataf => \inst1|inst8|ALT_INV_Mux0~0_combout\,
	combout => \inst1|inst8|Mux0~1_combout\);

-- Location: FF_X31_Y2_N56
\inst1|inst8|Regist[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst8|Mux0~1_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[7]~8_combout\,
	ena => \inst1|inst8|Regist[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst8|Regist\(7));

-- Location: MLABCELL_X34_Y2_N45
\inst1|inst8|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst8|Mux1~1_combout\ = ( \inst1|inst8|Regist\(5) & ( (\SelBus[2]~input_o\ & ((!\SelBus[0]~input_o\) # (\inst1|inst8|Regist\(7)))) ) ) # ( !\inst1|inst8|Regist\(5) & ( (\SelBus[2]~input_o\ & (\SelBus[0]~input_o\ & \inst1|inst8|Regist\(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010101010000010101010101000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SelBus[2]~input_o\,
	datac => \ALT_INV_SelBus[0]~input_o\,
	datad => \inst1|inst8|ALT_INV_Regist\(7),
	dataf => \inst1|inst8|ALT_INV_Regist\(5),
	combout => \inst1|inst8|Mux1~1_combout\);

-- Location: LABCELL_X30_Y2_N30
\inst1|inst8|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst8|Mux1~0_combout\ = ( \inst1|inst16|result\(6) & ( (!\inst1|inst8|Regist\(6)) # (!\SelBus[1]~input_o\) ) ) # ( !\inst1|inst16|result\(6) & ( (!\inst1|inst8|Regist\(6) & \SelBus[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst8|ALT_INV_Regist\(6),
	datad => \ALT_INV_SelBus[1]~input_o\,
	dataf => \inst1|inst16|ALT_INV_result\(6),
	combout => \inst1|inst8|Mux1~0_combout\);

-- Location: LABCELL_X30_Y2_N33
\inst1|inst8|Mux1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst8|Mux1~2_combout\ = ( \inst1|inst8|Mux1~0_combout\ & ( (((\inst1|inst8|Add0~5_sumout\ & \inst1|inst8|Mux3~0_combout\)) # (\inst1|inst8|Regist[4]~0_combout\)) # (\inst1|inst8|Mux1~1_combout\) ) ) # ( !\inst1|inst8|Mux1~0_combout\ & ( 
-- ((\inst1|inst8|Add0~5_sumout\ & \inst1|inst8|Mux3~0_combout\)) # (\inst1|inst8|Mux1~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101011111010101010101111101110111011111110111011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Mux1~1_combout\,
	datab => \inst1|inst8|ALT_INV_Regist[4]~0_combout\,
	datac => \inst1|inst8|ALT_INV_Add0~5_sumout\,
	datad => \inst1|inst8|ALT_INV_Mux3~0_combout\,
	dataf => \inst1|inst8|ALT_INV_Mux1~0_combout\,
	combout => \inst1|inst8|Mux1~2_combout\);

-- Location: FF_X30_Y2_N35
\inst1|inst8|Regist[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst8|Mux1~2_combout\,
	clrn => \ALT_INV_Rst~inputCLKENA0_outclk\,
	sclr => \inst1|inst8|Regist[4]~1_combout\,
	ena => \inst1|inst8|Regist[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst8|Regist\(6));

-- Location: LABCELL_X31_Y2_N18
\inst1|inst252|ROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst252|ROM~0_combout\ = ( !\inst1|inst8|Regist\(3) & ( (!\inst1|inst8|Regist\(2) & (!\inst1|inst8|Regist\(4) & !\inst1|inst8|Regist\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst8|ALT_INV_Regist\(2),
	datac => \inst1|inst8|ALT_INV_Regist\(4),
	datad => \inst1|inst8|ALT_INV_Regist\(1),
	dataf => \inst1|inst8|ALT_INV_Regist\(3),
	combout => \inst1|inst252|ROM~0_combout\);

-- Location: LABCELL_X31_Y2_N21
\inst1|inst252|ROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst252|ROM~1_combout\ = ( \inst1|inst252|ROM~0_combout\ & ( (!\inst1|inst8|Regist\(6) & (!\inst1|inst8|Regist\(5) & !\inst1|inst8|Regist\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|ALT_INV_Regist\(6),
	datac => \inst1|inst8|ALT_INV_Regist\(5),
	datad => \inst1|inst8|ALT_INV_Regist\(0),
	dataf => \inst1|inst252|ALT_INV_ROM~0_combout\,
	combout => \inst1|inst252|ROM~1_combout\);

-- Location: LABCELL_X48_Y2_N36
\inst1|inst252|data_out[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst252|data_out[6]~feeder_combout\ = ( \inst1|inst252|ROM~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst1|inst252|ALT_INV_ROM~1_combout\,
	combout => \inst1|inst252|data_out[6]~feeder_combout\);

-- Location: FF_X48_Y2_N37
\inst1|inst252|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst252|data_out[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst252|data_out\(6));

-- Location: LABCELL_X48_Y2_N45
\inst1|inst252|data_out[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst252|data_out[5]~feeder_combout\ = ( \inst1|inst252|ROM~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst1|inst252|ALT_INV_ROM~1_combout\,
	combout => \inst1|inst252|data_out[5]~feeder_combout\);

-- Location: FF_X48_Y2_N46
\inst1|inst252|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst252|data_out[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst252|data_out\(5));

-- Location: LABCELL_X48_Y2_N51
\inst1|inst252|data_out[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst252|data_out[0]~feeder_combout\ = ( \inst1|inst252|ROM~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst1|inst252|ALT_INV_ROM~1_combout\,
	combout => \inst1|inst252|data_out[0]~feeder_combout\);

-- Location: FF_X48_Y2_N52
\inst1|inst252|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \inst1|inst252|data_out[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst252|data_out\(0));

-- Location: IOIBUF_X64_Y81_N1
\MDR[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MDR(7),
	o => \MDR[7]~input_o\);

-- Location: IOIBUF_X52_Y81_N35
\MDR[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MDR(6),
	o => \MDR[6]~input_o\);

-- Location: IOIBUF_X38_Y81_N35
\MDR[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MDR(5),
	o => \MDR[5]~input_o\);

-- Location: IOIBUF_X76_Y81_N52
\MDR[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MDR(4),
	o => \MDR[4]~input_o\);

-- Location: IOIBUF_X89_Y36_N38
\MDR[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MDR(3),
	o => \MDR[3]~input_o\);

-- Location: IOIBUF_X62_Y81_N1
\MDR[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MDR(2),
	o => \MDR[2]~input_o\);

-- Location: IOIBUF_X70_Y81_N1
\MDR[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MDR(1),
	o => \MDR[1]~input_o\);

-- Location: IOIBUF_X68_Y0_N1
\MDR[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MDR(0),
	o => \MDR[0]~input_o\);

-- Location: IOIBUF_X80_Y81_N1
\Cache[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cache(15),
	o => \Cache[15]~input_o\);

-- Location: IOIBUF_X60_Y81_N1
\Cache[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cache(14),
	o => \Cache[14]~input_o\);

-- Location: IOIBUF_X36_Y81_N18
\Cache[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cache(13),
	o => \Cache[13]~input_o\);

-- Location: IOIBUF_X89_Y8_N4
\Cache[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cache(12),
	o => \Cache[12]~input_o\);

-- Location: IOIBUF_X64_Y0_N35
\Cache[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cache(11),
	o => \Cache[11]~input_o\);

-- Location: IOIBUF_X38_Y81_N18
\Cache[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cache(10),
	o => \Cache[10]~input_o\);

-- Location: IOIBUF_X50_Y81_N92
\Cache[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cache(9),
	o => \Cache[9]~input_o\);

-- Location: IOIBUF_X30_Y81_N18
\Cache[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cache(8),
	o => \Cache[8]~input_o\);

-- Location: IOIBUF_X70_Y0_N52
\Cache[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cache(7),
	o => \Cache[7]~input_o\);

-- Location: IOIBUF_X8_Y0_N18
\Cache[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cache(6),
	o => \Cache[6]~input_o\);

-- Location: IOIBUF_X89_Y4_N44
\Cache[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cache(5),
	o => \Cache[5]~input_o\);

-- Location: IOIBUF_X66_Y81_N75
\Cache[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cache(4),
	o => \Cache[4]~input_o\);

-- Location: IOIBUF_X62_Y0_N1
\Cache[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cache(3),
	o => \Cache[3]~input_o\);

-- Location: IOIBUF_X70_Y81_N35
\Cache[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cache(2),
	o => \Cache[2]~input_o\);

-- Location: IOIBUF_X62_Y0_N18
\Cache[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cache(1),
	o => \Cache[1]~input_o\);

-- Location: IOIBUF_X64_Y0_N52
\Cache[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cache(0),
	o => \Cache[0]~input_o\);

-- Location: IOIBUF_X56_Y81_N18
\Flags[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Flags(15),
	o => \Flags[15]~input_o\);

-- Location: IOIBUF_X58_Y81_N92
\Flags[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Flags(14),
	o => \Flags[14]~input_o\);

-- Location: IOIBUF_X89_Y38_N21
\Flags[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Flags(13),
	o => \Flags[13]~input_o\);

-- Location: IOIBUF_X54_Y81_N18
\Flags[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Flags(12),
	o => \Flags[12]~input_o\);

-- Location: IOIBUF_X62_Y0_N52
\Flags[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Flags(11),
	o => \Flags[11]~input_o\);

-- Location: IOIBUF_X56_Y0_N1
\Flags[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Flags(10),
	o => \Flags[10]~input_o\);

-- Location: IOIBUF_X89_Y9_N38
\Flags[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Flags(9),
	o => \Flags[9]~input_o\);

-- Location: IOIBUF_X58_Y0_N75
\Flags[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Flags(8),
	o => \Flags[8]~input_o\);

-- Location: IOIBUF_X89_Y37_N4
\Flags[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Flags(7),
	o => \Flags[7]~input_o\);

-- Location: IOIBUF_X89_Y8_N38
\Flags[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Flags(6),
	o => \Flags[6]~input_o\);

-- Location: IOIBUF_X34_Y81_N41
\Flags[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Flags(5),
	o => \Flags[5]~input_o\);

-- Location: IOIBUF_X64_Y81_N18
\Flags[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Flags(4),
	o => \Flags[4]~input_o\);

-- Location: IOIBUF_X2_Y0_N92
\Flags[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Flags(3),
	o => \Flags[3]~input_o\);

-- Location: IOIBUF_X34_Y81_N75
\Flags[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Flags(2),
	o => \Flags[2]~input_o\);

-- Location: IOIBUF_X40_Y81_N35
\Flags[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Flags(1),
	o => \Flags[1]~input_o\);

-- Location: IOIBUF_X60_Y81_N18
\Flags[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Flags(0),
	o => \Flags[0]~input_o\);

-- Location: LABCELL_X53_Y26_N3
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


