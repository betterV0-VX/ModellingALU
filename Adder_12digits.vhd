library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Adder_12digits is
  port(A,B: in std_logic_vector(11 downto 0); 
       S_out: out std_logic_vector(11 downto 0)); 
end Adder_12digits; 

architecture arch_Adder_12digits of Adder_12digits is
  
  component PI_and_GEN is
    port(A, B: in std_logic_vector(11 downto 0); PI_out, GEN_out: out std_logic_vector(11 downto 0));
  end component PI_and_GEN;

  component Block_Carry_II is
    port(g: in std_logic; PI, GEN: in std_logic_vector(5 downto 0); E: out std_logic);
  end component Block_carry_II;

  component Block_Carry_I is
    port(e: in std_logic; PI, GEN: in std_logic_vector(5 downto 0); r: out std_logic_vector(5 downto 1));
  end component Block_carry_I;

  component Basic_adder is
    port(R: in std_logic; A, B: in std_logic; S: out std_logic);
  end component Basic_adder;

  signal PI: std_logic_vector(11 downto 0);
  signal GEN: std_logic_vector(11 downto 0);
  signal E1: std_logic;
  signal R: std_logic_vector(11 downto 0);

  begin

    COMP_PI_AND_GEN: PI_and_GEN port map (A(11 downto 0), B(11 downto 0), PI(11 downto 0), GEN(11 downto 0));

    COMP_CARRY_II: Block_Carry_II port map ('0', PI(5 downto 0), GEN(5 downto 0), E1);

    R(0) <= '0';
    COMP1_CARRY_I: Block_Carry_I port map ('0', PI(5 downto 0), GEN(5 downto 0), R(5 downto 1));
    R(6) <= E1;
    COMP2_CARRY_I: Block_Carry_I port map (E1, PI(11 downto 6), GEN(11 downto 6), R(11 downto 7));

    COMP0_ADDER: Basic_adder port map ('0', A(0), B(0), S_out(0));
    COMP1_ADDER: Basic_adder port map (R(1), A(1), B(1), S_out(1));
    COMP2_ADDER: Basic_adder port map (R(2), A(2), B(2), S_out(2));
    COMP3_ADDER: Basic_adder port map (R(3), A(3), B(3), S_out(3));
    COMP4_ADDER: Basic_adder port map (R(4), A(4), B(4), S_out(4));
    COMP5_ADDER: Basic_adder port map (R(5), A(5), B(5), S_out(5));
    COMP6_ADDER: Basic_adder port map (R(6), A(6), B(6), S_out(6));
    COMP7_ADDER: Basic_adder port map (R(7), A(7), B(7), S_out(7));
    COMP8_ADDER: Basic_adder port map (R(8), A(8), B(8), S_out(8));
    COMP9_ADDER: Basic_adder port map (R(9), A(9), B(9), S_out(9));
    COMP10_ADDER: Basic_adder port map (R(10), A(10), B(10), S_out(10));
    COMP11_ADDER: Basic_adder port map (R(11), A(11), B(11), S_out(11));

end arch_Adder_12digits;