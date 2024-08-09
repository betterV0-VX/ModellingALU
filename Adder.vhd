library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Adder is
   port(clk: in std_logic;
        cin: in std_logic; 
	a,b: in std_logic_vector(11 downto 0); 
 	s: out std_logic_vector(11 downto 0);
 	cout: out std_logic); 
end Adder; 

architecture arch_Adder of Adder is

  component K155TM7_scheme_12digits is
    port(C: in std_logic; D: in std_logic_vector(11 downto 0); Q: out std_logic_vector(11 downto 0));
  end component K155TM7_scheme_12digits;

  component Adder_12digits is
    port(A,B: in std_logic_vector(11 downto 0); 
         S_out: out std_logic_vector(11 downto 0)); 
  end component Adder_12digits; 
  
  signal A_reg, B_reg: std_logic_vector(11 downto 0);

  begin
    REGISTER_A: K155TM7_scheme_12digits port map (clk, a(11 downto 0), A_reg(11 downto 0));
    REGISTER_B: K155TM7_scheme_12digits port map (clk, b(11 downto 0), B_reg(11 downto 0));
    ADDER_AB: Adder_12digits port map (A_reg(11 downto 0), B_reg(11 downto 0), S(11 downto 0));

end arch_Adder;