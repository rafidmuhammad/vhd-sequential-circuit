-- Testbench for comparator 
library IEEE;
  use IEEE.std_logic_1164.all;
  use ieee.numeric_std.all;

  -- Entity declaration for the testbench

entity testbench is
end entity;

architecture behavioral of testbench is
  -- Component instantiation
  component gatedDLatch
    port (
      D, clk : in  std_logic;
      q      : out std_logic
    );
  end component;

  -- Test signals
  signal D_tb, clk_tb : std_logic;
  signal q_tb         : std_logic;

begin
  -- Instantiate gatedDLatch component
  UUT: gatedDLatch
    port map (
      D   => D_tb,
      clk => clk_tb,
      q   => q_tb
    );

  -- Test process
  process
  begin
    -- Initial values
    D_tb <= '0';
    clk_tb <= '0';
    wait for 10 ns; -- Initial wait

    -- Generate clock and data signals
    loop
      -- Generate single clock pulse
      clk_tb <= '1';
      wait for 5 ns;
      clk_tb <= '0';

      -- Apply different data values after clock pulse
      wait for 10 ns; -- Adjust as needed for data changes
      D_tb <= not D_tb;

      wait for 50 ns; -- Adjust as needed for observation
    end loop;
  end process;

end architecture;
