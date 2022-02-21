library ieee;
use ieee.std_logic_1164.all;

entity flipflop_reset is
port(
	Clk, RST , D : in std_logic;
	Q : out std_logic);
end flipflop_reset;

architecture imp of flipflop_reset is
begin
	process (Clk)
	begin
		if rising_edge(Clk) then
			if RST = '1' then
				Q <= '0';
			else
				Q <= D;
			end if;
		end if;
	end process;
end imp;