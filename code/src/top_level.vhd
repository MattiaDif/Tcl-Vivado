library ieee;
use ieee.std_logic_1164.ALL;


entity top_level is
    port ( 
           clk   : in std_logic;
           reset : in std_logic;
           sw0   : in std_logic;
           led0  : out std_logic
         );
end top_level;

architecture Behavioral of top_level is

begin

    process
        begin
            if rising_edge(clk) then
                led0 <= sw0;
            end if;
        end process;

end Behavioral;
