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
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "01/09/2024 14:15:29"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ALU IS
    PORT (
	A : IN std_logic_vector(7 DOWNTO 0);
	B : IN std_logic_vector(7 DOWNTO 0);
	ALU_Sel : IN std_logic_vector(3 DOWNTO 0);
	ALU_Out : BUFFER std_logic_vector(7 DOWNTO 0);
	CarryOut : BUFFER std_logic
	);
END ALU;

-- Design Ports Information
-- ALU_Out[0]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Out[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Out[2]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Out[3]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Out[4]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Out[5]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Out[6]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Out[7]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CarryOut	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Sel[3]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Sel[0]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Sel[1]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Sel[2]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ALU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ALU_Sel : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_ALU_Out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_CarryOut : std_logic;
SIGNAL \Mux8~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALU_Out[0]~output_o\ : std_logic;
SIGNAL \ALU_Out[1]~output_o\ : std_logic;
SIGNAL \ALU_Out[2]~output_o\ : std_logic;
SIGNAL \ALU_Out[3]~output_o\ : std_logic;
SIGNAL \ALU_Out[4]~output_o\ : std_logic;
SIGNAL \ALU_Out[5]~output_o\ : std_logic;
SIGNAL \ALU_Out[6]~output_o\ : std_logic;
SIGNAL \ALU_Out[7]~output_o\ : std_logic;
SIGNAL \CarryOut~output_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \ALU_Sel[3]~input_o\ : std_logic;
SIGNAL \ALU_Sel[1]~input_o\ : std_logic;
SIGNAL \ALU_Sel[0]~input_o\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~0_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \ALU_Sel[2]~input_o\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux8~0clkctrl_outclk\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~2_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~4_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~2_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~6_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~1_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~2_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~4_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~7\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~8_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~1_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~6_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~2_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~9\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~10_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~4_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~3_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~7\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~8_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~11\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~12_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~9\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~10_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~6_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~13\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~14_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Add0~1_cout\ : std_logic;
SIGNAL \Add0~3_cout\ : std_logic;
SIGNAL \Add0~5_cout\ : std_logic;
SIGNAL \Add0~7_cout\ : std_logic;
SIGNAL \Add0~9_cout\ : std_logic;
SIGNAL \Add0~11_cout\ : std_logic;
SIGNAL \Add0~13_cout\ : std_logic;
SIGNAL \Add0~15_cout\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\ : std_logic_vector(9 DOWNTO 0);
SIGNAL ALU_Result : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_A <= A;
ww_B <= B;
ww_ALU_Sel <= ALU_Sel;
ALU_Out <= ww_ALU_Out;
CarryOut <= ww_CarryOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Mux8~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Mux8~0_combout\);

-- Location: IOOBUF_X33_Y14_N2
\ALU_Out[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALU_Result(0),
	devoe => ww_devoe,
	o => \ALU_Out[0]~output_o\);

-- Location: IOOBUF_X26_Y31_N9
\ALU_Out[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALU_Result(1),
	devoe => ww_devoe,
	o => \ALU_Out[1]~output_o\);

-- Location: IOOBUF_X24_Y31_N9
\ALU_Out[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALU_Result(2),
	devoe => ww_devoe,
	o => \ALU_Out[2]~output_o\);

-- Location: IOOBUF_X33_Y22_N2
\ALU_Out[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALU_Result(3),
	devoe => ww_devoe,
	o => \ALU_Out[3]~output_o\);

-- Location: IOOBUF_X29_Y31_N9
\ALU_Out[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALU_Result(4),
	devoe => ww_devoe,
	o => \ALU_Out[4]~output_o\);

-- Location: IOOBUF_X33_Y11_N2
\ALU_Out[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALU_Result(5),
	devoe => ww_devoe,
	o => \ALU_Out[5]~output_o\);

-- Location: IOOBUF_X33_Y14_N9
\ALU_Out[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALU_Result(6),
	devoe => ww_devoe,
	o => \ALU_Out[6]~output_o\);

-- Location: IOOBUF_X26_Y31_N2
\ALU_Out[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALU_Result(7),
	devoe => ww_devoe,
	o => \ALU_Out[7]~output_o\);

-- Location: IOOBUF_X33_Y12_N9
\CarryOut~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~16_combout\,
	devoe => ww_devoe,
	o => \CarryOut~output_o\);

-- Location: IOIBUF_X33_Y16_N1
\A[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X33_Y15_N8
\ALU_Sel[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALU_Sel(3),
	o => \ALU_Sel[3]~input_o\);

-- Location: IOIBUF_X33_Y15_N1
\ALU_Sel[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALU_Sel(1),
	o => \ALU_Sel[1]~input_o\);

-- Location: IOIBUF_X33_Y22_N8
\ALU_Sel[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALU_Sel(0),
	o => \ALU_Sel[0]~input_o\);

-- Location: LCCOMB_X32_Y22_N12
\Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\ALU_Sel[3]~input_o\ & ((\ALU_Sel[0]~input_o\))) # (!\ALU_Sel[3]~input_o\ & (\ALU_Sel[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[3]~input_o\,
	datac => \ALU_Sel[1]~input_o\,
	datad => \ALU_Sel[0]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: IOIBUF_X31_Y31_N8
\B[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X33_Y16_N8
\B[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LCCOMB_X31_Y22_N6
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(0) = LCELL(\B[1]~input_o\ $ (((\A[0]~input_o\ & \B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(0));

-- Location: LCCOMB_X31_Y24_N14
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~0_combout\ = (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(0) & (\B[1]~input_o\ $ (VCC))) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(0) & (\B[1]~input_o\ & VCC))
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~1\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(0) & \B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(0),
	datab => \B[1]~input_o\,
	datad => VCC,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~0_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~1\);

-- Location: LCCOMB_X32_Y25_N12
\Add1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\B[0]~input_o\ & (\A[0]~input_o\ $ (VCC))) # (!\B[0]~input_o\ & (\A[0]~input_o\ & VCC))
-- \Add1~1\ = CARRY((\B[0]~input_o\ & \A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X32_Y22_N2
\Mux0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\Mux0~0_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~0_combout\) # ((\ALU_Sel[3]~input_o\)))) # (!\Mux0~0_combout\ & (((\Add1~0_combout\ & !\ALU_Sel[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~0_combout\,
	datac => \Add1~0_combout\,
	datad => \ALU_Sel[3]~input_o\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X32_Y22_N0
\Mux0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (\A[0]~input_o\ & ((\Mux0~1_combout\) # ((\B[0]~input_o\ & \ALU_Sel[3]~input_o\)))) # (!\A[0]~input_o\ & (\Mux0~1_combout\ & ((\B[0]~input_o\) # (!\ALU_Sel[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \Mux0~1_combout\,
	datac => \B[0]~input_o\,
	datad => \ALU_Sel[3]~input_o\,
	combout => \Mux0~2_combout\);

-- Location: IOIBUF_X33_Y12_N1
\ALU_Sel[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALU_Sel(2),
	o => \ALU_Sel[2]~input_o\);

-- Location: LCCOMB_X32_Y16_N14
\Mux8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\ALU_Sel[2]~input_o\) # ((\ALU_Sel[3]~input_o\ & (\ALU_Sel[1]~input_o\)) # (!\ALU_Sel[3]~input_o\ & ((\ALU_Sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[3]~input_o\,
	datab => \ALU_Sel[1]~input_o\,
	datac => \ALU_Sel[2]~input_o\,
	datad => \ALU_Sel[0]~input_o\,
	combout => \Mux8~0_combout\);

-- Location: CLKCTRL_G8
\Mux8~0clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Mux8~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Mux8~0clkctrl_outclk\);

-- Location: LCCOMB_X32_Y22_N4
\ALU_Result[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- ALU_Result(0) = (GLOBAL(\Mux8~0clkctrl_outclk\) & ((ALU_Result(0)))) # (!GLOBAL(\Mux8~0clkctrl_outclk\) & (\Mux0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux0~2_combout\,
	datac => ALU_Result(0),
	datad => \Mux8~0clkctrl_outclk\,
	combout => ALU_Result(0));

-- Location: IOIBUF_X33_Y27_N1
\A[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X32_Y25_N14
\Add1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\B[1]~input_o\ & ((\A[1]~input_o\ & (\Add1~1\ & VCC)) # (!\A[1]~input_o\ & (!\Add1~1\)))) # (!\B[1]~input_o\ & ((\A[1]~input_o\ & (!\Add1~1\)) # (!\A[1]~input_o\ & ((\Add1~1\) # (GND)))))
-- \Add1~3\ = CARRY((\B[1]~input_o\ & (!\A[1]~input_o\ & !\Add1~1\)) # (!\B[1]~input_o\ & ((!\Add1~1\) # (!\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[1]~input_o\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X32_Y23_N28
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(1) = LCELL((\B[0]~input_o\ & (\B[1]~input_o\ $ (((\A[1]~input_o\))))) # (!\B[0]~input_o\ & (\B[1]~input_o\ & (!\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[0]~input_o\,
	datac => \A[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(1));

-- Location: LCCOMB_X31_Y24_N16
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~2_combout\ = (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(1) & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~1\)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(1) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~1\) # (GND)))
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~3\ = CARRY((!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~1\) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(1),
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~1\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~2_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~3\);

-- Location: LCCOMB_X31_Y22_N12
\Mux1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\ALU_Sel[3]~input_o\ & (((\Mux0~0_combout\)))) # (!\ALU_Sel[3]~input_o\ & ((\Mux0~0_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~2_combout\))) # (!\Mux0~0_combout\ & (\Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~2_combout\,
	datac => \ALU_Sel[3]~input_o\,
	datad => \Mux0~0_combout\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X31_Y22_N14
\Mux1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\Mux1~0_combout\ & ((\B[1]~input_o\) # ((\A[1]~input_o\) # (!\ALU_Sel[3]~input_o\)))) # (!\Mux1~0_combout\ & (\B[1]~input_o\ & (\ALU_Sel[3]~input_o\ & \A[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~0_combout\,
	datab => \B[1]~input_o\,
	datac => \ALU_Sel[3]~input_o\,
	datad => \A[1]~input_o\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X31_Y22_N20
\ALU_Result[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- ALU_Result(1) = (GLOBAL(\Mux8~0clkctrl_outclk\) & (ALU_Result(1))) # (!GLOBAL(\Mux8~0clkctrl_outclk\) & ((\Mux1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ALU_Result(1),
	datac => \Mux8~0clkctrl_outclk\,
	datad => \Mux1~1_combout\,
	combout => ALU_Result(1));

-- Location: IOIBUF_X33_Y25_N8
\B[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X33_Y27_N8
\A[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X32_Y25_N16
\Add1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = ((\B[2]~input_o\ $ (\A[2]~input_o\ $ (!\Add1~3\)))) # (GND)
-- \Add1~5\ = CARRY((\B[2]~input_o\ & ((\A[2]~input_o\) # (!\Add1~3\))) # (!\B[2]~input_o\ & (\A[2]~input_o\ & !\Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \A[2]~input_o\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: IOIBUF_X33_Y28_N1
\B[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X32_Y23_N2
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(0) = LCELL(\B[3]~input_o\ $ (((\B[2]~input_o\ & ((\A[0]~input_o\) # (\B[1]~input_o\))) # (!\B[2]~input_o\ & (\A[0]~input_o\ & \B[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \A[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(0));

-- Location: LCCOMB_X31_Y24_N12
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\ = \B[3]~input_o\ $ (((\B[1]~input_o\ & \B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\);

-- Location: LCCOMB_X32_Y25_N4
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(2) = LCELL((\B[0]~input_o\ & ((\B[1]~input_o\ $ (\A[2]~input_o\)))) # (!\B[0]~input_o\ & (!\A[1]~input_o\ & (\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[1]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[2]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(2));

-- Location: LCCOMB_X31_Y24_N0
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~0_combout\ = (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(2) $ (VCC))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(2) & VCC))
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~1\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\ & \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(2),
	datad => VCC,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~0_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~1\);

-- Location: LCCOMB_X31_Y24_N18
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~4_combout\ = ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(0) $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~0_combout\ $ 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~3\)))) # (GND)
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~5\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(0) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~0_combout\) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~3\))) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(0) & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~0_combout\ & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(0),
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~0_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~3\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~4_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~5\);

-- Location: LCCOMB_X32_Y22_N18
\Mux2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\Mux0~0_combout\ & (((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~4_combout\) # (\ALU_Sel[3]~input_o\)))) # (!\Mux0~0_combout\ & (\Add1~4_combout\ & ((!\ALU_Sel[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \Add1~4_combout\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~4_combout\,
	datad => \ALU_Sel[3]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X32_Y22_N16
\Mux2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\ALU_Sel[3]~input_o\ & ((\Mux2~0_combout\ & ((\A[2]~input_o\) # (\B[2]~input_o\))) # (!\Mux2~0_combout\ & (\A[2]~input_o\ & \B[2]~input_o\)))) # (!\ALU_Sel[3]~input_o\ & (\Mux2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[3]~input_o\,
	datab => \Mux2~0_combout\,
	datac => \A[2]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X32_Y22_N10
\ALU_Result[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- ALU_Result(2) = (GLOBAL(\Mux8~0clkctrl_outclk\) & (ALU_Result(2))) # (!GLOBAL(\Mux8~0clkctrl_outclk\) & ((\Mux2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ALU_Result(2),
	datab => \Mux2~1_combout\,
	datad => \Mux8~0clkctrl_outclk\,
	combout => ALU_Result(2));

-- Location: IOIBUF_X33_Y28_N8
\A[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X32_Y25_N18
\Add1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\A[3]~input_o\ & ((\B[3]~input_o\ & (\Add1~5\ & VCC)) # (!\B[3]~input_o\ & (!\Add1~5\)))) # (!\A[3]~input_o\ & ((\B[3]~input_o\ & (!\Add1~5\)) # (!\B[3]~input_o\ & ((\Add1~5\) # (GND)))))
-- \Add1~7\ = CARRY((\A[3]~input_o\ & (!\B[3]~input_o\ & !\Add1~5\)) # (!\A[3]~input_o\ & ((!\Add1~5\) # (!\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[3]~input_o\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X32_Y22_N14
\Mux3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\ALU_Sel[3]~input_o\ & (\ALU_Sel[0]~input_o\)) # (!\ALU_Sel[3]~input_o\ & (((\Add1~6_combout\ & !\ALU_Sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[0]~input_o\,
	datab => \Add1~6_combout\,
	datac => \ALU_Sel[1]~input_o\,
	datad => \ALU_Sel[3]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X32_Y22_N20
\Mux3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\B[3]~input_o\ & ((\Mux3~0_combout\) # ((\ALU_Sel[3]~input_o\ & \A[3]~input_o\)))) # (!\B[3]~input_o\ & (((\A[3]~input_o\ & \Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[3]~input_o\,
	datab => \B[3]~input_o\,
	datac => \A[3]~input_o\,
	datad => \Mux3~0_combout\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X32_Y23_N26
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(3) = LCELL((\B[0]~input_o\ & ((\A[3]~input_o\ $ (\B[1]~input_o\)))) # (!\B[0]~input_o\ & (!\A[2]~input_o\ & ((\B[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \A[3]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(3));

-- Location: LCCOMB_X31_Y24_N2
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~2_combout\ = (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(3) & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~1\)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(3) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~1\) # (GND)))
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~3\ = CARRY((!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~1\) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(3),
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~1\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~2_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~3\);

-- Location: LCCOMB_X32_Y24_N14
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\ = \B[2]~input_o\ $ (\B[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[2]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\);

-- Location: LCCOMB_X32_Y24_N8
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(1) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\ $ (((\A[1]~input_o\))))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\ & (!\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\,
	datab => \A[0]~input_o\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\,
	datad => \A[1]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(1));

-- Location: LCCOMB_X31_Y24_N20
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~6_combout\ = (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~2_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(1) & 
-- (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~5\ & VCC)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(1) & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~5\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~2_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(1) & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~5\)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(1) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~5\) # (GND)))))
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~7\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~2_combout\ & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(1) & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~5\)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~2_combout\ & ((!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~5\) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~2_combout\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(1),
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~5\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~6_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~7\);

-- Location: LCCOMB_X32_Y22_N26
\Mux3~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\Mux3~1_combout\) # ((\Mux0~0_combout\ & (!\Mux3~0_combout\ & \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~6_combout\)) # (!\Mux0~0_combout\ & (\Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \Mux3~1_combout\,
	datac => \Mux3~0_combout\,
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~6_combout\,
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X32_Y22_N8
\ALU_Result[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- ALU_Result(3) = (GLOBAL(\Mux8~0clkctrl_outclk\) & ((ALU_Result(3)))) # (!GLOBAL(\Mux8~0clkctrl_outclk\) & (\Mux3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~2_combout\,
	datac => ALU_Result(3),
	datad => \Mux8~0clkctrl_outclk\,
	combout => ALU_Result(3));

-- Location: IOIBUF_X29_Y31_N1
\B[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X31_Y31_N1
\A[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X33_Y11_N8
\B[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LCCOMB_X32_Y25_N0
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~1_combout\ = (\B[3]~input_o\) # ((\B[1]~input_o\ & \B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~1_combout\);

-- Location: LCCOMB_X32_Y25_N30
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~2_combout\ = \B[5]~input_o\ $ (((\B[4]~input_o\ & \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \B[4]~input_o\,
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~1_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~2_combout\);

-- Location: LCCOMB_X32_Y23_N0
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(4) = LCELL((\B[0]~input_o\ & (\B[1]~input_o\ $ ((\A[4]~input_o\)))) # (!\B[0]~input_o\ & (\B[1]~input_o\ & ((!\A[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[4]~input_o\,
	datad => \A[3]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(4));

-- Location: LCCOMB_X32_Y24_N20
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~0_combout\ = (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~2_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(4) $ (VCC))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~2_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(4) & VCC))
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~1\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~2_combout\ & \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~2_combout\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(4),
	datad => VCC,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~0_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~1\);

-- Location: LCCOMB_X32_Y25_N10
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(0) = LCELL(\B[5]~input_o\ $ (((\B[4]~input_o\ & ((\A[0]~input_o\) # (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~1_combout\))) # (!\B[4]~input_o\ & (\A[0]~input_o\ & 
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \B[4]~input_o\,
	datac => \A[0]~input_o\,
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~1_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(0));

-- Location: LCCOMB_X32_Y24_N10
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(2) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\ $ (((\A[2]~input_o\))))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\ & (!\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\,
	datab => \A[1]~input_o\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\,
	datad => \A[2]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(2));

-- Location: LCCOMB_X31_Y24_N4
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~4_combout\ = ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(0) $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(2) $ 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~3\)))) # (GND)
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~5\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(0) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(2)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~3\))) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(0) & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(2) & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(0),
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(2),
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~3\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~4_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~5\);

-- Location: LCCOMB_X31_Y24_N22
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~8_combout\ = ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~0_combout\ $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~4_combout\ $ 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~7\)))) # (GND)
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~9\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~0_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~4_combout\) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~7\))) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~0_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~4_combout\ & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~0_combout\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~4_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~7\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~8_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~9\);

-- Location: LCCOMB_X32_Y25_N20
\Add1~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = ((\A[4]~input_o\ $ (\B[4]~input_o\ $ (!\Add1~7\)))) # (GND)
-- \Add1~9\ = CARRY((\A[4]~input_o\ & ((\B[4]~input_o\) # (!\Add1~7\))) # (!\A[4]~input_o\ & (\B[4]~input_o\ & !\Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \B[4]~input_o\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X32_Y22_N28
\Mux4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\Mux0~0_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~8_combout\) # ((\ALU_Sel[3]~input_o\)))) # (!\Mux0~0_combout\ & (((\Add1~8_combout\ & !\ALU_Sel[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~8_combout\,
	datac => \Add1~8_combout\,
	datad => \ALU_Sel[3]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X31_Y22_N4
\Mux4~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\B[4]~input_o\ & ((\Mux4~0_combout\) # ((\A[4]~input_o\ & \ALU_Sel[3]~input_o\)))) # (!\B[4]~input_o\ & (\Mux4~0_combout\ & ((\A[4]~input_o\) # (!\ALU_Sel[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \A[4]~input_o\,
	datac => \ALU_Sel[3]~input_o\,
	datad => \Mux4~0_combout\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X31_Y22_N30
\ALU_Result[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- ALU_Result(4) = (GLOBAL(\Mux8~0clkctrl_outclk\) & (ALU_Result(4))) # (!GLOBAL(\Mux8~0clkctrl_outclk\) & ((\Mux4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ALU_Result(4),
	datac => \Mux8~0clkctrl_outclk\,
	datad => \Mux4~1_combout\,
	combout => ALU_Result(4));

-- Location: IOIBUF_X33_Y24_N1
\A[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LCCOMB_X32_Y25_N22
\Add1~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\B[5]~input_o\ & ((\A[5]~input_o\ & (\Add1~9\ & VCC)) # (!\A[5]~input_o\ & (!\Add1~9\)))) # (!\B[5]~input_o\ & ((\A[5]~input_o\ & (!\Add1~9\)) # (!\A[5]~input_o\ & ((\Add1~9\) # (GND)))))
-- \Add1~11\ = CARRY((\B[5]~input_o\ & (!\A[5]~input_o\ & !\Add1~9\)) # (!\B[5]~input_o\ & ((!\Add1~9\) # (!\A[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \A[5]~input_o\,
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X32_Y22_N6
\Mux5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\ALU_Sel[3]~input_o\ & (((\ALU_Sel[0]~input_o\)))) # (!\ALU_Sel[3]~input_o\ & (!\ALU_Sel[1]~input_o\ & (\Add1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[3]~input_o\,
	datab => \ALU_Sel[1]~input_o\,
	datac => \Add1~10_combout\,
	datad => \ALU_Sel[0]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X31_Y24_N30
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~1_combout\ = \B[4]~input_o\ $ (((\B[3]~input_o\) # ((\B[1]~input_o\ & \B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[1]~input_o\,
	datac => \B[4]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~1_combout\);

-- Location: LCCOMB_X32_Y24_N30
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(1) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~1_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~2_combout\ $ ((\A[1]~input_o\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~1_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~2_combout\ & ((!\A[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~2_combout\,
	datab => \A[1]~input_o\,
	datac => \A[0]~input_o\,
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~1_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(1));

-- Location: LCCOMB_X32_Y24_N12
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(3) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\ $ ((\A[3]~input_o\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\ & ((!\A[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\,
	datab => \A[3]~input_o\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\,
	datad => \A[2]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(3));

-- Location: LCCOMB_X31_Y24_N6
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~6_combout\ = (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(1) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(3) & 
-- (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~5\ & VCC)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(3) & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~5\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(1) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(3) & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~5\)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(3) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~5\) # (GND)))))
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~7\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(1) & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(3) & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~5\)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(1) & ((!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~5\) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(1),
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(3),
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~5\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~6_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~7\);

-- Location: LCCOMB_X32_Y23_N22
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(5) = LCELL((\B[0]~input_o\ & (\B[1]~input_o\ $ ((\A[5]~input_o\)))) # (!\B[0]~input_o\ & (\B[1]~input_o\ & ((!\A[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[5]~input_o\,
	datac => \A[4]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(5));

-- Location: LCCOMB_X32_Y24_N22
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~2_combout\ = (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(5) & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~1\)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(5) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~1\) # (GND)))
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~3\ = CARRY((!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~1\) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(5),
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~1\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~2_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~3\);

-- Location: LCCOMB_X31_Y24_N24
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~10_combout\ = (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~6_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~2_combout\ & 
-- (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~9\ & VCC)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~2_combout\ & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~9\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~6_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~2_combout\ & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~9\)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~2_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~9\) # (GND)))))
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~11\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~6_combout\ & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~2_combout\ & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~9\)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~6_combout\ & ((!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~9\) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~6_combout\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~2_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~9\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~10_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~11\);

-- Location: LCCOMB_X31_Y22_N26
\Mux5~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\B[5]~input_o\ & ((\Mux5~0_combout\) # ((\ALU_Sel[3]~input_o\ & \A[5]~input_o\)))) # (!\B[5]~input_o\ & (((\A[5]~input_o\ & \Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \ALU_Sel[3]~input_o\,
	datac => \A[5]~input_o\,
	datad => \Mux5~0_combout\,
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X31_Y22_N28
\Mux5~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (\Mux5~1_combout\) # ((\Mux0~0_combout\ & (!\Mux5~0_combout\ & \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~10_combout\)) # (!\Mux0~0_combout\ & (\Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \Mux5~0_combout\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~10_combout\,
	datad => \Mux5~1_combout\,
	combout => \Mux5~2_combout\);

-- Location: LCCOMB_X31_Y22_N24
\ALU_Result[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- ALU_Result(5) = (GLOBAL(\Mux8~0clkctrl_outclk\) & (ALU_Result(5))) # (!GLOBAL(\Mux8~0clkctrl_outclk\) & ((\Mux5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ALU_Result(5),
	datac => \Mux8~0clkctrl_outclk\,
	datad => \Mux5~2_combout\,
	combout => ALU_Result(5));

-- Location: IOIBUF_X33_Y24_N8
\A[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X33_Y25_N1
\B[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LCCOMB_X32_Y25_N24
\Add1~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = ((\A[6]~input_o\ $ (\B[6]~input_o\ $ (!\Add1~11\)))) # (GND)
-- \Add1~13\ = CARRY((\A[6]~input_o\ & ((\B[6]~input_o\) # (!\Add1~11\))) # (!\A[6]~input_o\ & (\B[6]~input_o\ & !\Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \B[6]~input_o\,
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X32_Y24_N6
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(4) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\ & (\A[4]~input_o\ $ (((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\))))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\ & (((!\A[3]~input_o\ & \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \A[3]~input_o\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\,
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(4));

-- Location: LCCOMB_X32_Y24_N4
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(6) = LCELL((\B[0]~input_o\ & (\B[1]~input_o\ $ ((\A[6]~input_o\)))) # (!\B[0]~input_o\ & (\B[1]~input_o\ & ((!\A[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[6]~input_o\,
	datad => \A[5]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(6));

-- Location: LCCOMB_X32_Y24_N24
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~4_combout\ = ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(4) $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(6) $ 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~3\)))) # (GND)
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~5\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(4) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(6)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~3\))) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(4) & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(6) & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(4),
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(6),
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~3\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~4_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~5\);

-- Location: LCCOMB_X32_Y25_N8
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~3_combout\ = (\B[5]~input_o\) # ((\B[4]~input_o\ & \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \B[4]~input_o\,
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~1_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~3_combout\);

-- Location: LCCOMB_X32_Y24_N2
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(0) = LCELL((\A[0]~input_o\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~3_combout\ $ (\B[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~3_combout\,
	datac => \A[0]~input_o\,
	datad => \B[6]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(0));

-- Location: LCCOMB_X32_Y24_N16
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(2) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~1_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~2_combout\ $ (((\A[2]~input_o\))))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~1_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~2_combout\ & (!\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~2_combout\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~1_combout\,
	datac => \A[1]~input_o\,
	datad => \A[2]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(2));

-- Location: LCCOMB_X31_Y24_N8
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~8_combout\ = ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(0) $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(2) $ 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~7\)))) # (GND)
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~9\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(0) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(2)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~7\))) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(0) & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(2) & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(0),
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(2),
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~7\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~8_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~9\);

-- Location: LCCOMB_X31_Y24_N26
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~12_combout\ = ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~4_combout\ $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~8_combout\ $ 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~11\)))) # (GND)
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~13\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~4_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~8_combout\) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~11\))) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~4_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~8_combout\ & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~4_combout\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~8_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~11\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~12_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~13\);

-- Location: LCCOMB_X32_Y22_N24
\Mux6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\Mux0~0_combout\ & (((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~12_combout\) # (\ALU_Sel[3]~input_o\)))) # (!\Mux0~0_combout\ & (\Add1~12_combout\ & ((!\ALU_Sel[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \Add1~12_combout\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~12_combout\,
	datad => \ALU_Sel[3]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X32_Y22_N22
\Mux6~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\ALU_Sel[3]~input_o\ & ((\Mux6~0_combout\ & ((\A[6]~input_o\) # (\B[6]~input_o\))) # (!\Mux6~0_combout\ & (\A[6]~input_o\ & \B[6]~input_o\)))) # (!\ALU_Sel[3]~input_o\ & (\Mux6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[3]~input_o\,
	datab => \Mux6~0_combout\,
	datac => \A[6]~input_o\,
	datad => \B[6]~input_o\,
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X32_Y22_N30
\ALU_Result[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- ALU_Result(6) = (GLOBAL(\Mux8~0clkctrl_outclk\) & ((ALU_Result(6)))) # (!GLOBAL(\Mux8~0clkctrl_outclk\) & (\Mux6~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~1_combout\,
	datac => ALU_Result(6),
	datad => \Mux8~0clkctrl_outclk\,
	combout => ALU_Result(6));

-- Location: IOIBUF_X16_Y0_N8
\B[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\A[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LCCOMB_X32_Y25_N28
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(0) = LCELL((\A[0]~input_o\ & \B[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[0]~input_o\,
	datac => \B[7]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(0));

-- Location: LCCOMB_X32_Y23_N24
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a[7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(7) = LCELL((\B[0]~input_o\ & (\B[1]~input_o\ $ ((\A[7]~input_o\)))) # (!\B[0]~input_o\ & (\B[1]~input_o\ & ((!\A[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[7]~input_o\,
	datac => \A[6]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(7));

-- Location: LCCOMB_X32_Y24_N18
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(5) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\ & ((\A[5]~input_o\ $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\ & (!\A[4]~input_o\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \A[5]~input_o\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\,
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(5));

-- Location: LCCOMB_X32_Y24_N28
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~0_combout\ = \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(7) $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(7),
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(5),
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~0_combout\);

-- Location: LCCOMB_X31_Y24_N10
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~10_combout\ = \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(0) $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~9\ $ 
-- (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(0),
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~0_combout\,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~9\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~10_combout\);

-- Location: LCCOMB_X32_Y25_N6
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(1) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~3_combout\ & ((\B[6]~input_o\ & (\A[0]~input_o\)) # (!\B[6]~input_o\ & ((\A[1]~input_o\))))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~3_combout\ & (((\A[1]~input_o\ & \B[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~3_combout\,
	datab => \A[0]~input_o\,
	datac => \A[1]~input_o\,
	datad => \B[6]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(1));

-- Location: LCCOMB_X32_Y24_N0
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(3) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~1_combout\ & ((\A[3]~input_o\ $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~2_combout\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~1_combout\ & (!\A[2]~input_o\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \A[3]~input_o\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~2_combout\,
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~1_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(3));

-- Location: LCCOMB_X32_Y24_N26
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~6_combout\ = \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(1) $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~5\ $ 
-- (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(1),
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(3),
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~5\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~6_combout\);

-- Location: LCCOMB_X31_Y24_N28
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~14_combout\ = \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~10_combout\ $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~13\ $ 
-- (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~10_combout\,
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~6_combout\,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~13\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~14_combout\);

-- Location: LCCOMB_X32_Y25_N26
\Add1~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = \B[7]~input_o\ $ (\Add1~13\ $ (\A[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datad => \A[7]~input_o\,
	cin => \Add1~13\,
	combout => \Add1~14_combout\);

-- Location: LCCOMB_X31_Y22_N22
\Mux7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\ALU_Sel[3]~input_o\ & (((\Mux0~0_combout\)))) # (!\ALU_Sel[3]~input_o\ & ((\Mux0~0_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~14_combout\)) # (!\Mux0~0_combout\ & ((\Add1~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~14_combout\,
	datab => \Add1~14_combout\,
	datac => \ALU_Sel[3]~input_o\,
	datad => \Mux0~0_combout\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X31_Y22_N8
\Mux7~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\B[7]~input_o\ & ((\Mux7~0_combout\) # ((\ALU_Sel[3]~input_o\ & \A[7]~input_o\)))) # (!\B[7]~input_o\ & (\Mux7~0_combout\ & ((\A[7]~input_o\) # (!\ALU_Sel[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \ALU_Sel[3]~input_o\,
	datac => \A[7]~input_o\,
	datad => \Mux7~0_combout\,
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X31_Y22_N10
\ALU_Result[7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- ALU_Result(7) = (GLOBAL(\Mux8~0clkctrl_outclk\) & (ALU_Result(7))) # (!GLOBAL(\Mux8~0clkctrl_outclk\) & ((\Mux7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ALU_Result(7),
	datac => \Mux8~0clkctrl_outclk\,
	datad => \Mux7~1_combout\,
	combout => ALU_Result(7));

-- Location: LCCOMB_X32_Y23_N4
\Add0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~1_cout\ = CARRY((\A[0]~input_o\ & \B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[0]~input_o\,
	datad => VCC,
	cout => \Add0~1_cout\);

-- Location: LCCOMB_X32_Y23_N6
\Add0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~3_cout\ = CARRY((\B[1]~input_o\ & (!\A[1]~input_o\ & !\Add0~1_cout\)) # (!\B[1]~input_o\ & ((!\Add0~1_cout\) # (!\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[1]~input_o\,
	datad => VCC,
	cin => \Add0~1_cout\,
	cout => \Add0~3_cout\);

-- Location: LCCOMB_X32_Y23_N8
\Add0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~5_cout\ = CARRY((\A[2]~input_o\ & ((\B[2]~input_o\) # (!\Add0~3_cout\))) # (!\A[2]~input_o\ & (\B[2]~input_o\ & !\Add0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[2]~input_o\,
	datad => VCC,
	cin => \Add0~3_cout\,
	cout => \Add0~5_cout\);

-- Location: LCCOMB_X32_Y23_N10
\Add0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~7_cout\ = CARRY((\B[3]~input_o\ & (!\A[3]~input_o\ & !\Add0~5_cout\)) # (!\B[3]~input_o\ & ((!\Add0~5_cout\) # (!\A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A[3]~input_o\,
	datad => VCC,
	cin => \Add0~5_cout\,
	cout => \Add0~7_cout\);

-- Location: LCCOMB_X32_Y23_N12
\Add0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~9_cout\ = CARRY((\A[4]~input_o\ & ((\B[4]~input_o\) # (!\Add0~7_cout\))) # (!\A[4]~input_o\ & (\B[4]~input_o\ & !\Add0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \B[4]~input_o\,
	datad => VCC,
	cin => \Add0~7_cout\,
	cout => \Add0~9_cout\);

-- Location: LCCOMB_X32_Y23_N14
\Add0~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~11_cout\ = CARRY((\B[5]~input_o\ & (!\A[5]~input_o\ & !\Add0~9_cout\)) # (!\B[5]~input_o\ & ((!\Add0~9_cout\) # (!\A[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \A[5]~input_o\,
	datad => VCC,
	cin => \Add0~9_cout\,
	cout => \Add0~11_cout\);

-- Location: LCCOMB_X32_Y23_N16
\Add0~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~13_cout\ = CARRY((\A[6]~input_o\ & ((\B[6]~input_o\) # (!\Add0~11_cout\))) # (!\A[6]~input_o\ & (\B[6]~input_o\ & !\Add0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \B[6]~input_o\,
	datad => VCC,
	cin => \Add0~11_cout\,
	cout => \Add0~13_cout\);

-- Location: LCCOMB_X32_Y23_N18
\Add0~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~15_cout\ = CARRY((\B[7]~input_o\ & (!\A[7]~input_o\ & !\Add0~13_cout\)) # (!\B[7]~input_o\ & ((!\Add0~13_cout\) # (!\A[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \A[7]~input_o\,
	datad => VCC,
	cin => \Add0~13_cout\,
	cout => \Add0~15_cout\);

-- Location: LCCOMB_X32_Y23_N20
\Add0~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = !\Add0~15_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add0~15_cout\,
	combout => \Add0~16_combout\);

ww_ALU_Out(0) <= \ALU_Out[0]~output_o\;

ww_ALU_Out(1) <= \ALU_Out[1]~output_o\;

ww_ALU_Out(2) <= \ALU_Out[2]~output_o\;

ww_ALU_Out(3) <= \ALU_Out[3]~output_o\;

ww_ALU_Out(4) <= \ALU_Out[4]~output_o\;

ww_ALU_Out(5) <= \ALU_Out[5]~output_o\;

ww_ALU_Out(6) <= \ALU_Out[6]~output_o\;

ww_ALU_Out(7) <= \ALU_Out[7]~output_o\;

ww_CarryOut <= \CarryOut~output_o\;
END structure;


