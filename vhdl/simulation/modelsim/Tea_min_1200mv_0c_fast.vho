-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "12/07/2013 14:37:07"

-- 
-- Device: Altera EP4CE15F23C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Tea IS
    PORT (
	clk : IN std_logic;
	start : IN std_logic;
	vi : IN std_logic_vector(63 DOWNTO 0);
	vo : OUT std_logic_vector(63 DOWNTO 0);
	key : IN std_logic_vector(127 DOWNTO 0);
	mode : OUT std_logic
	);
END Tea;

-- Design Ports Information
-- clk	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start	=>  Location: PIN_T1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vo[0]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vo[1]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vo[2]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vo[3]	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vo[4]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vo[5]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vo[6]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vo[7]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vo[8]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vo[9]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vo[10]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vo[11]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vo[12]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vo[13]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vo[14]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vo[15]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vo[16]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vo[17]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vo[18]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vo[19]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vo[20]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vo[21]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vo[22]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vo[23]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vo[24]	=>  Location: PIN_M19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vo[25]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vo[26]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vo[27]	=>  Location: PIN_N17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vo[28]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vo[29]	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vo[30]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vo[31]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vo[32]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vo[33]	=>  Location: PIN_R20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vo[34]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vo[35]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vo[36]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vo[37]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vo[38]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vo[39]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vo[40]	=>  Location: PIN_U19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vo[41]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vo[42]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vo[43]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vo[44]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vo[45]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vo[46]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vo[47]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vo[48]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vo[49]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vo[50]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vo[51]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vo[52]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vo[53]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vo[54]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vo[55]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vo[56]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vo[57]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vo[58]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vo[59]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vo[60]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vo[61]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vo[62]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vo[63]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mode	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vi[32]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[0]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[32]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vi[37]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vi[0]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[1]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[33]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vi[38]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vi[33]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vi[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[2]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[34]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vi[39]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vi[34]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vi[2]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[3]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[35]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vi[40]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vi[35]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vi[3]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[4]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[36]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vi[41]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vi[36]	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vi[4]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[5]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[37]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vi[42]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vi[5]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[6]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[38]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vi[43]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vi[6]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[7]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[39]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vi[44]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vi[7]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[8]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[40]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vi[45]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vi[8]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[9]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[41]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vi[46]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vi[9]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[10]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[42]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vi[47]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vi[10]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[11]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[43]	=>  Location: PIN_P20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vi[48]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vi[11]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[12]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[44]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vi[49]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vi[12]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[13]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[45]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vi[50]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vi[13]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[14]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[46]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vi[51]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vi[14]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[15]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[47]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vi[52]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vi[15]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[16]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[48]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vi[53]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vi[16]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[17]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[49]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vi[54]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vi[17]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[18]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[50]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vi[55]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vi[18]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[19]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[51]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vi[56]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vi[19]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[20]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[52]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vi[57]	=>  Location: PIN_AA11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vi[20]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[21]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[53]	=>  Location: PIN_U9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vi[58]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vi[21]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[22]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[54]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vi[59]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vi[22]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[23]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[55]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vi[60]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vi[23]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[24]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[56]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vi[61]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vi[24]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[25]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[57]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vi[62]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vi[25]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[26]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[58]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vi[63]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vi[26]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[27]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[59]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vi[27]	=>  Location: PIN_N22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[28]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[60]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vi[28]	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[29]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[61]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vi[29]	=>  Location: PIN_R19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[30]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[62]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vi[30]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[31]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[63]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vi[31]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[64]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[96]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[65]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[97]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[66]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[98]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[67]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[99]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[68]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[100]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[69]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[101]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[70]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[102]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[71]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[103]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[72]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[104]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[73]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[105]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[74]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[106]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[75]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[107]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[76]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[108]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[77]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[109]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[78]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[110]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[79]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[111]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[80]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[112]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[81]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[113]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[82]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[114]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[83]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[115]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[84]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[116]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[85]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[117]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[86]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[118]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[87]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[119]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[88]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[120]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[89]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[121]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[90]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[122]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[91]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[123]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[92]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[124]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[93]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[125]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[94]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[126]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[95]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[127]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Tea IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_start : std_logic;
SIGNAL ww_vi : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_vo : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_key : std_logic_vector(127 DOWNTO 0);
SIGNAL ww_mode : std_logic;
SIGNAL \core1|Add3~2_combout\ : std_logic;
SIGNAL \core1|Add3~4_combout\ : std_logic;
SIGNAL \core1|Add1~0_combout\ : std_logic;
SIGNAL \core1|Add1~2_combout\ : std_logic;
SIGNAL \core1|Add3~12_combout\ : std_logic;
SIGNAL \core1|Add3~14_combout\ : std_logic;
SIGNAL \core1|Add1~8_combout\ : std_logic;
SIGNAL \core1|Add1~10_combout\ : std_logic;
SIGNAL \core1|Add1~12_combout\ : std_logic;
SIGNAL \core1|Add1~14_combout\ : std_logic;
SIGNAL \core1|Add2~22_combout\ : std_logic;
SIGNAL \core1|Add1~18_combout\ : std_logic;
SIGNAL \core1|Add2~28_combout\ : std_logic;
SIGNAL \core1|Add3~32_combout\ : std_logic;
SIGNAL \core1|Add3~34_combout\ : std_logic;
SIGNAL \core1|Add1~30_combout\ : std_logic;
SIGNAL \core1|Add1~36_combout\ : std_logic;
SIGNAL \core1|Add3~46_combout\ : std_logic;
SIGNAL \core1|Add1~42_combout\ : std_logic;
SIGNAL \core1|Add3~52_combout\ : std_logic;
SIGNAL \core1|Add1~46_combout\ : std_logic;
SIGNAL \core1|Add1~48_combout\ : std_logic;
SIGNAL \core1|Add3~61\ : std_logic;
SIGNAL \core1|Add3~62_combout\ : std_logic;
SIGNAL \core1|Add6~0_combout\ : std_logic;
SIGNAL \core1|Add6~2_combout\ : std_logic;
SIGNAL \core1|Add6~4_combout\ : std_logic;
SIGNAL \core1|Add6~6_combout\ : std_logic;
SIGNAL \core1|Add5~0_combout\ : std_logic;
SIGNAL \core1|Add6~10_combout\ : std_logic;
SIGNAL \core1|Add6~12_combout\ : std_logic;
SIGNAL \core1|Add6~18_combout\ : std_logic;
SIGNAL \core1|Add7~24_combout\ : std_logic;
SIGNAL \core1|Add6~34_combout\ : std_logic;
SIGNAL \core1|Add7~40_combout\ : std_logic;
SIGNAL \core1|Add6~46_combout\ : std_logic;
SIGNAL \core1|Add5~40_combout\ : std_logic;
SIGNAL \core1|Add6~50_combout\ : std_logic;
SIGNAL \core1|Add5~44_combout\ : std_logic;
SIGNAL \core1|Add7~54_combout\ : std_logic;
SIGNAL \core1|Add7~58_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \key[32]~input_o\ : std_logic;
SIGNAL \key[34]~input_o\ : std_logic;
SIGNAL \key[4]~input_o\ : std_logic;
SIGNAL \key[36]~input_o\ : std_logic;
SIGNAL \key[37]~input_o\ : std_logic;
SIGNAL \key[6]~input_o\ : std_logic;
SIGNAL \key[40]~input_o\ : std_logic;
SIGNAL \key[9]~input_o\ : std_logic;
SIGNAL \key[41]~input_o\ : std_logic;
SIGNAL \key[42]~input_o\ : std_logic;
SIGNAL \key[11]~input_o\ : std_logic;
SIGNAL \key[12]~input_o\ : std_logic;
SIGNAL \key[44]~input_o\ : std_logic;
SIGNAL \key[14]~input_o\ : std_logic;
SIGNAL \key[15]~input_o\ : std_logic;
SIGNAL \key[47]~input_o\ : std_logic;
SIGNAL \key[16]~input_o\ : std_logic;
SIGNAL \key[48]~input_o\ : std_logic;
SIGNAL \key[49]~input_o\ : std_logic;
SIGNAL \key[18]~input_o\ : std_logic;
SIGNAL \key[50]~input_o\ : std_logic;
SIGNAL \key[19]~input_o\ : std_logic;
SIGNAL \key[51]~input_o\ : std_logic;
SIGNAL \key[20]~input_o\ : std_logic;
SIGNAL \key[52]~input_o\ : std_logic;
SIGNAL \key[21]~input_o\ : std_logic;
SIGNAL \key[22]~input_o\ : std_logic;
SIGNAL \key[54]~input_o\ : std_logic;
SIGNAL \key[23]~input_o\ : std_logic;
SIGNAL \key[55]~input_o\ : std_logic;
SIGNAL \key[59]~input_o\ : std_logic;
SIGNAL \key[29]~input_o\ : std_logic;
SIGNAL \key[61]~input_o\ : std_logic;
SIGNAL \key[30]~input_o\ : std_logic;
SIGNAL \key[63]~input_o\ : std_logic;
SIGNAL \key[69]~input_o\ : std_logic;
SIGNAL \key[102]~input_o\ : std_logic;
SIGNAL \key[71]~input_o\ : std_logic;
SIGNAL \key[72]~input_o\ : std_logic;
SIGNAL \key[73]~input_o\ : std_logic;
SIGNAL \key[74]~input_o\ : std_logic;
SIGNAL \key[76]~input_o\ : std_logic;
SIGNAL \key[77]~input_o\ : std_logic;
SIGNAL \key[79]~input_o\ : std_logic;
SIGNAL \key[111]~input_o\ : std_logic;
SIGNAL \key[81]~input_o\ : std_logic;
SIGNAL \key[82]~input_o\ : std_logic;
SIGNAL \key[117]~input_o\ : std_logic;
SIGNAL \key[118]~input_o\ : std_logic;
SIGNAL \key[87]~input_o\ : std_logic;
SIGNAL \key[119]~input_o\ : std_logic;
SIGNAL \key[88]~input_o\ : std_logic;
SIGNAL \key[89]~input_o\ : std_logic;
SIGNAL \key[121]~input_o\ : std_logic;
SIGNAL \key[122]~input_o\ : std_logic;
SIGNAL \key[91]~input_o\ : std_logic;
SIGNAL \key[93]~input_o\ : std_logic;
SIGNAL \key[94]~input_o\ : std_logic;
SIGNAL \key[126]~input_o\ : std_logic;
SIGNAL \vo[0]~output_o\ : std_logic;
SIGNAL \vo[1]~output_o\ : std_logic;
SIGNAL \vo[2]~output_o\ : std_logic;
SIGNAL \vo[3]~output_o\ : std_logic;
SIGNAL \vo[4]~output_o\ : std_logic;
SIGNAL \vo[5]~output_o\ : std_logic;
SIGNAL \vo[6]~output_o\ : std_logic;
SIGNAL \vo[7]~output_o\ : std_logic;
SIGNAL \vo[8]~output_o\ : std_logic;
SIGNAL \vo[9]~output_o\ : std_logic;
SIGNAL \vo[10]~output_o\ : std_logic;
SIGNAL \vo[11]~output_o\ : std_logic;
SIGNAL \vo[12]~output_o\ : std_logic;
SIGNAL \vo[13]~output_o\ : std_logic;
SIGNAL \vo[14]~output_o\ : std_logic;
SIGNAL \vo[15]~output_o\ : std_logic;
SIGNAL \vo[16]~output_o\ : std_logic;
SIGNAL \vo[17]~output_o\ : std_logic;
SIGNAL \vo[18]~output_o\ : std_logic;
SIGNAL \vo[19]~output_o\ : std_logic;
SIGNAL \vo[20]~output_o\ : std_logic;
SIGNAL \vo[21]~output_o\ : std_logic;
SIGNAL \vo[22]~output_o\ : std_logic;
SIGNAL \vo[23]~output_o\ : std_logic;
SIGNAL \vo[24]~output_o\ : std_logic;
SIGNAL \vo[25]~output_o\ : std_logic;
SIGNAL \vo[26]~output_o\ : std_logic;
SIGNAL \vo[27]~output_o\ : std_logic;
SIGNAL \vo[28]~output_o\ : std_logic;
SIGNAL \vo[29]~output_o\ : std_logic;
SIGNAL \vo[30]~output_o\ : std_logic;
SIGNAL \vo[31]~output_o\ : std_logic;
SIGNAL \vo[32]~output_o\ : std_logic;
SIGNAL \vo[33]~output_o\ : std_logic;
SIGNAL \vo[34]~output_o\ : std_logic;
SIGNAL \vo[35]~output_o\ : std_logic;
SIGNAL \vo[36]~output_o\ : std_logic;
SIGNAL \vo[37]~output_o\ : std_logic;
SIGNAL \vo[38]~output_o\ : std_logic;
SIGNAL \vo[39]~output_o\ : std_logic;
SIGNAL \vo[40]~output_o\ : std_logic;
SIGNAL \vo[41]~output_o\ : std_logic;
SIGNAL \vo[42]~output_o\ : std_logic;
SIGNAL \vo[43]~output_o\ : std_logic;
SIGNAL \vo[44]~output_o\ : std_logic;
SIGNAL \vo[45]~output_o\ : std_logic;
SIGNAL \vo[46]~output_o\ : std_logic;
SIGNAL \vo[47]~output_o\ : std_logic;
SIGNAL \vo[48]~output_o\ : std_logic;
SIGNAL \vo[49]~output_o\ : std_logic;
SIGNAL \vo[50]~output_o\ : std_logic;
SIGNAL \vo[51]~output_o\ : std_logic;
SIGNAL \vo[52]~output_o\ : std_logic;
SIGNAL \vo[53]~output_o\ : std_logic;
SIGNAL \vo[54]~output_o\ : std_logic;
SIGNAL \vo[55]~output_o\ : std_logic;
SIGNAL \vo[56]~output_o\ : std_logic;
SIGNAL \vo[57]~output_o\ : std_logic;
SIGNAL \vo[58]~output_o\ : std_logic;
SIGNAL \vo[59]~output_o\ : std_logic;
SIGNAL \vo[60]~output_o\ : std_logic;
SIGNAL \vo[61]~output_o\ : std_logic;
SIGNAL \vo[62]~output_o\ : std_logic;
SIGNAL \vo[63]~output_o\ : std_logic;
SIGNAL \mode~output_o\ : std_logic;
SIGNAL \vi[32]~input_o\ : std_logic;
SIGNAL \vi[37]~input_o\ : std_logic;
SIGNAL \core1|Add3~0_combout\ : std_logic;
SIGNAL \key[0]~input_o\ : std_logic;
SIGNAL \core1|RESULT~0_combout\ : std_logic;
SIGNAL \vi[0]~input_o\ : std_logic;
SIGNAL \core1|Add4~0_combout\ : std_logic;
SIGNAL \key[1]~input_o\ : std_logic;
SIGNAL \core1|Add2~0_combout\ : std_logic;
SIGNAL \core1|RESULT~1_combout\ : std_logic;
SIGNAL \vi[1]~input_o\ : std_logic;
SIGNAL \core1|Add4~1\ : std_logic;
SIGNAL \core1|Add4~2_combout\ : std_logic;
SIGNAL \key[2]~input_o\ : std_logic;
SIGNAL \vi[34]~input_o\ : std_logic;
SIGNAL \core1|Add2~1\ : std_logic;
SIGNAL \core1|Add2~2_combout\ : std_logic;
SIGNAL \core1|RESULT~2_combout\ : std_logic;
SIGNAL \vi[2]~input_o\ : std_logic;
SIGNAL \core1|Add4~3\ : std_logic;
SIGNAL \core1|Add4~4_combout\ : std_logic;
SIGNAL \key[3]~input_o\ : std_logic;
SIGNAL \key[35]~input_o\ : std_logic;
SIGNAL \vi[39]~input_o\ : std_logic;
SIGNAL \key[33]~input_o\ : std_logic;
SIGNAL \core1|Add3~1\ : std_logic;
SIGNAL \core1|Add3~3\ : std_logic;
SIGNAL \core1|Add3~5\ : std_logic;
SIGNAL \core1|Add3~6_combout\ : std_logic;
SIGNAL \vi[35]~input_o\ : std_logic;
SIGNAL \core1|Add2~3\ : std_logic;
SIGNAL \core1|Add2~4_combout\ : std_logic;
SIGNAL \core1|RESULT~3_combout\ : std_logic;
SIGNAL \vi[3]~input_o\ : std_logic;
SIGNAL \core1|Add4~5\ : std_logic;
SIGNAL \core1|Add4~6_combout\ : std_logic;
SIGNAL \core1|Add2~5\ : std_logic;
SIGNAL \core1|Add2~6_combout\ : std_logic;
SIGNAL \vi[41]~input_o\ : std_logic;
SIGNAL \core1|Add3~7\ : std_logic;
SIGNAL \core1|Add3~8_combout\ : std_logic;
SIGNAL \core1|RESULT~4_combout\ : std_logic;
SIGNAL \vi[4]~input_o\ : std_logic;
SIGNAL \core1|Add4~7\ : std_logic;
SIGNAL \core1|Add4~8_combout\ : std_logic;
SIGNAL \vi[42]~input_o\ : std_logic;
SIGNAL \core1|Add3~9\ : std_logic;
SIGNAL \core1|Add3~10_combout\ : std_logic;
SIGNAL \core1|Add2~7\ : std_logic;
SIGNAL \core1|Add2~8_combout\ : std_logic;
SIGNAL \core1|RESULT~5_combout\ : std_logic;
SIGNAL \vi[5]~input_o\ : std_logic;
SIGNAL \core1|Add4~9\ : std_logic;
SIGNAL \core1|Add4~10_combout\ : std_logic;
SIGNAL \key[5]~input_o\ : std_logic;
SIGNAL \core1|Add1~1\ : std_logic;
SIGNAL \core1|Add1~3\ : std_logic;
SIGNAL \core1|Add1~4_combout\ : std_logic;
SIGNAL \vi[38]~input_o\ : std_logic;
SIGNAL \core1|Add2~9\ : std_logic;
SIGNAL \core1|Add2~10_combout\ : std_logic;
SIGNAL \core1|RESULT~6_combout\ : std_logic;
SIGNAL \vi[6]~input_o\ : std_logic;
SIGNAL \core1|Add4~11\ : std_logic;
SIGNAL \core1|Add4~12_combout\ : std_logic;
SIGNAL \key[7]~input_o\ : std_logic;
SIGNAL \core1|Add1~5\ : std_logic;
SIGNAL \core1|Add1~6_combout\ : std_logic;
SIGNAL \core1|Add2~11\ : std_logic;
SIGNAL \core1|Add2~12_combout\ : std_logic;
SIGNAL \core1|RESULT~7_combout\ : std_logic;
SIGNAL \vi[7]~input_o\ : std_logic;
SIGNAL \core1|Add4~13\ : std_logic;
SIGNAL \core1|Add4~14_combout\ : std_logic;
SIGNAL \vi[8]~input_o\ : std_logic;
SIGNAL \vi[45]~input_o\ : std_logic;
SIGNAL \key[39]~input_o\ : std_logic;
SIGNAL \key[38]~input_o\ : std_logic;
SIGNAL \core1|Add3~11\ : std_logic;
SIGNAL \core1|Add3~13\ : std_logic;
SIGNAL \core1|Add3~15\ : std_logic;
SIGNAL \core1|Add3~16_combout\ : std_logic;
SIGNAL \core1|Add2~13\ : std_logic;
SIGNAL \core1|Add2~14_combout\ : std_logic;
SIGNAL \core1|RESULT~8_combout\ : std_logic;
SIGNAL \core1|Add4~15\ : std_logic;
SIGNAL \core1|Add4~16_combout\ : std_logic;
SIGNAL \vi[46]~input_o\ : std_logic;
SIGNAL \core1|Add3~17\ : std_logic;
SIGNAL \core1|Add3~18_combout\ : std_logic;
SIGNAL \core1|Add2~15\ : std_logic;
SIGNAL \core1|Add2~16_combout\ : std_logic;
SIGNAL \core1|RESULT~9_combout\ : std_logic;
SIGNAL \vi[9]~input_o\ : std_logic;
SIGNAL \core1|Add4~17\ : std_logic;
SIGNAL \core1|Add4~18_combout\ : std_logic;
SIGNAL \vi[47]~input_o\ : std_logic;
SIGNAL \core1|Add3~19\ : std_logic;
SIGNAL \core1|Add3~20_combout\ : std_logic;
SIGNAL \core1|Add2~17\ : std_logic;
SIGNAL \core1|Add2~18_combout\ : std_logic;
SIGNAL \core1|RESULT~10_combout\ : std_logic;
SIGNAL \vi[10]~input_o\ : std_logic;
SIGNAL \core1|Add4~19\ : std_logic;
SIGNAL \core1|Add4~20_combout\ : std_logic;
SIGNAL \vi[11]~input_o\ : std_logic;
SIGNAL \key[43]~input_o\ : std_logic;
SIGNAL \core1|Add3~21\ : std_logic;
SIGNAL \core1|Add3~22_combout\ : std_logic;
SIGNAL \vi[43]~input_o\ : std_logic;
SIGNAL \core1|Add2~19\ : std_logic;
SIGNAL \core1|Add2~20_combout\ : std_logic;
SIGNAL \core1|RESULT~11_combout\ : std_logic;
SIGNAL \core1|Add4~21\ : std_logic;
SIGNAL \core1|Add4~22_combout\ : std_logic;
SIGNAL \vi[49]~input_o\ : std_logic;
SIGNAL \core1|Add3~23\ : std_logic;
SIGNAL \core1|Add3~24_combout\ : std_logic;
SIGNAL \vi[40]~input_o\ : std_logic;
SIGNAL \key[10]~input_o\ : std_logic;
SIGNAL \key[8]~input_o\ : std_logic;
SIGNAL \core1|Add1~7\ : std_logic;
SIGNAL \core1|Add1~9\ : std_logic;
SIGNAL \core1|Add1~11\ : std_logic;
SIGNAL \core1|Add1~13\ : std_logic;
SIGNAL \core1|Add1~15\ : std_logic;
SIGNAL \core1|Add1~16_combout\ : std_logic;
SIGNAL \core1|RESULT~12_combout\ : std_logic;
SIGNAL \vi[12]~input_o\ : std_logic;
SIGNAL \core1|Add4~23\ : std_logic;
SIGNAL \core1|Add4~24_combout\ : std_logic;
SIGNAL \key[45]~input_o\ : std_logic;
SIGNAL \core1|Add3~25\ : std_logic;
SIGNAL \core1|Add3~26_combout\ : std_logic;
SIGNAL \core1|Add2~21\ : std_logic;
SIGNAL \core1|Add2~23\ : std_logic;
SIGNAL \core1|Add2~24_combout\ : std_logic;
SIGNAL \core1|RESULT~13_combout\ : std_logic;
SIGNAL \vi[13]~input_o\ : std_logic;
SIGNAL \core1|Add4~25\ : std_logic;
SIGNAL \core1|Add4~26_combout\ : std_logic;
SIGNAL \key[46]~input_o\ : std_logic;
SIGNAL \core1|Add3~27\ : std_logic;
SIGNAL \core1|Add3~28_combout\ : std_logic;
SIGNAL \core1|Add2~25\ : std_logic;
SIGNAL \core1|Add2~26_combout\ : std_logic;
SIGNAL \key[13]~input_o\ : std_logic;
SIGNAL \core1|Add1~17\ : std_logic;
SIGNAL \core1|Add1~19\ : std_logic;
SIGNAL \core1|Add1~20_combout\ : std_logic;
SIGNAL \core1|RESULT~14_combout\ : std_logic;
SIGNAL \vi[14]~input_o\ : std_logic;
SIGNAL \core1|Add4~27\ : std_logic;
SIGNAL \core1|Add4~28_combout\ : std_logic;
SIGNAL \vi[15]~input_o\ : std_logic;
SIGNAL \vi[52]~input_o\ : std_logic;
SIGNAL \core1|Add3~29\ : std_logic;
SIGNAL \core1|Add3~30_combout\ : std_logic;
SIGNAL \core1|Add1~21\ : std_logic;
SIGNAL \core1|Add1~22_combout\ : std_logic;
SIGNAL \core1|RESULT~15_combout\ : std_logic;
SIGNAL \core1|Add4~29\ : std_logic;
SIGNAL \core1|Add4~30_combout\ : std_logic;
SIGNAL \vi[16]~input_o\ : std_logic;
SIGNAL \vi[48]~input_o\ : std_logic;
SIGNAL \core1|Add2~27\ : std_logic;
SIGNAL \core1|Add2~29\ : std_logic;
SIGNAL \core1|Add2~30_combout\ : std_logic;
SIGNAL \vi[44]~input_o\ : std_logic;
SIGNAL \core1|Add1~23\ : std_logic;
SIGNAL \core1|Add1~24_combout\ : std_logic;
SIGNAL \core1|RESULT~16_combout\ : std_logic;
SIGNAL \core1|Add4~31\ : std_logic;
SIGNAL \core1|Add4~32_combout\ : std_logic;
SIGNAL \vi[17]~input_o\ : std_logic;
SIGNAL \key[17]~input_o\ : std_logic;
SIGNAL \core1|Add1~25\ : std_logic;
SIGNAL \core1|Add1~26_combout\ : std_logic;
SIGNAL \core1|Add2~31\ : std_logic;
SIGNAL \core1|Add2~32_combout\ : std_logic;
SIGNAL \core1|RESULT~17_combout\ : std_logic;
SIGNAL \core1|Add4~33\ : std_logic;
SIGNAL \core1|Add4~34_combout\ : std_logic;
SIGNAL \core1|Add1~27\ : std_logic;
SIGNAL \core1|Add1~28_combout\ : std_logic;
SIGNAL \vi[55]~input_o\ : std_logic;
SIGNAL \vi[54]~input_o\ : std_logic;
SIGNAL \vi[53]~input_o\ : std_logic;
SIGNAL \core1|Add3~31\ : std_logic;
SIGNAL \core1|Add3~33\ : std_logic;
SIGNAL \core1|Add3~35\ : std_logic;
SIGNAL \core1|Add3~36_combout\ : std_logic;
SIGNAL \core1|Add2~33\ : std_logic;
SIGNAL \core1|Add2~34_combout\ : std_logic;
SIGNAL \core1|RESULT~18_combout\ : std_logic;
SIGNAL \vi[18]~input_o\ : std_logic;
SIGNAL \core1|Add4~35\ : std_logic;
SIGNAL \core1|Add4~36_combout\ : std_logic;
SIGNAL \vi[19]~input_o\ : std_logic;
SIGNAL \vi[56]~input_o\ : std_logic;
SIGNAL \core1|Add3~37\ : std_logic;
SIGNAL \core1|Add3~38_combout\ : std_logic;
SIGNAL \vi[51]~input_o\ : std_logic;
SIGNAL \core1|Add2~35\ : std_logic;
SIGNAL \core1|Add2~36_combout\ : std_logic;
SIGNAL \core1|RESULT~19_combout\ : std_logic;
SIGNAL \core1|Add4~37\ : std_logic;
SIGNAL \core1|Add4~38_combout\ : std_logic;
SIGNAL \vi[20]~input_o\ : std_logic;
SIGNAL \core1|Add1~29\ : std_logic;
SIGNAL \core1|Add1~31\ : std_logic;
SIGNAL \core1|Add1~32_combout\ : std_logic;
SIGNAL \vi[57]~input_o\ : std_logic;
SIGNAL \core1|Add3~39\ : std_logic;
SIGNAL \core1|Add3~40_combout\ : std_logic;
SIGNAL \core1|Add2~37\ : std_logic;
SIGNAL \core1|Add2~38_combout\ : std_logic;
SIGNAL \core1|RESULT~20_combout\ : std_logic;
SIGNAL \core1|Add4~39\ : std_logic;
SIGNAL \core1|Add4~40_combout\ : std_logic;
SIGNAL \core1|Add1~33\ : std_logic;
SIGNAL \core1|Add1~34_combout\ : std_logic;
SIGNAL \key[53]~input_o\ : std_logic;
SIGNAL \core1|Add3~41\ : std_logic;
SIGNAL \core1|Add3~42_combout\ : std_logic;
SIGNAL \core1|Add2~39\ : std_logic;
SIGNAL \core1|Add2~40_combout\ : std_logic;
SIGNAL \core1|RESULT~21_combout\ : std_logic;
SIGNAL \vi[21]~input_o\ : std_logic;
SIGNAL \core1|Add4~41\ : std_logic;
SIGNAL \core1|Add4~42_combout\ : std_logic;
SIGNAL \vi[22]~input_o\ : std_logic;
SIGNAL \vi[59]~input_o\ : std_logic;
SIGNAL \core1|Add3~43\ : std_logic;
SIGNAL \core1|Add3~44_combout\ : std_logic;
SIGNAL \core1|Add2~41\ : std_logic;
SIGNAL \core1|Add2~42_combout\ : std_logic;
SIGNAL \core1|RESULT~22_combout\ : std_logic;
SIGNAL \core1|Add4~43\ : std_logic;
SIGNAL \core1|Add4~44_combout\ : std_logic;
SIGNAL \vi[23]~input_o\ : std_logic;
SIGNAL \core1|Add2~43\ : std_logic;
SIGNAL \core1|Add2~44_combout\ : std_logic;
SIGNAL \vi[50]~input_o\ : std_logic;
SIGNAL \core1|Add1~35\ : std_logic;
SIGNAL \core1|Add1~37\ : std_logic;
SIGNAL \core1|Add1~38_combout\ : std_logic;
SIGNAL \core1|RESULT~23_combout\ : std_logic;
SIGNAL \core1|Add4~45\ : std_logic;
SIGNAL \core1|Add4~46_combout\ : std_logic;
SIGNAL \vi[24]~input_o\ : std_logic;
SIGNAL \key[24]~input_o\ : std_logic;
SIGNAL \core1|Add1~39\ : std_logic;
SIGNAL \core1|Add1~40_combout\ : std_logic;
SIGNAL \key[56]~input_o\ : std_logic;
SIGNAL \vi[60]~input_o\ : std_logic;
SIGNAL \core1|Add3~45\ : std_logic;
SIGNAL \core1|Add3~47\ : std_logic;
SIGNAL \core1|Add3~48_combout\ : std_logic;
SIGNAL \core1|Add2~45\ : std_logic;
SIGNAL \core1|Add2~46_combout\ : std_logic;
SIGNAL \core1|RESULT~24_combout\ : std_logic;
SIGNAL \core1|Add4~47\ : std_logic;
SIGNAL \core1|Add4~48_combout\ : std_logic;
SIGNAL \key[57]~input_o\ : std_logic;
SIGNAL \core1|Add3~49\ : std_logic;
SIGNAL \core1|Add3~50_combout\ : std_logic;
SIGNAL \core1|Add2~47\ : std_logic;
SIGNAL \core1|Add2~48_combout\ : std_logic;
SIGNAL \core1|RESULT~25_combout\ : std_logic;
SIGNAL \vi[25]~input_o\ : std_logic;
SIGNAL \core1|Add4~49\ : std_logic;
SIGNAL \core1|Add4~50_combout\ : std_logic;
SIGNAL \key[26]~input_o\ : std_logic;
SIGNAL \key[25]~input_o\ : std_logic;
SIGNAL \core1|Add1~41\ : std_logic;
SIGNAL \core1|Add1~43\ : std_logic;
SIGNAL \core1|Add1~44_combout\ : std_logic;
SIGNAL \vi[58]~input_o\ : std_logic;
SIGNAL \core1|Add2~49\ : std_logic;
SIGNAL \core1|Add2~50_combout\ : std_logic;
SIGNAL \core1|RESULT~26_combout\ : std_logic;
SIGNAL \vi[26]~input_o\ : std_logic;
SIGNAL \core1|Add4~51\ : std_logic;
SIGNAL \core1|Add4~52_combout\ : std_logic;
SIGNAL \key[58]~input_o\ : std_logic;
SIGNAL \core1|Add3~51\ : std_logic;
SIGNAL \core1|Add3~53\ : std_logic;
SIGNAL \core1|Add3~54_combout\ : std_logic;
SIGNAL \core1|Add2~51\ : std_logic;
SIGNAL \core1|Add2~52_combout\ : std_logic;
SIGNAL \core1|RESULT~27_combout\ : std_logic;
SIGNAL \vi[27]~input_o\ : std_logic;
SIGNAL \core1|Add4~53\ : std_logic;
SIGNAL \core1|Add4~54_combout\ : std_logic;
SIGNAL \vi[28]~input_o\ : std_logic;
SIGNAL \key[60]~input_o\ : std_logic;
SIGNAL \core1|Add3~55\ : std_logic;
SIGNAL \core1|Add3~56_combout\ : std_logic;
SIGNAL \core1|Add2~53\ : std_logic;
SIGNAL \core1|Add2~54_combout\ : std_logic;
SIGNAL \core1|RESULT~28_combout\ : std_logic;
SIGNAL \core1|Add4~55\ : std_logic;
SIGNAL \core1|Add4~56_combout\ : std_logic;
SIGNAL \key[28]~input_o\ : std_logic;
SIGNAL \key[27]~input_o\ : std_logic;
SIGNAL \core1|Add1~45\ : std_logic;
SIGNAL \core1|Add1~47\ : std_logic;
SIGNAL \core1|Add1~49\ : std_logic;
SIGNAL \core1|Add1~50_combout\ : std_logic;
SIGNAL \core1|Add3~57\ : std_logic;
SIGNAL \core1|Add3~58_combout\ : std_logic;
SIGNAL \vi[61]~input_o\ : std_logic;
SIGNAL \core1|Add2~55\ : std_logic;
SIGNAL \core1|Add2~56_combout\ : std_logic;
SIGNAL \core1|RESULT~29_combout\ : std_logic;
SIGNAL \vi[29]~input_o\ : std_logic;
SIGNAL \core1|Add4~57\ : std_logic;
SIGNAL \core1|Add4~58_combout\ : std_logic;
SIGNAL \vi[30]~input_o\ : std_logic;
SIGNAL \key[62]~input_o\ : std_logic;
SIGNAL \core1|Add3~59\ : std_logic;
SIGNAL \core1|Add3~60_combout\ : std_logic;
SIGNAL \core1|Add2~57\ : std_logic;
SIGNAL \core1|Add2~58_combout\ : std_logic;
SIGNAL \core1|Add1~51\ : std_logic;
SIGNAL \core1|Add1~52_combout\ : std_logic;
SIGNAL \core1|RESULT~30_combout\ : std_logic;
SIGNAL \core1|Add4~59\ : std_logic;
SIGNAL \core1|Add4~60_combout\ : std_logic;
SIGNAL \vi[31]~input_o\ : std_logic;
SIGNAL \key[31]~input_o\ : std_logic;
SIGNAL \core1|Add1~53\ : std_logic;
SIGNAL \core1|Add1~54_combout\ : std_logic;
SIGNAL \vi[63]~input_o\ : std_logic;
SIGNAL \core1|Add2~59\ : std_logic;
SIGNAL \core1|Add2~60_combout\ : std_logic;
SIGNAL \core1|RESULT~31_combout\ : std_logic;
SIGNAL \core1|Add4~61\ : std_logic;
SIGNAL \core1|Add4~62_combout\ : std_logic;
SIGNAL \key[96]~input_o\ : std_logic;
SIGNAL \core1|Add7~0_combout\ : std_logic;
SIGNAL \key[64]~input_o\ : std_logic;
SIGNAL \core1|RESULT~32_combout\ : std_logic;
SIGNAL \core1|Add8~0_combout\ : std_logic;
SIGNAL \vi[33]~input_o\ : std_logic;
SIGNAL \key[65]~input_o\ : std_logic;
SIGNAL \key[97]~input_o\ : std_logic;
SIGNAL \core1|Add7~1\ : std_logic;
SIGNAL \core1|Add7~2_combout\ : std_logic;
SIGNAL \core1|RESULT~33_combout\ : std_logic;
SIGNAL \core1|Add8~1\ : std_logic;
SIGNAL \core1|Add8~2_combout\ : std_logic;
SIGNAL \key[98]~input_o\ : std_logic;
SIGNAL \core1|Add7~3\ : std_logic;
SIGNAL \core1|Add7~4_combout\ : std_logic;
SIGNAL \key[66]~input_o\ : std_logic;
SIGNAL \core1|RESULT~34_combout\ : std_logic;
SIGNAL \core1|Add8~3\ : std_logic;
SIGNAL \core1|Add8~4_combout\ : std_logic;
SIGNAL \key[99]~input_o\ : std_logic;
SIGNAL \core1|Add7~5\ : std_logic;
SIGNAL \core1|Add7~6_combout\ : std_logic;
SIGNAL \key[67]~input_o\ : std_logic;
SIGNAL \core1|RESULT~35_combout\ : std_logic;
SIGNAL \core1|Add8~5\ : std_logic;
SIGNAL \core1|Add8~6_combout\ : std_logic;
SIGNAL \core1|Add6~1\ : std_logic;
SIGNAL \core1|Add6~3\ : std_logic;
SIGNAL \core1|Add6~5\ : std_logic;
SIGNAL \core1|Add6~7\ : std_logic;
SIGNAL \core1|Add6~8_combout\ : std_logic;
SIGNAL \key[100]~input_o\ : std_logic;
SIGNAL \core1|Add7~7\ : std_logic;
SIGNAL \core1|Add7~8_combout\ : std_logic;
SIGNAL \core1|RESULT~36_combout\ : std_logic;
SIGNAL \vi[36]~input_o\ : std_logic;
SIGNAL \core1|Add8~7\ : std_logic;
SIGNAL \core1|Add8~8_combout\ : std_logic;
SIGNAL \key[68]~input_o\ : std_logic;
SIGNAL \core1|Add5~1\ : std_logic;
SIGNAL \core1|Add5~2_combout\ : std_logic;
SIGNAL \key[101]~input_o\ : std_logic;
SIGNAL \core1|Add7~9\ : std_logic;
SIGNAL \core1|Add7~10_combout\ : std_logic;
SIGNAL \core1|RESULT~37_combout\ : std_logic;
SIGNAL \core1|Add8~9\ : std_logic;
SIGNAL \core1|Add8~10_combout\ : std_logic;
SIGNAL \core1|Add7~11\ : std_logic;
SIGNAL \core1|Add7~12_combout\ : std_logic;
SIGNAL \key[70]~input_o\ : std_logic;
SIGNAL \core1|Add5~3\ : std_logic;
SIGNAL \core1|Add5~4_combout\ : std_logic;
SIGNAL \core1|RESULT~38_combout\ : std_logic;
SIGNAL \core1|Add8~11\ : std_logic;
SIGNAL \core1|Add8~12_combout\ : std_logic;
SIGNAL \core1|Add6~9\ : std_logic;
SIGNAL \core1|Add6~11\ : std_logic;
SIGNAL \core1|Add6~13\ : std_logic;
SIGNAL \core1|Add6~14_combout\ : std_logic;
SIGNAL \core1|Add5~5\ : std_logic;
SIGNAL \core1|Add5~6_combout\ : std_logic;
SIGNAL \key[103]~input_o\ : std_logic;
SIGNAL \core1|Add7~13\ : std_logic;
SIGNAL \core1|Add7~14_combout\ : std_logic;
SIGNAL \core1|RESULT~39_combout\ : std_logic;
SIGNAL \core1|Add8~13\ : std_logic;
SIGNAL \core1|Add8~14_combout\ : std_logic;
SIGNAL \core1|Add6~15\ : std_logic;
SIGNAL \core1|Add6~16_combout\ : std_logic;
SIGNAL \core1|Add5~7\ : std_logic;
SIGNAL \core1|Add5~8_combout\ : std_logic;
SIGNAL \key[104]~input_o\ : std_logic;
SIGNAL \core1|Add7~15\ : std_logic;
SIGNAL \core1|Add7~16_combout\ : std_logic;
SIGNAL \core1|RESULT~40_combout\ : std_logic;
SIGNAL \core1|Add8~15\ : std_logic;
SIGNAL \core1|Add8~16_combout\ : std_logic;
SIGNAL \core1|Add5~9\ : std_logic;
SIGNAL \core1|Add5~10_combout\ : std_logic;
SIGNAL \key[105]~input_o\ : std_logic;
SIGNAL \core1|Add7~17\ : std_logic;
SIGNAL \core1|Add7~18_combout\ : std_logic;
SIGNAL \core1|RESULT~41_combout\ : std_logic;
SIGNAL \core1|Add8~17\ : std_logic;
SIGNAL \core1|Add8~18_combout\ : std_logic;
SIGNAL \core1|Add5~11\ : std_logic;
SIGNAL \core1|Add5~12_combout\ : std_logic;
SIGNAL \core1|Add6~17\ : std_logic;
SIGNAL \core1|Add6~19\ : std_logic;
SIGNAL \core1|Add6~20_combout\ : std_logic;
SIGNAL \key[106]~input_o\ : std_logic;
SIGNAL \core1|Add7~19\ : std_logic;
SIGNAL \core1|Add7~20_combout\ : std_logic;
SIGNAL \core1|RESULT~42_combout\ : std_logic;
SIGNAL \core1|Add8~19\ : std_logic;
SIGNAL \core1|Add8~20_combout\ : std_logic;
SIGNAL \key[75]~input_o\ : std_logic;
SIGNAL \core1|Add5~13\ : std_logic;
SIGNAL \core1|Add5~14_combout\ : std_logic;
SIGNAL \core1|Add6~21\ : std_logic;
SIGNAL \core1|Add6~22_combout\ : std_logic;
SIGNAL \key[107]~input_o\ : std_logic;
SIGNAL \core1|Add7~21\ : std_logic;
SIGNAL \core1|Add7~22_combout\ : std_logic;
SIGNAL \core1|RESULT~43_combout\ : std_logic;
SIGNAL \core1|Add8~21\ : std_logic;
SIGNAL \core1|Add8~22_combout\ : std_logic;
SIGNAL \core1|Add6~23\ : std_logic;
SIGNAL \core1|Add6~24_combout\ : std_logic;
SIGNAL \core1|Add5~15\ : std_logic;
SIGNAL \core1|Add5~16_combout\ : std_logic;
SIGNAL \core1|RESULT~44_combout\ : std_logic;
SIGNAL \core1|Add8~23\ : std_logic;
SIGNAL \core1|Add8~24_combout\ : std_logic;
SIGNAL \core1|Add5~17\ : std_logic;
SIGNAL \core1|Add5~18_combout\ : std_logic;
SIGNAL \core1|Add6~25\ : std_logic;
SIGNAL \core1|Add6~26_combout\ : std_logic;
SIGNAL \key[109]~input_o\ : std_logic;
SIGNAL \key[108]~input_o\ : std_logic;
SIGNAL \core1|Add7~23\ : std_logic;
SIGNAL \core1|Add7~25\ : std_logic;
SIGNAL \core1|Add7~26_combout\ : std_logic;
SIGNAL \core1|RESULT~45_combout\ : std_logic;
SIGNAL \core1|Add8~25\ : std_logic;
SIGNAL \core1|Add8~26_combout\ : std_logic;
SIGNAL \core1|Add6~27\ : std_logic;
SIGNAL \core1|Add6~28_combout\ : std_logic;
SIGNAL \key[78]~input_o\ : std_logic;
SIGNAL \core1|Add5~19\ : std_logic;
SIGNAL \core1|Add5~20_combout\ : std_logic;
SIGNAL \key[110]~input_o\ : std_logic;
SIGNAL \core1|Add7~27\ : std_logic;
SIGNAL \core1|Add7~28_combout\ : std_logic;
SIGNAL \core1|RESULT~46_combout\ : std_logic;
SIGNAL \core1|Add8~27\ : std_logic;
SIGNAL \core1|Add8~28_combout\ : std_logic;
SIGNAL \core1|Add6~29\ : std_logic;
SIGNAL \core1|Add6~30_combout\ : std_logic;
SIGNAL \core1|Add5~21\ : std_logic;
SIGNAL \core1|Add5~22_combout\ : std_logic;
SIGNAL \core1|Add7~29\ : std_logic;
SIGNAL \core1|Add7~30_combout\ : std_logic;
SIGNAL \core1|RESULT~47_combout\ : std_logic;
SIGNAL \core1|Add8~29\ : std_logic;
SIGNAL \core1|Add8~30_combout\ : std_logic;
SIGNAL \core1|Add6~31\ : std_logic;
SIGNAL \core1|Add6~32_combout\ : std_logic;
SIGNAL \key[112]~input_o\ : std_logic;
SIGNAL \core1|Add7~31\ : std_logic;
SIGNAL \core1|Add7~32_combout\ : std_logic;
SIGNAL \key[80]~input_o\ : std_logic;
SIGNAL \core1|Add5~23\ : std_logic;
SIGNAL \core1|Add5~24_combout\ : std_logic;
SIGNAL \core1|RESULT~48_combout\ : std_logic;
SIGNAL \core1|Add8~31\ : std_logic;
SIGNAL \core1|Add8~32_combout\ : std_logic;
SIGNAL \core1|Add5~25\ : std_logic;
SIGNAL \core1|Add5~26_combout\ : std_logic;
SIGNAL \key[113]~input_o\ : std_logic;
SIGNAL \core1|Add7~33\ : std_logic;
SIGNAL \core1|Add7~34_combout\ : std_logic;
SIGNAL \core1|RESULT~49_combout\ : std_logic;
SIGNAL \core1|Add8~33\ : std_logic;
SIGNAL \core1|Add8~34_combout\ : std_logic;
SIGNAL \core1|Add5~27\ : std_logic;
SIGNAL \core1|Add5~28_combout\ : std_logic;
SIGNAL \core1|Add6~33\ : std_logic;
SIGNAL \core1|Add6~35\ : std_logic;
SIGNAL \core1|Add6~36_combout\ : std_logic;
SIGNAL \key[114]~input_o\ : std_logic;
SIGNAL \core1|Add7~35\ : std_logic;
SIGNAL \core1|Add7~36_combout\ : std_logic;
SIGNAL \core1|RESULT~50_combout\ : std_logic;
SIGNAL \core1|Add8~35\ : std_logic;
SIGNAL \core1|Add8~36_combout\ : std_logic;
SIGNAL \key[83]~input_o\ : std_logic;
SIGNAL \core1|Add5~29\ : std_logic;
SIGNAL \core1|Add5~30_combout\ : std_logic;
SIGNAL \core1|Add6~37\ : std_logic;
SIGNAL \core1|Add6~38_combout\ : std_logic;
SIGNAL \key[115]~input_o\ : std_logic;
SIGNAL \core1|Add7~37\ : std_logic;
SIGNAL \core1|Add7~38_combout\ : std_logic;
SIGNAL \core1|RESULT~51_combout\ : std_logic;
SIGNAL \core1|Add8~37\ : std_logic;
SIGNAL \core1|Add8~38_combout\ : std_logic;
SIGNAL \core1|Add6~39\ : std_logic;
SIGNAL \core1|Add6~40_combout\ : std_logic;
SIGNAL \key[84]~input_o\ : std_logic;
SIGNAL \core1|Add5~31\ : std_logic;
SIGNAL \core1|Add5~32_combout\ : std_logic;
SIGNAL \core1|RESULT~52_combout\ : std_logic;
SIGNAL \core1|Add8~39\ : std_logic;
SIGNAL \core1|Add8~40_combout\ : std_logic;
SIGNAL \key[85]~input_o\ : std_logic;
SIGNAL \core1|Add5~33\ : std_logic;
SIGNAL \core1|Add5~34_combout\ : std_logic;
SIGNAL \core1|Add6~41\ : std_logic;
SIGNAL \core1|Add6~42_combout\ : std_logic;
SIGNAL \key[116]~input_o\ : std_logic;
SIGNAL \core1|Add7~39\ : std_logic;
SIGNAL \core1|Add7~41\ : std_logic;
SIGNAL \core1|Add7~42_combout\ : std_logic;
SIGNAL \core1|RESULT~53_combout\ : std_logic;
SIGNAL \core1|Add8~41\ : std_logic;
SIGNAL \core1|Add8~42_combout\ : std_logic;
SIGNAL \core1|Add6~43\ : std_logic;
SIGNAL \core1|Add6~44_combout\ : std_logic;
SIGNAL \key[86]~input_o\ : std_logic;
SIGNAL \core1|Add5~35\ : std_logic;
SIGNAL \core1|Add5~36_combout\ : std_logic;
SIGNAL \core1|Add7~43\ : std_logic;
SIGNAL \core1|Add7~44_combout\ : std_logic;
SIGNAL \core1|RESULT~54_combout\ : std_logic;
SIGNAL \core1|Add8~43\ : std_logic;
SIGNAL \core1|Add8~44_combout\ : std_logic;
SIGNAL \core1|Add5~37\ : std_logic;
SIGNAL \core1|Add5~38_combout\ : std_logic;
SIGNAL \core1|Add7~45\ : std_logic;
SIGNAL \core1|Add7~46_combout\ : std_logic;
SIGNAL \core1|RESULT~55_combout\ : std_logic;
SIGNAL \core1|Add8~45\ : std_logic;
SIGNAL \core1|Add8~46_combout\ : std_logic;
SIGNAL \core1|Add6~45\ : std_logic;
SIGNAL \core1|Add6~47\ : std_logic;
SIGNAL \core1|Add6~48_combout\ : std_logic;
SIGNAL \key[120]~input_o\ : std_logic;
SIGNAL \core1|Add7~47\ : std_logic;
SIGNAL \core1|Add7~48_combout\ : std_logic;
SIGNAL \core1|RESULT~56_combout\ : std_logic;
SIGNAL \core1|Add8~47\ : std_logic;
SIGNAL \core1|Add8~48_combout\ : std_logic;
SIGNAL \core1|Add7~49\ : std_logic;
SIGNAL \core1|Add7~50_combout\ : std_logic;
SIGNAL \core1|Add5~39\ : std_logic;
SIGNAL \core1|Add5~41\ : std_logic;
SIGNAL \core1|Add5~42_combout\ : std_logic;
SIGNAL \core1|RESULT~57_combout\ : std_logic;
SIGNAL \core1|Add8~49\ : std_logic;
SIGNAL \core1|Add8~50_combout\ : std_logic;
SIGNAL \core1|Add6~49\ : std_logic;
SIGNAL \core1|Add6~51\ : std_logic;
SIGNAL \core1|Add6~52_combout\ : std_logic;
SIGNAL \core1|Add7~51\ : std_logic;
SIGNAL \core1|Add7~52_combout\ : std_logic;
SIGNAL \core1|RESULT~58_combout\ : std_logic;
SIGNAL \core1|Add8~51\ : std_logic;
SIGNAL \core1|Add8~52_combout\ : std_logic;
SIGNAL \core1|Add6~53\ : std_logic;
SIGNAL \core1|Add6~54_combout\ : std_logic;
SIGNAL \key[90]~input_o\ : std_logic;
SIGNAL \core1|Add5~43\ : std_logic;
SIGNAL \core1|Add5~45\ : std_logic;
SIGNAL \core1|Add5~46_combout\ : std_logic;
SIGNAL \core1|RESULT~59_combout\ : std_logic;
SIGNAL \core1|Add8~53\ : std_logic;
SIGNAL \core1|Add8~54_combout\ : std_logic;
SIGNAL \core1|Add6~55\ : std_logic;
SIGNAL \core1|Add6~56_combout\ : std_logic;
SIGNAL \key[92]~input_o\ : std_logic;
SIGNAL \core1|Add5~47\ : std_logic;
SIGNAL \core1|Add5~48_combout\ : std_logic;
SIGNAL \key[124]~input_o\ : std_logic;
SIGNAL \key[123]~input_o\ : std_logic;
SIGNAL \core1|Add7~53\ : std_logic;
SIGNAL \core1|Add7~55\ : std_logic;
SIGNAL \core1|Add7~56_combout\ : std_logic;
SIGNAL \core1|RESULT~60_combout\ : std_logic;
SIGNAL \core1|Add8~55\ : std_logic;
SIGNAL \core1|Add8~56_combout\ : std_logic;
SIGNAL \core1|Add5~49\ : std_logic;
SIGNAL \core1|Add5~50_combout\ : std_logic;
SIGNAL \core1|Add6~57\ : std_logic;
SIGNAL \core1|Add6~58_combout\ : std_logic;
SIGNAL \core1|RESULT~61_combout\ : std_logic;
SIGNAL \core1|Add8~57\ : std_logic;
SIGNAL \core1|Add8~58_combout\ : std_logic;
SIGNAL \vi[62]~input_o\ : std_logic;
SIGNAL \core1|Add5~51\ : std_logic;
SIGNAL \core1|Add5~52_combout\ : std_logic;
SIGNAL \core1|Add6~59\ : std_logic;
SIGNAL \core1|Add6~60_combout\ : std_logic;
SIGNAL \key[125]~input_o\ : std_logic;
SIGNAL \core1|Add7~57\ : std_logic;
SIGNAL \core1|Add7~59\ : std_logic;
SIGNAL \core1|Add7~60_combout\ : std_logic;
SIGNAL \core1|RESULT~62_combout\ : std_logic;
SIGNAL \core1|Add8~59\ : std_logic;
SIGNAL \core1|Add8~60_combout\ : std_logic;
SIGNAL \core1|Add6~61\ : std_logic;
SIGNAL \core1|Add6~62_combout\ : std_logic;
SIGNAL \key[95]~input_o\ : std_logic;
SIGNAL \core1|Add5~53\ : std_logic;
SIGNAL \core1|Add5~54_combout\ : std_logic;
SIGNAL \key[127]~input_o\ : std_logic;
SIGNAL \core1|Add7~61\ : std_logic;
SIGNAL \core1|Add7~62_combout\ : std_logic;
SIGNAL \core1|RESULT~63_combout\ : std_logic;
SIGNAL \core1|Add8~61\ : std_logic;
SIGNAL \core1|Add8~62_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_start <= start;
ww_vi <= vi;
vo <= ww_vo;
ww_key <= key;
mode <= ww_mode;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: LCCOMB_X11_Y10_N2
\core1|Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add3~2_combout\ = (\vi[38]~input_o\ & ((\key[33]~input_o\ & (\core1|Add3~1\ & VCC)) # (!\key[33]~input_o\ & (!\core1|Add3~1\)))) # (!\vi[38]~input_o\ & ((\key[33]~input_o\ & (!\core1|Add3~1\)) # (!\key[33]~input_o\ & ((\core1|Add3~1\) # (GND)))))
-- \core1|Add3~3\ = CARRY((\vi[38]~input_o\ & (!\key[33]~input_o\ & !\core1|Add3~1\)) # (!\vi[38]~input_o\ & ((!\core1|Add3~1\) # (!\key[33]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vi[38]~input_o\,
	datab => \key[33]~input_o\,
	datad => VCC,
	cin => \core1|Add3~1\,
	combout => \core1|Add3~2_combout\,
	cout => \core1|Add3~3\);

-- Location: LCCOMB_X11_Y10_N4
\core1|Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add3~4_combout\ = ((\key[34]~input_o\ $ (\vi[39]~input_o\ $ (!\core1|Add3~3\)))) # (GND)
-- \core1|Add3~5\ = CARRY((\key[34]~input_o\ & ((\vi[39]~input_o\) # (!\core1|Add3~3\))) # (!\key[34]~input_o\ & (\vi[39]~input_o\ & !\core1|Add3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key[34]~input_o\,
	datab => \vi[39]~input_o\,
	datad => VCC,
	cin => \core1|Add3~3\,
	combout => \core1|Add3~4_combout\,
	cout => \core1|Add3~5\);

-- Location: LCCOMB_X12_Y10_N4
\core1|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add1~0_combout\ = (\key[4]~input_o\ & (\vi[32]~input_o\ $ (VCC))) # (!\key[4]~input_o\ & (\vi[32]~input_o\ & VCC))
-- \core1|Add1~1\ = CARRY((\key[4]~input_o\ & \vi[32]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key[4]~input_o\,
	datab => \vi[32]~input_o\,
	datad => VCC,
	combout => \core1|Add1~0_combout\,
	cout => \core1|Add1~1\);

-- Location: LCCOMB_X12_Y10_N6
\core1|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add1~2_combout\ = (\vi[33]~input_o\ & ((\key[5]~input_o\ & (\core1|Add1~1\ & VCC)) # (!\key[5]~input_o\ & (!\core1|Add1~1\)))) # (!\vi[33]~input_o\ & ((\key[5]~input_o\ & (!\core1|Add1~1\)) # (!\key[5]~input_o\ & ((\core1|Add1~1\) # (GND)))))
-- \core1|Add1~3\ = CARRY((\vi[33]~input_o\ & (!\key[5]~input_o\ & !\core1|Add1~1\)) # (!\vi[33]~input_o\ & ((!\core1|Add1~1\) # (!\key[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vi[33]~input_o\,
	datab => \key[5]~input_o\,
	datad => VCC,
	cin => \core1|Add1~1\,
	combout => \core1|Add1~2_combout\,
	cout => \core1|Add1~3\);

-- Location: LCCOMB_X11_Y10_N12
\core1|Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add3~12_combout\ = ((\vi[43]~input_o\ $ (\key[38]~input_o\ $ (!\core1|Add3~11\)))) # (GND)
-- \core1|Add3~13\ = CARRY((\vi[43]~input_o\ & ((\key[38]~input_o\) # (!\core1|Add3~11\))) # (!\vi[43]~input_o\ & (\key[38]~input_o\ & !\core1|Add3~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vi[43]~input_o\,
	datab => \key[38]~input_o\,
	datad => VCC,
	cin => \core1|Add3~11\,
	combout => \core1|Add3~12_combout\,
	cout => \core1|Add3~13\);

-- Location: LCCOMB_X11_Y10_N14
\core1|Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add3~14_combout\ = (\vi[44]~input_o\ & ((\key[39]~input_o\ & (\core1|Add3~13\ & VCC)) # (!\key[39]~input_o\ & (!\core1|Add3~13\)))) # (!\vi[44]~input_o\ & ((\key[39]~input_o\ & (!\core1|Add3~13\)) # (!\key[39]~input_o\ & ((\core1|Add3~13\) # 
-- (GND)))))
-- \core1|Add3~15\ = CARRY((\vi[44]~input_o\ & (!\key[39]~input_o\ & !\core1|Add3~13\)) # (!\vi[44]~input_o\ & ((!\core1|Add3~13\) # (!\key[39]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vi[44]~input_o\,
	datab => \key[39]~input_o\,
	datad => VCC,
	cin => \core1|Add3~13\,
	combout => \core1|Add3~14_combout\,
	cout => \core1|Add3~15\);

-- Location: LCCOMB_X12_Y10_N12
\core1|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add1~8_combout\ = ((\vi[36]~input_o\ $ (\key[8]~input_o\ $ (!\core1|Add1~7\)))) # (GND)
-- \core1|Add1~9\ = CARRY((\vi[36]~input_o\ & ((\key[8]~input_o\) # (!\core1|Add1~7\))) # (!\vi[36]~input_o\ & (\key[8]~input_o\ & !\core1|Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vi[36]~input_o\,
	datab => \key[8]~input_o\,
	datad => VCC,
	cin => \core1|Add1~7\,
	combout => \core1|Add1~8_combout\,
	cout => \core1|Add1~9\);

-- Location: LCCOMB_X12_Y10_N14
\core1|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add1~10_combout\ = (\key[9]~input_o\ & ((\vi[37]~input_o\ & (\core1|Add1~9\ & VCC)) # (!\vi[37]~input_o\ & (!\core1|Add1~9\)))) # (!\key[9]~input_o\ & ((\vi[37]~input_o\ & (!\core1|Add1~9\)) # (!\vi[37]~input_o\ & ((\core1|Add1~9\) # (GND)))))
-- \core1|Add1~11\ = CARRY((\key[9]~input_o\ & (!\vi[37]~input_o\ & !\core1|Add1~9\)) # (!\key[9]~input_o\ & ((!\core1|Add1~9\) # (!\vi[37]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key[9]~input_o\,
	datab => \vi[37]~input_o\,
	datad => VCC,
	cin => \core1|Add1~9\,
	combout => \core1|Add1~10_combout\,
	cout => \core1|Add1~11\);

-- Location: LCCOMB_X12_Y10_N16
\core1|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add1~12_combout\ = ((\vi[38]~input_o\ $ (\key[10]~input_o\ $ (!\core1|Add1~11\)))) # (GND)
-- \core1|Add1~13\ = CARRY((\vi[38]~input_o\ & ((\key[10]~input_o\) # (!\core1|Add1~11\))) # (!\vi[38]~input_o\ & (\key[10]~input_o\ & !\core1|Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vi[38]~input_o\,
	datab => \key[10]~input_o\,
	datad => VCC,
	cin => \core1|Add1~11\,
	combout => \core1|Add1~12_combout\,
	cout => \core1|Add1~13\);

-- Location: LCCOMB_X12_Y10_N18
\core1|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add1~14_combout\ = (\key[11]~input_o\ & ((\vi[39]~input_o\ & (\core1|Add1~13\ & VCC)) # (!\vi[39]~input_o\ & (!\core1|Add1~13\)))) # (!\key[11]~input_o\ & ((\vi[39]~input_o\ & (!\core1|Add1~13\)) # (!\vi[39]~input_o\ & ((\core1|Add1~13\) # 
-- (GND)))))
-- \core1|Add1~15\ = CARRY((\key[11]~input_o\ & (!\vi[39]~input_o\ & !\core1|Add1~13\)) # (!\key[11]~input_o\ & ((!\core1|Add1~13\) # (!\vi[39]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key[11]~input_o\,
	datab => \vi[39]~input_o\,
	datad => VCC,
	cin => \core1|Add1~13\,
	combout => \core1|Add1~14_combout\,
	cout => \core1|Add1~15\);

-- Location: LCCOMB_X15_Y10_N24
\core1|Add2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add2~22_combout\ = (\vi[44]~input_o\ & (\core1|Add2~21\ & VCC)) # (!\vi[44]~input_o\ & (!\core1|Add2~21\))
-- \core1|Add2~23\ = CARRY((!\vi[44]~input_o\ & !\core1|Add2~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vi[44]~input_o\,
	datad => VCC,
	cin => \core1|Add2~21\,
	combout => \core1|Add2~22_combout\,
	cout => \core1|Add2~23\);

-- Location: LCCOMB_X12_Y10_N22
\core1|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add1~18_combout\ = (\vi[41]~input_o\ & ((\key[13]~input_o\ & (\core1|Add1~17\ & VCC)) # (!\key[13]~input_o\ & (!\core1|Add1~17\)))) # (!\vi[41]~input_o\ & ((\key[13]~input_o\ & (!\core1|Add1~17\)) # (!\key[13]~input_o\ & ((\core1|Add1~17\) # 
-- (GND)))))
-- \core1|Add1~19\ = CARRY((\vi[41]~input_o\ & (!\key[13]~input_o\ & !\core1|Add1~17\)) # (!\vi[41]~input_o\ & ((!\core1|Add1~17\) # (!\key[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vi[41]~input_o\,
	datab => \key[13]~input_o\,
	datad => VCC,
	cin => \core1|Add1~17\,
	combout => \core1|Add1~18_combout\,
	cout => \core1|Add1~19\);

-- Location: LCCOMB_X15_Y10_N30
\core1|Add2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add2~28_combout\ = (\vi[47]~input_o\ & (\core1|Add2~27\ $ (GND))) # (!\vi[47]~input_o\ & (!\core1|Add2~27\ & VCC))
-- \core1|Add2~29\ = CARRY((\vi[47]~input_o\ & !\core1|Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vi[47]~input_o\,
	datad => VCC,
	cin => \core1|Add2~27\,
	combout => \core1|Add2~28_combout\,
	cout => \core1|Add2~29\);

-- Location: LCCOMB_X11_Y9_N0
\core1|Add3~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add3~32_combout\ = ((\key[48]~input_o\ $ (\vi[53]~input_o\ $ (!\core1|Add3~31\)))) # (GND)
-- \core1|Add3~33\ = CARRY((\key[48]~input_o\ & ((\vi[53]~input_o\) # (!\core1|Add3~31\))) # (!\key[48]~input_o\ & (\vi[53]~input_o\ & !\core1|Add3~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key[48]~input_o\,
	datab => \vi[53]~input_o\,
	datad => VCC,
	cin => \core1|Add3~31\,
	combout => \core1|Add3~32_combout\,
	cout => \core1|Add3~33\);

-- Location: LCCOMB_X11_Y9_N2
\core1|Add3~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add3~34_combout\ = (\key[49]~input_o\ & ((\vi[54]~input_o\ & (\core1|Add3~33\ & VCC)) # (!\vi[54]~input_o\ & (!\core1|Add3~33\)))) # (!\key[49]~input_o\ & ((\vi[54]~input_o\ & (!\core1|Add3~33\)) # (!\vi[54]~input_o\ & ((\core1|Add3~33\) # 
-- (GND)))))
-- \core1|Add3~35\ = CARRY((\key[49]~input_o\ & (!\vi[54]~input_o\ & !\core1|Add3~33\)) # (!\key[49]~input_o\ & ((!\core1|Add3~33\) # (!\vi[54]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key[49]~input_o\,
	datab => \vi[54]~input_o\,
	datad => VCC,
	cin => \core1|Add3~33\,
	combout => \core1|Add3~34_combout\,
	cout => \core1|Add3~35\);

-- Location: LCCOMB_X12_Y9_N2
\core1|Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add1~30_combout\ = (\key[19]~input_o\ & ((\vi[47]~input_o\ & (\core1|Add1~29\ & VCC)) # (!\vi[47]~input_o\ & (!\core1|Add1~29\)))) # (!\key[19]~input_o\ & ((\vi[47]~input_o\ & (!\core1|Add1~29\)) # (!\vi[47]~input_o\ & ((\core1|Add1~29\) # 
-- (GND)))))
-- \core1|Add1~31\ = CARRY((\key[19]~input_o\ & (!\vi[47]~input_o\ & !\core1|Add1~29\)) # (!\key[19]~input_o\ & ((!\core1|Add1~29\) # (!\vi[47]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key[19]~input_o\,
	datab => \vi[47]~input_o\,
	datad => VCC,
	cin => \core1|Add1~29\,
	combout => \core1|Add1~30_combout\,
	cout => \core1|Add1~31\);

-- Location: LCCOMB_X12_Y9_N8
\core1|Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add1~36_combout\ = ((\key[22]~input_o\ $ (\vi[50]~input_o\ $ (!\core1|Add1~35\)))) # (GND)
-- \core1|Add1~37\ = CARRY((\key[22]~input_o\ & ((\vi[50]~input_o\) # (!\core1|Add1~35\))) # (!\key[22]~input_o\ & (\vi[50]~input_o\ & !\core1|Add1~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key[22]~input_o\,
	datab => \vi[50]~input_o\,
	datad => VCC,
	cin => \core1|Add1~35\,
	combout => \core1|Add1~36_combout\,
	cout => \core1|Add1~37\);

-- Location: LCCOMB_X11_Y9_N14
\core1|Add3~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add3~46_combout\ = (\key[55]~input_o\ & ((\vi[60]~input_o\ & (\core1|Add3~45\ & VCC)) # (!\vi[60]~input_o\ & (!\core1|Add3~45\)))) # (!\key[55]~input_o\ & ((\vi[60]~input_o\ & (!\core1|Add3~45\)) # (!\vi[60]~input_o\ & ((\core1|Add3~45\) # 
-- (GND)))))
-- \core1|Add3~47\ = CARRY((\key[55]~input_o\ & (!\vi[60]~input_o\ & !\core1|Add3~45\)) # (!\key[55]~input_o\ & ((!\core1|Add3~45\) # (!\vi[60]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key[55]~input_o\,
	datab => \vi[60]~input_o\,
	datad => VCC,
	cin => \core1|Add3~45\,
	combout => \core1|Add3~46_combout\,
	cout => \core1|Add3~47\);

-- Location: LCCOMB_X12_Y9_N14
\core1|Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add1~42_combout\ = (\vi[53]~input_o\ & ((\key[25]~input_o\ & (\core1|Add1~41\ & VCC)) # (!\key[25]~input_o\ & (!\core1|Add1~41\)))) # (!\vi[53]~input_o\ & ((\key[25]~input_o\ & (!\core1|Add1~41\)) # (!\key[25]~input_o\ & ((\core1|Add1~41\) # 
-- (GND)))))
-- \core1|Add1~43\ = CARRY((\vi[53]~input_o\ & (!\key[25]~input_o\ & !\core1|Add1~41\)) # (!\vi[53]~input_o\ & ((!\core1|Add1~41\) # (!\key[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vi[53]~input_o\,
	datab => \key[25]~input_o\,
	datad => VCC,
	cin => \core1|Add1~41\,
	combout => \core1|Add1~42_combout\,
	cout => \core1|Add1~43\);

-- Location: LCCOMB_X11_Y9_N20
\core1|Add3~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add3~52_combout\ = ((\vi[63]~input_o\ $ (\key[58]~input_o\ $ (!\core1|Add3~51\)))) # (GND)
-- \core1|Add3~53\ = CARRY((\vi[63]~input_o\ & ((\key[58]~input_o\) # (!\core1|Add3~51\))) # (!\vi[63]~input_o\ & (\key[58]~input_o\ & !\core1|Add3~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vi[63]~input_o\,
	datab => \key[58]~input_o\,
	datad => VCC,
	cin => \core1|Add3~51\,
	combout => \core1|Add3~52_combout\,
	cout => \core1|Add3~53\);

-- Location: LCCOMB_X12_Y9_N18
\core1|Add1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add1~46_combout\ = (\vi[55]~input_o\ & ((\key[27]~input_o\ & (\core1|Add1~45\ & VCC)) # (!\key[27]~input_o\ & (!\core1|Add1~45\)))) # (!\vi[55]~input_o\ & ((\key[27]~input_o\ & (!\core1|Add1~45\)) # (!\key[27]~input_o\ & ((\core1|Add1~45\) # 
-- (GND)))))
-- \core1|Add1~47\ = CARRY((\vi[55]~input_o\ & (!\key[27]~input_o\ & !\core1|Add1~45\)) # (!\vi[55]~input_o\ & ((!\core1|Add1~45\) # (!\key[27]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vi[55]~input_o\,
	datab => \key[27]~input_o\,
	datad => VCC,
	cin => \core1|Add1~45\,
	combout => \core1|Add1~46_combout\,
	cout => \core1|Add1~47\);

-- Location: LCCOMB_X12_Y9_N20
\core1|Add1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add1~48_combout\ = ((\vi[56]~input_o\ $ (\key[28]~input_o\ $ (!\core1|Add1~47\)))) # (GND)
-- \core1|Add1~49\ = CARRY((\vi[56]~input_o\ & ((\key[28]~input_o\) # (!\core1|Add1~47\))) # (!\vi[56]~input_o\ & (\key[28]~input_o\ & !\core1|Add1~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vi[56]~input_o\,
	datab => \key[28]~input_o\,
	datad => VCC,
	cin => \core1|Add1~47\,
	combout => \core1|Add1~48_combout\,
	cout => \core1|Add1~49\);

-- Location: LCCOMB_X11_Y9_N28
\core1|Add3~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add3~60_combout\ = (\key[62]~input_o\ & (\core1|Add3~59\ $ (GND))) # (!\key[62]~input_o\ & (!\core1|Add3~59\ & VCC))
-- \core1|Add3~61\ = CARRY((\key[62]~input_o\ & !\core1|Add3~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key[62]~input_o\,
	datad => VCC,
	cin => \core1|Add3~59\,
	combout => \core1|Add3~60_combout\,
	cout => \core1|Add3~61\);

-- Location: LCCOMB_X11_Y9_N30
\core1|Add3~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add3~62_combout\ = \core1|Add3~61\ $ (\key[63]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \key[63]~input_o\,
	cin => \core1|Add3~61\,
	combout => \core1|Add3~62_combout\);

-- Location: LCCOMB_X20_Y16_N0
\core1|Add6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add6~0_combout\ = \core1|Add4~0_combout\ $ (VCC)
-- \core1|Add6~1\ = CARRY(\core1|Add4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \core1|Add4~0_combout\,
	datad => VCC,
	combout => \core1|Add6~0_combout\,
	cout => \core1|Add6~1\);

-- Location: LCCOMB_X20_Y16_N2
\core1|Add6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add6~2_combout\ = (\core1|Add4~2_combout\ & (!\core1|Add6~1\)) # (!\core1|Add4~2_combout\ & ((\core1|Add6~1\) # (GND)))
-- \core1|Add6~3\ = CARRY((!\core1|Add6~1\) # (!\core1|Add4~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \core1|Add4~2_combout\,
	datad => VCC,
	cin => \core1|Add6~1\,
	combout => \core1|Add6~2_combout\,
	cout => \core1|Add6~3\);

-- Location: LCCOMB_X20_Y16_N4
\core1|Add6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add6~4_combout\ = (\core1|Add4~4_combout\ & (\core1|Add6~3\ $ (GND))) # (!\core1|Add4~4_combout\ & (!\core1|Add6~3\ & VCC))
-- \core1|Add6~5\ = CARRY((\core1|Add4~4_combout\ & !\core1|Add6~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \core1|Add4~4_combout\,
	datad => VCC,
	cin => \core1|Add6~3\,
	combout => \core1|Add6~4_combout\,
	cout => \core1|Add6~5\);

-- Location: LCCOMB_X20_Y16_N6
\core1|Add6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add6~6_combout\ = (\core1|Add4~6_combout\ & (\core1|Add6~5\ & VCC)) # (!\core1|Add4~6_combout\ & (!\core1|Add6~5\))
-- \core1|Add6~7\ = CARRY((!\core1|Add4~6_combout\ & !\core1|Add6~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \core1|Add4~6_combout\,
	datad => VCC,
	cin => \core1|Add6~5\,
	combout => \core1|Add6~6_combout\,
	cout => \core1|Add6~7\);

-- Location: LCCOMB_X22_Y16_N4
\core1|Add5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add5~0_combout\ = (\core1|Add4~0_combout\ & (\key[68]~input_o\ $ (VCC))) # (!\core1|Add4~0_combout\ & (\key[68]~input_o\ & VCC))
-- \core1|Add5~1\ = CARRY((\core1|Add4~0_combout\ & \key[68]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \core1|Add4~0_combout\,
	datab => \key[68]~input_o\,
	datad => VCC,
	combout => \core1|Add5~0_combout\,
	cout => \core1|Add5~1\);

-- Location: LCCOMB_X20_Y16_N10
\core1|Add6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add6~10_combout\ = (\core1|Add4~10_combout\ & (\core1|Add6~9\ & VCC)) # (!\core1|Add4~10_combout\ & (!\core1|Add6~9\))
-- \core1|Add6~11\ = CARRY((!\core1|Add4~10_combout\ & !\core1|Add6~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \core1|Add4~10_combout\,
	datad => VCC,
	cin => \core1|Add6~9\,
	combout => \core1|Add6~10_combout\,
	cout => \core1|Add6~11\);

-- Location: LCCOMB_X20_Y16_N12
\core1|Add6~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add6~12_combout\ = (\core1|Add4~12_combout\ & (\core1|Add6~11\ $ (GND))) # (!\core1|Add4~12_combout\ & (!\core1|Add6~11\ & VCC))
-- \core1|Add6~13\ = CARRY((\core1|Add4~12_combout\ & !\core1|Add6~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \core1|Add4~12_combout\,
	datad => VCC,
	cin => \core1|Add6~11\,
	combout => \core1|Add6~12_combout\,
	cout => \core1|Add6~13\);

-- Location: LCCOMB_X20_Y16_N18
\core1|Add6~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add6~18_combout\ = (\core1|Add4~18_combout\ & (!\core1|Add6~17\)) # (!\core1|Add4~18_combout\ & ((\core1|Add6~17\) # (GND)))
-- \core1|Add6~19\ = CARRY((!\core1|Add6~17\) # (!\core1|Add4~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \core1|Add4~18_combout\,
	datad => VCC,
	cin => \core1|Add6~17\,
	combout => \core1|Add6~18_combout\,
	cout => \core1|Add6~19\);

-- Location: LCCOMB_X23_Y16_N24
\core1|Add7~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add7~24_combout\ = ((\core1|Add4~34_combout\ $ (\key[108]~input_o\ $ (!\core1|Add7~23\)))) # (GND)
-- \core1|Add7~25\ = CARRY((\core1|Add4~34_combout\ & ((\key[108]~input_o\) # (!\core1|Add7~23\))) # (!\core1|Add4~34_combout\ & (\key[108]~input_o\ & !\core1|Add7~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \core1|Add4~34_combout\,
	datab => \key[108]~input_o\,
	datad => VCC,
	cin => \core1|Add7~23\,
	combout => \core1|Add7~24_combout\,
	cout => \core1|Add7~25\);

-- Location: LCCOMB_X20_Y15_N2
\core1|Add6~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add6~34_combout\ = (\core1|Add4~34_combout\ & (\core1|Add6~33\ & VCC)) # (!\core1|Add4~34_combout\ & (!\core1|Add6~33\))
-- \core1|Add6~35\ = CARRY((!\core1|Add4~34_combout\ & !\core1|Add6~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \core1|Add4~34_combout\,
	datad => VCC,
	cin => \core1|Add6~33\,
	combout => \core1|Add6~34_combout\,
	cout => \core1|Add6~35\);

-- Location: LCCOMB_X23_Y15_N8
\core1|Add7~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add7~40_combout\ = ((\core1|Add4~50_combout\ $ (\key[116]~input_o\ $ (!\core1|Add7~39\)))) # (GND)
-- \core1|Add7~41\ = CARRY((\core1|Add4~50_combout\ & ((\key[116]~input_o\) # (!\core1|Add7~39\))) # (!\core1|Add4~50_combout\ & (\key[116]~input_o\ & !\core1|Add7~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \core1|Add4~50_combout\,
	datab => \key[116]~input_o\,
	datad => VCC,
	cin => \core1|Add7~39\,
	combout => \core1|Add7~40_combout\,
	cout => \core1|Add7~41\);

-- Location: LCCOMB_X20_Y15_N14
\core1|Add6~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add6~46_combout\ = (\core1|Add4~46_combout\ & (!\core1|Add6~45\)) # (!\core1|Add4~46_combout\ & ((\core1|Add6~45\) # (GND)))
-- \core1|Add6~47\ = CARRY((!\core1|Add6~45\) # (!\core1|Add4~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \core1|Add4~46_combout\,
	datad => VCC,
	cin => \core1|Add6~45\,
	combout => \core1|Add6~46_combout\,
	cout => \core1|Add6~47\);

-- Location: LCCOMB_X22_Y15_N12
\core1|Add5~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add5~40_combout\ = ((\key[88]~input_o\ $ (\core1|Add4~40_combout\ $ (!\core1|Add5~39\)))) # (GND)
-- \core1|Add5~41\ = CARRY((\key[88]~input_o\ & ((\core1|Add4~40_combout\) # (!\core1|Add5~39\))) # (!\key[88]~input_o\ & (\core1|Add4~40_combout\ & !\core1|Add5~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key[88]~input_o\,
	datab => \core1|Add4~40_combout\,
	datad => VCC,
	cin => \core1|Add5~39\,
	combout => \core1|Add5~40_combout\,
	cout => \core1|Add5~41\);

-- Location: LCCOMB_X20_Y15_N18
\core1|Add6~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add6~50_combout\ = (\core1|Add4~50_combout\ & (\core1|Add6~49\ & VCC)) # (!\core1|Add4~50_combout\ & (!\core1|Add6~49\))
-- \core1|Add6~51\ = CARRY((!\core1|Add4~50_combout\ & !\core1|Add6~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \core1|Add4~50_combout\,
	datad => VCC,
	cin => \core1|Add6~49\,
	combout => \core1|Add6~50_combout\,
	cout => \core1|Add6~51\);

-- Location: LCCOMB_X22_Y15_N16
\core1|Add5~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add5~44_combout\ = ((\core1|Add4~44_combout\ $ (\key[90]~input_o\ $ (!\core1|Add5~43\)))) # (GND)
-- \core1|Add5~45\ = CARRY((\core1|Add4~44_combout\ & ((\key[90]~input_o\) # (!\core1|Add5~43\))) # (!\core1|Add4~44_combout\ & (\key[90]~input_o\ & !\core1|Add5~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \core1|Add4~44_combout\,
	datab => \key[90]~input_o\,
	datad => VCC,
	cin => \core1|Add5~43\,
	combout => \core1|Add5~44_combout\,
	cout => \core1|Add5~45\);

-- Location: LCCOMB_X23_Y15_N22
\core1|Add7~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add7~54_combout\ = (\key[123]~input_o\ & (!\core1|Add7~53\)) # (!\key[123]~input_o\ & ((\core1|Add7~53\) # (GND)))
-- \core1|Add7~55\ = CARRY((!\core1|Add7~53\) # (!\key[123]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key[123]~input_o\,
	datad => VCC,
	cin => \core1|Add7~53\,
	combout => \core1|Add7~54_combout\,
	cout => \core1|Add7~55\);

-- Location: LCCOMB_X23_Y15_N26
\core1|Add7~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add7~58_combout\ = (\key[125]~input_o\ & (!\core1|Add7~57\)) # (!\key[125]~input_o\ & ((\core1|Add7~57\) # (GND)))
-- \core1|Add7~59\ = CARRY((!\core1|Add7~57\) # (!\key[125]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key[125]~input_o\,
	datad => VCC,
	cin => \core1|Add7~57\,
	combout => \core1|Add7~58_combout\,
	cout => \core1|Add7~59\);

-- Location: IOIBUF_X7_Y29_N15
\key[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(32),
	o => \key[32]~input_o\);

-- Location: IOIBUF_X0_Y6_N8
\key[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(34),
	o => \key[34]~input_o\);

-- Location: IOIBUF_X0_Y10_N8
\key[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(4),
	o => \key[4]~input_o\);

-- Location: IOIBUF_X3_Y0_N29
\key[36]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(36),
	o => \key[36]~input_o\);

-- Location: IOIBUF_X0_Y22_N15
\key[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(37),
	o => \key[37]~input_o\);

-- Location: IOIBUF_X9_Y0_N15
\key[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(6),
	o => \key[6]~input_o\);

-- Location: IOIBUF_X0_Y3_N8
\key[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(40),
	o => \key[40]~input_o\);

-- Location: IOIBUF_X0_Y10_N22
\key[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(9),
	o => \key[9]~input_o\);

-- Location: IOIBUF_X0_Y7_N8
\key[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(41),
	o => \key[41]~input_o\);

-- Location: IOIBUF_X7_Y29_N8
\key[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(42),
	o => \key[42]~input_o\);

-- Location: IOIBUF_X5_Y0_N1
\key[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(11),
	o => \key[11]~input_o\);

-- Location: IOIBUF_X41_Y10_N22
\key[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(12),
	o => \key[12]~input_o\);

-- Location: IOIBUF_X3_Y0_N15
\key[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(44),
	o => \key[44]~input_o\);

-- Location: IOIBUF_X37_Y0_N1
\key[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(14),
	o => \key[14]~input_o\);

-- Location: IOIBUF_X41_Y10_N8
\key[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(15),
	o => \key[15]~input_o\);

-- Location: IOIBUF_X41_Y10_N15
\key[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(47),
	o => \key[47]~input_o\);

-- Location: IOIBUF_X0_Y10_N15
\key[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(16),
	o => \key[16]~input_o\);

-- Location: IOIBUF_X41_Y6_N15
\key[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(48),
	o => \key[48]~input_o\);

-- Location: IOIBUF_X7_Y0_N15
\key[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(49),
	o => \key[49]~input_o\);

-- Location: IOIBUF_X0_Y6_N22
\key[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(18),
	o => \key[18]~input_o\);

-- Location: IOIBUF_X11_Y0_N22
\key[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(50),
	o => \key[50]~input_o\);

-- Location: IOIBUF_X0_Y6_N1
\key[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(19),
	o => \key[19]~input_o\);

-- Location: IOIBUF_X0_Y4_N1
\key[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(51),
	o => \key[51]~input_o\);

-- Location: IOIBUF_X0_Y7_N1
\key[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(20),
	o => \key[20]~input_o\);

-- Location: IOIBUF_X0_Y2_N15
\key[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(52),
	o => \key[52]~input_o\);

-- Location: IOIBUF_X5_Y0_N22
\key[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(21),
	o => \key[21]~input_o\);

-- Location: IOIBUF_X5_Y0_N8
\key[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(22),
	o => \key[22]~input_o\);

-- Location: IOIBUF_X0_Y2_N8
\key[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(54),
	o => \key[54]~input_o\);

-- Location: IOIBUF_X5_Y0_N29
\key[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(23),
	o => \key[23]~input_o\);

-- Location: IOIBUF_X0_Y2_N1
\key[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(55),
	o => \key[55]~input_o\);

-- Location: IOIBUF_X0_Y5_N15
\key[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(59),
	o => \key[59]~input_o\);

-- Location: IOIBUF_X0_Y9_N8
\key[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(29),
	o => \key[29]~input_o\);

-- Location: IOIBUF_X0_Y8_N1
\key[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(61),
	o => \key[61]~input_o\);

-- Location: IOIBUF_X0_Y5_N22
\key[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(30),
	o => \key[30]~input_o\);

-- Location: IOIBUF_X7_Y0_N22
\key[63]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(63),
	o => \key[63]~input_o\);

-- Location: IOIBUF_X41_Y24_N15
\key[69]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(69),
	o => \key[69]~input_o\);

-- Location: IOIBUF_X32_Y0_N22
\key[102]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(102),
	o => \key[102]~input_o\);

-- Location: IOIBUF_X23_Y29_N15
\key[71]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(71),
	o => \key[71]~input_o\);

-- Location: IOIBUF_X41_Y20_N1
\key[72]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(72),
	o => \key[72]~input_o\);

-- Location: IOIBUF_X26_Y0_N1
\key[73]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(73),
	o => \key[73]~input_o\);

-- Location: IOIBUF_X41_Y20_N22
\key[74]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(74),
	o => \key[74]~input_o\);

-- Location: IOIBUF_X26_Y0_N15
\key[76]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(76),
	o => \key[76]~input_o\);

-- Location: IOIBUF_X41_Y20_N8
\key[77]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(77),
	o => \key[77]~input_o\);

-- Location: IOIBUF_X41_Y23_N15
\key[79]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(79),
	o => \key[79]~input_o\);

-- Location: IOIBUF_X41_Y25_N22
\key[111]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(111),
	o => \key[111]~input_o\);

-- Location: IOIBUF_X41_Y20_N15
\key[81]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(81),
	o => \key[81]~input_o\);

-- Location: IOIBUF_X41_Y8_N8
\key[82]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(82),
	o => \key[82]~input_o\);

-- Location: IOIBUF_X26_Y29_N22
\key[117]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(117),
	o => \key[117]~input_o\);

-- Location: IOIBUF_X35_Y29_N15
\key[118]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(118),
	o => \key[118]~input_o\);

-- Location: IOIBUF_X41_Y7_N1
\key[87]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(87),
	o => \key[87]~input_o\);

-- Location: IOIBUF_X26_Y29_N29
\key[119]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(119),
	o => \key[119]~input_o\);

-- Location: IOIBUF_X30_Y0_N22
\key[88]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(88),
	o => \key[88]~input_o\);

-- Location: IOIBUF_X0_Y23_N1
\key[89]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(89),
	o => \key[89]~input_o\);

-- Location: IOIBUF_X41_Y19_N8
\key[121]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(121),
	o => \key[121]~input_o\);

-- Location: IOIBUF_X41_Y22_N22
\key[122]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(122),
	o => \key[122]~input_o\);

-- Location: IOIBUF_X41_Y18_N1
\key[91]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(91),
	o => \key[91]~input_o\);

-- Location: IOIBUF_X30_Y29_N15
\key[93]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(93),
	o => \key[93]~input_o\);

-- Location: IOIBUF_X41_Y22_N1
\key[94]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(94),
	o => \key[94]~input_o\);

-- Location: IOIBUF_X30_Y29_N22
\key[126]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(126),
	o => \key[126]~input_o\);

-- Location: IOOBUF_X41_Y21_N16
\vo[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \core1|Add4~0_combout\,
	devoe => ww_devoe,
	o => \vo[0]~output_o\);

-- Location: IOOBUF_X9_Y29_N2
\vo[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \core1|Add4~2_combout\,
	devoe => ww_devoe,
	o => \vo[1]~output_o\);

-- Location: IOOBUF_X14_Y29_N2
\vo[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \core1|Add4~4_combout\,
	devoe => ww_devoe,
	o => \vo[2]~output_o\);

-- Location: IOOBUF_X41_Y18_N16
\vo[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \core1|Add4~6_combout\,
	devoe => ww_devoe,
	o => \vo[3]~output_o\);

-- Location: IOOBUF_X14_Y29_N9
\vo[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \core1|Add4~8_combout\,
	devoe => ww_devoe,
	o => \vo[4]~output_o\);

-- Location: IOOBUF_X41_Y17_N2
\vo[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \core1|Add4~10_combout\,
	devoe => ww_devoe,
	o => \vo[5]~output_o\);

-- Location: IOOBUF_X23_Y0_N23
\vo[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \core1|Add4~12_combout\,
	devoe => ww_devoe,
	o => \vo[6]~output_o\);

-- Location: IOOBUF_X41_Y17_N9
\vo[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \core1|Add4~14_combout\,
	devoe => ww_devoe,
	o => \vo[7]~output_o\);

-- Location: IOOBUF_X41_Y18_N23
\vo[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \core1|Add4~16_combout\,
	devoe => ww_devoe,
	o => \vo[8]~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\vo[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \core1|Add4~18_combout\,
	devoe => ww_devoe,
	o => \vo[9]~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\vo[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \core1|Add4~20_combout\,
	devoe => ww_devoe,
	o => \vo[10]~output_o\);

-- Location: IOOBUF_X21_Y29_N16
\vo[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \core1|Add4~22_combout\,
	devoe => ww_devoe,
	o => \vo[11]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\vo[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \core1|Add4~24_combout\,
	devoe => ww_devoe,
	o => \vo[12]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\vo[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \core1|Add4~26_combout\,
	devoe => ww_devoe,
	o => \vo[13]~output_o\);

-- Location: IOOBUF_X23_Y0_N2
\vo[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \core1|Add4~28_combout\,
	devoe => ww_devoe,
	o => \vo[14]~output_o\);

-- Location: IOOBUF_X30_Y0_N30
\vo[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \core1|Add4~30_combout\,
	devoe => ww_devoe,
	o => \vo[15]~output_o\);

-- Location: IOOBUF_X41_Y13_N23
\vo[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \core1|Add4~32_combout\,
	devoe => ww_devoe,
	o => \vo[16]~output_o\);

-- Location: IOOBUF_X21_Y29_N2
\vo[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \core1|Add4~34_combout\,
	devoe => ww_devoe,
	o => \vo[17]~output_o\);

-- Location: IOOBUF_X23_Y0_N30
\vo[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \core1|Add4~36_combout\,
	devoe => ww_devoe,
	o => \vo[18]~output_o\);

-- Location: IOOBUF_X41_Y22_N16
\vo[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \core1|Add4~38_combout\,
	devoe => ww_devoe,
	o => \vo[19]~output_o\);

-- Location: IOOBUF_X41_Y12_N9
\vo[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \core1|Add4~40_combout\,
	devoe => ww_devoe,
	o => \vo[20]~output_o\);

-- Location: IOOBUF_X41_Y19_N2
\vo[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \core1|Add4~42_combout\,
	devoe => ww_devoe,
	o => \vo[21]~output_o\);

-- Location: IOOBUF_X26_Y0_N30
\vo[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \core1|Add4~44_combout\,
	devoe => ww_devoe,
	o => \vo[22]~output_o\);

-- Location: IOOBUF_X41_Y13_N2
\vo[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \core1|Add4~46_combout\,
	devoe => ww_devoe,
	o => \vo[23]~output_o\);

-- Location: IOOBUF_X41_Y14_N9
\vo[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \core1|Add4~48_combout\,
	devoe => ww_devoe,
	o => \vo[24]~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\vo[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \core1|Add4~50_combout\,
	devoe => ww_devoe,
	o => \vo[25]~output_o\);

-- Location: IOOBUF_X23_Y29_N23
\vo[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \core1|Add4~52_combout\,
	devoe => ww_devoe,
	o => \vo[26]~output_o\);

-- Location: IOOBUF_X41_Y12_N2
\vo[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \core1|Add4~54_combout\,
	devoe => ww_devoe,
	o => \vo[27]~output_o\);

-- Location: IOOBUF_X41_Y12_N23
\vo[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \core1|Add4~56_combout\,
	devoe => ww_devoe,
	o => \vo[28]~output_o\);

-- Location: IOOBUF_X41_Y21_N9
\vo[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \core1|Add4~58_combout\,
	devoe => ww_devoe,
	o => \vo[29]~output_o\);

-- Location: IOOBUF_X41_Y7_N9
\vo[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \core1|Add4~60_combout\,
	devoe => ww_devoe,
	o => \vo[30]~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\vo[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \core1|Add4~62_combout\,
	devoe => ww_devoe,
	o => \vo[31]~output_o\);

-- Location: IOOBUF_X0_Y12_N16
\vo[32]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \core1|Add8~0_combout\,
	devoe => ww_devoe,
	o => \vo[32]~output_o\);

-- Location: IOOBUF_X41_Y8_N16
\vo[33]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \core1|Add8~2_combout\,
	devoe => ww_devoe,
	o => \vo[33]~output_o\);

-- Location: IOOBUF_X9_Y29_N30
\vo[34]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \core1|Add8~4_combout\,
	devoe => ww_devoe,
	o => \vo[34]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\vo[35]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \core1|Add8~6_combout\,
	devoe => ww_devoe,
	o => \vo[35]~output_o\);

-- Location: IOOBUF_X41_Y5_N16
\vo[36]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \core1|Add8~8_combout\,
	devoe => ww_devoe,
	o => \vo[36]~output_o\);

-- Location: IOOBUF_X41_Y4_N2
\vo[37]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \core1|Add8~10_combout\,
	devoe => ww_devoe,
	o => \vo[37]~output_o\);

-- Location: IOOBUF_X11_Y29_N16
\vo[38]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \core1|Add8~12_combout\,
	devoe => ww_devoe,
	o => \vo[38]~output_o\);

-- Location: IOOBUF_X41_Y5_N9
\vo[39]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \core1|Add8~14_combout\,
	devoe => ww_devoe,
	o => \vo[39]~output_o\);

-- Location: IOOBUF_X41_Y5_N23
\vo[40]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \core1|Add8~16_combout\,
	devoe => ww_devoe,
	o => \vo[40]~output_o\);

-- Location: IOOBUF_X41_Y12_N16
\vo[41]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \core1|Add8~18_combout\,
	devoe => ww_devoe,
	o => \vo[41]~output_o\);

-- Location: IOOBUF_X41_Y6_N23
\vo[42]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \core1|Add8~20_combout\,
	devoe => ww_devoe,
	o => \vo[42]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\vo[43]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \core1|Add8~22_combout\,
	devoe => ww_devoe,
	o => \vo[43]~output_o\);

-- Location: IOOBUF_X9_Y29_N9
\vo[44]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \core1|Add8~24_combout\,
	devoe => ww_devoe,
	o => \vo[44]~output_o\);

-- Location: IOOBUF_X26_Y0_N23
\vo[45]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \core1|Add8~26_combout\,
	devoe => ww_devoe,
	o => \vo[45]~output_o\);

-- Location: IOOBUF_X11_Y29_N9
\vo[46]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \core1|Add8~28_combout\,
	devoe => ww_devoe,
	o => \vo[46]~output_o\);

-- Location: IOOBUF_X7_Y29_N30
\vo[47]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \core1|Add8~30_combout\,
	devoe => ww_devoe,
	o => \vo[47]~output_o\);

-- Location: IOOBUF_X41_Y4_N9
\vo[48]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \core1|Add8~32_combout\,
	devoe => ww_devoe,
	o => \vo[48]~output_o\);

-- Location: IOOBUF_X32_Y0_N30
\vo[49]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \core1|Add8~34_combout\,
	devoe => ww_devoe,
	o => \vo[49]~output_o\);

-- Location: IOOBUF_X32_Y0_N16
\vo[50]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \core1|Add8~36_combout\,
	devoe => ww_devoe,
	o => \vo[50]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\vo[51]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \core1|Add8~38_combout\,
	devoe => ww_devoe,
	o => \vo[51]~output_o\);

-- Location: IOOBUF_X41_Y7_N16
\vo[52]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \core1|Add8~40_combout\,
	devoe => ww_devoe,
	o => \vo[52]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\vo[53]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \core1|Add8~42_combout\,
	devoe => ww_devoe,
	o => \vo[53]~output_o\);

-- Location: IOOBUF_X28_Y0_N16
\vo[54]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \core1|Add8~44_combout\,
	devoe => ww_devoe,
	o => \vo[54]~output_o\);

-- Location: IOOBUF_X9_Y29_N23
\vo[55]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \core1|Add8~46_combout\,
	devoe => ww_devoe,
	o => \vo[55]~output_o\);

-- Location: IOOBUF_X7_Y29_N2
\vo[56]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \core1|Add8~48_combout\,
	devoe => ww_devoe,
	o => \vo[56]~output_o\);

-- Location: IOOBUF_X35_Y0_N16
\vo[57]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \core1|Add8~50_combout\,
	devoe => ww_devoe,
	o => \vo[57]~output_o\);

-- Location: IOOBUF_X9_Y29_N16
\vo[58]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \core1|Add8~52_combout\,
	devoe => ww_devoe,
	o => \vo[58]~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\vo[59]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \core1|Add8~54_combout\,
	devoe => ww_devoe,
	o => \vo[59]~output_o\);

-- Location: IOOBUF_X41_Y8_N2
\vo[60]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \core1|Add8~56_combout\,
	devoe => ww_devoe,
	o => \vo[60]~output_o\);

-- Location: IOOBUF_X35_Y0_N9
\vo[61]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \core1|Add8~58_combout\,
	devoe => ww_devoe,
	o => \vo[61]~output_o\);

-- Location: IOOBUF_X37_Y0_N16
\vo[62]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \core1|Add8~60_combout\,
	devoe => ww_devoe,
	o => \vo[62]~output_o\);

-- Location: IOOBUF_X35_Y0_N2
\vo[63]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \core1|Add8~62_combout\,
	devoe => ww_devoe,
	o => \vo[63]~output_o\);

-- Location: IOOBUF_X37_Y0_N30
\mode~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mode~output_o\);

-- Location: IOIBUF_X0_Y23_N15
\vi[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vi(32),
	o => \vi[32]~input_o\);

-- Location: IOIBUF_X0_Y12_N1
\vi[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vi(37),
	o => \vi[37]~input_o\);

-- Location: LCCOMB_X11_Y10_N0
\core1|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add3~0_combout\ = (\key[32]~input_o\ & (\vi[37]~input_o\ $ (VCC))) # (!\key[32]~input_o\ & (\vi[37]~input_o\ & VCC))
-- \core1|Add3~1\ = CARRY((\key[32]~input_o\ & \vi[37]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key[32]~input_o\,
	datab => \vi[37]~input_o\,
	datad => VCC,
	combout => \core1|Add3~0_combout\,
	cout => \core1|Add3~1\);

-- Location: IOIBUF_X0_Y3_N1
\key[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(0),
	o => \key[0]~input_o\);

-- Location: LCCOMB_X12_Y10_N0
\core1|RESULT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|RESULT~0_combout\ = \vi[32]~input_o\ $ (\core1|Add3~0_combout\ $ (\key[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vi[32]~input_o\,
	datac => \core1|Add3~0_combout\,
	datad => \key[0]~input_o\,
	combout => \core1|RESULT~0_combout\);

-- Location: IOIBUF_X41_Y3_N22
\vi[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vi(0),
	o => \vi[0]~input_o\);

-- Location: LCCOMB_X20_Y14_N0
\core1|Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add4~0_combout\ = (\core1|RESULT~0_combout\ & (\vi[0]~input_o\ & VCC)) # (!\core1|RESULT~0_combout\ & (\vi[0]~input_o\ $ (VCC)))
-- \core1|Add4~1\ = CARRY((!\core1|RESULT~0_combout\ & \vi[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \core1|RESULT~0_combout\,
	datab => \vi[0]~input_o\,
	datad => VCC,
	combout => \core1|Add4~0_combout\,
	cout => \core1|Add4~1\);

-- Location: IOIBUF_X11_Y29_N22
\key[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(1),
	o => \key[1]~input_o\);

-- Location: LCCOMB_X15_Y10_N2
\core1|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add2~0_combout\ = (\vi[33]~input_o\ & (\vi[32]~input_o\ $ (VCC))) # (!\vi[33]~input_o\ & (\vi[32]~input_o\ & VCC))
-- \core1|Add2~1\ = CARRY((\vi[33]~input_o\ & \vi[32]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vi[33]~input_o\,
	datab => \vi[32]~input_o\,
	datad => VCC,
	combout => \core1|Add2~0_combout\,
	cout => \core1|Add2~1\);

-- Location: LCCOMB_X11_Y14_N16
\core1|RESULT~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|RESULT~1_combout\ = \core1|Add3~2_combout\ $ (\key[1]~input_o\ $ (\core1|Add2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \core1|Add3~2_combout\,
	datab => \key[1]~input_o\,
	datac => \core1|Add2~0_combout\,
	combout => \core1|RESULT~1_combout\);

-- Location: IOIBUF_X16_Y29_N29
\vi[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vi(1),
	o => \vi[1]~input_o\);

-- Location: LCCOMB_X20_Y14_N2
\core1|Add4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add4~2_combout\ = (\core1|RESULT~1_combout\ & ((\vi[1]~input_o\ & (\core1|Add4~1\ & VCC)) # (!\vi[1]~input_o\ & (!\core1|Add4~1\)))) # (!\core1|RESULT~1_combout\ & ((\vi[1]~input_o\ & (!\core1|Add4~1\)) # (!\vi[1]~input_o\ & ((\core1|Add4~1\) # 
-- (GND)))))
-- \core1|Add4~3\ = CARRY((\core1|RESULT~1_combout\ & (!\vi[1]~input_o\ & !\core1|Add4~1\)) # (!\core1|RESULT~1_combout\ & ((!\core1|Add4~1\) # (!\vi[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \core1|RESULT~1_combout\,
	datab => \vi[1]~input_o\,
	datad => VCC,
	cin => \core1|Add4~1\,
	combout => \core1|Add4~2_combout\,
	cout => \core1|Add4~3\);

-- Location: IOIBUF_X0_Y22_N1
\key[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(2),
	o => \key[2]~input_o\);

-- Location: IOIBUF_X0_Y20_N1
\vi[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vi(34),
	o => \vi[34]~input_o\);

-- Location: LCCOMB_X15_Y10_N4
\core1|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add2~2_combout\ = (\vi[34]~input_o\ & (!\core1|Add2~1\)) # (!\vi[34]~input_o\ & ((\core1|Add2~1\) # (GND)))
-- \core1|Add2~3\ = CARRY((!\core1|Add2~1\) # (!\vi[34]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vi[34]~input_o\,
	datad => VCC,
	cin => \core1|Add2~1\,
	combout => \core1|Add2~2_combout\,
	cout => \core1|Add2~3\);

-- Location: LCCOMB_X10_Y14_N8
\core1|RESULT~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|RESULT~2_combout\ = \core1|Add3~4_combout\ $ (\key[2]~input_o\ $ (\core1|Add2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \core1|Add3~4_combout\,
	datac => \key[2]~input_o\,
	datad => \core1|Add2~2_combout\,
	combout => \core1|RESULT~2_combout\);

-- Location: IOIBUF_X0_Y21_N1
\vi[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vi(2),
	o => \vi[2]~input_o\);

-- Location: LCCOMB_X20_Y14_N4
\core1|Add4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add4~4_combout\ = ((\core1|RESULT~2_combout\ $ (\vi[2]~input_o\ $ (!\core1|Add4~3\)))) # (GND)
-- \core1|Add4~5\ = CARRY((\core1|RESULT~2_combout\ & ((\vi[2]~input_o\) # (!\core1|Add4~3\))) # (!\core1|RESULT~2_combout\ & (\vi[2]~input_o\ & !\core1|Add4~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \core1|RESULT~2_combout\,
	datab => \vi[2]~input_o\,
	datad => VCC,
	cin => \core1|Add4~3\,
	combout => \core1|Add4~4_combout\,
	cout => \core1|Add4~5\);

-- Location: IOIBUF_X14_Y0_N1
\key[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(3),
	o => \key[3]~input_o\);

-- Location: IOIBUF_X0_Y4_N15
\key[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(35),
	o => \key[35]~input_o\);

-- Location: IOIBUF_X19_Y0_N15
\vi[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vi(39),
	o => \vi[39]~input_o\);

-- Location: IOIBUF_X11_Y29_N1
\key[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(33),
	o => \key[33]~input_o\);

-- Location: LCCOMB_X11_Y10_N6
\core1|Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add3~6_combout\ = (\vi[40]~input_o\ & ((\key[35]~input_o\ & (\core1|Add3~5\ & VCC)) # (!\key[35]~input_o\ & (!\core1|Add3~5\)))) # (!\vi[40]~input_o\ & ((\key[35]~input_o\ & (!\core1|Add3~5\)) # (!\key[35]~input_o\ & ((\core1|Add3~5\) # (GND)))))
-- \core1|Add3~7\ = CARRY((\vi[40]~input_o\ & (!\key[35]~input_o\ & !\core1|Add3~5\)) # (!\vi[40]~input_o\ & ((!\core1|Add3~5\) # (!\key[35]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vi[40]~input_o\,
	datab => \key[35]~input_o\,
	datad => VCC,
	cin => \core1|Add3~5\,
	combout => \core1|Add3~6_combout\,
	cout => \core1|Add3~7\);

-- Location: IOIBUF_X0_Y21_N22
\vi[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vi(35),
	o => \vi[35]~input_o\);

-- Location: LCCOMB_X15_Y10_N6
\core1|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add2~4_combout\ = (\vi[35]~input_o\ & ((GND) # (!\core1|Add2~3\))) # (!\vi[35]~input_o\ & (\core1|Add2~3\ $ (GND)))
-- \core1|Add2~5\ = CARRY((\vi[35]~input_o\) # (!\core1|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vi[35]~input_o\,
	datad => VCC,
	cin => \core1|Add2~3\,
	combout => \core1|Add2~4_combout\,
	cout => \core1|Add2~5\);

-- Location: LCCOMB_X14_Y6_N16
\core1|RESULT~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|RESULT~3_combout\ = \key[3]~input_o\ $ (\core1|Add3~6_combout\ $ (\core1|Add2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key[3]~input_o\,
	datac => \core1|Add3~6_combout\,
	datad => \core1|Add2~4_combout\,
	combout => \core1|RESULT~3_combout\);

-- Location: IOIBUF_X0_Y24_N22
\vi[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vi(3),
	o => \vi[3]~input_o\);

-- Location: LCCOMB_X20_Y14_N6
\core1|Add4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add4~6_combout\ = (\core1|RESULT~3_combout\ & ((\vi[3]~input_o\ & (\core1|Add4~5\ & VCC)) # (!\vi[3]~input_o\ & (!\core1|Add4~5\)))) # (!\core1|RESULT~3_combout\ & ((\vi[3]~input_o\ & (!\core1|Add4~5\)) # (!\vi[3]~input_o\ & ((\core1|Add4~5\) # 
-- (GND)))))
-- \core1|Add4~7\ = CARRY((\core1|RESULT~3_combout\ & (!\vi[3]~input_o\ & !\core1|Add4~5\)) # (!\core1|RESULT~3_combout\ & ((!\core1|Add4~5\) # (!\vi[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \core1|RESULT~3_combout\,
	datab => \vi[3]~input_o\,
	datad => VCC,
	cin => \core1|Add4~5\,
	combout => \core1|Add4~6_combout\,
	cout => \core1|Add4~7\);

-- Location: LCCOMB_X15_Y10_N8
\core1|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add2~6_combout\ = (\vi[36]~input_o\ & (\core1|Add2~5\ & VCC)) # (!\vi[36]~input_o\ & (!\core1|Add2~5\))
-- \core1|Add2~7\ = CARRY((!\vi[36]~input_o\ & !\core1|Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vi[36]~input_o\,
	datad => VCC,
	cin => \core1|Add2~5\,
	combout => \core1|Add2~6_combout\,
	cout => \core1|Add2~7\);

-- Location: IOIBUF_X0_Y11_N8
\vi[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vi(41),
	o => \vi[41]~input_o\);

-- Location: LCCOMB_X11_Y10_N8
\core1|Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add3~8_combout\ = ((\key[36]~input_o\ $ (\vi[41]~input_o\ $ (!\core1|Add3~7\)))) # (GND)
-- \core1|Add3~9\ = CARRY((\key[36]~input_o\ & ((\vi[41]~input_o\) # (!\core1|Add3~7\))) # (!\key[36]~input_o\ & (\vi[41]~input_o\ & !\core1|Add3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key[36]~input_o\,
	datab => \vi[41]~input_o\,
	datad => VCC,
	cin => \core1|Add3~7\,
	combout => \core1|Add3~8_combout\,
	cout => \core1|Add3~9\);

-- Location: LCCOMB_X14_Y10_N24
\core1|RESULT~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|RESULT~4_combout\ = \core1|Add1~0_combout\ $ (\core1|Add2~6_combout\ $ (\core1|Add3~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \core1|Add1~0_combout\,
	datac => \core1|Add2~6_combout\,
	datad => \core1|Add3~8_combout\,
	combout => \core1|RESULT~4_combout\);

-- Location: IOIBUF_X16_Y29_N15
\vi[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vi(4),
	o => \vi[4]~input_o\);

-- Location: LCCOMB_X20_Y14_N8
\core1|Add4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add4~8_combout\ = ((\core1|RESULT~4_combout\ $ (\vi[4]~input_o\ $ (!\core1|Add4~7\)))) # (GND)
-- \core1|Add4~9\ = CARRY((\core1|RESULT~4_combout\ & ((\vi[4]~input_o\) # (!\core1|Add4~7\))) # (!\core1|RESULT~4_combout\ & (\vi[4]~input_o\ & !\core1|Add4~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \core1|RESULT~4_combout\,
	datab => \vi[4]~input_o\,
	datad => VCC,
	cin => \core1|Add4~7\,
	combout => \core1|Add4~8_combout\,
	cout => \core1|Add4~9\);

-- Location: IOIBUF_X0_Y12_N22
\vi[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vi(42),
	o => \vi[42]~input_o\);

-- Location: LCCOMB_X11_Y10_N10
\core1|Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add3~10_combout\ = (\key[37]~input_o\ & ((\vi[42]~input_o\ & (\core1|Add3~9\ & VCC)) # (!\vi[42]~input_o\ & (!\core1|Add3~9\)))) # (!\key[37]~input_o\ & ((\vi[42]~input_o\ & (!\core1|Add3~9\)) # (!\vi[42]~input_o\ & ((\core1|Add3~9\) # (GND)))))
-- \core1|Add3~11\ = CARRY((\key[37]~input_o\ & (!\vi[42]~input_o\ & !\core1|Add3~9\)) # (!\key[37]~input_o\ & ((!\core1|Add3~9\) # (!\vi[42]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key[37]~input_o\,
	datab => \vi[42]~input_o\,
	datad => VCC,
	cin => \core1|Add3~9\,
	combout => \core1|Add3~10_combout\,
	cout => \core1|Add3~11\);

-- Location: LCCOMB_X15_Y10_N10
\core1|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add2~8_combout\ = (\vi[37]~input_o\ & ((GND) # (!\core1|Add2~7\))) # (!\vi[37]~input_o\ & (\core1|Add2~7\ $ (GND)))
-- \core1|Add2~9\ = CARRY((\vi[37]~input_o\) # (!\core1|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vi[37]~input_o\,
	datad => VCC,
	cin => \core1|Add2~7\,
	combout => \core1|Add2~8_combout\,
	cout => \core1|Add2~9\);

-- Location: LCCOMB_X14_Y11_N24
\core1|RESULT~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|RESULT~5_combout\ = \core1|Add1~2_combout\ $ (\core1|Add3~10_combout\ $ (\core1|Add2~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \core1|Add1~2_combout\,
	datac => \core1|Add3~10_combout\,
	datad => \core1|Add2~8_combout\,
	combout => \core1|RESULT~5_combout\);

-- Location: IOIBUF_X19_Y29_N29
\vi[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vi(5),
	o => \vi[5]~input_o\);

-- Location: LCCOMB_X20_Y14_N10
\core1|Add4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add4~10_combout\ = (\core1|RESULT~5_combout\ & ((\vi[5]~input_o\ & (\core1|Add4~9\ & VCC)) # (!\vi[5]~input_o\ & (!\core1|Add4~9\)))) # (!\core1|RESULT~5_combout\ & ((\vi[5]~input_o\ & (!\core1|Add4~9\)) # (!\vi[5]~input_o\ & ((\core1|Add4~9\) # 
-- (GND)))))
-- \core1|Add4~11\ = CARRY((\core1|RESULT~5_combout\ & (!\vi[5]~input_o\ & !\core1|Add4~9\)) # (!\core1|RESULT~5_combout\ & ((!\core1|Add4~9\) # (!\vi[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \core1|RESULT~5_combout\,
	datab => \vi[5]~input_o\,
	datad => VCC,
	cin => \core1|Add4~9\,
	combout => \core1|Add4~10_combout\,
	cout => \core1|Add4~11\);

-- Location: IOIBUF_X9_Y0_N29
\key[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(5),
	o => \key[5]~input_o\);

-- Location: LCCOMB_X12_Y10_N8
\core1|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add1~4_combout\ = ((\key[6]~input_o\ $ (\vi[34]~input_o\ $ (!\core1|Add1~3\)))) # (GND)
-- \core1|Add1~5\ = CARRY((\key[6]~input_o\ & ((\vi[34]~input_o\) # (!\core1|Add1~3\))) # (!\key[6]~input_o\ & (\vi[34]~input_o\ & !\core1|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key[6]~input_o\,
	datab => \vi[34]~input_o\,
	datad => VCC,
	cin => \core1|Add1~3\,
	combout => \core1|Add1~4_combout\,
	cout => \core1|Add1~5\);

-- Location: IOIBUF_X0_Y13_N1
\vi[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vi(38),
	o => \vi[38]~input_o\);

-- Location: LCCOMB_X15_Y10_N12
\core1|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add2~10_combout\ = (\vi[38]~input_o\ & (!\core1|Add2~9\)) # (!\vi[38]~input_o\ & ((\core1|Add2~9\) # (GND)))
-- \core1|Add2~11\ = CARRY((!\core1|Add2~9\) # (!\vi[38]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vi[38]~input_o\,
	datad => VCC,
	cin => \core1|Add2~9\,
	combout => \core1|Add2~10_combout\,
	cout => \core1|Add2~11\);

-- Location: LCCOMB_X12_Y14_N0
\core1|RESULT~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|RESULT~6_combout\ = \core1|Add3~12_combout\ $ (\core1|Add1~4_combout\ $ (\core1|Add2~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \core1|Add3~12_combout\,
	datac => \core1|Add1~4_combout\,
	datad => \core1|Add2~10_combout\,
	combout => \core1|RESULT~6_combout\);

-- Location: IOIBUF_X28_Y29_N8
\vi[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vi(6),
	o => \vi[6]~input_o\);

-- Location: LCCOMB_X20_Y14_N12
\core1|Add4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add4~12_combout\ = ((\core1|RESULT~6_combout\ $ (\vi[6]~input_o\ $ (!\core1|Add4~11\)))) # (GND)
-- \core1|Add4~13\ = CARRY((\core1|RESULT~6_combout\ & ((\vi[6]~input_o\) # (!\core1|Add4~11\))) # (!\core1|RESULT~6_combout\ & (\vi[6]~input_o\ & !\core1|Add4~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \core1|RESULT~6_combout\,
	datab => \vi[6]~input_o\,
	datad => VCC,
	cin => \core1|Add4~11\,
	combout => \core1|Add4~12_combout\,
	cout => \core1|Add4~13\);

-- Location: IOIBUF_X11_Y0_N1
\key[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(7),
	o => \key[7]~input_o\);

-- Location: LCCOMB_X12_Y10_N10
\core1|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add1~6_combout\ = (\vi[35]~input_o\ & ((\key[7]~input_o\ & (\core1|Add1~5\ & VCC)) # (!\key[7]~input_o\ & (!\core1|Add1~5\)))) # (!\vi[35]~input_o\ & ((\key[7]~input_o\ & (!\core1|Add1~5\)) # (!\key[7]~input_o\ & ((\core1|Add1~5\) # (GND)))))
-- \core1|Add1~7\ = CARRY((\vi[35]~input_o\ & (!\key[7]~input_o\ & !\core1|Add1~5\)) # (!\vi[35]~input_o\ & ((!\core1|Add1~5\) # (!\key[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vi[35]~input_o\,
	datab => \key[7]~input_o\,
	datad => VCC,
	cin => \core1|Add1~5\,
	combout => \core1|Add1~6_combout\,
	cout => \core1|Add1~7\);

-- Location: LCCOMB_X15_Y10_N14
\core1|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add2~12_combout\ = (\vi[39]~input_o\ & ((GND) # (!\core1|Add2~11\))) # (!\vi[39]~input_o\ & (\core1|Add2~11\ $ (GND)))
-- \core1|Add2~13\ = CARRY((\vi[39]~input_o\) # (!\core1|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vi[39]~input_o\,
	datad => VCC,
	cin => \core1|Add2~11\,
	combout => \core1|Add2~12_combout\,
	cout => \core1|Add2~13\);

-- Location: LCCOMB_X15_Y10_N0
\core1|RESULT~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|RESULT~7_combout\ = \core1|Add3~14_combout\ $ (\core1|Add1~6_combout\ $ (\core1|Add2~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \core1|Add3~14_combout\,
	datab => \core1|Add1~6_combout\,
	datac => \core1|Add2~12_combout\,
	combout => \core1|RESULT~7_combout\);

-- Location: IOIBUF_X16_Y29_N22
\vi[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vi(7),
	o => \vi[7]~input_o\);

-- Location: LCCOMB_X20_Y14_N14
\core1|Add4~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add4~14_combout\ = (\core1|RESULT~7_combout\ & ((\vi[7]~input_o\ & (\core1|Add4~13\ & VCC)) # (!\vi[7]~input_o\ & (!\core1|Add4~13\)))) # (!\core1|RESULT~7_combout\ & ((\vi[7]~input_o\ & (!\core1|Add4~13\)) # (!\vi[7]~input_o\ & ((\core1|Add4~13\) 
-- # (GND)))))
-- \core1|Add4~15\ = CARRY((\core1|RESULT~7_combout\ & (!\vi[7]~input_o\ & !\core1|Add4~13\)) # (!\core1|RESULT~7_combout\ & ((!\core1|Add4~13\) # (!\vi[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \core1|RESULT~7_combout\,
	datab => \vi[7]~input_o\,
	datad => VCC,
	cin => \core1|Add4~13\,
	combout => \core1|Add4~14_combout\,
	cout => \core1|Add4~15\);

-- Location: IOIBUF_X16_Y29_N1
\vi[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vi(8),
	o => \vi[8]~input_o\);

-- Location: IOIBUF_X0_Y12_N8
\vi[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vi(45),
	o => \vi[45]~input_o\);

-- Location: IOIBUF_X0_Y22_N8
\key[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(39),
	o => \key[39]~input_o\);

-- Location: IOIBUF_X0_Y2_N22
\key[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(38),
	o => \key[38]~input_o\);

-- Location: LCCOMB_X11_Y10_N16
\core1|Add3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add3~16_combout\ = ((\key[40]~input_o\ $ (\vi[45]~input_o\ $ (!\core1|Add3~15\)))) # (GND)
-- \core1|Add3~17\ = CARRY((\key[40]~input_o\ & ((\vi[45]~input_o\) # (!\core1|Add3~15\))) # (!\key[40]~input_o\ & (\vi[45]~input_o\ & !\core1|Add3~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key[40]~input_o\,
	datab => \vi[45]~input_o\,
	datad => VCC,
	cin => \core1|Add3~15\,
	combout => \core1|Add3~16_combout\,
	cout => \core1|Add3~17\);

-- Location: LCCOMB_X15_Y10_N16
\core1|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add2~14_combout\ = (\vi[40]~input_o\ & (\core1|Add2~13\ & VCC)) # (!\vi[40]~input_o\ & (!\core1|Add2~13\))
-- \core1|Add2~15\ = CARRY((!\vi[40]~input_o\ & !\core1|Add2~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vi[40]~input_o\,
	datad => VCC,
	cin => \core1|Add2~13\,
	combout => \core1|Add2~14_combout\,
	cout => \core1|Add2~15\);

-- Location: LCCOMB_X14_Y14_N24
\core1|RESULT~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|RESULT~8_combout\ = \core1|Add1~8_combout\ $ (\core1|Add3~16_combout\ $ (\core1|Add2~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \core1|Add1~8_combout\,
	datac => \core1|Add3~16_combout\,
	datad => \core1|Add2~14_combout\,
	combout => \core1|RESULT~8_combout\);

-- Location: LCCOMB_X20_Y14_N16
\core1|Add4~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add4~16_combout\ = ((\vi[8]~input_o\ $ (\core1|RESULT~8_combout\ $ (!\core1|Add4~15\)))) # (GND)
-- \core1|Add4~17\ = CARRY((\vi[8]~input_o\ & ((\core1|RESULT~8_combout\) # (!\core1|Add4~15\))) # (!\vi[8]~input_o\ & (\core1|RESULT~8_combout\ & !\core1|Add4~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vi[8]~input_o\,
	datab => \core1|RESULT~8_combout\,
	datad => VCC,
	cin => \core1|Add4~15\,
	combout => \core1|Add4~16_combout\,
	cout => \core1|Add4~17\);

-- Location: IOIBUF_X14_Y0_N8
\vi[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vi(46),
	o => \vi[46]~input_o\);

-- Location: LCCOMB_X11_Y10_N18
\core1|Add3~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add3~18_combout\ = (\key[41]~input_o\ & ((\vi[46]~input_o\ & (\core1|Add3~17\ & VCC)) # (!\vi[46]~input_o\ & (!\core1|Add3~17\)))) # (!\key[41]~input_o\ & ((\vi[46]~input_o\ & (!\core1|Add3~17\)) # (!\vi[46]~input_o\ & ((\core1|Add3~17\) # 
-- (GND)))))
-- \core1|Add3~19\ = CARRY((\key[41]~input_o\ & (!\vi[46]~input_o\ & !\core1|Add3~17\)) # (!\key[41]~input_o\ & ((!\core1|Add3~17\) # (!\vi[46]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key[41]~input_o\,
	datab => \vi[46]~input_o\,
	datad => VCC,
	cin => \core1|Add3~17\,
	combout => \core1|Add3~18_combout\,
	cout => \core1|Add3~19\);

-- Location: LCCOMB_X15_Y10_N18
\core1|Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add2~16_combout\ = (\vi[41]~input_o\ & (\core1|Add2~15\ $ (GND))) # (!\vi[41]~input_o\ & (!\core1|Add2~15\ & VCC))
-- \core1|Add2~17\ = CARRY((\vi[41]~input_o\ & !\core1|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vi[41]~input_o\,
	datad => VCC,
	cin => \core1|Add2~15\,
	combout => \core1|Add2~16_combout\,
	cout => \core1|Add2~17\);

-- Location: LCCOMB_X16_Y14_N0
\core1|RESULT~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|RESULT~9_combout\ = \core1|Add1~10_combout\ $ (\core1|Add3~18_combout\ $ (\core1|Add2~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \core1|Add1~10_combout\,
	datab => \core1|Add3~18_combout\,
	datad => \core1|Add2~16_combout\,
	combout => \core1|RESULT~9_combout\);

-- Location: IOIBUF_X41_Y14_N22
\vi[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vi(9),
	o => \vi[9]~input_o\);

-- Location: LCCOMB_X20_Y14_N18
\core1|Add4~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add4~18_combout\ = (\core1|RESULT~9_combout\ & ((\vi[9]~input_o\ & (\core1|Add4~17\ & VCC)) # (!\vi[9]~input_o\ & (!\core1|Add4~17\)))) # (!\core1|RESULT~9_combout\ & ((\vi[9]~input_o\ & (!\core1|Add4~17\)) # (!\vi[9]~input_o\ & ((\core1|Add4~17\) 
-- # (GND)))))
-- \core1|Add4~19\ = CARRY((\core1|RESULT~9_combout\ & (!\vi[9]~input_o\ & !\core1|Add4~17\)) # (!\core1|RESULT~9_combout\ & ((!\core1|Add4~17\) # (!\vi[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \core1|RESULT~9_combout\,
	datab => \vi[9]~input_o\,
	datad => VCC,
	cin => \core1|Add4~17\,
	combout => \core1|Add4~18_combout\,
	cout => \core1|Add4~19\);

-- Location: IOIBUF_X19_Y0_N29
\vi[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vi(47),
	o => \vi[47]~input_o\);

-- Location: LCCOMB_X11_Y10_N20
\core1|Add3~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add3~20_combout\ = ((\key[42]~input_o\ $ (\vi[47]~input_o\ $ (!\core1|Add3~19\)))) # (GND)
-- \core1|Add3~21\ = CARRY((\key[42]~input_o\ & ((\vi[47]~input_o\) # (!\core1|Add3~19\))) # (!\key[42]~input_o\ & (\vi[47]~input_o\ & !\core1|Add3~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key[42]~input_o\,
	datab => \vi[47]~input_o\,
	datad => VCC,
	cin => \core1|Add3~19\,
	combout => \core1|Add3~20_combout\,
	cout => \core1|Add3~21\);

-- Location: LCCOMB_X15_Y10_N20
\core1|Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add2~18_combout\ = (\vi[42]~input_o\ & (!\core1|Add2~17\)) # (!\vi[42]~input_o\ & ((\core1|Add2~17\) # (GND)))
-- \core1|Add2~19\ = CARRY((!\core1|Add2~17\) # (!\vi[42]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vi[42]~input_o\,
	datad => VCC,
	cin => \core1|Add2~17\,
	combout => \core1|Add2~18_combout\,
	cout => \core1|Add2~19\);

-- Location: LCCOMB_X17_Y10_N24
\core1|RESULT~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|RESULT~10_combout\ = \core1|Add1~12_combout\ $ (\core1|Add3~20_combout\ $ (\core1|Add2~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \core1|Add1~12_combout\,
	datab => \core1|Add3~20_combout\,
	datad => \core1|Add2~18_combout\,
	combout => \core1|RESULT~10_combout\);

-- Location: IOIBUF_X0_Y22_N22
\vi[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vi(10),
	o => \vi[10]~input_o\);

-- Location: LCCOMB_X20_Y14_N20
\core1|Add4~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add4~20_combout\ = ((\core1|RESULT~10_combout\ $ (\vi[10]~input_o\ $ (!\core1|Add4~19\)))) # (GND)
-- \core1|Add4~21\ = CARRY((\core1|RESULT~10_combout\ & ((\vi[10]~input_o\) # (!\core1|Add4~19\))) # (!\core1|RESULT~10_combout\ & (\vi[10]~input_o\ & !\core1|Add4~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \core1|RESULT~10_combout\,
	datab => \vi[10]~input_o\,
	datad => VCC,
	cin => \core1|Add4~19\,
	combout => \core1|Add4~20_combout\,
	cout => \core1|Add4~21\);

-- Location: IOIBUF_X28_Y0_N29
\vi[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vi(11),
	o => \vi[11]~input_o\);

-- Location: IOIBUF_X41_Y10_N1
\key[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(43),
	o => \key[43]~input_o\);

-- Location: LCCOMB_X11_Y10_N22
\core1|Add3~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add3~22_combout\ = (\vi[48]~input_o\ & ((\key[43]~input_o\ & (\core1|Add3~21\ & VCC)) # (!\key[43]~input_o\ & (!\core1|Add3~21\)))) # (!\vi[48]~input_o\ & ((\key[43]~input_o\ & (!\core1|Add3~21\)) # (!\key[43]~input_o\ & ((\core1|Add3~21\) # 
-- (GND)))))
-- \core1|Add3~23\ = CARRY((\vi[48]~input_o\ & (!\key[43]~input_o\ & !\core1|Add3~21\)) # (!\vi[48]~input_o\ & ((!\core1|Add3~21\) # (!\key[43]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vi[48]~input_o\,
	datab => \key[43]~input_o\,
	datad => VCC,
	cin => \core1|Add3~21\,
	combout => \core1|Add3~22_combout\,
	cout => \core1|Add3~23\);

-- Location: IOIBUF_X14_Y0_N22
\vi[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vi(43),
	o => \vi[43]~input_o\);

-- Location: LCCOMB_X15_Y10_N22
\core1|Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add2~20_combout\ = (\vi[43]~input_o\ & ((GND) # (!\core1|Add2~19\))) # (!\vi[43]~input_o\ & (\core1|Add2~19\ $ (GND)))
-- \core1|Add2~21\ = CARRY((\vi[43]~input_o\) # (!\core1|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vi[43]~input_o\,
	datad => VCC,
	cin => \core1|Add2~19\,
	combout => \core1|Add2~20_combout\,
	cout => \core1|Add2~21\);

-- Location: LCCOMB_X11_Y11_N24
\core1|RESULT~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|RESULT~11_combout\ = \core1|Add1~14_combout\ $ (\core1|Add3~22_combout\ $ (\core1|Add2~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \core1|Add1~14_combout\,
	datac => \core1|Add3~22_combout\,
	datad => \core1|Add2~20_combout\,
	combout => \core1|RESULT~11_combout\);

-- Location: LCCOMB_X20_Y14_N22
\core1|Add4~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add4~22_combout\ = (\vi[11]~input_o\ & ((\core1|RESULT~11_combout\ & (\core1|Add4~21\ & VCC)) # (!\core1|RESULT~11_combout\ & (!\core1|Add4~21\)))) # (!\vi[11]~input_o\ & ((\core1|RESULT~11_combout\ & (!\core1|Add4~21\)) # 
-- (!\core1|RESULT~11_combout\ & ((\core1|Add4~21\) # (GND)))))
-- \core1|Add4~23\ = CARRY((\vi[11]~input_o\ & (!\core1|RESULT~11_combout\ & !\core1|Add4~21\)) # (!\vi[11]~input_o\ & ((!\core1|Add4~21\) # (!\core1|RESULT~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vi[11]~input_o\,
	datab => \core1|RESULT~11_combout\,
	datad => VCC,
	cin => \core1|Add4~21\,
	combout => \core1|Add4~22_combout\,
	cout => \core1|Add4~23\);

-- Location: IOIBUF_X0_Y11_N15
\vi[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vi(49),
	o => \vi[49]~input_o\);

-- Location: LCCOMB_X11_Y10_N24
\core1|Add3~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add3~24_combout\ = ((\key[44]~input_o\ $ (\vi[49]~input_o\ $ (!\core1|Add3~23\)))) # (GND)
-- \core1|Add3~25\ = CARRY((\key[44]~input_o\ & ((\vi[49]~input_o\) # (!\core1|Add3~23\))) # (!\key[44]~input_o\ & (\vi[49]~input_o\ & !\core1|Add3~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key[44]~input_o\,
	datab => \vi[49]~input_o\,
	datad => VCC,
	cin => \core1|Add3~23\,
	combout => \core1|Add3~24_combout\,
	cout => \core1|Add3~25\);

-- Location: IOIBUF_X0_Y11_N22
\vi[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vi(40),
	o => \vi[40]~input_o\);

-- Location: IOIBUF_X0_Y6_N15
\key[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(10),
	o => \key[10]~input_o\);

-- Location: IOIBUF_X11_Y0_N15
\key[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(8),
	o => \key[8]~input_o\);

-- Location: LCCOMB_X12_Y10_N20
\core1|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add1~16_combout\ = ((\key[12]~input_o\ $ (\vi[40]~input_o\ $ (!\core1|Add1~15\)))) # (GND)
-- \core1|Add1~17\ = CARRY((\key[12]~input_o\ & ((\vi[40]~input_o\) # (!\core1|Add1~15\))) # (!\key[12]~input_o\ & (\vi[40]~input_o\ & !\core1|Add1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key[12]~input_o\,
	datab => \vi[40]~input_o\,
	datad => VCC,
	cin => \core1|Add1~15\,
	combout => \core1|Add1~16_combout\,
	cout => \core1|Add1~17\);

-- Location: LCCOMB_X10_Y10_N24
\core1|RESULT~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|RESULT~12_combout\ = \core1|Add2~22_combout\ $ (\core1|Add3~24_combout\ $ (\core1|Add1~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \core1|Add2~22_combout\,
	datab => \core1|Add3~24_combout\,
	datac => \core1|Add1~16_combout\,
	combout => \core1|RESULT~12_combout\);

-- Location: IOIBUF_X41_Y7_N22
\vi[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vi(12),
	o => \vi[12]~input_o\);

-- Location: LCCOMB_X20_Y14_N24
\core1|Add4~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add4~24_combout\ = ((\core1|RESULT~12_combout\ $ (\vi[12]~input_o\ $ (!\core1|Add4~23\)))) # (GND)
-- \core1|Add4~25\ = CARRY((\core1|RESULT~12_combout\ & ((\vi[12]~input_o\) # (!\core1|Add4~23\))) # (!\core1|RESULT~12_combout\ & (\vi[12]~input_o\ & !\core1|Add4~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \core1|RESULT~12_combout\,
	datab => \vi[12]~input_o\,
	datad => VCC,
	cin => \core1|Add4~23\,
	combout => \core1|Add4~24_combout\,
	cout => \core1|Add4~25\);

-- Location: IOIBUF_X7_Y0_N8
\key[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(45),
	o => \key[45]~input_o\);

-- Location: LCCOMB_X11_Y10_N26
\core1|Add3~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add3~26_combout\ = (\vi[50]~input_o\ & ((\key[45]~input_o\ & (\core1|Add3~25\ & VCC)) # (!\key[45]~input_o\ & (!\core1|Add3~25\)))) # (!\vi[50]~input_o\ & ((\key[45]~input_o\ & (!\core1|Add3~25\)) # (!\key[45]~input_o\ & ((\core1|Add3~25\) # 
-- (GND)))))
-- \core1|Add3~27\ = CARRY((\vi[50]~input_o\ & (!\key[45]~input_o\ & !\core1|Add3~25\)) # (!\vi[50]~input_o\ & ((!\core1|Add3~25\) # (!\key[45]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vi[50]~input_o\,
	datab => \key[45]~input_o\,
	datad => VCC,
	cin => \core1|Add3~25\,
	combout => \core1|Add3~26_combout\,
	cout => \core1|Add3~27\);

-- Location: LCCOMB_X15_Y10_N26
\core1|Add2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add2~24_combout\ = (\vi[45]~input_o\ & ((GND) # (!\core1|Add2~23\))) # (!\vi[45]~input_o\ & (\core1|Add2~23\ $ (GND)))
-- \core1|Add2~25\ = CARRY((\vi[45]~input_o\) # (!\core1|Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vi[45]~input_o\,
	datad => VCC,
	cin => \core1|Add2~23\,
	combout => \core1|Add2~24_combout\,
	cout => \core1|Add2~25\);

-- Location: LCCOMB_X16_Y10_N0
\core1|RESULT~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|RESULT~13_combout\ = \core1|Add1~18_combout\ $ (\core1|Add3~26_combout\ $ (\core1|Add2~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \core1|Add1~18_combout\,
	datab => \core1|Add3~26_combout\,
	datac => \core1|Add2~24_combout\,
	combout => \core1|RESULT~13_combout\);

-- Location: IOIBUF_X0_Y21_N15
\vi[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vi(13),
	o => \vi[13]~input_o\);

-- Location: LCCOMB_X20_Y14_N26
\core1|Add4~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add4~26_combout\ = (\core1|RESULT~13_combout\ & ((\vi[13]~input_o\ & (\core1|Add4~25\ & VCC)) # (!\vi[13]~input_o\ & (!\core1|Add4~25\)))) # (!\core1|RESULT~13_combout\ & ((\vi[13]~input_o\ & (!\core1|Add4~25\)) # (!\vi[13]~input_o\ & 
-- ((\core1|Add4~25\) # (GND)))))
-- \core1|Add4~27\ = CARRY((\core1|RESULT~13_combout\ & (!\vi[13]~input_o\ & !\core1|Add4~25\)) # (!\core1|RESULT~13_combout\ & ((!\core1|Add4~25\) # (!\vi[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \core1|RESULT~13_combout\,
	datab => \vi[13]~input_o\,
	datad => VCC,
	cin => \core1|Add4~25\,
	combout => \core1|Add4~26_combout\,
	cout => \core1|Add4~27\);

-- Location: IOIBUF_X7_Y29_N22
\key[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(46),
	o => \key[46]~input_o\);

-- Location: LCCOMB_X11_Y10_N28
\core1|Add3~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add3~28_combout\ = ((\vi[51]~input_o\ $ (\key[46]~input_o\ $ (!\core1|Add3~27\)))) # (GND)
-- \core1|Add3~29\ = CARRY((\vi[51]~input_o\ & ((\key[46]~input_o\) # (!\core1|Add3~27\))) # (!\vi[51]~input_o\ & (\key[46]~input_o\ & !\core1|Add3~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vi[51]~input_o\,
	datab => \key[46]~input_o\,
	datad => VCC,
	cin => \core1|Add3~27\,
	combout => \core1|Add3~28_combout\,
	cout => \core1|Add3~29\);

-- Location: LCCOMB_X15_Y10_N28
\core1|Add2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add2~26_combout\ = (\vi[46]~input_o\ & (\core1|Add2~25\ & VCC)) # (!\vi[46]~input_o\ & (!\core1|Add2~25\))
-- \core1|Add2~27\ = CARRY((!\vi[46]~input_o\ & !\core1|Add2~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vi[46]~input_o\,
	datad => VCC,
	cin => \core1|Add2~25\,
	combout => \core1|Add2~26_combout\,
	cout => \core1|Add2~27\);

-- Location: IOIBUF_X0_Y7_N15
\key[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(13),
	o => \key[13]~input_o\);

-- Location: LCCOMB_X12_Y10_N24
\core1|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add1~20_combout\ = ((\key[14]~input_o\ $ (\vi[42]~input_o\ $ (!\core1|Add1~19\)))) # (GND)
-- \core1|Add1~21\ = CARRY((\key[14]~input_o\ & ((\vi[42]~input_o\) # (!\core1|Add1~19\))) # (!\key[14]~input_o\ & (\vi[42]~input_o\ & !\core1|Add1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key[14]~input_o\,
	datab => \vi[42]~input_o\,
	datad => VCC,
	cin => \core1|Add1~19\,
	combout => \core1|Add1~20_combout\,
	cout => \core1|Add1~21\);

-- Location: LCCOMB_X12_Y10_N2
\core1|RESULT~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|RESULT~14_combout\ = \core1|Add3~28_combout\ $ (\core1|Add2~26_combout\ $ (\core1|Add1~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \core1|Add3~28_combout\,
	datac => \core1|Add2~26_combout\,
	datad => \core1|Add1~20_combout\,
	combout => \core1|RESULT~14_combout\);

-- Location: IOIBUF_X41_Y14_N15
\vi[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vi(14),
	o => \vi[14]~input_o\);

-- Location: LCCOMB_X20_Y14_N28
\core1|Add4~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add4~28_combout\ = ((\core1|RESULT~14_combout\ $ (\vi[14]~input_o\ $ (!\core1|Add4~27\)))) # (GND)
-- \core1|Add4~29\ = CARRY((\core1|RESULT~14_combout\ & ((\vi[14]~input_o\) # (!\core1|Add4~27\))) # (!\core1|RESULT~14_combout\ & (\vi[14]~input_o\ & !\core1|Add4~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \core1|RESULT~14_combout\,
	datab => \vi[14]~input_o\,
	datad => VCC,
	cin => \core1|Add4~27\,
	combout => \core1|Add4~28_combout\,
	cout => \core1|Add4~29\);

-- Location: IOIBUF_X41_Y14_N1
\vi[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vi(15),
	o => \vi[15]~input_o\);

-- Location: IOIBUF_X14_Y0_N15
\vi[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vi(52),
	o => \vi[52]~input_o\);

-- Location: LCCOMB_X11_Y10_N30
\core1|Add3~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add3~30_combout\ = (\key[47]~input_o\ & ((\vi[52]~input_o\ & (\core1|Add3~29\ & VCC)) # (!\vi[52]~input_o\ & (!\core1|Add3~29\)))) # (!\key[47]~input_o\ & ((\vi[52]~input_o\ & (!\core1|Add3~29\)) # (!\vi[52]~input_o\ & ((\core1|Add3~29\) # 
-- (GND)))))
-- \core1|Add3~31\ = CARRY((\key[47]~input_o\ & (!\vi[52]~input_o\ & !\core1|Add3~29\)) # (!\key[47]~input_o\ & ((!\core1|Add3~29\) # (!\vi[52]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key[47]~input_o\,
	datab => \vi[52]~input_o\,
	datad => VCC,
	cin => \core1|Add3~29\,
	combout => \core1|Add3~30_combout\,
	cout => \core1|Add3~31\);

-- Location: LCCOMB_X12_Y10_N26
\core1|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add1~22_combout\ = (\key[15]~input_o\ & ((\vi[43]~input_o\ & (\core1|Add1~21\ & VCC)) # (!\vi[43]~input_o\ & (!\core1|Add1~21\)))) # (!\key[15]~input_o\ & ((\vi[43]~input_o\ & (!\core1|Add1~21\)) # (!\vi[43]~input_o\ & ((\core1|Add1~21\) # 
-- (GND)))))
-- \core1|Add1~23\ = CARRY((\key[15]~input_o\ & (!\vi[43]~input_o\ & !\core1|Add1~21\)) # (!\key[15]~input_o\ & ((!\core1|Add1~21\) # (!\vi[43]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key[15]~input_o\,
	datab => \vi[43]~input_o\,
	datad => VCC,
	cin => \core1|Add1~21\,
	combout => \core1|Add1~22_combout\,
	cout => \core1|Add1~23\);

-- Location: LCCOMB_X15_Y14_N0
\core1|RESULT~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|RESULT~15_combout\ = \core1|Add2~28_combout\ $ (\core1|Add3~30_combout\ $ (\core1|Add1~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \core1|Add2~28_combout\,
	datab => \core1|Add3~30_combout\,
	datac => \core1|Add1~22_combout\,
	combout => \core1|RESULT~15_combout\);

-- Location: LCCOMB_X20_Y14_N30
\core1|Add4~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add4~30_combout\ = (\vi[15]~input_o\ & ((\core1|RESULT~15_combout\ & (\core1|Add4~29\ & VCC)) # (!\core1|RESULT~15_combout\ & (!\core1|Add4~29\)))) # (!\vi[15]~input_o\ & ((\core1|RESULT~15_combout\ & (!\core1|Add4~29\)) # 
-- (!\core1|RESULT~15_combout\ & ((\core1|Add4~29\) # (GND)))))
-- \core1|Add4~31\ = CARRY((\vi[15]~input_o\ & (!\core1|RESULT~15_combout\ & !\core1|Add4~29\)) # (!\vi[15]~input_o\ & ((!\core1|Add4~29\) # (!\core1|RESULT~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vi[15]~input_o\,
	datab => \core1|RESULT~15_combout\,
	datad => VCC,
	cin => \core1|Add4~29\,
	combout => \core1|Add4~30_combout\,
	cout => \core1|Add4~31\);

-- Location: IOIBUF_X32_Y0_N8
\vi[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vi(16),
	o => \vi[16]~input_o\);

-- Location: IOIBUF_X0_Y10_N1
\vi[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vi(48),
	o => \vi[48]~input_o\);

-- Location: LCCOMB_X15_Y9_N0
\core1|Add2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add2~30_combout\ = (\vi[48]~input_o\ & (\core1|Add2~29\ & VCC)) # (!\vi[48]~input_o\ & (!\core1|Add2~29\))
-- \core1|Add2~31\ = CARRY((!\vi[48]~input_o\ & !\core1|Add2~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vi[48]~input_o\,
	datad => VCC,
	cin => \core1|Add2~29\,
	combout => \core1|Add2~30_combout\,
	cout => \core1|Add2~31\);

-- Location: IOIBUF_X9_Y0_N22
\vi[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vi(44),
	o => \vi[44]~input_o\);

-- Location: LCCOMB_X12_Y10_N28
\core1|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add1~24_combout\ = ((\key[16]~input_o\ $ (\vi[44]~input_o\ $ (!\core1|Add1~23\)))) # (GND)
-- \core1|Add1~25\ = CARRY((\key[16]~input_o\ & ((\vi[44]~input_o\) # (!\core1|Add1~23\))) # (!\key[16]~input_o\ & (\vi[44]~input_o\ & !\core1|Add1~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key[16]~input_o\,
	datab => \vi[44]~input_o\,
	datad => VCC,
	cin => \core1|Add1~23\,
	combout => \core1|Add1~24_combout\,
	cout => \core1|Add1~25\);

-- Location: LCCOMB_X12_Y13_N24
\core1|RESULT~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|RESULT~16_combout\ = \core1|Add3~32_combout\ $ (\core1|Add2~30_combout\ $ (\core1|Add1~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \core1|Add3~32_combout\,
	datab => \core1|Add2~30_combout\,
	datac => \core1|Add1~24_combout\,
	combout => \core1|RESULT~16_combout\);

-- Location: LCCOMB_X20_Y13_N0
\core1|Add4~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add4~32_combout\ = ((\vi[16]~input_o\ $ (\core1|RESULT~16_combout\ $ (!\core1|Add4~31\)))) # (GND)
-- \core1|Add4~33\ = CARRY((\vi[16]~input_o\ & ((\core1|RESULT~16_combout\) # (!\core1|Add4~31\))) # (!\vi[16]~input_o\ & (\core1|RESULT~16_combout\ & !\core1|Add4~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vi[16]~input_o\,
	datab => \core1|RESULT~16_combout\,
	datad => VCC,
	cin => \core1|Add4~31\,
	combout => \core1|Add4~32_combout\,
	cout => \core1|Add4~33\);

-- Location: IOIBUF_X0_Y13_N15
\vi[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vi(17),
	o => \vi[17]~input_o\);

-- Location: IOIBUF_X0_Y25_N1
\key[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(17),
	o => \key[17]~input_o\);

-- Location: LCCOMB_X12_Y10_N30
\core1|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add1~26_combout\ = (\vi[45]~input_o\ & ((\key[17]~input_o\ & (\core1|Add1~25\ & VCC)) # (!\key[17]~input_o\ & (!\core1|Add1~25\)))) # (!\vi[45]~input_o\ & ((\key[17]~input_o\ & (!\core1|Add1~25\)) # (!\key[17]~input_o\ & ((\core1|Add1~25\) # 
-- (GND)))))
-- \core1|Add1~27\ = CARRY((\vi[45]~input_o\ & (!\key[17]~input_o\ & !\core1|Add1~25\)) # (!\vi[45]~input_o\ & ((!\core1|Add1~25\) # (!\key[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vi[45]~input_o\,
	datab => \key[17]~input_o\,
	datad => VCC,
	cin => \core1|Add1~25\,
	combout => \core1|Add1~26_combout\,
	cout => \core1|Add1~27\);

-- Location: LCCOMB_X15_Y9_N2
\core1|Add2~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add2~32_combout\ = (\vi[49]~input_o\ & ((GND) # (!\core1|Add2~31\))) # (!\vi[49]~input_o\ & (\core1|Add2~31\ $ (GND)))
-- \core1|Add2~33\ = CARRY((\vi[49]~input_o\) # (!\core1|Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vi[49]~input_o\,
	datad => VCC,
	cin => \core1|Add2~31\,
	combout => \core1|Add2~32_combout\,
	cout => \core1|Add2~33\);

-- Location: LCCOMB_X16_Y13_N0
\core1|RESULT~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|RESULT~17_combout\ = \core1|Add3~34_combout\ $ (\core1|Add1~26_combout\ $ (\core1|Add2~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \core1|Add3~34_combout\,
	datac => \core1|Add1~26_combout\,
	datad => \core1|Add2~32_combout\,
	combout => \core1|RESULT~17_combout\);

-- Location: LCCOMB_X20_Y13_N2
\core1|Add4~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add4~34_combout\ = (\vi[17]~input_o\ & ((\core1|RESULT~17_combout\ & (\core1|Add4~33\ & VCC)) # (!\core1|RESULT~17_combout\ & (!\core1|Add4~33\)))) # (!\vi[17]~input_o\ & ((\core1|RESULT~17_combout\ & (!\core1|Add4~33\)) # 
-- (!\core1|RESULT~17_combout\ & ((\core1|Add4~33\) # (GND)))))
-- \core1|Add4~35\ = CARRY((\vi[17]~input_o\ & (!\core1|RESULT~17_combout\ & !\core1|Add4~33\)) # (!\vi[17]~input_o\ & ((!\core1|Add4~33\) # (!\core1|RESULT~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vi[17]~input_o\,
	datab => \core1|RESULT~17_combout\,
	datad => VCC,
	cin => \core1|Add4~33\,
	combout => \core1|Add4~34_combout\,
	cout => \core1|Add4~35\);

-- Location: LCCOMB_X12_Y9_N0
\core1|Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add1~28_combout\ = ((\key[18]~input_o\ $ (\vi[46]~input_o\ $ (!\core1|Add1~27\)))) # (GND)
-- \core1|Add1~29\ = CARRY((\key[18]~input_o\ & ((\vi[46]~input_o\) # (!\core1|Add1~27\))) # (!\key[18]~input_o\ & (\vi[46]~input_o\ & !\core1|Add1~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key[18]~input_o\,
	datab => \vi[46]~input_o\,
	datad => VCC,
	cin => \core1|Add1~27\,
	combout => \core1|Add1~28_combout\,
	cout => \core1|Add1~29\);

-- Location: IOIBUF_X0_Y8_N8
\vi[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vi(55),
	o => \vi[55]~input_o\);

-- Location: IOIBUF_X41_Y8_N22
\vi[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vi(54),
	o => \vi[54]~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\vi[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vi(53),
	o => \vi[53]~input_o\);

-- Location: LCCOMB_X11_Y9_N4
\core1|Add3~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add3~36_combout\ = ((\key[50]~input_o\ $ (\vi[55]~input_o\ $ (!\core1|Add3~35\)))) # (GND)
-- \core1|Add3~37\ = CARRY((\key[50]~input_o\ & ((\vi[55]~input_o\) # (!\core1|Add3~35\))) # (!\key[50]~input_o\ & (\vi[55]~input_o\ & !\core1|Add3~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key[50]~input_o\,
	datab => \vi[55]~input_o\,
	datad => VCC,
	cin => \core1|Add3~35\,
	combout => \core1|Add3~36_combout\,
	cout => \core1|Add3~37\);

-- Location: LCCOMB_X15_Y9_N4
\core1|Add2~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add2~34_combout\ = (\vi[50]~input_o\ & (\core1|Add2~33\ & VCC)) # (!\vi[50]~input_o\ & (!\core1|Add2~33\))
-- \core1|Add2~35\ = CARRY((!\vi[50]~input_o\ & !\core1|Add2~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vi[50]~input_o\,
	datad => VCC,
	cin => \core1|Add2~33\,
	combout => \core1|Add2~34_combout\,
	cout => \core1|Add2~35\);

-- Location: LCCOMB_X12_Y9_N28
\core1|RESULT~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|RESULT~18_combout\ = \core1|Add1~28_combout\ $ (\core1|Add3~36_combout\ $ (\core1|Add2~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \core1|Add1~28_combout\,
	datac => \core1|Add3~36_combout\,
	datad => \core1|Add2~34_combout\,
	combout => \core1|RESULT~18_combout\);

-- Location: IOIBUF_X0_Y13_N8
\vi[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vi(18),
	o => \vi[18]~input_o\);

-- Location: LCCOMB_X20_Y13_N4
\core1|Add4~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add4~36_combout\ = ((\core1|RESULT~18_combout\ $ (\vi[18]~input_o\ $ (!\core1|Add4~35\)))) # (GND)
-- \core1|Add4~37\ = CARRY((\core1|RESULT~18_combout\ & ((\vi[18]~input_o\) # (!\core1|Add4~35\))) # (!\core1|RESULT~18_combout\ & (\vi[18]~input_o\ & !\core1|Add4~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \core1|RESULT~18_combout\,
	datab => \vi[18]~input_o\,
	datad => VCC,
	cin => \core1|Add4~35\,
	combout => \core1|Add4~36_combout\,
	cout => \core1|Add4~37\);

-- Location: IOIBUF_X16_Y29_N8
\vi[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vi(19),
	o => \vi[19]~input_o\);

-- Location: IOIBUF_X0_Y11_N1
\vi[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vi(56),
	o => \vi[56]~input_o\);

-- Location: LCCOMB_X11_Y9_N6
\core1|Add3~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add3~38_combout\ = (\key[51]~input_o\ & ((\vi[56]~input_o\ & (\core1|Add3~37\ & VCC)) # (!\vi[56]~input_o\ & (!\core1|Add3~37\)))) # (!\key[51]~input_o\ & ((\vi[56]~input_o\ & (!\core1|Add3~37\)) # (!\vi[56]~input_o\ & ((\core1|Add3~37\) # 
-- (GND)))))
-- \core1|Add3~39\ = CARRY((\key[51]~input_o\ & (!\vi[56]~input_o\ & !\core1|Add3~37\)) # (!\key[51]~input_o\ & ((!\core1|Add3~37\) # (!\vi[56]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key[51]~input_o\,
	datab => \vi[56]~input_o\,
	datad => VCC,
	cin => \core1|Add3~37\,
	combout => \core1|Add3~38_combout\,
	cout => \core1|Add3~39\);

-- Location: IOIBUF_X11_Y0_N8
\vi[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vi(51),
	o => \vi[51]~input_o\);

-- Location: LCCOMB_X15_Y9_N6
\core1|Add2~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add2~36_combout\ = (\vi[51]~input_o\ & (\core1|Add2~35\ $ (GND))) # (!\vi[51]~input_o\ & (!\core1|Add2~35\ & VCC))
-- \core1|Add2~37\ = CARRY((\vi[51]~input_o\ & !\core1|Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vi[51]~input_o\,
	datad => VCC,
	cin => \core1|Add2~35\,
	combout => \core1|Add2~36_combout\,
	cout => \core1|Add2~37\);

-- Location: LCCOMB_X15_Y12_N0
\core1|RESULT~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|RESULT~19_combout\ = \core1|Add1~30_combout\ $ (\core1|Add3~38_combout\ $ (\core1|Add2~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \core1|Add1~30_combout\,
	datac => \core1|Add3~38_combout\,
	datad => \core1|Add2~36_combout\,
	combout => \core1|RESULT~19_combout\);

-- Location: LCCOMB_X20_Y13_N6
\core1|Add4~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add4~38_combout\ = (\vi[19]~input_o\ & ((\core1|RESULT~19_combout\ & (\core1|Add4~37\ & VCC)) # (!\core1|RESULT~19_combout\ & (!\core1|Add4~37\)))) # (!\vi[19]~input_o\ & ((\core1|RESULT~19_combout\ & (!\core1|Add4~37\)) # 
-- (!\core1|RESULT~19_combout\ & ((\core1|Add4~37\) # (GND)))))
-- \core1|Add4~39\ = CARRY((\vi[19]~input_o\ & (!\core1|RESULT~19_combout\ & !\core1|Add4~37\)) # (!\vi[19]~input_o\ & ((!\core1|Add4~37\) # (!\core1|RESULT~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vi[19]~input_o\,
	datab => \core1|RESULT~19_combout\,
	datad => VCC,
	cin => \core1|Add4~37\,
	combout => \core1|Add4~38_combout\,
	cout => \core1|Add4~39\);

-- Location: IOIBUF_X21_Y0_N15
\vi[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vi(20),
	o => \vi[20]~input_o\);

-- Location: LCCOMB_X12_Y9_N4
\core1|Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add1~32_combout\ = ((\key[20]~input_o\ $ (\vi[48]~input_o\ $ (!\core1|Add1~31\)))) # (GND)
-- \core1|Add1~33\ = CARRY((\key[20]~input_o\ & ((\vi[48]~input_o\) # (!\core1|Add1~31\))) # (!\key[20]~input_o\ & (\vi[48]~input_o\ & !\core1|Add1~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key[20]~input_o\,
	datab => \vi[48]~input_o\,
	datad => VCC,
	cin => \core1|Add1~31\,
	combout => \core1|Add1~32_combout\,
	cout => \core1|Add1~33\);

-- Location: IOIBUF_X21_Y0_N22
\vi[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vi(57),
	o => \vi[57]~input_o\);

-- Location: LCCOMB_X11_Y9_N8
\core1|Add3~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add3~40_combout\ = ((\key[52]~input_o\ $ (\vi[57]~input_o\ $ (!\core1|Add3~39\)))) # (GND)
-- \core1|Add3~41\ = CARRY((\key[52]~input_o\ & ((\vi[57]~input_o\) # (!\core1|Add3~39\))) # (!\key[52]~input_o\ & (\vi[57]~input_o\ & !\core1|Add3~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key[52]~input_o\,
	datab => \vi[57]~input_o\,
	datad => VCC,
	cin => \core1|Add3~39\,
	combout => \core1|Add3~40_combout\,
	cout => \core1|Add3~41\);

-- Location: LCCOMB_X15_Y9_N8
\core1|Add2~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add2~38_combout\ = (\vi[52]~input_o\ & (\core1|Add2~37\ & VCC)) # (!\vi[52]~input_o\ & (!\core1|Add2~37\))
-- \core1|Add2~39\ = CARRY((!\vi[52]~input_o\ & !\core1|Add2~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vi[52]~input_o\,
	datad => VCC,
	cin => \core1|Add2~37\,
	combout => \core1|Add2~38_combout\,
	cout => \core1|Add2~39\);

-- Location: LCCOMB_X12_Y8_N0
\core1|RESULT~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|RESULT~20_combout\ = \core1|Add1~32_combout\ $ (\core1|Add3~40_combout\ $ (\core1|Add2~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \core1|Add1~32_combout\,
	datac => \core1|Add3~40_combout\,
	datad => \core1|Add2~38_combout\,
	combout => \core1|RESULT~20_combout\);

-- Location: LCCOMB_X20_Y13_N8
\core1|Add4~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add4~40_combout\ = ((\vi[20]~input_o\ $ (\core1|RESULT~20_combout\ $ (!\core1|Add4~39\)))) # (GND)
-- \core1|Add4~41\ = CARRY((\vi[20]~input_o\ & ((\core1|RESULT~20_combout\) # (!\core1|Add4~39\))) # (!\vi[20]~input_o\ & (\core1|RESULT~20_combout\ & !\core1|Add4~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vi[20]~input_o\,
	datab => \core1|RESULT~20_combout\,
	datad => VCC,
	cin => \core1|Add4~39\,
	combout => \core1|Add4~40_combout\,
	cout => \core1|Add4~41\);

-- Location: LCCOMB_X12_Y9_N6
\core1|Add1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add1~34_combout\ = (\key[21]~input_o\ & ((\vi[49]~input_o\ & (\core1|Add1~33\ & VCC)) # (!\vi[49]~input_o\ & (!\core1|Add1~33\)))) # (!\key[21]~input_o\ & ((\vi[49]~input_o\ & (!\core1|Add1~33\)) # (!\vi[49]~input_o\ & ((\core1|Add1~33\) # 
-- (GND)))))
-- \core1|Add1~35\ = CARRY((\key[21]~input_o\ & (!\vi[49]~input_o\ & !\core1|Add1~33\)) # (!\key[21]~input_o\ & ((!\core1|Add1~33\) # (!\vi[49]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key[21]~input_o\,
	datab => \vi[49]~input_o\,
	datad => VCC,
	cin => \core1|Add1~33\,
	combout => \core1|Add1~34_combout\,
	cout => \core1|Add1~35\);

-- Location: IOIBUF_X9_Y0_N1
\key[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(53),
	o => \key[53]~input_o\);

-- Location: LCCOMB_X11_Y9_N10
\core1|Add3~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add3~42_combout\ = (\vi[58]~input_o\ & ((\key[53]~input_o\ & (\core1|Add3~41\ & VCC)) # (!\key[53]~input_o\ & (!\core1|Add3~41\)))) # (!\vi[58]~input_o\ & ((\key[53]~input_o\ & (!\core1|Add3~41\)) # (!\key[53]~input_o\ & ((\core1|Add3~41\) # 
-- (GND)))))
-- \core1|Add3~43\ = CARRY((\vi[58]~input_o\ & (!\key[53]~input_o\ & !\core1|Add3~41\)) # (!\vi[58]~input_o\ & ((!\core1|Add3~41\) # (!\key[53]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vi[58]~input_o\,
	datab => \key[53]~input_o\,
	datad => VCC,
	cin => \core1|Add3~41\,
	combout => \core1|Add3~42_combout\,
	cout => \core1|Add3~43\);

-- Location: LCCOMB_X15_Y9_N10
\core1|Add2~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add2~40_combout\ = (\vi[53]~input_o\ & ((GND) # (!\core1|Add2~39\))) # (!\vi[53]~input_o\ & (\core1|Add2~39\ $ (GND)))
-- \core1|Add2~41\ = CARRY((\vi[53]~input_o\) # (!\core1|Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vi[53]~input_o\,
	datad => VCC,
	cin => \core1|Add2~39\,
	combout => \core1|Add2~40_combout\,
	cout => \core1|Add2~41\);

-- Location: LCCOMB_X12_Y11_N24
\core1|RESULT~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|RESULT~21_combout\ = \core1|Add1~34_combout\ $ (\core1|Add3~42_combout\ $ (\core1|Add2~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \core1|Add1~34_combout\,
	datac => \core1|Add3~42_combout\,
	datad => \core1|Add2~40_combout\,
	combout => \core1|RESULT~21_combout\);

-- Location: IOIBUF_X14_Y29_N29
\vi[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vi(21),
	o => \vi[21]~input_o\);

-- Location: LCCOMB_X20_Y13_N10
\core1|Add4~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add4~42_combout\ = (\core1|RESULT~21_combout\ & ((\vi[21]~input_o\ & (\core1|Add4~41\ & VCC)) # (!\vi[21]~input_o\ & (!\core1|Add4~41\)))) # (!\core1|RESULT~21_combout\ & ((\vi[21]~input_o\ & (!\core1|Add4~41\)) # (!\vi[21]~input_o\ & 
-- ((\core1|Add4~41\) # (GND)))))
-- \core1|Add4~43\ = CARRY((\core1|RESULT~21_combout\ & (!\vi[21]~input_o\ & !\core1|Add4~41\)) # (!\core1|RESULT~21_combout\ & ((!\core1|Add4~41\) # (!\vi[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \core1|RESULT~21_combout\,
	datab => \vi[21]~input_o\,
	datad => VCC,
	cin => \core1|Add4~41\,
	combout => \core1|Add4~42_combout\,
	cout => \core1|Add4~43\);

-- Location: IOIBUF_X28_Y0_N8
\vi[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vi(22),
	o => \vi[22]~input_o\);

-- Location: IOIBUF_X16_Y0_N29
\vi[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vi(59),
	o => \vi[59]~input_o\);

-- Location: LCCOMB_X11_Y9_N12
\core1|Add3~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add3~44_combout\ = ((\key[54]~input_o\ $ (\vi[59]~input_o\ $ (!\core1|Add3~43\)))) # (GND)
-- \core1|Add3~45\ = CARRY((\key[54]~input_o\ & ((\vi[59]~input_o\) # (!\core1|Add3~43\))) # (!\key[54]~input_o\ & (\vi[59]~input_o\ & !\core1|Add3~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key[54]~input_o\,
	datab => \vi[59]~input_o\,
	datad => VCC,
	cin => \core1|Add3~43\,
	combout => \core1|Add3~44_combout\,
	cout => \core1|Add3~45\);

-- Location: LCCOMB_X15_Y9_N12
\core1|Add2~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add2~42_combout\ = (\vi[54]~input_o\ & (!\core1|Add2~41\)) # (!\vi[54]~input_o\ & ((\core1|Add2~41\) # (GND)))
-- \core1|Add2~43\ = CARRY((!\core1|Add2~41\) # (!\vi[54]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vi[54]~input_o\,
	datad => VCC,
	cin => \core1|Add2~41\,
	combout => \core1|Add2~42_combout\,
	cout => \core1|Add2~43\);

-- Location: LCCOMB_X10_Y9_N8
\core1|RESULT~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|RESULT~22_combout\ = \core1|Add1~36_combout\ $ (\core1|Add3~44_combout\ $ (\core1|Add2~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \core1|Add1~36_combout\,
	datac => \core1|Add3~44_combout\,
	datad => \core1|Add2~42_combout\,
	combout => \core1|RESULT~22_combout\);

-- Location: LCCOMB_X20_Y13_N12
\core1|Add4~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add4~44_combout\ = ((\vi[22]~input_o\ $ (\core1|RESULT~22_combout\ $ (!\core1|Add4~43\)))) # (GND)
-- \core1|Add4~45\ = CARRY((\vi[22]~input_o\ & ((\core1|RESULT~22_combout\) # (!\core1|Add4~43\))) # (!\vi[22]~input_o\ & (\core1|RESULT~22_combout\ & !\core1|Add4~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vi[22]~input_o\,
	datab => \core1|RESULT~22_combout\,
	datad => VCC,
	cin => \core1|Add4~43\,
	combout => \core1|Add4~44_combout\,
	cout => \core1|Add4~45\);

-- Location: IOIBUF_X21_Y0_N29
\vi[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vi(23),
	o => \vi[23]~input_o\);

-- Location: LCCOMB_X15_Y9_N14
\core1|Add2~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add2~44_combout\ = (\vi[55]~input_o\ & (\core1|Add2~43\ $ (GND))) # (!\vi[55]~input_o\ & (!\core1|Add2~43\ & VCC))
-- \core1|Add2~45\ = CARRY((\vi[55]~input_o\ & !\core1|Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vi[55]~input_o\,
	datad => VCC,
	cin => \core1|Add2~43\,
	combout => \core1|Add2~44_combout\,
	cout => \core1|Add2~45\);

-- Location: IOIBUF_X0_Y8_N22
\vi[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vi(50),
	o => \vi[50]~input_o\);

-- Location: LCCOMB_X12_Y9_N10
\core1|Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add1~38_combout\ = (\key[23]~input_o\ & ((\vi[51]~input_o\ & (\core1|Add1~37\ & VCC)) # (!\vi[51]~input_o\ & (!\core1|Add1~37\)))) # (!\key[23]~input_o\ & ((\vi[51]~input_o\ & (!\core1|Add1~37\)) # (!\vi[51]~input_o\ & ((\core1|Add1~37\) # 
-- (GND)))))
-- \core1|Add1~39\ = CARRY((\key[23]~input_o\ & (!\vi[51]~input_o\ & !\core1|Add1~37\)) # (!\key[23]~input_o\ & ((!\core1|Add1~37\) # (!\vi[51]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key[23]~input_o\,
	datab => \vi[51]~input_o\,
	datad => VCC,
	cin => \core1|Add1~37\,
	combout => \core1|Add1~38_combout\,
	cout => \core1|Add1~39\);

-- Location: LCCOMB_X15_Y11_N24
\core1|RESULT~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|RESULT~23_combout\ = \core1|Add3~46_combout\ $ (\core1|Add2~44_combout\ $ (\core1|Add1~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \core1|Add3~46_combout\,
	datab => \core1|Add2~44_combout\,
	datac => \core1|Add1~38_combout\,
	combout => \core1|RESULT~23_combout\);

-- Location: LCCOMB_X20_Y13_N14
\core1|Add4~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add4~46_combout\ = (\vi[23]~input_o\ & ((\core1|RESULT~23_combout\ & (\core1|Add4~45\ & VCC)) # (!\core1|RESULT~23_combout\ & (!\core1|Add4~45\)))) # (!\vi[23]~input_o\ & ((\core1|RESULT~23_combout\ & (!\core1|Add4~45\)) # 
-- (!\core1|RESULT~23_combout\ & ((\core1|Add4~45\) # (GND)))))
-- \core1|Add4~47\ = CARRY((\vi[23]~input_o\ & (!\core1|RESULT~23_combout\ & !\core1|Add4~45\)) # (!\vi[23]~input_o\ & ((!\core1|Add4~45\) # (!\core1|RESULT~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vi[23]~input_o\,
	datab => \core1|RESULT~23_combout\,
	datad => VCC,
	cin => \core1|Add4~45\,
	combout => \core1|Add4~46_combout\,
	cout => \core1|Add4~47\);

-- Location: IOIBUF_X11_Y29_N29
\vi[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vi(24),
	o => \vi[24]~input_o\);

-- Location: IOIBUF_X0_Y9_N1
\key[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(24),
	o => \key[24]~input_o\);

-- Location: LCCOMB_X12_Y9_N12
\core1|Add1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add1~40_combout\ = ((\vi[52]~input_o\ $ (\key[24]~input_o\ $ (!\core1|Add1~39\)))) # (GND)
-- \core1|Add1~41\ = CARRY((\vi[52]~input_o\ & ((\key[24]~input_o\) # (!\core1|Add1~39\))) # (!\vi[52]~input_o\ & (\key[24]~input_o\ & !\core1|Add1~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vi[52]~input_o\,
	datab => \key[24]~input_o\,
	datad => VCC,
	cin => \core1|Add1~39\,
	combout => \core1|Add1~40_combout\,
	cout => \core1|Add1~41\);

-- Location: IOIBUF_X0_Y9_N22
\key[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(56),
	o => \key[56]~input_o\);

-- Location: IOIBUF_X0_Y7_N22
\vi[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vi(60),
	o => \vi[60]~input_o\);

-- Location: LCCOMB_X11_Y9_N16
\core1|Add3~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add3~48_combout\ = ((\vi[61]~input_o\ $ (\key[56]~input_o\ $ (!\core1|Add3~47\)))) # (GND)
-- \core1|Add3~49\ = CARRY((\vi[61]~input_o\ & ((\key[56]~input_o\) # (!\core1|Add3~47\))) # (!\vi[61]~input_o\ & (\key[56]~input_o\ & !\core1|Add3~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vi[61]~input_o\,
	datab => \key[56]~input_o\,
	datad => VCC,
	cin => \core1|Add3~47\,
	combout => \core1|Add3~48_combout\,
	cout => \core1|Add3~49\);

-- Location: LCCOMB_X15_Y9_N16
\core1|Add2~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add2~46_combout\ = (\vi[56]~input_o\ & (!\core1|Add2~45\)) # (!\vi[56]~input_o\ & ((\core1|Add2~45\) # (GND)))
-- \core1|Add2~47\ = CARRY((!\core1|Add2~45\) # (!\vi[56]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vi[56]~input_o\,
	datad => VCC,
	cin => \core1|Add2~45\,
	combout => \core1|Add2~46_combout\,
	cout => \core1|Add2~47\);

-- Location: LCCOMB_X17_Y9_N0
\core1|RESULT~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|RESULT~24_combout\ = \core1|Add1~40_combout\ $ (\core1|Add3~48_combout\ $ (\core1|Add2~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \core1|Add1~40_combout\,
	datac => \core1|Add3~48_combout\,
	datad => \core1|Add2~46_combout\,
	combout => \core1|RESULT~24_combout\);

-- Location: LCCOMB_X20_Y13_N16
\core1|Add4~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add4~48_combout\ = ((\vi[24]~input_o\ $ (\core1|RESULT~24_combout\ $ (!\core1|Add4~47\)))) # (GND)
-- \core1|Add4~49\ = CARRY((\vi[24]~input_o\ & ((\core1|RESULT~24_combout\) # (!\core1|Add4~47\))) # (!\vi[24]~input_o\ & (\core1|RESULT~24_combout\ & !\core1|Add4~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vi[24]~input_o\,
	datab => \core1|RESULT~24_combout\,
	datad => VCC,
	cin => \core1|Add4~47\,
	combout => \core1|Add4~48_combout\,
	cout => \core1|Add4~49\);

-- Location: IOIBUF_X7_Y0_N1
\key[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(57),
	o => \key[57]~input_o\);

-- Location: LCCOMB_X11_Y9_N18
\core1|Add3~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add3~50_combout\ = (\vi[62]~input_o\ & ((\key[57]~input_o\ & (\core1|Add3~49\ & VCC)) # (!\key[57]~input_o\ & (!\core1|Add3~49\)))) # (!\vi[62]~input_o\ & ((\key[57]~input_o\ & (!\core1|Add3~49\)) # (!\key[57]~input_o\ & ((\core1|Add3~49\) # 
-- (GND)))))
-- \core1|Add3~51\ = CARRY((\vi[62]~input_o\ & (!\key[57]~input_o\ & !\core1|Add3~49\)) # (!\vi[62]~input_o\ & ((!\core1|Add3~49\) # (!\key[57]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vi[62]~input_o\,
	datab => \key[57]~input_o\,
	datad => VCC,
	cin => \core1|Add3~49\,
	combout => \core1|Add3~50_combout\,
	cout => \core1|Add3~51\);

-- Location: LCCOMB_X15_Y9_N18
\core1|Add2~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add2~48_combout\ = (\vi[57]~input_o\ & ((GND) # (!\core1|Add2~47\))) # (!\vi[57]~input_o\ & (\core1|Add2~47\ $ (GND)))
-- \core1|Add2~49\ = CARRY((\vi[57]~input_o\) # (!\core1|Add2~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vi[57]~input_o\,
	datad => VCC,
	cin => \core1|Add2~47\,
	combout => \core1|Add2~48_combout\,
	cout => \core1|Add2~49\);

-- Location: LCCOMB_X19_Y9_N0
\core1|RESULT~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|RESULT~25_combout\ = \core1|Add1~42_combout\ $ (\core1|Add3~50_combout\ $ (\core1|Add2~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \core1|Add1~42_combout\,
	datab => \core1|Add3~50_combout\,
	datad => \core1|Add2~48_combout\,
	combout => \core1|RESULT~25_combout\);

-- Location: IOIBUF_X35_Y0_N29
\vi[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vi(25),
	o => \vi[25]~input_o\);

-- Location: LCCOMB_X20_Y13_N18
\core1|Add4~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add4~50_combout\ = (\core1|RESULT~25_combout\ & ((\vi[25]~input_o\ & (\core1|Add4~49\ & VCC)) # (!\vi[25]~input_o\ & (!\core1|Add4~49\)))) # (!\core1|RESULT~25_combout\ & ((\vi[25]~input_o\ & (!\core1|Add4~49\)) # (!\vi[25]~input_o\ & 
-- ((\core1|Add4~49\) # (GND)))))
-- \core1|Add4~51\ = CARRY((\core1|RESULT~25_combout\ & (!\vi[25]~input_o\ & !\core1|Add4~49\)) # (!\core1|RESULT~25_combout\ & ((!\core1|Add4~49\) # (!\vi[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \core1|RESULT~25_combout\,
	datab => \vi[25]~input_o\,
	datad => VCC,
	cin => \core1|Add4~49\,
	combout => \core1|Add4~50_combout\,
	cout => \core1|Add4~51\);

-- Location: IOIBUF_X9_Y0_N8
\key[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(26),
	o => \key[26]~input_o\);

-- Location: IOIBUF_X11_Y0_N29
\key[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(25),
	o => \key[25]~input_o\);

-- Location: LCCOMB_X12_Y9_N16
\core1|Add1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add1~44_combout\ = ((\vi[54]~input_o\ $ (\key[26]~input_o\ $ (!\core1|Add1~43\)))) # (GND)
-- \core1|Add1~45\ = CARRY((\vi[54]~input_o\ & ((\key[26]~input_o\) # (!\core1|Add1~43\))) # (!\vi[54]~input_o\ & (\key[26]~input_o\ & !\core1|Add1~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vi[54]~input_o\,
	datab => \key[26]~input_o\,
	datad => VCC,
	cin => \core1|Add1~43\,
	combout => \core1|Add1~44_combout\,
	cout => \core1|Add1~45\);

-- Location: IOIBUF_X19_Y0_N22
\vi[58]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vi(58),
	o => \vi[58]~input_o\);

-- Location: LCCOMB_X15_Y9_N20
\core1|Add2~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add2~50_combout\ = (\vi[58]~input_o\ & (\core1|Add2~49\ & VCC)) # (!\vi[58]~input_o\ & (!\core1|Add2~49\))
-- \core1|Add2~51\ = CARRY((!\vi[58]~input_o\ & !\core1|Add2~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vi[58]~input_o\,
	datad => VCC,
	cin => \core1|Add2~49\,
	combout => \core1|Add2~50_combout\,
	cout => \core1|Add2~51\);

-- Location: LCCOMB_X20_Y9_N0
\core1|RESULT~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|RESULT~26_combout\ = \core1|Add3~52_combout\ $ (\core1|Add1~44_combout\ $ (\core1|Add2~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \core1|Add3~52_combout\,
	datab => \core1|Add1~44_combout\,
	datad => \core1|Add2~50_combout\,
	combout => \core1|RESULT~26_combout\);

-- Location: IOIBUF_X41_Y13_N8
\vi[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vi(26),
	o => \vi[26]~input_o\);

-- Location: LCCOMB_X20_Y13_N20
\core1|Add4~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add4~52_combout\ = ((\core1|RESULT~26_combout\ $ (\vi[26]~input_o\ $ (!\core1|Add4~51\)))) # (GND)
-- \core1|Add4~53\ = CARRY((\core1|RESULT~26_combout\ & ((\vi[26]~input_o\) # (!\core1|Add4~51\))) # (!\core1|RESULT~26_combout\ & (\vi[26]~input_o\ & !\core1|Add4~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \core1|RESULT~26_combout\,
	datab => \vi[26]~input_o\,
	datad => VCC,
	cin => \core1|Add4~51\,
	combout => \core1|Add4~52_combout\,
	cout => \core1|Add4~53\);

-- Location: IOIBUF_X0_Y5_N1
\key[58]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(58),
	o => \key[58]~input_o\);

-- Location: LCCOMB_X11_Y9_N22
\core1|Add3~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add3~54_combout\ = (\key[59]~input_o\ & (!\core1|Add3~53\)) # (!\key[59]~input_o\ & ((\core1|Add3~53\) # (GND)))
-- \core1|Add3~55\ = CARRY((!\core1|Add3~53\) # (!\key[59]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key[59]~input_o\,
	datad => VCC,
	cin => \core1|Add3~53\,
	combout => \core1|Add3~54_combout\,
	cout => \core1|Add3~55\);

-- Location: LCCOMB_X15_Y9_N22
\core1|Add2~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add2~52_combout\ = (\vi[59]~input_o\ & ((GND) # (!\core1|Add2~51\))) # (!\vi[59]~input_o\ & (\core1|Add2~51\ $ (GND)))
-- \core1|Add2~53\ = CARRY((\vi[59]~input_o\) # (!\core1|Add2~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vi[59]~input_o\,
	datad => VCC,
	cin => \core1|Add2~51\,
	combout => \core1|Add2~52_combout\,
	cout => \core1|Add2~53\);

-- Location: LCCOMB_X16_Y9_N8
\core1|RESULT~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|RESULT~27_combout\ = \core1|Add1~46_combout\ $ (\core1|Add3~54_combout\ $ (\core1|Add2~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \core1|Add1~46_combout\,
	datab => \core1|Add3~54_combout\,
	datad => \core1|Add2~52_combout\,
	combout => \core1|RESULT~27_combout\);

-- Location: IOIBUF_X41_Y13_N15
\vi[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vi(27),
	o => \vi[27]~input_o\);

-- Location: LCCOMB_X20_Y13_N22
\core1|Add4~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add4~54_combout\ = (\core1|RESULT~27_combout\ & ((\vi[27]~input_o\ & (\core1|Add4~53\ & VCC)) # (!\vi[27]~input_o\ & (!\core1|Add4~53\)))) # (!\core1|RESULT~27_combout\ & ((\vi[27]~input_o\ & (!\core1|Add4~53\)) # (!\vi[27]~input_o\ & 
-- ((\core1|Add4~53\) # (GND)))))
-- \core1|Add4~55\ = CARRY((\core1|RESULT~27_combout\ & (!\vi[27]~input_o\ & !\core1|Add4~53\)) # (!\core1|RESULT~27_combout\ & ((!\core1|Add4~53\) # (!\vi[27]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \core1|RESULT~27_combout\,
	datab => \vi[27]~input_o\,
	datad => VCC,
	cin => \core1|Add4~53\,
	combout => \core1|Add4~54_combout\,
	cout => \core1|Add4~55\);

-- Location: IOIBUF_X0_Y21_N8
\vi[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vi(28),
	o => \vi[28]~input_o\);

-- Location: IOIBUF_X0_Y4_N22
\key[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(60),
	o => \key[60]~input_o\);

-- Location: LCCOMB_X11_Y9_N24
\core1|Add3~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add3~56_combout\ = (\key[60]~input_o\ & (\core1|Add3~55\ $ (GND))) # (!\key[60]~input_o\ & (!\core1|Add3~55\ & VCC))
-- \core1|Add3~57\ = CARRY((\key[60]~input_o\ & !\core1|Add3~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key[60]~input_o\,
	datad => VCC,
	cin => \core1|Add3~55\,
	combout => \core1|Add3~56_combout\,
	cout => \core1|Add3~57\);

-- Location: LCCOMB_X15_Y9_N24
\core1|Add2~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add2~54_combout\ = (\vi[60]~input_o\ & (\core1|Add2~53\ & VCC)) # (!\vi[60]~input_o\ & (!\core1|Add2~53\))
-- \core1|Add2~55\ = CARRY((!\vi[60]~input_o\ & !\core1|Add2~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vi[60]~input_o\,
	datad => VCC,
	cin => \core1|Add2~53\,
	combout => \core1|Add2~54_combout\,
	cout => \core1|Add2~55\);

-- Location: LCCOMB_X14_Y13_N24
\core1|RESULT~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|RESULT~28_combout\ = \core1|Add1~48_combout\ $ (\core1|Add3~56_combout\ $ (\core1|Add2~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \core1|Add1~48_combout\,
	datab => \core1|Add3~56_combout\,
	datad => \core1|Add2~54_combout\,
	combout => \core1|RESULT~28_combout\);

-- Location: LCCOMB_X20_Y13_N24
\core1|Add4~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add4~56_combout\ = ((\vi[28]~input_o\ $ (\core1|RESULT~28_combout\ $ (!\core1|Add4~55\)))) # (GND)
-- \core1|Add4~57\ = CARRY((\vi[28]~input_o\ & ((\core1|RESULT~28_combout\) # (!\core1|Add4~55\))) # (!\vi[28]~input_o\ & (\core1|RESULT~28_combout\ & !\core1|Add4~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vi[28]~input_o\,
	datab => \core1|RESULT~28_combout\,
	datad => VCC,
	cin => \core1|Add4~55\,
	combout => \core1|Add4~56_combout\,
	cout => \core1|Add4~57\);

-- Location: IOIBUF_X0_Y9_N15
\key[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(28),
	o => \key[28]~input_o\);

-- Location: IOIBUF_X0_Y8_N15
\key[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(27),
	o => \key[27]~input_o\);

-- Location: LCCOMB_X12_Y9_N22
\core1|Add1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add1~50_combout\ = (\key[29]~input_o\ & ((\vi[57]~input_o\ & (\core1|Add1~49\ & VCC)) # (!\vi[57]~input_o\ & (!\core1|Add1~49\)))) # (!\key[29]~input_o\ & ((\vi[57]~input_o\ & (!\core1|Add1~49\)) # (!\vi[57]~input_o\ & ((\core1|Add1~49\) # 
-- (GND)))))
-- \core1|Add1~51\ = CARRY((\key[29]~input_o\ & (!\vi[57]~input_o\ & !\core1|Add1~49\)) # (!\key[29]~input_o\ & ((!\core1|Add1~49\) # (!\vi[57]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key[29]~input_o\,
	datab => \vi[57]~input_o\,
	datad => VCC,
	cin => \core1|Add1~49\,
	combout => \core1|Add1~50_combout\,
	cout => \core1|Add1~51\);

-- Location: LCCOMB_X11_Y9_N26
\core1|Add3~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add3~58_combout\ = (\key[61]~input_o\ & (!\core1|Add3~57\)) # (!\key[61]~input_o\ & ((\core1|Add3~57\) # (GND)))
-- \core1|Add3~59\ = CARRY((!\core1|Add3~57\) # (!\key[61]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key[61]~input_o\,
	datad => VCC,
	cin => \core1|Add3~57\,
	combout => \core1|Add3~58_combout\,
	cout => \core1|Add3~59\);

-- Location: IOIBUF_X32_Y0_N1
\vi[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vi(61),
	o => \vi[61]~input_o\);

-- Location: LCCOMB_X15_Y9_N26
\core1|Add2~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add2~56_combout\ = (\vi[61]~input_o\ & (\core1|Add2~55\ $ (GND))) # (!\vi[61]~input_o\ & (!\core1|Add2~55\ & VCC))
-- \core1|Add2~57\ = CARRY((\vi[61]~input_o\ & !\core1|Add2~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vi[61]~input_o\,
	datad => VCC,
	cin => \core1|Add2~55\,
	combout => \core1|Add2~56_combout\,
	cout => \core1|Add2~57\);

-- Location: LCCOMB_X14_Y9_N24
\core1|RESULT~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|RESULT~29_combout\ = \core1|Add1~50_combout\ $ (\core1|Add3~58_combout\ $ (\core1|Add2~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \core1|Add1~50_combout\,
	datac => \core1|Add3~58_combout\,
	datad => \core1|Add2~56_combout\,
	combout => \core1|RESULT~29_combout\);

-- Location: IOIBUF_X41_Y9_N15
\vi[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vi(29),
	o => \vi[29]~input_o\);

-- Location: LCCOMB_X20_Y13_N26
\core1|Add4~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add4~58_combout\ = (\core1|RESULT~29_combout\ & ((\vi[29]~input_o\ & (\core1|Add4~57\ & VCC)) # (!\vi[29]~input_o\ & (!\core1|Add4~57\)))) # (!\core1|RESULT~29_combout\ & ((\vi[29]~input_o\ & (!\core1|Add4~57\)) # (!\vi[29]~input_o\ & 
-- ((\core1|Add4~57\) # (GND)))))
-- \core1|Add4~59\ = CARRY((\core1|RESULT~29_combout\ & (!\vi[29]~input_o\ & !\core1|Add4~57\)) # (!\core1|RESULT~29_combout\ & ((!\core1|Add4~57\) # (!\vi[29]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \core1|RESULT~29_combout\,
	datab => \vi[29]~input_o\,
	datad => VCC,
	cin => \core1|Add4~57\,
	combout => \core1|Add4~58_combout\,
	cout => \core1|Add4~59\);

-- Location: IOIBUF_X41_Y5_N1
\vi[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vi(30),
	o => \vi[30]~input_o\);

-- Location: IOIBUF_X0_Y23_N8
\key[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(62),
	o => \key[62]~input_o\);

-- Location: LCCOMB_X15_Y9_N28
\core1|Add2~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add2~58_combout\ = (\vi[62]~input_o\ & (!\core1|Add2~57\)) # (!\vi[62]~input_o\ & ((\core1|Add2~57\) # (GND)))
-- \core1|Add2~59\ = CARRY((!\core1|Add2~57\) # (!\vi[62]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vi[62]~input_o\,
	datad => VCC,
	cin => \core1|Add2~57\,
	combout => \core1|Add2~58_combout\,
	cout => \core1|Add2~59\);

-- Location: LCCOMB_X12_Y9_N24
\core1|Add1~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add1~52_combout\ = ((\key[30]~input_o\ $ (\vi[58]~input_o\ $ (!\core1|Add1~51\)))) # (GND)
-- \core1|Add1~53\ = CARRY((\key[30]~input_o\ & ((\vi[58]~input_o\) # (!\core1|Add1~51\))) # (!\key[30]~input_o\ & (\vi[58]~input_o\ & !\core1|Add1~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key[30]~input_o\,
	datab => \vi[58]~input_o\,
	datad => VCC,
	cin => \core1|Add1~51\,
	combout => \core1|Add1~52_combout\,
	cout => \core1|Add1~53\);

-- Location: LCCOMB_X15_Y13_N24
\core1|RESULT~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|RESULT~30_combout\ = \core1|Add3~60_combout\ $ (\core1|Add2~58_combout\ $ (\core1|Add1~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \core1|Add3~60_combout\,
	datac => \core1|Add2~58_combout\,
	datad => \core1|Add1~52_combout\,
	combout => \core1|RESULT~30_combout\);

-- Location: LCCOMB_X20_Y13_N28
\core1|Add4~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add4~60_combout\ = ((\vi[30]~input_o\ $ (\core1|RESULT~30_combout\ $ (!\core1|Add4~59\)))) # (GND)
-- \core1|Add4~61\ = CARRY((\vi[30]~input_o\ & ((\core1|RESULT~30_combout\) # (!\core1|Add4~59\))) # (!\vi[30]~input_o\ & (\core1|RESULT~30_combout\ & !\core1|Add4~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vi[30]~input_o\,
	datab => \core1|RESULT~30_combout\,
	datad => VCC,
	cin => \core1|Add4~59\,
	combout => \core1|Add4~60_combout\,
	cout => \core1|Add4~61\);

-- Location: IOIBUF_X0_Y13_N22
\vi[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vi(31),
	o => \vi[31]~input_o\);

-- Location: IOIBUF_X7_Y0_N29
\key[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(31),
	o => \key[31]~input_o\);

-- Location: LCCOMB_X12_Y9_N26
\core1|Add1~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add1~54_combout\ = \key[31]~input_o\ $ (\core1|Add1~53\ $ (\vi[59]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key[31]~input_o\,
	datad => \vi[59]~input_o\,
	cin => \core1|Add1~53\,
	combout => \core1|Add1~54_combout\);

-- Location: IOIBUF_X19_Y0_N1
\vi[63]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vi(63),
	o => \vi[63]~input_o\);

-- Location: LCCOMB_X15_Y9_N30
\core1|Add2~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add2~60_combout\ = \core1|Add2~59\ $ (\vi[63]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \vi[63]~input_o\,
	cin => \core1|Add2~59\,
	combout => \core1|Add2~60_combout\);

-- Location: LCCOMB_X16_Y12_N0
\core1|RESULT~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|RESULT~31_combout\ = \core1|Add3~62_combout\ $ (\core1|Add1~54_combout\ $ (\core1|Add2~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \core1|Add3~62_combout\,
	datac => \core1|Add1~54_combout\,
	datad => \core1|Add2~60_combout\,
	combout => \core1|RESULT~31_combout\);

-- Location: LCCOMB_X20_Y13_N30
\core1|Add4~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add4~62_combout\ = \vi[31]~input_o\ $ (\core1|Add4~61\ $ (\core1|RESULT~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vi[31]~input_o\,
	datad => \core1|RESULT~31_combout\,
	cin => \core1|Add4~61\,
	combout => \core1|Add4~62_combout\);

-- Location: IOIBUF_X30_Y0_N15
\key[96]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(96),
	o => \key[96]~input_o\);

-- Location: LCCOMB_X23_Y16_N0
\core1|Add7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add7~0_combout\ = (\core1|Add4~10_combout\ & (\key[96]~input_o\ $ (VCC))) # (!\core1|Add4~10_combout\ & (\key[96]~input_o\ & VCC))
-- \core1|Add7~1\ = CARRY((\core1|Add4~10_combout\ & \key[96]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \core1|Add4~10_combout\,
	datab => \key[96]~input_o\,
	datad => VCC,
	combout => \core1|Add7~0_combout\,
	cout => \core1|Add7~1\);

-- Location: IOIBUF_X23_Y0_N8
\key[64]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(64),
	o => \key[64]~input_o\);

-- Location: LCCOMB_X20_Y8_N0
\core1|RESULT~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|RESULT~32_combout\ = \core1|Add6~0_combout\ $ (\core1|Add7~0_combout\ $ (\key[64]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \core1|Add6~0_combout\,
	datac => \core1|Add7~0_combout\,
	datad => \key[64]~input_o\,
	combout => \core1|RESULT~32_combout\);

-- Location: LCCOMB_X17_Y12_N0
\core1|Add8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add8~0_combout\ = (\core1|RESULT~32_combout\ & (\vi[32]~input_o\ $ (VCC))) # (!\core1|RESULT~32_combout\ & (\vi[32]~input_o\ & VCC))
-- \core1|Add8~1\ = CARRY((\core1|RESULT~32_combout\ & \vi[32]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \core1|RESULT~32_combout\,
	datab => \vi[32]~input_o\,
	datad => VCC,
	combout => \core1|Add8~0_combout\,
	cout => \core1|Add8~1\);

-- Location: IOIBUF_X19_Y0_N8
\vi[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vi(33),
	o => \vi[33]~input_o\);

-- Location: IOIBUF_X0_Y20_N8
\key[65]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(65),
	o => \key[65]~input_o\);

-- Location: IOIBUF_X26_Y0_N8
\key[97]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(97),
	o => \key[97]~input_o\);

-- Location: LCCOMB_X23_Y16_N2
\core1|Add7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add7~2_combout\ = (\core1|Add4~12_combout\ & ((\key[97]~input_o\ & (\core1|Add7~1\ & VCC)) # (!\key[97]~input_o\ & (!\core1|Add7~1\)))) # (!\core1|Add4~12_combout\ & ((\key[97]~input_o\ & (!\core1|Add7~1\)) # (!\key[97]~input_o\ & ((\core1|Add7~1\) 
-- # (GND)))))
-- \core1|Add7~3\ = CARRY((\core1|Add4~12_combout\ & (!\key[97]~input_o\ & !\core1|Add7~1\)) # (!\core1|Add4~12_combout\ & ((!\core1|Add7~1\) # (!\key[97]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \core1|Add4~12_combout\,
	datab => \key[97]~input_o\,
	datad => VCC,
	cin => \core1|Add7~1\,
	combout => \core1|Add7~2_combout\,
	cout => \core1|Add7~3\);

-- Location: LCCOMB_X16_Y16_N16
\core1|RESULT~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|RESULT~33_combout\ = \core1|Add6~2_combout\ $ (\key[65]~input_o\ $ (\core1|Add7~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \core1|Add6~2_combout\,
	datab => \key[65]~input_o\,
	datad => \core1|Add7~2_combout\,
	combout => \core1|RESULT~33_combout\);

-- Location: LCCOMB_X17_Y12_N2
\core1|Add8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add8~2_combout\ = (\vi[33]~input_o\ & ((\core1|RESULT~33_combout\ & (\core1|Add8~1\ & VCC)) # (!\core1|RESULT~33_combout\ & (!\core1|Add8~1\)))) # (!\vi[33]~input_o\ & ((\core1|RESULT~33_combout\ & (!\core1|Add8~1\)) # (!\core1|RESULT~33_combout\ & 
-- ((\core1|Add8~1\) # (GND)))))
-- \core1|Add8~3\ = CARRY((\vi[33]~input_o\ & (!\core1|RESULT~33_combout\ & !\core1|Add8~1\)) # (!\vi[33]~input_o\ & ((!\core1|Add8~1\) # (!\core1|RESULT~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vi[33]~input_o\,
	datab => \core1|RESULT~33_combout\,
	datad => VCC,
	cin => \core1|Add8~1\,
	combout => \core1|Add8~2_combout\,
	cout => \core1|Add8~3\);

-- Location: IOIBUF_X41_Y15_N15
\key[98]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(98),
	o => \key[98]~input_o\);

-- Location: LCCOMB_X23_Y16_N4
\core1|Add7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add7~4_combout\ = ((\core1|Add4~14_combout\ $ (\key[98]~input_o\ $ (!\core1|Add7~3\)))) # (GND)
-- \core1|Add7~5\ = CARRY((\core1|Add4~14_combout\ & ((\key[98]~input_o\) # (!\core1|Add7~3\))) # (!\core1|Add4~14_combout\ & (\key[98]~input_o\ & !\core1|Add7~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \core1|Add4~14_combout\,
	datab => \key[98]~input_o\,
	datad => VCC,
	cin => \core1|Add7~3\,
	combout => \core1|Add7~4_combout\,
	cout => \core1|Add7~5\);

-- Location: IOIBUF_X41_Y15_N22
\key[66]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(66),
	o => \key[66]~input_o\);

-- Location: LCCOMB_X20_Y17_N16
\core1|RESULT~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|RESULT~34_combout\ = \core1|Add6~4_combout\ $ (\core1|Add7~4_combout\ $ (\key[66]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \core1|Add6~4_combout\,
	datab => \core1|Add7~4_combout\,
	datad => \key[66]~input_o\,
	combout => \core1|RESULT~34_combout\);

-- Location: LCCOMB_X17_Y12_N4
\core1|Add8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add8~4_combout\ = ((\vi[34]~input_o\ $ (\core1|RESULT~34_combout\ $ (!\core1|Add8~3\)))) # (GND)
-- \core1|Add8~5\ = CARRY((\vi[34]~input_o\ & ((\core1|RESULT~34_combout\) # (!\core1|Add8~3\))) # (!\vi[34]~input_o\ & (\core1|RESULT~34_combout\ & !\core1|Add8~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vi[34]~input_o\,
	datab => \core1|RESULT~34_combout\,
	datad => VCC,
	cin => \core1|Add8~3\,
	combout => \core1|Add8~4_combout\,
	cout => \core1|Add8~5\);

-- Location: IOIBUF_X30_Y29_N1
\key[99]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(99),
	o => \key[99]~input_o\);

-- Location: LCCOMB_X23_Y16_N6
\core1|Add7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add7~6_combout\ = (\core1|Add4~16_combout\ & ((\key[99]~input_o\ & (\core1|Add7~5\ & VCC)) # (!\key[99]~input_o\ & (!\core1|Add7~5\)))) # (!\core1|Add4~16_combout\ & ((\key[99]~input_o\ & (!\core1|Add7~5\)) # (!\key[99]~input_o\ & ((\core1|Add7~5\) 
-- # (GND)))))
-- \core1|Add7~7\ = CARRY((\core1|Add4~16_combout\ & (!\key[99]~input_o\ & !\core1|Add7~5\)) # (!\core1|Add4~16_combout\ & ((!\core1|Add7~5\) # (!\key[99]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \core1|Add4~16_combout\,
	datab => \key[99]~input_o\,
	datad => VCC,
	cin => \core1|Add7~5\,
	combout => \core1|Add7~6_combout\,
	cout => \core1|Add7~7\);

-- Location: IOIBUF_X32_Y29_N8
\key[67]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(67),
	o => \key[67]~input_o\);

-- Location: LCCOMB_X24_Y16_N24
\core1|RESULT~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|RESULT~35_combout\ = \core1|Add6~6_combout\ $ (\core1|Add7~6_combout\ $ (\key[67]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \core1|Add6~6_combout\,
	datac => \core1|Add7~6_combout\,
	datad => \key[67]~input_o\,
	combout => \core1|RESULT~35_combout\);

-- Location: LCCOMB_X17_Y12_N6
\core1|Add8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add8~6_combout\ = (\vi[35]~input_o\ & ((\core1|RESULT~35_combout\ & (\core1|Add8~5\ & VCC)) # (!\core1|RESULT~35_combout\ & (!\core1|Add8~5\)))) # (!\vi[35]~input_o\ & ((\core1|RESULT~35_combout\ & (!\core1|Add8~5\)) # (!\core1|RESULT~35_combout\ & 
-- ((\core1|Add8~5\) # (GND)))))
-- \core1|Add8~7\ = CARRY((\vi[35]~input_o\ & (!\core1|RESULT~35_combout\ & !\core1|Add8~5\)) # (!\vi[35]~input_o\ & ((!\core1|Add8~5\) # (!\core1|RESULT~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vi[35]~input_o\,
	datab => \core1|RESULT~35_combout\,
	datad => VCC,
	cin => \core1|Add8~5\,
	combout => \core1|Add8~6_combout\,
	cout => \core1|Add8~7\);

-- Location: LCCOMB_X20_Y16_N8
\core1|Add6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add6~8_combout\ = (\core1|Add4~8_combout\ & ((GND) # (!\core1|Add6~7\))) # (!\core1|Add4~8_combout\ & (\core1|Add6~7\ $ (GND)))
-- \core1|Add6~9\ = CARRY((\core1|Add4~8_combout\) # (!\core1|Add6~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \core1|Add4~8_combout\,
	datad => VCC,
	cin => \core1|Add6~7\,
	combout => \core1|Add6~8_combout\,
	cout => \core1|Add6~9\);

-- Location: IOIBUF_X21_Y0_N1
\key[100]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(100),
	o => \key[100]~input_o\);

-- Location: LCCOMB_X23_Y16_N8
\core1|Add7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add7~8_combout\ = ((\core1|Add4~18_combout\ $ (\key[100]~input_o\ $ (!\core1|Add7~7\)))) # (GND)
-- \core1|Add7~9\ = CARRY((\core1|Add4~18_combout\ & ((\key[100]~input_o\) # (!\core1|Add7~7\))) # (!\core1|Add4~18_combout\ & (\key[100]~input_o\ & !\core1|Add7~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \core1|Add4~18_combout\,
	datab => \key[100]~input_o\,
	datad => VCC,
	cin => \core1|Add7~7\,
	combout => \core1|Add7~8_combout\,
	cout => \core1|Add7~9\);

-- Location: LCCOMB_X21_Y12_N16
\core1|RESULT~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|RESULT~36_combout\ = \core1|Add5~0_combout\ $ (\core1|Add6~8_combout\ $ (\core1|Add7~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \core1|Add5~0_combout\,
	datac => \core1|Add6~8_combout\,
	datad => \core1|Add7~8_combout\,
	combout => \core1|RESULT~36_combout\);

-- Location: IOIBUF_X41_Y9_N22
\vi[36]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vi(36),
	o => \vi[36]~input_o\);

-- Location: LCCOMB_X17_Y12_N8
\core1|Add8~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add8~8_combout\ = ((\core1|RESULT~36_combout\ $ (\vi[36]~input_o\ $ (!\core1|Add8~7\)))) # (GND)
-- \core1|Add8~9\ = CARRY((\core1|RESULT~36_combout\ & ((\vi[36]~input_o\) # (!\core1|Add8~7\))) # (!\core1|RESULT~36_combout\ & (\vi[36]~input_o\ & !\core1|Add8~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \core1|RESULT~36_combout\,
	datab => \vi[36]~input_o\,
	datad => VCC,
	cin => \core1|Add8~7\,
	combout => \core1|Add8~8_combout\,
	cout => \core1|Add8~9\);

-- Location: IOIBUF_X21_Y0_N8
\key[68]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(68),
	o => \key[68]~input_o\);

-- Location: LCCOMB_X22_Y16_N6
\core1|Add5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add5~2_combout\ = (\key[69]~input_o\ & ((\core1|Add4~2_combout\ & (\core1|Add5~1\ & VCC)) # (!\core1|Add4~2_combout\ & (!\core1|Add5~1\)))) # (!\key[69]~input_o\ & ((\core1|Add4~2_combout\ & (!\core1|Add5~1\)) # (!\core1|Add4~2_combout\ & 
-- ((\core1|Add5~1\) # (GND)))))
-- \core1|Add5~3\ = CARRY((\key[69]~input_o\ & (!\core1|Add4~2_combout\ & !\core1|Add5~1\)) # (!\key[69]~input_o\ & ((!\core1|Add5~1\) # (!\core1|Add4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key[69]~input_o\,
	datab => \core1|Add4~2_combout\,
	datad => VCC,
	cin => \core1|Add5~1\,
	combout => \core1|Add5~2_combout\,
	cout => \core1|Add5~3\);

-- Location: IOIBUF_X41_Y23_N8
\key[101]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(101),
	o => \key[101]~input_o\);

-- Location: LCCOMB_X23_Y16_N10
\core1|Add7~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add7~10_combout\ = (\core1|Add4~20_combout\ & ((\key[101]~input_o\ & (\core1|Add7~9\ & VCC)) # (!\key[101]~input_o\ & (!\core1|Add7~9\)))) # (!\core1|Add4~20_combout\ & ((\key[101]~input_o\ & (!\core1|Add7~9\)) # (!\key[101]~input_o\ & 
-- ((\core1|Add7~9\) # (GND)))))
-- \core1|Add7~11\ = CARRY((\core1|Add4~20_combout\ & (!\key[101]~input_o\ & !\core1|Add7~9\)) # (!\core1|Add4~20_combout\ & ((!\core1|Add7~9\) # (!\key[101]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \core1|Add4~20_combout\,
	datab => \key[101]~input_o\,
	datad => VCC,
	cin => \core1|Add7~9\,
	combout => \core1|Add7~10_combout\,
	cout => \core1|Add7~11\);

-- Location: LCCOMB_X17_Y16_N8
\core1|RESULT~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|RESULT~37_combout\ = \core1|Add6~10_combout\ $ (\core1|Add5~2_combout\ $ (\core1|Add7~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \core1|Add6~10_combout\,
	datac => \core1|Add5~2_combout\,
	datad => \core1|Add7~10_combout\,
	combout => \core1|RESULT~37_combout\);

-- Location: LCCOMB_X17_Y12_N10
\core1|Add8~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add8~10_combout\ = (\vi[37]~input_o\ & ((\core1|RESULT~37_combout\ & (\core1|Add8~9\ & VCC)) # (!\core1|RESULT~37_combout\ & (!\core1|Add8~9\)))) # (!\vi[37]~input_o\ & ((\core1|RESULT~37_combout\ & (!\core1|Add8~9\)) # (!\core1|RESULT~37_combout\ 
-- & ((\core1|Add8~9\) # (GND)))))
-- \core1|Add8~11\ = CARRY((\vi[37]~input_o\ & (!\core1|RESULT~37_combout\ & !\core1|Add8~9\)) # (!\vi[37]~input_o\ & ((!\core1|Add8~9\) # (!\core1|RESULT~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vi[37]~input_o\,
	datab => \core1|RESULT~37_combout\,
	datad => VCC,
	cin => \core1|Add8~9\,
	combout => \core1|Add8~10_combout\,
	cout => \core1|Add8~11\);

-- Location: LCCOMB_X23_Y16_N12
\core1|Add7~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add7~12_combout\ = ((\key[102]~input_o\ $ (\core1|Add4~22_combout\ $ (!\core1|Add7~11\)))) # (GND)
-- \core1|Add7~13\ = CARRY((\key[102]~input_o\ & ((\core1|Add4~22_combout\) # (!\core1|Add7~11\))) # (!\key[102]~input_o\ & (\core1|Add4~22_combout\ & !\core1|Add7~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key[102]~input_o\,
	datab => \core1|Add4~22_combout\,
	datad => VCC,
	cin => \core1|Add7~11\,
	combout => \core1|Add7~12_combout\,
	cout => \core1|Add7~13\);

-- Location: IOIBUF_X41_Y21_N1
\key[70]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(70),
	o => \key[70]~input_o\);

-- Location: LCCOMB_X22_Y16_N8
\core1|Add5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add5~4_combout\ = ((\core1|Add4~4_combout\ $ (\key[70]~input_o\ $ (!\core1|Add5~3\)))) # (GND)
-- \core1|Add5~5\ = CARRY((\core1|Add4~4_combout\ & ((\key[70]~input_o\) # (!\core1|Add5~3\))) # (!\core1|Add4~4_combout\ & (\key[70]~input_o\ & !\core1|Add5~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \core1|Add4~4_combout\,
	datab => \key[70]~input_o\,
	datad => VCC,
	cin => \core1|Add5~3\,
	combout => \core1|Add5~4_combout\,
	cout => \core1|Add5~5\);

-- Location: LCCOMB_X22_Y12_N16
\core1|RESULT~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|RESULT~38_combout\ = \core1|Add6~12_combout\ $ (\core1|Add7~12_combout\ $ (\core1|Add5~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \core1|Add6~12_combout\,
	datac => \core1|Add7~12_combout\,
	datad => \core1|Add5~4_combout\,
	combout => \core1|RESULT~38_combout\);

-- Location: LCCOMB_X17_Y12_N12
\core1|Add8~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add8~12_combout\ = ((\core1|RESULT~38_combout\ $ (\vi[38]~input_o\ $ (!\core1|Add8~11\)))) # (GND)
-- \core1|Add8~13\ = CARRY((\core1|RESULT~38_combout\ & ((\vi[38]~input_o\) # (!\core1|Add8~11\))) # (!\core1|RESULT~38_combout\ & (\vi[38]~input_o\ & !\core1|Add8~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \core1|RESULT~38_combout\,
	datab => \vi[38]~input_o\,
	datad => VCC,
	cin => \core1|Add8~11\,
	combout => \core1|Add8~12_combout\,
	cout => \core1|Add8~13\);

-- Location: LCCOMB_X20_Y16_N14
\core1|Add6~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add6~14_combout\ = (\core1|Add4~14_combout\ & (\core1|Add6~13\ & VCC)) # (!\core1|Add4~14_combout\ & (!\core1|Add6~13\))
-- \core1|Add6~15\ = CARRY((!\core1|Add4~14_combout\ & !\core1|Add6~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \core1|Add4~14_combout\,
	datad => VCC,
	cin => \core1|Add6~13\,
	combout => \core1|Add6~14_combout\,
	cout => \core1|Add6~15\);

-- Location: LCCOMB_X22_Y16_N10
\core1|Add5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add5~6_combout\ = (\key[71]~input_o\ & ((\core1|Add4~6_combout\ & (\core1|Add5~5\ & VCC)) # (!\core1|Add4~6_combout\ & (!\core1|Add5~5\)))) # (!\key[71]~input_o\ & ((\core1|Add4~6_combout\ & (!\core1|Add5~5\)) # (!\core1|Add4~6_combout\ & 
-- ((\core1|Add5~5\) # (GND)))))
-- \core1|Add5~7\ = CARRY((\key[71]~input_o\ & (!\core1|Add4~6_combout\ & !\core1|Add5~5\)) # (!\key[71]~input_o\ & ((!\core1|Add5~5\) # (!\core1|Add4~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key[71]~input_o\,
	datab => \core1|Add4~6_combout\,
	datad => VCC,
	cin => \core1|Add5~5\,
	combout => \core1|Add5~6_combout\,
	cout => \core1|Add5~7\);

-- Location: IOIBUF_X41_Y24_N8
\key[103]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(103),
	o => \key[103]~input_o\);

-- Location: LCCOMB_X23_Y16_N14
\core1|Add7~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add7~14_combout\ = (\core1|Add4~24_combout\ & ((\key[103]~input_o\ & (\core1|Add7~13\ & VCC)) # (!\key[103]~input_o\ & (!\core1|Add7~13\)))) # (!\core1|Add4~24_combout\ & ((\key[103]~input_o\ & (!\core1|Add7~13\)) # (!\key[103]~input_o\ & 
-- ((\core1|Add7~13\) # (GND)))))
-- \core1|Add7~15\ = CARRY((\core1|Add4~24_combout\ & (!\key[103]~input_o\ & !\core1|Add7~13\)) # (!\core1|Add4~24_combout\ & ((!\core1|Add7~13\) # (!\key[103]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \core1|Add4~24_combout\,
	datab => \key[103]~input_o\,
	datad => VCC,
	cin => \core1|Add7~13\,
	combout => \core1|Add7~14_combout\,
	cout => \core1|Add7~15\);

-- Location: LCCOMB_X23_Y12_N0
\core1|RESULT~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|RESULT~39_combout\ = \core1|Add6~14_combout\ $ (\core1|Add5~6_combout\ $ (\core1|Add7~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \core1|Add6~14_combout\,
	datac => \core1|Add5~6_combout\,
	datad => \core1|Add7~14_combout\,
	combout => \core1|RESULT~39_combout\);

-- Location: LCCOMB_X17_Y12_N14
\core1|Add8~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add8~14_combout\ = (\core1|RESULT~39_combout\ & ((\vi[39]~input_o\ & (\core1|Add8~13\ & VCC)) # (!\vi[39]~input_o\ & (!\core1|Add8~13\)))) # (!\core1|RESULT~39_combout\ & ((\vi[39]~input_o\ & (!\core1|Add8~13\)) # (!\vi[39]~input_o\ & 
-- ((\core1|Add8~13\) # (GND)))))
-- \core1|Add8~15\ = CARRY((\core1|RESULT~39_combout\ & (!\vi[39]~input_o\ & !\core1|Add8~13\)) # (!\core1|RESULT~39_combout\ & ((!\core1|Add8~13\) # (!\vi[39]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \core1|RESULT~39_combout\,
	datab => \vi[39]~input_o\,
	datad => VCC,
	cin => \core1|Add8~13\,
	combout => \core1|Add8~14_combout\,
	cout => \core1|Add8~15\);

-- Location: LCCOMB_X20_Y16_N16
\core1|Add6~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add6~16_combout\ = (\core1|Add4~16_combout\ & ((GND) # (!\core1|Add6~15\))) # (!\core1|Add4~16_combout\ & (\core1|Add6~15\ $ (GND)))
-- \core1|Add6~17\ = CARRY((\core1|Add4~16_combout\) # (!\core1|Add6~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \core1|Add4~16_combout\,
	datad => VCC,
	cin => \core1|Add6~15\,
	combout => \core1|Add6~16_combout\,
	cout => \core1|Add6~17\);

-- Location: LCCOMB_X22_Y16_N12
\core1|Add5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add5~8_combout\ = ((\key[72]~input_o\ $ (\core1|Add4~8_combout\ $ (!\core1|Add5~7\)))) # (GND)
-- \core1|Add5~9\ = CARRY((\key[72]~input_o\ & ((\core1|Add4~8_combout\) # (!\core1|Add5~7\))) # (!\key[72]~input_o\ & (\core1|Add4~8_combout\ & !\core1|Add5~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key[72]~input_o\,
	datab => \core1|Add4~8_combout\,
	datad => VCC,
	cin => \core1|Add5~7\,
	combout => \core1|Add5~8_combout\,
	cout => \core1|Add5~9\);

-- Location: IOIBUF_X41_Y23_N1
\key[104]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(104),
	o => \key[104]~input_o\);

-- Location: LCCOMB_X23_Y16_N16
\core1|Add7~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add7~16_combout\ = ((\core1|Add4~26_combout\ $ (\key[104]~input_o\ $ (!\core1|Add7~15\)))) # (GND)
-- \core1|Add7~17\ = CARRY((\core1|Add4~26_combout\ & ((\key[104]~input_o\) # (!\core1|Add7~15\))) # (!\core1|Add4~26_combout\ & (\key[104]~input_o\ & !\core1|Add7~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \core1|Add4~26_combout\,
	datab => \key[104]~input_o\,
	datad => VCC,
	cin => \core1|Add7~15\,
	combout => \core1|Add7~16_combout\,
	cout => \core1|Add7~17\);

-- Location: LCCOMB_X23_Y13_N16
\core1|RESULT~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|RESULT~40_combout\ = \core1|Add6~16_combout\ $ (\core1|Add5~8_combout\ $ (\core1|Add7~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \core1|Add6~16_combout\,
	datac => \core1|Add5~8_combout\,
	datad => \core1|Add7~16_combout\,
	combout => \core1|RESULT~40_combout\);

-- Location: LCCOMB_X17_Y12_N16
\core1|Add8~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add8~16_combout\ = ((\vi[40]~input_o\ $ (\core1|RESULT~40_combout\ $ (!\core1|Add8~15\)))) # (GND)
-- \core1|Add8~17\ = CARRY((\vi[40]~input_o\ & ((\core1|RESULT~40_combout\) # (!\core1|Add8~15\))) # (!\vi[40]~input_o\ & (\core1|RESULT~40_combout\ & !\core1|Add8~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vi[40]~input_o\,
	datab => \core1|RESULT~40_combout\,
	datad => VCC,
	cin => \core1|Add8~15\,
	combout => \core1|Add8~16_combout\,
	cout => \core1|Add8~17\);

-- Location: LCCOMB_X22_Y16_N14
\core1|Add5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add5~10_combout\ = (\key[73]~input_o\ & ((\core1|Add4~10_combout\ & (\core1|Add5~9\ & VCC)) # (!\core1|Add4~10_combout\ & (!\core1|Add5~9\)))) # (!\key[73]~input_o\ & ((\core1|Add4~10_combout\ & (!\core1|Add5~9\)) # (!\core1|Add4~10_combout\ & 
-- ((\core1|Add5~9\) # (GND)))))
-- \core1|Add5~11\ = CARRY((\key[73]~input_o\ & (!\core1|Add4~10_combout\ & !\core1|Add5~9\)) # (!\key[73]~input_o\ & ((!\core1|Add5~9\) # (!\core1|Add4~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key[73]~input_o\,
	datab => \core1|Add4~10_combout\,
	datad => VCC,
	cin => \core1|Add5~9\,
	combout => \core1|Add5~10_combout\,
	cout => \core1|Add5~11\);

-- Location: IOIBUF_X32_Y29_N22
\key[105]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(105),
	o => \key[105]~input_o\);

-- Location: LCCOMB_X23_Y16_N18
\core1|Add7~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add7~18_combout\ = (\core1|Add4~28_combout\ & ((\key[105]~input_o\ & (\core1|Add7~17\ & VCC)) # (!\key[105]~input_o\ & (!\core1|Add7~17\)))) # (!\core1|Add4~28_combout\ & ((\key[105]~input_o\ & (!\core1|Add7~17\)) # (!\key[105]~input_o\ & 
-- ((\core1|Add7~17\) # (GND)))))
-- \core1|Add7~19\ = CARRY((\core1|Add4~28_combout\ & (!\key[105]~input_o\ & !\core1|Add7~17\)) # (!\core1|Add4~28_combout\ & ((!\core1|Add7~17\) # (!\key[105]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \core1|Add4~28_combout\,
	datab => \key[105]~input_o\,
	datad => VCC,
	cin => \core1|Add7~17\,
	combout => \core1|Add7~18_combout\,
	cout => \core1|Add7~19\);

-- Location: LCCOMB_X20_Y12_N0
\core1|RESULT~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|RESULT~41_combout\ = \core1|Add6~18_combout\ $ (\core1|Add5~10_combout\ $ (\core1|Add7~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \core1|Add6~18_combout\,
	datab => \core1|Add5~10_combout\,
	datac => \core1|Add7~18_combout\,
	combout => \core1|RESULT~41_combout\);

-- Location: LCCOMB_X17_Y12_N18
\core1|Add8~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add8~18_combout\ = (\core1|RESULT~41_combout\ & ((\vi[41]~input_o\ & (\core1|Add8~17\ & VCC)) # (!\vi[41]~input_o\ & (!\core1|Add8~17\)))) # (!\core1|RESULT~41_combout\ & ((\vi[41]~input_o\ & (!\core1|Add8~17\)) # (!\vi[41]~input_o\ & 
-- ((\core1|Add8~17\) # (GND)))))
-- \core1|Add8~19\ = CARRY((\core1|RESULT~41_combout\ & (!\vi[41]~input_o\ & !\core1|Add8~17\)) # (!\core1|RESULT~41_combout\ & ((!\core1|Add8~17\) # (!\vi[41]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \core1|RESULT~41_combout\,
	datab => \vi[41]~input_o\,
	datad => VCC,
	cin => \core1|Add8~17\,
	combout => \core1|Add8~18_combout\,
	cout => \core1|Add8~19\);

-- Location: LCCOMB_X22_Y16_N16
\core1|Add5~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add5~12_combout\ = ((\key[74]~input_o\ $ (\core1|Add4~12_combout\ $ (!\core1|Add5~11\)))) # (GND)
-- \core1|Add5~13\ = CARRY((\key[74]~input_o\ & ((\core1|Add4~12_combout\) # (!\core1|Add5~11\))) # (!\key[74]~input_o\ & (\core1|Add4~12_combout\ & !\core1|Add5~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key[74]~input_o\,
	datab => \core1|Add4~12_combout\,
	datad => VCC,
	cin => \core1|Add5~11\,
	combout => \core1|Add5~12_combout\,
	cout => \core1|Add5~13\);

-- Location: LCCOMB_X20_Y16_N20
\core1|Add6~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add6~20_combout\ = (\core1|Add4~20_combout\ & (\core1|Add6~19\ $ (GND))) # (!\core1|Add4~20_combout\ & (!\core1|Add6~19\ & VCC))
-- \core1|Add6~21\ = CARRY((\core1|Add4~20_combout\ & !\core1|Add6~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \core1|Add4~20_combout\,
	datad => VCC,
	cin => \core1|Add6~19\,
	combout => \core1|Add6~20_combout\,
	cout => \core1|Add6~21\);

-- Location: IOIBUF_X41_Y24_N22
\key[106]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(106),
	o => \key[106]~input_o\);

-- Location: LCCOMB_X23_Y16_N20
\core1|Add7~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add7~20_combout\ = ((\core1|Add4~30_combout\ $ (\key[106]~input_o\ $ (!\core1|Add7~19\)))) # (GND)
-- \core1|Add7~21\ = CARRY((\core1|Add4~30_combout\ & ((\key[106]~input_o\) # (!\core1|Add7~19\))) # (!\core1|Add4~30_combout\ & (\key[106]~input_o\ & !\core1|Add7~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \core1|Add4~30_combout\,
	datab => \key[106]~input_o\,
	datad => VCC,
	cin => \core1|Add7~19\,
	combout => \core1|Add7~20_combout\,
	cout => \core1|Add7~21\);

-- Location: LCCOMB_X19_Y12_N16
\core1|RESULT~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|RESULT~42_combout\ = \core1|Add5~12_combout\ $ (\core1|Add6~20_combout\ $ (\core1|Add7~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \core1|Add5~12_combout\,
	datac => \core1|Add6~20_combout\,
	datad => \core1|Add7~20_combout\,
	combout => \core1|RESULT~42_combout\);

-- Location: LCCOMB_X17_Y12_N20
\core1|Add8~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add8~20_combout\ = ((\core1|RESULT~42_combout\ $ (\vi[42]~input_o\ $ (!\core1|Add8~19\)))) # (GND)
-- \core1|Add8~21\ = CARRY((\core1|RESULT~42_combout\ & ((\vi[42]~input_o\) # (!\core1|Add8~19\))) # (!\core1|RESULT~42_combout\ & (\vi[42]~input_o\ & !\core1|Add8~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \core1|RESULT~42_combout\,
	datab => \vi[42]~input_o\,
	datad => VCC,
	cin => \core1|Add8~19\,
	combout => \core1|Add8~20_combout\,
	cout => \core1|Add8~21\);

-- Location: IOIBUF_X14_Y29_N22
\key[75]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(75),
	o => \key[75]~input_o\);

-- Location: LCCOMB_X22_Y16_N18
\core1|Add5~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add5~14_combout\ = (\core1|Add4~14_combout\ & ((\key[75]~input_o\ & (\core1|Add5~13\ & VCC)) # (!\key[75]~input_o\ & (!\core1|Add5~13\)))) # (!\core1|Add4~14_combout\ & ((\key[75]~input_o\ & (!\core1|Add5~13\)) # (!\key[75]~input_o\ & 
-- ((\core1|Add5~13\) # (GND)))))
-- \core1|Add5~15\ = CARRY((\core1|Add4~14_combout\ & (!\key[75]~input_o\ & !\core1|Add5~13\)) # (!\core1|Add4~14_combout\ & ((!\core1|Add5~13\) # (!\key[75]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \core1|Add4~14_combout\,
	datab => \key[75]~input_o\,
	datad => VCC,
	cin => \core1|Add5~13\,
	combout => \core1|Add5~14_combout\,
	cout => \core1|Add5~15\);

-- Location: LCCOMB_X20_Y16_N22
\core1|Add6~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add6~22_combout\ = (\core1|Add4~22_combout\ & (\core1|Add6~21\ & VCC)) # (!\core1|Add4~22_combout\ & (!\core1|Add6~21\))
-- \core1|Add6~23\ = CARRY((!\core1|Add4~22_combout\ & !\core1|Add6~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \core1|Add4~22_combout\,
	datad => VCC,
	cin => \core1|Add6~21\,
	combout => \core1|Add6~22_combout\,
	cout => \core1|Add6~23\);

-- Location: IOIBUF_X23_Y29_N1
\key[107]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(107),
	o => \key[107]~input_o\);

-- Location: LCCOMB_X23_Y16_N22
\core1|Add7~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add7~22_combout\ = (\core1|Add4~32_combout\ & ((\key[107]~input_o\ & (\core1|Add7~21\ & VCC)) # (!\key[107]~input_o\ & (!\core1|Add7~21\)))) # (!\core1|Add4~32_combout\ & ((\key[107]~input_o\ & (!\core1|Add7~21\)) # (!\key[107]~input_o\ & 
-- ((\core1|Add7~21\) # (GND)))))
-- \core1|Add7~23\ = CARRY((\core1|Add4~32_combout\ & (!\key[107]~input_o\ & !\core1|Add7~21\)) # (!\core1|Add4~32_combout\ & ((!\core1|Add7~21\) # (!\key[107]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \core1|Add4~32_combout\,
	datab => \key[107]~input_o\,
	datad => VCC,
	cin => \core1|Add7~21\,
	combout => \core1|Add7~22_combout\,
	cout => \core1|Add7~23\);

-- Location: LCCOMB_X22_Y16_N0
\core1|RESULT~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|RESULT~43_combout\ = \core1|Add5~14_combout\ $ (\core1|Add6~22_combout\ $ (\core1|Add7~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \core1|Add5~14_combout\,
	datac => \core1|Add6~22_combout\,
	datad => \core1|Add7~22_combout\,
	combout => \core1|RESULT~43_combout\);

-- Location: LCCOMB_X17_Y12_N22
\core1|Add8~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add8~22_combout\ = (\vi[43]~input_o\ & ((\core1|RESULT~43_combout\ & (\core1|Add8~21\ & VCC)) # (!\core1|RESULT~43_combout\ & (!\core1|Add8~21\)))) # (!\vi[43]~input_o\ & ((\core1|RESULT~43_combout\ & (!\core1|Add8~21\)) # 
-- (!\core1|RESULT~43_combout\ & ((\core1|Add8~21\) # (GND)))))
-- \core1|Add8~23\ = CARRY((\vi[43]~input_o\ & (!\core1|RESULT~43_combout\ & !\core1|Add8~21\)) # (!\vi[43]~input_o\ & ((!\core1|Add8~21\) # (!\core1|RESULT~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vi[43]~input_o\,
	datab => \core1|RESULT~43_combout\,
	datad => VCC,
	cin => \core1|Add8~21\,
	combout => \core1|Add8~22_combout\,
	cout => \core1|Add8~23\);

-- Location: LCCOMB_X20_Y16_N24
\core1|Add6~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add6~24_combout\ = (\core1|Add4~24_combout\ & ((GND) # (!\core1|Add6~23\))) # (!\core1|Add4~24_combout\ & (\core1|Add6~23\ $ (GND)))
-- \core1|Add6~25\ = CARRY((\core1|Add4~24_combout\) # (!\core1|Add6~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \core1|Add4~24_combout\,
	datad => VCC,
	cin => \core1|Add6~23\,
	combout => \core1|Add6~24_combout\,
	cout => \core1|Add6~25\);

-- Location: LCCOMB_X22_Y16_N20
\core1|Add5~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add5~16_combout\ = ((\key[76]~input_o\ $ (\core1|Add4~16_combout\ $ (!\core1|Add5~15\)))) # (GND)
-- \core1|Add5~17\ = CARRY((\key[76]~input_o\ & ((\core1|Add4~16_combout\) # (!\core1|Add5~15\))) # (!\key[76]~input_o\ & (\core1|Add4~16_combout\ & !\core1|Add5~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key[76]~input_o\,
	datab => \core1|Add4~16_combout\,
	datad => VCC,
	cin => \core1|Add5~15\,
	combout => \core1|Add5~16_combout\,
	cout => \core1|Add5~17\);

-- Location: LCCOMB_X19_Y16_N0
\core1|RESULT~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|RESULT~44_combout\ = \core1|Add7~24_combout\ $ (\core1|Add6~24_combout\ $ (\core1|Add5~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \core1|Add7~24_combout\,
	datab => \core1|Add6~24_combout\,
	datac => \core1|Add5~16_combout\,
	combout => \core1|RESULT~44_combout\);

-- Location: LCCOMB_X17_Y12_N24
\core1|Add8~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add8~24_combout\ = ((\core1|RESULT~44_combout\ $ (\vi[44]~input_o\ $ (!\core1|Add8~23\)))) # (GND)
-- \core1|Add8~25\ = CARRY((\core1|RESULT~44_combout\ & ((\vi[44]~input_o\) # (!\core1|Add8~23\))) # (!\core1|RESULT~44_combout\ & (\vi[44]~input_o\ & !\core1|Add8~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \core1|RESULT~44_combout\,
	datab => \vi[44]~input_o\,
	datad => VCC,
	cin => \core1|Add8~23\,
	combout => \core1|Add8~24_combout\,
	cout => \core1|Add8~25\);

-- Location: LCCOMB_X22_Y16_N22
\core1|Add5~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add5~18_combout\ = (\key[77]~input_o\ & ((\core1|Add4~18_combout\ & (\core1|Add5~17\ & VCC)) # (!\core1|Add4~18_combout\ & (!\core1|Add5~17\)))) # (!\key[77]~input_o\ & ((\core1|Add4~18_combout\ & (!\core1|Add5~17\)) # (!\core1|Add4~18_combout\ & 
-- ((\core1|Add5~17\) # (GND)))))
-- \core1|Add5~19\ = CARRY((\key[77]~input_o\ & (!\core1|Add4~18_combout\ & !\core1|Add5~17\)) # (!\key[77]~input_o\ & ((!\core1|Add5~17\) # (!\core1|Add4~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key[77]~input_o\,
	datab => \core1|Add4~18_combout\,
	datad => VCC,
	cin => \core1|Add5~17\,
	combout => \core1|Add5~18_combout\,
	cout => \core1|Add5~19\);

-- Location: LCCOMB_X20_Y16_N26
\core1|Add6~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add6~26_combout\ = (\core1|Add4~26_combout\ & (\core1|Add6~25\ & VCC)) # (!\core1|Add4~26_combout\ & (!\core1|Add6~25\))
-- \core1|Add6~27\ = CARRY((!\core1|Add4~26_combout\ & !\core1|Add6~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \core1|Add4~26_combout\,
	datad => VCC,
	cin => \core1|Add6~25\,
	combout => \core1|Add6~26_combout\,
	cout => \core1|Add6~27\);

-- Location: IOIBUF_X0_Y24_N15
\key[109]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(109),
	o => \key[109]~input_o\);

-- Location: IOIBUF_X41_Y23_N22
\key[108]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(108),
	o => \key[108]~input_o\);

-- Location: LCCOMB_X23_Y16_N26
\core1|Add7~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add7~26_combout\ = (\core1|Add4~36_combout\ & ((\key[109]~input_o\ & (\core1|Add7~25\ & VCC)) # (!\key[109]~input_o\ & (!\core1|Add7~25\)))) # (!\core1|Add4~36_combout\ & ((\key[109]~input_o\ & (!\core1|Add7~25\)) # (!\key[109]~input_o\ & 
-- ((\core1|Add7~25\) # (GND)))))
-- \core1|Add7~27\ = CARRY((\core1|Add4~36_combout\ & (!\key[109]~input_o\ & !\core1|Add7~25\)) # (!\core1|Add4~36_combout\ & ((!\core1|Add7~25\) # (!\key[109]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \core1|Add4~36_combout\,
	datab => \key[109]~input_o\,
	datad => VCC,
	cin => \core1|Add7~25\,
	combout => \core1|Add7~26_combout\,
	cout => \core1|Add7~27\);

-- Location: LCCOMB_X21_Y16_N16
\core1|RESULT~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|RESULT~45_combout\ = \core1|Add5~18_combout\ $ (\core1|Add6~26_combout\ $ (\core1|Add7~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \core1|Add5~18_combout\,
	datac => \core1|Add6~26_combout\,
	datad => \core1|Add7~26_combout\,
	combout => \core1|RESULT~45_combout\);

-- Location: LCCOMB_X17_Y12_N26
\core1|Add8~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add8~26_combout\ = (\vi[45]~input_o\ & ((\core1|RESULT~45_combout\ & (\core1|Add8~25\ & VCC)) # (!\core1|RESULT~45_combout\ & (!\core1|Add8~25\)))) # (!\vi[45]~input_o\ & ((\core1|RESULT~45_combout\ & (!\core1|Add8~25\)) # 
-- (!\core1|RESULT~45_combout\ & ((\core1|Add8~25\) # (GND)))))
-- \core1|Add8~27\ = CARRY((\vi[45]~input_o\ & (!\core1|RESULT~45_combout\ & !\core1|Add8~25\)) # (!\vi[45]~input_o\ & ((!\core1|Add8~25\) # (!\core1|RESULT~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vi[45]~input_o\,
	datab => \core1|RESULT~45_combout\,
	datad => VCC,
	cin => \core1|Add8~25\,
	combout => \core1|Add8~26_combout\,
	cout => \core1|Add8~27\);

-- Location: LCCOMB_X20_Y16_N28
\core1|Add6~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add6~28_combout\ = (\core1|Add4~28_combout\ & ((GND) # (!\core1|Add6~27\))) # (!\core1|Add4~28_combout\ & (\core1|Add6~27\ $ (GND)))
-- \core1|Add6~29\ = CARRY((\core1|Add4~28_combout\) # (!\core1|Add6~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \core1|Add4~28_combout\,
	datad => VCC,
	cin => \core1|Add6~27\,
	combout => \core1|Add6~28_combout\,
	cout => \core1|Add6~29\);

-- Location: IOIBUF_X14_Y29_N15
\key[78]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(78),
	o => \key[78]~input_o\);

-- Location: LCCOMB_X22_Y16_N24
\core1|Add5~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add5~20_combout\ = ((\core1|Add4~20_combout\ $ (\key[78]~input_o\ $ (!\core1|Add5~19\)))) # (GND)
-- \core1|Add5~21\ = CARRY((\core1|Add4~20_combout\ & ((\key[78]~input_o\) # (!\core1|Add5~19\))) # (!\core1|Add4~20_combout\ & (\key[78]~input_o\ & !\core1|Add5~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \core1|Add4~20_combout\,
	datab => \key[78]~input_o\,
	datad => VCC,
	cin => \core1|Add5~19\,
	combout => \core1|Add5~20_combout\,
	cout => \core1|Add5~21\);

-- Location: IOIBUF_X30_Y0_N8
\key[110]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(110),
	o => \key[110]~input_o\);

-- Location: LCCOMB_X23_Y16_N28
\core1|Add7~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add7~28_combout\ = ((\core1|Add4~38_combout\ $ (\key[110]~input_o\ $ (!\core1|Add7~27\)))) # (GND)
-- \core1|Add7~29\ = CARRY((\core1|Add4~38_combout\ & ((\key[110]~input_o\) # (!\core1|Add7~27\))) # (!\core1|Add4~38_combout\ & (\key[110]~input_o\ & !\core1|Add7~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \core1|Add4~38_combout\,
	datab => \key[110]~input_o\,
	datad => VCC,
	cin => \core1|Add7~27\,
	combout => \core1|Add7~28_combout\,
	cout => \core1|Add7~29\);

-- Location: LCCOMB_X19_Y13_N24
\core1|RESULT~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|RESULT~46_combout\ = \core1|Add6~28_combout\ $ (\core1|Add5~20_combout\ $ (\core1|Add7~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \core1|Add6~28_combout\,
	datac => \core1|Add5~20_combout\,
	datad => \core1|Add7~28_combout\,
	combout => \core1|RESULT~46_combout\);

-- Location: LCCOMB_X17_Y12_N28
\core1|Add8~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add8~28_combout\ = ((\core1|RESULT~46_combout\ $ (\vi[46]~input_o\ $ (!\core1|Add8~27\)))) # (GND)
-- \core1|Add8~29\ = CARRY((\core1|RESULT~46_combout\ & ((\vi[46]~input_o\) # (!\core1|Add8~27\))) # (!\core1|RESULT~46_combout\ & (\vi[46]~input_o\ & !\core1|Add8~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \core1|RESULT~46_combout\,
	datab => \vi[46]~input_o\,
	datad => VCC,
	cin => \core1|Add8~27\,
	combout => \core1|Add8~28_combout\,
	cout => \core1|Add8~29\);

-- Location: LCCOMB_X20_Y16_N30
\core1|Add6~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add6~30_combout\ = (\core1|Add4~30_combout\ & (!\core1|Add6~29\)) # (!\core1|Add4~30_combout\ & ((\core1|Add6~29\) # (GND)))
-- \core1|Add6~31\ = CARRY((!\core1|Add6~29\) # (!\core1|Add4~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \core1|Add4~30_combout\,
	datad => VCC,
	cin => \core1|Add6~29\,
	combout => \core1|Add6~30_combout\,
	cout => \core1|Add6~31\);

-- Location: LCCOMB_X22_Y16_N26
\core1|Add5~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add5~22_combout\ = (\key[79]~input_o\ & ((\core1|Add4~22_combout\ & (\core1|Add5~21\ & VCC)) # (!\core1|Add4~22_combout\ & (!\core1|Add5~21\)))) # (!\key[79]~input_o\ & ((\core1|Add4~22_combout\ & (!\core1|Add5~21\)) # (!\core1|Add4~22_combout\ & 
-- ((\core1|Add5~21\) # (GND)))))
-- \core1|Add5~23\ = CARRY((\key[79]~input_o\ & (!\core1|Add4~22_combout\ & !\core1|Add5~21\)) # (!\key[79]~input_o\ & ((!\core1|Add5~21\) # (!\core1|Add4~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key[79]~input_o\,
	datab => \core1|Add4~22_combout\,
	datad => VCC,
	cin => \core1|Add5~21\,
	combout => \core1|Add5~22_combout\,
	cout => \core1|Add5~23\);

-- Location: LCCOMB_X23_Y16_N30
\core1|Add7~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add7~30_combout\ = (\key[111]~input_o\ & ((\core1|Add4~40_combout\ & (\core1|Add7~29\ & VCC)) # (!\core1|Add4~40_combout\ & (!\core1|Add7~29\)))) # (!\key[111]~input_o\ & ((\core1|Add4~40_combout\ & (!\core1|Add7~29\)) # (!\core1|Add4~40_combout\ & 
-- ((\core1|Add7~29\) # (GND)))))
-- \core1|Add7~31\ = CARRY((\key[111]~input_o\ & (!\core1|Add4~40_combout\ & !\core1|Add7~29\)) # (!\key[111]~input_o\ & ((!\core1|Add7~29\) # (!\core1|Add4~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key[111]~input_o\,
	datab => \core1|Add4~40_combout\,
	datad => VCC,
	cin => \core1|Add7~29\,
	combout => \core1|Add7~30_combout\,
	cout => \core1|Add7~31\);

-- Location: LCCOMB_X22_Y13_N8
\core1|RESULT~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|RESULT~47_combout\ = \core1|Add6~30_combout\ $ (\core1|Add5~22_combout\ $ (\core1|Add7~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \core1|Add6~30_combout\,
	datac => \core1|Add5~22_combout\,
	datad => \core1|Add7~30_combout\,
	combout => \core1|RESULT~47_combout\);

-- Location: LCCOMB_X17_Y12_N30
\core1|Add8~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add8~30_combout\ = (\vi[47]~input_o\ & ((\core1|RESULT~47_combout\ & (\core1|Add8~29\ & VCC)) # (!\core1|RESULT~47_combout\ & (!\core1|Add8~29\)))) # (!\vi[47]~input_o\ & ((\core1|RESULT~47_combout\ & (!\core1|Add8~29\)) # 
-- (!\core1|RESULT~47_combout\ & ((\core1|Add8~29\) # (GND)))))
-- \core1|Add8~31\ = CARRY((\vi[47]~input_o\ & (!\core1|RESULT~47_combout\ & !\core1|Add8~29\)) # (!\vi[47]~input_o\ & ((!\core1|Add8~29\) # (!\core1|RESULT~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vi[47]~input_o\,
	datab => \core1|RESULT~47_combout\,
	datad => VCC,
	cin => \core1|Add8~29\,
	combout => \core1|Add8~30_combout\,
	cout => \core1|Add8~31\);

-- Location: LCCOMB_X20_Y15_N0
\core1|Add6~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add6~32_combout\ = (\core1|Add4~32_combout\ & ((GND) # (!\core1|Add6~31\))) # (!\core1|Add4~32_combout\ & (\core1|Add6~31\ $ (GND)))
-- \core1|Add6~33\ = CARRY((\core1|Add4~32_combout\) # (!\core1|Add6~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \core1|Add4~32_combout\,
	datad => VCC,
	cin => \core1|Add6~31\,
	combout => \core1|Add6~32_combout\,
	cout => \core1|Add6~33\);

-- Location: IOIBUF_X28_Y29_N29
\key[112]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(112),
	o => \key[112]~input_o\);

-- Location: LCCOMB_X23_Y15_N0
\core1|Add7~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add7~32_combout\ = ((\core1|Add4~42_combout\ $ (\key[112]~input_o\ $ (!\core1|Add7~31\)))) # (GND)
-- \core1|Add7~33\ = CARRY((\core1|Add4~42_combout\ & ((\key[112]~input_o\) # (!\core1|Add7~31\))) # (!\core1|Add4~42_combout\ & (\key[112]~input_o\ & !\core1|Add7~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \core1|Add4~42_combout\,
	datab => \key[112]~input_o\,
	datad => VCC,
	cin => \core1|Add7~31\,
	combout => \core1|Add7~32_combout\,
	cout => \core1|Add7~33\);

-- Location: IOIBUF_X26_Y29_N1
\key[80]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(80),
	o => \key[80]~input_o\);

-- Location: LCCOMB_X22_Y16_N28
\core1|Add5~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add5~24_combout\ = ((\core1|Add4~24_combout\ $ (\key[80]~input_o\ $ (!\core1|Add5~23\)))) # (GND)
-- \core1|Add5~25\ = CARRY((\core1|Add4~24_combout\ & ((\key[80]~input_o\) # (!\core1|Add5~23\))) # (!\core1|Add4~24_combout\ & (\key[80]~input_o\ & !\core1|Add5~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \core1|Add4~24_combout\,
	datab => \key[80]~input_o\,
	datad => VCC,
	cin => \core1|Add5~23\,
	combout => \core1|Add5~24_combout\,
	cout => \core1|Add5~25\);

-- Location: LCCOMB_X21_Y14_N16
\core1|RESULT~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|RESULT~48_combout\ = \core1|Add6~32_combout\ $ (\core1|Add7~32_combout\ $ (\core1|Add5~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \core1|Add6~32_combout\,
	datac => \core1|Add7~32_combout\,
	datad => \core1|Add5~24_combout\,
	combout => \core1|RESULT~48_combout\);

-- Location: LCCOMB_X17_Y11_N0
\core1|Add8~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add8~32_combout\ = ((\vi[48]~input_o\ $ (\core1|RESULT~48_combout\ $ (!\core1|Add8~31\)))) # (GND)
-- \core1|Add8~33\ = CARRY((\vi[48]~input_o\ & ((\core1|RESULT~48_combout\) # (!\core1|Add8~31\))) # (!\vi[48]~input_o\ & (\core1|RESULT~48_combout\ & !\core1|Add8~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vi[48]~input_o\,
	datab => \core1|RESULT~48_combout\,
	datad => VCC,
	cin => \core1|Add8~31\,
	combout => \core1|Add8~32_combout\,
	cout => \core1|Add8~33\);

-- Location: LCCOMB_X22_Y16_N30
\core1|Add5~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add5~26_combout\ = (\key[81]~input_o\ & ((\core1|Add4~26_combout\ & (\core1|Add5~25\ & VCC)) # (!\core1|Add4~26_combout\ & (!\core1|Add5~25\)))) # (!\key[81]~input_o\ & ((\core1|Add4~26_combout\ & (!\core1|Add5~25\)) # (!\core1|Add4~26_combout\ & 
-- ((\core1|Add5~25\) # (GND)))))
-- \core1|Add5~27\ = CARRY((\key[81]~input_o\ & (!\core1|Add4~26_combout\ & !\core1|Add5~25\)) # (!\key[81]~input_o\ & ((!\core1|Add5~25\) # (!\core1|Add4~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key[81]~input_o\,
	datab => \core1|Add4~26_combout\,
	datad => VCC,
	cin => \core1|Add5~25\,
	combout => \core1|Add5~26_combout\,
	cout => \core1|Add5~27\);

-- Location: IOIBUF_X41_Y21_N22
\key[113]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(113),
	o => \key[113]~input_o\);

-- Location: LCCOMB_X23_Y15_N2
\core1|Add7~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add7~34_combout\ = (\core1|Add4~44_combout\ & ((\key[113]~input_o\ & (\core1|Add7~33\ & VCC)) # (!\key[113]~input_o\ & (!\core1|Add7~33\)))) # (!\core1|Add4~44_combout\ & ((\key[113]~input_o\ & (!\core1|Add7~33\)) # (!\key[113]~input_o\ & 
-- ((\core1|Add7~33\) # (GND)))))
-- \core1|Add7~35\ = CARRY((\core1|Add4~44_combout\ & (!\key[113]~input_o\ & !\core1|Add7~33\)) # (!\core1|Add4~44_combout\ & ((!\core1|Add7~33\) # (!\key[113]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \core1|Add4~44_combout\,
	datab => \key[113]~input_o\,
	datad => VCC,
	cin => \core1|Add7~33\,
	combout => \core1|Add7~34_combout\,
	cout => \core1|Add7~35\);

-- Location: LCCOMB_X21_Y13_N8
\core1|RESULT~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|RESULT~49_combout\ = \core1|Add6~34_combout\ $ (\core1|Add5~26_combout\ $ (\core1|Add7~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \core1|Add6~34_combout\,
	datac => \core1|Add5~26_combout\,
	datad => \core1|Add7~34_combout\,
	combout => \core1|RESULT~49_combout\);

-- Location: LCCOMB_X17_Y11_N2
\core1|Add8~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add8~34_combout\ = (\vi[49]~input_o\ & ((\core1|RESULT~49_combout\ & (\core1|Add8~33\ & VCC)) # (!\core1|RESULT~49_combout\ & (!\core1|Add8~33\)))) # (!\vi[49]~input_o\ & ((\core1|RESULT~49_combout\ & (!\core1|Add8~33\)) # 
-- (!\core1|RESULT~49_combout\ & ((\core1|Add8~33\) # (GND)))))
-- \core1|Add8~35\ = CARRY((\vi[49]~input_o\ & (!\core1|RESULT~49_combout\ & !\core1|Add8~33\)) # (!\vi[49]~input_o\ & ((!\core1|Add8~33\) # (!\core1|RESULT~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vi[49]~input_o\,
	datab => \core1|RESULT~49_combout\,
	datad => VCC,
	cin => \core1|Add8~33\,
	combout => \core1|Add8~34_combout\,
	cout => \core1|Add8~35\);

-- Location: LCCOMB_X22_Y15_N0
\core1|Add5~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add5~28_combout\ = ((\key[82]~input_o\ $ (\core1|Add4~28_combout\ $ (!\core1|Add5~27\)))) # (GND)
-- \core1|Add5~29\ = CARRY((\key[82]~input_o\ & ((\core1|Add4~28_combout\) # (!\core1|Add5~27\))) # (!\key[82]~input_o\ & (\core1|Add4~28_combout\ & !\core1|Add5~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key[82]~input_o\,
	datab => \core1|Add4~28_combout\,
	datad => VCC,
	cin => \core1|Add5~27\,
	combout => \core1|Add5~28_combout\,
	cout => \core1|Add5~29\);

-- Location: LCCOMB_X20_Y15_N4
\core1|Add6~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add6~36_combout\ = (\core1|Add4~36_combout\ & ((GND) # (!\core1|Add6~35\))) # (!\core1|Add4~36_combout\ & (\core1|Add6~35\ $ (GND)))
-- \core1|Add6~37\ = CARRY((\core1|Add4~36_combout\) # (!\core1|Add6~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \core1|Add4~36_combout\,
	datad => VCC,
	cin => \core1|Add6~35\,
	combout => \core1|Add6~36_combout\,
	cout => \core1|Add6~37\);

-- Location: IOIBUF_X30_Y29_N8
\key[114]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(114),
	o => \key[114]~input_o\);

-- Location: LCCOMB_X23_Y15_N4
\core1|Add7~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add7~36_combout\ = ((\core1|Add4~46_combout\ $ (\key[114]~input_o\ $ (!\core1|Add7~35\)))) # (GND)
-- \core1|Add7~37\ = CARRY((\core1|Add4~46_combout\ & ((\key[114]~input_o\) # (!\core1|Add7~35\))) # (!\core1|Add4~46_combout\ & (\key[114]~input_o\ & !\core1|Add7~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \core1|Add4~46_combout\,
	datab => \key[114]~input_o\,
	datad => VCC,
	cin => \core1|Add7~35\,
	combout => \core1|Add7~36_combout\,
	cout => \core1|Add7~37\);

-- Location: LCCOMB_X22_Y15_N28
\core1|RESULT~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|RESULT~50_combout\ = \core1|Add5~28_combout\ $ (\core1|Add6~36_combout\ $ (\core1|Add7~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \core1|Add5~28_combout\,
	datac => \core1|Add6~36_combout\,
	datad => \core1|Add7~36_combout\,
	combout => \core1|RESULT~50_combout\);

-- Location: LCCOMB_X17_Y11_N4
\core1|Add8~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add8~36_combout\ = ((\core1|RESULT~50_combout\ $ (\vi[50]~input_o\ $ (!\core1|Add8~35\)))) # (GND)
-- \core1|Add8~37\ = CARRY((\core1|RESULT~50_combout\ & ((\vi[50]~input_o\) # (!\core1|Add8~35\))) # (!\core1|RESULT~50_combout\ & (\vi[50]~input_o\ & !\core1|Add8~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \core1|RESULT~50_combout\,
	datab => \vi[50]~input_o\,
	datad => VCC,
	cin => \core1|Add8~35\,
	combout => \core1|Add8~36_combout\,
	cout => \core1|Add8~37\);

-- Location: IOIBUF_X26_Y29_N15
\key[83]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(83),
	o => \key[83]~input_o\);

-- Location: LCCOMB_X22_Y15_N2
\core1|Add5~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add5~30_combout\ = (\core1|Add4~30_combout\ & ((\key[83]~input_o\ & (\core1|Add5~29\ & VCC)) # (!\key[83]~input_o\ & (!\core1|Add5~29\)))) # (!\core1|Add4~30_combout\ & ((\key[83]~input_o\ & (!\core1|Add5~29\)) # (!\key[83]~input_o\ & 
-- ((\core1|Add5~29\) # (GND)))))
-- \core1|Add5~31\ = CARRY((\core1|Add4~30_combout\ & (!\key[83]~input_o\ & !\core1|Add5~29\)) # (!\core1|Add4~30_combout\ & ((!\core1|Add5~29\) # (!\key[83]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \core1|Add4~30_combout\,
	datab => \key[83]~input_o\,
	datad => VCC,
	cin => \core1|Add5~29\,
	combout => \core1|Add5~30_combout\,
	cout => \core1|Add5~31\);

-- Location: LCCOMB_X20_Y15_N6
\core1|Add6~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add6~38_combout\ = (\core1|Add4~38_combout\ & (!\core1|Add6~37\)) # (!\core1|Add4~38_combout\ & ((\core1|Add6~37\) # (GND)))
-- \core1|Add6~39\ = CARRY((!\core1|Add6~37\) # (!\core1|Add4~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \core1|Add4~38_combout\,
	datad => VCC,
	cin => \core1|Add6~37\,
	combout => \core1|Add6~38_combout\,
	cout => \core1|Add6~39\);

-- Location: IOIBUF_X23_Y29_N8
\key[115]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(115),
	o => \key[115]~input_o\);

-- Location: LCCOMB_X23_Y15_N6
\core1|Add7~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add7~38_combout\ = (\core1|Add4~48_combout\ & ((\key[115]~input_o\ & (\core1|Add7~37\ & VCC)) # (!\key[115]~input_o\ & (!\core1|Add7~37\)))) # (!\core1|Add4~48_combout\ & ((\key[115]~input_o\ & (!\core1|Add7~37\)) # (!\key[115]~input_o\ & 
-- ((\core1|Add7~37\) # (GND)))))
-- \core1|Add7~39\ = CARRY((\core1|Add4~48_combout\ & (!\key[115]~input_o\ & !\core1|Add7~37\)) # (!\core1|Add4~48_combout\ & ((!\core1|Add7~37\) # (!\key[115]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \core1|Add4~48_combout\,
	datab => \key[115]~input_o\,
	datad => VCC,
	cin => \core1|Add7~37\,
	combout => \core1|Add7~38_combout\,
	cout => \core1|Add7~39\);

-- Location: LCCOMB_X21_Y11_N16
\core1|RESULT~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|RESULT~51_combout\ = \core1|Add5~30_combout\ $ (\core1|Add6~38_combout\ $ (\core1|Add7~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \core1|Add5~30_combout\,
	datac => \core1|Add6~38_combout\,
	datad => \core1|Add7~38_combout\,
	combout => \core1|RESULT~51_combout\);

-- Location: LCCOMB_X17_Y11_N6
\core1|Add8~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add8~38_combout\ = (\core1|RESULT~51_combout\ & ((\vi[51]~input_o\ & (\core1|Add8~37\ & VCC)) # (!\vi[51]~input_o\ & (!\core1|Add8~37\)))) # (!\core1|RESULT~51_combout\ & ((\vi[51]~input_o\ & (!\core1|Add8~37\)) # (!\vi[51]~input_o\ & 
-- ((\core1|Add8~37\) # (GND)))))
-- \core1|Add8~39\ = CARRY((\core1|RESULT~51_combout\ & (!\vi[51]~input_o\ & !\core1|Add8~37\)) # (!\core1|RESULT~51_combout\ & ((!\core1|Add8~37\) # (!\vi[51]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \core1|RESULT~51_combout\,
	datab => \vi[51]~input_o\,
	datad => VCC,
	cin => \core1|Add8~37\,
	combout => \core1|Add8~38_combout\,
	cout => \core1|Add8~39\);

-- Location: LCCOMB_X20_Y15_N8
\core1|Add6~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add6~40_combout\ = (\core1|Add4~40_combout\ & ((GND) # (!\core1|Add6~39\))) # (!\core1|Add4~40_combout\ & (\core1|Add6~39\ $ (GND)))
-- \core1|Add6~41\ = CARRY((\core1|Add4~40_combout\) # (!\core1|Add6~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \core1|Add4~40_combout\,
	datad => VCC,
	cin => \core1|Add6~39\,
	combout => \core1|Add6~40_combout\,
	cout => \core1|Add6~41\);

-- Location: IOIBUF_X41_Y11_N1
\key[84]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(84),
	o => \key[84]~input_o\);

-- Location: LCCOMB_X22_Y15_N4
\core1|Add5~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add5~32_combout\ = ((\core1|Add4~32_combout\ $ (\key[84]~input_o\ $ (!\core1|Add5~31\)))) # (GND)
-- \core1|Add5~33\ = CARRY((\core1|Add4~32_combout\ & ((\key[84]~input_o\) # (!\core1|Add5~31\))) # (!\core1|Add4~32_combout\ & (\key[84]~input_o\ & !\core1|Add5~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \core1|Add4~32_combout\,
	datab => \key[84]~input_o\,
	datad => VCC,
	cin => \core1|Add5~31\,
	combout => \core1|Add5~32_combout\,
	cout => \core1|Add5~33\);

-- Location: LCCOMB_X19_Y15_N8
\core1|RESULT~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|RESULT~52_combout\ = \core1|Add7~40_combout\ $ (\core1|Add6~40_combout\ $ (\core1|Add5~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \core1|Add7~40_combout\,
	datab => \core1|Add6~40_combout\,
	datac => \core1|Add5~32_combout\,
	combout => \core1|RESULT~52_combout\);

-- Location: LCCOMB_X17_Y11_N8
\core1|Add8~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add8~40_combout\ = ((\core1|RESULT~52_combout\ $ (\vi[52]~input_o\ $ (!\core1|Add8~39\)))) # (GND)
-- \core1|Add8~41\ = CARRY((\core1|RESULT~52_combout\ & ((\vi[52]~input_o\) # (!\core1|Add8~39\))) # (!\core1|RESULT~52_combout\ & (\vi[52]~input_o\ & !\core1|Add8~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \core1|RESULT~52_combout\,
	datab => \vi[52]~input_o\,
	datad => VCC,
	cin => \core1|Add8~39\,
	combout => \core1|Add8~40_combout\,
	cout => \core1|Add8~41\);

-- Location: IOIBUF_X41_Y19_N22
\key[85]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(85),
	o => \key[85]~input_o\);

-- Location: LCCOMB_X22_Y15_N6
\core1|Add5~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add5~34_combout\ = (\core1|Add4~34_combout\ & ((\key[85]~input_o\ & (\core1|Add5~33\ & VCC)) # (!\key[85]~input_o\ & (!\core1|Add5~33\)))) # (!\core1|Add4~34_combout\ & ((\key[85]~input_o\ & (!\core1|Add5~33\)) # (!\key[85]~input_o\ & 
-- ((\core1|Add5~33\) # (GND)))))
-- \core1|Add5~35\ = CARRY((\core1|Add4~34_combout\ & (!\key[85]~input_o\ & !\core1|Add5~33\)) # (!\core1|Add4~34_combout\ & ((!\core1|Add5~33\) # (!\key[85]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \core1|Add4~34_combout\,
	datab => \key[85]~input_o\,
	datad => VCC,
	cin => \core1|Add5~33\,
	combout => \core1|Add5~34_combout\,
	cout => \core1|Add5~35\);

-- Location: LCCOMB_X20_Y15_N10
\core1|Add6~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add6~42_combout\ = (\core1|Add4~42_combout\ & (\core1|Add6~41\ & VCC)) # (!\core1|Add4~42_combout\ & (!\core1|Add6~41\))
-- \core1|Add6~43\ = CARRY((!\core1|Add4~42_combout\ & !\core1|Add6~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \core1|Add4~42_combout\,
	datad => VCC,
	cin => \core1|Add6~41\,
	combout => \core1|Add6~42_combout\,
	cout => \core1|Add6~43\);

-- Location: IOIBUF_X35_Y0_N22
\key[116]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(116),
	o => \key[116]~input_o\);

-- Location: LCCOMB_X23_Y15_N10
\core1|Add7~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add7~42_combout\ = (\key[117]~input_o\ & ((\core1|Add4~52_combout\ & (\core1|Add7~41\ & VCC)) # (!\core1|Add4~52_combout\ & (!\core1|Add7~41\)))) # (!\key[117]~input_o\ & ((\core1|Add4~52_combout\ & (!\core1|Add7~41\)) # (!\core1|Add4~52_combout\ & 
-- ((\core1|Add7~41\) # (GND)))))
-- \core1|Add7~43\ = CARRY((\key[117]~input_o\ & (!\core1|Add4~52_combout\ & !\core1|Add7~41\)) # (!\key[117]~input_o\ & ((!\core1|Add7~41\) # (!\core1|Add4~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key[117]~input_o\,
	datab => \core1|Add4~52_combout\,
	datad => VCC,
	cin => \core1|Add7~41\,
	combout => \core1|Add7~42_combout\,
	cout => \core1|Add7~43\);

-- Location: LCCOMB_X23_Y14_N16
\core1|RESULT~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|RESULT~53_combout\ = \core1|Add5~34_combout\ $ (\core1|Add6~42_combout\ $ (\core1|Add7~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \core1|Add5~34_combout\,
	datac => \core1|Add6~42_combout\,
	datad => \core1|Add7~42_combout\,
	combout => \core1|RESULT~53_combout\);

-- Location: LCCOMB_X17_Y11_N10
\core1|Add8~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add8~42_combout\ = (\core1|RESULT~53_combout\ & ((\vi[53]~input_o\ & (\core1|Add8~41\ & VCC)) # (!\vi[53]~input_o\ & (!\core1|Add8~41\)))) # (!\core1|RESULT~53_combout\ & ((\vi[53]~input_o\ & (!\core1|Add8~41\)) # (!\vi[53]~input_o\ & 
-- ((\core1|Add8~41\) # (GND)))))
-- \core1|Add8~43\ = CARRY((\core1|RESULT~53_combout\ & (!\vi[53]~input_o\ & !\core1|Add8~41\)) # (!\core1|RESULT~53_combout\ & ((!\core1|Add8~41\) # (!\vi[53]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \core1|RESULT~53_combout\,
	datab => \vi[53]~input_o\,
	datad => VCC,
	cin => \core1|Add8~41\,
	combout => \core1|Add8~42_combout\,
	cout => \core1|Add8~43\);

-- Location: LCCOMB_X20_Y15_N12
\core1|Add6~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add6~44_combout\ = (\core1|Add4~44_combout\ & (\core1|Add6~43\ $ (GND))) # (!\core1|Add4~44_combout\ & (!\core1|Add6~43\ & VCC))
-- \core1|Add6~45\ = CARRY((\core1|Add4~44_combout\ & !\core1|Add6~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \core1|Add4~44_combout\,
	datad => VCC,
	cin => \core1|Add6~43\,
	combout => \core1|Add6~44_combout\,
	cout => \core1|Add6~45\);

-- Location: IOIBUF_X26_Y29_N8
\key[86]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(86),
	o => \key[86]~input_o\);

-- Location: LCCOMB_X22_Y15_N8
\core1|Add5~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add5~36_combout\ = ((\core1|Add4~36_combout\ $ (\key[86]~input_o\ $ (!\core1|Add5~35\)))) # (GND)
-- \core1|Add5~37\ = CARRY((\core1|Add4~36_combout\ & ((\key[86]~input_o\) # (!\core1|Add5~35\))) # (!\core1|Add4~36_combout\ & (\key[86]~input_o\ & !\core1|Add5~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \core1|Add4~36_combout\,
	datab => \key[86]~input_o\,
	datad => VCC,
	cin => \core1|Add5~35\,
	combout => \core1|Add5~36_combout\,
	cout => \core1|Add5~37\);

-- Location: LCCOMB_X23_Y15_N12
\core1|Add7~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add7~44_combout\ = ((\key[118]~input_o\ $ (\core1|Add4~54_combout\ $ (!\core1|Add7~43\)))) # (GND)
-- \core1|Add7~45\ = CARRY((\key[118]~input_o\ & ((\core1|Add4~54_combout\) # (!\core1|Add7~43\))) # (!\key[118]~input_o\ & (\core1|Add4~54_combout\ & !\core1|Add7~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key[118]~input_o\,
	datab => \core1|Add4~54_combout\,
	datad => VCC,
	cin => \core1|Add7~43\,
	combout => \core1|Add7~44_combout\,
	cout => \core1|Add7~45\);

-- Location: LCCOMB_X19_Y14_N0
\core1|RESULT~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|RESULT~54_combout\ = \core1|Add6~44_combout\ $ (\core1|Add5~36_combout\ $ (\core1|Add7~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \core1|Add6~44_combout\,
	datac => \core1|Add5~36_combout\,
	datad => \core1|Add7~44_combout\,
	combout => \core1|RESULT~54_combout\);

-- Location: LCCOMB_X17_Y11_N12
\core1|Add8~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add8~44_combout\ = ((\vi[54]~input_o\ $ (\core1|RESULT~54_combout\ $ (!\core1|Add8~43\)))) # (GND)
-- \core1|Add8~45\ = CARRY((\vi[54]~input_o\ & ((\core1|RESULT~54_combout\) # (!\core1|Add8~43\))) # (!\vi[54]~input_o\ & (\core1|RESULT~54_combout\ & !\core1|Add8~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vi[54]~input_o\,
	datab => \core1|RESULT~54_combout\,
	datad => VCC,
	cin => \core1|Add8~43\,
	combout => \core1|Add8~44_combout\,
	cout => \core1|Add8~45\);

-- Location: LCCOMB_X22_Y15_N10
\core1|Add5~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add5~38_combout\ = (\key[87]~input_o\ & ((\core1|Add4~38_combout\ & (\core1|Add5~37\ & VCC)) # (!\core1|Add4~38_combout\ & (!\core1|Add5~37\)))) # (!\key[87]~input_o\ & ((\core1|Add4~38_combout\ & (!\core1|Add5~37\)) # (!\core1|Add4~38_combout\ & 
-- ((\core1|Add5~37\) # (GND)))))
-- \core1|Add5~39\ = CARRY((\key[87]~input_o\ & (!\core1|Add4~38_combout\ & !\core1|Add5~37\)) # (!\key[87]~input_o\ & ((!\core1|Add5~37\) # (!\core1|Add4~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key[87]~input_o\,
	datab => \core1|Add4~38_combout\,
	datad => VCC,
	cin => \core1|Add5~37\,
	combout => \core1|Add5~38_combout\,
	cout => \core1|Add5~39\);

-- Location: LCCOMB_X23_Y15_N14
\core1|Add7~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add7~46_combout\ = (\key[119]~input_o\ & ((\core1|Add4~56_combout\ & (\core1|Add7~45\ & VCC)) # (!\core1|Add4~56_combout\ & (!\core1|Add7~45\)))) # (!\key[119]~input_o\ & ((\core1|Add4~56_combout\ & (!\core1|Add7~45\)) # (!\core1|Add4~56_combout\ & 
-- ((\core1|Add7~45\) # (GND)))))
-- \core1|Add7~47\ = CARRY((\key[119]~input_o\ & (!\core1|Add4~56_combout\ & !\core1|Add7~45\)) # (!\key[119]~input_o\ & ((!\core1|Add7~45\) # (!\core1|Add4~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key[119]~input_o\,
	datab => \core1|Add4~56_combout\,
	datad => VCC,
	cin => \core1|Add7~45\,
	combout => \core1|Add7~46_combout\,
	cout => \core1|Add7~47\);

-- Location: LCCOMB_X22_Y11_N16
\core1|RESULT~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|RESULT~55_combout\ = \core1|Add6~46_combout\ $ (\core1|Add5~38_combout\ $ (\core1|Add7~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \core1|Add6~46_combout\,
	datab => \core1|Add5~38_combout\,
	datac => \core1|Add7~46_combout\,
	combout => \core1|RESULT~55_combout\);

-- Location: LCCOMB_X17_Y11_N14
\core1|Add8~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add8~46_combout\ = (\vi[55]~input_o\ & ((\core1|RESULT~55_combout\ & (\core1|Add8~45\ & VCC)) # (!\core1|RESULT~55_combout\ & (!\core1|Add8~45\)))) # (!\vi[55]~input_o\ & ((\core1|RESULT~55_combout\ & (!\core1|Add8~45\)) # 
-- (!\core1|RESULT~55_combout\ & ((\core1|Add8~45\) # (GND)))))
-- \core1|Add8~47\ = CARRY((\vi[55]~input_o\ & (!\core1|RESULT~55_combout\ & !\core1|Add8~45\)) # (!\vi[55]~input_o\ & ((!\core1|Add8~45\) # (!\core1|RESULT~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vi[55]~input_o\,
	datab => \core1|RESULT~55_combout\,
	datad => VCC,
	cin => \core1|Add8~45\,
	combout => \core1|Add8~46_combout\,
	cout => \core1|Add8~47\);

-- Location: LCCOMB_X20_Y15_N16
\core1|Add6~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add6~48_combout\ = (\core1|Add4~48_combout\ & (\core1|Add6~47\ $ (GND))) # (!\core1|Add4~48_combout\ & (!\core1|Add6~47\ & VCC))
-- \core1|Add6~49\ = CARRY((\core1|Add4~48_combout\ & !\core1|Add6~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \core1|Add4~48_combout\,
	datad => VCC,
	cin => \core1|Add6~47\,
	combout => \core1|Add6~48_combout\,
	cout => \core1|Add6~49\);

-- Location: IOIBUF_X41_Y6_N1
\key[120]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(120),
	o => \key[120]~input_o\);

-- Location: LCCOMB_X23_Y15_N16
\core1|Add7~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add7~48_combout\ = ((\core1|Add4~58_combout\ $ (\key[120]~input_o\ $ (!\core1|Add7~47\)))) # (GND)
-- \core1|Add7~49\ = CARRY((\core1|Add4~58_combout\ & ((\key[120]~input_o\) # (!\core1|Add7~47\))) # (!\core1|Add4~58_combout\ & (\key[120]~input_o\ & !\core1|Add7~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \core1|Add4~58_combout\,
	datab => \key[120]~input_o\,
	datad => VCC,
	cin => \core1|Add7~47\,
	combout => \core1|Add7~48_combout\,
	cout => \core1|Add7~49\);

-- Location: LCCOMB_X23_Y11_N24
\core1|RESULT~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|RESULT~56_combout\ = \core1|Add5~40_combout\ $ (\core1|Add6~48_combout\ $ (\core1|Add7~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \core1|Add5~40_combout\,
	datac => \core1|Add6~48_combout\,
	datad => \core1|Add7~48_combout\,
	combout => \core1|RESULT~56_combout\);

-- Location: LCCOMB_X17_Y11_N16
\core1|Add8~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add8~48_combout\ = ((\core1|RESULT~56_combout\ $ (\vi[56]~input_o\ $ (!\core1|Add8~47\)))) # (GND)
-- \core1|Add8~49\ = CARRY((\core1|RESULT~56_combout\ & ((\vi[56]~input_o\) # (!\core1|Add8~47\))) # (!\core1|RESULT~56_combout\ & (\vi[56]~input_o\ & !\core1|Add8~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \core1|RESULT~56_combout\,
	datab => \vi[56]~input_o\,
	datad => VCC,
	cin => \core1|Add8~47\,
	combout => \core1|Add8~48_combout\,
	cout => \core1|Add8~49\);

-- Location: LCCOMB_X23_Y15_N18
\core1|Add7~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add7~50_combout\ = (\key[121]~input_o\ & ((\core1|Add4~60_combout\ & (\core1|Add7~49\ & VCC)) # (!\core1|Add4~60_combout\ & (!\core1|Add7~49\)))) # (!\key[121]~input_o\ & ((\core1|Add4~60_combout\ & (!\core1|Add7~49\)) # (!\core1|Add4~60_combout\ & 
-- ((\core1|Add7~49\) # (GND)))))
-- \core1|Add7~51\ = CARRY((\key[121]~input_o\ & (!\core1|Add4~60_combout\ & !\core1|Add7~49\)) # (!\key[121]~input_o\ & ((!\core1|Add7~49\) # (!\core1|Add4~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key[121]~input_o\,
	datab => \core1|Add4~60_combout\,
	datad => VCC,
	cin => \core1|Add7~49\,
	combout => \core1|Add7~50_combout\,
	cout => \core1|Add7~51\);

-- Location: LCCOMB_X22_Y15_N14
\core1|Add5~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add5~42_combout\ = (\key[89]~input_o\ & ((\core1|Add4~42_combout\ & (\core1|Add5~41\ & VCC)) # (!\core1|Add4~42_combout\ & (!\core1|Add5~41\)))) # (!\key[89]~input_o\ & ((\core1|Add4~42_combout\ & (!\core1|Add5~41\)) # (!\core1|Add4~42_combout\ & 
-- ((\core1|Add5~41\) # (GND)))))
-- \core1|Add5~43\ = CARRY((\key[89]~input_o\ & (!\core1|Add4~42_combout\ & !\core1|Add5~41\)) # (!\key[89]~input_o\ & ((!\core1|Add5~41\) # (!\core1|Add4~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key[89]~input_o\,
	datab => \core1|Add4~42_combout\,
	datad => VCC,
	cin => \core1|Add5~41\,
	combout => \core1|Add5~42_combout\,
	cout => \core1|Add5~43\);

-- Location: LCCOMB_X22_Y14_N24
\core1|RESULT~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|RESULT~57_combout\ = \core1|Add6~50_combout\ $ (\core1|Add7~50_combout\ $ (\core1|Add5~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \core1|Add6~50_combout\,
	datab => \core1|Add7~50_combout\,
	datac => \core1|Add5~42_combout\,
	combout => \core1|RESULT~57_combout\);

-- Location: LCCOMB_X17_Y11_N18
\core1|Add8~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add8~50_combout\ = (\vi[57]~input_o\ & ((\core1|RESULT~57_combout\ & (\core1|Add8~49\ & VCC)) # (!\core1|RESULT~57_combout\ & (!\core1|Add8~49\)))) # (!\vi[57]~input_o\ & ((\core1|RESULT~57_combout\ & (!\core1|Add8~49\)) # 
-- (!\core1|RESULT~57_combout\ & ((\core1|Add8~49\) # (GND)))))
-- \core1|Add8~51\ = CARRY((\vi[57]~input_o\ & (!\core1|RESULT~57_combout\ & !\core1|Add8~49\)) # (!\vi[57]~input_o\ & ((!\core1|Add8~49\) # (!\core1|RESULT~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vi[57]~input_o\,
	datab => \core1|RESULT~57_combout\,
	datad => VCC,
	cin => \core1|Add8~49\,
	combout => \core1|Add8~50_combout\,
	cout => \core1|Add8~51\);

-- Location: LCCOMB_X20_Y15_N20
\core1|Add6~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add6~52_combout\ = (\core1|Add4~52_combout\ & ((GND) # (!\core1|Add6~51\))) # (!\core1|Add4~52_combout\ & (\core1|Add6~51\ $ (GND)))
-- \core1|Add6~53\ = CARRY((\core1|Add4~52_combout\) # (!\core1|Add6~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \core1|Add4~52_combout\,
	datad => VCC,
	cin => \core1|Add6~51\,
	combout => \core1|Add6~52_combout\,
	cout => \core1|Add6~53\);

-- Location: LCCOMB_X23_Y15_N20
\core1|Add7~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add7~52_combout\ = ((\key[122]~input_o\ $ (\core1|Add4~62_combout\ $ (!\core1|Add7~51\)))) # (GND)
-- \core1|Add7~53\ = CARRY((\key[122]~input_o\ & ((\core1|Add4~62_combout\) # (!\core1|Add7~51\))) # (!\key[122]~input_o\ & (\core1|Add4~62_combout\ & !\core1|Add7~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key[122]~input_o\,
	datab => \core1|Add4~62_combout\,
	datad => VCC,
	cin => \core1|Add7~51\,
	combout => \core1|Add7~52_combout\,
	cout => \core1|Add7~53\);

-- Location: LCCOMB_X16_Y15_N24
\core1|RESULT~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|RESULT~58_combout\ = \core1|Add5~44_combout\ $ (\core1|Add6~52_combout\ $ (\core1|Add7~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \core1|Add5~44_combout\,
	datac => \core1|Add6~52_combout\,
	datad => \core1|Add7~52_combout\,
	combout => \core1|RESULT~58_combout\);

-- Location: LCCOMB_X17_Y11_N20
\core1|Add8~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add8~52_combout\ = ((\vi[58]~input_o\ $ (\core1|RESULT~58_combout\ $ (!\core1|Add8~51\)))) # (GND)
-- \core1|Add8~53\ = CARRY((\vi[58]~input_o\ & ((\core1|RESULT~58_combout\) # (!\core1|Add8~51\))) # (!\vi[58]~input_o\ & (\core1|RESULT~58_combout\ & !\core1|Add8~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vi[58]~input_o\,
	datab => \core1|RESULT~58_combout\,
	datad => VCC,
	cin => \core1|Add8~51\,
	combout => \core1|Add8~52_combout\,
	cout => \core1|Add8~53\);

-- Location: LCCOMB_X20_Y15_N22
\core1|Add6~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add6~54_combout\ = (\core1|Add4~54_combout\ & (\core1|Add6~53\ & VCC)) # (!\core1|Add4~54_combout\ & (!\core1|Add6~53\))
-- \core1|Add6~55\ = CARRY((!\core1|Add4~54_combout\ & !\core1|Add6~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \core1|Add4~54_combout\,
	datad => VCC,
	cin => \core1|Add6~53\,
	combout => \core1|Add6~54_combout\,
	cout => \core1|Add6~55\);

-- Location: IOIBUF_X41_Y18_N8
\key[90]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(90),
	o => \key[90]~input_o\);

-- Location: LCCOMB_X22_Y15_N18
\core1|Add5~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add5~46_combout\ = (\key[91]~input_o\ & ((\core1|Add4~46_combout\ & (\core1|Add5~45\ & VCC)) # (!\core1|Add4~46_combout\ & (!\core1|Add5~45\)))) # (!\key[91]~input_o\ & ((\core1|Add4~46_combout\ & (!\core1|Add5~45\)) # (!\core1|Add4~46_combout\ & 
-- ((\core1|Add5~45\) # (GND)))))
-- \core1|Add5~47\ = CARRY((\key[91]~input_o\ & (!\core1|Add4~46_combout\ & !\core1|Add5~45\)) # (!\key[91]~input_o\ & ((!\core1|Add5~45\) # (!\core1|Add4~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key[91]~input_o\,
	datab => \core1|Add4~46_combout\,
	datad => VCC,
	cin => \core1|Add5~45\,
	combout => \core1|Add5~46_combout\,
	cout => \core1|Add5~47\);

-- Location: LCCOMB_X21_Y17_N8
\core1|RESULT~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|RESULT~59_combout\ = \core1|Add7~54_combout\ $ (\core1|Add6~54_combout\ $ (\core1|Add5~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \core1|Add7~54_combout\,
	datab => \core1|Add6~54_combout\,
	datac => \core1|Add5~46_combout\,
	combout => \core1|RESULT~59_combout\);

-- Location: LCCOMB_X17_Y11_N22
\core1|Add8~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add8~54_combout\ = (\vi[59]~input_o\ & ((\core1|RESULT~59_combout\ & (\core1|Add8~53\ & VCC)) # (!\core1|RESULT~59_combout\ & (!\core1|Add8~53\)))) # (!\vi[59]~input_o\ & ((\core1|RESULT~59_combout\ & (!\core1|Add8~53\)) # 
-- (!\core1|RESULT~59_combout\ & ((\core1|Add8~53\) # (GND)))))
-- \core1|Add8~55\ = CARRY((\vi[59]~input_o\ & (!\core1|RESULT~59_combout\ & !\core1|Add8~53\)) # (!\vi[59]~input_o\ & ((!\core1|Add8~53\) # (!\core1|RESULT~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vi[59]~input_o\,
	datab => \core1|RESULT~59_combout\,
	datad => VCC,
	cin => \core1|Add8~53\,
	combout => \core1|Add8~54_combout\,
	cout => \core1|Add8~55\);

-- Location: LCCOMB_X20_Y15_N24
\core1|Add6~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add6~56_combout\ = (\core1|Add4~56_combout\ & ((GND) # (!\core1|Add6~55\))) # (!\core1|Add4~56_combout\ & (\core1|Add6~55\ $ (GND)))
-- \core1|Add6~57\ = CARRY((\core1|Add4~56_combout\) # (!\core1|Add6~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \core1|Add4~56_combout\,
	datad => VCC,
	cin => \core1|Add6~55\,
	combout => \core1|Add6~56_combout\,
	cout => \core1|Add6~57\);

-- Location: IOIBUF_X30_Y29_N29
\key[92]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(92),
	o => \key[92]~input_o\);

-- Location: LCCOMB_X22_Y15_N20
\core1|Add5~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add5~48_combout\ = ((\core1|Add4~48_combout\ $ (\key[92]~input_o\ $ (!\core1|Add5~47\)))) # (GND)
-- \core1|Add5~49\ = CARRY((\core1|Add4~48_combout\ & ((\key[92]~input_o\) # (!\core1|Add5~47\))) # (!\core1|Add4~48_combout\ & (\key[92]~input_o\ & !\core1|Add5~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \core1|Add4~48_combout\,
	datab => \key[92]~input_o\,
	datad => VCC,
	cin => \core1|Add5~47\,
	combout => \core1|Add5~48_combout\,
	cout => \core1|Add5~49\);

-- Location: IOIBUF_X28_Y29_N15
\key[124]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(124),
	o => \key[124]~input_o\);

-- Location: IOIBUF_X28_Y29_N1
\key[123]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(123),
	o => \key[123]~input_o\);

-- Location: LCCOMB_X23_Y15_N24
\core1|Add7~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add7~56_combout\ = (\key[124]~input_o\ & (\core1|Add7~55\ $ (GND))) # (!\key[124]~input_o\ & (!\core1|Add7~55\ & VCC))
-- \core1|Add7~57\ = CARRY((\key[124]~input_o\ & !\core1|Add7~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key[124]~input_o\,
	datad => VCC,
	cin => \core1|Add7~55\,
	combout => \core1|Add7~56_combout\,
	cout => \core1|Add7~57\);

-- Location: LCCOMB_X17_Y15_N8
\core1|RESULT~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|RESULT~60_combout\ = \core1|Add6~56_combout\ $ (\core1|Add5~48_combout\ $ (\core1|Add7~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \core1|Add6~56_combout\,
	datac => \core1|Add5~48_combout\,
	datad => \core1|Add7~56_combout\,
	combout => \core1|RESULT~60_combout\);

-- Location: LCCOMB_X17_Y11_N24
\core1|Add8~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add8~56_combout\ = ((\core1|RESULT~60_combout\ $ (\vi[60]~input_o\ $ (!\core1|Add8~55\)))) # (GND)
-- \core1|Add8~57\ = CARRY((\core1|RESULT~60_combout\ & ((\vi[60]~input_o\) # (!\core1|Add8~55\))) # (!\core1|RESULT~60_combout\ & (\vi[60]~input_o\ & !\core1|Add8~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \core1|RESULT~60_combout\,
	datab => \vi[60]~input_o\,
	datad => VCC,
	cin => \core1|Add8~55\,
	combout => \core1|Add8~56_combout\,
	cout => \core1|Add8~57\);

-- Location: LCCOMB_X22_Y15_N22
\core1|Add5~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add5~50_combout\ = (\key[93]~input_o\ & ((\core1|Add4~50_combout\ & (\core1|Add5~49\ & VCC)) # (!\core1|Add4~50_combout\ & (!\core1|Add5~49\)))) # (!\key[93]~input_o\ & ((\core1|Add4~50_combout\ & (!\core1|Add5~49\)) # (!\core1|Add4~50_combout\ & 
-- ((\core1|Add5~49\) # (GND)))))
-- \core1|Add5~51\ = CARRY((\key[93]~input_o\ & (!\core1|Add4~50_combout\ & !\core1|Add5~49\)) # (!\key[93]~input_o\ & ((!\core1|Add5~49\) # (!\core1|Add4~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key[93]~input_o\,
	datab => \core1|Add4~50_combout\,
	datad => VCC,
	cin => \core1|Add5~49\,
	combout => \core1|Add5~50_combout\,
	cout => \core1|Add5~51\);

-- Location: LCCOMB_X20_Y15_N26
\core1|Add6~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add6~58_combout\ = (\core1|Add4~58_combout\ & (!\core1|Add6~57\)) # (!\core1|Add4~58_combout\ & ((\core1|Add6~57\) # (GND)))
-- \core1|Add6~59\ = CARRY((!\core1|Add6~57\) # (!\core1|Add4~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \core1|Add4~58_combout\,
	datad => VCC,
	cin => \core1|Add6~57\,
	combout => \core1|Add6~58_combout\,
	cout => \core1|Add6~59\);

-- Location: LCCOMB_X21_Y15_N8
\core1|RESULT~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|RESULT~61_combout\ = \core1|Add7~58_combout\ $ (\core1|Add5~50_combout\ $ (\core1|Add6~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \core1|Add7~58_combout\,
	datab => \core1|Add5~50_combout\,
	datac => \core1|Add6~58_combout\,
	combout => \core1|RESULT~61_combout\);

-- Location: LCCOMB_X17_Y11_N26
\core1|Add8~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add8~58_combout\ = (\vi[61]~input_o\ & ((\core1|RESULT~61_combout\ & (\core1|Add8~57\ & VCC)) # (!\core1|RESULT~61_combout\ & (!\core1|Add8~57\)))) # (!\vi[61]~input_o\ & ((\core1|RESULT~61_combout\ & (!\core1|Add8~57\)) # 
-- (!\core1|RESULT~61_combout\ & ((\core1|Add8~57\) # (GND)))))
-- \core1|Add8~59\ = CARRY((\vi[61]~input_o\ & (!\core1|RESULT~61_combout\ & !\core1|Add8~57\)) # (!\vi[61]~input_o\ & ((!\core1|Add8~57\) # (!\core1|RESULT~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vi[61]~input_o\,
	datab => \core1|RESULT~61_combout\,
	datad => VCC,
	cin => \core1|Add8~57\,
	combout => \core1|Add8~58_combout\,
	cout => \core1|Add8~59\);

-- Location: IOIBUF_X0_Y4_N8
\vi[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vi(62),
	o => \vi[62]~input_o\);

-- Location: LCCOMB_X22_Y15_N24
\core1|Add5~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add5~52_combout\ = ((\key[94]~input_o\ $ (\core1|Add4~52_combout\ $ (!\core1|Add5~51\)))) # (GND)
-- \core1|Add5~53\ = CARRY((\key[94]~input_o\ & ((\core1|Add4~52_combout\) # (!\core1|Add5~51\))) # (!\key[94]~input_o\ & (\core1|Add4~52_combout\ & !\core1|Add5~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key[94]~input_o\,
	datab => \core1|Add4~52_combout\,
	datad => VCC,
	cin => \core1|Add5~51\,
	combout => \core1|Add5~52_combout\,
	cout => \core1|Add5~53\);

-- Location: LCCOMB_X20_Y15_N28
\core1|Add6~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add6~60_combout\ = (\core1|Add4~60_combout\ & (\core1|Add6~59\ $ (GND))) # (!\core1|Add4~60_combout\ & (!\core1|Add6~59\ & VCC))
-- \core1|Add6~61\ = CARRY((\core1|Add4~60_combout\ & !\core1|Add6~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \core1|Add4~60_combout\,
	datad => VCC,
	cin => \core1|Add6~59\,
	combout => \core1|Add6~60_combout\,
	cout => \core1|Add6~61\);

-- Location: IOIBUF_X32_Y29_N1
\key[125]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(125),
	o => \key[125]~input_o\);

-- Location: LCCOMB_X23_Y15_N28
\core1|Add7~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add7~60_combout\ = (\key[126]~input_o\ & (\core1|Add7~59\ $ (GND))) # (!\key[126]~input_o\ & (!\core1|Add7~59\ & VCC))
-- \core1|Add7~61\ = CARRY((\key[126]~input_o\ & !\core1|Add7~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key[126]~input_o\,
	datad => VCC,
	cin => \core1|Add7~59\,
	combout => \core1|Add7~60_combout\,
	cout => \core1|Add7~61\);

-- Location: LCCOMB_X24_Y15_N0
\core1|RESULT~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|RESULT~62_combout\ = \core1|Add5~52_combout\ $ (\core1|Add6~60_combout\ $ (\core1|Add7~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \core1|Add5~52_combout\,
	datac => \core1|Add6~60_combout\,
	datad => \core1|Add7~60_combout\,
	combout => \core1|RESULT~62_combout\);

-- Location: LCCOMB_X17_Y11_N28
\core1|Add8~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add8~60_combout\ = ((\vi[62]~input_o\ $ (\core1|RESULT~62_combout\ $ (!\core1|Add8~59\)))) # (GND)
-- \core1|Add8~61\ = CARRY((\vi[62]~input_o\ & ((\core1|RESULT~62_combout\) # (!\core1|Add8~59\))) # (!\vi[62]~input_o\ & (\core1|RESULT~62_combout\ & !\core1|Add8~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vi[62]~input_o\,
	datab => \core1|RESULT~62_combout\,
	datad => VCC,
	cin => \core1|Add8~59\,
	combout => \core1|Add8~60_combout\,
	cout => \core1|Add8~61\);

-- Location: LCCOMB_X20_Y15_N30
\core1|Add6~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add6~62_combout\ = \core1|Add4~62_combout\ $ (!\core1|Add6~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \core1|Add4~62_combout\,
	cin => \core1|Add6~61\,
	combout => \core1|Add6~62_combout\);

-- Location: IOIBUF_X30_Y0_N1
\key[95]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(95),
	o => \key[95]~input_o\);

-- Location: LCCOMB_X22_Y15_N26
\core1|Add5~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add5~54_combout\ = \core1|Add4~54_combout\ $ (\key[95]~input_o\ $ (\core1|Add5~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \core1|Add4~54_combout\,
	datab => \key[95]~input_o\,
	cin => \core1|Add5~53\,
	combout => \core1|Add5~54_combout\);

-- Location: IOIBUF_X32_Y29_N15
\key[127]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(127),
	o => \key[127]~input_o\);

-- Location: LCCOMB_X23_Y15_N30
\core1|Add7~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add7~62_combout\ = \core1|Add7~61\ $ (\key[127]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \key[127]~input_o\,
	cin => \core1|Add7~61\,
	combout => \core1|Add7~62_combout\);

-- Location: LCCOMB_X20_Y11_N24
\core1|RESULT~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|RESULT~63_combout\ = \core1|Add6~62_combout\ $ (\core1|Add5~54_combout\ $ (\core1|Add7~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \core1|Add6~62_combout\,
	datac => \core1|Add5~54_combout\,
	datad => \core1|Add7~62_combout\,
	combout => \core1|RESULT~63_combout\);

-- Location: LCCOMB_X17_Y11_N30
\core1|Add8~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \core1|Add8~62_combout\ = \vi[63]~input_o\ $ (\core1|Add8~61\ $ (\core1|RESULT~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vi[63]~input_o\,
	datad => \core1|RESULT~63_combout\,
	cin => \core1|Add8~61\,
	combout => \core1|Add8~62_combout\);

-- Location: IOIBUF_X0_Y14_N15
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: IOIBUF_X0_Y14_N22
\start~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start,
	o => \start~input_o\);

ww_vo(0) <= \vo[0]~output_o\;

ww_vo(1) <= \vo[1]~output_o\;

ww_vo(2) <= \vo[2]~output_o\;

ww_vo(3) <= \vo[3]~output_o\;

ww_vo(4) <= \vo[4]~output_o\;

ww_vo(5) <= \vo[5]~output_o\;

ww_vo(6) <= \vo[6]~output_o\;

ww_vo(7) <= \vo[7]~output_o\;

ww_vo(8) <= \vo[8]~output_o\;

ww_vo(9) <= \vo[9]~output_o\;

ww_vo(10) <= \vo[10]~output_o\;

ww_vo(11) <= \vo[11]~output_o\;

ww_vo(12) <= \vo[12]~output_o\;

ww_vo(13) <= \vo[13]~output_o\;

ww_vo(14) <= \vo[14]~output_o\;

ww_vo(15) <= \vo[15]~output_o\;

ww_vo(16) <= \vo[16]~output_o\;

ww_vo(17) <= \vo[17]~output_o\;

ww_vo(18) <= \vo[18]~output_o\;

ww_vo(19) <= \vo[19]~output_o\;

ww_vo(20) <= \vo[20]~output_o\;

ww_vo(21) <= \vo[21]~output_o\;

ww_vo(22) <= \vo[22]~output_o\;

ww_vo(23) <= \vo[23]~output_o\;

ww_vo(24) <= \vo[24]~output_o\;

ww_vo(25) <= \vo[25]~output_o\;

ww_vo(26) <= \vo[26]~output_o\;

ww_vo(27) <= \vo[27]~output_o\;

ww_vo(28) <= \vo[28]~output_o\;

ww_vo(29) <= \vo[29]~output_o\;

ww_vo(30) <= \vo[30]~output_o\;

ww_vo(31) <= \vo[31]~output_o\;

ww_vo(32) <= \vo[32]~output_o\;

ww_vo(33) <= \vo[33]~output_o\;

ww_vo(34) <= \vo[34]~output_o\;

ww_vo(35) <= \vo[35]~output_o\;

ww_vo(36) <= \vo[36]~output_o\;

ww_vo(37) <= \vo[37]~output_o\;

ww_vo(38) <= \vo[38]~output_o\;

ww_vo(39) <= \vo[39]~output_o\;

ww_vo(40) <= \vo[40]~output_o\;

ww_vo(41) <= \vo[41]~output_o\;

ww_vo(42) <= \vo[42]~output_o\;

ww_vo(43) <= \vo[43]~output_o\;

ww_vo(44) <= \vo[44]~output_o\;

ww_vo(45) <= \vo[45]~output_o\;

ww_vo(46) <= \vo[46]~output_o\;

ww_vo(47) <= \vo[47]~output_o\;

ww_vo(48) <= \vo[48]~output_o\;

ww_vo(49) <= \vo[49]~output_o\;

ww_vo(50) <= \vo[50]~output_o\;

ww_vo(51) <= \vo[51]~output_o\;

ww_vo(52) <= \vo[52]~output_o\;

ww_vo(53) <= \vo[53]~output_o\;

ww_vo(54) <= \vo[54]~output_o\;

ww_vo(55) <= \vo[55]~output_o\;

ww_vo(56) <= \vo[56]~output_o\;

ww_vo(57) <= \vo[57]~output_o\;

ww_vo(58) <= \vo[58]~output_o\;

ww_vo(59) <= \vo[59]~output_o\;

ww_vo(60) <= \vo[60]~output_o\;

ww_vo(61) <= \vo[61]~output_o\;

ww_vo(62) <= \vo[62]~output_o\;

ww_vo(63) <= \vo[63]~output_o\;

ww_mode <= \mode~output_o\;
END structure;


