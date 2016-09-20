----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/08/2016 01:36:24 PM
-- Design Name: 
-- Module Name: Adder4Bit - Behavioral
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

entity Adder4Bit is
Port ( x : in STD_LOGIC_VECTOR (3 downto 0);
           y : in STD_LOGIC_VECTOR (3 downto 0);
           s : out STD_LOGIC_VECTOR (3 downto 0);
           cout : out STD_LOGIC);
end Adder4Bit;

architecture Behavioral of Adder4Bit is

component FullAdder is
    Port ( x : in STD_LOGIC;
           y : in STD_LOGIC;
           cin : in STD_LOGIC;
           cout : out STD_LOGIC;
           s : out STD_LOGIC);
end component;

signal carry_sig: std_logic_vector(3 downto 0);
signal cin : STD_LOGIC;
  
begin

  A1: FullAdder port map (x(0), y(0), cin, carry_sig(0),s(0));
  A2: FullAdder port map (x(1), y(1), carry_sig(0),carry_sig(1),s(1));
  A3: FullAdder port map (x(2), y(2), carry_sig(1),carry_sig(2),s(2));
  A4: FullAdder port map (x(3), y(3), carry_sig(2),cout,s(3));
  
end Behavioral;
