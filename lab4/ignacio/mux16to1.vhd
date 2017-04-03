LIBRARY ieee;
USE ieee.std_logic_1164.all;
LIBRARY work;
USE work.mux16to1_package.all;

PACKAGE mux16to1_package IS
	COMPONENT mux16to1
		PORT (s: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
			w : IN STD_LOGIC_VECTOR (15 DOWNTO 0);
			f: OUT STD_LOGIC);
	END COMPONENT;
END mux16to1_package;

LIBRARY ieee;
USE ieee.std_logic_1164.all;
LIBRARY work;
USE work.mux16to1_package.all;
USE work.mux4to1_package.all;

ENTITY mux16to1 IS
	PORT (s: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
			w : IN STD_LOGIC_VECTOR (15 DOWNTO 0);
			f: OUT STD_LOGIC);
END mux16to1;

ARCHITECTURE Behavior of mux16to1 IS
	SIGNAL m : STD_LOGIC_VECTOR(3 DOWNTO 0) ;
BEGIN
	mux1: mux4to1 PORT MAP (s(1 DOWNTO 0), w(3 DOWNTO 0), m(0)) ;
	mux2: mux4to1 PORT MAP (s(1 DOWNTO 0), w(7 DOWNTO 4), m(1)) ;
	mux3: mux4to1 PORT MAP (s(1 DOWNTO 0), w(11 DOWNTO 8), m(2)) ;
	mux4: mux4to1 PORT MAP (s(1 DOWNTO 0), w(15 DOWNTO 12), m(3)) ;
	mux5: mux4to1 PORT MAP (s(3 DOWNTO 2), m(3 DOWNTO 0), f) ;

END Behavior;