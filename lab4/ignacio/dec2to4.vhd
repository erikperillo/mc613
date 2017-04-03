LIBRARY ieee;
USE ieee.std_logic_1164.all;
LIBRARY work;
USE work.dec2to4_package.all;

PACKAGE dec2to4_package IS
	COMPONENT dec2to4
		PORT(w : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
			en : IN STD_LOGIC;
			y : OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
	END COMPONENT;
END dec2to4_package;

LIBRARY ieee;
USE ieee.std_logic_1164.all;
LIBRARY work;
USE work.dec2to4_package.all;

ENTITY dec2to4 IS
	PORT(w : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
			en : IN STD_LOGIC;
			y : OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
END dec2to4;

ARCHITECTURE Behavior OF dec2to4 IS
	SIGNAL enw : STD_LOGIC_VECTOR (2 DOWNTO 0);
BEGIN
	enw <= en & w;
	WITH enw SELECT
	y <= 	
		"1000" WHEN "100",
		"0100" WHEN "101",
		"0010" WHEN "110",
		"0001" WHEN "111",
		"0000" WHEN OTHERS;
END Behavior;