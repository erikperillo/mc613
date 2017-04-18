library ieee;
use ieee.std_logic_1164.all;
library work;
use work.all;

entity demo_setup is
	port (SW : in std_logic_vector(9 downto 0);
			KEY : in std_logic_vector(3 downto 0);
			LEDR : out std_logic_vector(9 downto 0);
			LEDG : out std_logic_vector(7 downto 0);
			HEX0 : out std_logic_vector(6 downto 0);
			HEX1 : out std_logic_vector(6 downto 0);
			HEX2 : out std_logic_vector(6 downto 0);
			HEX3 : out std_logic_vector(6 downto 0);
			CLOCK_50 : in std_logic);
end demo_setup;

architecture Comportamento of demo_setup is
	signal display: std_logic_vector(3 downto 0);
begin
	adder: ripple4 port map (SW(7 downto 4), SW(3 downto 0), LEDR(0), display);
	display_map: display_7seg port map (display, HEX0(6 downto 0));
end Comportamento;
