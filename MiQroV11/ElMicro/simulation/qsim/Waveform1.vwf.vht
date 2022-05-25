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
-- Generated on "03/13/2022 18:39:27"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          UniversalShiftRegister
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY UniversalShiftRegister_vhd_vec_tst IS
END UniversalShiftRegister_vhd_vec_tst;
ARCHITECTURE UniversalShiftRegister_arch OF UniversalShiftRegister_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Clk : STD_LOGIC;
SIGNAL Clr : STD_LOGIC;
SIGNAL Data : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Pout : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL SEL : STD_LOGIC_VECTOR(2 DOWNTO 0);
COMPONENT UniversalShiftRegister
	PORT (
	Clk : IN STD_LOGIC;
	Clr : IN STD_LOGIC;
	Data : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	Pout : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	SEL : IN STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : UniversalShiftRegister
	PORT MAP (
-- list connections between master ports and signals
	Clk => Clk,
	Clr => Clr,
	Data => Data,
	Pout => Pout,
	SEL => SEL
	);
-- SEL[2]
t_prcs_SEL_2: PROCESS
BEGIN
	SEL(2) <= '0';
WAIT;
END PROCESS t_prcs_SEL_2;
-- SEL[1]
t_prcs_SEL_1: PROCESS
BEGIN
	SEL(1) <= '0';
WAIT;
END PROCESS t_prcs_SEL_1;
-- SEL[0]
t_prcs_SEL_0: PROCESS
BEGIN
	SEL(0) <= '0';
	WAIT FOR 70000 ps;
	SEL(0) <= '1';
	WAIT FOR 440000 ps;
	SEL(0) <= '0';
WAIT;
END PROCESS t_prcs_SEL_0;
-- Data[7]
t_prcs_Data_7: PROCESS
BEGIN
	Data(7) <= '0';
WAIT;
END PROCESS t_prcs_Data_7;
-- Data[6]
t_prcs_Data_6: PROCESS
BEGIN
	Data(6) <= '0';
WAIT;
END PROCESS t_prcs_Data_6;
-- Data[5]
t_prcs_Data_5: PROCESS
BEGIN
	Data(5) <= '1';
WAIT;
END PROCESS t_prcs_Data_5;
-- Data[4]
t_prcs_Data_4: PROCESS
BEGIN
	Data(4) <= '1';
WAIT;
END PROCESS t_prcs_Data_4;
-- Data[3]
t_prcs_Data_3: PROCESS
BEGIN
	Data(3) <= '1';
WAIT;
END PROCESS t_prcs_Data_3;
-- Data[2]
t_prcs_Data_2: PROCESS
BEGIN
	Data(2) <= '1';
WAIT;
END PROCESS t_prcs_Data_2;
-- Data[1]
t_prcs_Data_1: PROCESS
BEGIN
	Data(1) <= '1';
WAIT;
END PROCESS t_prcs_Data_1;
-- Data[0]
t_prcs_Data_0: PROCESS
BEGIN
	Data(0) <= '1';
WAIT;
END PROCESS t_prcs_Data_0;

-- Clr
t_prcs_Clr: PROCESS
BEGIN
	Clr <= '0';
WAIT;
END PROCESS t_prcs_Clr;

-- Clk
t_prcs_Clk: PROCESS
BEGIN
LOOP
	Clk <= '0';
	WAIT FOR 10000 ps;
	Clk <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Clk;
END UniversalShiftRegister_arch;
