library ieee;
use ieee.std_logic_1164.all;

entity crossbar is
	port (
		x1, x2: in std_logic;
		s: in std_logic;
		f: out std_logic
	);
end crossbar;

architecture behavior of crossbar is
	begin
		with s select
			y1 <= 	x1 when '0',
					x2 when others;
		with s select
			y2 <= 	x2 when '0',
					x1 when others;
end architecture
