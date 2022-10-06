library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity TC_Neg is
    generic(
        BIT_WIDTH : integer);
    port(
        input : in std_logic_vector(BIT_WIDTH - 1 downto 0);
        output : out std_logic_vector(BIT_WIDTH - 1 downto 0));
end TC_Neg;

architecture Behavorial of TC_Neg is
begin
    
    output <= std_logic_vector(-signed(input));
    
end Behavorial;