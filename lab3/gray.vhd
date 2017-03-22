library ieee;
use ieee.std_logic_1164.all;

entity from_gray is
	port (
		x: in std_logic_vector(3 downto 0);
		f: out std_logic_vector(3 downto 0)
	);
end from_gray;

architecture behavior of from_gray is
begin 
	f(3) <= x(3);
	f(2 downto 0) <= x(3 downto 1) xor x(2 downto 0);
end behavior;
