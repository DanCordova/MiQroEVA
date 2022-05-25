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
-- Generated on "03/13/2022 18:36:13"
                                                             
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
SIGNAL AluSel_0 : STD_LOGIC;
SIGNAL AluSel_1 : STD_LOGIC;
SIGNAL AluSel_2 : STD_LOGIC;
SIGNAL BISel_0 : STD_LOGIC;
SIGNAL BISel_1 : STD_LOGIC;
SIGNAL BISel_2 : STD_LOGIC;
SIGNAL BPSel_0 : STD_LOGIC;
SIGNAL BPSel_1 : STD_LOGIC;
SIGNAL BPSel_2 : STD_LOGIC;
SIGNAL CLK : STD_LOGIC;
SIGNAL CLR : STD_LOGIC;
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
SIGNAL IRSel_0 : STD_LOGIC;
SIGNAL IRSel_1 : STD_LOGIC;
SIGNAL IRSel_2 : STD_LOGIC;
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
SIGNAL SelAx_0 : STD_LOGIC;
SIGNAL SelAx_1 : STD_LOGIC;
SIGNAL SelAx_2 : STD_LOGIC;
SIGNAL SelBx_0 : STD_LOGIC;
SIGNAL SelBx_1 : STD_LOGIC;
SIGNAL SelBx_2 : STD_LOGIC;
SIGNAL SelCx_0 : STD_LOGIC;
SIGNAL SelCx_1 : STD_LOGIC;
SIGNAL SelCx_2 : STD_LOGIC;
SIGNAL SelDx_0 : STD_LOGIC;
SIGNAL SelDx_1 : STD_LOGIC;
SIGNAL SelDx_2 : STD_LOGIC;
SIGNAL SelEx_6 : STD_LOGIC;
SIGNAL SelEx_7 : STD_LOGIC;
SIGNAL SelEx_8 : STD_LOGIC;
SIGNAL SelFx_0 : STD_LOGIC;
SIGNAL SelFx_1 : STD_LOGIC;
SIGNAL SelFx_2 : STD_LOGIC;
SIGNAL SelMAR_1 : STD_LOGIC;
SIGNAL SelMAR_2 : STD_LOGIC;
SIGNAL SelMAR_3 : STD_LOGIC;
SIGNAL SelMDR_0 : STD_LOGIC;
SIGNAL SelMDR_1 : STD_LOGIC;
SIGNAL SelMDR_2 : STD_LOGIC;
SIGNAL SelPC_0 : STD_LOGIC;
SIGNAL SelPC_1 : STD_LOGIC;
SIGNAL SelPC_2 : STD_LOGIC;
SIGNAL SPSel_0 : STD_LOGIC;
SIGNAL SPSel_1 : STD_LOGIC;
SIGNAL SPSel_2 : STD_LOGIC;
SIGNAL tempRes_0 : STD_LOGIC;
SIGNAL tempRes_1 : STD_LOGIC;
SIGNAL tempRes_2 : STD_LOGIC;
SIGNAL tmpA_0 : STD_LOGIC;
SIGNAL tmpA_1 : STD_LOGIC;
SIGNAL tmpA_2 : STD_LOGIC;
SIGNAL tmpB_0 : STD_LOGIC;
SIGNAL tmpB_1 : STD_LOGIC;
SIGNAL tmpB_2 : STD_LOGIC;
COMPONENT ElMicro
	PORT (
	AluSel_0 : IN STD_LOGIC;
	AluSel_1 : IN STD_LOGIC;
	AluSel_2 : IN STD_LOGIC;
	BISel_0 : IN STD_LOGIC;
	BISel_1 : IN STD_LOGIC;
	BISel_2 : IN STD_LOGIC;
	BPSel_0 : IN STD_LOGIC;
	BPSel_1 : IN STD_LOGIC;
	BPSel_2 : IN STD_LOGIC;
	CLK : IN STD_LOGIC;
	CLR : IN STD_LOGIC;
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
	IRSel_0 : IN STD_LOGIC;
	IRSel_1 : IN STD_LOGIC;
	IRSel_2 : IN STD_LOGIC;
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
	SelAx_0 : IN STD_LOGIC;
	SelAx_1 : IN STD_LOGIC;
	SelAx_2 : IN STD_LOGIC;
	SelBx_0 : IN STD_LOGIC;
	SelBx_1 : IN STD_LOGIC;
	SelBx_2 : IN STD_LOGIC;
	SelCx_0 : IN STD_LOGIC;
	SelCx_1 : IN STD_LOGIC;
	SelCx_2 : IN STD_LOGIC;
	SelDx_0 : IN STD_LOGIC;
	SelDx_1 : IN STD_LOGIC;
	SelDx_2 : IN STD_LOGIC;
	SelEx_6 : IN STD_LOGIC;
	SelEx_7 : IN STD_LOGIC;
	SelEx_8 : IN STD_LOGIC;
	SelFx_0 : IN STD_LOGIC;
	SelFx_1 : IN STD_LOGIC;
	SelFx_2 : IN STD_LOGIC;
	SelMAR_1 : IN STD_LOGIC;
	SelMAR_2 : IN STD_LOGIC;
	SelMAR_3 : IN STD_LOGIC;
	SelMDR_0 : IN STD_LOGIC;
	SelMDR_1 : IN STD_LOGIC;
	SelMDR_2 : IN STD_LOGIC;
	SelPC_0 : IN STD_LOGIC;
	SelPC_1 : IN STD_LOGIC;
	SelPC_2 : IN STD_LOGIC;
	SPSel_0 : IN STD_LOGIC;
	SPSel_1 : IN STD_LOGIC;
	SPSel_2 : IN STD_LOGIC;
	tempRes_0 : IN STD_LOGIC;
	tempRes_1 : IN STD_LOGIC;
	tempRes_2 : IN STD_LOGIC;
	tmpA_0 : IN STD_LOGIC;
	tmpA_1 : IN STD_LOGIC;
	tmpA_2 : IN STD_LOGIC;
	tmpB_0 : IN STD_LOGIC;
	tmpB_1 : IN STD_LOGIC;
	tmpB_2 : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ElMicro
	PORT MAP (
-- list connections between master ports and signals
	AluSel_0 => AluSel_0,
	AluSel_1 => AluSel_1,
	AluSel_2 => AluSel_2,
	BISel_0 => BISel_0,
	BISel_1 => BISel_1,
	BISel_2 => BISel_2,
	BPSel_0 => BPSel_0,
	BPSel_1 => BPSel_1,
	BPSel_2 => BPSel_2,
	CLK => CLK,
	CLR => CLR,
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
	IRSel_0 => IRSel_0,
	IRSel_1 => IRSel_1,
	IRSel_2 => IRSel_2,
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
	SelAx_0 => SelAx_0,
	SelAx_1 => SelAx_1,
	SelAx_2 => SelAx_2,
	SelBx_0 => SelBx_0,
	SelBx_1 => SelBx_1,
	SelBx_2 => SelBx_2,
	SelCx_0 => SelCx_0,
	SelCx_1 => SelCx_1,
	SelCx_2 => SelCx_2,
	SelDx_0 => SelDx_0,
	SelDx_1 => SelDx_1,
	SelDx_2 => SelDx_2,
	SelEx_6 => SelEx_6,
	SelEx_7 => SelEx_7,
	SelEx_8 => SelEx_8,
	SelFx_0 => SelFx_0,
	SelFx_1 => SelFx_1,
	SelFx_2 => SelFx_2,
	SelMAR_1 => SelMAR_1,
	SelMAR_2 => SelMAR_2,
	SelMAR_3 => SelMAR_3,
	SelMDR_0 => SelMDR_0,
	SelMDR_1 => SelMDR_1,
	SelMDR_2 => SelMDR_2,
	SelPC_0 => SelPC_0,
	SelPC_1 => SelPC_1,
	SelPC_2 => SelPC_2,
	SPSel_0 => SPSel_0,
	SPSel_1 => SPSel_1,
	SPSel_2 => SPSel_2,
	tempRes_0 => tempRes_0,
	tempRes_1 => tempRes_1,
	tempRes_2 => tempRes_2,
	tmpA_0 => tmpA_0,
	tmpA_1 => tmpA_1,
	tmpA_2 => tmpA_2,
	tmpB_0 => tmpB_0,
	tmpB_1 => tmpB_1,
	tmpB_2 => tmpB_2
	);

-- CLK
t_prcs_CLK: PROCESS
BEGIN
LOOP
	CLK <= '0';
	WAIT FOR 100000 ps;
	CLK <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 10000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK;

-- CLR
t_prcs_CLR: PROCESS
BEGIN
	CLR <= '0';
WAIT;
END PROCESS t_prcs_CLR;

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
	dataA_4 <= '0';
WAIT;
END PROCESS t_prcs_dataA_4;

-- dataA_5
t_prcs_dataA_5: PROCESS
BEGIN
	dataA_5 <= '0';
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
	dataB_3 <= '0';
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
	dataB_6 <= '1';
WAIT;
END PROCESS t_prcs_dataB_6;

-- dataB_7
t_prcs_dataB_7: PROCESS
BEGIN
	dataB_7 <= '0';
WAIT;
END PROCESS t_prcs_dataB_7;

-- IRSel_0
t_prcs_IRSel_0: PROCESS
BEGIN
	IRSel_0 <= '0';
WAIT;
END PROCESS t_prcs_IRSel_0;

-- IRSel_1
t_prcs_IRSel_1: PROCESS
BEGIN
	IRSel_1 <= '0';
WAIT;
END PROCESS t_prcs_IRSel_1;

-- IRSel_2
t_prcs_IRSel_2: PROCESS
BEGIN
	IRSel_2 <= '0';
WAIT;
END PROCESS t_prcs_IRSel_2;

-- MUX_A
t_prcs_MUX_A: PROCESS
BEGIN
	MUX_A <= '0';
	WAIT FOR 160000 ps;
	MUX_A <= '1';
	WAIT FOR 1280000 ps;
	MUX_A <= '0';
WAIT;
END PROCESS t_prcs_MUX_A;

-- MUX_B
t_prcs_MUX_B: PROCESS
BEGIN
	MUX_B <= '0';
WAIT;
END PROCESS t_prcs_MUX_B;

-- SelAx_0
t_prcs_SelAx_0: PROCESS
BEGIN
	SelAx_0 <= '0';
WAIT;
END PROCESS t_prcs_SelAx_0;

-- SelAx_1
t_prcs_SelAx_1: PROCESS
BEGIN
	SelAx_1 <= '0';
WAIT;
END PROCESS t_prcs_SelAx_1;

-- SelAx_2
t_prcs_SelAx_2: PROCESS
BEGIN
	SelAx_2 <= '0';
	WAIT FOR 1440000 ps;
	SelAx_2 <= '1';
	WAIT FOR 2000000 ps;
	SelAx_2 <= '0';
WAIT;
END PROCESS t_prcs_SelAx_2;

-- SelBx_0
t_prcs_SelBx_0: PROCESS
BEGIN
	SelBx_0 <= '0';
WAIT;
END PROCESS t_prcs_SelBx_0;

-- SelBx_1
t_prcs_SelBx_1: PROCESS
BEGIN
	SelBx_1 <= '0';
WAIT;
END PROCESS t_prcs_SelBx_1;

-- SelBx_2
t_prcs_SelBx_2: PROCESS
BEGIN
	SelBx_2 <= '0';
	WAIT FOR 2480000 ps;
	SelBx_2 <= '1';
	WAIT FOR 2160000 ps;
	SelBx_2 <= '0';
WAIT;
END PROCESS t_prcs_SelBx_2;

-- muxSel_0
t_prcs_muxSel_0: PROCESS
BEGIN
	muxSel_0 <= '0';
WAIT;
END PROCESS t_prcs_muxSel_0;

-- muxSel_1
t_prcs_muxSel_1: PROCESS
BEGIN
	muxSel_1 <= '0';
WAIT;
END PROCESS t_prcs_muxSel_1;

-- muxSel_2
t_prcs_muxSel_2: PROCESS
BEGIN
	muxSel_2 <= '0';
WAIT;
END PROCESS t_prcs_muxSel_2;

-- muxSel_3
t_prcs_muxSel_3: PROCESS
BEGIN
	muxSel_3 <= '0';
WAIT;
END PROCESS t_prcs_muxSel_3;

-- muxSel_4
t_prcs_muxSel_4: PROCESS
BEGIN
	muxSel_4 <= '0';
	WAIT FOR 4720000 ps;
	muxSel_4 <= '1';
	WAIT FOR 2000000 ps;
	muxSel_4 <= '0';
WAIT;
END PROCESS t_prcs_muxSel_4;

-- tmpA_0
t_prcs_tmpA_0: PROCESS
BEGIN
	tmpA_0 <= '0';
WAIT;
END PROCESS t_prcs_tmpA_0;

-- tmpA_1
t_prcs_tmpA_1: PROCESS
BEGIN
	tmpA_1 <= '0';
WAIT;
END PROCESS t_prcs_tmpA_1;

-- tmpA_2
t_prcs_tmpA_2: PROCESS
BEGIN
	tmpA_2 <= '0';
WAIT;
END PROCESS t_prcs_tmpA_2;

-- tmpB_0
t_prcs_tmpB_0: PROCESS
BEGIN
	tmpB_0 <= '0';
WAIT;
END PROCESS t_prcs_tmpB_0;

-- tmpB_1
t_prcs_tmpB_1: PROCESS
BEGIN
	tmpB_1 <= '0';
WAIT;
END PROCESS t_prcs_tmpB_1;

-- tmpB_2
t_prcs_tmpB_2: PROCESS
BEGIN
	tmpB_2 <= '0';
WAIT;
END PROCESS t_prcs_tmpB_2;

-- tempRes_0
t_prcs_tempRes_0: PROCESS
BEGIN
	tempRes_0 <= '0';
WAIT;
END PROCESS t_prcs_tempRes_0;

-- tempRes_1
t_prcs_tempRes_1: PROCESS
BEGIN
	tempRes_1 <= '0';
WAIT;
END PROCESS t_prcs_tempRes_1;

-- tempRes_2
t_prcs_tempRes_2: PROCESS
BEGIN
	tempRes_2 <= '0';
WAIT;
END PROCESS t_prcs_tempRes_2;

-- AluSel_0
t_prcs_AluSel_0: PROCESS
BEGIN
	AluSel_0 <= '0';
WAIT;
END PROCESS t_prcs_AluSel_0;

-- AluSel_1
t_prcs_AluSel_1: PROCESS
BEGIN
	AluSel_1 <= '0';
WAIT;
END PROCESS t_prcs_AluSel_1;

-- AluSel_2
t_prcs_AluSel_2: PROCESS
BEGIN
	AluSel_2 <= '0';
WAIT;
END PROCESS t_prcs_AluSel_2;

-- MUX_MAR
t_prcs_MUX_MAR: PROCESS
BEGIN
	MUX_MAR <= '0';
WAIT;
END PROCESS t_prcs_MUX_MAR;

-- SelCx_0
t_prcs_SelCx_0: PROCESS
BEGIN
	SelCx_0 <= '0';
WAIT;
END PROCESS t_prcs_SelCx_0;

-- SelCx_1
t_prcs_SelCx_1: PROCESS
BEGIN
	SelCx_1 <= '0';
WAIT;
END PROCESS t_prcs_SelCx_1;

-- SelCx_2
t_prcs_SelCx_2: PROCESS
BEGIN
	SelCx_2 <= '0';
WAIT;
END PROCESS t_prcs_SelCx_2;

-- SelDx_0
t_prcs_SelDx_0: PROCESS
BEGIN
	SelDx_0 <= '0';
WAIT;
END PROCESS t_prcs_SelDx_0;

-- SelDx_1
t_prcs_SelDx_1: PROCESS
BEGIN
	SelDx_1 <= '0';
WAIT;
END PROCESS t_prcs_SelDx_1;

-- SelDx_2
t_prcs_SelDx_2: PROCESS
BEGIN
	SelDx_2 <= '0';
WAIT;
END PROCESS t_prcs_SelDx_2;

-- SelEx_6
t_prcs_SelEx_6: PROCESS
BEGIN
	SelEx_6 <= '0';
WAIT;
END PROCESS t_prcs_SelEx_6;

-- SelEx_7
t_prcs_SelEx_7: PROCESS
BEGIN
	SelEx_7 <= '0';
WAIT;
END PROCESS t_prcs_SelEx_7;

-- SelEx_8
t_prcs_SelEx_8: PROCESS
BEGIN
	SelEx_8 <= '0';
WAIT;
END PROCESS t_prcs_SelEx_8;

-- SelFx_0
t_prcs_SelFx_0: PROCESS
BEGIN
	SelFx_0 <= '0';
WAIT;
END PROCESS t_prcs_SelFx_0;

-- SelFx_1
t_prcs_SelFx_1: PROCESS
BEGIN
	SelFx_1 <= '0';
WAIT;
END PROCESS t_prcs_SelFx_1;

-- SelFx_2
t_prcs_SelFx_2: PROCESS
BEGIN
	SelFx_2 <= '0';
WAIT;
END PROCESS t_prcs_SelFx_2;

-- SelMDR_0
t_prcs_SelMDR_0: PROCESS
BEGIN
	SelMDR_0 <= '0';
WAIT;
END PROCESS t_prcs_SelMDR_0;

-- SelMDR_1
t_prcs_SelMDR_1: PROCESS
BEGIN
	SelMDR_1 <= '0';
WAIT;
END PROCESS t_prcs_SelMDR_1;

-- SelMDR_2
t_prcs_SelMDR_2: PROCESS
BEGIN
	SelMDR_2 <= '0';
WAIT;
END PROCESS t_prcs_SelMDR_2;

-- SelPC_0
t_prcs_SelPC_0: PROCESS
BEGIN
	SelPC_0 <= '0';
WAIT;
END PROCESS t_prcs_SelPC_0;

-- SelPC_1
t_prcs_SelPC_1: PROCESS
BEGIN
	SelPC_1 <= '0';
WAIT;
END PROCESS t_prcs_SelPC_1;

-- SelPC_2
t_prcs_SelPC_2: PROCESS
BEGIN
	SelPC_2 <= '0';
WAIT;
END PROCESS t_prcs_SelPC_2;

-- SPSel_0
t_prcs_SPSel_0: PROCESS
BEGIN
	SPSel_0 <= '0';
WAIT;
END PROCESS t_prcs_SPSel_0;

-- SPSel_1
t_prcs_SPSel_1: PROCESS
BEGIN
	SPSel_1 <= '0';
WAIT;
END PROCESS t_prcs_SPSel_1;

-- SPSel_2
t_prcs_SPSel_2: PROCESS
BEGIN
	SPSel_2 <= '0';
WAIT;
END PROCESS t_prcs_SPSel_2;

-- BISel_0
t_prcs_BISel_0: PROCESS
BEGIN
	BISel_0 <= '0';
WAIT;
END PROCESS t_prcs_BISel_0;

-- BISel_1
t_prcs_BISel_1: PROCESS
BEGIN
	BISel_1 <= '0';
WAIT;
END PROCESS t_prcs_BISel_1;

-- BISel_2
t_prcs_BISel_2: PROCESS
BEGIN
	BISel_2 <= '0';
WAIT;
END PROCESS t_prcs_BISel_2;

-- BPSel_0
t_prcs_BPSel_0: PROCESS
BEGIN
	BPSel_0 <= '0';
WAIT;
END PROCESS t_prcs_BPSel_0;

-- BPSel_1
t_prcs_BPSel_1: PROCESS
BEGIN
	BPSel_1 <= '0';
WAIT;
END PROCESS t_prcs_BPSel_1;

-- BPSel_2
t_prcs_BPSel_2: PROCESS
BEGIN
	BPSel_2 <= '0';
WAIT;
END PROCESS t_prcs_BPSel_2;

-- SelMAR_1
t_prcs_SelMAR_1: PROCESS
BEGIN
	SelMAR_1 <= '0';
WAIT;
END PROCESS t_prcs_SelMAR_1;

-- SelMAR_2
t_prcs_SelMAR_2: PROCESS
BEGIN
	SelMAR_2 <= '0';
WAIT;
END PROCESS t_prcs_SelMAR_2;

-- SelMAR_3
t_prcs_SelMAR_3: PROCESS
BEGIN
	SelMAR_3 <= '0';
WAIT;
END PROCESS t_prcs_SelMAR_3;
END ElMicro_arch;
