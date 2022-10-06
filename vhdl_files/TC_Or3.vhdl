library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity TC_Or3 is
    generic(
        BIT_WIDTH : integer);
    port(
        in0 : in std_logic_vector(BIT_WIDTH - 1 downto 0);
        in1 : in std_logic_vector(BIT_WIDTH - 1 downto 0);
        in2 : in std_logic_vector(BIT_WIDTH - 1 downto 0);
        output : out std_logic_vector(BIT_WIDTH - 1 downto 0));
end TC_Or3;

architecture Behavorial of TC_Or3 is
begin
    
    output <= in0 or in1 or in2;
    
end Behavorial;