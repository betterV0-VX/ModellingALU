library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

Entity NAND2 is
	Generic (T: time:=17.5 ns);
	Port(x1,x2: in std_logic; y: out std_logic);
End NAND2;

Architecture arch_NAND2 of NAND2 is
Begin
	y<=NOT(x1 AND x2) after T;
end arch_NAND2;