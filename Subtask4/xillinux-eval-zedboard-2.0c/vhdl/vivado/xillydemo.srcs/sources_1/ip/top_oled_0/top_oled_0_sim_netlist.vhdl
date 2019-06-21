-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Thu Jun 20 17:08:55 2019
-- Host        : FREISMUTHDESK running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/DEV/ESIF/Task2/ESIF_Task2/Subtask4/xillinux-eval-zedboard-2.0c/vhdl/vivado/xillydemo.srcs/sources_1/ip/top_oled_0/top_oled_0_sim_netlist.vhdl
-- Design      : top_oled_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_oled_0_SpiCtrl is
  port (
    temp_spi_start_reg : out STD_LOGIC;
    SDIN : out STD_LOGIC;
    SCLK : out STD_LOGIC;
    clk : in STD_LOGIC;
    \FSM_sequential_state_reg[0]_0\ : in STD_LOGIC;
    disp_on_start : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \shift_register_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of top_oled_0_SpiCtrl : entity is "SpiCtrl";
end top_oled_0_SpiCtrl;

architecture STRUCTURE of top_oled_0_SpiCtrl is
  signal \FSM_sequential_state[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_2__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_3__0_n_0\ : STD_LOGIC;
  signal SCLK_INST_0_i_1_n_0 : STD_LOGIC;
  signal counter : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \counter[2]_i_1_n_0\ : STD_LOGIC;
  signal \counter[3]_i_1_n_0\ : STD_LOGIC;
  signal \counter[4]_i_1_n_0\ : STD_LOGIC;
  signal \counter[4]_i_2_n_0\ : STD_LOGIC;
  signal shift_counter : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \shift_counter[3]_i_1_n_0\ : STD_LOGIC;
  signal \shift_counter[3]_i_2_n_0\ : STD_LOGIC;
  signal \shift_counter[3]_i_4_n_0\ : STD_LOGIC;
  signal \shift_counter[3]_i_5_n_0\ : STD_LOGIC;
  signal \shift_counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \shift_counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \shift_counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \shift_counter_reg_n_0_[3]\ : STD_LOGIC;
  signal shift_register : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \shift_register[7]_i_1_n_0\ : STD_LOGIC;
  signal \shift_register_reg_n_0_[0]\ : STD_LOGIC;
  signal \shift_register_reg_n_0_[1]\ : STD_LOGIC;
  signal \shift_register_reg_n_0_[2]\ : STD_LOGIC;
  signal \shift_register_reg_n_0_[3]\ : STD_LOGIC;
  signal \shift_register_reg_n_0_[4]\ : STD_LOGIC;
  signal \shift_register_reg_n_0_[5]\ : STD_LOGIC;
  signal \shift_register_reg_n_0_[6]\ : STD_LOGIC;
  signal \shift_register_reg_n_0_[7]\ : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \state[7]_i_9_n_0\ : STD_LOGIC;
  signal temp_sdo_i_1_n_0 : STD_LOGIC;
  signal temp_sdo_reg_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_1__0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_3__0\ : label is "soft_lutpair13";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "Send:001,HoldCS:010,Hold:011,Idle:000,iSTATE:100";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "Send:001,HoldCS:010,Hold:011,Idle:000,iSTATE:100";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "Send:001,HoldCS:010,Hold:011,Idle:000,iSTATE:100";
  attribute SOFT_HLUTNM of SDIN_INST_0 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \counter[0]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \counter[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \counter[2]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \counter[3]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \counter[4]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \shift_counter[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \shift_counter[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \shift_counter[2]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \shift_counter[3]_i_3\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \shift_counter[3]_i_4\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \shift_counter[3]_i_5\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \shift_register[0]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \shift_register[1]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \shift_register[2]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \shift_register[3]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \shift_register[4]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \shift_register[5]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \shift_register[6]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \shift_register[7]_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \state[7]_i_9\ : label is "soft_lutpair12";
begin
\FSM_sequential_state[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55510A0F50510A0A"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_2__0_n_0\,
      I1 => \FSM_sequential_state[1]_i_2_n_0\,
      I2 => state(2),
      I3 => state(1),
      I4 => state(0),
      I5 => \FSM_sequential_state_reg[0]_0\,
      O => \FSM_sequential_state[0]_i_1__0_n_0\
    );
\FSM_sequential_state[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"550E5F00500E5F00"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_2__0_n_0\,
      I1 => \FSM_sequential_state[1]_i_2_n_0\,
      I2 => state(2),
      I3 => state(1),
      I4 => state(0),
      I5 => \FSM_sequential_state_reg[0]_0\,
      O => \FSM_sequential_state[1]_i_1__0_n_0\
    );
\FSM_sequential_state[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => \shift_counter_reg_n_0_[1]\,
      I1 => \shift_counter_reg_n_0_[2]\,
      I2 => \shift_counter_reg_n_0_[3]\,
      I3 => \shift_counter_reg_n_0_[0]\,
      I4 => \shift_counter[3]_i_4_n_0\,
      O => \FSM_sequential_state[1]_i_2_n_0\
    );
\FSM_sequential_state[2]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"64444444"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_2__0_n_0\,
      I1 => state(2),
      I2 => state(1),
      I3 => state(0),
      I4 => \FSM_sequential_state_reg[0]_0\,
      O => \FSM_sequential_state[2]_i_1__0_n_0\
    );
\FSM_sequential_state[2]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_3__0_n_0\,
      I1 => \shift_counter_reg_n_0_[2]\,
      I2 => \shift_counter_reg_n_0_[3]\,
      I3 => state(2),
      O => \FSM_sequential_state[2]_i_2__0_n_0\
    );
\FSM_sequential_state[2]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2E000000"
    )
        port map (
      I0 => state(1),
      I1 => \FSM_sequential_state_reg[0]_0\,
      I2 => state(0),
      I3 => \shift_counter_reg_n_0_[1]\,
      I4 => \shift_counter_reg_n_0_[0]\,
      O => \FSM_sequential_state[2]_i_3__0_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state[0]_i_1__0_n_0\,
      Q => state(0),
      R => '0'
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state[1]_i_1__0_n_0\,
      Q => state(1),
      R => '0'
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state[2]_i_1__0_n_0\,
      Q => state(2),
      R => '0'
    );
SCLK_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0001"
    )
        port map (
      I0 => counter(0),
      I1 => counter(3),
      I2 => counter(4),
      I3 => counter(1),
      I4 => SCLK_INST_0_i_1_n_0,
      I5 => state(2),
      O => SCLK
    );
SCLK_INST_0_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF0101FF"
    )
        port map (
      I0 => counter(2),
      I1 => counter(3),
      I2 => counter(4),
      I3 => state(1),
      I4 => state(0),
      O => SCLK_INST_0_i_1_n_0
    );
SDIN_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => state(2),
      I3 => temp_sdo_reg_n_0,
      O => SDIN
    );
\counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter(0),
      O => \counter[0]_i_1_n_0\
    );
\counter[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FFEF00"
    )
        port map (
      I0 => counter(2),
      I1 => counter(4),
      I2 => counter(3),
      I3 => counter(0),
      I4 => counter(1),
      O => \counter[1]_i_1_n_0\
    );
\counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => counter(2),
      I1 => counter(0),
      I2 => counter(1),
      O => \counter[2]_i_1_n_0\
    );
\counter[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7688FF00"
    )
        port map (
      I0 => counter(2),
      I1 => counter(1),
      I2 => counter(4),
      I3 => counter(3),
      I4 => counter(0),
      O => \counter[3]_i_1_n_0\
    );
\counter[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000020"
    )
        port map (
      I0 => \shift_counter[3]_i_4_n_0\,
      I1 => \shift_counter_reg_n_0_[0]\,
      I2 => \shift_counter_reg_n_0_[3]\,
      I3 => \shift_counter_reg_n_0_[2]\,
      I4 => \shift_counter_reg_n_0_[1]\,
      I5 => \shift_counter[3]_i_5_n_0\,
      O => \counter[4]_i_1_n_0\
    );
\counter[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => counter(3),
      I1 => counter(1),
      I2 => counter(0),
      I3 => counter(2),
      I4 => counter(4),
      O => \counter[4]_i_2_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter[0]_i_1_n_0\,
      Q => counter(0),
      R => \counter[4]_i_1_n_0\
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter[1]_i_1_n_0\,
      Q => counter(1),
      R => \counter[4]_i_1_n_0\
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter[2]_i_1_n_0\,
      Q => counter(2),
      R => \counter[4]_i_1_n_0\
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter[3]_i_1_n_0\,
      Q => counter(3),
      R => \counter[4]_i_1_n_0\
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter[4]_i_2_n_0\,
      Q => counter(4),
      R => \counter[4]_i_1_n_0\
    );
\shift_counter[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"33333331"
    )
        port map (
      I0 => \shift_counter_reg_n_0_[3]\,
      I1 => \shift_counter_reg_n_0_[0]\,
      I2 => \shift_counter_reg_n_0_[2]\,
      I3 => \shift_counter_reg_n_0_[1]\,
      I4 => \shift_counter[3]_i_5_n_0\,
      O => shift_counter(0)
    );
\shift_counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \shift_counter_reg_n_0_[0]\,
      I1 => \shift_counter_reg_n_0_[1]\,
      O => shift_counter(1)
    );
\shift_counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \shift_counter_reg_n_0_[1]\,
      I1 => \shift_counter_reg_n_0_[0]\,
      I2 => \shift_counter_reg_n_0_[2]\,
      O => shift_counter(2)
    );
\shift_counter[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => state(2),
      O => \shift_counter[3]_i_1_n_0\
    );
\shift_counter[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1404"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => state(0),
      I3 => \shift_counter[3]_i_4_n_0\,
      O => \shift_counter[3]_i_2_n_0\
    );
\shift_counter[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3FC0FE00"
    )
        port map (
      I0 => \shift_counter[3]_i_5_n_0\,
      I1 => \shift_counter_reg_n_0_[1]\,
      I2 => \shift_counter_reg_n_0_[2]\,
      I3 => \shift_counter_reg_n_0_[3]\,
      I4 => \shift_counter_reg_n_0_[0]\,
      O => shift_counter(3)
    );
\shift_counter[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => counter(0),
      I1 => counter(3),
      I2 => counter(4),
      I3 => counter(1),
      I4 => counter(2),
      O => \shift_counter[3]_i_4_n_0\
    );
\shift_counter[3]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => state(0),
      O => \shift_counter[3]_i_5_n_0\
    );
\shift_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \shift_counter[3]_i_2_n_0\,
      D => shift_counter(0),
      Q => \shift_counter_reg_n_0_[0]\,
      R => \shift_counter[3]_i_1_n_0\
    );
\shift_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \shift_counter[3]_i_2_n_0\,
      D => shift_counter(1),
      Q => \shift_counter_reg_n_0_[1]\,
      R => \shift_counter[3]_i_1_n_0\
    );
\shift_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \shift_counter[3]_i_2_n_0\,
      D => shift_counter(2),
      Q => \shift_counter_reg_n_0_[2]\,
      R => \shift_counter[3]_i_1_n_0\
    );
\shift_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \shift_counter[3]_i_2_n_0\,
      D => shift_counter(3),
      Q => \shift_counter_reg_n_0_[3]\,
      R => \shift_counter[3]_i_1_n_0\
    );
\shift_register[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \shift_register_reg[7]_0\(0),
      I1 => state(0),
      O => shift_register(0)
    );
\shift_register[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \shift_register_reg_n_0_[0]\,
      I1 => state(0),
      I2 => \shift_register_reg[7]_0\(1),
      O => shift_register(1)
    );
\shift_register[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \shift_register_reg_n_0_[1]\,
      I1 => state(0),
      I2 => \shift_register_reg[7]_0\(2),
      O => shift_register(2)
    );
\shift_register[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \shift_register_reg_n_0_[2]\,
      I1 => state(0),
      I2 => \shift_register_reg[7]_0\(3),
      O => shift_register(3)
    );
\shift_register[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \shift_register_reg_n_0_[3]\,
      I1 => state(0),
      I2 => \shift_register_reg[7]_0\(4),
      O => shift_register(4)
    );
\shift_register[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \shift_register_reg_n_0_[4]\,
      I1 => state(0),
      I2 => \shift_register_reg[7]_0\(5),
      O => shift_register(5)
    );
\shift_register[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \shift_register_reg_n_0_[5]\,
      I1 => state(0),
      I2 => \shift_register_reg[7]_0\(6),
      O => shift_register(6)
    );
\shift_register[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"000B"
    )
        port map (
      I0 => \shift_counter[3]_i_4_n_0\,
      I1 => state(0),
      I2 => state(1),
      I3 => state(2),
      O => \shift_register[7]_i_1_n_0\
    );
\shift_register[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \shift_register_reg_n_0_[6]\,
      I1 => state(0),
      I2 => \shift_register_reg[7]_0\(7),
      O => shift_register(7)
    );
\shift_register_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \shift_register[7]_i_1_n_0\,
      D => shift_register(0),
      Q => \shift_register_reg_n_0_[0]\,
      R => '0'
    );
\shift_register_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \shift_register[7]_i_1_n_0\,
      D => shift_register(1),
      Q => \shift_register_reg_n_0_[1]\,
      R => '0'
    );
\shift_register_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \shift_register[7]_i_1_n_0\,
      D => shift_register(2),
      Q => \shift_register_reg_n_0_[2]\,
      R => '0'
    );
\shift_register_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \shift_register[7]_i_1_n_0\,
      D => shift_register(3),
      Q => \shift_register_reg_n_0_[3]\,
      R => '0'
    );
\shift_register_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \shift_register[7]_i_1_n_0\,
      D => shift_register(4),
      Q => \shift_register_reg_n_0_[4]\,
      R => '0'
    );
\shift_register_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \shift_register[7]_i_1_n_0\,
      D => shift_register(5),
      Q => \shift_register_reg_n_0_[5]\,
      R => '0'
    );
\shift_register_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \shift_register[7]_i_1_n_0\,
      D => shift_register(6),
      Q => \shift_register_reg_n_0_[6]\,
      R => '0'
    );
\shift_register_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \shift_register[7]_i_1_n_0\,
      D => shift_register(7),
      Q => \shift_register_reg_n_0_[7]\,
      R => '0'
    );
\state[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF0000001100F0"
    )
        port map (
      I0 => \FSM_sequential_state_reg[0]_0\,
      I1 => \state[7]_i_9_n_0\,
      I2 => disp_on_start,
      I3 => Q(1),
      I4 => Q(0),
      I5 => Q(2),
      O => temp_spi_start_reg
    );
\state[7]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => state(0),
      O => \state[7]_i_9_n_0\
    );
temp_sdo_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAE2AAAAAAFF"
    )
        port map (
      I0 => temp_sdo_reg_n_0,
      I1 => \shift_counter[3]_i_4_n_0\,
      I2 => \shift_register_reg_n_0_[7]\,
      I3 => state(2),
      I4 => state(1),
      I5 => state(0),
      O => temp_sdo_i_1_n_0
    );
temp_sdo_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => temp_sdo_i_1_n_0,
      Q => temp_sdo_reg_n_0,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_oled_0_delay_ms is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    \state_reg[0]\ : in STD_LOGIC;
    \state_reg[0]_0\ : in STD_LOGIC;
    \state_reg[0]_1\ : in STD_LOGIC;
    \state_reg[0]_2\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \FSM_onehot_state_reg[2]_0\ : in STD_LOGIC;
    \stop_time_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of top_oled_0_delay_ms : entity is "delay_ms";
end top_oled_0_delay_ms;

architecture STRUCTURE of top_oled_0_delay_ms is
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal clk_counter : STD_LOGIC;
  signal \clk_counter0_carry__0_n_0\ : STD_LOGIC;
  signal \clk_counter0_carry__0_n_1\ : STD_LOGIC;
  signal \clk_counter0_carry__0_n_2\ : STD_LOGIC;
  signal \clk_counter0_carry__0_n_3\ : STD_LOGIC;
  signal \clk_counter0_carry__0_n_4\ : STD_LOGIC;
  signal \clk_counter0_carry__0_n_5\ : STD_LOGIC;
  signal \clk_counter0_carry__0_n_6\ : STD_LOGIC;
  signal \clk_counter0_carry__0_n_7\ : STD_LOGIC;
  signal \clk_counter0_carry__1_n_0\ : STD_LOGIC;
  signal \clk_counter0_carry__1_n_1\ : STD_LOGIC;
  signal \clk_counter0_carry__1_n_2\ : STD_LOGIC;
  signal \clk_counter0_carry__1_n_3\ : STD_LOGIC;
  signal \clk_counter0_carry__1_n_4\ : STD_LOGIC;
  signal \clk_counter0_carry__1_n_5\ : STD_LOGIC;
  signal \clk_counter0_carry__1_n_6\ : STD_LOGIC;
  signal \clk_counter0_carry__1_n_7\ : STD_LOGIC;
  signal \clk_counter0_carry__2_n_1\ : STD_LOGIC;
  signal \clk_counter0_carry__2_n_2\ : STD_LOGIC;
  signal \clk_counter0_carry__2_n_3\ : STD_LOGIC;
  signal \clk_counter0_carry__2_n_4\ : STD_LOGIC;
  signal \clk_counter0_carry__2_n_5\ : STD_LOGIC;
  signal \clk_counter0_carry__2_n_6\ : STD_LOGIC;
  signal \clk_counter0_carry__2_n_7\ : STD_LOGIC;
  signal clk_counter0_carry_n_0 : STD_LOGIC;
  signal clk_counter0_carry_n_1 : STD_LOGIC;
  signal clk_counter0_carry_n_2 : STD_LOGIC;
  signal clk_counter0_carry_n_3 : STD_LOGIC;
  signal clk_counter0_carry_n_4 : STD_LOGIC;
  signal clk_counter0_carry_n_5 : STD_LOGIC;
  signal clk_counter0_carry_n_6 : STD_LOGIC;
  signal clk_counter0_carry_n_7 : STD_LOGIC;
  signal \clk_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \clk_counter__0\ : STD_LOGIC_VECTOR ( 16 downto 1 );
  signal \clk_counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \clk_counter_reg_n_0_[10]\ : STD_LOGIC;
  signal \clk_counter_reg_n_0_[11]\ : STD_LOGIC;
  signal \clk_counter_reg_n_0_[12]\ : STD_LOGIC;
  signal \clk_counter_reg_n_0_[13]\ : STD_LOGIC;
  signal \clk_counter_reg_n_0_[14]\ : STD_LOGIC;
  signal \clk_counter_reg_n_0_[15]\ : STD_LOGIC;
  signal \clk_counter_reg_n_0_[16]\ : STD_LOGIC;
  signal \clk_counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \clk_counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \clk_counter_reg_n_0_[3]\ : STD_LOGIC;
  signal \clk_counter_reg_n_0_[4]\ : STD_LOGIC;
  signal \clk_counter_reg_n_0_[5]\ : STD_LOGIC;
  signal \clk_counter_reg_n_0_[6]\ : STD_LOGIC;
  signal \clk_counter_reg_n_0_[7]\ : STD_LOGIC;
  signal \clk_counter_reg_n_0_[8]\ : STD_LOGIC;
  signal \clk_counter_reg_n_0_[9]\ : STD_LOGIC;
  signal ms_counter : STD_LOGIC;
  signal \ms_counter[0]_i_4_n_0\ : STD_LOGIC;
  signal \ms_counter__0\ : STD_LOGIC;
  signal ms_counter_reg : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \ms_counter_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \ms_counter_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \ms_counter_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \ms_counter_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \ms_counter_reg[0]_i_3_n_4\ : STD_LOGIC;
  signal \ms_counter_reg[0]_i_3_n_5\ : STD_LOGIC;
  signal \ms_counter_reg[0]_i_3_n_6\ : STD_LOGIC;
  signal \ms_counter_reg[0]_i_3_n_7\ : STD_LOGIC;
  signal \ms_counter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \ms_counter_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \ms_counter_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \ms_counter_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \ms_counter_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \ms_counter_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \ms_counter_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \ms_counter_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \ms_counter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \ms_counter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \ms_counter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \ms_counter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \ms_counter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \ms_counter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \ms_counter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal state10_in : STD_LOGIC;
  signal state1_carry_i_1_n_0 : STD_LOGIC;
  signal state1_carry_i_2_n_0 : STD_LOGIC;
  signal state1_carry_i_3_n_0 : STD_LOGIC;
  signal state1_carry_i_4_n_0 : STD_LOGIC;
  signal state1_carry_n_1 : STD_LOGIC;
  signal state1_carry_n_2 : STD_LOGIC;
  signal state1_carry_n_3 : STD_LOGIC;
  signal \state[7]_i_5_n_0\ : STD_LOGIC;
  signal stop_time : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal stop_time_0 : STD_LOGIC;
  signal \NLW_clk_counter0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_ms_counter_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_state1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "Hold:0010,Done:0100,Idle:0001,iSTATE:1000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "Hold:0010,Done:0100,Idle:0001,iSTATE:1000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "Hold:0010,Done:0100,Idle:0001,iSTATE:1000";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \clk_counter[10]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \clk_counter[11]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \clk_counter[12]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \clk_counter[13]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \clk_counter[14]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \clk_counter[15]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \clk_counter[16]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \clk_counter[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \clk_counter[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \clk_counter[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \clk_counter[4]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \clk_counter[5]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \clk_counter[6]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \clk_counter[7]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \clk_counter[8]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \clk_counter[9]_i_1\ : label is "soft_lutpair2";
begin
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3233323237373737"
    )
        port map (
      I0 => stop_time_0,
      I1 => \FSM_onehot_state_reg[2]_0\,
      I2 => \FSM_onehot_state_reg_n_0_[2]\,
      I3 => \FSM_onehot_state[2]_i_2_n_0\,
      I4 => state10_in,
      I5 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \FSM_onehot_state[0]_i_1_n_0\
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAAEFEFA8A8A8A8"
    )
        port map (
      I0 => stop_time_0,
      I1 => \FSM_onehot_state_reg[2]_0\,
      I2 => \FSM_onehot_state_reg_n_0_[2]\,
      I3 => \FSM_onehot_state[2]_i_2_n_0\,
      I4 => state10_in,
      I5 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C8CCC8C840404040"
    )
        port map (
      I0 => stop_time_0,
      I1 => \FSM_onehot_state_reg[2]_0\,
      I2 => \FSM_onehot_state_reg_n_0_[2]\,
      I3 => \FSM_onehot_state[2]_i_2_n_0\,
      I4 => state10_in,
      I5 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \FSM_onehot_state[2]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF7"
    )
        port map (
      I0 => \clk_counter_reg_n_0_[4]\,
      I1 => \clk_counter_reg_n_0_[3]\,
      I2 => \clk_counter_reg_n_0_[6]\,
      I3 => \clk_counter_reg_n_0_[5]\,
      I4 => \FSM_onehot_state[2]_i_3_n_0\,
      I5 => \FSM_onehot_state[2]_i_4_n_0\,
      O => \FSM_onehot_state[2]_i_2_n_0\
    );
\FSM_onehot_state[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \clk_counter_reg_n_0_[0]\,
      I1 => \clk_counter_reg_n_0_[15]\,
      I2 => \clk_counter_reg_n_0_[16]\,
      I3 => \clk_counter_reg_n_0_[2]\,
      I4 => \clk_counter_reg_n_0_[1]\,
      O => \FSM_onehot_state[2]_i_3_n_0\
    );
\FSM_onehot_state[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF7FF"
    )
        port map (
      I0 => \clk_counter_reg_n_0_[9]\,
      I1 => \clk_counter_reg_n_0_[10]\,
      I2 => \clk_counter_reg_n_0_[8]\,
      I3 => \clk_counter_reg_n_0_[7]\,
      I4 => \FSM_onehot_state[2]_i_5_n_0\,
      O => \FSM_onehot_state[2]_i_4_n_0\
    );
\FSM_onehot_state[2]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \clk_counter_reg_n_0_[12]\,
      I1 => \clk_counter_reg_n_0_[11]\,
      I2 => \clk_counter_reg_n_0_[14]\,
      I3 => \clk_counter_reg_n_0_[13]\,
      O => \FSM_onehot_state[2]_i_5_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[0]_i_1_n_0\,
      Q => stop_time_0,
      R => '0'
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[1]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[1]\,
      R => '0'
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[2]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[2]\,
      R => '0'
    );
clk_counter0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => clk_counter0_carry_n_0,
      CO(2) => clk_counter0_carry_n_1,
      CO(1) => clk_counter0_carry_n_2,
      CO(0) => clk_counter0_carry_n_3,
      CYINIT => \clk_counter_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3) => clk_counter0_carry_n_4,
      O(2) => clk_counter0_carry_n_5,
      O(1) => clk_counter0_carry_n_6,
      O(0) => clk_counter0_carry_n_7,
      S(3) => \clk_counter_reg_n_0_[4]\,
      S(2) => \clk_counter_reg_n_0_[3]\,
      S(1) => \clk_counter_reg_n_0_[2]\,
      S(0) => \clk_counter_reg_n_0_[1]\
    );
\clk_counter0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => clk_counter0_carry_n_0,
      CO(3) => \clk_counter0_carry__0_n_0\,
      CO(2) => \clk_counter0_carry__0_n_1\,
      CO(1) => \clk_counter0_carry__0_n_2\,
      CO(0) => \clk_counter0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clk_counter0_carry__0_n_4\,
      O(2) => \clk_counter0_carry__0_n_5\,
      O(1) => \clk_counter0_carry__0_n_6\,
      O(0) => \clk_counter0_carry__0_n_7\,
      S(3) => \clk_counter_reg_n_0_[8]\,
      S(2) => \clk_counter_reg_n_0_[7]\,
      S(1) => \clk_counter_reg_n_0_[6]\,
      S(0) => \clk_counter_reg_n_0_[5]\
    );
\clk_counter0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_counter0_carry__0_n_0\,
      CO(3) => \clk_counter0_carry__1_n_0\,
      CO(2) => \clk_counter0_carry__1_n_1\,
      CO(1) => \clk_counter0_carry__1_n_2\,
      CO(0) => \clk_counter0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clk_counter0_carry__1_n_4\,
      O(2) => \clk_counter0_carry__1_n_5\,
      O(1) => \clk_counter0_carry__1_n_6\,
      O(0) => \clk_counter0_carry__1_n_7\,
      S(3) => \clk_counter_reg_n_0_[12]\,
      S(2) => \clk_counter_reg_n_0_[11]\,
      S(1) => \clk_counter_reg_n_0_[10]\,
      S(0) => \clk_counter_reg_n_0_[9]\
    );
\clk_counter0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_counter0_carry__1_n_0\,
      CO(3) => \NLW_clk_counter0_carry__2_CO_UNCONNECTED\(3),
      CO(2) => \clk_counter0_carry__2_n_1\,
      CO(1) => \clk_counter0_carry__2_n_2\,
      CO(0) => \clk_counter0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clk_counter0_carry__2_n_4\,
      O(2) => \clk_counter0_carry__2_n_5\,
      O(1) => \clk_counter0_carry__2_n_6\,
      O(0) => \clk_counter0_carry__2_n_7\,
      S(3) => \clk_counter_reg_n_0_[16]\,
      S(2) => \clk_counter_reg_n_0_[15]\,
      S(1) => \clk_counter_reg_n_0_[14]\,
      S(0) => \clk_counter_reg_n_0_[13]\
    );
\clk_counter[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_state[2]_i_2_n_0\,
      I1 => \clk_counter_reg_n_0_[0]\,
      O => \clk_counter[0]_i_1_n_0\
    );
\clk_counter[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state[2]_i_2_n_0\,
      I1 => \clk_counter0_carry__1_n_6\,
      O => \clk_counter__0\(10)
    );
\clk_counter[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state[2]_i_2_n_0\,
      I1 => \clk_counter0_carry__1_n_5\,
      O => \clk_counter__0\(11)
    );
\clk_counter[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state[2]_i_2_n_0\,
      I1 => \clk_counter0_carry__1_n_4\,
      O => \clk_counter__0\(12)
    );
\clk_counter[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state[2]_i_2_n_0\,
      I1 => \clk_counter0_carry__2_n_7\,
      O => \clk_counter__0\(13)
    );
\clk_counter[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state[2]_i_2_n_0\,
      I1 => \clk_counter0_carry__2_n_6\,
      O => \clk_counter__0\(14)
    );
\clk_counter[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state[2]_i_2_n_0\,
      I1 => \clk_counter0_carry__2_n_5\,
      O => \clk_counter__0\(15)
    );
\clk_counter[16]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      O => clk_counter
    );
\clk_counter[16]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state[2]_i_2_n_0\,
      I1 => \clk_counter0_carry__2_n_4\,
      O => \clk_counter__0\(16)
    );
\clk_counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state[2]_i_2_n_0\,
      I1 => clk_counter0_carry_n_7,
      O => \clk_counter__0\(1)
    );
\clk_counter[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state[2]_i_2_n_0\,
      I1 => clk_counter0_carry_n_6,
      O => \clk_counter__0\(2)
    );
\clk_counter[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state[2]_i_2_n_0\,
      I1 => clk_counter0_carry_n_5,
      O => \clk_counter__0\(3)
    );
\clk_counter[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state[2]_i_2_n_0\,
      I1 => clk_counter0_carry_n_4,
      O => \clk_counter__0\(4)
    );
\clk_counter[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state[2]_i_2_n_0\,
      I1 => \clk_counter0_carry__0_n_7\,
      O => \clk_counter__0\(5)
    );
\clk_counter[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state[2]_i_2_n_0\,
      I1 => \clk_counter0_carry__0_n_6\,
      O => \clk_counter__0\(6)
    );
\clk_counter[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state[2]_i_2_n_0\,
      I1 => \clk_counter0_carry__0_n_5\,
      O => \clk_counter__0\(7)
    );
\clk_counter[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state[2]_i_2_n_0\,
      I1 => \clk_counter0_carry__0_n_4\,
      O => \clk_counter__0\(8)
    );
\clk_counter[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state[2]_i_2_n_0\,
      I1 => \clk_counter0_carry__1_n_7\,
      O => \clk_counter__0\(9)
    );
\clk_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \clk_counter[0]_i_1_n_0\,
      Q => \clk_counter_reg_n_0_[0]\,
      R => clk_counter
    );
\clk_counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \clk_counter__0\(10),
      Q => \clk_counter_reg_n_0_[10]\,
      R => clk_counter
    );
\clk_counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \clk_counter__0\(11),
      Q => \clk_counter_reg_n_0_[11]\,
      R => clk_counter
    );
\clk_counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \clk_counter__0\(12),
      Q => \clk_counter_reg_n_0_[12]\,
      R => clk_counter
    );
\clk_counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \clk_counter__0\(13),
      Q => \clk_counter_reg_n_0_[13]\,
      R => clk_counter
    );
\clk_counter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \clk_counter__0\(14),
      Q => \clk_counter_reg_n_0_[14]\,
      R => clk_counter
    );
\clk_counter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \clk_counter__0\(15),
      Q => \clk_counter_reg_n_0_[15]\,
      R => clk_counter
    );
\clk_counter_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \clk_counter__0\(16),
      Q => \clk_counter_reg_n_0_[16]\,
      R => clk_counter
    );
\clk_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \clk_counter__0\(1),
      Q => \clk_counter_reg_n_0_[1]\,
      R => clk_counter
    );
\clk_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \clk_counter__0\(2),
      Q => \clk_counter_reg_n_0_[2]\,
      R => clk_counter
    );
\clk_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \clk_counter__0\(3),
      Q => \clk_counter_reg_n_0_[3]\,
      R => clk_counter
    );
\clk_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \clk_counter__0\(4),
      Q => \clk_counter_reg_n_0_[4]\,
      R => clk_counter
    );
\clk_counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \clk_counter__0\(5),
      Q => \clk_counter_reg_n_0_[5]\,
      R => clk_counter
    );
\clk_counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \clk_counter__0\(6),
      Q => \clk_counter_reg_n_0_[6]\,
      R => clk_counter
    );
\clk_counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \clk_counter__0\(7),
      Q => \clk_counter_reg_n_0_[7]\,
      R => clk_counter
    );
\clk_counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \clk_counter__0\(8),
      Q => \clk_counter_reg_n_0_[8]\,
      R => clk_counter
    );
\clk_counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \clk_counter__0\(9),
      Q => \clk_counter_reg_n_0_[9]\,
      R => clk_counter
    );
\ms_counter[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => \FSM_onehot_state[2]_i_2_n_0\,
      I1 => state10_in,
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      O => ms_counter
    );
\ms_counter[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \FSM_onehot_state[2]_i_2_n_0\,
      O => \ms_counter__0\
    );
\ms_counter[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ms_counter_reg(0),
      O => \ms_counter[0]_i_4_n_0\
    );
\ms_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \ms_counter__0\,
      D => \ms_counter_reg[0]_i_3_n_7\,
      Q => ms_counter_reg(0),
      R => ms_counter
    );
\ms_counter_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \ms_counter_reg[0]_i_3_n_0\,
      CO(2) => \ms_counter_reg[0]_i_3_n_1\,
      CO(1) => \ms_counter_reg[0]_i_3_n_2\,
      CO(0) => \ms_counter_reg[0]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \ms_counter_reg[0]_i_3_n_4\,
      O(2) => \ms_counter_reg[0]_i_3_n_5\,
      O(1) => \ms_counter_reg[0]_i_3_n_6\,
      O(0) => \ms_counter_reg[0]_i_3_n_7\,
      S(3 downto 1) => ms_counter_reg(3 downto 1),
      S(0) => \ms_counter[0]_i_4_n_0\
    );
\ms_counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \ms_counter__0\,
      D => \ms_counter_reg[8]_i_1_n_5\,
      Q => ms_counter_reg(10),
      R => ms_counter
    );
\ms_counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \ms_counter__0\,
      D => \ms_counter_reg[8]_i_1_n_4\,
      Q => ms_counter_reg(11),
      R => ms_counter
    );
\ms_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \ms_counter__0\,
      D => \ms_counter_reg[0]_i_3_n_6\,
      Q => ms_counter_reg(1),
      R => ms_counter
    );
\ms_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \ms_counter__0\,
      D => \ms_counter_reg[0]_i_3_n_5\,
      Q => ms_counter_reg(2),
      R => ms_counter
    );
\ms_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \ms_counter__0\,
      D => \ms_counter_reg[0]_i_3_n_4\,
      Q => ms_counter_reg(3),
      R => ms_counter
    );
\ms_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \ms_counter__0\,
      D => \ms_counter_reg[4]_i_1_n_7\,
      Q => ms_counter_reg(4),
      R => ms_counter
    );
\ms_counter_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ms_counter_reg[0]_i_3_n_0\,
      CO(3) => \ms_counter_reg[4]_i_1_n_0\,
      CO(2) => \ms_counter_reg[4]_i_1_n_1\,
      CO(1) => \ms_counter_reg[4]_i_1_n_2\,
      CO(0) => \ms_counter_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ms_counter_reg[4]_i_1_n_4\,
      O(2) => \ms_counter_reg[4]_i_1_n_5\,
      O(1) => \ms_counter_reg[4]_i_1_n_6\,
      O(0) => \ms_counter_reg[4]_i_1_n_7\,
      S(3 downto 0) => ms_counter_reg(7 downto 4)
    );
\ms_counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \ms_counter__0\,
      D => \ms_counter_reg[4]_i_1_n_6\,
      Q => ms_counter_reg(5),
      R => ms_counter
    );
\ms_counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \ms_counter__0\,
      D => \ms_counter_reg[4]_i_1_n_5\,
      Q => ms_counter_reg(6),
      R => ms_counter
    );
\ms_counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \ms_counter__0\,
      D => \ms_counter_reg[4]_i_1_n_4\,
      Q => ms_counter_reg(7),
      R => ms_counter
    );
\ms_counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \ms_counter__0\,
      D => \ms_counter_reg[8]_i_1_n_7\,
      Q => ms_counter_reg(8),
      R => ms_counter
    );
\ms_counter_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ms_counter_reg[4]_i_1_n_0\,
      CO(3) => \NLW_ms_counter_reg[8]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \ms_counter_reg[8]_i_1_n_1\,
      CO(1) => \ms_counter_reg[8]_i_1_n_2\,
      CO(0) => \ms_counter_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ms_counter_reg[8]_i_1_n_4\,
      O(2) => \ms_counter_reg[8]_i_1_n_5\,
      O(1) => \ms_counter_reg[8]_i_1_n_6\,
      O(0) => \ms_counter_reg[8]_i_1_n_7\,
      S(3 downto 0) => ms_counter_reg(11 downto 8)
    );
\ms_counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \ms_counter__0\,
      D => \ms_counter_reg[8]_i_1_n_6\,
      Q => ms_counter_reg(9),
      R => ms_counter
    );
state1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => state10_in,
      CO(2) => state1_carry_n_1,
      CO(1) => state1_carry_n_2,
      CO(0) => state1_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_state1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => state1_carry_i_1_n_0,
      S(2) => state1_carry_i_2_n_0,
      S(1) => state1_carry_i_3_n_0,
      S(0) => state1_carry_i_4_n_0
    );
state1_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => ms_counter_reg(11),
      I1 => ms_counter_reg(10),
      I2 => ms_counter_reg(9),
      O => state1_carry_i_1_n_0
    );
state1_carry_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"41000041"
    )
        port map (
      I0 => ms_counter_reg(8),
      I1 => stop_time(7),
      I2 => ms_counter_reg(7),
      I3 => ms_counter_reg(6),
      I4 => stop_time(6),
      O => state1_carry_i_2_n_0
    );
state1_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => stop_time(5),
      I1 => ms_counter_reg(5),
      I2 => stop_time(4),
      I3 => ms_counter_reg(4),
      I4 => ms_counter_reg(3),
      I5 => stop_time(3),
      O => state1_carry_i_3_n_0
    );
state1_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => stop_time(2),
      I1 => ms_counter_reg(2),
      I2 => stop_time(1),
      I3 => ms_counter_reg(1),
      I4 => ms_counter_reg(0),
      I5 => stop_time(0),
      O => state1_carry_i_4_n_0
    );
\state[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \state_reg[0]\,
      I1 => \state_reg[0]_0\,
      I2 => \state[7]_i_5_n_0\,
      I3 => \state_reg[0]_1\,
      O => E(0)
    );
\state[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000044F44444"
    )
        port map (
      I0 => \state_reg[0]_2\,
      I1 => Q(2),
      I2 => stop_time_0,
      I3 => \FSM_onehot_state_reg[2]_0\,
      I4 => Q(1),
      I5 => Q(0),
      O => \state[7]_i_5_n_0\
    );
\stop_time_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => stop_time_0,
      D => \stop_time_reg[7]_0\(0),
      Q => stop_time(0),
      R => '0'
    );
\stop_time_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => stop_time_0,
      D => \stop_time_reg[7]_0\(1),
      Q => stop_time(1),
      R => '0'
    );
\stop_time_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => stop_time_0,
      D => \stop_time_reg[7]_0\(2),
      Q => stop_time(2),
      R => '0'
    );
\stop_time_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => stop_time_0,
      D => \stop_time_reg[7]_0\(3),
      Q => stop_time(3),
      R => '0'
    );
\stop_time_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => stop_time_0,
      D => \stop_time_reg[7]_0\(4),
      Q => stop_time(4),
      R => '0'
    );
\stop_time_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => stop_time_0,
      D => \stop_time_reg[7]_0\(5),
      Q => stop_time(5),
      R => '0'
    );
\stop_time_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => stop_time_0,
      D => \stop_time_reg[7]_0\(6),
      Q => stop_time(6),
      R => '0'
    );
\stop_time_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => stop_time_0,
      D => \stop_time_reg[7]_0\(7),
      Q => stop_time(7),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_oled_0_blk_mem_gen_prim_wrapper is
  port (
    doutb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 8 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 8 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of top_oled_0_blk_mem_gen_prim_wrapper : entity is "blk_mem_gen_prim_wrapper";
end top_oled_0_blk_mem_gen_prim_wrapper;

architecture STRUCTURE of top_oled_0_blk_mem_gen_prim_wrapper is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_1\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_10\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_11\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_12\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_13\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_16\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_17\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_18\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_19\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_2\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_20\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_21\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_24\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_25\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_26\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_27\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_28\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_29\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_3\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_32\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_33\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_34\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_35\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_4\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_5\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_8\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_9\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"00000",
      INIT_B => X"00000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_MODE => "SDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 0,
      WRITE_WIDTH_B => 36
    )
        port map (
      ADDRARDADDR(13 downto 5) => addrb(8 downto 0),
      ADDRARDADDR(4 downto 0) => B"00000",
      ADDRBWRADDR(13 downto 5) => addra(8 downto 0),
      ADDRBWRADDR(4 downto 0) => B"00000",
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DIADI(15 downto 10) => B"000000",
      DIADI(9 downto 8) => dina(3 downto 2),
      DIADI(7 downto 2) => B"000000",
      DIADI(1 downto 0) => dina(1 downto 0),
      DIBDI(15 downto 10) => B"000000",
      DIBDI(9 downto 8) => dina(7 downto 6),
      DIBDI(7 downto 2) => B"000000",
      DIBDI(1 downto 0) => dina(5 downto 4),
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"00",
      DOADO(15) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_0\,
      DOADO(14) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_1\,
      DOADO(13) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_2\,
      DOADO(12) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_3\,
      DOADO(11) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_4\,
      DOADO(10) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_5\,
      DOADO(9 downto 8) => doutb(3 downto 2),
      DOADO(7) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_8\,
      DOADO(6) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_9\,
      DOADO(5) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_10\,
      DOADO(4) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_11\,
      DOADO(3) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_12\,
      DOADO(2) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_13\,
      DOADO(1 downto 0) => doutb(1 downto 0),
      DOBDO(15) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_16\,
      DOBDO(14) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_17\,
      DOBDO(13) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_18\,
      DOBDO(12) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_19\,
      DOBDO(11) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_20\,
      DOBDO(10) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_21\,
      DOBDO(9 downto 8) => doutb(7 downto 6),
      DOBDO(7) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_24\,
      DOBDO(6) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_25\,
      DOBDO(5) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_26\,
      DOBDO(4) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_27\,
      DOBDO(3) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_28\,
      DOBDO(2) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_29\,
      DOBDO(1 downto 0) => doutb(5 downto 4),
      DOPADOP(1) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_32\,
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_33\,
      DOPBDOP(1) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_34\,
      DOPBDOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_35\,
      ENARDEN => '1',
      ENBWREN => wea(0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1 downto 0) => B"00",
      WEBWE(3 downto 0) => B"1111"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_oled_0_blk_mem_gen_prim_wrapper_init is
  port (
    douta : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of top_oled_0_blk_mem_gen_prim_wrapper_init : entity is "blk_mem_gen_prim_wrapper_init";
end top_oled_0_blk_mem_gen_prim_wrapper_init;

architecture STRUCTURE of top_oled_0_blk_mem_gen_prim_wrapper_init is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_n_1\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_n_10\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_n_11\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_n_2\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_n_3\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_n_32\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_n_33\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_n_8\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_n_9\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram\: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000050F00000000000000000000000000000000000000000000",
      INIT_11 => X"000002040206030C06040206030C060400000000000000030000000300000000",
      INIT_12 => X"000002010502020400080102020504020000030204090409070F040904090206",
      INIT_13 => X"0000000000000000000300000000000000000208050802020505040E05000200",
      INIT_14 => X"00000000010C0202040100000000000000000000000004010202010C00000000",
      INIT_15 => X"0000000000080008030E000800080000000001050105000E000E010501050000",
      INIT_16 => X"0000000000080008000800080008000000000000000003000500000000000000",
      INIT_17 => X"0000000100020004000801000200040000000000000000000400000000000000",
      INIT_18 => X"0000000000000400070F04010000000000000000030E040104010401030E0000",
      INIT_19 => X"0000000003060409040904010202000000000000060E04090501060104020000",
      INIT_1A => X"00000000070104090409040902070000000000000100070F0102010401080000",
      INIT_1B => X"000000000003000D010102010403000000000000070004080409040A030C0000",
      INIT_1C => X"00000000010E0209040900090006000000000000030604090409040903060000",
      INIT_1D => X"0000000000000300050200000000000000000000000000000102000000000000",
      INIT_1E => X"0000010401040104010401040104000000000000020201040104000800000000",
      INIT_1F => X"0000000000020005050900010002000000000000000801040104020200000000",
      INIT_20 => X"00000400070C040A0009040A070C04000000020E0501040D0505050D0401030E",
      INIT_21 => X"0000020204010401040104010202010C000003060409040904090409070F0401",
      INIT_22 => X"000006030401050D04090409070F04010000010C0202040104010401070F0401",
      INIT_23 => X"00000008030A0409040904010202010C000000030001010D00090409070F0401",
      INIT_24 => X"0000000004010401070F04010401000000000401070F000800080008070F0401",
      INIT_25 => X"0000040106010102000C0008070F0401000000010001030F0401040104000300",
      INIT_26 => X"00000401070F0402000C0402070F0401000006000400040004000401070F0401",
      INIT_27 => X"0000010C02020401040104010202010C00000001070F0101000C0402070F0401",
      INIT_28 => X"0000040C05020601020102010102000C000000060009000900090409070F0401",
      INIT_29 => X"00000303040904090409040904090606000004060609010900090009070F0401",
      INIT_2A => X"00000001030F040104000401030F00010000000300010401070F040100010003",
      INIT_2B => X"00000001010F060101040601010F000100000001000F030104000301000F0001",
      INIT_2C => X"0000000100030404070804040003000100000401040103060008030604010401",
      INIT_2D => X"00000000000004010401070F0000000000000601040304050409050106010403",
      INIT_2E => X"000000000000070F040104010000000000000400020001000008000400020001",
      INIT_2F => X"0000040004000400040004000400000000000004000200010001000200040000",
      INIT_30 => X"00000400030C040A040A040A0304000000000000000000000000000200010000",
      INIT_31 => X"000000000204040204020402030C000000000300040804080408030F04010000",
      INIT_32 => X"00000000020C040A040A040A030C000000000400030F04090408040803000000",
      INIT_33 => X"00000001030F040904090409020600000000000000090409070E040800000000",
      INIT_34 => X"0000000000000400070D040400000000000004000708040400040408070F0401",
      INIT_35 => X"000004020402020401080100070F0401000000000000030D0404040000000000",
      INIT_36 => X"00000400070E0002070C0002070E04020000000004000400070F040104000000",
      INIT_37 => X"00000000030C040204020402030C000000000400070C040200020404070E0402",
      INIT_38 => X"00000401070F0409000900090006000000000006000900090409070F04010000",
      INIT_39 => X"000000000306040A040A040A0604000000000004000200020404070E04020000",
      INIT_3A => X"0400070E020204000400030E0002000000000000020004040404030F00040000",
      INIT_3B => X"00000002010E060201080602010E000200000002000E030204000302000E0002",
      INIT_3C => X"0000000100030005030804050403000100000402060201040008010406020402",
      INIT_3D => X"00000000000004010306000800000000000006020406040A0502060204060000",
      INIT_3E => X"000000000008030604010000000000000000000000000000070F000000000000",
      INIT_3F => X"05050A0A05050A0A05050A0A05050A0A00000108010001000008000801080000",
      INIT_A => X"00000",
      INIT_B => X"00000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 18,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 18
    )
        port map (
      ADDRARDADDR(13 downto 4) => addra(9 downto 0),
      ADDRARDADDR(3 downto 0) => B"0000",
      ADDRBWRADDR(13 downto 0) => B"00000000000000",
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DIADI(15 downto 0) => B"0000000000000000",
      DIBDI(15 downto 0) => B"0000000000000000",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"00",
      DOADO(15) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_n_0\,
      DOADO(14) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_n_1\,
      DOADO(13) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_n_2\,
      DOADO(12) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_n_3\,
      DOADO(11 downto 8) => douta(7 downto 4),
      DOADO(7) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_n_8\,
      DOADO(6) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_n_9\,
      DOADO(5) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_n_10\,
      DOADO(4) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_n_11\,
      DOADO(3 downto 0) => douta(3 downto 0),
      DOBDO(15 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED\(15 downto 0),
      DOPADOP(1) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_n_32\,
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_n_33\,
      DOPBDOP(1 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED\(1 downto 0),
      ENARDEN => '1',
      ENBWREN => '0',
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1 downto 0) => B"00",
      WEBWE(3 downto 0) => B"0000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \top_oled_0_blk_mem_gen_prim_wrapper_init__parameterized0\ is
  port (
    douta : out STD_LOGIC_VECTOR ( 14 downto 0 );
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \top_oled_0_blk_mem_gen_prim_wrapper_init__parameterized0\ : entity is "blk_mem_gen_prim_wrapper_init";
end \top_oled_0_blk_mem_gen_prim_wrapper_init__parameterized0\;

architecture STRUCTURE of \top_oled_0_blk_mem_gen_prim_wrapper_init__parameterized0\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_1\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_10\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_11\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_16\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_17\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_18\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_19\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_2\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_20\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_24\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_25\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_26\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_27\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_3\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_32\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_33\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_34\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_35\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_8\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_9\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram\: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"05010F0105010D09050101040501080D030100010201000105010A0E01090001",
      INIT_01 => X"05000A0F0500000005000D0A05000C0005000A000500000F0500080101020604",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"00000",
      INIT_B => X"00000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 18,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 18
    )
        port map (
      ADDRARDADDR(13 downto 9) => B"00000",
      ADDRARDADDR(8 downto 5) => addra(3 downto 0),
      ADDRARDADDR(4 downto 0) => B"00000",
      ADDRBWRADDR(13 downto 9) => B"00000",
      ADDRBWRADDR(8 downto 5) => addra(3 downto 0),
      ADDRBWRADDR(4 downto 0) => B"10000",
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DIADI(15 downto 0) => B"0000000000000000",
      DIBDI(15 downto 0) => B"0000000000000000",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"00",
      DOADO(15) => \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_0\,
      DOADO(14) => \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_1\,
      DOADO(13) => \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_2\,
      DOADO(12) => \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_3\,
      DOADO(11 downto 8) => douta(7 downto 4),
      DOADO(7) => \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_8\,
      DOADO(6) => \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_9\,
      DOADO(5) => \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_10\,
      DOADO(4) => \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_11\,
      DOADO(3 downto 0) => douta(3 downto 0),
      DOBDO(15) => \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_16\,
      DOBDO(14) => \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_17\,
      DOBDO(13) => \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_18\,
      DOBDO(12) => \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_19\,
      DOBDO(11) => \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_20\,
      DOBDO(10 downto 8) => douta(14 downto 12),
      DOBDO(7) => \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_24\,
      DOBDO(6) => \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_25\,
      DOBDO(5) => \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_26\,
      DOBDO(4) => \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_27\,
      DOBDO(3 downto 0) => douta(11 downto 8),
      DOPADOP(1) => \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_32\,
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_33\,
      DOPBDOP(1) => \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_34\,
      DOPBDOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_35\,
      ENARDEN => '1',
      ENBWREN => '1',
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1 downto 0) => B"00",
      WEBWE(3 downto 0) => B"0000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_oled_0_blk_mem_gen_prim_width is
  port (
    douta : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of top_oled_0_blk_mem_gen_prim_width : entity is "blk_mem_gen_prim_width";
end top_oled_0_blk_mem_gen_prim_width;

architecture STRUCTURE of top_oled_0_blk_mem_gen_prim_width is
begin
\prim_init.ram\: entity work.top_oled_0_blk_mem_gen_prim_wrapper_init
     port map (
      addra(9 downto 0) => addra(9 downto 0),
      clka => clka,
      douta(7 downto 0) => douta(7 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \top_oled_0_blk_mem_gen_prim_width__parameterized0\ is
  port (
    doutb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 8 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 8 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \top_oled_0_blk_mem_gen_prim_width__parameterized0\ : entity is "blk_mem_gen_prim_width";
end \top_oled_0_blk_mem_gen_prim_width__parameterized0\;

architecture STRUCTURE of \top_oled_0_blk_mem_gen_prim_width__parameterized0\ is
begin
\prim_noinit.ram\: entity work.top_oled_0_blk_mem_gen_prim_wrapper
     port map (
      addra(8 downto 0) => addra(8 downto 0),
      addrb(8 downto 0) => addrb(8 downto 0),
      clka => clka,
      dina(7 downto 0) => dina(7 downto 0),
      doutb(7 downto 0) => doutb(7 downto 0),
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \top_oled_0_blk_mem_gen_prim_width__parameterized1\ is
  port (
    douta : out STD_LOGIC_VECTOR ( 14 downto 0 );
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \top_oled_0_blk_mem_gen_prim_width__parameterized1\ : entity is "blk_mem_gen_prim_width";
end \top_oled_0_blk_mem_gen_prim_width__parameterized1\;

architecture STRUCTURE of \top_oled_0_blk_mem_gen_prim_width__parameterized1\ is
begin
\prim_init.ram\: entity work.\top_oled_0_blk_mem_gen_prim_wrapper_init__parameterized0\
     port map (
      addra(3 downto 0) => addra(3 downto 0),
      clka => clka,
      douta(14 downto 0) => douta(14 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_oled_0_blk_mem_gen_generic_cstr is
  port (
    douta : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of top_oled_0_blk_mem_gen_generic_cstr : entity is "blk_mem_gen_generic_cstr";
end top_oled_0_blk_mem_gen_generic_cstr;

architecture STRUCTURE of top_oled_0_blk_mem_gen_generic_cstr is
begin
\ramloop[0].ram.r\: entity work.top_oled_0_blk_mem_gen_prim_width
     port map (
      addra(9 downto 0) => addra(9 downto 0),
      clka => clka,
      douta(7 downto 0) => douta(7 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \top_oled_0_blk_mem_gen_generic_cstr__parameterized0\ is
  port (
    doutb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 8 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 8 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \top_oled_0_blk_mem_gen_generic_cstr__parameterized0\ : entity is "blk_mem_gen_generic_cstr";
end \top_oled_0_blk_mem_gen_generic_cstr__parameterized0\;

architecture STRUCTURE of \top_oled_0_blk_mem_gen_generic_cstr__parameterized0\ is
begin
\ramloop[0].ram.r\: entity work.\top_oled_0_blk_mem_gen_prim_width__parameterized0\
     port map (
      addra(8 downto 0) => addra(8 downto 0),
      addrb(8 downto 0) => addrb(8 downto 0),
      clka => clka,
      dina(7 downto 0) => dina(7 downto 0),
      doutb(7 downto 0) => doutb(7 downto 0),
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \top_oled_0_blk_mem_gen_generic_cstr__parameterized1\ is
  port (
    douta : out STD_LOGIC_VECTOR ( 14 downto 0 );
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \top_oled_0_blk_mem_gen_generic_cstr__parameterized1\ : entity is "blk_mem_gen_generic_cstr";
end \top_oled_0_blk_mem_gen_generic_cstr__parameterized1\;

architecture STRUCTURE of \top_oled_0_blk_mem_gen_generic_cstr__parameterized1\ is
begin
\ramloop[0].ram.r\: entity work.\top_oled_0_blk_mem_gen_prim_width__parameterized1\
     port map (
      addra(3 downto 0) => addra(3 downto 0),
      clka => clka,
      douta(14 downto 0) => douta(14 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_oled_0_blk_mem_gen_top is
  port (
    douta : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of top_oled_0_blk_mem_gen_top : entity is "blk_mem_gen_top";
end top_oled_0_blk_mem_gen_top;

architecture STRUCTURE of top_oled_0_blk_mem_gen_top is
begin
\valid.cstr\: entity work.top_oled_0_blk_mem_gen_generic_cstr
     port map (
      addra(9 downto 0) => addra(9 downto 0),
      clka => clka,
      douta(7 downto 0) => douta(7 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \top_oled_0_blk_mem_gen_top__parameterized0\ is
  port (
    doutb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 8 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 8 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \top_oled_0_blk_mem_gen_top__parameterized0\ : entity is "blk_mem_gen_top";
end \top_oled_0_blk_mem_gen_top__parameterized0\;

architecture STRUCTURE of \top_oled_0_blk_mem_gen_top__parameterized0\ is
begin
\valid.cstr\: entity work.\top_oled_0_blk_mem_gen_generic_cstr__parameterized0\
     port map (
      addra(8 downto 0) => addra(8 downto 0),
      addrb(8 downto 0) => addrb(8 downto 0),
      clka => clka,
      dina(7 downto 0) => dina(7 downto 0),
      doutb(7 downto 0) => doutb(7 downto 0),
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \top_oled_0_blk_mem_gen_top__parameterized1\ is
  port (
    douta : out STD_LOGIC_VECTOR ( 14 downto 0 );
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \top_oled_0_blk_mem_gen_top__parameterized1\ : entity is "blk_mem_gen_top";
end \top_oled_0_blk_mem_gen_top__parameterized1\;

architecture STRUCTURE of \top_oled_0_blk_mem_gen_top__parameterized1\ is
begin
\valid.cstr\: entity work.\top_oled_0_blk_mem_gen_generic_cstr__parameterized1\
     port map (
      addra(3 downto 0) => addra(3 downto 0),
      clka => clka,
      douta(14 downto 0) => douta(14 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_oled_0_blk_mem_gen_v8_4_1_synth is
  port (
    douta : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of top_oled_0_blk_mem_gen_v8_4_1_synth : entity is "blk_mem_gen_v8_4_1_synth";
end top_oled_0_blk_mem_gen_v8_4_1_synth;

architecture STRUCTURE of top_oled_0_blk_mem_gen_v8_4_1_synth is
begin
\gnbram.gnativebmg.native_blk_mem_gen\: entity work.top_oled_0_blk_mem_gen_top
     port map (
      addra(9 downto 0) => addra(9 downto 0),
      clka => clka,
      douta(7 downto 0) => douta(7 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \top_oled_0_blk_mem_gen_v8_4_1_synth__parameterized0\ is
  port (
    doutb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 8 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 8 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \top_oled_0_blk_mem_gen_v8_4_1_synth__parameterized0\ : entity is "blk_mem_gen_v8_4_1_synth";
end \top_oled_0_blk_mem_gen_v8_4_1_synth__parameterized0\;

architecture STRUCTURE of \top_oled_0_blk_mem_gen_v8_4_1_synth__parameterized0\ is
begin
\gnbram.gnativebmg.native_blk_mem_gen\: entity work.\top_oled_0_blk_mem_gen_top__parameterized0\
     port map (
      addra(8 downto 0) => addra(8 downto 0),
      addrb(8 downto 0) => addrb(8 downto 0),
      clka => clka,
      dina(7 downto 0) => dina(7 downto 0),
      doutb(7 downto 0) => doutb(7 downto 0),
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \top_oled_0_blk_mem_gen_v8_4_1_synth__parameterized1\ is
  port (
    douta : out STD_LOGIC_VECTOR ( 14 downto 0 );
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \top_oled_0_blk_mem_gen_v8_4_1_synth__parameterized1\ : entity is "blk_mem_gen_v8_4_1_synth";
end \top_oled_0_blk_mem_gen_v8_4_1_synth__parameterized1\;

architecture STRUCTURE of \top_oled_0_blk_mem_gen_v8_4_1_synth__parameterized1\ is
begin
\gnbram.gnativebmg.native_blk_mem_gen\: entity work.\top_oled_0_blk_mem_gen_top__parameterized1\
     port map (
      addra(3 downto 0) => addra(3 downto 0),
      clka => clka,
      douta(14 downto 0) => douta(14 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_oled_0_blk_mem_gen_v8_4_1 is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    regcea : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 9 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    regceb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 9 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    injectsbiterr : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    eccpipece : in STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC;
    rdaddrecc : out STD_LOGIC_VECTOR ( 9 downto 0 );
    sleep : in STD_LOGIC;
    deepsleep : in STD_LOGIC;
    shutdown : in STD_LOGIC;
    rsta_busy : out STD_LOGIC;
    rstb_busy : out STD_LOGIC;
    s_aclk : in STD_LOGIC;
    s_aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_injectsbiterr : in STD_LOGIC;
    s_axi_injectdbiterr : in STD_LOGIC;
    s_axi_sbiterr : out STD_LOGIC;
    s_axi_dbiterr : out STD_LOGIC;
    s_axi_rdaddrecc : out STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute C_ADDRA_WIDTH : integer;
  attribute C_ADDRA_WIDTH of top_oled_0_blk_mem_gen_v8_4_1 : entity is 10;
  attribute C_ADDRB_WIDTH : integer;
  attribute C_ADDRB_WIDTH of top_oled_0_blk_mem_gen_v8_4_1 : entity is 10;
  attribute C_ALGORITHM : integer;
  attribute C_ALGORITHM of top_oled_0_blk_mem_gen_v8_4_1 : entity is 1;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of top_oled_0_blk_mem_gen_v8_4_1 : entity is 4;
  attribute C_AXI_SLAVE_TYPE : integer;
  attribute C_AXI_SLAVE_TYPE of top_oled_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of top_oled_0_blk_mem_gen_v8_4_1 : entity is 1;
  attribute C_BYTE_SIZE : integer;
  attribute C_BYTE_SIZE of top_oled_0_blk_mem_gen_v8_4_1 : entity is 9;
  attribute C_COMMON_CLK : integer;
  attribute C_COMMON_CLK of top_oled_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_COUNT_18K_BRAM : string;
  attribute C_COUNT_18K_BRAM of top_oled_0_blk_mem_gen_v8_4_1 : entity is "1";
  attribute C_COUNT_36K_BRAM : string;
  attribute C_COUNT_36K_BRAM of top_oled_0_blk_mem_gen_v8_4_1 : entity is "0";
  attribute C_CTRL_ECC_ALGO : string;
  attribute C_CTRL_ECC_ALGO of top_oled_0_blk_mem_gen_v8_4_1 : entity is "NONE";
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of top_oled_0_blk_mem_gen_v8_4_1 : entity is "0";
  attribute C_DISABLE_WARN_BHV_COLL : integer;
  attribute C_DISABLE_WARN_BHV_COLL of top_oled_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_DISABLE_WARN_BHV_RANGE : integer;
  attribute C_DISABLE_WARN_BHV_RANGE of top_oled_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of top_oled_0_blk_mem_gen_v8_4_1 : entity is "./";
  attribute C_ENABLE_32BIT_ADDRESS : integer;
  attribute C_ENABLE_32BIT_ADDRESS of top_oled_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_EN_DEEPSLEEP_PIN : integer;
  attribute C_EN_DEEPSLEEP_PIN of top_oled_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_EN_ECC_PIPE : integer;
  attribute C_EN_ECC_PIPE of top_oled_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_EN_RDADDRA_CHG : integer;
  attribute C_EN_RDADDRA_CHG of top_oled_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_EN_RDADDRB_CHG : integer;
  attribute C_EN_RDADDRB_CHG of top_oled_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of top_oled_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_EN_SHUTDOWN_PIN : integer;
  attribute C_EN_SHUTDOWN_PIN of top_oled_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_EN_SLEEP_PIN : integer;
  attribute C_EN_SLEEP_PIN of top_oled_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_EST_POWER_SUMMARY : string;
  attribute C_EST_POWER_SUMMARY of top_oled_0_blk_mem_gen_v8_4_1 : entity is "Estimated Power for IP     :     1.1884 mW";
  attribute C_FAMILY : string;
  attribute C_FAMILY of top_oled_0_blk_mem_gen_v8_4_1 : entity is "zynq";
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of top_oled_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_ENA : integer;
  attribute C_HAS_ENA of top_oled_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_ENB : integer;
  attribute C_HAS_ENB of top_oled_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_INJECTERR : integer;
  attribute C_HAS_INJECTERR of top_oled_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_A : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_A of top_oled_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_B : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_B of top_oled_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_A : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_A of top_oled_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_B : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_B of top_oled_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_REGCEA : integer;
  attribute C_HAS_REGCEA of top_oled_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_REGCEB : integer;
  attribute C_HAS_REGCEB of top_oled_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_RSTA : integer;
  attribute C_HAS_RSTA of top_oled_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_RSTB : integer;
  attribute C_HAS_RSTB of top_oled_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_SOFTECC_INPUT_REGS_A : integer;
  attribute C_HAS_SOFTECC_INPUT_REGS_A of top_oled_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B : integer;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B of top_oled_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_INITA_VAL : string;
  attribute C_INITA_VAL of top_oled_0_blk_mem_gen_v8_4_1 : entity is "0";
  attribute C_INITB_VAL : string;
  attribute C_INITB_VAL of top_oled_0_blk_mem_gen_v8_4_1 : entity is "0";
  attribute C_INIT_FILE : string;
  attribute C_INIT_FILE of top_oled_0_blk_mem_gen_v8_4_1 : entity is "charLib.mem";
  attribute C_INIT_FILE_NAME : string;
  attribute C_INIT_FILE_NAME of top_oled_0_blk_mem_gen_v8_4_1 : entity is "charLib.mif";
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of top_oled_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_LOAD_INIT_FILE : integer;
  attribute C_LOAD_INIT_FILE of top_oled_0_blk_mem_gen_v8_4_1 : entity is 1;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of top_oled_0_blk_mem_gen_v8_4_1 : entity is 3;
  attribute C_MUX_PIPELINE_STAGES : integer;
  attribute C_MUX_PIPELINE_STAGES of top_oled_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_PRIM_TYPE : integer;
  attribute C_PRIM_TYPE of top_oled_0_blk_mem_gen_v8_4_1 : entity is 1;
  attribute C_READ_DEPTH_A : integer;
  attribute C_READ_DEPTH_A of top_oled_0_blk_mem_gen_v8_4_1 : entity is 1024;
  attribute C_READ_DEPTH_B : integer;
  attribute C_READ_DEPTH_B of top_oled_0_blk_mem_gen_v8_4_1 : entity is 1024;
  attribute C_READ_WIDTH_A : integer;
  attribute C_READ_WIDTH_A of top_oled_0_blk_mem_gen_v8_4_1 : entity is 8;
  attribute C_READ_WIDTH_B : integer;
  attribute C_READ_WIDTH_B of top_oled_0_blk_mem_gen_v8_4_1 : entity is 8;
  attribute C_RSTRAM_A : integer;
  attribute C_RSTRAM_A of top_oled_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_RSTRAM_B : integer;
  attribute C_RSTRAM_B of top_oled_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_RST_PRIORITY_A : string;
  attribute C_RST_PRIORITY_A of top_oled_0_blk_mem_gen_v8_4_1 : entity is "CE";
  attribute C_RST_PRIORITY_B : string;
  attribute C_RST_PRIORITY_B of top_oled_0_blk_mem_gen_v8_4_1 : entity is "CE";
  attribute C_SIM_COLLISION_CHECK : string;
  attribute C_SIM_COLLISION_CHECK of top_oled_0_blk_mem_gen_v8_4_1 : entity is "ALL";
  attribute C_USE_BRAM_BLOCK : integer;
  attribute C_USE_BRAM_BLOCK of top_oled_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_USE_BYTE_WEA : integer;
  attribute C_USE_BYTE_WEA of top_oled_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_USE_BYTE_WEB : integer;
  attribute C_USE_BYTE_WEB of top_oled_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_USE_DEFAULT_DATA : integer;
  attribute C_USE_DEFAULT_DATA of top_oled_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of top_oled_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_USE_SOFTECC : integer;
  attribute C_USE_SOFTECC of top_oled_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_USE_URAM : integer;
  attribute C_USE_URAM of top_oled_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_WEA_WIDTH : integer;
  attribute C_WEA_WIDTH of top_oled_0_blk_mem_gen_v8_4_1 : entity is 1;
  attribute C_WEB_WIDTH : integer;
  attribute C_WEB_WIDTH of top_oled_0_blk_mem_gen_v8_4_1 : entity is 1;
  attribute C_WRITE_DEPTH_A : integer;
  attribute C_WRITE_DEPTH_A of top_oled_0_blk_mem_gen_v8_4_1 : entity is 1024;
  attribute C_WRITE_DEPTH_B : integer;
  attribute C_WRITE_DEPTH_B of top_oled_0_blk_mem_gen_v8_4_1 : entity is 1024;
  attribute C_WRITE_MODE_A : string;
  attribute C_WRITE_MODE_A of top_oled_0_blk_mem_gen_v8_4_1 : entity is "WRITE_FIRST";
  attribute C_WRITE_MODE_B : string;
  attribute C_WRITE_MODE_B of top_oled_0_blk_mem_gen_v8_4_1 : entity is "WRITE_FIRST";
  attribute C_WRITE_WIDTH_A : integer;
  attribute C_WRITE_WIDTH_A of top_oled_0_blk_mem_gen_v8_4_1 : entity is 8;
  attribute C_WRITE_WIDTH_B : integer;
  attribute C_WRITE_WIDTH_B of top_oled_0_blk_mem_gen_v8_4_1 : entity is 8;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of top_oled_0_blk_mem_gen_v8_4_1 : entity is "zynq";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of top_oled_0_blk_mem_gen_v8_4_1 : entity is "blk_mem_gen_v8_4_1";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of top_oled_0_blk_mem_gen_v8_4_1 : entity is "yes";
end top_oled_0_blk_mem_gen_v8_4_1;

architecture STRUCTURE of top_oled_0_blk_mem_gen_v8_4_1 is
  signal \<const0>\ : STD_LOGIC;
begin
  dbiterr <= \<const0>\;
  doutb(7) <= \<const0>\;
  doutb(6) <= \<const0>\;
  doutb(5) <= \<const0>\;
  doutb(4) <= \<const0>\;
  doutb(3) <= \<const0>\;
  doutb(2) <= \<const0>\;
  doutb(1) <= \<const0>\;
  doutb(0) <= \<const0>\;
  rdaddrecc(9) <= \<const0>\;
  rdaddrecc(8) <= \<const0>\;
  rdaddrecc(7) <= \<const0>\;
  rdaddrecc(6) <= \<const0>\;
  rdaddrecc(5) <= \<const0>\;
  rdaddrecc(4) <= \<const0>\;
  rdaddrecc(3) <= \<const0>\;
  rdaddrecc(2) <= \<const0>\;
  rdaddrecc(1) <= \<const0>\;
  rdaddrecc(0) <= \<const0>\;
  rsta_busy <= \<const0>\;
  rstb_busy <= \<const0>\;
  s_axi_arready <= \<const0>\;
  s_axi_awready <= \<const0>\;
  s_axi_bid(3) <= \<const0>\;
  s_axi_bid(2) <= \<const0>\;
  s_axi_bid(1) <= \<const0>\;
  s_axi_bid(0) <= \<const0>\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_bvalid <= \<const0>\;
  s_axi_dbiterr <= \<const0>\;
  s_axi_rdaddrecc(9) <= \<const0>\;
  s_axi_rdaddrecc(8) <= \<const0>\;
  s_axi_rdaddrecc(7) <= \<const0>\;
  s_axi_rdaddrecc(6) <= \<const0>\;
  s_axi_rdaddrecc(5) <= \<const0>\;
  s_axi_rdaddrecc(4) <= \<const0>\;
  s_axi_rdaddrecc(3) <= \<const0>\;
  s_axi_rdaddrecc(2) <= \<const0>\;
  s_axi_rdaddrecc(1) <= \<const0>\;
  s_axi_rdaddrecc(0) <= \<const0>\;
  s_axi_rdata(7) <= \<const0>\;
  s_axi_rdata(6) <= \<const0>\;
  s_axi_rdata(5) <= \<const0>\;
  s_axi_rdata(4) <= \<const0>\;
  s_axi_rdata(3) <= \<const0>\;
  s_axi_rdata(2) <= \<const0>\;
  s_axi_rdata(1) <= \<const0>\;
  s_axi_rdata(0) <= \<const0>\;
  s_axi_rid(3) <= \<const0>\;
  s_axi_rid(2) <= \<const0>\;
  s_axi_rid(1) <= \<const0>\;
  s_axi_rid(0) <= \<const0>\;
  s_axi_rlast <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
  s_axi_rvalid <= \<const0>\;
  s_axi_sbiterr <= \<const0>\;
  s_axi_wready <= \<const0>\;
  sbiterr <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst_blk_mem_gen: entity work.top_oled_0_blk_mem_gen_v8_4_1_synth
     port map (
      addra(9 downto 0) => addra(9 downto 0),
      clka => clka,
      douta(7 downto 0) => douta(7 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \top_oled_0_blk_mem_gen_v8_4_1__parameterized1\ is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    regcea : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 8 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    regceb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 8 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    injectsbiterr : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    eccpipece : in STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC;
    rdaddrecc : out STD_LOGIC_VECTOR ( 8 downto 0 );
    sleep : in STD_LOGIC;
    deepsleep : in STD_LOGIC;
    shutdown : in STD_LOGIC;
    rsta_busy : out STD_LOGIC;
    rstb_busy : out STD_LOGIC;
    s_aclk : in STD_LOGIC;
    s_aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_injectsbiterr : in STD_LOGIC;
    s_axi_injectdbiterr : in STD_LOGIC;
    s_axi_sbiterr : out STD_LOGIC;
    s_axi_dbiterr : out STD_LOGIC;
    s_axi_rdaddrecc : out STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute C_ADDRA_WIDTH : integer;
  attribute C_ADDRA_WIDTH of \top_oled_0_blk_mem_gen_v8_4_1__parameterized1\ : entity is 9;
  attribute C_ADDRB_WIDTH : integer;
  attribute C_ADDRB_WIDTH of \top_oled_0_blk_mem_gen_v8_4_1__parameterized1\ : entity is 9;
  attribute C_ALGORITHM : integer;
  attribute C_ALGORITHM of \top_oled_0_blk_mem_gen_v8_4_1__parameterized1\ : entity is 1;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of \top_oled_0_blk_mem_gen_v8_4_1__parameterized1\ : entity is 4;
  attribute C_AXI_SLAVE_TYPE : integer;
  attribute C_AXI_SLAVE_TYPE of \top_oled_0_blk_mem_gen_v8_4_1__parameterized1\ : entity is 0;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of \top_oled_0_blk_mem_gen_v8_4_1__parameterized1\ : entity is 1;
  attribute C_BYTE_SIZE : integer;
  attribute C_BYTE_SIZE of \top_oled_0_blk_mem_gen_v8_4_1__parameterized1\ : entity is 9;
  attribute C_COMMON_CLK : integer;
  attribute C_COMMON_CLK of \top_oled_0_blk_mem_gen_v8_4_1__parameterized1\ : entity is 1;
  attribute C_COUNT_18K_BRAM : string;
  attribute C_COUNT_18K_BRAM of \top_oled_0_blk_mem_gen_v8_4_1__parameterized1\ : entity is "1";
  attribute C_COUNT_36K_BRAM : string;
  attribute C_COUNT_36K_BRAM of \top_oled_0_blk_mem_gen_v8_4_1__parameterized1\ : entity is "0";
  attribute C_CTRL_ECC_ALGO : string;
  attribute C_CTRL_ECC_ALGO of \top_oled_0_blk_mem_gen_v8_4_1__parameterized1\ : entity is "NONE";
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of \top_oled_0_blk_mem_gen_v8_4_1__parameterized1\ : entity is "0";
  attribute C_DISABLE_WARN_BHV_COLL : integer;
  attribute C_DISABLE_WARN_BHV_COLL of \top_oled_0_blk_mem_gen_v8_4_1__parameterized1\ : entity is 0;
  attribute C_DISABLE_WARN_BHV_RANGE : integer;
  attribute C_DISABLE_WARN_BHV_RANGE of \top_oled_0_blk_mem_gen_v8_4_1__parameterized1\ : entity is 0;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of \top_oled_0_blk_mem_gen_v8_4_1__parameterized1\ : entity is "./";
  attribute C_ENABLE_32BIT_ADDRESS : integer;
  attribute C_ENABLE_32BIT_ADDRESS of \top_oled_0_blk_mem_gen_v8_4_1__parameterized1\ : entity is 0;
  attribute C_EN_DEEPSLEEP_PIN : integer;
  attribute C_EN_DEEPSLEEP_PIN of \top_oled_0_blk_mem_gen_v8_4_1__parameterized1\ : entity is 0;
  attribute C_EN_ECC_PIPE : integer;
  attribute C_EN_ECC_PIPE of \top_oled_0_blk_mem_gen_v8_4_1__parameterized1\ : entity is 0;
  attribute C_EN_RDADDRA_CHG : integer;
  attribute C_EN_RDADDRA_CHG of \top_oled_0_blk_mem_gen_v8_4_1__parameterized1\ : entity is 0;
  attribute C_EN_RDADDRB_CHG : integer;
  attribute C_EN_RDADDRB_CHG of \top_oled_0_blk_mem_gen_v8_4_1__parameterized1\ : entity is 0;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of \top_oled_0_blk_mem_gen_v8_4_1__parameterized1\ : entity is 0;
  attribute C_EN_SHUTDOWN_PIN : integer;
  attribute C_EN_SHUTDOWN_PIN of \top_oled_0_blk_mem_gen_v8_4_1__parameterized1\ : entity is 0;
  attribute C_EN_SLEEP_PIN : integer;
  attribute C_EN_SLEEP_PIN of \top_oled_0_blk_mem_gen_v8_4_1__parameterized1\ : entity is 0;
  attribute C_EST_POWER_SUMMARY : string;
  attribute C_EST_POWER_SUMMARY of \top_oled_0_blk_mem_gen_v8_4_1__parameterized1\ : entity is "Estimated Power for IP     :     2.68455 mW";
  attribute C_FAMILY : string;
  attribute C_FAMILY of \top_oled_0_blk_mem_gen_v8_4_1__parameterized1\ : entity is "zynq";
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of \top_oled_0_blk_mem_gen_v8_4_1__parameterized1\ : entity is 0;
  attribute C_HAS_ENA : integer;
  attribute C_HAS_ENA of \top_oled_0_blk_mem_gen_v8_4_1__parameterized1\ : entity is 0;
  attribute C_HAS_ENB : integer;
  attribute C_HAS_ENB of \top_oled_0_blk_mem_gen_v8_4_1__parameterized1\ : entity is 0;
  attribute C_HAS_INJECTERR : integer;
  attribute C_HAS_INJECTERR of \top_oled_0_blk_mem_gen_v8_4_1__parameterized1\ : entity is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_A : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_A of \top_oled_0_blk_mem_gen_v8_4_1__parameterized1\ : entity is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_B : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_B of \top_oled_0_blk_mem_gen_v8_4_1__parameterized1\ : entity is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_A : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_A of \top_oled_0_blk_mem_gen_v8_4_1__parameterized1\ : entity is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_B : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_B of \top_oled_0_blk_mem_gen_v8_4_1__parameterized1\ : entity is 0;
  attribute C_HAS_REGCEA : integer;
  attribute C_HAS_REGCEA of \top_oled_0_blk_mem_gen_v8_4_1__parameterized1\ : entity is 0;
  attribute C_HAS_REGCEB : integer;
  attribute C_HAS_REGCEB of \top_oled_0_blk_mem_gen_v8_4_1__parameterized1\ : entity is 0;
  attribute C_HAS_RSTA : integer;
  attribute C_HAS_RSTA of \top_oled_0_blk_mem_gen_v8_4_1__parameterized1\ : entity is 0;
  attribute C_HAS_RSTB : integer;
  attribute C_HAS_RSTB of \top_oled_0_blk_mem_gen_v8_4_1__parameterized1\ : entity is 0;
  attribute C_HAS_SOFTECC_INPUT_REGS_A : integer;
  attribute C_HAS_SOFTECC_INPUT_REGS_A of \top_oled_0_blk_mem_gen_v8_4_1__parameterized1\ : entity is 0;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B : integer;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B of \top_oled_0_blk_mem_gen_v8_4_1__parameterized1\ : entity is 0;
  attribute C_INITA_VAL : string;
  attribute C_INITA_VAL of \top_oled_0_blk_mem_gen_v8_4_1__parameterized1\ : entity is "0";
  attribute C_INITB_VAL : string;
  attribute C_INITB_VAL of \top_oled_0_blk_mem_gen_v8_4_1__parameterized1\ : entity is "0";
  attribute C_INIT_FILE : string;
  attribute C_INIT_FILE of \top_oled_0_blk_mem_gen_v8_4_1__parameterized1\ : entity is "pixel_buffer.mem";
  attribute C_INIT_FILE_NAME : string;
  attribute C_INIT_FILE_NAME of \top_oled_0_blk_mem_gen_v8_4_1__parameterized1\ : entity is "no_coe_file_loaded";
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of \top_oled_0_blk_mem_gen_v8_4_1__parameterized1\ : entity is 0;
  attribute C_LOAD_INIT_FILE : integer;
  attribute C_LOAD_INIT_FILE of \top_oled_0_blk_mem_gen_v8_4_1__parameterized1\ : entity is 0;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of \top_oled_0_blk_mem_gen_v8_4_1__parameterized1\ : entity is 1;
  attribute C_MUX_PIPELINE_STAGES : integer;
  attribute C_MUX_PIPELINE_STAGES of \top_oled_0_blk_mem_gen_v8_4_1__parameterized1\ : entity is 0;
  attribute C_PRIM_TYPE : integer;
  attribute C_PRIM_TYPE of \top_oled_0_blk_mem_gen_v8_4_1__parameterized1\ : entity is 1;
  attribute C_READ_DEPTH_A : integer;
  attribute C_READ_DEPTH_A of \top_oled_0_blk_mem_gen_v8_4_1__parameterized1\ : entity is 512;
  attribute C_READ_DEPTH_B : integer;
  attribute C_READ_DEPTH_B of \top_oled_0_blk_mem_gen_v8_4_1__parameterized1\ : entity is 512;
  attribute C_READ_WIDTH_A : integer;
  attribute C_READ_WIDTH_A of \top_oled_0_blk_mem_gen_v8_4_1__parameterized1\ : entity is 8;
  attribute C_READ_WIDTH_B : integer;
  attribute C_READ_WIDTH_B of \top_oled_0_blk_mem_gen_v8_4_1__parameterized1\ : entity is 8;
  attribute C_RSTRAM_A : integer;
  attribute C_RSTRAM_A of \top_oled_0_blk_mem_gen_v8_4_1__parameterized1\ : entity is 0;
  attribute C_RSTRAM_B : integer;
  attribute C_RSTRAM_B of \top_oled_0_blk_mem_gen_v8_4_1__parameterized1\ : entity is 0;
  attribute C_RST_PRIORITY_A : string;
  attribute C_RST_PRIORITY_A of \top_oled_0_blk_mem_gen_v8_4_1__parameterized1\ : entity is "CE";
  attribute C_RST_PRIORITY_B : string;
  attribute C_RST_PRIORITY_B of \top_oled_0_blk_mem_gen_v8_4_1__parameterized1\ : entity is "CE";
  attribute C_SIM_COLLISION_CHECK : string;
  attribute C_SIM_COLLISION_CHECK of \top_oled_0_blk_mem_gen_v8_4_1__parameterized1\ : entity is "ALL";
  attribute C_USE_BRAM_BLOCK : integer;
  attribute C_USE_BRAM_BLOCK of \top_oled_0_blk_mem_gen_v8_4_1__parameterized1\ : entity is 0;
  attribute C_USE_BYTE_WEA : integer;
  attribute C_USE_BYTE_WEA of \top_oled_0_blk_mem_gen_v8_4_1__parameterized1\ : entity is 0;
  attribute C_USE_BYTE_WEB : integer;
  attribute C_USE_BYTE_WEB of \top_oled_0_blk_mem_gen_v8_4_1__parameterized1\ : entity is 0;
  attribute C_USE_DEFAULT_DATA : integer;
  attribute C_USE_DEFAULT_DATA of \top_oled_0_blk_mem_gen_v8_4_1__parameterized1\ : entity is 0;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of \top_oled_0_blk_mem_gen_v8_4_1__parameterized1\ : entity is 0;
  attribute C_USE_SOFTECC : integer;
  attribute C_USE_SOFTECC of \top_oled_0_blk_mem_gen_v8_4_1__parameterized1\ : entity is 0;
  attribute C_USE_URAM : integer;
  attribute C_USE_URAM of \top_oled_0_blk_mem_gen_v8_4_1__parameterized1\ : entity is 0;
  attribute C_WEA_WIDTH : integer;
  attribute C_WEA_WIDTH of \top_oled_0_blk_mem_gen_v8_4_1__parameterized1\ : entity is 1;
  attribute C_WEB_WIDTH : integer;
  attribute C_WEB_WIDTH of \top_oled_0_blk_mem_gen_v8_4_1__parameterized1\ : entity is 1;
  attribute C_WRITE_DEPTH_A : integer;
  attribute C_WRITE_DEPTH_A of \top_oled_0_blk_mem_gen_v8_4_1__parameterized1\ : entity is 512;
  attribute C_WRITE_DEPTH_B : integer;
  attribute C_WRITE_DEPTH_B of \top_oled_0_blk_mem_gen_v8_4_1__parameterized1\ : entity is 512;
  attribute C_WRITE_MODE_A : string;
  attribute C_WRITE_MODE_A of \top_oled_0_blk_mem_gen_v8_4_1__parameterized1\ : entity is "NO_CHANGE";
  attribute C_WRITE_MODE_B : string;
  attribute C_WRITE_MODE_B of \top_oled_0_blk_mem_gen_v8_4_1__parameterized1\ : entity is "READ_FIRST";
  attribute C_WRITE_WIDTH_A : integer;
  attribute C_WRITE_WIDTH_A of \top_oled_0_blk_mem_gen_v8_4_1__parameterized1\ : entity is 8;
  attribute C_WRITE_WIDTH_B : integer;
  attribute C_WRITE_WIDTH_B of \top_oled_0_blk_mem_gen_v8_4_1__parameterized1\ : entity is 8;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of \top_oled_0_blk_mem_gen_v8_4_1__parameterized1\ : entity is "zynq";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \top_oled_0_blk_mem_gen_v8_4_1__parameterized1\ : entity is "blk_mem_gen_v8_4_1";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of \top_oled_0_blk_mem_gen_v8_4_1__parameterized1\ : entity is "yes";
end \top_oled_0_blk_mem_gen_v8_4_1__parameterized1\;

architecture STRUCTURE of \top_oled_0_blk_mem_gen_v8_4_1__parameterized1\ is
  signal \<const0>\ : STD_LOGIC;
begin
  dbiterr <= \<const0>\;
  douta(7) <= \<const0>\;
  douta(6) <= \<const0>\;
  douta(5) <= \<const0>\;
  douta(4) <= \<const0>\;
  douta(3) <= \<const0>\;
  douta(2) <= \<const0>\;
  douta(1) <= \<const0>\;
  douta(0) <= \<const0>\;
  rdaddrecc(8) <= \<const0>\;
  rdaddrecc(7) <= \<const0>\;
  rdaddrecc(6) <= \<const0>\;
  rdaddrecc(5) <= \<const0>\;
  rdaddrecc(4) <= \<const0>\;
  rdaddrecc(3) <= \<const0>\;
  rdaddrecc(2) <= \<const0>\;
  rdaddrecc(1) <= \<const0>\;
  rdaddrecc(0) <= \<const0>\;
  rsta_busy <= \<const0>\;
  rstb_busy <= \<const0>\;
  s_axi_arready <= \<const0>\;
  s_axi_awready <= \<const0>\;
  s_axi_bid(3) <= \<const0>\;
  s_axi_bid(2) <= \<const0>\;
  s_axi_bid(1) <= \<const0>\;
  s_axi_bid(0) <= \<const0>\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_bvalid <= \<const0>\;
  s_axi_dbiterr <= \<const0>\;
  s_axi_rdaddrecc(8) <= \<const0>\;
  s_axi_rdaddrecc(7) <= \<const0>\;
  s_axi_rdaddrecc(6) <= \<const0>\;
  s_axi_rdaddrecc(5) <= \<const0>\;
  s_axi_rdaddrecc(4) <= \<const0>\;
  s_axi_rdaddrecc(3) <= \<const0>\;
  s_axi_rdaddrecc(2) <= \<const0>\;
  s_axi_rdaddrecc(1) <= \<const0>\;
  s_axi_rdaddrecc(0) <= \<const0>\;
  s_axi_rdata(7) <= \<const0>\;
  s_axi_rdata(6) <= \<const0>\;
  s_axi_rdata(5) <= \<const0>\;
  s_axi_rdata(4) <= \<const0>\;
  s_axi_rdata(3) <= \<const0>\;
  s_axi_rdata(2) <= \<const0>\;
  s_axi_rdata(1) <= \<const0>\;
  s_axi_rdata(0) <= \<const0>\;
  s_axi_rid(3) <= \<const0>\;
  s_axi_rid(2) <= \<const0>\;
  s_axi_rid(1) <= \<const0>\;
  s_axi_rid(0) <= \<const0>\;
  s_axi_rlast <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
  s_axi_rvalid <= \<const0>\;
  s_axi_sbiterr <= \<const0>\;
  s_axi_wready <= \<const0>\;
  sbiterr <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst_blk_mem_gen: entity work.\top_oled_0_blk_mem_gen_v8_4_1_synth__parameterized0\
     port map (
      addra(8 downto 0) => addra(8 downto 0),
      addrb(8 downto 0) => addrb(8 downto 0),
      clka => clka,
      dina(7 downto 0) => dina(7 downto 0),
      doutb(7 downto 0) => doutb(7 downto 0),
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \top_oled_0_blk_mem_gen_v8_4_1__parameterized3\ is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    regcea : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 15 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    regceb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    injectsbiterr : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    eccpipece : in STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC;
    rdaddrecc : out STD_LOGIC_VECTOR ( 3 downto 0 );
    sleep : in STD_LOGIC;
    deepsleep : in STD_LOGIC;
    shutdown : in STD_LOGIC;
    rsta_busy : out STD_LOGIC;
    rstb_busy : out STD_LOGIC;
    s_aclk : in STD_LOGIC;
    s_aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_injectsbiterr : in STD_LOGIC;
    s_axi_injectdbiterr : in STD_LOGIC;
    s_axi_sbiterr : out STD_LOGIC;
    s_axi_dbiterr : out STD_LOGIC;
    s_axi_rdaddrecc : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute C_ADDRA_WIDTH : integer;
  attribute C_ADDRA_WIDTH of \top_oled_0_blk_mem_gen_v8_4_1__parameterized3\ : entity is 4;
  attribute C_ADDRB_WIDTH : integer;
  attribute C_ADDRB_WIDTH of \top_oled_0_blk_mem_gen_v8_4_1__parameterized3\ : entity is 4;
  attribute C_ALGORITHM : integer;
  attribute C_ALGORITHM of \top_oled_0_blk_mem_gen_v8_4_1__parameterized3\ : entity is 1;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of \top_oled_0_blk_mem_gen_v8_4_1__parameterized3\ : entity is 4;
  attribute C_AXI_SLAVE_TYPE : integer;
  attribute C_AXI_SLAVE_TYPE of \top_oled_0_blk_mem_gen_v8_4_1__parameterized3\ : entity is 0;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of \top_oled_0_blk_mem_gen_v8_4_1__parameterized3\ : entity is 1;
  attribute C_BYTE_SIZE : integer;
  attribute C_BYTE_SIZE of \top_oled_0_blk_mem_gen_v8_4_1__parameterized3\ : entity is 9;
  attribute C_COMMON_CLK : integer;
  attribute C_COMMON_CLK of \top_oled_0_blk_mem_gen_v8_4_1__parameterized3\ : entity is 0;
  attribute C_COUNT_18K_BRAM : string;
  attribute C_COUNT_18K_BRAM of \top_oled_0_blk_mem_gen_v8_4_1__parameterized3\ : entity is "1";
  attribute C_COUNT_36K_BRAM : string;
  attribute C_COUNT_36K_BRAM of \top_oled_0_blk_mem_gen_v8_4_1__parameterized3\ : entity is "0";
  attribute C_CTRL_ECC_ALGO : string;
  attribute C_CTRL_ECC_ALGO of \top_oled_0_blk_mem_gen_v8_4_1__parameterized3\ : entity is "NONE";
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of \top_oled_0_blk_mem_gen_v8_4_1__parameterized3\ : entity is "0";
  attribute C_DISABLE_WARN_BHV_COLL : integer;
  attribute C_DISABLE_WARN_BHV_COLL of \top_oled_0_blk_mem_gen_v8_4_1__parameterized3\ : entity is 0;
  attribute C_DISABLE_WARN_BHV_RANGE : integer;
  attribute C_DISABLE_WARN_BHV_RANGE of \top_oled_0_blk_mem_gen_v8_4_1__parameterized3\ : entity is 0;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of \top_oled_0_blk_mem_gen_v8_4_1__parameterized3\ : entity is "./";
  attribute C_ENABLE_32BIT_ADDRESS : integer;
  attribute C_ENABLE_32BIT_ADDRESS of \top_oled_0_blk_mem_gen_v8_4_1__parameterized3\ : entity is 0;
  attribute C_EN_DEEPSLEEP_PIN : integer;
  attribute C_EN_DEEPSLEEP_PIN of \top_oled_0_blk_mem_gen_v8_4_1__parameterized3\ : entity is 0;
  attribute C_EN_ECC_PIPE : integer;
  attribute C_EN_ECC_PIPE of \top_oled_0_blk_mem_gen_v8_4_1__parameterized3\ : entity is 0;
  attribute C_EN_RDADDRA_CHG : integer;
  attribute C_EN_RDADDRA_CHG of \top_oled_0_blk_mem_gen_v8_4_1__parameterized3\ : entity is 0;
  attribute C_EN_RDADDRB_CHG : integer;
  attribute C_EN_RDADDRB_CHG of \top_oled_0_blk_mem_gen_v8_4_1__parameterized3\ : entity is 0;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of \top_oled_0_blk_mem_gen_v8_4_1__parameterized3\ : entity is 0;
  attribute C_EN_SHUTDOWN_PIN : integer;
  attribute C_EN_SHUTDOWN_PIN of \top_oled_0_blk_mem_gen_v8_4_1__parameterized3\ : entity is 0;
  attribute C_EN_SLEEP_PIN : integer;
  attribute C_EN_SLEEP_PIN of \top_oled_0_blk_mem_gen_v8_4_1__parameterized3\ : entity is 0;
  attribute C_EST_POWER_SUMMARY : string;
  attribute C_EST_POWER_SUMMARY of \top_oled_0_blk_mem_gen_v8_4_1__parameterized3\ : entity is "Estimated Power for IP     :     2.7096 mW";
  attribute C_FAMILY : string;
  attribute C_FAMILY of \top_oled_0_blk_mem_gen_v8_4_1__parameterized3\ : entity is "zynq";
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of \top_oled_0_blk_mem_gen_v8_4_1__parameterized3\ : entity is 0;
  attribute C_HAS_ENA : integer;
  attribute C_HAS_ENA of \top_oled_0_blk_mem_gen_v8_4_1__parameterized3\ : entity is 0;
  attribute C_HAS_ENB : integer;
  attribute C_HAS_ENB of \top_oled_0_blk_mem_gen_v8_4_1__parameterized3\ : entity is 0;
  attribute C_HAS_INJECTERR : integer;
  attribute C_HAS_INJECTERR of \top_oled_0_blk_mem_gen_v8_4_1__parameterized3\ : entity is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_A : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_A of \top_oled_0_blk_mem_gen_v8_4_1__parameterized3\ : entity is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_B : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_B of \top_oled_0_blk_mem_gen_v8_4_1__parameterized3\ : entity is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_A : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_A of \top_oled_0_blk_mem_gen_v8_4_1__parameterized3\ : entity is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_B : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_B of \top_oled_0_blk_mem_gen_v8_4_1__parameterized3\ : entity is 0;
  attribute C_HAS_REGCEA : integer;
  attribute C_HAS_REGCEA of \top_oled_0_blk_mem_gen_v8_4_1__parameterized3\ : entity is 0;
  attribute C_HAS_REGCEB : integer;
  attribute C_HAS_REGCEB of \top_oled_0_blk_mem_gen_v8_4_1__parameterized3\ : entity is 0;
  attribute C_HAS_RSTA : integer;
  attribute C_HAS_RSTA of \top_oled_0_blk_mem_gen_v8_4_1__parameterized3\ : entity is 0;
  attribute C_HAS_RSTB : integer;
  attribute C_HAS_RSTB of \top_oled_0_blk_mem_gen_v8_4_1__parameterized3\ : entity is 0;
  attribute C_HAS_SOFTECC_INPUT_REGS_A : integer;
  attribute C_HAS_SOFTECC_INPUT_REGS_A of \top_oled_0_blk_mem_gen_v8_4_1__parameterized3\ : entity is 0;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B : integer;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B of \top_oled_0_blk_mem_gen_v8_4_1__parameterized3\ : entity is 0;
  attribute C_INITA_VAL : string;
  attribute C_INITA_VAL of \top_oled_0_blk_mem_gen_v8_4_1__parameterized3\ : entity is "0";
  attribute C_INITB_VAL : string;
  attribute C_INITB_VAL of \top_oled_0_blk_mem_gen_v8_4_1__parameterized3\ : entity is "0";
  attribute C_INIT_FILE : string;
  attribute C_INIT_FILE of \top_oled_0_blk_mem_gen_v8_4_1__parameterized3\ : entity is "init_sequence_rom.mem";
  attribute C_INIT_FILE_NAME : string;
  attribute C_INIT_FILE_NAME of \top_oled_0_blk_mem_gen_v8_4_1__parameterized3\ : entity is "init_sequence_rom.mif";
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of \top_oled_0_blk_mem_gen_v8_4_1__parameterized3\ : entity is 0;
  attribute C_LOAD_INIT_FILE : integer;
  attribute C_LOAD_INIT_FILE of \top_oled_0_blk_mem_gen_v8_4_1__parameterized3\ : entity is 1;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of \top_oled_0_blk_mem_gen_v8_4_1__parameterized3\ : entity is 3;
  attribute C_MUX_PIPELINE_STAGES : integer;
  attribute C_MUX_PIPELINE_STAGES of \top_oled_0_blk_mem_gen_v8_4_1__parameterized3\ : entity is 0;
  attribute C_PRIM_TYPE : integer;
  attribute C_PRIM_TYPE of \top_oled_0_blk_mem_gen_v8_4_1__parameterized3\ : entity is 1;
  attribute C_READ_DEPTH_A : integer;
  attribute C_READ_DEPTH_A of \top_oled_0_blk_mem_gen_v8_4_1__parameterized3\ : entity is 16;
  attribute C_READ_DEPTH_B : integer;
  attribute C_READ_DEPTH_B of \top_oled_0_blk_mem_gen_v8_4_1__parameterized3\ : entity is 16;
  attribute C_READ_WIDTH_A : integer;
  attribute C_READ_WIDTH_A of \top_oled_0_blk_mem_gen_v8_4_1__parameterized3\ : entity is 16;
  attribute C_READ_WIDTH_B : integer;
  attribute C_READ_WIDTH_B of \top_oled_0_blk_mem_gen_v8_4_1__parameterized3\ : entity is 16;
  attribute C_RSTRAM_A : integer;
  attribute C_RSTRAM_A of \top_oled_0_blk_mem_gen_v8_4_1__parameterized3\ : entity is 0;
  attribute C_RSTRAM_B : integer;
  attribute C_RSTRAM_B of \top_oled_0_blk_mem_gen_v8_4_1__parameterized3\ : entity is 0;
  attribute C_RST_PRIORITY_A : string;
  attribute C_RST_PRIORITY_A of \top_oled_0_blk_mem_gen_v8_4_1__parameterized3\ : entity is "CE";
  attribute C_RST_PRIORITY_B : string;
  attribute C_RST_PRIORITY_B of \top_oled_0_blk_mem_gen_v8_4_1__parameterized3\ : entity is "CE";
  attribute C_SIM_COLLISION_CHECK : string;
  attribute C_SIM_COLLISION_CHECK of \top_oled_0_blk_mem_gen_v8_4_1__parameterized3\ : entity is "ALL";
  attribute C_USE_BRAM_BLOCK : integer;
  attribute C_USE_BRAM_BLOCK of \top_oled_0_blk_mem_gen_v8_4_1__parameterized3\ : entity is 0;
  attribute C_USE_BYTE_WEA : integer;
  attribute C_USE_BYTE_WEA of \top_oled_0_blk_mem_gen_v8_4_1__parameterized3\ : entity is 0;
  attribute C_USE_BYTE_WEB : integer;
  attribute C_USE_BYTE_WEB of \top_oled_0_blk_mem_gen_v8_4_1__parameterized3\ : entity is 0;
  attribute C_USE_DEFAULT_DATA : integer;
  attribute C_USE_DEFAULT_DATA of \top_oled_0_blk_mem_gen_v8_4_1__parameterized3\ : entity is 0;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of \top_oled_0_blk_mem_gen_v8_4_1__parameterized3\ : entity is 0;
  attribute C_USE_SOFTECC : integer;
  attribute C_USE_SOFTECC of \top_oled_0_blk_mem_gen_v8_4_1__parameterized3\ : entity is 0;
  attribute C_USE_URAM : integer;
  attribute C_USE_URAM of \top_oled_0_blk_mem_gen_v8_4_1__parameterized3\ : entity is 0;
  attribute C_WEA_WIDTH : integer;
  attribute C_WEA_WIDTH of \top_oled_0_blk_mem_gen_v8_4_1__parameterized3\ : entity is 1;
  attribute C_WEB_WIDTH : integer;
  attribute C_WEB_WIDTH of \top_oled_0_blk_mem_gen_v8_4_1__parameterized3\ : entity is 1;
  attribute C_WRITE_DEPTH_A : integer;
  attribute C_WRITE_DEPTH_A of \top_oled_0_blk_mem_gen_v8_4_1__parameterized3\ : entity is 16;
  attribute C_WRITE_DEPTH_B : integer;
  attribute C_WRITE_DEPTH_B of \top_oled_0_blk_mem_gen_v8_4_1__parameterized3\ : entity is 16;
  attribute C_WRITE_MODE_A : string;
  attribute C_WRITE_MODE_A of \top_oled_0_blk_mem_gen_v8_4_1__parameterized3\ : entity is "WRITE_FIRST";
  attribute C_WRITE_MODE_B : string;
  attribute C_WRITE_MODE_B of \top_oled_0_blk_mem_gen_v8_4_1__parameterized3\ : entity is "WRITE_FIRST";
  attribute C_WRITE_WIDTH_A : integer;
  attribute C_WRITE_WIDTH_A of \top_oled_0_blk_mem_gen_v8_4_1__parameterized3\ : entity is 16;
  attribute C_WRITE_WIDTH_B : integer;
  attribute C_WRITE_WIDTH_B of \top_oled_0_blk_mem_gen_v8_4_1__parameterized3\ : entity is 16;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of \top_oled_0_blk_mem_gen_v8_4_1__parameterized3\ : entity is "zynq";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \top_oled_0_blk_mem_gen_v8_4_1__parameterized3\ : entity is "blk_mem_gen_v8_4_1";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of \top_oled_0_blk_mem_gen_v8_4_1__parameterized3\ : entity is "yes";
end \top_oled_0_blk_mem_gen_v8_4_1__parameterized3\;

architecture STRUCTURE of \top_oled_0_blk_mem_gen_v8_4_1__parameterized3\ is
  signal \<const0>\ : STD_LOGIC;
  signal \^douta\ : STD_LOGIC_VECTOR ( 14 downto 0 );
begin
  dbiterr <= \<const0>\;
  douta(15) <= \<const0>\;
  douta(14 downto 0) <= \^douta\(14 downto 0);
  doutb(15) <= \<const0>\;
  doutb(14) <= \<const0>\;
  doutb(13) <= \<const0>\;
  doutb(12) <= \<const0>\;
  doutb(11) <= \<const0>\;
  doutb(10) <= \<const0>\;
  doutb(9) <= \<const0>\;
  doutb(8) <= \<const0>\;
  doutb(7) <= \<const0>\;
  doutb(6) <= \<const0>\;
  doutb(5) <= \<const0>\;
  doutb(4) <= \<const0>\;
  doutb(3) <= \<const0>\;
  doutb(2) <= \<const0>\;
  doutb(1) <= \<const0>\;
  doutb(0) <= \<const0>\;
  rdaddrecc(3) <= \<const0>\;
  rdaddrecc(2) <= \<const0>\;
  rdaddrecc(1) <= \<const0>\;
  rdaddrecc(0) <= \<const0>\;
  rsta_busy <= \<const0>\;
  rstb_busy <= \<const0>\;
  s_axi_arready <= \<const0>\;
  s_axi_awready <= \<const0>\;
  s_axi_bid(3) <= \<const0>\;
  s_axi_bid(2) <= \<const0>\;
  s_axi_bid(1) <= \<const0>\;
  s_axi_bid(0) <= \<const0>\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_bvalid <= \<const0>\;
  s_axi_dbiterr <= \<const0>\;
  s_axi_rdaddrecc(3) <= \<const0>\;
  s_axi_rdaddrecc(2) <= \<const0>\;
  s_axi_rdaddrecc(1) <= \<const0>\;
  s_axi_rdaddrecc(0) <= \<const0>\;
  s_axi_rdata(15) <= \<const0>\;
  s_axi_rdata(14) <= \<const0>\;
  s_axi_rdata(13) <= \<const0>\;
  s_axi_rdata(12) <= \<const0>\;
  s_axi_rdata(11) <= \<const0>\;
  s_axi_rdata(10) <= \<const0>\;
  s_axi_rdata(9) <= \<const0>\;
  s_axi_rdata(8) <= \<const0>\;
  s_axi_rdata(7) <= \<const0>\;
  s_axi_rdata(6) <= \<const0>\;
  s_axi_rdata(5) <= \<const0>\;
  s_axi_rdata(4) <= \<const0>\;
  s_axi_rdata(3) <= \<const0>\;
  s_axi_rdata(2) <= \<const0>\;
  s_axi_rdata(1) <= \<const0>\;
  s_axi_rdata(0) <= \<const0>\;
  s_axi_rid(3) <= \<const0>\;
  s_axi_rid(2) <= \<const0>\;
  s_axi_rid(1) <= \<const0>\;
  s_axi_rid(0) <= \<const0>\;
  s_axi_rlast <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
  s_axi_rvalid <= \<const0>\;
  s_axi_sbiterr <= \<const0>\;
  s_axi_wready <= \<const0>\;
  sbiterr <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst_blk_mem_gen: entity work.\top_oled_0_blk_mem_gen_v8_4_1_synth__parameterized1\
     port map (
      addra(3 downto 0) => addra(3 downto 0),
      clka => clka,
      douta(14 downto 0) => \^douta\(14 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_oled_0_charLib is
  port (
    douta : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of top_oled_0_charLib : entity is "charLib";
end top_oled_0_charLib;

architecture STRUCTURE of top_oled_0_charLib is
  signal NLW_U0_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rsta_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rstb_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_doutb_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_rdaddrecc_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal NLW_U0_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_rdaddrecc_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal NLW_U0_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_ADDRA_WIDTH : integer;
  attribute C_ADDRA_WIDTH of U0 : label is 10;
  attribute C_ADDRB_WIDTH : integer;
  attribute C_ADDRB_WIDTH of U0 : label is 10;
  attribute C_ALGORITHM : integer;
  attribute C_ALGORITHM of U0 : label is 1;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of U0 : label is 4;
  attribute C_AXI_SLAVE_TYPE : integer;
  attribute C_AXI_SLAVE_TYPE of U0 : label is 0;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of U0 : label is 1;
  attribute C_BYTE_SIZE : integer;
  attribute C_BYTE_SIZE of U0 : label is 9;
  attribute C_COMMON_CLK : integer;
  attribute C_COMMON_CLK of U0 : label is 0;
  attribute C_COUNT_18K_BRAM : string;
  attribute C_COUNT_18K_BRAM of U0 : label is "1";
  attribute C_COUNT_36K_BRAM : string;
  attribute C_COUNT_36K_BRAM of U0 : label is "0";
  attribute C_CTRL_ECC_ALGO : string;
  attribute C_CTRL_ECC_ALGO of U0 : label is "NONE";
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of U0 : label is "0";
  attribute C_DISABLE_WARN_BHV_COLL : integer;
  attribute C_DISABLE_WARN_BHV_COLL of U0 : label is 0;
  attribute C_DISABLE_WARN_BHV_RANGE : integer;
  attribute C_DISABLE_WARN_BHV_RANGE of U0 : label is 0;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of U0 : label is "./";
  attribute C_ENABLE_32BIT_ADDRESS : integer;
  attribute C_ENABLE_32BIT_ADDRESS of U0 : label is 0;
  attribute C_EN_DEEPSLEEP_PIN : integer;
  attribute C_EN_DEEPSLEEP_PIN of U0 : label is 0;
  attribute C_EN_ECC_PIPE : integer;
  attribute C_EN_ECC_PIPE of U0 : label is 0;
  attribute C_EN_RDADDRA_CHG : integer;
  attribute C_EN_RDADDRA_CHG of U0 : label is 0;
  attribute C_EN_RDADDRB_CHG : integer;
  attribute C_EN_RDADDRB_CHG of U0 : label is 0;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of U0 : label is 0;
  attribute C_EN_SHUTDOWN_PIN : integer;
  attribute C_EN_SHUTDOWN_PIN of U0 : label is 0;
  attribute C_EN_SLEEP_PIN : integer;
  attribute C_EN_SLEEP_PIN of U0 : label is 0;
  attribute C_EST_POWER_SUMMARY : string;
  attribute C_EST_POWER_SUMMARY of U0 : label is "Estimated Power for IP     :     1.1884 mW";
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "zynq";
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of U0 : label is 0;
  attribute C_HAS_ENA : integer;
  attribute C_HAS_ENA of U0 : label is 0;
  attribute C_HAS_ENB : integer;
  attribute C_HAS_ENB of U0 : label is 0;
  attribute C_HAS_INJECTERR : integer;
  attribute C_HAS_INJECTERR of U0 : label is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_A : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_B : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_A : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_B : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_HAS_REGCEA : integer;
  attribute C_HAS_REGCEA of U0 : label is 0;
  attribute C_HAS_REGCEB : integer;
  attribute C_HAS_REGCEB of U0 : label is 0;
  attribute C_HAS_RSTA : integer;
  attribute C_HAS_RSTA of U0 : label is 0;
  attribute C_HAS_RSTB : integer;
  attribute C_HAS_RSTB of U0 : label is 0;
  attribute C_HAS_SOFTECC_INPUT_REGS_A : integer;
  attribute C_HAS_SOFTECC_INPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B : integer;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_INITA_VAL : string;
  attribute C_INITA_VAL of U0 : label is "0";
  attribute C_INITB_VAL : string;
  attribute C_INITB_VAL of U0 : label is "0";
  attribute C_INIT_FILE : string;
  attribute C_INIT_FILE of U0 : label is "charLib.mem";
  attribute C_INIT_FILE_NAME : string;
  attribute C_INIT_FILE_NAME of U0 : label is "charLib.mif";
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of U0 : label is 0;
  attribute C_LOAD_INIT_FILE : integer;
  attribute C_LOAD_INIT_FILE of U0 : label is 1;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of U0 : label is 3;
  attribute C_MUX_PIPELINE_STAGES : integer;
  attribute C_MUX_PIPELINE_STAGES of U0 : label is 0;
  attribute C_PRIM_TYPE : integer;
  attribute C_PRIM_TYPE of U0 : label is 1;
  attribute C_READ_DEPTH_A : integer;
  attribute C_READ_DEPTH_A of U0 : label is 1024;
  attribute C_READ_DEPTH_B : integer;
  attribute C_READ_DEPTH_B of U0 : label is 1024;
  attribute C_READ_WIDTH_A : integer;
  attribute C_READ_WIDTH_A of U0 : label is 8;
  attribute C_READ_WIDTH_B : integer;
  attribute C_READ_WIDTH_B of U0 : label is 8;
  attribute C_RSTRAM_A : integer;
  attribute C_RSTRAM_A of U0 : label is 0;
  attribute C_RSTRAM_B : integer;
  attribute C_RSTRAM_B of U0 : label is 0;
  attribute C_RST_PRIORITY_A : string;
  attribute C_RST_PRIORITY_A of U0 : label is "CE";
  attribute C_RST_PRIORITY_B : string;
  attribute C_RST_PRIORITY_B of U0 : label is "CE";
  attribute C_SIM_COLLISION_CHECK : string;
  attribute C_SIM_COLLISION_CHECK of U0 : label is "ALL";
  attribute C_USE_BRAM_BLOCK : integer;
  attribute C_USE_BRAM_BLOCK of U0 : label is 0;
  attribute C_USE_BYTE_WEA : integer;
  attribute C_USE_BYTE_WEA of U0 : label is 0;
  attribute C_USE_BYTE_WEB : integer;
  attribute C_USE_BYTE_WEB of U0 : label is 0;
  attribute C_USE_DEFAULT_DATA : integer;
  attribute C_USE_DEFAULT_DATA of U0 : label is 0;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of U0 : label is 0;
  attribute C_USE_SOFTECC : integer;
  attribute C_USE_SOFTECC of U0 : label is 0;
  attribute C_USE_URAM : integer;
  attribute C_USE_URAM of U0 : label is 0;
  attribute C_WEA_WIDTH : integer;
  attribute C_WEA_WIDTH of U0 : label is 1;
  attribute C_WEB_WIDTH : integer;
  attribute C_WEB_WIDTH of U0 : label is 1;
  attribute C_WRITE_DEPTH_A : integer;
  attribute C_WRITE_DEPTH_A of U0 : label is 1024;
  attribute C_WRITE_DEPTH_B : integer;
  attribute C_WRITE_DEPTH_B of U0 : label is 1024;
  attribute C_WRITE_MODE_A : string;
  attribute C_WRITE_MODE_A of U0 : label is "WRITE_FIRST";
  attribute C_WRITE_MODE_B : string;
  attribute C_WRITE_MODE_B of U0 : label is "WRITE_FIRST";
  attribute C_WRITE_WIDTH_A : integer;
  attribute C_WRITE_WIDTH_A of U0 : label is 8;
  attribute C_WRITE_WIDTH_B : integer;
  attribute C_WRITE_WIDTH_B of U0 : label is 8;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of U0 : label is "zynq";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
begin
U0: entity work.top_oled_0_blk_mem_gen_v8_4_1
     port map (
      addra(9 downto 0) => addra(9 downto 0),
      addrb(9 downto 0) => B"0000000000",
      clka => clk,
      clkb => '0',
      dbiterr => NLW_U0_dbiterr_UNCONNECTED,
      deepsleep => '0',
      dina(7 downto 0) => B"00000000",
      dinb(7 downto 0) => B"00000000",
      douta(7 downto 0) => douta(7 downto 0),
      doutb(7 downto 0) => NLW_U0_doutb_UNCONNECTED(7 downto 0),
      eccpipece => '0',
      ena => '0',
      enb => '0',
      injectdbiterr => '0',
      injectsbiterr => '0',
      rdaddrecc(9 downto 0) => NLW_U0_rdaddrecc_UNCONNECTED(9 downto 0),
      regcea => '0',
      regceb => '0',
      rsta => '0',
      rsta_busy => NLW_U0_rsta_busy_UNCONNECTED,
      rstb => '0',
      rstb_busy => NLW_U0_rstb_busy_UNCONNECTED,
      s_aclk => '0',
      s_aresetn => '0',
      s_axi_araddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_arburst(1 downto 0) => B"00",
      s_axi_arid(3 downto 0) => B"0000",
      s_axi_arlen(7 downto 0) => B"00000000",
      s_axi_arready => NLW_U0_s_axi_arready_UNCONNECTED,
      s_axi_arsize(2 downto 0) => B"000",
      s_axi_arvalid => '0',
      s_axi_awaddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_awburst(1 downto 0) => B"00",
      s_axi_awid(3 downto 0) => B"0000",
      s_axi_awlen(7 downto 0) => B"00000000",
      s_axi_awready => NLW_U0_s_axi_awready_UNCONNECTED,
      s_axi_awsize(2 downto 0) => B"000",
      s_axi_awvalid => '0',
      s_axi_bid(3 downto 0) => NLW_U0_s_axi_bid_UNCONNECTED(3 downto 0),
      s_axi_bready => '0',
      s_axi_bresp(1 downto 0) => NLW_U0_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_bvalid => NLW_U0_s_axi_bvalid_UNCONNECTED,
      s_axi_dbiterr => NLW_U0_s_axi_dbiterr_UNCONNECTED,
      s_axi_injectdbiterr => '0',
      s_axi_injectsbiterr => '0',
      s_axi_rdaddrecc(9 downto 0) => NLW_U0_s_axi_rdaddrecc_UNCONNECTED(9 downto 0),
      s_axi_rdata(7 downto 0) => NLW_U0_s_axi_rdata_UNCONNECTED(7 downto 0),
      s_axi_rid(3 downto 0) => NLW_U0_s_axi_rid_UNCONNECTED(3 downto 0),
      s_axi_rlast => NLW_U0_s_axi_rlast_UNCONNECTED,
      s_axi_rready => '0',
      s_axi_rresp(1 downto 0) => NLW_U0_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_rvalid => NLW_U0_s_axi_rvalid_UNCONNECTED,
      s_axi_sbiterr => NLW_U0_s_axi_sbiterr_UNCONNECTED,
      s_axi_wdata(7 downto 0) => B"00000000",
      s_axi_wlast => '0',
      s_axi_wready => NLW_U0_s_axi_wready_UNCONNECTED,
      s_axi_wstrb(0) => '0',
      s_axi_wvalid => '0',
      sbiterr => NLW_U0_sbiterr_UNCONNECTED,
      shutdown => '0',
      sleep => '0',
      wea(0) => '0',
      web(0) => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_oled_0_init_sequence_rom is
  port (
    douta : out STD_LOGIC_VECTOR ( 14 downto 0 );
    clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of top_oled_0_init_sequence_rom : entity is "init_sequence_rom";
end top_oled_0_init_sequence_rom;

architecture STRUCTURE of top_oled_0_init_sequence_rom is
  signal NLW_U0_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rsta_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rstb_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_douta_UNCONNECTED : STD_LOGIC_VECTOR ( 15 to 15 );
  signal NLW_U0_doutb_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_U0_rdaddrecc_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_rdaddrecc_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_U0_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_ADDRA_WIDTH : integer;
  attribute C_ADDRA_WIDTH of U0 : label is 4;
  attribute C_ADDRB_WIDTH : integer;
  attribute C_ADDRB_WIDTH of U0 : label is 4;
  attribute C_ALGORITHM : integer;
  attribute C_ALGORITHM of U0 : label is 1;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of U0 : label is 4;
  attribute C_AXI_SLAVE_TYPE : integer;
  attribute C_AXI_SLAVE_TYPE of U0 : label is 0;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of U0 : label is 1;
  attribute C_BYTE_SIZE : integer;
  attribute C_BYTE_SIZE of U0 : label is 9;
  attribute C_COMMON_CLK : integer;
  attribute C_COMMON_CLK of U0 : label is 0;
  attribute C_COUNT_18K_BRAM : string;
  attribute C_COUNT_18K_BRAM of U0 : label is "1";
  attribute C_COUNT_36K_BRAM : string;
  attribute C_COUNT_36K_BRAM of U0 : label is "0";
  attribute C_CTRL_ECC_ALGO : string;
  attribute C_CTRL_ECC_ALGO of U0 : label is "NONE";
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of U0 : label is "0";
  attribute C_DISABLE_WARN_BHV_COLL : integer;
  attribute C_DISABLE_WARN_BHV_COLL of U0 : label is 0;
  attribute C_DISABLE_WARN_BHV_RANGE : integer;
  attribute C_DISABLE_WARN_BHV_RANGE of U0 : label is 0;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of U0 : label is "./";
  attribute C_ENABLE_32BIT_ADDRESS : integer;
  attribute C_ENABLE_32BIT_ADDRESS of U0 : label is 0;
  attribute C_EN_DEEPSLEEP_PIN : integer;
  attribute C_EN_DEEPSLEEP_PIN of U0 : label is 0;
  attribute C_EN_ECC_PIPE : integer;
  attribute C_EN_ECC_PIPE of U0 : label is 0;
  attribute C_EN_RDADDRA_CHG : integer;
  attribute C_EN_RDADDRA_CHG of U0 : label is 0;
  attribute C_EN_RDADDRB_CHG : integer;
  attribute C_EN_RDADDRB_CHG of U0 : label is 0;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of U0 : label is 0;
  attribute C_EN_SHUTDOWN_PIN : integer;
  attribute C_EN_SHUTDOWN_PIN of U0 : label is 0;
  attribute C_EN_SLEEP_PIN : integer;
  attribute C_EN_SLEEP_PIN of U0 : label is 0;
  attribute C_EST_POWER_SUMMARY : string;
  attribute C_EST_POWER_SUMMARY of U0 : label is "Estimated Power for IP     :     2.7096 mW";
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "zynq";
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of U0 : label is 0;
  attribute C_HAS_ENA : integer;
  attribute C_HAS_ENA of U0 : label is 0;
  attribute C_HAS_ENB : integer;
  attribute C_HAS_ENB of U0 : label is 0;
  attribute C_HAS_INJECTERR : integer;
  attribute C_HAS_INJECTERR of U0 : label is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_A : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_B : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_A : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_B : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_HAS_REGCEA : integer;
  attribute C_HAS_REGCEA of U0 : label is 0;
  attribute C_HAS_REGCEB : integer;
  attribute C_HAS_REGCEB of U0 : label is 0;
  attribute C_HAS_RSTA : integer;
  attribute C_HAS_RSTA of U0 : label is 0;
  attribute C_HAS_RSTB : integer;
  attribute C_HAS_RSTB of U0 : label is 0;
  attribute C_HAS_SOFTECC_INPUT_REGS_A : integer;
  attribute C_HAS_SOFTECC_INPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B : integer;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_INITA_VAL : string;
  attribute C_INITA_VAL of U0 : label is "0";
  attribute C_INITB_VAL : string;
  attribute C_INITB_VAL of U0 : label is "0";
  attribute C_INIT_FILE : string;
  attribute C_INIT_FILE of U0 : label is "init_sequence_rom.mem";
  attribute C_INIT_FILE_NAME : string;
  attribute C_INIT_FILE_NAME of U0 : label is "init_sequence_rom.mif";
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of U0 : label is 0;
  attribute C_LOAD_INIT_FILE : integer;
  attribute C_LOAD_INIT_FILE of U0 : label is 1;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of U0 : label is 3;
  attribute C_MUX_PIPELINE_STAGES : integer;
  attribute C_MUX_PIPELINE_STAGES of U0 : label is 0;
  attribute C_PRIM_TYPE : integer;
  attribute C_PRIM_TYPE of U0 : label is 1;
  attribute C_READ_DEPTH_A : integer;
  attribute C_READ_DEPTH_A of U0 : label is 16;
  attribute C_READ_DEPTH_B : integer;
  attribute C_READ_DEPTH_B of U0 : label is 16;
  attribute C_READ_WIDTH_A : integer;
  attribute C_READ_WIDTH_A of U0 : label is 16;
  attribute C_READ_WIDTH_B : integer;
  attribute C_READ_WIDTH_B of U0 : label is 16;
  attribute C_RSTRAM_A : integer;
  attribute C_RSTRAM_A of U0 : label is 0;
  attribute C_RSTRAM_B : integer;
  attribute C_RSTRAM_B of U0 : label is 0;
  attribute C_RST_PRIORITY_A : string;
  attribute C_RST_PRIORITY_A of U0 : label is "CE";
  attribute C_RST_PRIORITY_B : string;
  attribute C_RST_PRIORITY_B of U0 : label is "CE";
  attribute C_SIM_COLLISION_CHECK : string;
  attribute C_SIM_COLLISION_CHECK of U0 : label is "ALL";
  attribute C_USE_BRAM_BLOCK : integer;
  attribute C_USE_BRAM_BLOCK of U0 : label is 0;
  attribute C_USE_BYTE_WEA : integer;
  attribute C_USE_BYTE_WEA of U0 : label is 0;
  attribute C_USE_BYTE_WEB : integer;
  attribute C_USE_BYTE_WEB of U0 : label is 0;
  attribute C_USE_DEFAULT_DATA : integer;
  attribute C_USE_DEFAULT_DATA of U0 : label is 0;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of U0 : label is 0;
  attribute C_USE_SOFTECC : integer;
  attribute C_USE_SOFTECC of U0 : label is 0;
  attribute C_USE_URAM : integer;
  attribute C_USE_URAM of U0 : label is 0;
  attribute C_WEA_WIDTH : integer;
  attribute C_WEA_WIDTH of U0 : label is 1;
  attribute C_WEB_WIDTH : integer;
  attribute C_WEB_WIDTH of U0 : label is 1;
  attribute C_WRITE_DEPTH_A : integer;
  attribute C_WRITE_DEPTH_A of U0 : label is 16;
  attribute C_WRITE_DEPTH_B : integer;
  attribute C_WRITE_DEPTH_B of U0 : label is 16;
  attribute C_WRITE_MODE_A : string;
  attribute C_WRITE_MODE_A of U0 : label is "WRITE_FIRST";
  attribute C_WRITE_MODE_B : string;
  attribute C_WRITE_MODE_B of U0 : label is "WRITE_FIRST";
  attribute C_WRITE_WIDTH_A : integer;
  attribute C_WRITE_WIDTH_A of U0 : label is 16;
  attribute C_WRITE_WIDTH_B : integer;
  attribute C_WRITE_WIDTH_B of U0 : label is 16;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of U0 : label is "zynq";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
begin
U0: entity work.\top_oled_0_blk_mem_gen_v8_4_1__parameterized3\
     port map (
      addra(3 downto 0) => Q(3 downto 0),
      addrb(3 downto 0) => B"0000",
      clka => clk,
      clkb => '0',
      dbiterr => NLW_U0_dbiterr_UNCONNECTED,
      deepsleep => '0',
      dina(15 downto 0) => B"0000000000000000",
      dinb(15 downto 0) => B"0000000000000000",
      douta(15) => NLW_U0_douta_UNCONNECTED(15),
      douta(14 downto 0) => douta(14 downto 0),
      doutb(15 downto 0) => NLW_U0_doutb_UNCONNECTED(15 downto 0),
      eccpipece => '0',
      ena => '0',
      enb => '0',
      injectdbiterr => '0',
      injectsbiterr => '0',
      rdaddrecc(3 downto 0) => NLW_U0_rdaddrecc_UNCONNECTED(3 downto 0),
      regcea => '0',
      regceb => '0',
      rsta => '0',
      rsta_busy => NLW_U0_rsta_busy_UNCONNECTED,
      rstb => '0',
      rstb_busy => NLW_U0_rstb_busy_UNCONNECTED,
      s_aclk => '0',
      s_aresetn => '0',
      s_axi_araddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_arburst(1 downto 0) => B"00",
      s_axi_arid(3 downto 0) => B"0000",
      s_axi_arlen(7 downto 0) => B"00000000",
      s_axi_arready => NLW_U0_s_axi_arready_UNCONNECTED,
      s_axi_arsize(2 downto 0) => B"000",
      s_axi_arvalid => '0',
      s_axi_awaddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_awburst(1 downto 0) => B"00",
      s_axi_awid(3 downto 0) => B"0000",
      s_axi_awlen(7 downto 0) => B"00000000",
      s_axi_awready => NLW_U0_s_axi_awready_UNCONNECTED,
      s_axi_awsize(2 downto 0) => B"000",
      s_axi_awvalid => '0',
      s_axi_bid(3 downto 0) => NLW_U0_s_axi_bid_UNCONNECTED(3 downto 0),
      s_axi_bready => '0',
      s_axi_bresp(1 downto 0) => NLW_U0_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_bvalid => NLW_U0_s_axi_bvalid_UNCONNECTED,
      s_axi_dbiterr => NLW_U0_s_axi_dbiterr_UNCONNECTED,
      s_axi_injectdbiterr => '0',
      s_axi_injectsbiterr => '0',
      s_axi_rdaddrecc(3 downto 0) => NLW_U0_s_axi_rdaddrecc_UNCONNECTED(3 downto 0),
      s_axi_rdata(15 downto 0) => NLW_U0_s_axi_rdata_UNCONNECTED(15 downto 0),
      s_axi_rid(3 downto 0) => NLW_U0_s_axi_rid_UNCONNECTED(3 downto 0),
      s_axi_rlast => NLW_U0_s_axi_rlast_UNCONNECTED,
      s_axi_rready => '0',
      s_axi_rresp(1 downto 0) => NLW_U0_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_rvalid => NLW_U0_s_axi_rvalid_UNCONNECTED,
      s_axi_sbiterr => NLW_U0_s_axi_sbiterr_UNCONNECTED,
      s_axi_wdata(15 downto 0) => B"0000000000000000",
      s_axi_wlast => '0',
      s_axi_wready => NLW_U0_s_axi_wready_UNCONNECTED,
      s_axi_wstrb(0) => '0',
      s_axi_wvalid => '0',
      sbiterr => NLW_U0_sbiterr_UNCONNECTED,
      shutdown => '0',
      sleep => '0',
      wea(0) => '0',
      web(0) => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_oled_0_pixel_buffer is
  port (
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \state_reg[6]\ : out STD_LOGIC;
    clk : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 8 downto 0 );
    douta : in STD_LOGIC_VECTOR ( 7 downto 0 );
    pbuf_read_addr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \temp_spi_data_reg[1]\ : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    clear_screen : in STD_LOGIC;
    \temp_spi_data_reg[4]\ : in STD_LOGIC;
    \temp_spi_data_reg[4]_0\ : in STD_LOGIC;
    \temp_spi_data_reg[4]_1\ : in STD_LOGIC;
    \temp_spi_data_reg[0]\ : in STD_LOGIC;
    \temp_spi_data_reg[5]\ : in STD_LOGIC;
    \temp_spi_data_reg[5]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of top_oled_0_pixel_buffer : entity is "pixel_buffer";
end top_oled_0_pixel_buffer;

architecture STRUCTURE of top_oled_0_pixel_buffer is
  signal pbuf_read_data : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal pbuf_write_en : STD_LOGIC;
  signal \^state_reg[6]\ : STD_LOGIC;
  signal \temp_spi_data[5]_i_2_n_0\ : STD_LOGIC;
  signal NLW_U0_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rsta_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rstb_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_douta_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_rdaddrecc_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_U0_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_rdaddrecc_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_U0_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_ADDRA_WIDTH : integer;
  attribute C_ADDRA_WIDTH of U0 : label is 9;
  attribute C_ADDRB_WIDTH : integer;
  attribute C_ADDRB_WIDTH of U0 : label is 9;
  attribute C_ALGORITHM : integer;
  attribute C_ALGORITHM of U0 : label is 1;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of U0 : label is 4;
  attribute C_AXI_SLAVE_TYPE : integer;
  attribute C_AXI_SLAVE_TYPE of U0 : label is 0;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of U0 : label is 1;
  attribute C_BYTE_SIZE : integer;
  attribute C_BYTE_SIZE of U0 : label is 9;
  attribute C_COMMON_CLK : integer;
  attribute C_COMMON_CLK of U0 : label is 1;
  attribute C_COUNT_18K_BRAM : string;
  attribute C_COUNT_18K_BRAM of U0 : label is "1";
  attribute C_COUNT_36K_BRAM : string;
  attribute C_COUNT_36K_BRAM of U0 : label is "0";
  attribute C_CTRL_ECC_ALGO : string;
  attribute C_CTRL_ECC_ALGO of U0 : label is "NONE";
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of U0 : label is "0";
  attribute C_DISABLE_WARN_BHV_COLL : integer;
  attribute C_DISABLE_WARN_BHV_COLL of U0 : label is 0;
  attribute C_DISABLE_WARN_BHV_RANGE : integer;
  attribute C_DISABLE_WARN_BHV_RANGE of U0 : label is 0;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of U0 : label is "./";
  attribute C_ENABLE_32BIT_ADDRESS : integer;
  attribute C_ENABLE_32BIT_ADDRESS of U0 : label is 0;
  attribute C_EN_DEEPSLEEP_PIN : integer;
  attribute C_EN_DEEPSLEEP_PIN of U0 : label is 0;
  attribute C_EN_ECC_PIPE : integer;
  attribute C_EN_ECC_PIPE of U0 : label is 0;
  attribute C_EN_RDADDRA_CHG : integer;
  attribute C_EN_RDADDRA_CHG of U0 : label is 0;
  attribute C_EN_RDADDRB_CHG : integer;
  attribute C_EN_RDADDRB_CHG of U0 : label is 0;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of U0 : label is 0;
  attribute C_EN_SHUTDOWN_PIN : integer;
  attribute C_EN_SHUTDOWN_PIN of U0 : label is 0;
  attribute C_EN_SLEEP_PIN : integer;
  attribute C_EN_SLEEP_PIN of U0 : label is 0;
  attribute C_EST_POWER_SUMMARY : string;
  attribute C_EST_POWER_SUMMARY of U0 : label is "Estimated Power for IP     :     2.68455 mW";
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "zynq";
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of U0 : label is 0;
  attribute C_HAS_ENA : integer;
  attribute C_HAS_ENA of U0 : label is 0;
  attribute C_HAS_ENB : integer;
  attribute C_HAS_ENB of U0 : label is 0;
  attribute C_HAS_INJECTERR : integer;
  attribute C_HAS_INJECTERR of U0 : label is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_A : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_B : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_A : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_B : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_HAS_REGCEA : integer;
  attribute C_HAS_REGCEA of U0 : label is 0;
  attribute C_HAS_REGCEB : integer;
  attribute C_HAS_REGCEB of U0 : label is 0;
  attribute C_HAS_RSTA : integer;
  attribute C_HAS_RSTA of U0 : label is 0;
  attribute C_HAS_RSTB : integer;
  attribute C_HAS_RSTB of U0 : label is 0;
  attribute C_HAS_SOFTECC_INPUT_REGS_A : integer;
  attribute C_HAS_SOFTECC_INPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B : integer;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_INITA_VAL : string;
  attribute C_INITA_VAL of U0 : label is "0";
  attribute C_INITB_VAL : string;
  attribute C_INITB_VAL of U0 : label is "0";
  attribute C_INIT_FILE : string;
  attribute C_INIT_FILE of U0 : label is "pixel_buffer.mem";
  attribute C_INIT_FILE_NAME : string;
  attribute C_INIT_FILE_NAME of U0 : label is "no_coe_file_loaded";
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of U0 : label is 0;
  attribute C_LOAD_INIT_FILE : integer;
  attribute C_LOAD_INIT_FILE of U0 : label is 0;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of U0 : label is 1;
  attribute C_MUX_PIPELINE_STAGES : integer;
  attribute C_MUX_PIPELINE_STAGES of U0 : label is 0;
  attribute C_PRIM_TYPE : integer;
  attribute C_PRIM_TYPE of U0 : label is 1;
  attribute C_READ_DEPTH_A : integer;
  attribute C_READ_DEPTH_A of U0 : label is 512;
  attribute C_READ_DEPTH_B : integer;
  attribute C_READ_DEPTH_B of U0 : label is 512;
  attribute C_READ_WIDTH_A : integer;
  attribute C_READ_WIDTH_A of U0 : label is 8;
  attribute C_READ_WIDTH_B : integer;
  attribute C_READ_WIDTH_B of U0 : label is 8;
  attribute C_RSTRAM_A : integer;
  attribute C_RSTRAM_A of U0 : label is 0;
  attribute C_RSTRAM_B : integer;
  attribute C_RSTRAM_B of U0 : label is 0;
  attribute C_RST_PRIORITY_A : string;
  attribute C_RST_PRIORITY_A of U0 : label is "CE";
  attribute C_RST_PRIORITY_B : string;
  attribute C_RST_PRIORITY_B of U0 : label is "CE";
  attribute C_SIM_COLLISION_CHECK : string;
  attribute C_SIM_COLLISION_CHECK of U0 : label is "ALL";
  attribute C_USE_BRAM_BLOCK : integer;
  attribute C_USE_BRAM_BLOCK of U0 : label is 0;
  attribute C_USE_BYTE_WEA : integer;
  attribute C_USE_BYTE_WEA of U0 : label is 0;
  attribute C_USE_BYTE_WEB : integer;
  attribute C_USE_BYTE_WEB of U0 : label is 0;
  attribute C_USE_DEFAULT_DATA : integer;
  attribute C_USE_DEFAULT_DATA of U0 : label is 0;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of U0 : label is 0;
  attribute C_USE_SOFTECC : integer;
  attribute C_USE_SOFTECC of U0 : label is 0;
  attribute C_USE_URAM : integer;
  attribute C_USE_URAM of U0 : label is 0;
  attribute C_WEA_WIDTH : integer;
  attribute C_WEA_WIDTH of U0 : label is 1;
  attribute C_WEB_WIDTH : integer;
  attribute C_WEB_WIDTH of U0 : label is 1;
  attribute C_WRITE_DEPTH_A : integer;
  attribute C_WRITE_DEPTH_A of U0 : label is 512;
  attribute C_WRITE_DEPTH_B : integer;
  attribute C_WRITE_DEPTH_B of U0 : label is 512;
  attribute C_WRITE_MODE_A : string;
  attribute C_WRITE_MODE_A of U0 : label is "NO_CHANGE";
  attribute C_WRITE_MODE_B : string;
  attribute C_WRITE_MODE_B of U0 : label is "READ_FIRST";
  attribute C_WRITE_WIDTH_A : integer;
  attribute C_WRITE_WIDTH_A of U0 : label is 8;
  attribute C_WRITE_WIDTH_B : integer;
  attribute C_WRITE_WIDTH_B of U0 : label is 8;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of U0 : label is "zynq";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
begin
  \state_reg[6]\ <= \^state_reg[6]\;
U0: entity work.\top_oled_0_blk_mem_gen_v8_4_1__parameterized1\
     port map (
      addra(8 downto 0) => addra(8 downto 0),
      addrb(8 downto 0) => pbuf_read_addr(8 downto 0),
      clka => clk,
      clkb => '0',
      dbiterr => NLW_U0_dbiterr_UNCONNECTED,
      deepsleep => '0',
      dina(7 downto 0) => douta(7 downto 0),
      dinb(7 downto 0) => B"00000000",
      douta(7 downto 0) => NLW_U0_douta_UNCONNECTED(7 downto 0),
      doutb(7 downto 0) => pbuf_read_data(7 downto 0),
      eccpipece => '0',
      ena => '0',
      enb => '0',
      injectdbiterr => '0',
      injectsbiterr => '0',
      rdaddrecc(8 downto 0) => NLW_U0_rdaddrecc_UNCONNECTED(8 downto 0),
      regcea => '0',
      regceb => '0',
      rsta => '0',
      rsta_busy => NLW_U0_rsta_busy_UNCONNECTED,
      rstb => '0',
      rstb_busy => NLW_U0_rstb_busy_UNCONNECTED,
      s_aclk => '0',
      s_aresetn => '0',
      s_axi_araddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_arburst(1 downto 0) => B"00",
      s_axi_arid(3 downto 0) => B"0000",
      s_axi_arlen(7 downto 0) => B"00000000",
      s_axi_arready => NLW_U0_s_axi_arready_UNCONNECTED,
      s_axi_arsize(2 downto 0) => B"000",
      s_axi_arvalid => '0',
      s_axi_awaddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_awburst(1 downto 0) => B"00",
      s_axi_awid(3 downto 0) => B"0000",
      s_axi_awlen(7 downto 0) => B"00000000",
      s_axi_awready => NLW_U0_s_axi_awready_UNCONNECTED,
      s_axi_awsize(2 downto 0) => B"000",
      s_axi_awvalid => '0',
      s_axi_bid(3 downto 0) => NLW_U0_s_axi_bid_UNCONNECTED(3 downto 0),
      s_axi_bready => '0',
      s_axi_bresp(1 downto 0) => NLW_U0_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_bvalid => NLW_U0_s_axi_bvalid_UNCONNECTED,
      s_axi_dbiterr => NLW_U0_s_axi_dbiterr_UNCONNECTED,
      s_axi_injectdbiterr => '0',
      s_axi_injectsbiterr => '0',
      s_axi_rdaddrecc(8 downto 0) => NLW_U0_s_axi_rdaddrecc_UNCONNECTED(8 downto 0),
      s_axi_rdata(7 downto 0) => NLW_U0_s_axi_rdata_UNCONNECTED(7 downto 0),
      s_axi_rid(3 downto 0) => NLW_U0_s_axi_rid_UNCONNECTED(3 downto 0),
      s_axi_rlast => NLW_U0_s_axi_rlast_UNCONNECTED,
      s_axi_rready => '0',
      s_axi_rresp(1 downto 0) => NLW_U0_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_rvalid => NLW_U0_s_axi_rvalid_UNCONNECTED,
      s_axi_sbiterr => NLW_U0_s_axi_sbiterr_UNCONNECTED,
      s_axi_wdata(7 downto 0) => B"00000000",
      s_axi_wlast => '0',
      s_axi_wready => NLW_U0_s_axi_wready_UNCONNECTED,
      s_axi_wstrb(0) => '0',
      s_axi_wvalid => '0',
      sbiterr => NLW_U0_sbiterr_UNCONNECTED,
      shutdown => '0',
      sleep => '0',
      wea(0) => pbuf_write_en,
      web(0) => '0'
    );
U0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(0),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(1),
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(2),
      I3 => \^state_reg[6]\,
      O => pbuf_write_en
    );
U0_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(6),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(4),
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(5),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(7),
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(3),
      O => \^state_reg[6]\
    );
\temp_spi_data[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF010B0101"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(1),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(0),
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(4),
      I3 => clear_screen,
      I4 => pbuf_read_data(0),
      I5 => \temp_spi_data_reg[0]\,
      O => D(0)
    );
\temp_spi_data[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ECECEFECECECECEC"
    )
        port map (
      I0 => Q(0),
      I1 => \temp_spi_data_reg[1]\,
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(4),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(1),
      I4 => clear_screen,
      I5 => pbuf_read_data(1),
      O => D(1)
    );
\temp_spi_data[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCC00F05555"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(0),
      I1 => Q(1),
      I2 => pbuf_read_data(2),
      I3 => clear_screen,
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(4),
      O => D(2)
    );
\temp_spi_data[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA0C00"
    )
        port map (
      I0 => Q(2),
      I1 => pbuf_read_data(3),
      I2 => clear_screen,
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(1),
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(4),
      O => D(3)
    );
\temp_spi_data[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF111F000F111"
    )
        port map (
      I0 => \temp_spi_data_reg[4]\,
      I1 => \temp_spi_data_reg[4]_0\,
      I2 => \temp_spi_data_reg[4]_1\,
      I3 => pbuf_read_data(4),
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(4),
      I5 => Q(3),
      O => D(4)
    );
\temp_spi_data[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF101"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(1),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(0),
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(4),
      I3 => Q(4),
      I4 => \temp_spi_data[5]_i_2_n_0\,
      O => D(5)
    );
\temp_spi_data[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"002000200020002F"
    )
        port map (
      I0 => pbuf_read_data(5),
      I1 => clear_screen,
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(1),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(4),
      I4 => \temp_spi_data_reg[5]\,
      I5 => \temp_spi_data_reg[5]_0\,
      O => \temp_spi_data[5]_i_2_n_0\
    );
\temp_spi_data[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA0C00"
    )
        port map (
      I0 => Q(5),
      I1 => pbuf_read_data(6),
      I2 => clear_screen,
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(1),
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(4),
      O => D(6)
    );
\temp_spi_data[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCC00F05555"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(0),
      I1 => Q(6),
      I2 => pbuf_read_data(7),
      I3 => clear_screen,
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(4),
      O => D(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_oled_0_OLEDCtrl is
  port (
    DC : out STD_LOGIC;
    RES : out STD_LOGIC;
    VBAT : out STD_LOGIC;
    VDD : out STD_LOGIC;
    \FSM_sequential_state_reg[0]\ : out STD_LOGIC;
    once_reg : out STD_LOGIC;
    \FSM_sequential_state_reg[0]_0\ : out STD_LOGIC;
    SDIN : out STD_LOGIC;
    SCLK : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 6 downto 0 );
    data_valid_i_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_state_reg[0]_1\ : out STD_LOGIC;
    \FSM_sequential_state_reg[0]_2\ : out STD_LOGIC;
    \FSM_sequential_state_reg[0]_3\ : out STD_LOGIC;
    \FSM_sequential_state_reg[2]\ : out STD_LOGIC;
    clk : in STD_LOGIC;
    state : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \FSM_sequential_state_reg[1]\ : in STD_LOGIC;
    data_valid_i : in STD_LOGIC;
    disp_on_start : in STD_LOGIC;
    update_start : in STD_LOGIC;
    write_start : in STD_LOGIC;
    \FSM_sequential_state_reg[0]_4\ : in STD_LOGIC;
    dBtnU : in STD_LOGIC;
    dBTnD : in STD_LOGIC;
    s_update_start_reg : in STD_LOGIC;
    ascii_data_i : in STD_LOGIC_VECTOR ( 6 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \s_write_ascii_data_reg[2]\ : in STD_LOGIC;
    \temp_write_base_addr_reg[8]_0\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    once_reg_0 : in STD_LOGIC;
    \s_write_ascii_data_reg[6]\ : in STD_LOGIC;
    \s_write_ascii_data_reg[5]\ : in STD_LOGIC;
    \s_write_ascii_data_reg[4]\ : in STD_LOGIC;
    \s_write_ascii_data_reg[3]\ : in STD_LOGIC;
    s_update_clear_reg : in STD_LOGIC;
    update_clear : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of top_oled_0_OLEDCtrl : entity is "OLEDCtrl";
end top_oled_0_OLEDCtrl;

architecture STRUCTURE of top_oled_0_OLEDCtrl is
  signal \^dc\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_7_n_0\ : STD_LOGIC;
  signal MS_DELAY_n_0 : STD_LOGIC;
  signal PIXEL_BUFFER_n_0 : STD_LOGIC;
  signal PIXEL_BUFFER_n_1 : STD_LOGIC;
  signal PIXEL_BUFFER_n_2 : STD_LOGIC;
  signal PIXEL_BUFFER_n_3 : STD_LOGIC;
  signal PIXEL_BUFFER_n_4 : STD_LOGIC;
  signal PIXEL_BUFFER_n_5 : STD_LOGIC;
  signal PIXEL_BUFFER_n_6 : STD_LOGIC;
  signal PIXEL_BUFFER_n_7 : STD_LOGIC;
  signal PIXEL_BUFFER_n_8 : STD_LOGIC;
  signal \^res\ : STD_LOGIC;
  signal SPI_CTRL_n_0 : STD_LOGIC;
  signal \^vbat\ : STD_LOGIC;
  signal \^vdd\ : STD_LOGIC;
  signal after_char_state : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \after_char_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \after_char_state[1]_i_1_n_0\ : STD_LOGIC;
  signal after_page_state : STD_LOGIC_VECTOR ( 5 downto 1 );
  signal \after_page_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \after_page_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \after_page_state[5]_i_1_n_0\ : STD_LOGIC;
  signal \after_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \after_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \after_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \after_state[4]_i_1_n_0\ : STD_LOGIC;
  signal \after_state[5]_i_1_n_0\ : STD_LOGIC;
  signal \after_state[5]_i_2_n_0\ : STD_LOGIC;
  signal \after_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \after_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \after_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \after_state_reg_n_0_[4]\ : STD_LOGIC;
  signal \after_state_reg_n_0_[5]\ : STD_LOGIC;
  signal after_update_state : STD_LOGIC_VECTOR ( 5 downto 2 );
  signal \after_update_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \after_update_state[5]_i_1_n_0\ : STD_LOGIC;
  signal \after_update_state[5]_i_2_n_0\ : STD_LOGIC;
  signal \after_update_state[5]_i_3_n_0\ : STD_LOGIC;
  signal char_lib_addr : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal clear_screen : STD_LOGIC;
  signal clear_screen_i_1_n_0 : STD_LOGIC;
  signal clear_screen_i_2_n_0 : STD_LOGIC;
  signal init_operation : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal iop_data : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \iop_data[7]_i_1_n_0\ : STD_LOGIC;
  signal \iop_data[7]_i_2_n_0\ : STD_LOGIC;
  signal iop_res_set : STD_LOGIC;
  signal iop_res_val : STD_LOGIC;
  signal iop_state_select_reg_n_0 : STD_LOGIC;
  signal iop_vbat_set : STD_LOGIC;
  signal iop_vbat_val : STD_LOGIC;
  signal iop_vdd_set : STD_LOGIC;
  signal iop_vdd_val : STD_LOGIC;
  signal oled_dc : STD_LOGIC;
  signal oled_dc_i_1_n_0 : STD_LOGIC;
  signal oled_dc_i_2_n_0 : STD_LOGIC;
  signal oled_dc_i_3_n_0 : STD_LOGIC;
  signal oled_dc_i_4_n_0 : STD_LOGIC;
  signal oled_res_i_1_n_0 : STD_LOGIC;
  signal oled_res_i_2_n_0 : STD_LOGIC;
  signal oled_vbat0 : STD_LOGIC;
  signal oled_vbat_i_1_n_0 : STD_LOGIC;
  signal oled_vdd_i_1_n_0 : STD_LOGIC;
  signal oled_vdd_i_2_n_0 : STD_LOGIC;
  signal once_i_2_n_0 : STD_LOGIC;
  signal pbuf_read_addr : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal pbuf_write_data : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s_update_clear_i_3_n_0 : STD_LOGIC;
  signal s_update_start_i_2_n_0 : STD_LOGIC;
  signal s_update_start_i_3_n_0 : STD_LOGIC;
  signal \s_write_ascii_data[2]_i_2_n_0\ : STD_LOGIC;
  signal \s_write_base_addr[8]_i_3_n_0\ : STD_LOGIC;
  signal \startup_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \startup_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \startup_count[2]_i_1_n_0\ : STD_LOGIC;
  signal \startup_count[3]_i_1_n_0\ : STD_LOGIC;
  signal \startup_count[3]_i_2_n_0\ : STD_LOGIC;
  signal \startup_count_reg_n_0_[0]\ : STD_LOGIC;
  signal \startup_count_reg_n_0_[1]\ : STD_LOGIC;
  signal \startup_count_reg_n_0_[2]\ : STD_LOGIC;
  signal \startup_count_reg_n_0_[3]\ : STD_LOGIC;
  signal \state[0]_i_1_n_0\ : STD_LOGIC;
  signal \state[0]_i_2_n_0\ : STD_LOGIC;
  signal \state[0]_i_3_n_0\ : STD_LOGIC;
  signal \state[0]_i_4_n_0\ : STD_LOGIC;
  signal \state[0]_i_5_n_0\ : STD_LOGIC;
  signal \state[1]_i_1_n_0\ : STD_LOGIC;
  signal \state[1]_i_2_n_0\ : STD_LOGIC;
  signal \state[1]_i_3_n_0\ : STD_LOGIC;
  signal \state[1]_i_4_n_0\ : STD_LOGIC;
  signal \state[2]_i_1_n_0\ : STD_LOGIC;
  signal \state[2]_i_2_n_0\ : STD_LOGIC;
  signal \state[2]_i_3_n_0\ : STD_LOGIC;
  signal \state[3]_i_1_n_0\ : STD_LOGIC;
  signal \state[4]_i_1_n_0\ : STD_LOGIC;
  signal \state[4]_i_2_n_0\ : STD_LOGIC;
  signal \state[5]_i_1_n_0\ : STD_LOGIC;
  signal \state[5]_i_2_n_0\ : STD_LOGIC;
  signal \state[5]_i_3_n_0\ : STD_LOGIC;
  signal \state[5]_i_4_n_0\ : STD_LOGIC;
  signal \state[5]_i_5_n_0\ : STD_LOGIC;
  signal \state[5]_i_6_n_0\ : STD_LOGIC;
  signal \state[6]_i_1_n_0\ : STD_LOGIC;
  signal \state[6]_i_2_n_0\ : STD_LOGIC;
  signal \state[7]_i_2_n_0\ : STD_LOGIC;
  signal \state[7]_i_3_n_0\ : STD_LOGIC;
  signal \state[7]_i_4_n_0\ : STD_LOGIC;
  signal \state[7]_i_7_n_0\ : STD_LOGIC;
  signal \state[7]_i_8_n_0\ : STD_LOGIC;
  signal \state_reg_n_0_[0]\ : STD_LOGIC;
  signal \state_reg_n_0_[2]\ : STD_LOGIC;
  signal \state_reg_n_0_[3]\ : STD_LOGIC;
  signal \state_reg_n_0_[4]\ : STD_LOGIC;
  signal \state_reg_n_0_[5]\ : STD_LOGIC;
  signal \state_reg_n_0_[6]\ : STD_LOGIC;
  signal \state_reg_n_0_[7]\ : STD_LOGIC;
  signal temp_delay_ms : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \temp_delay_ms[7]_i_2_n_0\ : STD_LOGIC;
  signal temp_delay_start_i_1_n_0 : STD_LOGIC;
  signal temp_delay_start_i_2_n_0 : STD_LOGIC;
  signal temp_delay_start_reg_n_0 : STD_LOGIC;
  signal \temp_index[0]_i_1_n_0\ : STD_LOGIC;
  signal \temp_index[1]_i_1_n_0\ : STD_LOGIC;
  signal \temp_index[2]_i_1_n_0\ : STD_LOGIC;
  signal \temp_index[3]_i_1_n_0\ : STD_LOGIC;
  signal \temp_index[4]_i_1_n_0\ : STD_LOGIC;
  signal \temp_index[4]_i_2_n_0\ : STD_LOGIC;
  signal \temp_index[5]_i_1_n_0\ : STD_LOGIC;
  signal \temp_index[6]_i_1_n_0\ : STD_LOGIC;
  signal \temp_index[6]_i_2_n_0\ : STD_LOGIC;
  signal \temp_index[6]_i_3_n_0\ : STD_LOGIC;
  signal \temp_page[0]_i_1_n_0\ : STD_LOGIC;
  signal \temp_page[1]_i_1_n_0\ : STD_LOGIC;
  signal \temp_page[1]_i_2_n_0\ : STD_LOGIC;
  signal \temp_page[1]_i_3_n_0\ : STD_LOGIC;
  signal \temp_page[1]_i_4_n_0\ : STD_LOGIC;
  signal \temp_page[1]_i_5_n_0\ : STD_LOGIC;
  signal \temp_page[1]_i_6_n_0\ : STD_LOGIC;
  signal \temp_page[1]_i_7_n_0\ : STD_LOGIC;
  signal temp_spi_data : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal temp_spi_data0 : STD_LOGIC;
  signal \temp_spi_data[0]_i_2_n_0\ : STD_LOGIC;
  signal \temp_spi_data[1]_i_2_n_0\ : STD_LOGIC;
  signal \temp_spi_data[4]_i_2_n_0\ : STD_LOGIC;
  signal \temp_spi_data[4]_i_3_n_0\ : STD_LOGIC;
  signal \temp_spi_data[7]_i_2_n_0\ : STD_LOGIC;
  signal temp_spi_start : STD_LOGIC;
  signal temp_spi_start_i_1_n_0 : STD_LOGIC;
  signal temp_spi_start_i_3_n_0 : STD_LOGIC;
  signal temp_spi_start_i_4_n_0 : STD_LOGIC;
  signal temp_spi_start_i_5_n_0 : STD_LOGIC;
  signal temp_spi_start_reg_n_0 : STD_LOGIC;
  signal \temp_write_ascii[6]_i_1_n_0\ : STD_LOGIC;
  signal temp_write_base_addr : STD_LOGIC_VECTOR ( 8 downto 3 );
  signal \update_page_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \update_page_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \update_page_count[1]_i_2_n_0\ : STD_LOGIC;
  signal \update_page_count[2]_i_1_n_0\ : STD_LOGIC;
  signal \update_page_count[2]_i_2_n_0\ : STD_LOGIC;
  signal \update_page_count[2]_i_3_n_0\ : STD_LOGIC;
  signal \update_page_count[2]_i_4_n_0\ : STD_LOGIC;
  signal \update_page_count[2]_i_5_n_0\ : STD_LOGIC;
  signal \update_page_count[2]_i_6_n_0\ : STD_LOGIC;
  signal \update_page_count_reg_n_0_[0]\ : STD_LOGIC;
  signal \update_page_count_reg_n_0_[1]\ : STD_LOGIC;
  signal \update_page_count_reg_n_0_[2]\ : STD_LOGIC;
  signal write_byte_count0 : STD_LOGIC;
  signal \write_byte_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \write_byte_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \write_byte_count[2]_i_2_n_0\ : STD_LOGIC;
  signal \write_byte_count[2]_i_3_n_0\ : STD_LOGIC;
  signal \write_byte_count[2]_i_4_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_3\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \after_char_state[0]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \after_char_state[1]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \after_page_state[1]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \after_page_state[2]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \after_page_state[5]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \after_state[0]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \after_state[1]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \after_state[2]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \after_update_state[5]_i_3\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of clear_screen_i_2 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of oled_dc_i_2 : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of oled_dc_i_3 : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of oled_res_i_2 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of once_i_1 : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of s_update_start_i_3 : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \s_write_ascii_data[2]_i_2\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \s_write_base_addr[8]_i_3\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of s_write_start_i_1 : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \startup_count[0]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \startup_count[1]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \startup_count[2]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \startup_count[3]_i_2\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \state[1]_i_3\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \state[2]_i_2\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \state[2]_i_3\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \state[4]_i_2\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \state[5]_i_3\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \state[5]_i_6\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \state[6]_i_2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \state[7]_i_2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \state[7]_i_7\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of temp_delay_start_i_2 : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \temp_index[0]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \temp_index[1]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \temp_index[2]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \temp_index[4]_i_2\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \temp_index[5]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \temp_index[6]_i_2\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \temp_page[0]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \temp_page[1]_i_2\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \temp_page[1]_i_3\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \temp_page[1]_i_4\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \temp_page[1]_i_5\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \temp_spi_data[4]_i_3\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of temp_spi_start_i_2 : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of temp_spi_start_i_4 : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of temp_spi_start_i_5 : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \update_page_count[1]_i_2\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \update_page_count[2]_i_2\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \update_page_count[2]_i_4\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \update_page_count[2]_i_5\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \update_page_count[2]_i_6\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \write_byte_count[1]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \write_byte_count[2]_i_3\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \write_byte_count[2]_i_4\ : label is "soft_lutpair44";
begin
  DC <= \^dc\;
  RES <= \^res\;
  VBAT <= \^vbat\;
  VDD <= \^vdd\;
CHAR_LIB: entity work.top_oled_0_charLib
     port map (
      addra(9 downto 0) => char_lib_addr(9 downto 0),
      clk => clk,
      douta(7 downto 0) => pbuf_write_data(7 downto 0)
    );
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"38"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_2_n_0\,
      I1 => \FSM_sequential_state[2]_i_4_n_0\,
      I2 => state(0),
      O => \FSM_sequential_state_reg[0]_0\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0FFFFFF7000000"
    )
        port map (
      I0 => \FSM_sequential_state_reg[1]\,
      I1 => data_valid_i,
      I2 => state(2),
      I3 => state(0),
      I4 => \FSM_sequential_state[2]_i_4_n_0\,
      I5 => state(1),
      O => once_reg
    );
\FSM_sequential_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"11FFFFFF11D10000"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_2_n_0\,
      I1 => state(0),
      I2 => \FSM_sequential_state[2]_i_3_n_0\,
      I3 => state(1),
      I4 => \FSM_sequential_state[2]_i_4_n_0\,
      I5 => state(2),
      O => \FSM_sequential_state_reg[0]\
    );
\FSM_sequential_state[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => once_i_2_n_0,
      I1 => state(1),
      I2 => state(2),
      O => \FSM_sequential_state[2]_i_2_n_0\
    );
\FSM_sequential_state[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEF"
    )
        port map (
      I0 => write_start,
      I1 => \after_update_state[5]_i_2_n_0\,
      I2 => \state_reg_n_0_[5]\,
      I3 => \state_reg_n_0_[4]\,
      I4 => \FSM_sequential_state_reg[1]\,
      O => \FSM_sequential_state[2]_i_3_n_0\
    );
\FSM_sequential_state[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFAAAB"
    )
        port map (
      I0 => \FSM_sequential_state_reg[0]_4\,
      I1 => \s_write_base_addr[8]_i_3_n_0\,
      I2 => state(0),
      I3 => state(2),
      I4 => \FSM_sequential_state[2]_i_6_n_0\,
      I5 => \FSM_sequential_state[2]_i_7_n_0\,
      O => \FSM_sequential_state[2]_i_4_n_0\
    );
\FSM_sequential_state[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000F1111000F1"
    )
        port map (
      I0 => \after_update_state[5]_i_2_n_0\,
      I1 => oled_dc_i_3_n_0,
      I2 => state(2),
      I3 => state(0),
      I4 => state(1),
      I5 => update_start,
      O => \FSM_sequential_state[2]_i_6_n_0\
    );
\FSM_sequential_state[2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001010001"
    )
        port map (
      I0 => write_start,
      I1 => \after_update_state[5]_i_2_n_0\,
      I2 => oled_dc_i_3_n_0,
      I3 => \FSM_sequential_state_reg[1]\,
      I4 => state(2),
      I5 => state(1),
      O => \FSM_sequential_state[2]_i_7_n_0\
    );
INIT_SEQ: entity work.top_oled_0_init_sequence_rom
     port map (
      Q(3) => \startup_count_reg_n_0_[3]\,
      Q(2) => \startup_count_reg_n_0_[2]\,
      Q(1) => \startup_count_reg_n_0_[1]\,
      Q(0) => \startup_count_reg_n_0_[0]\,
      clk => clk,
      douta(14 downto 0) => init_operation(14 downto 0)
    );
MS_DELAY: entity work.top_oled_0_delay_ms
     port map (
      E(0) => MS_DELAY_n_0,
      \FSM_onehot_state_reg[2]_0\ => temp_delay_start_reg_n_0,
      Q(2) => \state_reg_n_0_[5]\,
      Q(1) => oled_dc,
      Q(0) => \state_reg_n_0_[0]\,
      clk => clk,
      \state_reg[0]\ => \state[7]_i_3_n_0\,
      \state_reg[0]_0\ => \state[7]_i_4_n_0\,
      \state_reg[0]_1\ => SPI_CTRL_n_0,
      \state_reg[0]_2\ => \state[7]_i_8_n_0\,
      \stop_time_reg[7]_0\(7 downto 0) => temp_delay_ms(7 downto 0)
    );
PIXEL_BUFFER: entity work.top_oled_0_pixel_buffer
     port map (
      D(7) => PIXEL_BUFFER_n_0,
      D(6) => PIXEL_BUFFER_n_1,
      D(5) => PIXEL_BUFFER_n_2,
      D(4) => PIXEL_BUFFER_n_3,
      D(3) => PIXEL_BUFFER_n_4,
      D(2) => PIXEL_BUFFER_n_5,
      D(1) => PIXEL_BUFFER_n_6,
      D(0) => PIXEL_BUFFER_n_7,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(7) => \state_reg_n_0_[7]\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(6) => \state_reg_n_0_[6]\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(5) => \state_reg_n_0_[5]\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(4) => \state_reg_n_0_[4]\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(3) => \state_reg_n_0_[3]\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(2) => \state_reg_n_0_[2]\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(1) => oled_dc,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(0) => \state_reg_n_0_[0]\,
      Q(6 downto 0) => iop_data(7 downto 1),
      addra(8 downto 3) => temp_write_base_addr(8 downto 3),
      addra(2 downto 0) => char_lib_addr(2 downto 0),
      clear_screen => clear_screen,
      clk => clk,
      douta(7 downto 0) => pbuf_write_data(7 downto 0),
      pbuf_read_addr(8 downto 0) => pbuf_read_addr(8 downto 0),
      \state_reg[6]\ => PIXEL_BUFFER_n_8,
      \temp_spi_data_reg[0]\ => \temp_spi_data[0]_i_2_n_0\,
      \temp_spi_data_reg[1]\ => \temp_spi_data[1]_i_2_n_0\,
      \temp_spi_data_reg[4]\ => \write_byte_count[2]_i_4_n_0\,
      \temp_spi_data_reg[4]_0\ => \temp_spi_data[4]_i_2_n_0\,
      \temp_spi_data_reg[4]_1\ => \temp_spi_data[4]_i_3_n_0\,
      \temp_spi_data_reg[5]\ => \update_page_count_reg_n_0_[0]\,
      \temp_spi_data_reg[5]_0\ => \update_page_count_reg_n_0_[1]\
    );
SPI_CTRL: entity work.top_oled_0_SpiCtrl
     port map (
      \FSM_sequential_state_reg[0]_0\ => temp_spi_start_reg_n_0,
      Q(2) => \state_reg_n_0_[5]\,
      Q(1) => oled_dc,
      Q(0) => \state_reg_n_0_[0]\,
      SCLK => SCLK,
      SDIN => SDIN,
      clk => clk,
      disp_on_start => disp_on_start,
      \shift_register_reg[7]_0\(7 downto 0) => temp_spi_data(7 downto 0),
      temp_spi_start_reg => SPI_CTRL_n_0
    );
\after_char_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => pbuf_read_addr(6),
      I1 => oled_dc,
      I2 => \state_reg_n_0_[5]\,
      I3 => pbuf_read_addr(5),
      I4 => \temp_page[1]_i_7_n_0\,
      O => \after_char_state[0]_i_1_n_0\
    );
\after_char_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFFFFFF"
    )
        port map (
      I0 => \temp_page[1]_i_7_n_0\,
      I1 => pbuf_read_addr(5),
      I2 => \state_reg_n_0_[5]\,
      I3 => oled_dc,
      I4 => pbuf_read_addr(6),
      O => \after_char_state[1]_i_1_n_0\
    );
\after_char_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_index[6]_i_1_n_0\,
      D => \after_char_state[0]_i_1_n_0\,
      Q => after_char_state(0),
      R => '0'
    );
\after_char_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_index[6]_i_1_n_0\,
      D => \after_char_state[1]_i_1_n_0\,
      Q => after_char_state(1),
      R => '0'
    );
\after_char_state_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_index[6]_i_1_n_0\,
      D => '1',
      Q => after_char_state(5),
      R => '0'
    );
\after_page_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => pbuf_read_addr(8),
      I1 => oled_dc,
      I2 => \state_reg_n_0_[5]\,
      I3 => pbuf_read_addr(7),
      O => \after_page_state[1]_i_1_n_0\
    );
\after_page_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => after_update_state(2),
      I1 => pbuf_read_addr(7),
      I2 => \state_reg_n_0_[5]\,
      I3 => oled_dc,
      I4 => pbuf_read_addr(8),
      O => \after_page_state[2]_i_1_n_0\
    );
\after_page_state[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => pbuf_read_addr(7),
      I1 => \state_reg_n_0_[5]\,
      I2 => oled_dc,
      I3 => pbuf_read_addr(8),
      I4 => after_update_state(5),
      O => \after_page_state[5]_i_1_n_0\
    );
\after_page_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_page[1]_i_1_n_0\,
      D => \after_page_state[1]_i_1_n_0\,
      Q => after_page_state(1),
      R => '0'
    );
\after_page_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_page[1]_i_1_n_0\,
      D => \after_page_state[2]_i_1_n_0\,
      Q => after_page_state(2),
      R => '0'
    );
\after_page_state_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_page[1]_i_1_n_0\,
      D => \after_page_state[5]_i_1_n_0\,
      Q => after_page_state(5),
      R => '0'
    );
\after_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEFCFEF"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[4]\,
      I2 => \state_reg_n_0_[5]\,
      I3 => oled_dc,
      I4 => after_char_state(0),
      O => \after_state[0]_i_1_n_0\
    );
\after_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C0B0C010"
    )
        port map (
      I0 => oled_dc,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[5]\,
      I3 => \state_reg_n_0_[4]\,
      I4 => after_char_state(1),
      O => \after_state[1]_i_1_n_0\
    );
\after_state[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => oled_dc,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[5]\,
      I3 => \state_reg_n_0_[4]\,
      O => \after_state[2]_i_1_n_0\
    );
\after_state[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFF00007FFF"
    )
        port map (
      I0 => \startup_count_reg_n_0_[3]\,
      I1 => \startup_count_reg_n_0_[2]\,
      I2 => \startup_count_reg_n_0_[0]\,
      I3 => \startup_count_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[5]\,
      I5 => \state_reg_n_0_[4]\,
      O => \after_state[4]_i_1_n_0\
    );
\after_state[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000C000F0C040000"
    )
        port map (
      I0 => \update_page_count_reg_n_0_[2]\,
      I1 => \state_reg_n_0_[5]\,
      I2 => \temp_page[1]_i_5_n_0\,
      I3 => oled_dc,
      I4 => \state_reg_n_0_[0]\,
      I5 => \state_reg_n_0_[4]\,
      O => \after_state[5]_i_1_n_0\
    );
\after_state[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCAAFFAA"
    )
        port map (
      I0 => \after_update_state[5]_i_3_n_0\,
      I1 => after_char_state(5),
      I2 => \state_reg_n_0_[4]\,
      I3 => \state_reg_n_0_[5]\,
      I4 => oled_dc,
      O => \after_state[5]_i_2_n_0\
    );
\after_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \after_state[5]_i_1_n_0\,
      D => \after_state[0]_i_1_n_0\,
      Q => \after_state_reg_n_0_[0]\,
      R => '0'
    );
\after_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \after_state[5]_i_1_n_0\,
      D => \after_state[1]_i_1_n_0\,
      Q => \after_state_reg_n_0_[1]\,
      R => '0'
    );
\after_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \after_state[5]_i_1_n_0\,
      D => \after_state[2]_i_1_n_0\,
      Q => \after_state_reg_n_0_[2]\,
      R => '0'
    );
\after_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \after_state[5]_i_1_n_0\,
      D => \after_state[4]_i_1_n_0\,
      Q => \after_state_reg_n_0_[4]\,
      R => '0'
    );
\after_state_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \after_state[5]_i_1_n_0\,
      D => \after_state[5]_i_2_n_0\,
      Q => \after_state_reg_n_0_[5]\,
      R => '0'
    );
\after_update_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFFFDFF00300000"
    )
        port map (
      I0 => \after_update_state[5]_i_3_n_0\,
      I1 => \after_update_state[5]_i_2_n_0\,
      I2 => \state_reg_n_0_[5]\,
      I3 => \state_reg_n_0_[4]\,
      I4 => update_start,
      I5 => after_update_state(2),
      O => \after_update_state[2]_i_1_n_0\
    );
\after_update_state[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF002C0020"
    )
        port map (
      I0 => update_start,
      I1 => \state_reg_n_0_[4]\,
      I2 => \state_reg_n_0_[5]\,
      I3 => \after_update_state[5]_i_2_n_0\,
      I4 => \after_update_state[5]_i_3_n_0\,
      I5 => after_update_state(5),
      O => \after_update_state[5]_i_1_n_0\
    );
\after_update_state[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => oled_dc,
      I1 => \state_reg_n_0_[2]\,
      I2 => \state_reg_n_0_[3]\,
      I3 => \state_reg_n_0_[7]\,
      I4 => \state_reg_n_0_[6]\,
      I5 => \state_reg_n_0_[0]\,
      O => \after_update_state[5]_i_2_n_0\
    );
\after_update_state[5]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \startup_count_reg_n_0_[3]\,
      I1 => \startup_count_reg_n_0_[2]\,
      I2 => \startup_count_reg_n_0_[0]\,
      I3 => \startup_count_reg_n_0_[1]\,
      O => \after_update_state[5]_i_3_n_0\
    );
\after_update_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \after_update_state[2]_i_1_n_0\,
      Q => after_update_state(2),
      R => '0'
    );
\after_update_state_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \after_update_state[5]_i_1_n_0\,
      Q => after_update_state(5),
      R => '0'
    );
clear_screen_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFB0"
    )
        port map (
      I0 => update_clear,
      I1 => \state_reg_n_0_[5]\,
      I2 => clear_screen_i_2_n_0,
      I3 => clear_screen,
      O => clear_screen_i_1_n_0
    );
clear_screen_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02300200"
    )
        port map (
      I0 => \after_update_state[5]_i_3_n_0\,
      I1 => \after_update_state[5]_i_2_n_0\,
      I2 => \state_reg_n_0_[5]\,
      I3 => \state_reg_n_0_[4]\,
      I4 => update_start,
      O => clear_screen_i_2_n_0
    );
clear_screen_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => clear_screen_i_1_n_0,
      Q => clear_screen,
      R => '0'
    );
\iop_data[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \state_reg_n_0_[5]\,
      I1 => \state_reg_n_0_[4]\,
      I2 => \iop_data[7]_i_2_n_0\,
      O => \iop_data[7]_i_1_n_0\
    );
\iop_data[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => oled_dc,
      I2 => \state_reg_n_0_[2]\,
      I3 => \state_reg_n_0_[3]\,
      I4 => \state_reg_n_0_[7]\,
      I5 => \state_reg_n_0_[6]\,
      O => \iop_data[7]_i_2_n_0\
    );
\iop_data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \iop_data[7]_i_1_n_0\,
      D => init_operation(0),
      Q => iop_data(0),
      R => '0'
    );
\iop_data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \iop_data[7]_i_1_n_0\,
      D => init_operation(1),
      Q => iop_data(1),
      R => '0'
    );
\iop_data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \iop_data[7]_i_1_n_0\,
      D => init_operation(2),
      Q => iop_data(2),
      R => '0'
    );
\iop_data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \iop_data[7]_i_1_n_0\,
      D => init_operation(3),
      Q => iop_data(3),
      R => '0'
    );
\iop_data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \iop_data[7]_i_1_n_0\,
      D => init_operation(4),
      Q => iop_data(4),
      R => '0'
    );
\iop_data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \iop_data[7]_i_1_n_0\,
      D => init_operation(5),
      Q => iop_data(5),
      R => '0'
    );
\iop_data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \iop_data[7]_i_1_n_0\,
      D => init_operation(6),
      Q => iop_data(6),
      R => '0'
    );
\iop_data_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \iop_data[7]_i_1_n_0\,
      D => init_operation(7),
      Q => iop_data(7),
      R => '0'
    );
iop_res_set_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \iop_data[7]_i_1_n_0\,
      D => init_operation(13),
      Q => iop_res_set,
      R => '0'
    );
iop_res_val_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \iop_data[7]_i_1_n_0\,
      D => init_operation(12),
      Q => iop_res_val,
      R => '0'
    );
iop_state_select_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \iop_data[7]_i_1_n_0\,
      D => init_operation(14),
      Q => iop_state_select_reg_n_0,
      R => '0'
    );
iop_vbat_set_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \iop_data[7]_i_1_n_0\,
      D => init_operation(9),
      Q => iop_vbat_set,
      R => '0'
    );
iop_vbat_val_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \iop_data[7]_i_1_n_0\,
      D => init_operation(8),
      Q => iop_vbat_val,
      R => '0'
    );
iop_vdd_set_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \iop_data[7]_i_1_n_0\,
      D => init_operation(11),
      Q => iop_vdd_set,
      R => '0'
    );
iop_vdd_val_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \iop_data[7]_i_1_n_0\,
      D => init_operation(10),
      Q => iop_vdd_val,
      R => '0'
    );
oled_dc_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0FFFEF0F00050"
    )
        port map (
      I0 => oled_dc_i_2_n_0,
      I1 => \update_page_count_reg_n_0_[2]\,
      I2 => oled_dc,
      I3 => oled_dc_i_3_n_0,
      I4 => oled_dc_i_4_n_0,
      I5 => \^dc\,
      O => oled_dc_i_1_n_0
    );
oled_dc_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFFF"
    )
        port map (
      I0 => \state_reg_n_0_[6]\,
      I1 => \state_reg_n_0_[7]\,
      I2 => \state_reg_n_0_[3]\,
      I3 => \state_reg_n_0_[2]\,
      I4 => \state_reg_n_0_[0]\,
      O => oled_dc_i_2_n_0
    );
oled_dc_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \state_reg_n_0_[4]\,
      I1 => \state_reg_n_0_[5]\,
      O => oled_dc_i_3_n_0
    );
oled_dc_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \state_reg_n_0_[4]\,
      I1 => \after_update_state[5]_i_2_n_0\,
      O => oled_dc_i_4_n_0
    );
oled_dc_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => oled_dc_i_1_n_0,
      Q => \^dc\,
      R => '0'
    );
oled_res_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => iop_res_val,
      I1 => oled_res_i_2_n_0,
      I2 => iop_res_set,
      I3 => \^res\,
      O => oled_res_i_1_n_0
    );
oled_res_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \after_update_state[5]_i_2_n_0\,
      I1 => \state_reg_n_0_[4]\,
      I2 => \state_reg_n_0_[5]\,
      O => oled_res_i_2_n_0
    );
oled_res_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => oled_res_i_1_n_0,
      Q => \^res\,
      R => '0'
    );
oled_vbat_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000EA2A"
    )
        port map (
      I0 => \^vbat\,
      I1 => iop_vbat_set,
      I2 => oled_res_i_2_n_0,
      I3 => iop_vbat_val,
      I4 => oled_vbat0,
      O => oled_vbat_i_1_n_0
    );
oled_vbat_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => oled_vbat_i_1_n_0,
      Q => \^vbat\,
      R => '0'
    );
oled_vdd_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDD0D0D000D0D0D0"
    )
        port map (
      I0 => \state_reg_n_0_[4]\,
      I1 => oled_vdd_i_2_n_0,
      I2 => \^vdd\,
      I3 => iop_vdd_set,
      I4 => oled_res_i_2_n_0,
      I5 => iop_vdd_val,
      O => oled_vdd_i_1_n_0
    );
oled_vdd_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[2]\,
      I2 => \state_reg_n_0_[3]\,
      I3 => \state_reg_n_0_[7]\,
      I4 => \state_reg_n_0_[6]\,
      I5 => \temp_index[4]_i_2_n_0\,
      O => oled_vdd_i_2_n_0
    );
oled_vdd_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => oled_vdd_i_1_n_0,
      Q => \^vdd\,
      R => '0'
    );
once_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0004"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => once_i_2_n_0,
      I3 => state(0),
      I4 => \FSM_sequential_state_reg[1]\,
      O => \FSM_sequential_state_reg[2]\
    );
once_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFDFFFF"
    )
        port map (
      I0 => \temp_write_base_addr_reg[8]_0\(5),
      I1 => once_reg_0,
      I2 => write_start,
      I3 => \after_update_state[5]_i_2_n_0\,
      I4 => \state_reg_n_0_[5]\,
      I5 => \state_reg_n_0_[4]\,
      O => once_i_2_n_0
    );
s_update_clear_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBA808A"
    )
        port map (
      I0 => s_update_clear_reg,
      I1 => s_update_clear_i_3_n_0,
      I2 => state(0),
      I3 => \FSM_sequential_state[2]_i_2_n_0\,
      I4 => update_clear,
      O => \FSM_sequential_state_reg[0]_2\
    );
s_update_clear_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000FF4040"
    )
        port map (
      I0 => data_valid_i,
      I1 => \FSM_sequential_state_reg[1]\,
      I2 => s_update_start_reg,
      I3 => \s_write_base_addr[8]_i_3_n_0\,
      I4 => state(2),
      I5 => state(1),
      O => s_update_clear_i_3_n_0
    );
s_update_start_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBFBFBFBBB0B0B0"
    )
        port map (
      I0 => s_update_start_i_2_n_0,
      I1 => \FSM_sequential_state[2]_i_2_n_0\,
      I2 => s_update_start_i_3_n_0,
      I3 => state(0),
      I4 => s_update_clear_i_3_n_0,
      I5 => update_start,
      O => \FSM_sequential_state_reg[0]_3\
    );
s_update_start_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000FFE0E0"
    )
        port map (
      I0 => dBtnU,
      I1 => dBTnD,
      I2 => \FSM_sequential_state_reg[1]\,
      I3 => \s_write_base_addr[8]_i_3_n_0\,
      I4 => state(2),
      I5 => state(1),
      O => s_update_start_i_2_n_0
    );
s_update_start_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4404"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => once_i_2_n_0,
      I3 => state(2),
      O => s_update_start_i_3_n_0
    );
\s_write_ascii_data[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FDD"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_3_n_0\,
      I1 => ascii_data_i(0),
      I2 => Q(0),
      I3 => state(1),
      O => D(0)
    );
\s_write_ascii_data[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08F8F808"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_3_n_0\,
      I1 => ascii_data_i(1),
      I2 => state(1),
      I3 => Q(1),
      I4 => Q(0),
      O => D(1)
    );
\s_write_ascii_data[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888888888FFFF888"
    )
        port map (
      I0 => \s_write_ascii_data[2]_i_2_n_0\,
      I1 => ascii_data_i(2),
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(2),
      I5 => \s_write_ascii_data_reg[2]\,
      O => D(2)
    );
\s_write_ascii_data[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => \FSM_sequential_state[2]_i_3_n_0\,
      O => \s_write_ascii_data[2]_i_2_n_0\
    );
\s_write_ascii_data[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F00F8888"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_3_n_0\,
      I1 => ascii_data_i(3),
      I2 => \s_write_ascii_data_reg[3]\,
      I3 => Q(3),
      I4 => state(1),
      O => D(3)
    );
\s_write_ascii_data[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F00F8888"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_3_n_0\,
      I1 => ascii_data_i(4),
      I2 => \s_write_ascii_data_reg[4]\,
      I3 => Q(4),
      I4 => state(1),
      O => D(4)
    );
\s_write_ascii_data[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F00F8888"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_3_n_0\,
      I1 => ascii_data_i(5),
      I2 => \s_write_ascii_data_reg[5]\,
      I3 => Q(5),
      I4 => state(1),
      O => D(5)
    );
\s_write_ascii_data[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F8FF0000"
    )
        port map (
      I0 => data_valid_i,
      I1 => \FSM_sequential_state_reg[1]\,
      I2 => state(1),
      I3 => \FSM_sequential_state[2]_i_3_n_0\,
      I4 => state(0),
      I5 => state(2),
      O => data_valid_i_0(0)
    );
\s_write_ascii_data[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9F9F909F"
    )
        port map (
      I0 => Q(6),
      I1 => \s_write_ascii_data_reg[6]\,
      I2 => state(1),
      I3 => \FSM_sequential_state[2]_i_3_n_0\,
      I4 => ascii_data_i(6),
      O => D(6)
    );
\s_write_base_addr[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55D555D55DD55DDD"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_2_n_0\,
      I1 => state(0),
      I2 => state(1),
      I3 => state(2),
      I4 => \FSM_sequential_state_reg[1]\,
      I5 => \s_write_base_addr[8]_i_3_n_0\,
      O => E(0)
    );
\s_write_base_addr[8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFB"
    )
        port map (
      I0 => \state_reg_n_0_[4]\,
      I1 => \state_reg_n_0_[5]\,
      I2 => \after_update_state[5]_i_2_n_0\,
      I3 => write_start,
      O => \s_write_base_addr[8]_i_3_n_0\
    );
s_write_start_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FC3F0C34"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_3_n_0\,
      I1 => state(0),
      I2 => state(2),
      I3 => state(1),
      I4 => write_start,
      O => \FSM_sequential_state_reg[0]_1\
    );
\startup_count[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \state_reg_n_0_[4]\,
      I1 => \startup_count_reg_n_0_[0]\,
      O => \startup_count[0]_i_1_n_0\
    );
\startup_count[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => \startup_count_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[4]\,
      I2 => \startup_count_reg_n_0_[1]\,
      O => \startup_count[1]_i_1_n_0\
    );
\startup_count[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7080"
    )
        port map (
      I0 => \startup_count_reg_n_0_[0]\,
      I1 => \startup_count_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[4]\,
      I3 => \startup_count_reg_n_0_[2]\,
      O => \startup_count[2]_i_1_n_0\
    );
\startup_count[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01030100"
    )
        port map (
      I0 => \after_update_state[5]_i_3_n_0\,
      I1 => \after_update_state[5]_i_2_n_0\,
      I2 => \state_reg_n_0_[5]\,
      I3 => \state_reg_n_0_[4]\,
      I4 => disp_on_start,
      O => \startup_count[3]_i_1_n_0\
    );
\startup_count[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F008000"
    )
        port map (
      I0 => \startup_count_reg_n_0_[1]\,
      I1 => \startup_count_reg_n_0_[0]\,
      I2 => \startup_count_reg_n_0_[2]\,
      I3 => \state_reg_n_0_[4]\,
      I4 => \startup_count_reg_n_0_[3]\,
      O => \startup_count[3]_i_2_n_0\
    );
\startup_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \startup_count[3]_i_1_n_0\,
      D => \startup_count[0]_i_1_n_0\,
      Q => \startup_count_reg_n_0_[0]\,
      R => '0'
    );
\startup_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \startup_count[3]_i_1_n_0\,
      D => \startup_count[1]_i_1_n_0\,
      Q => \startup_count_reg_n_0_[1]\,
      R => '0'
    );
\startup_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \startup_count[3]_i_1_n_0\,
      D => \startup_count[2]_i_1_n_0\,
      Q => \startup_count_reg_n_0_[2]\,
      R => '0'
    );
\startup_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \startup_count[3]_i_1_n_0\,
      D => \startup_count[3]_i_2_n_0\,
      Q => \startup_count_reg_n_0_[3]\,
      R => '0'
    );
\state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEEEEEEEF"
    )
        port map (
      I0 => \state[0]_i_2_n_0\,
      I1 => \state[0]_i_3_n_0\,
      I2 => \after_update_state[5]_i_2_n_0\,
      I3 => \state_reg_n_0_[4]\,
      I4 => \state_reg_n_0_[5]\,
      I5 => \state[0]_i_4_n_0\,
      O => \state[0]_i_1_n_0\
    );
\state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEAFFEAEA"
    )
        port map (
      I0 => temp_spi_start_i_5_n_0,
      I1 => \after_state_reg_n_0_[0]\,
      I2 => \state[5]_i_3_n_0\,
      I3 => oled_vdd_i_2_n_0,
      I4 => disp_on_start,
      I5 => \state[0]_i_5_n_0\,
      O => \state[0]_i_2_n_0\
    );
\state[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF00000B030800"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => write_start,
      I2 => \update_page_count_reg_n_0_[2]\,
      I3 => \state[5]_i_6_n_0\,
      I4 => \temp_index[6]_i_3_n_0\,
      I5 => oled_dc,
      O => \state[0]_i_3_n_0\
    );
\state[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => char_lib_addr(0),
      I1 => char_lib_addr(1),
      I2 => char_lib_addr(2),
      I3 => oled_dc,
      I4 => \state_reg_n_0_[0]\,
      I5 => PIXEL_BUFFER_n_8,
      O => \state[0]_i_4_n_0\
    );
\state[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F0405050"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => update_start,
      I2 => \state[5]_i_6_n_0\,
      I3 => \state_reg_n_0_[3]\,
      I4 => write_start,
      I5 => oled_dc,
      O => \state[0]_i_5_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEAEAEAFF"
    )
        port map (
      I0 => \state[1]_i_2_n_0\,
      I1 => \state[5]_i_3_n_0\,
      I2 => \after_state_reg_n_0_[1]\,
      I3 => \state[1]_i_3_n_0\,
      I4 => oled_dc_i_2_n_0,
      I5 => \state[1]_i_4_n_0\,
      O => \state[1]_i_1_n_0\
    );
\state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888888888888888"
    )
        port map (
      I0 => \state[2]_i_2_n_0\,
      I1 => \state[5]_i_4_n_0\,
      I2 => \iop_data[7]_i_2_n_0\,
      I3 => \state_reg_n_0_[5]\,
      I4 => \update_page_count_reg_n_0_[2]\,
      I5 => after_page_state(1),
      O => \state[1]_i_2_n_0\
    );
\state[1]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \state_reg_n_0_[5]\,
      I1 => \state_reg_n_0_[4]\,
      I2 => disp_on_start,
      O => \state[1]_i_3_n_0\
    );
\state[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002008000020084"
    )
        port map (
      I0 => \state_reg_n_0_[5]\,
      I1 => \state_reg_n_0_[4]\,
      I2 => \state_reg_n_0_[0]\,
      I3 => \temp_page[1]_i_5_n_0\,
      I4 => oled_dc,
      I5 => iop_state_select_reg_n_0,
      O => \state[1]_i_4_n_0\
    );
\state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEAFFEAFFEA"
    )
        port map (
      I0 => \state[7]_i_2_n_0\,
      I1 => \state[2]_i_2_n_0\,
      I2 => \state[5]_i_4_n_0\,
      I3 => \state[2]_i_3_n_0\,
      I4 => \after_state_reg_n_0_[2]\,
      I5 => \state[5]_i_3_n_0\,
      O => \state[2]_i_1_n_0\
    );
\state[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => oled_dc,
      O => \state[2]_i_2_n_0\
    );
\state[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => \state_reg_n_0_[4]\,
      I1 => \state_reg_n_0_[5]\,
      I2 => after_page_state(2),
      I3 => \update_page_count_reg_n_0_[2]\,
      I4 => \iop_data[7]_i_2_n_0\,
      O => \state[2]_i_3_n_0\
    );
\state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEEFEEEEEEE"
    )
        port map (
      I0 => \write_byte_count[2]_i_2_n_0\,
      I1 => \state[7]_i_2_n_0\,
      I2 => \state[5]_i_4_n_0\,
      I3 => write_start,
      I4 => \state_reg_n_0_[0]\,
      I5 => oled_dc,
      O => \state[3]_i_1_n_0\
    );
\state[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF88F8"
    )
        port map (
      I0 => \after_state_reg_n_0_[4]\,
      I1 => \state[5]_i_3_n_0\,
      I2 => \state[4]_i_2_n_0\,
      I3 => \after_update_state[5]_i_2_n_0\,
      I4 => \iop_data[7]_i_1_n_0\,
      I5 => \state[7]_i_2_n_0\,
      O => \state[4]_i_1_n_0\
    );
\state[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \state_reg_n_0_[4]\,
      I1 => \state_reg_n_0_[5]\,
      O => \state[4]_i_2_n_0\
    );
\state[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEAEAFFEA"
    )
        port map (
      I0 => \state[5]_i_2_n_0\,
      I1 => \state[5]_i_3_n_0\,
      I2 => \after_state_reg_n_0_[5]\,
      I3 => \state[5]_i_4_n_0\,
      I4 => oled_dc,
      I5 => \state[5]_i_5_n_0\,
      O => \state[5]_i_1_n_0\
    );
\state[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888F0000000"
    )
        port map (
      I0 => PIXEL_BUFFER_n_8,
      I1 => \state_reg_n_0_[2]\,
      I2 => \state[5]_i_6_n_0\,
      I3 => \update_page_count_reg_n_0_[2]\,
      I4 => after_page_state(5),
      I5 => \write_byte_count[2]_i_4_n_0\,
      O => \state[5]_i_2_n_0\
    );
\state[5]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => temp_spi_start_i_3_n_0,
      I1 => oled_dc,
      I2 => \state_reg_n_0_[0]\,
      O => \state[5]_i_3_n_0\
    );
\state[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => \state_reg_n_0_[5]\,
      I1 => \state_reg_n_0_[4]\,
      I2 => \state_reg_n_0_[6]\,
      I3 => \state_reg_n_0_[2]\,
      I4 => \state_reg_n_0_[7]\,
      I5 => \state_reg_n_0_[3]\,
      O => \state[5]_i_4_n_0\
    );
\state[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0000AAA8"
    )
        port map (
      I0 => PIXEL_BUFFER_n_8,
      I1 => write_start,
      I2 => oled_dc,
      I3 => update_start,
      I4 => \state_reg_n_0_[0]\,
      I5 => \state[7]_i_2_n_0\,
      O => \state[5]_i_5_n_0\
    );
\state[5]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => \state_reg_n_0_[7]\,
      I1 => \state_reg_n_0_[2]\,
      I2 => \state_reg_n_0_[6]\,
      I3 => \state_reg_n_0_[4]\,
      I4 => \state_reg_n_0_[5]\,
      O => \state[5]_i_6_n_0\
    );
\state[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAAAAAAE"
    )
        port map (
      I0 => \after_state[5]_i_1_n_0\,
      I1 => \state_reg_n_0_[5]\,
      I2 => update_start,
      I3 => write_start,
      I4 => \after_update_state[5]_i_2_n_0\,
      I5 => \state[6]_i_2_n_0\,
      O => \state[6]_i_1_n_0\
    );
\state[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => disp_on_start,
      I1 => oled_dc,
      I2 => \state_reg_n_0_[5]\,
      I3 => oled_dc_i_2_n_0,
      O => \state[6]_i_2_n_0\
    );
\state[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => disp_on_start,
      I1 => \state_reg_n_0_[4]\,
      I2 => oled_dc_i_2_n_0,
      I3 => \state_reg_n_0_[5]\,
      I4 => oled_dc,
      O => \state[7]_i_2_n_0\
    );
\state[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFECFF33FF33DFEC"
    )
        port map (
      I0 => update_start,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[5]\,
      I3 => \state_reg_n_0_[2]\,
      I4 => oled_dc,
      I5 => \state_reg_n_0_[6]\,
      O => \state[7]_i_3_n_0\
    );
\state[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFAFAFFFAFAFA"
    )
        port map (
      I0 => \state_reg_n_0_[4]\,
      I1 => disp_on_start,
      I2 => \state[7]_i_7_n_0\,
      I3 => \state_reg_n_0_[5]\,
      I4 => oled_dc,
      I5 => \state_reg_n_0_[0]\,
      O => \state[7]_i_4_n_0\
    );
\state[7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \state_reg_n_0_[3]\,
      I1 => \state_reg_n_0_[7]\,
      O => \state[7]_i_7_n_0\
    );
\state[7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => update_start,
      I1 => write_start,
      O => \state[7]_i_8_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => MS_DELAY_n_0,
      D => \state[0]_i_1_n_0\,
      Q => \state_reg_n_0_[0]\,
      R => '0'
    );
\state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => MS_DELAY_n_0,
      D => \state[1]_i_1_n_0\,
      Q => oled_dc,
      R => '0'
    );
\state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => MS_DELAY_n_0,
      D => \state[2]_i_1_n_0\,
      Q => \state_reg_n_0_[2]\,
      R => '0'
    );
\state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => MS_DELAY_n_0,
      D => \state[3]_i_1_n_0\,
      Q => \state_reg_n_0_[3]\,
      R => '0'
    );
\state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => MS_DELAY_n_0,
      D => \state[4]_i_1_n_0\,
      Q => \state_reg_n_0_[4]\,
      R => '0'
    );
\state_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => MS_DELAY_n_0,
      D => \state[5]_i_1_n_0\,
      Q => \state_reg_n_0_[5]\,
      R => '0'
    );
\state_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => MS_DELAY_n_0,
      D => \state[6]_i_1_n_0\,
      Q => \state_reg_n_0_[6]\,
      R => '0'
    );
\state_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => MS_DELAY_n_0,
      D => \state[7]_i_2_n_0\,
      Q => \state_reg_n_0_[7]\,
      R => '0'
    );
\temp_delay_ms[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \iop_data[7]_i_2_n_0\,
      I1 => \state_reg_n_0_[5]\,
      I2 => \state_reg_n_0_[4]\,
      O => oled_vbat0
    );
\temp_delay_ms[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => oled_res_i_2_n_0,
      I1 => iop_state_select_reg_n_0,
      O => \temp_delay_ms[7]_i_2_n_0\
    );
\temp_delay_ms_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_delay_ms[7]_i_2_n_0\,
      D => iop_data(0),
      Q => temp_delay_ms(0),
      R => oled_vbat0
    );
\temp_delay_ms_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_delay_ms[7]_i_2_n_0\,
      D => iop_data(1),
      Q => temp_delay_ms(1),
      R => oled_vbat0
    );
\temp_delay_ms_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_delay_ms[7]_i_2_n_0\,
      D => iop_data(2),
      Q => temp_delay_ms(2),
      S => oled_vbat0
    );
\temp_delay_ms_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_delay_ms[7]_i_2_n_0\,
      D => iop_data(3),
      Q => temp_delay_ms(3),
      R => oled_vbat0
    );
\temp_delay_ms_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_delay_ms[7]_i_2_n_0\,
      D => iop_data(4),
      Q => temp_delay_ms(4),
      R => oled_vbat0
    );
\temp_delay_ms_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_delay_ms[7]_i_2_n_0\,
      D => iop_data(5),
      Q => temp_delay_ms(5),
      S => oled_vbat0
    );
\temp_delay_ms_reg[6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_delay_ms[7]_i_2_n_0\,
      D => iop_data(6),
      Q => temp_delay_ms(6),
      S => oled_vbat0
    );
\temp_delay_ms_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_delay_ms[7]_i_2_n_0\,
      D => iop_data(7),
      Q => temp_delay_ms(7),
      R => oled_vbat0
    );
temp_delay_start_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555557F55555540"
    )
        port map (
      I0 => \state_reg_n_0_[6]\,
      I1 => temp_spi_start_i_3_n_0,
      I2 => temp_delay_start_i_2_n_0,
      I3 => \temp_delay_ms[7]_i_2_n_0\,
      I4 => oled_vbat0,
      I5 => temp_delay_start_reg_n_0,
      O => temp_delay_start_i_1_n_0
    );
temp_delay_start_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => oled_dc,
      I1 => \state_reg_n_0_[0]\,
      O => temp_delay_start_i_2_n_0
    );
temp_delay_start_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => temp_delay_start_i_1_n_0,
      Q => temp_delay_start_reg_n_0,
      R => '0'
    );
\temp_index[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \state_reg_n_0_[5]\,
      I1 => oled_dc,
      I2 => pbuf_read_addr(0),
      O => \temp_index[0]_i_1_n_0\
    );
\temp_index[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0880"
    )
        port map (
      I0 => oled_dc,
      I1 => \state_reg_n_0_[5]\,
      I2 => pbuf_read_addr(0),
      I3 => pbuf_read_addr(1),
      O => \temp_index[1]_i_1_n_0\
    );
\temp_index[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"70008000"
    )
        port map (
      I0 => pbuf_read_addr(0),
      I1 => pbuf_read_addr(1),
      I2 => \state_reg_n_0_[5]\,
      I3 => oled_dc,
      I4 => pbuf_read_addr(2),
      O => \temp_index[2]_i_1_n_0\
    );
\temp_index[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F00000080000000"
    )
        port map (
      I0 => pbuf_read_addr(1),
      I1 => pbuf_read_addr(0),
      I2 => pbuf_read_addr(2),
      I3 => \state_reg_n_0_[5]\,
      I4 => oled_dc,
      I5 => pbuf_read_addr(3),
      O => \temp_index[3]_i_1_n_0\
    );
\temp_index[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00007FFF00008000"
    )
        port map (
      I0 => pbuf_read_addr(2),
      I1 => pbuf_read_addr(0),
      I2 => pbuf_read_addr(1),
      I3 => pbuf_read_addr(3),
      I4 => \temp_index[4]_i_2_n_0\,
      I5 => pbuf_read_addr(4),
      O => \temp_index[4]_i_1_n_0\
    );
\temp_index[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => oled_dc,
      I1 => \state_reg_n_0_[5]\,
      O => \temp_index[4]_i_2_n_0\
    );
\temp_index[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8040"
    )
        port map (
      I0 => \temp_page[1]_i_7_n_0\,
      I1 => \state_reg_n_0_[5]\,
      I2 => oled_dc,
      I3 => pbuf_read_addr(5),
      O => \temp_index[5]_i_1_n_0\
    );
\temp_index[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF00A8"
    )
        port map (
      I0 => \temp_index[6]_i_3_n_0\,
      I1 => update_start,
      I2 => oled_dc,
      I3 => \state_reg_n_0_[0]\,
      I4 => \temp_page[1]_i_4_n_0\,
      O => \temp_index[6]_i_1_n_0\
    );
\temp_index[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B0004000"
    )
        port map (
      I0 => \temp_page[1]_i_7_n_0\,
      I1 => pbuf_read_addr(5),
      I2 => \state_reg_n_0_[5]\,
      I3 => oled_dc,
      I4 => pbuf_read_addr(6),
      O => \temp_index[6]_i_2_n_0\
    );
\temp_index[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \state_reg_n_0_[5]\,
      I1 => \state_reg_n_0_[4]\,
      I2 => \state_reg_n_0_[6]\,
      I3 => \state_reg_n_0_[7]\,
      I4 => \state_reg_n_0_[3]\,
      I5 => \state_reg_n_0_[2]\,
      O => \temp_index[6]_i_3_n_0\
    );
\temp_index_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_index[6]_i_1_n_0\,
      D => \temp_index[0]_i_1_n_0\,
      Q => pbuf_read_addr(0),
      R => '0'
    );
\temp_index_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_index[6]_i_1_n_0\,
      D => \temp_index[1]_i_1_n_0\,
      Q => pbuf_read_addr(1),
      R => '0'
    );
\temp_index_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_index[6]_i_1_n_0\,
      D => \temp_index[2]_i_1_n_0\,
      Q => pbuf_read_addr(2),
      R => '0'
    );
\temp_index_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_index[6]_i_1_n_0\,
      D => \temp_index[3]_i_1_n_0\,
      Q => pbuf_read_addr(3),
      R => '0'
    );
\temp_index_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_index[6]_i_1_n_0\,
      D => \temp_index[4]_i_1_n_0\,
      Q => pbuf_read_addr(4),
      R => '0'
    );
\temp_index_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_index[6]_i_1_n_0\,
      D => \temp_index[5]_i_1_n_0\,
      Q => pbuf_read_addr(5),
      R => '0'
    );
\temp_index_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_index[6]_i_1_n_0\,
      D => \temp_index[6]_i_2_n_0\,
      Q => pbuf_read_addr(6),
      R => '0'
    );
\temp_page[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \state_reg_n_0_[5]\,
      I1 => oled_dc,
      I2 => pbuf_read_addr(7),
      O => \temp_page[0]_i_1_n_0\
    );
\temp_page[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4F4F4F4F4FFF4F4"
    )
        port map (
      I0 => \temp_page[1]_i_3_n_0\,
      I1 => update_start,
      I2 => \temp_page[1]_i_4_n_0\,
      I3 => \temp_page[1]_i_5_n_0\,
      I4 => \temp_page[1]_i_6_n_0\,
      I5 => \temp_page[1]_i_7_n_0\,
      O => \temp_page[1]_i_1_n_0\
    );
\temp_page[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0880"
    )
        port map (
      I0 => oled_dc,
      I1 => \state_reg_n_0_[5]\,
      I2 => pbuf_read_addr(7),
      I3 => pbuf_read_addr(8),
      O => \temp_page[1]_i_2_n_0\
    );
\temp_page[1]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => \after_update_state[5]_i_2_n_0\,
      I1 => \state_reg_n_0_[5]\,
      I2 => \state_reg_n_0_[4]\,
      O => \temp_page[1]_i_3_n_0\
    );
\temp_page[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \startup_count_reg_n_0_[1]\,
      I1 => \startup_count_reg_n_0_[0]\,
      I2 => \startup_count_reg_n_0_[2]\,
      I3 => \startup_count_reg_n_0_[3]\,
      I4 => oled_res_i_2_n_0,
      O => \temp_page[1]_i_4_n_0\
    );
\temp_page[1]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \state_reg_n_0_[3]\,
      I2 => \state_reg_n_0_[7]\,
      I3 => \state_reg_n_0_[6]\,
      O => \temp_page[1]_i_5_n_0\
    );
\temp_page[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000020000000"
    )
        port map (
      I0 => oled_dc,
      I1 => \state_reg_n_0_[0]\,
      I2 => pbuf_read_addr(5),
      I3 => pbuf_read_addr(6),
      I4 => \state_reg_n_0_[5]\,
      I5 => \state_reg_n_0_[4]\,
      O => \temp_page[1]_i_6_n_0\
    );
\temp_page[1]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => pbuf_read_addr(3),
      I1 => pbuf_read_addr(1),
      I2 => pbuf_read_addr(0),
      I3 => pbuf_read_addr(2),
      I4 => pbuf_read_addr(4),
      O => \temp_page[1]_i_7_n_0\
    );
\temp_page_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_page[1]_i_1_n_0\,
      D => \temp_page[0]_i_1_n_0\,
      Q => pbuf_read_addr(7),
      R => '0'
    );
\temp_page_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_page[1]_i_1_n_0\,
      D => \temp_page[1]_i_2_n_0\,
      Q => pbuf_read_addr(8),
      R => '0'
    );
\temp_spi_data[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA03000000"
    )
        port map (
      I0 => iop_data(0),
      I1 => \update_page_count_reg_n_0_[1]\,
      I2 => oled_dc,
      I3 => \update_page_count_reg_n_0_[0]\,
      I4 => pbuf_read_addr(7),
      I5 => \state_reg_n_0_[4]\,
      O => \temp_spi_data[0]_i_2_n_0\
    );
\temp_spi_data[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000400000004"
    )
        port map (
      I0 => oled_dc,
      I1 => \state_reg_n_0_[0]\,
      I2 => \update_page_count_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[4]\,
      I4 => \update_page_count_reg_n_0_[0]\,
      I5 => pbuf_read_addr(8),
      O => \temp_spi_data[1]_i_2_n_0\
    );
\temp_spi_data[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \update_page_count_reg_n_0_[0]\,
      I1 => \update_page_count_reg_n_0_[1]\,
      O => \temp_spi_data[4]_i_2_n_0\
    );
\temp_spi_data[4]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => clear_screen,
      I1 => oled_dc,
      I2 => \state_reg_n_0_[4]\,
      O => \temp_spi_data[4]_i_3_n_0\
    );
\temp_spi_data[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \after_update_state[5]_i_2_n_0\,
      I1 => \state_reg_n_0_[4]\,
      I2 => \state_reg_n_0_[5]\,
      O => temp_spi_data0
    );
\temp_spi_data[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF005100510051"
    )
        port map (
      I0 => oled_dc_i_2_n_0,
      I1 => \update_page_count_reg_n_0_[2]\,
      I2 => oled_dc,
      I3 => oled_dc_i_3_n_0,
      I4 => iop_state_select_reg_n_0,
      I5 => oled_res_i_2_n_0,
      O => \temp_spi_data[7]_i_2_n_0\
    );
\temp_spi_data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_spi_data[7]_i_2_n_0\,
      D => PIXEL_BUFFER_n_7,
      Q => temp_spi_data(0),
      R => temp_spi_data0
    );
\temp_spi_data_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_spi_data[7]_i_2_n_0\,
      D => PIXEL_BUFFER_n_6,
      Q => temp_spi_data(1),
      S => temp_spi_data0
    );
\temp_spi_data_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_spi_data[7]_i_2_n_0\,
      D => PIXEL_BUFFER_n_5,
      Q => temp_spi_data(2),
      S => temp_spi_data0
    );
\temp_spi_data_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_spi_data[7]_i_2_n_0\,
      D => PIXEL_BUFFER_n_4,
      Q => temp_spi_data(3),
      S => temp_spi_data0
    );
\temp_spi_data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_spi_data[7]_i_2_n_0\,
      D => PIXEL_BUFFER_n_3,
      Q => temp_spi_data(4),
      R => temp_spi_data0
    );
\temp_spi_data_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_spi_data[7]_i_2_n_0\,
      D => PIXEL_BUFFER_n_2,
      Q => temp_spi_data(5),
      S => temp_spi_data0
    );
\temp_spi_data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_spi_data[7]_i_2_n_0\,
      D => PIXEL_BUFFER_n_1,
      Q => temp_spi_data(6),
      R => temp_spi_data0
    );
\temp_spi_data_reg[7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_spi_data[7]_i_2_n_0\,
      D => PIXEL_BUFFER_n_0,
      Q => temp_spi_data(7),
      S => temp_spi_data0
    );
temp_spi_start_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAEFAAAAAA20"
    )
        port map (
      I0 => temp_spi_start,
      I1 => \write_byte_count[2]_i_4_n_0\,
      I2 => temp_spi_start_i_3_n_0,
      I3 => temp_spi_start_i_4_n_0,
      I4 => temp_spi_start_i_5_n_0,
      I5 => temp_spi_start_reg_n_0,
      O => temp_spi_start_i_1_n_0
    );
temp_spi_start_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8AFF8A00"
    )
        port map (
      I0 => \state_reg_n_0_[5]\,
      I1 => oled_dc,
      I2 => \update_page_count_reg_n_0_[2]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => \state_reg_n_0_[4]\,
      O => temp_spi_start
    );
temp_spi_start_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \state_reg_n_0_[6]\,
      I1 => \state_reg_n_0_[4]\,
      I2 => \state_reg_n_0_[5]\,
      I3 => \state_reg_n_0_[2]\,
      I4 => \state_reg_n_0_[3]\,
      I5 => \state_reg_n_0_[7]\,
      O => temp_spi_start_i_3_n_0
    );
temp_spi_start_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004044"
    )
        port map (
      I0 => \state_reg_n_0_[4]\,
      I1 => \state_reg_n_0_[5]\,
      I2 => oled_dc,
      I3 => \update_page_count_reg_n_0_[2]\,
      I4 => oled_dc_i_2_n_0,
      O => temp_spi_start_i_4_n_0
    );
temp_spi_start_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0E00"
    )
        port map (
      I0 => \state_reg_n_0_[5]\,
      I1 => iop_state_select_reg_n_0,
      I2 => \after_update_state[5]_i_2_n_0\,
      I3 => \state_reg_n_0_[4]\,
      O => temp_spi_start_i_5_n_0
    );
temp_spi_start_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => temp_spi_start_i_1_n_0,
      Q => temp_spi_start_reg_n_0,
      R => '0'
    );
\temp_write_ascii[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000200"
    )
        port map (
      I0 => write_start,
      I1 => update_start,
      I2 => \state_reg_n_0_[4]\,
      I3 => \state_reg_n_0_[5]\,
      I4 => \after_update_state[5]_i_2_n_0\,
      O => \temp_write_ascii[6]_i_1_n_0\
    );
\temp_write_ascii_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_write_ascii[6]_i_1_n_0\,
      D => Q(0),
      Q => char_lib_addr(3),
      R => '0'
    );
\temp_write_ascii_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_write_ascii[6]_i_1_n_0\,
      D => Q(1),
      Q => char_lib_addr(4),
      R => '0'
    );
\temp_write_ascii_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_write_ascii[6]_i_1_n_0\,
      D => Q(2),
      Q => char_lib_addr(5),
      R => '0'
    );
\temp_write_ascii_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_write_ascii[6]_i_1_n_0\,
      D => Q(3),
      Q => char_lib_addr(6),
      R => '0'
    );
\temp_write_ascii_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_write_ascii[6]_i_1_n_0\,
      D => Q(4),
      Q => char_lib_addr(7),
      R => '0'
    );
\temp_write_ascii_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_write_ascii[6]_i_1_n_0\,
      D => Q(5),
      Q => char_lib_addr(8),
      R => '0'
    );
\temp_write_ascii_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_write_ascii[6]_i_1_n_0\,
      D => Q(6),
      Q => char_lib_addr(9),
      R => '0'
    );
\temp_write_base_addr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_write_ascii[6]_i_1_n_0\,
      D => \temp_write_base_addr_reg[8]_0\(0),
      Q => temp_write_base_addr(3),
      R => '0'
    );
\temp_write_base_addr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_write_ascii[6]_i_1_n_0\,
      D => \temp_write_base_addr_reg[8]_0\(1),
      Q => temp_write_base_addr(4),
      R => '0'
    );
\temp_write_base_addr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_write_ascii[6]_i_1_n_0\,
      D => \temp_write_base_addr_reg[8]_0\(2),
      Q => temp_write_base_addr(5),
      R => '0'
    );
\temp_write_base_addr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_write_ascii[6]_i_1_n_0\,
      D => \temp_write_base_addr_reg[8]_0\(3),
      Q => temp_write_base_addr(6),
      R => '0'
    );
\temp_write_base_addr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_write_ascii[6]_i_1_n_0\,
      D => \temp_write_base_addr_reg[8]_0\(4),
      Q => temp_write_base_addr(7),
      R => '0'
    );
\temp_write_base_addr_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_write_ascii[6]_i_1_n_0\,
      D => \temp_write_base_addr_reg[8]_0\(5),
      Q => temp_write_base_addr(8),
      R => '0'
    );
\update_page_count[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000003AAAAAAA8"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \update_page_count[2]_i_3_n_0\,
      I2 => \temp_page[1]_i_4_n_0\,
      I3 => \update_page_count[2]_i_4_n_0\,
      I4 => \update_page_count[2]_i_5_n_0\,
      I5 => \update_page_count_reg_n_0_[0]\,
      O => \update_page_count[0]_i_1_n_0\
    );
\update_page_count[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAA8"
    )
        port map (
      I0 => \update_page_count[1]_i_2_n_0\,
      I1 => \update_page_count[2]_i_3_n_0\,
      I2 => \temp_page[1]_i_4_n_0\,
      I3 => \update_page_count[2]_i_4_n_0\,
      I4 => \update_page_count[2]_i_5_n_0\,
      I5 => \update_page_count_reg_n_0_[1]\,
      O => \update_page_count[1]_i_1_n_0\
    );
\update_page_count[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => \update_page_count_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \update_page_count_reg_n_0_[1]\,
      O => \update_page_count[1]_i_2_n_0\
    );
\update_page_count[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAA8"
    )
        port map (
      I0 => \update_page_count[2]_i_2_n_0\,
      I1 => \update_page_count[2]_i_3_n_0\,
      I2 => \temp_page[1]_i_4_n_0\,
      I3 => \update_page_count[2]_i_4_n_0\,
      I4 => \update_page_count[2]_i_5_n_0\,
      I5 => \update_page_count_reg_n_0_[2]\,
      O => \update_page_count[2]_i_1_n_0\
    );
\update_page_count[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7080"
    )
        port map (
      I0 => \update_page_count_reg_n_0_[0]\,
      I1 => \update_page_count_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[0]\,
      I3 => \update_page_count_reg_n_0_[2]\,
      O => \update_page_count[2]_i_2_n_0\
    );
\update_page_count[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004000"
    )
        port map (
      I0 => \temp_page[1]_i_5_n_0\,
      I1 => temp_delay_start_i_2_n_0,
      I2 => pbuf_read_addr(5),
      I3 => pbuf_read_addr(6),
      I4 => oled_dc_i_3_n_0,
      I5 => \temp_page[1]_i_7_n_0\,
      O => \update_page_count[2]_i_3_n_0\
    );
\update_page_count[2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => \state_reg_n_0_[4]\,
      I1 => \state_reg_n_0_[5]\,
      I2 => update_start,
      I3 => \update_page_count[2]_i_6_n_0\,
      O => \update_page_count[2]_i_4_n_0\
    );
\update_page_count[2]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \iop_data[7]_i_2_n_0\,
      I1 => \state_reg_n_0_[5]\,
      I2 => \state_reg_n_0_[4]\,
      O => \update_page_count[2]_i_5_n_0\
    );
\update_page_count[2]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \state_reg_n_0_[6]\,
      I1 => \state_reg_n_0_[7]\,
      I2 => \state_reg_n_0_[3]\,
      I3 => \state_reg_n_0_[2]\,
      I4 => oled_dc,
      O => \update_page_count[2]_i_6_n_0\
    );
\update_page_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \update_page_count[0]_i_1_n_0\,
      Q => \update_page_count_reg_n_0_[0]\,
      R => '0'
    );
\update_page_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \update_page_count[1]_i_1_n_0\,
      Q => \update_page_count_reg_n_0_[1]\,
      R => '0'
    );
\update_page_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \update_page_count[2]_i_1_n_0\,
      Q => \update_page_count_reg_n_0_[2]\,
      R => '0'
    );
\write_byte_count[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => char_lib_addr(0),
      O => \write_byte_count[0]_i_1_n_0\
    );
\write_byte_count[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => char_lib_addr(0),
      I1 => \state_reg_n_0_[2]\,
      I2 => char_lib_addr(1),
      O => \write_byte_count[1]_i_1_n_0\
    );
\write_byte_count[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \state_reg_n_0_[3]\,
      I1 => \state_reg_n_0_[7]\,
      I2 => \state_reg_n_0_[2]\,
      I3 => \state_reg_n_0_[6]\,
      I4 => oled_dc_i_3_n_0,
      I5 => \write_byte_count[2]_i_4_n_0\,
      O => write_byte_count0
    );
\write_byte_count[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF8000"
    )
        port map (
      I0 => PIXEL_BUFFER_n_8,
      I1 => \state_reg_n_0_[2]\,
      I2 => oled_dc,
      I3 => \state_reg_n_0_[0]\,
      I4 => \temp_write_ascii[6]_i_1_n_0\,
      O => \write_byte_count[2]_i_2_n_0\
    );
\write_byte_count[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7080"
    )
        port map (
      I0 => char_lib_addr(0),
      I1 => char_lib_addr(1),
      I2 => \state_reg_n_0_[2]\,
      I3 => char_lib_addr(2),
      O => \write_byte_count[2]_i_3_n_0\
    );
\write_byte_count[2]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => oled_dc,
      I1 => \state_reg_n_0_[0]\,
      O => \write_byte_count[2]_i_4_n_0\
    );
\write_byte_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \write_byte_count[2]_i_2_n_0\,
      D => \write_byte_count[0]_i_1_n_0\,
      Q => char_lib_addr(0),
      R => write_byte_count0
    );
\write_byte_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \write_byte_count[2]_i_2_n_0\,
      D => \write_byte_count[1]_i_1_n_0\,
      Q => char_lib_addr(1),
      R => write_byte_count0
    );
\write_byte_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \write_byte_count[2]_i_2_n_0\,
      D => \write_byte_count[2]_i_3_n_0\,
      Q => char_lib_addr(2),
      R => write_byte_count0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_oled_0_top_oled is
  port (
    clk : in STD_LOGIC;
    reset_i : in STD_LOGIC;
    ascii_data_i : in STD_LOGIC_VECTOR ( 7 downto 0 );
    data_valid_i : in STD_LOGIC;
    data_consumed_o : out STD_LOGIC;
    SDIN : out STD_LOGIC;
    SCLK : out STD_LOGIC;
    DC : out STD_LOGIC;
    RES : out STD_LOGIC;
    VBAT : out STD_LOGIC;
    VDD : out STD_LOGIC;
    dBtnU : in STD_LOGIC;
    dBTnD : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of top_oled_0_top_oled : entity is "top_oled";
end top_oled_0_top_oled;

architecture STRUCTURE of top_oled_0_top_oled is
  signal \FSM_sequential_state[2]_i_5_n_0\ : STD_LOGIC;
  signal data_consumed_o_i_1_n_0 : STD_LOGIC;
  signal disp_on_start : STD_LOGIC;
  signal oled_ctr_i_n_10 : STD_LOGIC;
  signal oled_ctr_i_n_11 : STD_LOGIC;
  signal oled_ctr_i_n_12 : STD_LOGIC;
  signal oled_ctr_i_n_13 : STD_LOGIC;
  signal oled_ctr_i_n_14 : STD_LOGIC;
  signal oled_ctr_i_n_15 : STD_LOGIC;
  signal oled_ctr_i_n_16 : STD_LOGIC;
  signal oled_ctr_i_n_18 : STD_LOGIC;
  signal oled_ctr_i_n_19 : STD_LOGIC;
  signal oled_ctr_i_n_20 : STD_LOGIC;
  signal oled_ctr_i_n_21 : STD_LOGIC;
  signal oled_ctr_i_n_4 : STD_LOGIC;
  signal oled_ctr_i_n_5 : STD_LOGIC;
  signal oled_ctr_i_n_6 : STD_LOGIC;
  signal once_reg_n_0 : STD_LOGIC;
  signal s_disp_on_start_i_1_n_0 : STD_LOGIC;
  signal s_update_clear_i_2_n_0 : STD_LOGIC;
  signal s_update_clear_i_4_n_0 : STD_LOGIC;
  signal s_write_ascii_data : STD_LOGIC;
  signal \s_write_ascii_data[2]_i_3_n_0\ : STD_LOGIC;
  signal \s_write_ascii_data[3]_i_2_n_0\ : STD_LOGIC;
  signal \s_write_ascii_data[4]_i_2_n_0\ : STD_LOGIC;
  signal \s_write_ascii_data[5]_i_2_n_0\ : STD_LOGIC;
  signal \s_write_ascii_data[6]_i_3_n_0\ : STD_LOGIC;
  signal s_write_base_addr : STD_LOGIC;
  signal \s_write_base_addr[3]_i_1_n_0\ : STD_LOGIC;
  signal \s_write_base_addr[4]_i_1_n_0\ : STD_LOGIC;
  signal \s_write_base_addr[5]_i_1_n_0\ : STD_LOGIC;
  signal \s_write_base_addr[6]_i_1_n_0\ : STD_LOGIC;
  signal \s_write_base_addr[7]_i_1_n_0\ : STD_LOGIC;
  signal \s_write_base_addr[7]_i_2_n_0\ : STD_LOGIC;
  signal \s_write_base_addr[8]_i_2_n_0\ : STD_LOGIC;
  signal \s_write_base_addr[8]_i_4_n_0\ : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal update_clear : STD_LOGIC;
  signal update_start : STD_LOGIC;
  signal write_ascii_data : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal write_base_addr : STD_LOGIC_VECTOR ( 8 downto 3 );
  signal write_start : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "t_init:000,t_active:001,t_write_char_wait_1:0111,t_write_char_wait:101,t_write_wait:010,t_write_char:100,t_write:011,t_update_wait:110";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "t_init:000,t_active:001,t_write_char_wait_1:0111,t_write_char_wait:101,t_write_wait:010,t_write_char:100,t_write:011,t_update_wait:110";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "t_init:000,t_active:001,t_write_char_wait_1:0111,t_write_char_wait:101,t_write_wait:010,t_write_char:100,t_write:011,t_update_wait:110";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of data_consumed_o_i_1 : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of s_update_clear_i_2 : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of s_update_clear_i_4 : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \s_write_ascii_data[2]_i_3\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \s_write_ascii_data[4]_i_2\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \s_write_ascii_data[5]_i_2\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \s_write_base_addr[3]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \s_write_base_addr[4]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \s_write_base_addr[7]_i_2\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \s_write_base_addr[8]_i_2\ : label is "soft_lutpair48";
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_WRITE_MODE READ_WRITE";
begin
\FSM_sequential_state[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FE00CC00000000"
    )
        port map (
      I0 => data_valid_i,
      I1 => state(1),
      I2 => s_update_clear_i_4_n_0,
      I3 => state(2),
      I4 => once_reg_n_0,
      I5 => state(0),
      O => \FSM_sequential_state[2]_i_5_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => oled_ctr_i_n_6,
      Q => state(0),
      R => reset_i
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => oled_ctr_i_n_5,
      Q => state(1),
      R => reset_i
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => oled_ctr_i_n_4,
      Q => state(2),
      R => reset_i
    );
data_consumed_o_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => state(2),
      I3 => once_reg_n_0,
      I4 => data_valid_i,
      O => data_consumed_o_i_1_n_0
    );
data_consumed_o_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => data_consumed_o_i_1_n_0,
      Q => data_consumed_o,
      R => reset_i
    );
oled_ctr_i: entity work.top_oled_0_OLEDCtrl
     port map (
      D(6) => oled_ctr_i_n_10,
      D(5) => oled_ctr_i_n_11,
      D(4) => oled_ctr_i_n_12,
      D(3) => oled_ctr_i_n_13,
      D(2) => oled_ctr_i_n_14,
      D(1) => oled_ctr_i_n_15,
      D(0) => oled_ctr_i_n_16,
      DC => DC,
      E(0) => s_write_base_addr,
      \FSM_sequential_state_reg[0]\ => oled_ctr_i_n_4,
      \FSM_sequential_state_reg[0]_0\ => oled_ctr_i_n_6,
      \FSM_sequential_state_reg[0]_1\ => oled_ctr_i_n_18,
      \FSM_sequential_state_reg[0]_2\ => oled_ctr_i_n_19,
      \FSM_sequential_state_reg[0]_3\ => oled_ctr_i_n_20,
      \FSM_sequential_state_reg[0]_4\ => \FSM_sequential_state[2]_i_5_n_0\,
      \FSM_sequential_state_reg[1]\ => once_reg_n_0,
      \FSM_sequential_state_reg[2]\ => oled_ctr_i_n_21,
      Q(6 downto 0) => write_ascii_data(6 downto 0),
      RES => RES,
      SCLK => SCLK,
      SDIN => SDIN,
      VBAT => VBAT,
      VDD => VDD,
      ascii_data_i(6 downto 0) => ascii_data_i(6 downto 0),
      clk => clk,
      dBTnD => dBTnD,
      dBtnU => dBtnU,
      data_valid_i => data_valid_i,
      data_valid_i_0(0) => s_write_ascii_data,
      disp_on_start => disp_on_start,
      once_reg => oled_ctr_i_n_5,
      once_reg_0 => \s_write_base_addr[8]_i_4_n_0\,
      s_update_clear_reg => s_update_clear_i_2_n_0,
      s_update_start_reg => s_update_clear_i_4_n_0,
      \s_write_ascii_data_reg[2]\ => \s_write_ascii_data[2]_i_3_n_0\,
      \s_write_ascii_data_reg[3]\ => \s_write_ascii_data[3]_i_2_n_0\,
      \s_write_ascii_data_reg[4]\ => \s_write_ascii_data[4]_i_2_n_0\,
      \s_write_ascii_data_reg[5]\ => \s_write_ascii_data[5]_i_2_n_0\,
      \s_write_ascii_data_reg[6]\ => \s_write_ascii_data[6]_i_3_n_0\,
      state(2 downto 0) => state(2 downto 0),
      \temp_write_base_addr_reg[8]_0\(5 downto 0) => write_base_addr(8 downto 3),
      update_clear => update_clear,
      update_start => update_start,
      write_start => write_start
    );
once_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => oled_ctr_i_n_21,
      Q => once_reg_n_0,
      R => reset_i
    );
s_disp_on_start_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA8"
    )
        port map (
      I0 => disp_on_start,
      I1 => state(0),
      I2 => state(1),
      I3 => state(2),
      O => s_disp_on_start_i_1_n_0
    );
s_disp_on_start_reg: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => s_disp_on_start_i_1_n_0,
      Q => disp_on_start,
      S => reset_i
    );
s_update_clear_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => dBTnD,
      I1 => once_reg_n_0,
      I2 => dBtnU,
      I3 => state(2),
      I4 => state(1),
      O => s_update_clear_i_2_n_0
    );
s_update_clear_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => dBTnD,
      I1 => dBtnU,
      O => s_update_clear_i_4_n_0
    );
s_update_clear_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => oled_ctr_i_n_19,
      Q => update_clear,
      R => reset_i
    );
s_update_start_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => oled_ctr_i_n_20,
      Q => update_start,
      R => reset_i
    );
\s_write_ascii_data[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      O => \s_write_ascii_data[2]_i_3_n_0\
    );
\s_write_ascii_data[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => write_ascii_data(1),
      I1 => write_ascii_data(0),
      I2 => write_ascii_data(2),
      O => \s_write_ascii_data[3]_i_2_n_0\
    );
\s_write_ascii_data[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => write_ascii_data(2),
      I1 => write_ascii_data(0),
      I2 => write_ascii_data(1),
      I3 => write_ascii_data(3),
      O => \s_write_ascii_data[4]_i_2_n_0\
    );
\s_write_ascii_data[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => write_ascii_data(3),
      I1 => write_ascii_data(1),
      I2 => write_ascii_data(0),
      I3 => write_ascii_data(2),
      I4 => write_ascii_data(4),
      O => \s_write_ascii_data[5]_i_2_n_0\
    );
\s_write_ascii_data[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => write_ascii_data(4),
      I1 => write_ascii_data(2),
      I2 => write_ascii_data(0),
      I3 => write_ascii_data(1),
      I4 => write_ascii_data(3),
      I5 => write_ascii_data(5),
      O => \s_write_ascii_data[6]_i_3_n_0\
    );
\s_write_ascii_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_write_ascii_data,
      D => oled_ctr_i_n_16,
      Q => write_ascii_data(0),
      R => reset_i
    );
\s_write_ascii_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_write_ascii_data,
      D => oled_ctr_i_n_15,
      Q => write_ascii_data(1),
      R => reset_i
    );
\s_write_ascii_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_write_ascii_data,
      D => oled_ctr_i_n_14,
      Q => write_ascii_data(2),
      R => reset_i
    );
\s_write_ascii_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_write_ascii_data,
      D => oled_ctr_i_n_13,
      Q => write_ascii_data(3),
      R => reset_i
    );
\s_write_ascii_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_write_ascii_data,
      D => oled_ctr_i_n_12,
      Q => write_ascii_data(4),
      R => reset_i
    );
\s_write_ascii_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_write_ascii_data,
      D => oled_ctr_i_n_11,
      Q => write_ascii_data(5),
      R => reset_i
    );
\s_write_ascii_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_write_ascii_data,
      D => oled_ctr_i_n_10,
      Q => write_ascii_data(6),
      R => reset_i
    );
\s_write_base_addr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0028"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => state(2),
      I3 => write_base_addr(3),
      O => \s_write_base_addr[3]_i_1_n_0\
    );
\s_write_base_addr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00606000"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => state(0),
      I3 => write_base_addr(3),
      I4 => write_base_addr(4),
      O => \s_write_base_addr[4]_i_1_n_0\
    );
\s_write_base_addr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0060606060000000"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => state(0),
      I3 => write_base_addr(4),
      I4 => write_base_addr(3),
      I5 => write_base_addr(5),
      O => \s_write_base_addr[5]_i_1_n_0\
    );
\s_write_base_addr[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \s_write_base_addr[7]_i_2_n_0\,
      I1 => write_base_addr(5),
      I2 => write_base_addr(3),
      I3 => write_base_addr(4),
      I4 => write_base_addr(6),
      O => \s_write_base_addr[6]_i_1_n_0\
    );
\s_write_base_addr[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF000080000000"
    )
        port map (
      I0 => write_base_addr(5),
      I1 => write_base_addr(3),
      I2 => write_base_addr(4),
      I3 => write_base_addr(6),
      I4 => \s_write_base_addr[7]_i_2_n_0\,
      I5 => write_base_addr(7),
      O => \s_write_base_addr[7]_i_1_n_0\
    );
\s_write_base_addr[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => state(0),
      O => \s_write_base_addr[7]_i_2_n_0\
    );
\s_write_base_addr[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08800440"
    )
        port map (
      I0 => \s_write_base_addr[8]_i_4_n_0\,
      I1 => state(0),
      I2 => state(1),
      I3 => state(2),
      I4 => write_base_addr(8),
      O => \s_write_base_addr[8]_i_2_n_0\
    );
\s_write_base_addr[8]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => write_base_addr(6),
      I1 => write_base_addr(4),
      I2 => write_base_addr(3),
      I3 => write_base_addr(5),
      I4 => write_base_addr(7),
      O => \s_write_base_addr[8]_i_4_n_0\
    );
\s_write_base_addr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_write_base_addr,
      D => \s_write_base_addr[3]_i_1_n_0\,
      Q => write_base_addr(3),
      R => reset_i
    );
\s_write_base_addr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_write_base_addr,
      D => \s_write_base_addr[4]_i_1_n_0\,
      Q => write_base_addr(4),
      R => reset_i
    );
\s_write_base_addr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_write_base_addr,
      D => \s_write_base_addr[5]_i_1_n_0\,
      Q => write_base_addr(5),
      R => reset_i
    );
\s_write_base_addr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_write_base_addr,
      D => \s_write_base_addr[6]_i_1_n_0\,
      Q => write_base_addr(6),
      R => reset_i
    );
\s_write_base_addr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_write_base_addr,
      D => \s_write_base_addr[7]_i_1_n_0\,
      Q => write_base_addr(7),
      R => reset_i
    );
\s_write_base_addr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_write_base_addr,
      D => \s_write_base_addr[8]_i_2_n_0\,
      Q => write_base_addr(8),
      R => reset_i
    );
s_write_start_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => oled_ctr_i_n_18,
      Q => write_start,
      R => reset_i
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_oled_0 is
  port (
    clk : in STD_LOGIC;
    reset_i : in STD_LOGIC;
    ascii_data_i : in STD_LOGIC_VECTOR ( 7 downto 0 );
    data_valid_i : in STD_LOGIC;
    data_consumed_o : out STD_LOGIC;
    SDIN : out STD_LOGIC;
    SCLK : out STD_LOGIC;
    DC : out STD_LOGIC;
    RES : out STD_LOGIC;
    VBAT : out STD_LOGIC;
    VDD : out STD_LOGIC;
    dBtnU : in STD_LOGIC;
    dBTnD : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of top_oled_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of top_oled_0 : entity is "top_oled_0,top_oled,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of top_oled_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of top_oled_0 : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of top_oled_0 : entity is "top_oled,Vivado 2018.3";
end top_oled_0;

architecture STRUCTURE of top_oled_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0";
  attribute x_interface_info of reset_i : signal is "xilinx.com:signal:reset:1.0 reset_i RST";
  attribute x_interface_parameter of reset_i : signal is "XIL_INTERFACENAME reset_i, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.top_oled_0_top_oled
     port map (
      DC => DC,
      RES => RES,
      SCLK => SCLK,
      SDIN => SDIN,
      VBAT => VBAT,
      VDD => VDD,
      ascii_data_i(7 downto 0) => ascii_data_i(7 downto 0),
      clk => clk,
      dBTnD => dBTnD,
      dBtnU => dBtnU,
      data_consumed_o => data_consumed_o,
      data_valid_i => data_valid_i,
      reset_i => reset_i
    );
end STRUCTURE;
