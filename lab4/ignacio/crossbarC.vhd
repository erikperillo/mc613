LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY crossbarC IS
	PORT (x1, x2, s: IN STD_LOGIC;
			y1, y2: OUT STD_LOGIC);
END crossbarC;

ARCHITECTURE Behavior OF crossbarC IS
BEGIN
	PROCESS(x1, x2, s)
	BEGIN
		IF s = '0' THEN 
			y1 <= x1;
		ELSE
			y1 <= x2;
		END IF;
	END PROCESS;
	
	PROCESS(x1, x2, s)
	BEGIN
		IF s = '0' THEN 
			y2 <= x2;
		ELSE
			y2 <= x1;
		END IF;
	END PROCESS;
END Behavior;