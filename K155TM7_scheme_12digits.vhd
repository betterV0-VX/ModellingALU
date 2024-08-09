library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity K155TM7_scheme_12digits is
  port(C: in std_logic; D: in std_logic_vector(11 downto 0); Q: out std_logic_vector(11 downto 0));
end K155TM7_scheme_12digits;

Architecture arch_K155TM7_scheme_12digits of K155TM7_scheme_12digits is
  component K155TM7 is
    port(C: in std_logic; D: in std_logic_vector(3 downto 0); Q: out std_logic_vector(3 downto 0));
  end component K155TM7;

  begin
    RG1: K155TM7 port map (C, D(3 downto 0), Q(3 downto 0)); 
    RG2: K155TM7 port map (C, D(7 downto 4), Q(7 downto 4));
    RG3: K155TM7 port map (C, D(11 downto 8), Q(11 downto 8));  

end arch_K155TM7_scheme_12digits;