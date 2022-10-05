library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity TC_BitMemory is
    port(
        clk : in std_logic;
        rst : in std_logic;
        save : in std_logic;
        input : in std_logic;
        output : out std_logic);
end TC_BitMemory;

architecture Behavorial of TC_BitMemory is
    signal mem : std_logic := '0';
    signal reset : std_logic := '0';
begin
    
    p : process(clk)
    begin
        
        if rising_edge(clk) then
            if save = '1' then
                mem <= input;
            end if;
            
            if rst = '1' then
                reset <= '1';
            end if;
            
        end if;
        
        if falling_edge(clk) and reset = '1' then
            
            reset <= '0';
            mem <= '0';
            
        end if;
        
    end process;
    
    output <= mem;
    
end Behavorial;