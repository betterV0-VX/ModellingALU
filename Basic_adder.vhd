library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Basic_adder is
  port(r, a, b: in std_logic; s: out std_logic);
end Basic_adder;

architecture arch_Basic_adder of Basic_adder is

  component NAND1 is
    port(x1: in std_logic; y: out std_logic);
  end component NAND1;

  component AND2_OR2_NOT is
    port(x1, x2, x3, x4: in std_logic; y: out std_logic);
  end component AND2_OR2_NOT;

  signal tmp1, tmp2, not_r, not_a, not_b: std_logic;

  begin
   -- 'NOT a' and 'NOT b'  are without delays (we counted it yearlier)
    not_a <= not a;
    not_b <= not b;
    NOTR: NAND1 port map (r, not_r);
    COMP1: AND2_OR2_NOT port map (a, b, not_a, not_b, tmp1);
    COMP2: AND2_OR2_NOT port map (a, not_b, b, not_a, tmp2);
    COMP3: AND2_OR2_NOT port map (r, tmp1, tmp2, not_r, s); 
    
end arch_Basic_adder;