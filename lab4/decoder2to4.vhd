LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

PACKAGE decoder2to4Package IS
	COMPONENT decoder2to4 IS
		port (s: in STD_LOGIC_VECTOR(1 downto 0);
			EN: in STD_LOGIC;
			y: out STD_LOGIC_VECTOR(3 downto 0));
	END COMPONENT;
END decoder2to4Package;

LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

entity decoder2to4 is
	port (s: in STD_LOGIC_VECTOR(1 downto 0);
			EN: in STD_LOGIC;
			y: out STD_LOGIC_VECTOR(3 downto 0));
end decoder2to4;

architecture behavior of decoder2to4 is
	signal Ens : std_LOGIC_VECTOR(2 downto 0);
begin
	Ens <= En & s;
	with Ens select
		y <= "0001" when "100",
				"0010" when "101",
				"0100" when "110",
				"1000" when "111",
				"0000" when OTHERS;
end behavior;