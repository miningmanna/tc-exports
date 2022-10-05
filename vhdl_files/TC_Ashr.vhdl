library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity TC_Ashr is
    generic(
        BIT_WIDTH : integer);
    port(
        input : in std_logic_vector(BIT_WIDTH - 1 downto 0);
        shift : in std_logic_vector(7 downto 0);
        output : out std_logic_vector(BIT_WIDTH - 1 downto 0));
end TC_Ashr;

architecture Behavorial of TC_Ashr is
begin
    
    output <= std_logic_vector(shift_right(signed(input), to_integer(unsigned(shift))));
    
end Behavorial;