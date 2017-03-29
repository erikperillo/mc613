library ieee;
use ieee.std_logic_1164.all;

entity crossbar_with_select_when is
	port (
		x1, x2: in std_logic;
		s: in std_logic;
		y1, y2: out std_logic
	);
end crossbar_with_select_when;

architecture behavior of crossbar_with_select_when is
	begin
		with s select
			y1 <= x1 when '0',
					x2 when others;
		with s select
			y2 <= x2 when '0',
					x1 when others;
end architecture;
