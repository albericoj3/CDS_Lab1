library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Lab1_Design1A is
port
(
	--INPUTS
	CLOCK, Reset, w   : in std_logic;
	--OUTPUTS
	y     : out std_logic;
);
end entity Lab2_Design1A;

architecture FSM of Lab1_Design1A is
	component DFF is
	port 
	(
		Clk, RST , D  : in std_logic;
		Q             : out std_logic;
	);
	end component some_component;
	
	signal D, Q : std_LOGIC_VECTOR(8 downto 0);
	signal CLOCK : std_logic;
	signal Reset : std_logic;
	signal w : std_logic;
	signal y : std_logic;
	
begin
	bit8 : DFF
	port map(CLOCK, Reset, w AND (Q(7) OR Q(8)), Q(8));
	
	bit7 : DFF
	port map(CLOCK, Reset, w AND Q(6), Q(7));
	
	bit6 : DFF
	port map(CLOCK, Reset, w AND Q(5), Q(6));
	
	bit5 : DFF
	port map(CLOCK, Reset, w AND (Q(0) OR Q(1) OR Q(2) OR Q(3) OR Q(4)), Q(5));

	bit4 : DFF
	port map(CLOCK, Reset, not(w) AND (Q(3) OR Q(4)), Q(4));
	
	bit3 : DFF
	port map(CLOCK, Reset, not(w) AND Q(2), Q(3));
	
	bit2 : DFF
	port map(CLOCK, Reset, not(w) AND Q(1), Q(2));
	
	bit1 : DFF
	port map(CLOCK, Reset, not(w) AND (Q(0) OR Q(5) OR Q(6) OR Q(7) OR Q(8)), Q(1));
	
	bit0 : DFF
	port map(CLOCK, Reset, '1', Q(0));
	
	y <= Q(4) OR Q(8);
	
	
end FSM;	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	