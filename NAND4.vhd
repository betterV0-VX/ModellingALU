library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

Entity NAND4 is
	Generic (T: time:=17.5 ns);
	Port(x1,x2,x3,x4: in std_logic; y: out std_logic);
End NAND4;

Architecture arch_NAND4 of NAND4 is
Begin
	y<=NOT(x1 AND x2 AND x3 AND x4) after T;
end arch_NAND4;