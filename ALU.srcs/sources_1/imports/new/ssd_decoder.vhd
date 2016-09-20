----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/25/2016 02:22:09 PM
-- Design Name: 
-- Module Name: ssd_decoder - Behavioral
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

entity ssd_decoder is
    Port ( Bin : in STD_LOGIC_VECTOR (3 downto 0);
           Seg_Out : out STD_LOGIC_VECTOR (6 downto 0));
end ssd_decoder;

architecture Behavioral of ssd_decoder is

begin
     with Bin select
        Seg_Out <= "0111111" when "0000", --0
                "0000110" when "0001", --1
                "1011011" when "0010", --2
                "1001111" when "0011", --3
                "1100000" when "0100", --4
                "0010010" when "0101", --5
                "1111101" when "0110", --6
                "0000111" when "0111", --7
                "1111111" when "1000", --8
                "1101111" when "1001", --9
                "1110111" when "1010", --A
                "1111100" when "1011", --B
                "0111001" when "1100", --C
                "1011110" when "1101", --D
                "1111001" when "1110", --E
                "1110001" when "1111", --F
                "1110110" when others;
               
end Behavioral;
