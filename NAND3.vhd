library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

Entity NAND3 is
	Generic (T: time:=17.5 ns);
	Port(x1,x2,x3: in std_logic; y: out std_logic);
End NAND3;

Architecture arch_NAND3 of NAND3 is
Begin
	y<=NOT(x1 AND x2 AND x3) after T;
end arch_NAND3;