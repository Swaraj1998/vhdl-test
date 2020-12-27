library IEEE;
use IEEE.std_logic_1164.ALL;

entity wrapper is
	generic (
		N : natural := 4
	);
	port (
		signal CLK : in std_logic;
		signal EN  : in std_logic_vector(0 to N-1);
		signal Q1  : out std_logic_vector(0 to N-1);
		signal Q2  : out std_logic_vector(0 to N-1)
	);
end wrapper;

architecture RTL of wrapper is
begin	
	toggle1 : entity work.toggle(RTL)
		generic map (N)
		port map (CLK, EN, Q1);
	toggle2 : entity work.toggle(RTL_NOVAR)
		generic map (N)
		port map (CLK, EN, Q2);
end RTL;
