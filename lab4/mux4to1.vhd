LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
LIBRARY work;
USE work.decoder2to4Package.all;
USE work.caixaPontilhadaPackage.all;

PACKAGE mux4to1Package IS
	COMPONENT mux4to1 IS
		port (s: in STD_LOGIC_VECTOR(1 downto 0);
			EN: in STD_LOGIC;
			w: in STD_LOGIC_VECTOR(3 downto 0);
			y: out STD_LOGIC_VECTOR(3 downto 0));
	END COMPONENT;
END mux4to1Package;

LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

entity mux4to1 is
	port (s: in STD_LOGIC_VECTOR(1 downto 0);
			EN: in STD_LOGIC;
			w: in STD_LOGIC_VECTOR(3 downto 0);
			y: out STD_LOGIC_VECTOR(3 downto 0));
end mux4to1;

architecture behavior of mux4to1 is
	signal temp : std_LOGIC_VECTOR(3 downto 0);
begin
		decoder: decoder2to4 PORT MAP (s, EN, temp);
		caixaPontilhada: caixaPontilhada port map (w, temp, y);
end behavior;