LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

ENTITY fullAddervhd IS
	PORT (b1, b2, cin: IN STD_LOGIC) ;
			b3, cout, OUT STD_LOGIC) ;
END fullAddervhd ;

ARCHITECTURE Behavior OF fullAdder IS
BEGIN
		b3 <= b1 xor b2 xor cin;
		cout <= (b1 and b2) or (cin and b1) or (b2 and cin);
END Behavior ; 