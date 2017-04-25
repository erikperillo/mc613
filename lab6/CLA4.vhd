LIBRARY ieee;
USE ieee.std_logic_1164.all;
LIBRARY work;
USE work.all;

ENTITY CLA4 IS
	PORT (x: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
			y : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
			s: OUT STD_LOGIC_VECTOR (3 DOWNTO 0));
END CLA4;

ARCHITECTURE Behaviour OF CLA4 IS
	signal aux_c : STD_LOGIC_VECTOR (3 DOWNTO 0);
BEGIN
	aux_c(0) <= (x(0) AND y(0));
	aux_c(1) <= ((x(1) AND y(1)) OR (((x(1) OR y(1))) AND (x(0) AND y(0))));
	aux_c(2) <= ((x(2) AND y(2)) OR (((x(2) OR y(2))) AND ((x(1) AND y(1)) OR (((x(1) OR y(1))) AND (x(0) AND y(0))))));
	aux_c(3) <= ((x(3) AND y(3)) OR ((x(2) OR x(2)) AND ((x(2) AND y(2)) OR (((x(2) OR y(2))) AND ((x(1) AND y(1)) OR (((x(1) OR y(1))) AND (x(0) AND y(0))))))));
	
	stage0: fullAdder port map (x(0), y(0), aux_c(0),s(0));
	stage1: fullAdder port map (x(1), y(1), aux_c(1),s(1));
	stage2: fullAdder port map (x(2), y(2), aux_c(2),s(2));
	stage3: fullAdder port map (x(3), y(3), aux_c(3),s(3));
END Behaviour;
