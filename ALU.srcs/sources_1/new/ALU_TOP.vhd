----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/08/2016 08:27:14 PM
-- Design Name: 
-- Module Name: ALU_TOP - Behavioral
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

entity ALU_TOP is
    Port ( x : in STD_LOGIC_VECTOR (3 downto 0);
           y : in STD_LOGIC_VECTOR (3 downto 0);
           cout : out STD_LOGIC;
           Seg_Out : out STD_LOGIC_VECTOR (6 downto 0));
end ALU_TOP;

architecture Behavioral of ALU_TOP is

Component ssd_decoder is
    Port (
    Seg_Out : out STD_LOGIC_VECTOR(6 downto 0);
    Bin : in STD_LOGIC_VECTOR(3 downto 0));
end Component;

Component Adder4Bit is
    Port ( x : in STD_LOGIC_VECTOR (3 downto 0);
           y : in STD_LOGIC_VECTOR (3 downto 0);
           s : out STD_LOGIC_VECTOR (3 downto 0);
           cout : out STD_LOGIC);
end Component;

signal Bin_in : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
signal Cout_in : STD_LOGIC;

begin

decode: ssd_decoder PORT MAP(
    Bin => Bin_in,
    Seg_Out => Seg_Out   
);

AdderFour: Adder4Bit PORT MAP(
    x => x,
    y => y,
    s => Bin_in,
    cout => cout
);

    
end Behavioral;
