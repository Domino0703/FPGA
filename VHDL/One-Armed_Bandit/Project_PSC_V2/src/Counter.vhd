-------------------------------------------------------------------------------
--
-- Title       : Counter
-- Design      : Project
-- Author      : Dominik
-- Company     : AGH
--
-------------------------------------------------------------------------------
--
-- File        : C:\Users\Dominik\Desktop\Studies\Elektronika - V Semestr\Projektowanie Systemów Cyfrowych\Projekt_V\Project\Project\src\Counter.vhd
-- Generated   : Wed Jan 12 07:26:34 2022
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
--{entity {Counter} architecture {Counter}}

library IEEE;
use ieee.std_logic_1164.all;  
use IEEE.STD_LOGIC_UNSIGNED.all;

entity Counter is
	 port(
		 CLK : in STD_LOGIC;
		 RESET : in STD_LOGIC; 
		 MODE_1 : in STD_LOGIC;
		 MODE_2 : in STD_LOGIC;
		 MODE_3 : in STD_LOGIC;
		 CE : in STD_LOGIC;
		 Q : out STD_LOGIC_VECTOR(2 downto 0)
	     );
end Counter;

--}} End of automatically maintained section

architecture Counter of Counter is
begin
	
	-- enter your statements here --
	process (CLK, RESET)
		variable Qint : STD_LOGIC_VECTOR (2 downto 0);
	begin
		if RESET = '1' then
			Qint := "000"; 
		else
			if CLK'event and CLK = '1' and CE = '1' then
				if MODE_1 = '1' and MODE_2 = '0' and MODE_3 ='0' then
					if Qint <4 then							
						Qint := Qint+1;
					else
						Qint := "000";	
					end if;
				else if	MODE_2 = '1'and MODE_1 = '0' and MODE_3 ='0' then
						if Qint <3 then							
							Qint := Qint+1;
						else
							Qint := "000";	
						end if;
					else if	MODE_3 = '1'and MODE_2 = '0' and MODE_1 ='0' then
							if Qint <2 then							
								Qint := Qint+1;
							else
								Qint := "000";	
							end if;	
						else
							if Qint <5 then							
								Qint := Qint+1;
							else
								Qint := "000";	
							end if;
						end if;
					end if;
				end if;	
			end if;	
		end if;
		Q <= Qint;
	end process;
	
end Counter;
