library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity adder is
    port (
        a     : in  std_logic_vector(3 downto 0);  -- 4-bit input A
        b     : in  std_logic_vector(3 downto 0);  -- 4-bit input B
        sum   : out std_logic_vector(3 downto 0);  -- 4-bit output sum
        carry : out std_logic                     -- carry-out
    );
end entity adder;


architecture Behavioral of adder is
begin
    process(a, b)
        variable tmp_sum : unsigned(4 downto 0);  -- Temporary variable to hold the sum with carry
    begin
        -- Perform the addition
        tmp_sum := unsigned(a) + unsigned(b);
        
        -- Assign the result to the output ports
        sum <= std_logic_vector(tmp_sum(3 downto 0));  -- Lower 4 bits for the sum
        carry <= tmp_sum(4);                           -- 5th bit for the carry
    end process;

    
end architecture Behavioral;
