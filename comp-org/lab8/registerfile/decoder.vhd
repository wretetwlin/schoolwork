library ieee;
use ieee.std_logic_1164.all;

entity decoder is
	port (i: in std_logic_vector(2 downto 0);
		  o: out std_logic_vector(7 downto 0));
end decoder;

architecture arch of decoder is
begin
	with i select 
	o <= "00000001" when "000", 
	     "00000010" when "001", 
		 "00000100" when "010", 
		 "00001000" when "011", 
		 "00010000" when "100", 
	     "00100000" when "101", 
		 "01000000" when "110", 
		 "10000000" when "111",
		 "00000000" when others; 
end arch;