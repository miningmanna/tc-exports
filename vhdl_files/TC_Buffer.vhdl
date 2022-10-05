library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity TC_Buffer is
    generic(
        BIT_WIDTH : integer);
    port(
        input : in std_logic_vector(BIT_WIDTH - 1 downto 0);
        output : out std_logic_vector(BIT_WIDTH - 1 downto 0));
end TC_Buffer;

architecture Behavorial of TC_Buffer is
begin
    
    output <= input;
    
end Behavorial;