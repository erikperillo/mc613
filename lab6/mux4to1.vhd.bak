LIBRARY ieee;
USE ieee.std_logic_1164.all;
LIBRARY work;
USE work.mux4to1_package.all;

PACKAGE mux4to1_package IS
	COMPONENT mux4to1
		PORT (s: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
			w : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
			f: OUT STD_LOGIC);
	END COMPONENT;
END mux4to1_package;

LIBRARY ieee;
USE ieee.std_logic_1164.all;
LIBRARY work;
USE work.mux4to1_package.all;
USE work.caixaPontilhada_package.all;
USE work.dec2to4_package.all;

ENTITY mux4to1 IS
	PORT (s: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
			w : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
			f: OUT STD_LOGIC);
END mux4to1;

ARCHITECTURE Behavior of mux4to1 IS
	SIGNAL m : STD_LOGIC_VECTOR(3 DOWNTO 0) ;
BEGIN
	decod: dec2to4 PORT MAP (s, '1', m);

	box: caixaPontilhada PORT MAP (w, m, f);
END Behavior;
