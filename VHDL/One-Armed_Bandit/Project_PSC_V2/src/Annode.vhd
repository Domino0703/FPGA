library IEEE;
use IEEE.std_logic_1164.all;

entity Annode is
	port(
		DataIn : in STD_LOGIC_VECTOR(1 downto 0);
		Output : out STD_LOGIC_VECTOR(7 downto 0)
		);
end Annode;

--}} End of automatically maintained section

architecture Annode of Annode is
begin
	
	-- enter your statements here --	
	
	with DataIn select
	Output<=	"01111111" when "00",	--0 
	"10111111" when "01",	--1
	"11011111" when "10",	--2
	"11111111" when others;	--
	
end Annode;