library ieee;
use ieee.std_logic_1164.all;
library work;
use work.all;

entity demo_setup is
	port (
        TS : in std_logic_vector(7 downto 0);
        HEX0 : out std_logic_vector(6 downto 0);
        OVF : out std_logic;
        SEL : out std_logic_vector(1 downto 0);
        LEDR : out std_logic_vector(3 downto 0)
    );
end demo_setup;

architecture Comportamento of demo_setup is
    signal f: std_logic_vector(3 downto 0);
begin
    alu: ALU port map(TS(7 downto 4), TS(3 downto 0), SEL, f, OVF);
    disp: display_7seg port map(f, HEX0(7 downto 1), LEDR(0));
    LEDR(1) <= OVF;
    LEDR(2) <= OVF;
    WITH f select
        LEDR(3) <= "1" when "0000",
            "0" when others;
end Comportamento;
