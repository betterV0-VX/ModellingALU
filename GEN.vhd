library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

Entity GEN is
	Generic (T: time:=35 ns);
	Port(x1,x2: in std_logic; y: out std_logic);
End GEN;

Architecture arch_GEN of GEN is

Begin
	y<= (x1 AND x2) after T;
end arch_GEN;