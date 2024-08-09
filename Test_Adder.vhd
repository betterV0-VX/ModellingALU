library IEEE;
use IEEE.STD_LOGIC_1164.all;

use std.textio.all;
use IEEE.numeric_std.all;

library osvvm;
use osvvm.RandomPkg.all;

entity Test_Adder is
end Test_Adder;

architecture arch_Test_Adder of Test_Adder is

   component Adder is
     port(clk: in std_logic;
          cin: in std_logic; 
	  a,b: in std_logic_vector(11 downto 0); 
 	  s: out std_logic_vector(11 downto 0);
 	  cout: out std_logic); 
   end component Adder;
  
  signal clk, cin: std_logic;
  signal a, b, s: std_logic_vector(11 downto 0);
  signal cout: std_logic;

  begin
    DUT: Adder port map (clk, cin, a, b, s, cout);
    process 
	begin

-- Test 1'
	clk <= '1';
        A <= "011001000101";
	B <= "011010000110"; 
        wait for 40 ns;
	clk <= '0';
	wait for 148 ns;

-- Test 2'
	clk <= '1';
        A <= "011000101011";
	B <= "011010010100"; 
        wait for 40 ns;
	clk <= '0';
	wait for 148 ns;

-- Test 3'
	clk <= '1';
        A <= "001101000111";
	B <= "011000001001"; 
        wait for 40 ns;
	clk <= '0';
	wait for 148 ns;

-- Test 4'
	clk <= '1';
        A <= "000001000101";
	B <= "001001001010"; 
        wait for 40 ns;
	clk <= '0';
	wait for 148 ns;

-- Test 5'
	clk <= '1';
        A <= "011000010101";
	B <= "010011101100"; 
        wait for 40 ns;
	clk <= '0';
	wait for 148 ns;

-- Test 6'
	clk <= '1';
        A <= "010010000110";
	B <= "000100010111"; 
        wait for 40 ns;
	clk <= '0';
	wait for 148 ns;

---- Test 1 
--	clk <= '1';
--        A <= "011011001001";
--	B <= "100100110110"; 
--        wait for 40 ns;
--	clk <= '0';
--	wait for 148 ns;
--
---- Test 2
--	clk <= '1';
--        A <= "000000000000";
--	B <= "111111111111"; 
--        wait for 40 ns;
--	clk <= '0';
--	wait for 148 ns;

-- Test 3
--	clk <= '1';
--        A <= "011111111111";
--	B <= "000000000001"; 
--        wait for 40 ns;
--	clk <= '0';
--	wait for 148 ns;

---- Test 4
--	clk <= '1';
--        A <= "011111011111";
--	B <= "000000000001"; 
--        wait for 40 ns;
--	clk <= '0';
--	wait for 148 ns;
--
---- Test 5 - random digits
--	clk <= '1';
--        A <= "011010101111";
--	B <= "000111100110"; 
--        --expected: 100010010101
--        wait for 40 ns;
--	clk <= '0';
--	wait for 148 ns;
--
---- Test 6 - random digits
--	clk <= '1';
--        A <= "000110101010";
--	B <= "001011000111"; 
--        --expected: 10001110001
--        wait for 40 ns;
--	clk <= '0';
--	wait for 148 ns;
    
    end process;
end arch_Test_Adder;


--library IEEE;
--use IEEE.STD_LOGIC_1164.ALL;
--
--use std.textio.all;
--use IEEE.numeric_std.all;
--
--library osvvm;
--use osvvm.RandomPkg.all;
--
--entity Test_Adder is
--end Test_Adder;
--
--architecture arch_Test_Adder of Test_Adder is
--
--   component Adder is
--     port(clk: in std_logic;
--          cin: in std_logic; 
--	  a,b: in std_logic_vector(11 downto 0); 
-- 	  s: out std_logic_vector(11 downto 0);
-- 	  cout: out std_logic); 
--   end component Adder;
--
--  signal testa, testb, testResult, result: std_logic_vector(11 downto 0);
--  signal c: std_logic;
--  signal cin_empty, cout_empty: std_logic;
--
--  begin
--    dut: adder port map(c, cin_empty, testA, testB, result, cout_empty);
--    gen_rand: process
--      variable rA, rB: RandomPType;
--      variable randA, randB, b: integer;
--      variable L: line;
--
--      begin
--        randA := rA.RandInt(0, 4095);
--        randB := rB.RandInt(0, 4095);
--        testA <= std_logic_vector(to_unsigned(randA, 12));
--        testB <= std_logic_vector(to_unsigned(randB, 12));
--        
--        testResult <= std_logic_vector(to_unsigned(randA+randB, testResult'length));
--        c <= '1';
--        wait for 40 ns;
--        c <= '0';
--        wait for 148 ns;
--        if (testResult = result) then 
--          write(L, string'("Success"));
--        else
--          write(L, string'("Error"));
--        end if;
--    end process;
--end arch_Test_Adder;
