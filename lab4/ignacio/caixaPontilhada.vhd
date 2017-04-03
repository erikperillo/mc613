LIBRARY ieee;
USE ieee.std_logic_1164.all;
LIBRARY work;
USE work.caixaPontilhada_package.all;

PACKAGE caixaPontilhada_package IS
	COMPONENT caixaPontilhada
		PORT(w : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			y : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			f : out STD_LOGIC);
	END COMPONENT;
END caixaPontilhada_package;

LIBRARY ieee;
USE ieee.std_logic_1164.all;
LIBRARY work;
USE work.caixaPontilhada_package.all;

ENTITY caixaPontilhada IS
	PORT(w : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			y : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			f : out STD_LOGIC);
END caixaPontilhada;

ARCHITECTURE Behavior OF caixaPontilhada IS
BEGIN
	f <= (w(0) AND y(0)) OR (w(1) AND y(1)) OR (w(2) AND y(2)) OR (w(3) AND y(3));
END Behavior;