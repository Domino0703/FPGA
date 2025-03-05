-------------------------------------------------------------------------------
--
-- Title       : Decoder
-- Design      : Project
-- Author      : Dominik
-- Company     : AGH
--
-------------------------------------------------------------------------------
--
-- File        : C:\Users\Dominik\Desktop\Studies\Elektronika - V Semestr\Projektowanie Systemów Cyfrowych\Projekt_V\Project\Project\src\Decoder.vhd
-- Generated   : Wed Jan 12 07:32:40 2022
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
--{entity {Decoder} architecture {Decoder}}

library IEEE;
use IEEE.std_logic_1164.all;

entity Decoder is
	port(	  
		SGN : in STD_LOGIC;
		DataIn : in STD_LOGIC_VECTOR(2 downto 0);	
		Output : out STD_LOGIC_VECTOR(6 downto 0)
		);
end Decoder;

--}} End of automatically maintained section

architecture Decoder of Decoder is
begin
	
		--with DataIn select
		--Output<=	"1111001" when "001",	--1
		--"0100100" when "010",	--2
		--"0110000" when "011",	--3
		--"0011001" when "100",	--4
		--"0010010" when "101",	--5
		--"1000000" when others;	--0	 
process (DataIn)
begin
		if SGN = '0' then 
			case (DataIn) is
				when "001" =>	 
				Output <= "1111001";
				when "010" =>	 
				Output <= "0100100";
				when "011" =>	 
				Output <= "0110000";
				when "100" =>	 
				Output <= "0011001";
				when "101" =>	 
				Output <= "0010010";
				when others =>
				Output <= "1000000";
			end case;
		else
			case (DataIn) is
				when "001" =>	 
				Output <= "1000110";
				when "010" =>	 
				Output <= "0011011";
				when "011" =>	 
				Output <= "0100001";
				when "100" =>	 
				Output <= "1111000";
				when "101" =>	 
				Output <= "0001001";
				when others =>
				Output <= "0110110";
			end case;
		end if;	 
end process;		
			
end Decoder;
