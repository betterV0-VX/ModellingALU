library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

Entity AND2_OR2_NOT is
	Generic (T: time:=17.5 ns);
	Port(x1,x2,x3,x4: in std_logic; y: out std_logic);
End AND2_OR2_NOT;

Architecture arch_AND2_OR2_NOT of AND2_OR2_NOT is
Begin
	y<= NOT((x1 AND x2) OR (x3 AND x4)) after T;
end arch_AND2_OR2_NOT;