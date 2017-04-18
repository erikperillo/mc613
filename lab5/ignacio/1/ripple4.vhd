library ieee;
use ieee.std_logic_1164.all;
library work;
use work.all;

entity ripple4 is
	port (x, y: in std_logic_vector (3 downto 0);
			v: out std_logic;
			f: out std_logic_vector(3 downto 0));
end ripple4;

architecture Structure of ripple4 is
	signal c : std_logic_vector(3 downto 1);
begin
	stage0: fullAdder port map (x(0), y(0), '0', c(1), f(0));
	stage1: fullAdder port map (x(1), y(1), c(1), c(2),f(1));
	stage2: fullAdder port map (x(2), y(2), c(2), c(3),f(2));
	stage3: fullAdder port map (x(3), y(3), c(3), v, f(3));
end structure;