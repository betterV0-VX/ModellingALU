library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

Entity NAND5 is
	Generic (T: time:=17.5 ns);
	Port(x1,x2,x3,x4,x5: in std_logic; y: out std_logic);
End NAND5;

Architecture arch_NAND5 of NAND5 is
Begin
	y<=NOT(x1 AND x2 AND x3 AND x4 AND x5) after T;
end arch_NAND5;