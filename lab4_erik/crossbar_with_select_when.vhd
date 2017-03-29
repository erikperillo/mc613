library ieee;
use ieee.std_logic_1164.all;

entity crossbar_when_else is
	port (
		x1, x2: in std_logic;
		s: in std_logic;
		y1, y2: out std_logic
	);
end crossbar_when_else;

architecture behavior of crossbar_when_else is
	begin
		y1 <= x1 when s = '0' else x2;
		y2 <= x2 when s = '0' else x1;
end architecture;
