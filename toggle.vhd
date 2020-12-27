library ieee;
use ieee.std_logic_1164.all;

entity toggle is
	port (
		signal CLK : in std_logic;
		signal EN  : in std_logic;
		signal Q   : out std_logic := '0'
	);
end toggle;

architecture RTL of toggle is
begin
	toggle_proc : process (CLK, EN)
		variable Q_v: std_logic := '0';
	begin
		if rising_edge(CLK) then
			if EN = '1' then
				Q_v := not Q_v;
				Q <= Q_v;
			end if;
		end if;
	end process;
end RTL;

architecture RTL_NOVAR of toggle is
	signal Q_tmp: std_logic := '0';
begin
	toggle_proc: process (CLK, EN)
	begin
		if rising_edge(CLK) then
			if EN = '1' then
				Q_tmp <= not Q_tmp;
			end if;
		end if;
	end process;

	Q <= Q_tmp;

end RTL_NOVAR;
