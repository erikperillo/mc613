Library IEEE;
use IEEE.std_logic_1164.all;

Entity lab2_vhdl IS
	Port (A, B, C, D, E : IN std_logic;
		f : OUT std_logic);
End lab2_vhdl;

Architecture estrutural OF lab2_vhdl IS
 signal g, h, i, j, k, l, m, n, o, p, q : std_logic;
Begin
	f <= g or h or i or j or k or l or m or n or o or p or q;
	g <= not(A) and not(B) and not(C) and not(D) and not(E);
	h <= not(A) and not(B) and not(C) and D and not(E);
	i <= not(A) and not(B) and C and not(D) and E;
	j <= not(A) and B and not(C) and not(D) and not(E);
	k <= not(A) and B and C and not(D) and E;
	l <= not(A) and B and C and D and E;
	m <= A and not(B) and not(C) and D and not(E);
	n <= A and not(B) and C and not(D) and E;
	o <= A and B and not(C) and not(D) and not(E);
	p <= A and B and C and not(D) and E;
	q <= A and B and C and D and E;
End estrutural;