library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity TC_Constant is
    generic(
        BIT_WIDTH : integer;
        value : integer);
    port(
        output : out std_logic_vector(BIT_WIDTH - 1 downto 0));
end TC_Constant;

architecture Behavorial of TC_Constant is
begin
    
    output <= std_logic_vector(to_unsigned(value, output'length));
    
end TC_Constant;