library IEEE;
use IEEE.std_logic_1164.all;

entity Display is
	port(
		CLK_IN : in STD_LOGIC_VECTOR(1 downto 0);
		IN_1 : in STD_LOGIC_VECTOR(2 downto 0);
		IN_2 : in STD_LOGIC_VECTOR(2 downto 0);
		IN_3 : in STD_LOGIC_VECTOR(2 downto 0);
		OUTPUT : out STD_LOGIC_VECTOR(2 downto 0)
		);
end Display;

--}} End of automatically maintained section

architecture Display of Display is 
	Signal Q : STD_LOGIC_VECTOR (2 downto 0);	
begin
	process(CLK_IN)
	begin
		case (CLK_IN) is
			when "00" =>	 
				Q <= IN_1;
			when "01" =>
				Q <= IN_2;
			when "10" =>
				Q <= IN_3;
			when others =>
				Q <= "111";
		end case;
		
	end process;  
	OUTPUT <= Q;
	-- enter your statements here --
	
end Display;