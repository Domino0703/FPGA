-------------------------------------------------------------------------------
--
-- Title       : Prescaler_11
-- Design      : Project
-- Author      : Dominik
-- Company     : AGH
--
-------------------------------------------------------------------------------
--
-- File        : C:\Users\Dominik\Desktop\Studies\Elektronika - V Semestr\Projektowanie Systemów Cyfrowych\Projekt_V\Project\Project\src\Prescaler_11.vhd
-- Generated   : Wed Jan 12 09:46:26 2022
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
--{entity {Prescaler_11} architecture {Prescaler_11}}

library IEEE;
use IEEE.std_logic_1164.all;	  
use IEEE.STD_LOGIC_UNSIGNED.all;

entity Prescaler_11 is
	port(
		CLK : in STD_LOGIC;
		CLR : in STD_LOGIC;
		CE : in STD_LOGIC;
		POUT : out STD_LOGIC
		);
end Prescaler_11;



architecture Prescaler_11 of Prescaler_11 is
	
	signal DIVIDER: std_logic_vector(22 downto 0);	
	constant divide_factor: integer := 5000011;			-- divide factor user constant	
	
begin 
	process (CLK, CLR)
	begin
		if CLR = '1' then
			DIVIDER <= (others => '0');
		elsif CLK'event and CLK = '1' then
			if CE = '1' then
				if DIVIDER = (divide_factor-1) then
					DIVIDER <= (others => '0');
				else
					DIVIDER <= DIVIDER + 1;
				end if;
			end if;
		end if;
	end process;
	
	POUT <= '1' when DIVIDER = (divide_factor-1) and CE = '1' else '0';
	
end Prescaler_11;
