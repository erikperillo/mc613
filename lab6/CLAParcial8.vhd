LIBRARY ieee;
USE ieee.std_logic_1164.all;
LIBRARY work;
USE work.all;

ENTITY CLAParcial8 IS
	PORT (x: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
			y : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
			s: OUT STD_LOGIC_VECTOR (7 DOWNTO 0));
END CLAParcial8;

ARCHITECTURE Behaviour OF CLAParcial8 IS
	signal aux_c : STD_LOGIC_VECTOR (7 DOWNTO 0);
BEGIN
	stage0: CLA4 port map(x(7 DOWNTO 4), y(7 DOWNTO 4), s(7 DOWNTO 7));
	stage1: CLA4 port map(x(3 DOWNTO 0), y(3 DOWNTO 0), s(3 DOWNTO 0));
END Behaviour;
