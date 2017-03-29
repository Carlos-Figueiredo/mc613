LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

ENTITY crossbarA IS
		PORT (x1, x2: IN STD_LOGIC;
				s: IN STD_LOGIC;
				y1, y2: OUT STD_LOGIC);
END crossbarA;

ARCHITECTURE Behavior OF crossbarA IS
BEGIN
	WITH s SELECT
		y1 <= x1 WHEN '0',
				x2 WHEN OTHERS;
	WITH s SELECT
		y2 <= x2 WHEN '0',
				x1 WHEN OTHERS;
END Behavior;
	