library ieee;
  use ieee.std_logic_1164.all;

entity nBitRegister is
  generic (N : integer := 16);
  port (
    d             : in  std_logic_vector(N - 1 downto 0);
    resetn, clock : in  std_logic;
    q             : out std_logic_vector(N - 1 downto 0)
  );
end entity;

architecture arch of nBitRegister is
begin
  process (resetn, clock) is
  begin
    if resetn = '0' then
      q <= (others => '0');
    elsif clock'event and clock = '1' then
      q <= d;
    end if;
  end process;
end architecture; -- arch
