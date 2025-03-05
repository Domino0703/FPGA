-------------------------------------------------------------------------------
--
-- Title       : Compare
-- Design      : Project_PSC_V2
-- Author      : Dominik
-- Company     : AGH
--
-------------------------------------------------------------------------------
--
-- File        : C:\Users\Dominik\Desktop\Project_PSC_V2\src\Compare.vhd
-- Generated   : Wed Jan 26 11:00:44 2022
-- From        : interface description file
-- By          : Itf2Vhdl ver. 1.22
--
-------------------------------------------------------------------------------
--
-- Description : 
--
-------------------------------------------------------------------------------

--{{ Section below this comment is automatically maintained
--   and may be overwritten
--{entity {Compare} architecture {Compare}}

library IEEE;
use IEEE.std_logic_1164.all;

entity Compare is
	port(
		CE : in STD_LOGIC;
		Q_RED : out STD_LOGIC;	 
		Q_GREEN : out STD_LOGIC;
		IN_1 : in STD_LOGIC_VECTOR(2 downto 0);
		IN_2 : in STD_LOGIC_VECTOR(2 downto 0);
		IN_3 : in STD_LOGIC_VECTOR(2 downto 0)
		);
end Compare;

--}} End of automatically maintained section

architecture Compare of Compare is
begin
	
	process(CE)
	begin	
		if CE = '0' then
			if (IN_1 = IN_2) then
				Q_GREEN <= '1';
				if IN_1 = IN_3 then
					Q_GREEN <= '0';
					Q_RED <= '1';
				end if;
			end if;
		else
			Q_GREEN <= '0';
			Q_RED <= '0';
		end if;	
		
	end process;
	
end Compare;
