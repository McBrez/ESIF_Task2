----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.06.2019 19:02:00
-- Design Name: 
-- Module Name: oledGlueLogic - Behavioral
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

entity oledGlueLogic is
    Port (
        clk: IN std_logic;
        
        -- Interface to FIFO
        empty     : IN  std_logic;
        dout_FIFO : in  std_logic_vector(7 downto 0);
        rd_en     : out std_logic;
        
        -- Interface to OLED
        data_consumed : in  std_logic;
        dout_OLED     : out std_logic_vector(7 downto 0);
        data_valid    : out std_logic     
    );
end oledGlueLogic;

architecture Behavioral of oledGlueLogic is
    signal state : INTEGER;
     
    constant INIT:        INTEGER := 0;
    constant ASSERT_FIFO: INTEGER := 1;
    constant CHECK_FIFO:  INTEGER := 2;
    constant WAIT_OLED:   INTEGER := 3;
begin
     
    MAIN: process(clk) 
    begin
        if clk = '1' and clk'event then
            case state is
                when INIT =>
                    rd_en <= '0';
                    data_valid <= '0';
                    dout_OLED <= (others => '0');
                    state <= ASSERT_FIFO;
                    
                when ASSERT_FIFO =>
                    rd_en <= '1';
                    state <= CHECK_FIFO;
                     
                when CHECK_FIFO =>
                    if empty = '0' then
                        rd_en <= '0';
                        dout_OLED <= dout_FIFO;
                        data_valid <= '1';
                        state <= WAIT_OLED;
                    else
                        rd_en <= '0';
                        data_valid <= '0';
                        state <= ASSERT_FIFO;
                    end if;
                    
                when WAIT_OLED =>
                    if data_consumed = '1' then
                        data_valid <= '0';
                        state <= ASSERT_FIFO;
                    end if;
                    
                when others =>
                    state <= INIT;
            end case;
           
        end if;
    end process MAIN;
end Behavioral;
