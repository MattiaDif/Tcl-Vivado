library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity adder is
    port (
        a     : in  std_logic_vector(3 downto 0);  -- 4-bit input A
        b     : in  std_logic_vector(3 downto 0);  -- 4-bit input B
        sum   : out std_logic_vector(3 downto 0)   -- 4-bit output sum
    );
end entity adder;


architecture Behavioral of adder is

    signal tmp_sum : unsigned(3 downto 0);

begin

        tmp_sum <= unsigned(a) + unsigned(b);
        -- Assign the result to the output ports
        sum <= std_logic_vector(tmp_sum);  -- Lower 4 bits for the sum
    
end architecture Behavioral;
