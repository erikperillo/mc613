LIBRARY ieee;
USE ieee.std_logic_1164.all;
LIBRARY work;
USE work.all;

ENTITY barrelShifter4 IS
	PORT (w: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
			s : IN STD_LOGIC_VECTOR (1 DOWNTO 0);
			y: OUT STD_LOGIC_VECTOR (3 DOWNTO 0));
END barrelShifter4;

ARCHITECTURE Behaviour OF barrelShifter4 IS
begin
	stage0: mux4to1 port map (s, w(0), w(1), w(2), w(3), y(0));
	stage1: mux4to1 port map (s, w(1), w(2), w(3), w(0), y(1));
	stage2: mux4to1 port map (s, w(2), w(3), w(0), w(1), y(2));
	stage3: mux4to1 port map (s, w(3), w(0), w(1), w(2), y(3));
end Behaviour;
	