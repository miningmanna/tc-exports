library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity TC_Add is
    generic(
        BIT_WIDTH : integer);
    port(
        in0 : in std_logic_vector(BIT_WIDTH - 1 downto 0);
        in1 : in std_logic_vector(BIT_WIDTH - 1 downto 0);
        ci : in std_logic;
        output : out std_logic_vector(BIT_WIDTH - 1 downto 0);
        co : out std_logic);
end TC_Add;

architecture Behavorial of TC_Add is
begin
    
    p : process(in0, in1, ci)
    variable temp : unsigned((BIT_WIDTH) downto 0);
    begin
        temp := resize(unsigned(in0), temp'length) + resize(unsigned(in1), temp'length);
        
        case ci is
            when "1" => temp := temp + 1;
            when others => temp := temp;
        end case;
        
        output <= std_logic_vector(temp(BIT_WIDTH downto 0));
        co <= std_logic(temp(BIT_WIDTH + 1));
    end process;
    
end Behavorial;