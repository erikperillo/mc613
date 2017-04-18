library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library work;
use work.all;

entity alu is
    port (
        a : in std_logic_vector(3 downto 0);
        b : in std_logic_vector(3 downto 0);
        sel : in std_logic_vector (1 downto 0);
        f : out std_logic_vector(3 downto 0)
        ovf: out std_logic;
    );
end alu;

architecture behavior of alu is
begin
    sum: ripple4 port map (a, b, ovf, f);
    sub: ripple4 port map (a, (not b) + 1, ovf, f);
    process(a, b, sel)
    begin
        case sel is
             when "00" =>
                 f <= sum;
             when "10" =>
                 f <= sub;
             when "01" =>
                 f <= a and b;
             when "11" =>
                 f <= a or b;
        end case;
    end process;
end behavior;

