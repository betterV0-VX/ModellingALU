library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Block_carry_I is
  port(e: in std_logic; PI, GEN: in std_logic_vector(5 downto 0); r: out std_logic_vector(5 downto 1));
end Block_carry_I;

architecture arch_Block_carry_I of Block_carry_I is
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

  signal r2_1, r2_2: std_logic;
  signal r3_1, r3_2, r3_3: std_logic;
  signal r4_1, r4_2, r4_3, r4_4: std_logic; 
  signal r5_1, r5_2, r5_3, r5_4, r5_5: std_logic;
  signal r6_1, r6_2, r6_3, r6_4, r6_5, r6_6: std_logic;

  begin

    RR2_1: NAND1 port map (GEN(0), r2_1);
    RR2_2: NAND2 port map (e, PI(0), r2_2);
    RR2_3: NAND2 port map (r2_1, r2_2, r(1));--

    RR3_1: NAND1 port map (GEN(1), r3_1);
    RR3_2: NAND2 port map (GEN(0), PI(1), r3_2);
    RR3_3: NAND3 port map (e, PI(0), PI(1), r3_3);
    RR3_4: NAND3 port map (r3_1, r3_2, r3_3, r(2));--
    
    RR4_1: NAND1 port map (GEN(2), r4_1);
    RR4_2: NAND2 port map (GEN(1), PI(2), r4_2);
    RR4_3: NAND3 port map (GEN(0), PI(1), PI(2), r4_3);
    RR4_4: NAND4 port map (e, PI(0), PI(1), PI(2), r4_4);
    RR4_5: NAND4 port map (r4_1, r4_2, r4_3, r4_4, r(3));--

    RR5_1: NAND1 port map (GEN(3), r5_1);
    RR5_2: NAND2 port map (GEN(2), PI(3), r5_2);
    RR5_3: NAND3 port map (GEN(1), PI(2), PI(3), r5_3);
    RR5_4: NAND4 port map (GEN(0), PI(1), PI(2), PI(3), r5_4);
    RR5_5: NAND5 port map (e, PI(0), PI(1), PI(2), PI(3), r5_5);
    RR5_6: NAND5 port map (r5_1, r5_2, r5_3, r5_4, r5_5, r(4));--

    RR6_1: NAND1 port map (GEN(4), r6_1);
    RR6_2: NAND2 port map (GEN(3), PI(4), r6_2);
    RR6_3: NAND3 port map (GEN(2), PI(3), PI(4), r6_3);
    RR6_4: NAND4 port map (GEN(1), PI(2), PI(3), PI(4), r6_4);
    RR6_5: NAND5 port map (GEN(0), PI(1), PI(2), PI(3), PI(4), r6_5);
    RR6_6: NAND6 port map (e, PI(0), PI(1), PI(2), PI(3), PI(4), r6_6);
    RR6_7: NAND6 port map (r6_1, r6_2, r6_3, r6_4, r6_5, r6_6, r(5));--

end arch_Block_carry_I;