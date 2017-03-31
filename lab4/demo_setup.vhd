library ieee;
use ieee.std_logic_1164.all;
library work;
use work.crossbarFpackage.all;

entity demo_setup is
	GENERIC(N : INTEGER := 5);
	port (SW : in std_logic_vector(0 to 9);
			KEY : in std_logic_vector(3 downto 0);
			LEDR : out std_logic_vector(9 downto 0);
			LEDG : out std_logic_vector(7 downto 0);
			HEX0 : out std_logic_vector(6 downto 0);
			HEX1 : out std_logic_vector(6 downto 0);
			HEX2 : out std_logic_vector(6 downto 0);
			HEX3 : out std_logic_vector(6 downto 0);
			CLOCK_50 : in std_logic);
end demo_setup;

architecture Behavior of demo_setup is
begin
	crossbar: crossbarF
				 GENERIC MAP(N => 8)
				 PORT MAP ('1', '0', SW, LEDR(0), lEDR(1));

end Behavior;
