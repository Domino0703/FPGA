-------------------------------------------------------------------------------
--
-- Title       : Counter_3
-- Design      : Project_PSC_V2
-- Author      : Dominik
-- Company     : AGH
--
-------------------------------------------------------------------------------
--
-- File        : C:\Users\Dominik\Desktop\Project_PSC_V2\src\Counter_3.vhd
-- Generated   : Thu Feb 10 12:59:10 2022
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
--{entity {Counter_3} architecture {Counter_3}}

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity Counter_3 is
	port(
		CLK : in STD_LOGIC;
		CE : in STD_LOGIC;
		RESET : in STD_LOGIC;
		Q1 :  out STD_LOGIC;
		Q2 : out STD_LOGIC;
		Q3 : out STD_LOGIC
		);
end Counter_3;

--}} End of automatically maintained section

architecture Counter_3 of Counter_3 is
begin 
	
	process (CLK, RESET)	 
		variable Qint : STD_LOGIC_VECTOR (28 downto 0);	
	begin 	
		if RESET = '1' then
			Qint := (others => '0'); 
		end if;
		if CLK'event and CLK = '1' then
			if Qint <300000002 then
				Qint := Qint+1;
			else
				Qint := (others => '0');
			end if;
		end if;
		if falling_edge(CE) and CE = '0' then 
			Qint := (others => '0'); 
		end if;
		if CE = '0' then
			if Qint > 100000000 then
				Q1 <= '0';
			end if;
			if Qint > 200000000 then
				Q2 <= '0'; 
			end if;
			if Qint > 300000000 then
				Q3 <= '0';
			end if;
		end if;	
		if CE = '1' then
			Q1 <= '1'; 
			Q1 <= '1';
			Q1 <= '1';
		end if;
	end process;   
	
end Counter_3;
