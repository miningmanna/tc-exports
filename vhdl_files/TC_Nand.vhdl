library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity TC_Nand is
    generic(
        BIT_WIDTH : integer);
    port(
        in0 : in std_logic_vector(BIT_WIDTH - 1 downto 0);
        in1 : in std_logic_vector(BIT_WIDTH - 1 downto 0);
        output : out std_logic_vector(BIT_WIDTH - 1 downto 0));
end TC_Nand;

architecture Behavorial of TC_Nand is
begin
    
    output <= not(in0 and in1);
    
end Behavorial;