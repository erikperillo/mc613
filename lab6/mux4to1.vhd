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

ENTITY mux4to1 IS
	PORT (s: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
			w0,w1,w2,w3: IN STD_LOGIC;
			f: OUT STD_LOGIC);
END mux4to1;

ARCHITECTURE Behavior of mux4to1 IS
BEGIN
	WITH s SELECT
		f<= w0 WHEN "00",
			w1 WHEN "01",
			w2	WHEN "10",
			w3	WHEN "11";
END Behavior;
