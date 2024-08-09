library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

Entity NAND6 is
	Generic (T: time:=17.5 ns);
	Port(x1,x2,x3,x4,x5,x6: in std_logic; y: out std_logic);
End NAND6;

Architecture arch_NAND6 of NAND6 is
Begin
	y<=NOT(x1 AND x2 AND x3 AND x4 AND x5 AND x6) after T;
end arch_NAND6;