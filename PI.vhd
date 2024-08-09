library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

Entity PI is
	Generic (T: time:=35 ns);
	Port(x1,x2: in std_logic; y: out std_logic);
End PI;

Architecture arch_PI of PI is

Begin
	y<= (x1 OR x2) after T;
end arch_PI;