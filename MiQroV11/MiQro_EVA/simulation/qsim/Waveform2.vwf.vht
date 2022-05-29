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
-- Generated on "05/29/2022 12:48:00"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          MiQro_EVA
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY MiQro_EVA_vhd_vec_tst IS
END MiQro_EVA_vhd_vec_tst;
ARCHITECTURE MiQro_EVA_arch OF MiQro_EVA_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Clk : STD_LOGIC;
SIGNAL dataA : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL dataB : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL DataBus : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL dataC : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL EnDec : STD_LOGIC;
SIGNAL EnReg : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL IROut : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL MAROut : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL MDR : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL OutBus : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL PCOut : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL RAMOut : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Rst : STD_LOGIC;
SIGNAL SelBus : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL SelRegOut : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL UMemOut : STD_LOGIC_VECTOR(64 DOWNTO 0);
COMPONENT MiQro_EVA
	PORT (
	Clk : IN STD_LOGIC;
	dataA : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	dataB : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	DataBus : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	dataC : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	EnDec : OUT STD_LOGIC;
	EnReg : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	IROut : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	MAROut : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	MDR : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	OutBus : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	PCOut : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	RAMOut : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	Rst : IN STD_LOGIC;
	SelBus : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	SelRegOut : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	UMemOut : OUT STD_LOGIC_VECTOR(64 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : MiQro_EVA
	PORT MAP (
-- list connections between master ports and signals
	Clk => Clk,
	dataA => dataA,
	dataB => dataB,
	DataBus => DataBus,
	dataC => dataC,
	EnDec => EnDec,
	EnReg => EnReg,
	IROut => IROut,
	MAROut => MAROut,
	MDR => MDR,
	OutBus => OutBus,
	PCOut => PCOut,
	RAMOut => RAMOut,
	Rst => Rst,
	SelBus => SelBus,
	SelRegOut => SelRegOut,
	UMemOut => UMemOut
	);

-- Clk
t_prcs_Clk: PROCESS
BEGIN
LOOP
	Clk <= '0';
	WAIT FOR 5000 ps;
	Clk <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Clk;
-- dataA[7]
t_prcs_dataA_7: PROCESS
BEGIN
	dataA(7) <= '0';
WAIT;
END PROCESS t_prcs_dataA_7;
-- dataA[6]
t_prcs_dataA_6: PROCESS
BEGIN
	dataA(6) <= '0';
WAIT;
END PROCESS t_prcs_dataA_6;
-- dataA[5]
t_prcs_dataA_5: PROCESS
BEGIN
	dataA(5) <= '0';
WAIT;
END PROCESS t_prcs_dataA_5;
-- dataA[4]
t_prcs_dataA_4: PROCESS
BEGIN
	dataA(4) <= '0';
WAIT;
END PROCESS t_prcs_dataA_4;
-- dataA[3]
t_prcs_dataA_3: PROCESS
BEGIN
	dataA(3) <= '0';
WAIT;
END PROCESS t_prcs_dataA_3;
-- dataA[2]
t_prcs_dataA_2: PROCESS
BEGIN
	dataA(2) <= '0';
WAIT;
END PROCESS t_prcs_dataA_2;
-- dataA[1]
t_prcs_dataA_1: PROCESS
BEGIN
	dataA(1) <= '0';
WAIT;
END PROCESS t_prcs_dataA_1;
-- dataA[0]
t_prcs_dataA_0: PROCESS
BEGIN
	dataA(0) <= '0';
WAIT;
END PROCESS t_prcs_dataA_0;
-- dataB[7]
t_prcs_dataB_7: PROCESS
BEGIN
	dataB(7) <= '0';
WAIT;
END PROCESS t_prcs_dataB_7;
-- dataB[6]
t_prcs_dataB_6: PROCESS
BEGIN
	dataB(6) <= '0';
WAIT;
END PROCESS t_prcs_dataB_6;
-- dataB[5]
t_prcs_dataB_5: PROCESS
BEGIN
	dataB(5) <= '0';
WAIT;
END PROCESS t_prcs_dataB_5;
-- dataB[4]
t_prcs_dataB_4: PROCESS
BEGIN
	dataB(4) <= '0';
WAIT;
END PROCESS t_prcs_dataB_4;
-- dataB[3]
t_prcs_dataB_3: PROCESS
BEGIN
	dataB(3) <= '0';
WAIT;
END PROCESS t_prcs_dataB_3;
-- dataB[2]
t_prcs_dataB_2: PROCESS
BEGIN
	dataB(2) <= '0';
WAIT;
END PROCESS t_prcs_dataB_2;
-- dataB[1]
t_prcs_dataB_1: PROCESS
BEGIN
	dataB(1) <= '0';
WAIT;
END PROCESS t_prcs_dataB_1;
-- dataB[0]
t_prcs_dataB_0: PROCESS
BEGIN
	dataB(0) <= '0';
WAIT;
END PROCESS t_prcs_dataB_0;
-- dataC[7]
t_prcs_dataC_7: PROCESS
BEGIN
	dataC(7) <= '0';
WAIT;
END PROCESS t_prcs_dataC_7;
-- dataC[6]
t_prcs_dataC_6: PROCESS
BEGIN
	dataC(6) <= '0';
WAIT;
END PROCESS t_prcs_dataC_6;
-- dataC[5]
t_prcs_dataC_5: PROCESS
BEGIN
	dataC(5) <= '0';
WAIT;
END PROCESS t_prcs_dataC_5;
-- dataC[4]
t_prcs_dataC_4: PROCESS
BEGIN
	dataC(4) <= '0';
WAIT;
END PROCESS t_prcs_dataC_4;
-- dataC[3]
t_prcs_dataC_3: PROCESS
BEGIN
	dataC(3) <= '0';
WAIT;
END PROCESS t_prcs_dataC_3;
-- dataC[2]
t_prcs_dataC_2: PROCESS
BEGIN
	dataC(2) <= '0';
WAIT;
END PROCESS t_prcs_dataC_2;
-- dataC[1]
t_prcs_dataC_1: PROCESS
BEGIN
	dataC(1) <= '0';
WAIT;
END PROCESS t_prcs_dataC_1;
-- dataC[0]
t_prcs_dataC_0: PROCESS
BEGIN
	dataC(0) <= '0';
WAIT;
END PROCESS t_prcs_dataC_0;

-- Rst
t_prcs_Rst: PROCESS
BEGIN
	Rst <= '0';
WAIT;
END PROCESS t_prcs_Rst;
END MiQro_EVA_arch;
