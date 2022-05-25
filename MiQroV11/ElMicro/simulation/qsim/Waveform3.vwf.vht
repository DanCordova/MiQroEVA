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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "04/04/2022 17:14:48"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ElMicro
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ElMicro_vhd_vec_tst IS
END ElMicro_vhd_vec_tst;
ARCHITECTURE ElMicro_arch OF ElMicro_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Addres_0 : STD_LOGIC;
SIGNAL Addres_1 : STD_LOGIC;
SIGNAL Addres_2 : STD_LOGIC;
SIGNAL Addres_3 : STD_LOGIC;
SIGNAL Addres_4 : STD_LOGIC;
SIGNAL Addres_5 : STD_LOGIC;
SIGNAL Addres_6 : STD_LOGIC;
SIGNAL Addres_7 : STD_LOGIC;
SIGNAL AluSel_0 : STD_LOGIC;
SIGNAL AluSel_1 : STD_LOGIC;
SIGNAL AluSel_2 : STD_LOGIC;
SIGNAL AxEnable : STD_LOGIC;
SIGNAL BIEnable : STD_LOGIC;
SIGNAL BPEnable : STD_LOGIC;
SIGNAL BxEnable : STD_LOGIC;
SIGNAL CLK : STD_LOGIC;
SIGNAL CLR : STD_LOGIC;
SIGNAL CxEnable : STD_LOGIC;
SIGNAL dataA_0 : STD_LOGIC;
SIGNAL dataA_1 : STD_LOGIC;
SIGNAL dataA_2 : STD_LOGIC;
SIGNAL dataA_3 : STD_LOGIC;
SIGNAL dataA_4 : STD_LOGIC;
SIGNAL dataA_5 : STD_LOGIC;
SIGNAL dataA_6 : STD_LOGIC;
SIGNAL dataA_7 : STD_LOGIC;
SIGNAL dataB_0 : STD_LOGIC;
SIGNAL dataB_1 : STD_LOGIC;
SIGNAL dataB_2 : STD_LOGIC;
SIGNAL dataB_3 : STD_LOGIC;
SIGNAL dataB_4 : STD_LOGIC;
SIGNAL dataB_5 : STD_LOGIC;
SIGNAL dataB_6 : STD_LOGIC;
SIGNAL dataB_7 : STD_LOGIC;
SIGNAL DxEnable : STD_LOGIC;
SIGNAL ExEnable : STD_LOGIC;
SIGNAL FxEnable : STD_LOGIC;
SIGNAL IREnable : STD_LOGIC;
SIGNAL MAREnable : STD_LOGIC;
SIGNAL MDREnable : STD_LOGIC;
SIGNAL MUX_A : STD_LOGIC;
SIGNAL MUX_B : STD_LOGIC;
SIGNAL MUX_MAR : STD_LOGIC;
SIGNAL muxSel_0 : STD_LOGIC;
SIGNAL muxSel_1 : STD_LOGIC;
SIGNAL muxSel_2 : STD_LOGIC;
SIGNAL muxSel_3 : STD_LOGIC;
SIGNAL muxSel_4 : STD_LOGIC;
SIGNAL Out_0 : STD_LOGIC;
SIGNAL Out_1 : STD_LOGIC;
SIGNAL Out_2 : STD_LOGIC;
SIGNAL Out_3 : STD_LOGIC;
SIGNAL Out_4 : STD_LOGIC;
SIGNAL Out_5 : STD_LOGIC;
SIGNAL Out_6 : STD_LOGIC;
SIGNAL Out_7 : STD_LOGIC;
SIGNAL Outd_0 : STD_LOGIC;
SIGNAL Outd_1 : STD_LOGIC;
SIGNAL Outd_2 : STD_LOGIC;
SIGNAL Outd_3 : STD_LOGIC;
SIGNAL Outd_4 : STD_LOGIC;
SIGNAL Outd_5 : STD_LOGIC;
SIGNAL Outd_6 : STD_LOGIC;
SIGNAL Outd_7 : STD_LOGIC;
SIGNAL PCEnable : STD_LOGIC;
SIGNAL SelBus_0 : STD_LOGIC;
SIGNAL SelBus_1 : STD_LOGIC;
SIGNAL SelBus_2 : STD_LOGIC;
SIGNAL SelBus_3 : STD_LOGIC;
SIGNAL SPEnable : STD_LOGIC;
SIGNAL tmpAxEnable : STD_LOGIC;
SIGNAL tmpBxEnable : STD_LOGIC;
SIGNAL tmpRxEnable : STD_LOGIC;
SIGNAL W_r : STD_LOGIC;
COMPONENT ElMicro
	PORT (
	Addres_0 : IN STD_LOGIC;
	Addres_1 : IN STD_LOGIC;
	Addres_2 : IN STD_LOGIC;
	Addres_3 : IN STD_LOGIC;
	Addres_4 : IN STD_LOGIC;
	Addres_5 : IN STD_LOGIC;
	Addres_6 : IN STD_LOGIC;
	Addres_7 : IN STD_LOGIC;
	AluSel_0 : IN STD_LOGIC;
	AluSel_1 : IN STD_LOGIC;
	AluSel_2 : IN STD_LOGIC;
	AxEnable : IN STD_LOGIC;
	BIEnable : IN STD_LOGIC;
	BPEnable : IN STD_LOGIC;
	BxEnable : IN STD_LOGIC;
	CLK : IN STD_LOGIC;
	CLR : IN STD_LOGIC;
	CxEnable : IN STD_LOGIC;
	dataA_0 : IN STD_LOGIC;
	dataA_1 : IN STD_LOGIC;
	dataA_2 : IN STD_LOGIC;
	dataA_3 : IN STD_LOGIC;
	dataA_4 : IN STD_LOGIC;
	dataA_5 : IN STD_LOGIC;
	dataA_6 : IN STD_LOGIC;
	dataA_7 : IN STD_LOGIC;
	dataB_0 : IN STD_LOGIC;
	dataB_1 : IN STD_LOGIC;
	dataB_2 : IN STD_LOGIC;
	dataB_3 : IN STD_LOGIC;
	dataB_4 : IN STD_LOGIC;
	dataB_5 : IN STD_LOGIC;
	dataB_6 : IN STD_LOGIC;
	dataB_7 : IN STD_LOGIC;
	DxEnable : IN STD_LOGIC;
	ExEnable : IN STD_LOGIC;
	FxEnable : IN STD_LOGIC;
	IREnable : IN STD_LOGIC;
	MAREnable : IN STD_LOGIC;
	MDREnable : IN STD_LOGIC;
	MUX_A : IN STD_LOGIC;
	MUX_B : IN STD_LOGIC;
	MUX_MAR : IN STD_LOGIC;
	muxSel_0 : IN STD_LOGIC;
	muxSel_1 : IN STD_LOGIC;
	muxSel_2 : IN STD_LOGIC;
	muxSel_3 : IN STD_LOGIC;
	muxSel_4 : IN STD_LOGIC;
	Out_0 : OUT STD_LOGIC;
	Out_1 : OUT STD_LOGIC;
	Out_2 : OUT STD_LOGIC;
	Out_3 : OUT STD_LOGIC;
	Out_4 : OUT STD_LOGIC;
	Out_5 : OUT STD_LOGIC;
	Out_6 : OUT STD_LOGIC;
	Out_7 : OUT STD_LOGIC;
	Outd_0 : OUT STD_LOGIC;
	Outd_1 : OUT STD_LOGIC;
	Outd_2 : OUT STD_LOGIC;
	Outd_3 : OUT STD_LOGIC;
	Outd_4 : OUT STD_LOGIC;
	Outd_5 : OUT STD_LOGIC;
	Outd_6 : OUT STD_LOGIC;
	Outd_7 : OUT STD_LOGIC;
	PCEnable : IN STD_LOGIC;
	SelBus_0 : IN STD_LOGIC;
	SelBus_1 : IN STD_LOGIC;
	SelBus_2 : IN STD_LOGIC;
	SelBus_3 : IN STD_LOGIC;
	SPEnable : IN STD_LOGIC;
	tmpAxEnable : IN STD_LOGIC;
	tmpBxEnable : IN STD_LOGIC;
	tmpRxEnable : IN STD_LOGIC;
	W_r : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ElMicro
	PORT MAP (
-- list connections between master ports and signals
	Addres_0 => Addres_0,
	Addres_1 => Addres_1,
	Addres_2 => Addres_2,
	Addres_3 => Addres_3,
	Addres_4 => Addres_4,
	Addres_5 => Addres_5,
	Addres_6 => Addres_6,
	Addres_7 => Addres_7,
	AluSel_0 => AluSel_0,
	AluSel_1 => AluSel_1,
	AluSel_2 => AluSel_2,
	AxEnable => AxEnable,
	BIEnable => BIEnable,
	BPEnable => BPEnable,
	BxEnable => BxEnable,
	CLK => CLK,
	CLR => CLR,
	CxEnable => CxEnable,
	dataA_0 => dataA_0,
	dataA_1 => dataA_1,
	dataA_2 => dataA_2,
	dataA_3 => dataA_3,
	dataA_4 => dataA_4,
	dataA_5 => dataA_5,
	dataA_6 => dataA_6,
	dataA_7 => dataA_7,
	dataB_0 => dataB_0,
	dataB_1 => dataB_1,
	dataB_2 => dataB_2,
	dataB_3 => dataB_3,
	dataB_4 => dataB_4,
	dataB_5 => dataB_5,
	dataB_6 => dataB_6,
	dataB_7 => dataB_7,
	DxEnable => DxEnable,
	ExEnable => ExEnable,
	FxEnable => FxEnable,
	IREnable => IREnable,
	MAREnable => MAREnable,
	MDREnable => MDREnable,
	MUX_A => MUX_A,
	MUX_B => MUX_B,
	MUX_MAR => MUX_MAR,
	muxSel_0 => muxSel_0,
	muxSel_1 => muxSel_1,
	muxSel_2 => muxSel_2,
	muxSel_3 => muxSel_3,
	muxSel_4 => muxSel_4,
	Out_0 => Out_0,
	Out_1 => Out_1,
	Out_2 => Out_2,
	Out_3 => Out_3,
	Out_4 => Out_4,
	Out_5 => Out_5,
	Out_6 => Out_6,
	Out_7 => Out_7,
	Outd_0 => Outd_0,
	Outd_1 => Outd_1,
	Outd_2 => Outd_2,
	Outd_3 => Outd_3,
	Outd_4 => Outd_4,
	Outd_5 => Outd_5,
	Outd_6 => Outd_6,
	Outd_7 => Outd_7,
	PCEnable => PCEnable,
	SelBus_0 => SelBus_0,
	SelBus_1 => SelBus_1,
	SelBus_2 => SelBus_2,
	SelBus_3 => SelBus_3,
	SPEnable => SPEnable,
	tmpAxEnable => tmpAxEnable,
	tmpBxEnable => tmpBxEnable,
	tmpRxEnable => tmpRxEnable,
	W_r => W_r
	);

-- CLK
t_prcs_CLK: PROCESS
BEGIN
LOOP
	CLK <= '0';
	WAIT FOR 5000 ps;
	CLK <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK;

-- CLR
t_prcs_CLR: PROCESS
BEGIN
	CLR <= '0';
WAIT;
END PROCESS t_prcs_CLR;

-- Addres_7
t_prcs_Addres_7: PROCESS
BEGIN
	Addres_7 <= '0';
WAIT;
END PROCESS t_prcs_Addres_7;

-- Addres_6
t_prcs_Addres_6: PROCESS
BEGIN
	Addres_6 <= '0';
WAIT;
END PROCESS t_prcs_Addres_6;

-- Addres_5
t_prcs_Addres_5: PROCESS
BEGIN
	Addres_5 <= '0';
WAIT;
END PROCESS t_prcs_Addres_5;

-- Addres_4
t_prcs_Addres_4: PROCESS
BEGIN
	Addres_4 <= '0';
WAIT;
END PROCESS t_prcs_Addres_4;

-- Addres_3
t_prcs_Addres_3: PROCESS
BEGIN
	Addres_3 <= '0';
WAIT;
END PROCESS t_prcs_Addres_3;

-- Addres_2
t_prcs_Addres_2: PROCESS
BEGIN
	Addres_2 <= '0';
WAIT;
END PROCESS t_prcs_Addres_2;

-- Addres_1
t_prcs_Addres_1: PROCESS
BEGIN
	Addres_1 <= '0';
WAIT;
END PROCESS t_prcs_Addres_1;

-- Addres_0
t_prcs_Addres_0: PROCESS
BEGIN
	Addres_0 <= '0';
WAIT;
END PROCESS t_prcs_Addres_0;

-- dataA_0
t_prcs_dataA_0: PROCESS
BEGIN
	dataA_0 <= '0';
WAIT;
END PROCESS t_prcs_dataA_0;

-- dataA_1
t_prcs_dataA_1: PROCESS
BEGIN
	dataA_1 <= '0';
WAIT;
END PROCESS t_prcs_dataA_1;

-- dataA_2
t_prcs_dataA_2: PROCESS
BEGIN
	dataA_2 <= '0';
WAIT;
END PROCESS t_prcs_dataA_2;

-- dataA_3
t_prcs_dataA_3: PROCESS
BEGIN
	dataA_3 <= '0';
WAIT;
END PROCESS t_prcs_dataA_3;

-- dataA_4
t_prcs_dataA_4: PROCESS
BEGIN
	dataA_4 <= '1';
WAIT;
END PROCESS t_prcs_dataA_4;

-- dataA_5
t_prcs_dataA_5: PROCESS
BEGIN
	dataA_5 <= '1';
WAIT;
END PROCESS t_prcs_dataA_5;

-- dataA_6
t_prcs_dataA_6: PROCESS
BEGIN
	dataA_6 <= '1';
WAIT;
END PROCESS t_prcs_dataA_6;

-- dataA_7
t_prcs_dataA_7: PROCESS
BEGIN
	dataA_7 <= '0';
WAIT;
END PROCESS t_prcs_dataA_7;

-- dataB_0
t_prcs_dataB_0: PROCESS
BEGIN
	dataB_0 <= '0';
WAIT;
END PROCESS t_prcs_dataB_0;

-- dataB_1
t_prcs_dataB_1: PROCESS
BEGIN
	dataB_1 <= '0';
WAIT;
END PROCESS t_prcs_dataB_1;

-- dataB_2
t_prcs_dataB_2: PROCESS
BEGIN
	dataB_2 <= '0';
WAIT;
END PROCESS t_prcs_dataB_2;

-- dataB_3
t_prcs_dataB_3: PROCESS
BEGIN
	dataB_3 <= '1';
WAIT;
END PROCESS t_prcs_dataB_3;

-- dataB_4
t_prcs_dataB_4: PROCESS
BEGIN
	dataB_4 <= '0';
WAIT;
END PROCESS t_prcs_dataB_4;

-- dataB_5
t_prcs_dataB_5: PROCESS
BEGIN
	dataB_5 <= '0';
WAIT;
END PROCESS t_prcs_dataB_5;

-- dataB_6
t_prcs_dataB_6: PROCESS
BEGIN
	dataB_6 <= '0';
WAIT;
END PROCESS t_prcs_dataB_6;

-- dataB_7
t_prcs_dataB_7: PROCESS
BEGIN
	dataB_7 <= '0';
WAIT;
END PROCESS t_prcs_dataB_7;

-- AluSel_2
t_prcs_AluSel_2: PROCESS
BEGIN
	AluSel_2 <= '0';
WAIT;
END PROCESS t_prcs_AluSel_2;

-- AluSel_1
t_prcs_AluSel_1: PROCESS
BEGIN
	AluSel_1 <= '0';
WAIT;
END PROCESS t_prcs_AluSel_1;

-- AluSel_0
t_prcs_AluSel_0: PROCESS
BEGIN
	AluSel_0 <= '0';
	WAIT FOR 680000 ps;
	AluSel_0 <= '1';
WAIT;
END PROCESS t_prcs_AluSel_0;

-- SelBus_3
t_prcs_SelBus_3: PROCESS
BEGIN
	SelBus_3 <= '0';
WAIT;
END PROCESS t_prcs_SelBus_3;

-- SelBus_2
t_prcs_SelBus_2: PROCESS
BEGIN
	SelBus_2 <= '0';
WAIT;
END PROCESS t_prcs_SelBus_2;

-- SelBus_1
t_prcs_SelBus_1: PROCESS
BEGIN
	SelBus_1 <= '0';
WAIT;
END PROCESS t_prcs_SelBus_1;

-- SelBus_0
t_prcs_SelBus_0: PROCESS
BEGIN
	SelBus_0 <= '1';
WAIT;
END PROCESS t_prcs_SelBus_0;

-- muxSel_4
t_prcs_muxSel_4: PROCESS
BEGIN
	muxSel_4 <= '0';
WAIT;
END PROCESS t_prcs_muxSel_4;

-- muxSel_3
t_prcs_muxSel_3: PROCESS
BEGIN
	muxSel_3 <= '0';
	WAIT FOR 420000 ps;
	muxSel_3 <= '1';
	WAIT FOR 520000 ps;
	muxSel_3 <= '0';
WAIT;
END PROCESS t_prcs_muxSel_3;

-- muxSel_2
t_prcs_muxSel_2: PROCESS
BEGIN
	muxSel_2 <= '0';
	WAIT FOR 420000 ps;
	muxSel_2 <= '1';
	WAIT FOR 520000 ps;
	muxSel_2 <= '0';
WAIT;
END PROCESS t_prcs_muxSel_2;

-- muxSel_1
t_prcs_muxSel_1: PROCESS
BEGIN
	muxSel_1 <= '0';
WAIT;
END PROCESS t_prcs_muxSel_1;

-- muxSel_0
t_prcs_muxSel_0: PROCESS
BEGIN
	muxSel_0 <= '0';
	WAIT FOR 180000 ps;
	muxSel_0 <= '1';
	WAIT FOR 240000 ps;
	muxSel_0 <= '0';
WAIT;
END PROCESS t_prcs_muxSel_0;

-- MUX_A
t_prcs_MUX_A: PROCESS
BEGIN
	MUX_A <= '0';
	WAIT FOR 10000 ps;
	MUX_A <= '1';
	WAIT FOR 60000 ps;
	MUX_A <= '0';
WAIT;
END PROCESS t_prcs_MUX_A;

-- MUX_B
t_prcs_MUX_B: PROCESS
BEGIN
	MUX_B <= '0';
	WAIT FOR 180000 ps;
	MUX_B <= '1';
	WAIT FOR 70000 ps;
	MUX_B <= '0';
WAIT;
END PROCESS t_prcs_MUX_B;

-- MUX_MAR
t_prcs_MUX_MAR: PROCESS
BEGIN
	MUX_MAR <= '0';
WAIT;
END PROCESS t_prcs_MUX_MAR;

-- AxEnable
t_prcs_AxEnable: PROCESS
BEGIN
	AxEnable <= '0';
	WAIT FOR 30000 ps;
	AxEnable <= '1';
	WAIT FOR 40000 ps;
	AxEnable <= '0';
WAIT;
END PROCESS t_prcs_AxEnable;

-- BxEnable
t_prcs_BxEnable: PROCESS
BEGIN
	BxEnable <= '0';
	WAIT FOR 210000 ps;
	BxEnable <= '1';
	WAIT FOR 40000 ps;
	BxEnable <= '0';
WAIT;
END PROCESS t_prcs_BxEnable;

-- CxEnable
t_prcs_CxEnable: PROCESS
BEGIN
	CxEnable <= '0';
WAIT;
END PROCESS t_prcs_CxEnable;

-- DxEnable
t_prcs_DxEnable: PROCESS
BEGIN
	DxEnable <= '0';
WAIT;
END PROCESS t_prcs_DxEnable;

-- ExEnable
t_prcs_ExEnable: PROCESS
BEGIN
	ExEnable <= '0';
WAIT;
END PROCESS t_prcs_ExEnable;

-- FxEnable
t_prcs_FxEnable: PROCESS
BEGIN
	FxEnable <= '0';
WAIT;
END PROCESS t_prcs_FxEnable;

-- BIEnable
t_prcs_BIEnable: PROCESS
BEGIN
	BIEnable <= '0';
WAIT;
END PROCESS t_prcs_BIEnable;

-- BPEnable
t_prcs_BPEnable: PROCESS
BEGIN
	BPEnable <= '0';
WAIT;
END PROCESS t_prcs_BPEnable;

-- tmpAxEnable
t_prcs_tmpAxEnable: PROCESS
BEGIN
	tmpAxEnable <= '0';
	WAIT FOR 120000 ps;
	tmpAxEnable <= '1';
	WAIT FOR 60000 ps;
	tmpAxEnable <= '0';
WAIT;
END PROCESS t_prcs_tmpAxEnable;

-- tmpBxEnable
t_prcs_tmpBxEnable: PROCESS
BEGIN
	tmpBxEnable <= '0';
	WAIT FOR 250000 ps;
	tmpBxEnable <= '1';
	WAIT FOR 70000 ps;
	tmpBxEnable <= '0';
WAIT;
END PROCESS t_prcs_tmpBxEnable;

-- tmpRxEnable
t_prcs_tmpRxEnable: PROCESS
BEGIN
	tmpRxEnable <= '0';
	WAIT FOR 320000 ps;
	tmpRxEnable <= '1';
	WAIT FOR 130000 ps;
	tmpRxEnable <= '0';
WAIT;
END PROCESS t_prcs_tmpRxEnable;

-- IREnable
t_prcs_IREnable: PROCESS
BEGIN
	IREnable <= '0';
WAIT;
END PROCESS t_prcs_IREnable;

-- MAREnable
t_prcs_MAREnable: PROCESS
BEGIN
	MAREnable <= '0';
WAIT;
END PROCESS t_prcs_MAREnable;

-- MDREnable
t_prcs_MDREnable: PROCESS
BEGIN
	MDREnable <= '0';
WAIT;
END PROCESS t_prcs_MDREnable;

-- PCEnable
t_prcs_PCEnable: PROCESS
BEGIN
	PCEnable <= '0';
WAIT;
END PROCESS t_prcs_PCEnable;

-- SPEnable
t_prcs_SPEnable: PROCESS
BEGIN
	SPEnable <= '0';
WAIT;
END PROCESS t_prcs_SPEnable;

-- W_r
t_prcs_W_r: PROCESS
BEGIN
	W_r <= '0';
WAIT;
END PROCESS t_prcs_W_r;
END ElMicro_arch;
