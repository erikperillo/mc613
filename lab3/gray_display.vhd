LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

PACKAGE gray_display IS
	COMPONENT conv7_seg
		PORT (SW : IN STD_LOGIC_VECTOR(3 DOWNTO 0) ;
				HEX3 : OUT STD_LOGIC_VECTOR(0 TO 6) );
	END COMPONENT ;
	
	COMPONENT gray_to_bin
		PORT (gray : IN STD_LOGIC_VECTOR(3 DOWNTO 0) ;
		 bin: OUT STD_LOGIC_VECTOR(0 TO 3) );
	END COMPONENT;
END gray_display ; 