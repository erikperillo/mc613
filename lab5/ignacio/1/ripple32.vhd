library ieee;
use ieee.std_logic_1164.all;
library work;
use work.all;

entity ripple32 is
	port (x, y: in std_logic_vector (31 downto 0);
			v: out std_logic;
			f: out std_logic_vector(31 downto 0));
end ripple32;

architecture Behaviour of ripple32 is
	signal c : std_logic_vector(31 downto 1);
begin
	stage0: fullAdder port map (x(0), y(0), '0', c(1), f(0));
	G1: for i in 1 to 30 generate
		fulladders: fullAdder port map (x(i), y(i), c(i), c(i+1), f(i));
	end generate;
	final_stage: fullAdder port map (x(31), y(31), c(31), v, f(31));
end Behaviour;