library IEEE;
use IEEE.std_logic_1164.all;	  
use IEEE.STD_LOGIC_UNSIGNED.all;

entity Prescaler_DISP is
	port(
		CLK : in STD_LOGIC;
		CLR : in STD_LOGIC;
		POUT : out STD_LOGIC
		);
end Prescaler_DISP;

--}} End of automatically maintained section

architecture Prescaler_DISP of Prescaler_DISP is
	
	-- enter your statements here --  
	signal DIVIDER: std_logic_vector(17 downto 0);	-- internal divider register 
	constant divide_factor: integer := 200000;			-- divide factor user constant
	-- remember to adjust lenght of DIVIDER register when divide_factor is being changed
	
begin 
	process (CLK, CLR)
	begin
		if CLR = '1' then
			DIVIDER <= (others => '0');
		elsif CLK'event and CLK = '1' then	
				if DIVIDER = (divide_factor-1) then
					DIVIDER <= (others => '0');
				else
					DIVIDER <= DIVIDER + 1;
				end if;
		end if;
	end process;
	
	POUT <= '1' when DIVIDER = (divide_factor-1) else '0';
	
end Prescaler_DISP;