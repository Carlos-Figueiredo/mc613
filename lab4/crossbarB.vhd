LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

ENTITY crossbarB IS
		PORT (x1, x2: IN STD_LOGIC;
				s: IN STD_LOGIC;
				y1, y2: OUT STD_LOGIC);
END crossbarB;

ARCHITECTURE Behavior OF crossbarB IS
BEGIN
		y1 <= x1 WHEN s = '0' ELSE x2;
		y2 <= x2 WHEN s = '0' ELSE x1;
END Behavior;
	