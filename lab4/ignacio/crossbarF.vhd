LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY work;
USE work.all;

ENTITY crossbarF IS
	GENERIC ( N : INTEGER := 8);
	PORT (x1, x2: IN STD_LOGIC;
			s: IN STD_LOGIC_VECTOR(N-1 DOWNTO 0);
			y1, y2: OUT STD_LOGIC);
END crossbarF;

ARCHITECTURE Behavior OF crossbarF IS
	SIGNAL y1_s, y2_s: STD_LOGIC_VECTOR(N DOWNTO 0);
BEGIN
	y1_s(0) <= x1;
	y2_s(0) <= x2;
	G1: FOR i in 0 to N-1 GENERATE
		crossbar: crossbarC PORT MAP (y1_s(i), y2_s(i), s(i), y1_s(i+1), y2_s(i+1));
	END GENERATE;
	y1 <= y1_s(N);
	y2 <= y2_s(N);
END Behavior;