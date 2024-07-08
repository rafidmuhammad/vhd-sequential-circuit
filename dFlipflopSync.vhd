library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

entity dflipflop is
  port (
    D     : in  std_logic;
    clk   : in  std_logic;
    reset : in  std_logic;
    q     : out std_logic
  );
end entity;

architecture rtl of dflipflop is
begin
  process (clk)
  begin
    if clk'event and clk = '1' then
      if reset = '0' then
        q <= '0';
      else
        q <= D;
      end if;
    end if;
  end process;
end architecture;
