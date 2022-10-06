library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity TC_Register is
    generic(
        BIT_WIDTH : integer);
    port(
        clk : in std_logic;
        rst : in std_logic;
        save : in std_logic;
        load : in std_logic;
        input : in std_logic_vector(BIT_WIDTH - 1 downto 0);
        output : out std_logic_vector(BIT_WIDTH - 1 downto 0));
end TC_Register;

architecture Behavorial of TC_Register is
    signal mem : std_logic_vector(BIT_WIDTH - 1 downto 0) := (others => '0');
    signal reset : std_logic := '0';
begin
    
    p : process(clk, load, mem)
    begin
        
        if rising_edge(clk) then
            
            if rst = '1' then
                reset <= '1';
            end if;
            
        end if;
        
        if falling_edge(clk) then
            
            if reset = '1' then
                reset <= '0';
                mem <= (others => '0');
            elsif save = '1' then
                mem <= input;
            end if;
            
        end if;
        
        if load = '1' then
            output <= mem;
        else
            output <= (others => 'Z');
        end if;
    end process;
    
    
end Behavorial;