library ieee;
use ieee.std_logic_1164.all;

entity toggle is
	generic (
		N : natural := 4
	);
	port (
		signal CLK : in std_logic;
		signal EN  : in std_logic_vector(0 to N-1);
		signal Q   : out std_logic_vector(0 to N-1)
			:= (others => '0')
	);
end toggle;

architecture RTL of toggle is
begin
	toggle_proc : process (CLK, EN)
		variable Q_v: std_logic_vector(0 to N-1)
			:= (others => '0');
	begin
		if rising_edge(CLK) then
			for i in EN'range loop
				if EN(i) = '1' then
					Q_v(i) := not Q_v(i);
					Q(i) <= Q_v(i);
				end if;
			end loop;
		end if;
	end process;
end RTL;

architecture RTL_NOVAR of toggle is
	signal Q_tmp: std_logic_vector(0 to N-1)
		:= (others => '0');
begin
	toggle_proc: process (CLK, EN)
	begin
		if rising_edge(CLK) then
			for i in EN'range loop
				if EN(i) = '1' then
					Q_tmp(i) <= not Q_tmp(i);
				end if;
			end loop;
		end if;
	end process;

	Q <= Q_tmp;

end RTL_NOVAR;
