-------------------------------------------------------------------------------
--
-- Title       : Decoder_1
-- Design      : Project_PSC_V2
-- Author      : Dominik
-- Company     : AGH
--
-------------------------------------------------------------------------------
--
-- File        : C:\Users\Dominik\Desktop\Project_PSC_V2\src\Decoder_1.vhd
-- Generated   : Tue Jan 25 16:42:03 2022
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
--{entity {Decoder_1} architecture {Decoder_1}}

library IEEE;
use IEEE.std_logic_1164.all;

entity Decoder_1 is
	 port(
		 SGN : in STD_LOGIC;
		 DataIn : in STD_LOGIC_VECTOR(2 downto 0);
		 Output : out STD_LOGIC_VECTOR(6 downto 0)
	     );
end Decoder_1;

--}} End of automatically maintained section

architecture Decoder_1 of Decoder_1 is
begin

	-- enter your statements here -- 
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

end Decoder_1;
