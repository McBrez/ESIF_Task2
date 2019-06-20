-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Thu Jun 20 10:16:00 2019
-- Host        : FREISMUTHDESK running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ESIFTask2_2_bd_pwmBlock_0_0_sim_netlist.vhdl
-- Design      : ESIFTask2_2_bd_pwmBlock_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pwmBlock is
  port (
    pwmOut : out STD_LOGIC;
    clk : in STD_LOGIC;
    thresh : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pwmBlock;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pwmBlock is
  signal \counter[0]_i_2_n_0\ : STD_LOGIC;
  signal counter_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \counter_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal \pwmOut0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \pwmOut0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \pwmOut0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \pwmOut0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \pwmOut0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \pwmOut0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \pwmOut0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \pwmOut0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \pwmOut0_carry__0_n_1\ : STD_LOGIC;
  signal \pwmOut0_carry__0_n_2\ : STD_LOGIC;
  signal \pwmOut0_carry__0_n_3\ : STD_LOGIC;
  signal pwmOut0_carry_i_1_n_0 : STD_LOGIC;
  signal pwmOut0_carry_i_2_n_0 : STD_LOGIC;
  signal pwmOut0_carry_i_3_n_0 : STD_LOGIC;
  signal pwmOut0_carry_i_4_n_0 : STD_LOGIC;
  signal pwmOut0_carry_i_5_n_0 : STD_LOGIC;
  signal pwmOut0_carry_i_6_n_0 : STD_LOGIC;
  signal pwmOut0_carry_i_7_n_0 : STD_LOGIC;
  signal pwmOut0_carry_i_8_n_0 : STD_LOGIC;
  signal pwmOut0_carry_n_0 : STD_LOGIC;
  signal pwmOut0_carry_n_1 : STD_LOGIC;
  signal pwmOut0_carry_n_2 : STD_LOGIC;
  signal pwmOut0_carry_n_3 : STD_LOGIC;
  signal \NLW_counter_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_pwmOut0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pwmOut0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
\counter[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(0),
      O => \counter[0]_i_2_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[0]_i_1_n_7\,
      Q => counter_reg(0),
      R => '0'
    );
\counter_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter_reg[0]_i_1_n_0\,
      CO(2) => \counter_reg[0]_i_1_n_1\,
      CO(1) => \counter_reg[0]_i_1_n_2\,
      CO(0) => \counter_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \counter_reg[0]_i_1_n_4\,
      O(2) => \counter_reg[0]_i_1_n_5\,
      O(1) => \counter_reg[0]_i_1_n_6\,
      O(0) => \counter_reg[0]_i_1_n_7\,
      S(3 downto 1) => counter_reg(3 downto 1),
      S(0) => \counter[0]_i_2_n_0\
    );
\counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[8]_i_1_n_5\,
      Q => counter_reg(10),
      R => '0'
    );
\counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[8]_i_1_n_4\,
      Q => counter_reg(11),
      R => '0'
    );
\counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[12]_i_1_n_7\,
      Q => counter_reg(12),
      R => '0'
    );
\counter_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[8]_i_1_n_0\,
      CO(3) => \NLW_counter_reg[12]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \counter_reg[12]_i_1_n_1\,
      CO(1) => \counter_reg[12]_i_1_n_2\,
      CO(0) => \counter_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[12]_i_1_n_4\,
      O(2) => \counter_reg[12]_i_1_n_5\,
      O(1) => \counter_reg[12]_i_1_n_6\,
      O(0) => \counter_reg[12]_i_1_n_7\,
      S(3 downto 0) => counter_reg(15 downto 12)
    );
\counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[12]_i_1_n_6\,
      Q => counter_reg(13),
      R => '0'
    );
\counter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[12]_i_1_n_5\,
      Q => counter_reg(14),
      R => '0'
    );
\counter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[12]_i_1_n_4\,
      Q => counter_reg(15),
      R => '0'
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[0]_i_1_n_6\,
      Q => counter_reg(1),
      R => '0'
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[0]_i_1_n_5\,
      Q => counter_reg(2),
      R => '0'
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[0]_i_1_n_4\,
      Q => counter_reg(3),
      R => '0'
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[4]_i_1_n_7\,
      Q => counter_reg(4),
      R => '0'
    );
\counter_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[0]_i_1_n_0\,
      CO(3) => \counter_reg[4]_i_1_n_0\,
      CO(2) => \counter_reg[4]_i_1_n_1\,
      CO(1) => \counter_reg[4]_i_1_n_2\,
      CO(0) => \counter_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[4]_i_1_n_4\,
      O(2) => \counter_reg[4]_i_1_n_5\,
      O(1) => \counter_reg[4]_i_1_n_6\,
      O(0) => \counter_reg[4]_i_1_n_7\,
      S(3 downto 0) => counter_reg(7 downto 4)
    );
\counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[4]_i_1_n_6\,
      Q => counter_reg(5),
      R => '0'
    );
\counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[4]_i_1_n_5\,
      Q => counter_reg(6),
      R => '0'
    );
\counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[4]_i_1_n_4\,
      Q => counter_reg(7),
      R => '0'
    );
\counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[8]_i_1_n_7\,
      Q => counter_reg(8),
      R => '0'
    );
\counter_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[4]_i_1_n_0\,
      CO(3) => \counter_reg[8]_i_1_n_0\,
      CO(2) => \counter_reg[8]_i_1_n_1\,
      CO(1) => \counter_reg[8]_i_1_n_2\,
      CO(0) => \counter_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[8]_i_1_n_4\,
      O(2) => \counter_reg[8]_i_1_n_5\,
      O(1) => \counter_reg[8]_i_1_n_6\,
      O(0) => \counter_reg[8]_i_1_n_7\,
      S(3 downto 0) => counter_reg(11 downto 8)
    );
\counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[8]_i_1_n_6\,
      Q => counter_reg(9),
      R => '0'
    );
pwmOut0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => pwmOut0_carry_n_0,
      CO(2) => pwmOut0_carry_n_1,
      CO(1) => pwmOut0_carry_n_2,
      CO(0) => pwmOut0_carry_n_3,
      CYINIT => '1',
      DI(3) => pwmOut0_carry_i_1_n_0,
      DI(2) => pwmOut0_carry_i_2_n_0,
      DI(1) => pwmOut0_carry_i_3_n_0,
      DI(0) => pwmOut0_carry_i_4_n_0,
      O(3 downto 0) => NLW_pwmOut0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => pwmOut0_carry_i_5_n_0,
      S(2) => pwmOut0_carry_i_6_n_0,
      S(1) => pwmOut0_carry_i_7_n_0,
      S(0) => pwmOut0_carry_i_8_n_0
    );
\pwmOut0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => pwmOut0_carry_n_0,
      CO(3) => p_0_in,
      CO(2) => \pwmOut0_carry__0_n_1\,
      CO(1) => \pwmOut0_carry__0_n_2\,
      CO(0) => \pwmOut0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \pwmOut0_carry__0_i_1_n_0\,
      DI(2) => \pwmOut0_carry__0_i_2_n_0\,
      DI(1) => \pwmOut0_carry__0_i_3_n_0\,
      DI(0) => \pwmOut0_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_pwmOut0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \pwmOut0_carry__0_i_5_n_0\,
      S(2) => \pwmOut0_carry__0_i_6_n_0\,
      S(1) => \pwmOut0_carry__0_i_7_n_0\,
      S(0) => \pwmOut0_carry__0_i_8_n_0\
    );
\pwmOut0_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => thresh(14),
      I1 => counter_reg(14),
      I2 => counter_reg(15),
      I3 => thresh(15),
      O => \pwmOut0_carry__0_i_1_n_0\
    );
\pwmOut0_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => thresh(12),
      I1 => counter_reg(12),
      I2 => counter_reg(13),
      I3 => thresh(13),
      O => \pwmOut0_carry__0_i_2_n_0\
    );
\pwmOut0_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => thresh(10),
      I1 => counter_reg(10),
      I2 => counter_reg(11),
      I3 => thresh(11),
      O => \pwmOut0_carry__0_i_3_n_0\
    );
\pwmOut0_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => thresh(8),
      I1 => counter_reg(8),
      I2 => counter_reg(9),
      I3 => thresh(9),
      O => \pwmOut0_carry__0_i_4_n_0\
    );
\pwmOut0_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => thresh(14),
      I1 => counter_reg(14),
      I2 => thresh(15),
      I3 => counter_reg(15),
      O => \pwmOut0_carry__0_i_5_n_0\
    );
\pwmOut0_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => thresh(12),
      I1 => counter_reg(12),
      I2 => thresh(13),
      I3 => counter_reg(13),
      O => \pwmOut0_carry__0_i_6_n_0\
    );
\pwmOut0_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => thresh(10),
      I1 => counter_reg(10),
      I2 => thresh(11),
      I3 => counter_reg(11),
      O => \pwmOut0_carry__0_i_7_n_0\
    );
\pwmOut0_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => thresh(8),
      I1 => counter_reg(8),
      I2 => thresh(9),
      I3 => counter_reg(9),
      O => \pwmOut0_carry__0_i_8_n_0\
    );
pwmOut0_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => thresh(6),
      I1 => counter_reg(6),
      I2 => counter_reg(7),
      I3 => thresh(7),
      O => pwmOut0_carry_i_1_n_0
    );
pwmOut0_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => thresh(4),
      I1 => counter_reg(4),
      I2 => counter_reg(5),
      I3 => thresh(5),
      O => pwmOut0_carry_i_2_n_0
    );
pwmOut0_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => thresh(2),
      I1 => counter_reg(2),
      I2 => counter_reg(3),
      I3 => thresh(3),
      O => pwmOut0_carry_i_3_n_0
    );
pwmOut0_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => thresh(0),
      I1 => counter_reg(0),
      I2 => counter_reg(1),
      I3 => thresh(1),
      O => pwmOut0_carry_i_4_n_0
    );
pwmOut0_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => thresh(6),
      I1 => counter_reg(6),
      I2 => thresh(7),
      I3 => counter_reg(7),
      O => pwmOut0_carry_i_5_n_0
    );
pwmOut0_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => thresh(4),
      I1 => counter_reg(4),
      I2 => thresh(5),
      I3 => counter_reg(5),
      O => pwmOut0_carry_i_6_n_0
    );
pwmOut0_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => thresh(2),
      I1 => counter_reg(2),
      I2 => thresh(3),
      I3 => counter_reg(3),
      O => pwmOut0_carry_i_7_n_0
    );
pwmOut0_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => thresh(0),
      I1 => counter_reg(0),
      I2 => thresh(1),
      I3 => counter_reg(1),
      O => pwmOut0_carry_i_8_n_0
    );
pwmOut_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in,
      Q => pwmOut,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    thresh : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    pwmOut : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "ESIFTask2_2_bd_pwmBlock_0_0,pwmBlock,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "pwmBlock,Vivado 2018.3";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN ESIFTask2_2_bd_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pwmBlock
     port map (
      clk => clk,
      pwmOut => pwmOut,
      thresh(15 downto 0) => thresh(31 downto 16)
    );
end STRUCTURE;
