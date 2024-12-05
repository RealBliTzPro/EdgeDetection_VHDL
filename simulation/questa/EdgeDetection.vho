-- Copyright (C) 2024  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 23.1std.1 Build 993 05/14/2024 SC Lite Edition"

-- DATE "12/05/2024 19:42:20"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for QuestaSim (VHDL) only
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

ENTITY 	edgeDetection IS
    PORT (
	clk : IN std_logic;
	ssd1 : BUFFER std_logic_vector(0 TO 6);
	ssd2 : BUFFER std_logic_vector(0 TO 6);
	ssd3 : BUFFER std_logic_vector(0 TO 6);
	ssd4 : BUFFER std_logic_vector(0 TO 6)
	);
END edgeDetection;

-- Design Ports Information
-- ssd1[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd1[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd1[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd1[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd1[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd1[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd1[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd2[6]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd2[5]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd2[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd2[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd2[2]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd2[1]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd2[0]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd3[6]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd3[5]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd3[4]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd3[3]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd3[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd3[1]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd3[0]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd4[6]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd4[5]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd4[4]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd4[3]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd4[2]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd4[1]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd4[0]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF edgeDetection IS
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
SIGNAL ww_ssd1 : std_logic_vector(0 TO 6);
SIGNAL ww_ssd2 : std_logic_vector(0 TO 6);
SIGNAL ww_ssd3 : std_logic_vector(0 TO 6);
SIGNAL ww_ssd4 : std_logic_vector(0 TO 6);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \ssd1[6]~output_o\ : std_logic;
SIGNAL \ssd1[5]~output_o\ : std_logic;
SIGNAL \ssd1[4]~output_o\ : std_logic;
SIGNAL \ssd1[3]~output_o\ : std_logic;
SIGNAL \ssd1[2]~output_o\ : std_logic;
SIGNAL \ssd1[1]~output_o\ : std_logic;
SIGNAL \ssd1[0]~output_o\ : std_logic;
SIGNAL \ssd2[6]~output_o\ : std_logic;
SIGNAL \ssd2[5]~output_o\ : std_logic;
SIGNAL \ssd2[4]~output_o\ : std_logic;
SIGNAL \ssd2[3]~output_o\ : std_logic;
SIGNAL \ssd2[2]~output_o\ : std_logic;
SIGNAL \ssd2[1]~output_o\ : std_logic;
SIGNAL \ssd2[0]~output_o\ : std_logic;
SIGNAL \ssd3[6]~output_o\ : std_logic;
SIGNAL \ssd3[5]~output_o\ : std_logic;
SIGNAL \ssd3[4]~output_o\ : std_logic;
SIGNAL \ssd3[3]~output_o\ : std_logic;
SIGNAL \ssd3[2]~output_o\ : std_logic;
SIGNAL \ssd3[1]~output_o\ : std_logic;
SIGNAL \ssd3[0]~output_o\ : std_logic;
SIGNAL \ssd4[6]~output_o\ : std_logic;
SIGNAL \ssd4[5]~output_o\ : std_logic;
SIGNAL \ssd4[4]~output_o\ : std_logic;
SIGNAL \ssd4[3]~output_o\ : std_logic;
SIGNAL \ssd4[2]~output_o\ : std_logic;
SIGNAL \ssd4[1]~output_o\ : std_logic;
SIGNAL \ssd4[0]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \first_i[3]~feeder_combout\ : std_logic;
SIGNAL \ssd4[6]~0_combout\ : std_logic;
SIGNAL \ssd4[6]~reg0_q\ : std_logic;
SIGNAL \ssd4[4]~1_combout\ : std_logic;
SIGNAL \ssd4[4]~reg0_q\ : std_logic;
SIGNAL \ssd4[3]~2_combout\ : std_logic;
SIGNAL \ssd4[3]~reg0_q\ : std_logic;
SIGNAL \ssd4[1]~3_combout\ : std_logic;
SIGNAL \ssd4[1]~reg0_q\ : std_logic;
SIGNAL \ssd4[0]~4_combout\ : std_logic;
SIGNAL \ssd4[0]~reg0_q\ : std_logic;
SIGNAL first_i : std_logic_vector(31 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ssd1 <= ww_ssd1;
ssd2 <= ww_ssd2;
ssd3 <= ww_ssd3;
ssd4 <= ww_ssd4;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N24
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

-- Location: IOOBUF_X74_Y54_N23
\ssd1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ssd1[6]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\ssd1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ssd1[5]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\ssd1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \ssd1[4]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\ssd1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ssd1[3]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\ssd1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ssd1[2]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\ssd1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \ssd1[1]~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\ssd1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ssd1[0]~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\ssd2[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ssd2[6]~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\ssd2[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ssd2[5]~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\ssd2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ssd2[4]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\ssd2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ssd2[3]~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\ssd2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ssd2[2]~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\ssd2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ssd2[1]~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\ssd2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ssd2[0]~output_o\);

-- Location: IOOBUF_X78_Y35_N16
\ssd3[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ssd3[6]~output_o\);

-- Location: IOOBUF_X78_Y40_N9
\ssd3[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ssd3[5]~output_o\);

-- Location: IOOBUF_X78_Y45_N23
\ssd3[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \ssd3[4]~output_o\);

-- Location: IOOBUF_X78_Y42_N16
\ssd3[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ssd3[3]~output_o\);

-- Location: IOOBUF_X78_Y40_N23
\ssd3[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ssd3[2]~output_o\);

-- Location: IOOBUF_X78_Y40_N2
\ssd3[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \ssd3[1]~output_o\);

-- Location: IOOBUF_X78_Y40_N16
\ssd3[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ssd3[0]~output_o\);

-- Location: IOOBUF_X78_Y34_N2
\ssd4[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ssd4[6]~reg0_q\,
	devoe => ww_devoe,
	o => \ssd4[6]~output_o\);

-- Location: IOOBUF_X78_Y34_N16
\ssd4[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \ssd4[5]~output_o\);

-- Location: IOOBUF_X78_Y34_N9
\ssd4[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ssd4[4]~reg0_q\,
	devoe => ww_devoe,
	o => \ssd4[4]~output_o\);

-- Location: IOOBUF_X78_Y34_N24
\ssd4[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ssd4[3]~reg0_q\,
	devoe => ww_devoe,
	o => \ssd4[3]~output_o\);

-- Location: IOOBUF_X78_Y37_N16
\ssd4[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \ssd4[2]~output_o\);

-- Location: IOOBUF_X78_Y42_N2
\ssd4[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ssd4[1]~reg0_q\,
	devoe => ww_devoe,
	o => \ssd4[1]~output_o\);

-- Location: IOOBUF_X78_Y45_N9
\ssd4[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ssd4[0]~reg0_q\,
	devoe => ww_devoe,
	o => \ssd4[0]~output_o\);

-- Location: IOIBUF_X78_Y29_N22
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G9
\clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X77_Y34_N18
\first_i[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \first_i[3]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \first_i[3]~feeder_combout\);

-- Location: FF_X77_Y34_N19
\first_i[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \first_i[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => first_i(3));

-- Location: LCCOMB_X77_Y34_N20
\ssd4[6]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ssd4[6]~0_combout\ = !first_i(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => first_i(3),
	combout => \ssd4[6]~0_combout\);

-- Location: FF_X77_Y34_N21
\ssd4[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ssd4[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssd4[6]~reg0_q\);

-- Location: LCCOMB_X77_Y34_N14
\ssd4[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ssd4[4]~1_combout\ = !first_i(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => first_i(3),
	combout => \ssd4[4]~1_combout\);

-- Location: FF_X77_Y34_N15
\ssd4[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ssd4[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssd4[4]~reg0_q\);

-- Location: LCCOMB_X77_Y34_N16
\ssd4[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ssd4[3]~2_combout\ = !first_i(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => first_i(3),
	combout => \ssd4[3]~2_combout\);

-- Location: FF_X77_Y34_N17
\ssd4[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ssd4[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssd4[3]~reg0_q\);

-- Location: LCCOMB_X77_Y34_N2
\ssd4[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ssd4[1]~3_combout\ = !first_i(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => first_i(3),
	combout => \ssd4[1]~3_combout\);

-- Location: FF_X77_Y34_N3
\ssd4[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ssd4[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssd4[1]~reg0_q\);

-- Location: LCCOMB_X77_Y34_N28
\ssd4[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ssd4[0]~4_combout\ = !first_i(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => first_i(3),
	combout => \ssd4[0]~4_combout\);

-- Location: FF_X77_Y34_N29
\ssd4[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ssd4[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssd4[0]~reg0_q\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
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

ww_ssd1(6) <= \ssd1[6]~output_o\;

ww_ssd1(5) <= \ssd1[5]~output_o\;

ww_ssd1(4) <= \ssd1[4]~output_o\;

ww_ssd1(3) <= \ssd1[3]~output_o\;

ww_ssd1(2) <= \ssd1[2]~output_o\;

ww_ssd1(1) <= \ssd1[1]~output_o\;

ww_ssd1(0) <= \ssd1[0]~output_o\;

ww_ssd2(6) <= \ssd2[6]~output_o\;

ww_ssd2(5) <= \ssd2[5]~output_o\;

ww_ssd2(4) <= \ssd2[4]~output_o\;

ww_ssd2(3) <= \ssd2[3]~output_o\;

ww_ssd2(2) <= \ssd2[2]~output_o\;

ww_ssd2(1) <= \ssd2[1]~output_o\;

ww_ssd2(0) <= \ssd2[0]~output_o\;

ww_ssd3(6) <= \ssd3[6]~output_o\;

ww_ssd3(5) <= \ssd3[5]~output_o\;

ww_ssd3(4) <= \ssd3[4]~output_o\;

ww_ssd3(3) <= \ssd3[3]~output_o\;

ww_ssd3(2) <= \ssd3[2]~output_o\;

ww_ssd3(1) <= \ssd3[1]~output_o\;

ww_ssd3(0) <= \ssd3[0]~output_o\;

ww_ssd4(6) <= \ssd4[6]~output_o\;

ww_ssd4(5) <= \ssd4[5]~output_o\;

ww_ssd4(4) <= \ssd4[4]~output_o\;

ww_ssd4(3) <= \ssd4[3]~output_o\;

ww_ssd4(2) <= \ssd4[2]~output_o\;

ww_ssd4(1) <= \ssd4[1]~output_o\;

ww_ssd4(0) <= \ssd4[0]~output_o\;
END structure;


