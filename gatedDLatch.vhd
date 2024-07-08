library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

entity gatedDLatch is
  port (
    D, clk : in  std_logic;
    q      : out std_logic
  );
end entity;

architecture rtl of gatedDLatch is
begin
  process (clk)
  begin
    if clk = '1' then
      q <= D;
    end if;
  end process; -- identifier
end architecture;
