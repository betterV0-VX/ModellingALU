library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

Entity NAND7 is
	Generic (T: time:=17.5 ns);
	Port(x1,x2,x3,x4,x5,x6,x7: in std_logic; y: out std_logic);
End NAND7;

Architecture arch_NAND7 of NAND7 is
Begin
	y<=NOT(x1 AND x2 AND x3 AND x4 AND x5 AND x6 AND x7) after T;
end arch_NAND7;