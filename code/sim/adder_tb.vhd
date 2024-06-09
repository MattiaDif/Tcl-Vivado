library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity adder_tb is
end entity adder_tb;

architecture Behavioral of adder_tb is
    -- Component declaration for the Adder
    component Adder is
        port (
            a     : in  std_logic_vector(3 downto 0);
            b     : in  std_logic_vector(3 downto 0);
            sum   : out std_logic_vector(3 downto 0);
            carry : out std_logic
        );
    end component;
    
    -- Signal declarations
    signal a     : std_logic_vector(3 downto 0);
    signal b     : std_logic_vector(3 downto 0);
    signal sum   : std_logic_vector(3 downto 0);
    signal carry : std_logic;
begin
    -- Instantiate the Adder
    UUT: adder port map (
        a => a,
        b => b,
        sum => sum,
        carry => carry
    );
    
    -- Test process
    process
    begin
        -- Apply test vectors
        a <= "0000"; b <= "0000"; wait for 10 ns;
        a <= "0001"; b <= "0001"; wait for 10 ns;
        a <= "0010"; b <= "0011"; wait for 10 ns;
        a <= "0101"; b <= "0110"; wait for 10 ns;
        a <= "1111"; b <= "0001"; wait for 10 ns;
        a <= "1111"; b <= "1111"; wait for 10 ns;

        -- End the simulation
        wait;
    end process;
end architecture Behavioral;
