LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

PACKAGE caixaPontilhadaPackage IS
	COMPONENT caixaPontilhada is
		port (w: in STD_LOGIC_VECTOR(3 downto 0);
				x: in STD_LOGIC_VECTOR(3 downto 0);
				y: out STD_LOGIC_VECTOR(3 downto 0));
	END COMPONENT;
END caixaPontilhadaPackage;

LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

entity caixaPontilhada is
	port (w: in STD_LOGIC_VECTOR(3 downto 0);
			x: in STD_LOGIC_VECTOR(3 downto 0);
			y: out STD_LOGIC_VECTOR(3 downto 0));
end caixaPontilhada;

architecture behavior of caixaPontilhada is
begin
	y(0) <= x(0) when w(0) = '1' ELSE '0';
	y(1) <= x(1) when w(1) = '1' ELSE '0';
	y(2) <= x(2) when w(2) = '1' ELSE '0';
	y(3) <= x(3) when w(3) = '1' ELSE '0';
end behavior;