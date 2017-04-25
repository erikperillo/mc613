library ieee;
use ieee.std_logic_1164.all;
library work;

entity fullAdder is
	port ( x, y, carry_in: in std_logic;
			carry_out, signal_out: out std_logic);
end fullAdder;

architecture Behaviour of fullAdder is
begin
	signal_out <= x xor y xor carry_in;
	carry_out <= (x and y) or (x and carry_in) or (y and carry_in);
end Behaviour;