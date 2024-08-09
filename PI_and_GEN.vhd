library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity PI_and_GEN is
  port(A, B: in std_logic_vector(11 downto 0); PI_out, GEN_out: out std_logic_vector(11 downto 0));
end PI_and_GEN;

architecture arch_PI_and_GEN of PI_and_GEN is

  component PI is
    port(x1,x2: in std_logic; y: out std_logic);
  end component PI;

  component GEN is
    port(x1,x2: in std_logic; y: out std_logic);
  end component GEN;

  begin

    PI1: PI port map(A(0), B(0), PI_out(0));
    PI2: PI port map(A(1), B(1), PI_out(1));
    PI3: PI port map(A(2), B(2), PI_out(2));
    PI4: PI port map(A(3), B(3), PI_out(3));
    PI5: PI port map(A(4), B(4), PI_out(4));
    PI6: PI port map(A(5), B(5), PI_out(5));
    PI7: PI port map(A(6), B(6), PI_out(6));
    PI8: PI port map(A(7), B(7), PI_out(7));
    PI9: PI port map(A(8), B(8), PI_out(8));
    PI10: PI port map(A(9), B(9), PI_out(9));
    PI11: PI port map(A(10), B(10), PI_out(10));
    PI12: PI port map(A(11), B(11), PI_out(11));

    GEN1: GEN port map(A(0), B(0), GEN_out(0));
    GEN2: GEN port map(A(1), B(1), GEN_out(1));
    GEN3: GEN port map(A(2), B(2), GEN_out(2));
    GEN4: GEN port map(A(3), B(3), GEN_out(3));
    GEN5: GEN port map(A(4), B(4), GEN_out(4));
    GEN6: GEN port map(A(5), B(5), GEN_out(5));
    GEN7: GEN port map(A(6), B(6), GEN_out(6));
    GEN8: GEN port map(A(7), B(7), GEN_out(7));
    GEN9: GEN port map(A(8), B(8), GEN_out(8));
    GEN10: GEN port map(A(9), B(9), GEN_out(9));
    GEN11: GEN port map(A(10), B(10), GEN_out(10));
    GEN12: GEN port map(A(11), B(11), GEN_out(11));

end arch_PI_and_GEN;
