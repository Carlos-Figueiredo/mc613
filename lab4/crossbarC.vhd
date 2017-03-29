LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

PACKAGE crossbarCpackage IS
	COMPONENT crossbarC IS
		PORT (x1, x2: IN STD_LOGIC;
				s: IN STD_LOGIC;
				y1, y2: OUT STD_LOGIC);
	END COMPONENT;
END crossbarCpackage;

LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

ENTITY crossbarC IS
		PORT (x1, x2: IN STD_LOGIC;
				s: IN STD_LOGIC;
				y1, y2: OUT STD_LOGIC);
END crossbarC;


ARCHITECTURE Behavior OF crossbarC IS
BEGIN
	PROCESS (s)
	BEGIN
		y1 <= x1; 
		y2 <= x2;
		IF s = '1' THEN
			y1 <= x2; 
			y2 <= x1;
		END IF;
	END PROCESS;
END Behavior;
	