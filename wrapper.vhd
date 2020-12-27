library IEEE;
use IEEE.std_logic_1164.ALL;

entity wrapper is
	port (
		signal CLK : in std_logic;
		signal EN  : in std_logic;
		signal Q1  : out std_logic;
		signal Q2  : out std_logic
	     );
end wrapper;

architecture RTL of wrapper is
begin	
	toggle1 : entity work.toggle(RTL)
		port map (CLK, EN, Q1);
	toggle2 : entity work.toggle(RTL_NOVAR)
		port map (CLK, EN, Q2);
end RTL;
