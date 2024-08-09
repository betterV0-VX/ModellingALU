library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Block_carry_II is
  port(g: in std_logic; PI, GEN: in std_logic_vector(5 downto 0); E: out std_logic);
end Block_carry_II;

architecture arch_Block_carry_II of Block_carry_II is
  component NAND1 is
    port(x1: in std_logic; y: out std_logic);
  end component NAND1;

  component NAND2 is
    port(x1, x2: in std_logic; y: out std_logic);
  end component NAND2;

  component NAND3 is
    port(x1, x2, x3: in std_logic; y: out std_logic);
  end component NAND3;

  component NAND4 is
    port(x1, x2, x3, x4: in std_logic; y: out std_logic);
  end component NAND4;

  component NAND5 is
    port(x1, x2, x3, x4, x5: in std_logic; y: out std_logic);
  end component NAND5;

  component NAND6 is
    port(x1, x2, x3, x4, x5, x6: in std_logic; y: out std_logic);
  end component NAND6;

  component NAND7 is
    port(x1, x2, x3, x4, x5, x6, x7: in std_logic; y: out std_logic);
  end component NAND7;

  signal tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7: std_logic;

  begin
    COMP1: NAND1 port map (GEN(5), tmp1);
    COMP2: NAND2 port map (GEN(4), PI(5), tmp2);
    COMP3: NAND3 port map (GEN(3), PI(4), PI(5), tmp3);
    COMP4: NAND4 port map (GEN(2), PI(3), PI(4), PI(5), tmp4);
    COMP5: NAND5 port map (GEN(1), PI(2), PI(3), PI(4), PI(5), tmp5);
    COMP6: NAND6 port map (GEN(0), PI(1), PI(2), PI(3), PI(4), PI(5), tmp6);
    COMP7: NAND7 port map (g, PI(0), PI(1), PI(2), PI(3), PI(4), PI(5), tmp7);
    COMP8: NAND7 port map (tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7, E);

end arch_Block_carry_II;