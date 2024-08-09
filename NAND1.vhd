library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

Entity NAND1 is
	Generic (T: time:=17.5 ns);
	Port(x1: in std_logic; y: out std_logic);
End NAND1;

Architecture arch_NAND1 of NAND1 is
Begin
	y<=NOT x1 after T;
end arch_NAND1;