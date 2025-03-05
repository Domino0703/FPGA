library IEEE;
use IEEE.std_logic_1164.all; 
use IEEE.STD_LOGIC_UNSIGNED.all;

entity Counter_2 is
	port(
		CLK : in STD_LOGIC;
		RESET : in STD_LOGIC;
		Q : out STD_LOGIC_VECTOR(1 downto 0)
		);
end Counter_2;

--}} End of automatically maintained section

architecture Counter_2 of Counter_2 is
begin
	
	-- enter your statements here --
	process (CLK, RESET)
		variable Qint : STD_LOGIC_VECTOR (1 downto 0);
	begin
		if RESET = '1' then
			Qint := "00"; 
		else
			if CLK'event and CLK = '1' then
				if Qint <2 then
					Qint := Qint+1;
				else
					Qint := "00";
				end if;
			end if;
		end if;
		Q <= Qint;
	end process;
	
end Counter_2;