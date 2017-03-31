LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

PACKAGE crossbarFpackage IS
	COMPONENT crossbarF IS
		GENERIC (N :INTEGER := 5);
		PORT (x1, x2: IN STD_LOGIC;
				SW: IN STD_LOGIC_VECTOR(0 TO 9);
				y1, y2: OUT STD_LOGIC);
	END COMPONENT;
END crossbarFpackage;

LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
LIBRARY work;
USE work.crossbarCpackage.all;

ENTITY crossbarF IS
		GENERIC (N :INTEGER := 5);
		PORT (x1, x2: IN STD_LOGIC;
				SW: IN STD_LOGIC_VECTOR(0 TO 9);
				y1, y2: OUT STD_LOGIC);
END crossbarF;

ARCHITECTURE Behavior OF crossbarF IS
	SIGNAL mIN1: STD_LOGIC_VECTOR(0 TO N);
	SIGNAL mIN2: STD_LOGIC_VECTOR(0 TO N);
	SIGNAL mOUT1: STD_LOGIC_VECTOR(0 TO N-1);
	SIGNAL mOUT2: STD_LOGIC_VECTOR(0 TO N-1);		
BEGIN
	mIN1(0) <= x1;
	mIN2(0) <= x2;
	G: FOR i in 0 TO (N-1) GENERATE
		crossbar: crossbarC PORT MAP (mIN1(i), mIN2(i), SW(i), mOUT1(i), mOUT2(i));
		mIN1(i+1) <= mOUT1(i);
		mIN2(i+1) <= mOUT2(i);
	END GENERATE;
	y1 <= mOUT1(N-1);
	y2 <= mOUT2(N-1);
END Behavior;
	