-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Thu Jun 20 10:16:00 2019
-- Host        : FREISMUTHDESK running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               D:/DEV/ESIF/Task2/ESIF_Task2/Subtask2/ESIFTask2_2.srcs/sources_1/bd/ESIFTask2_2_bd/ip/ESIFTask2_2_bd_pwmBlock_0_0/ESIFTask2_2_bd_pwmBlock_0_0_stub.vhdl
-- Design      : ESIFTask2_2_bd_pwmBlock_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ESIFTask2_2_bd_pwmBlock_0_0 is
  Port ( 
    thresh : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    pwmOut : out STD_LOGIC
  );

end ESIFTask2_2_bd_pwmBlock_0_0;

architecture stub of ESIFTask2_2_bd_pwmBlock_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "thresh[31:0],clk,pwmOut";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "pwmBlock,Vivado 2018.3";
begin
end;
