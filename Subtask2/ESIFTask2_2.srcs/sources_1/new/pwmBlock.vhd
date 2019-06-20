----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.06.2019 19:18:54
-- Design Name: 
-- Module Name: pwmBlock - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity pwmBlock is
    Port ( thresh : in STD_LOGIC_VECTOR (31 downto 0);
           clk    : in STD_LOGIC;
           pwmOut : out STD_LOGIC);
end pwmBlock;

architecture Behavioral of pwmBlock is
    signal counter : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
    signal thresh_norm : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
begin

    thresh_norm <= thresh(31 downto 16);
    
    COUNTER_PROC: process(clk)
    begin
        if clk = '1' and clk'event then
            counter <= std_logic_vector(unsigned(counter) + 1);
        end if;
    end process COUNTER_PROC;
    
    MAIN_PROC: process(clk)
    begin
        if clk = '1' and clk'event then
            if counter < thresh  then
                pwmOut <= '1';
            else 
                pwmOut <= '0';        
            end if;
        end if;
    end process MAIN_PROC;

end Behavioral;
