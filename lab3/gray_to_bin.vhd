LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

ENTITY gray_to_bin IS
	PORT (gray : IN STD_LOGIC_VECTOR(3 DOWNTO 0) ;
		 bin: OUT STD_LOGIC_VECTOR(0 TO 3) );
END gray_to_bin ;

ARCHITECTURE Behavior OF gray_to_bin IS
BEGIN
	WITH gray SELECT
	bin <= "0000" WHEN "0000",
		"0001" WHEN "0001",
		"0010" WHEN "0011",
		"0011" WHEN "0010",
		"0100" WHEN "0110",
		"0101" WHEN "0111",
		"0110" WHEN "0101",
		"0111" WHEN "0100",
		"1000" WHEN "1100",
		"1001" WHEN "1101",
		
		"1010" WHEN "1111",
		"1011" WHEN "1110",
		"1100" WHEN "1010",
		"1101" WHEN "1011",
		"1110" WHEN "1001",
		"1111" WHEN "1000";
END Behavior ;