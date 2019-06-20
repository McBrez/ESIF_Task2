----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.06.2019 20:59:57
-- Design Name: 
-- Module Name: pwmBlock_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity pwmBlock_tb is
--  Port ( );
end pwmBlock_tb;

architecture Behavioral of pwmBlock_tb is

    signal thresh_tb : STD_LOGIC_VECTOR (31 downto 0) := x"F00000FF";
    signal clk_tb    : STD_LOGIC;
    signal pwmOut_tb : STD_LOGIC;

    component pwmBlock is
        Port ( thresh : in STD_LOGIC_VECTOR (31 downto 0);
               clk    : in STD_LOGIC;
               pwmOut : out STD_LOGIC);
    end component pwmBlock;

begin

    DUT: pwmBlock 
    port map ( 
        thresh_tb,
        clk_tb,
        pwmOut_tb );

CLK_GEN: process begin
    clk_tb <= '0';
    wait for 10 ns;
    clk_tb <= '1';
    wait for 10 ns;
end process;

end Behavioral;
