LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
LIBRARY work;
USE work.all;

PACKAGE mux16to1Package IS
	COMPONENT mux16to1 IS
		port (s: in STD_LOGIC_VECTOR(3 downto 0);
			EN: in STD_LOGIC;
			w: in STD_LOGIC_VECTOR(15 downto 0);
			f: out STD_LOGIC);
	END COMPONENT;
END mux16to1Package;

LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
LIBRARY work;
USE work.all;

entity mux16to1 is
	port (s: in STD_LOGIC_VECTOR(3 downto 0);
			EN: in STD_LOGIC;
			w: in STD_LOGIC_VECTOR(15 downto 0);
			f: out STD_LOGIC);
end mux16to1;

architecture behavior of mux16to1 is
	signal temp2 : std_LOGIC_VECTOR(3 downto 0);
begin
		mux1: mux4to1 port map (s(1 downto 0), En, w(15 downto 12), temp2(3));
		mux2: mux4to1 port map (s(1 downto 0), En, w(11 downto 08), temp2(2));
		mux3: mux4to1 port map (s(1 downto 0), En, w(07 downto 04), temp2(1));
		mux4: mux4to1 port map (s(1 downto 0), En, w(03 downto 00), temp2(0));
		
		muxF: mux4to1 port map (s(3 downto 2), En, temp2, f);
end behavior;