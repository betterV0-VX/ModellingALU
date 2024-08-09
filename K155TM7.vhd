library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity K155TM7 is
  port(C: in std_logic; D: in std_logic_vector(3 downto 0); Q: out std_logic_vector(3 downto 0));
end K155TM7;

Architecture arch_K155TM7 of K155TM7 is
  begin process(C, D(3 downto 0))
    begin
      if (C='1') then
	 Q(3 downto 0) <= D(3 downto 0) after 40 ns;
    end if;
  end process;
end arch_K155TM7;

