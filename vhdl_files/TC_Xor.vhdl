library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity TC_Xor is
    generic(
        BIT_WIDTH : integer);
    port(
        in0 : in std_logic_vector(BIT_WIDTH - 1 downto 0);
        in1 : in std_logic_vector(BIT_WIDTH - 1 downto 0);
        output : out std_logic_vector(BIT_WIDTH - 1 downto 0));
end TC_Xor;

architecture Behavorial of TC_Xor is
begin
    
    output <= in0 xor in1;
    
end Behavorial;