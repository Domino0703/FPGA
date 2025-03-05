library ieee;
use ieee.STD_LOGIC_UNSIGNED.all;
use ieee.std_logic_1164.all;

-- Add your library and packages declaration here ...

entity top_tb is
end top_tb;

architecture TB_ARCHITECTURE of top_tb is
	-- Component declaration of the tested unit
	component top
		port(
			CLR : in STD_LOGIC;
			CLK : in STD_LOGIC;	  
			SGN : in STD_LOGIC;	
			CE : in STD_LOGIC;	
			MODE_1 : in STD_LOGIC;	
			MODE_2 : in STD_LOGIC;
			MODE_3 : in STD_LOGIC;
			Q : out STD_LOGIC_VECTOR(6 downto 0);
			RED : out STD_LOGIC;
			GREEN : out STD_LOGIC;
			AN : out STD_LOGIC_VECTOR(7 downto 0)
			);
	end component;
	
	-- Stimulus signals - signals mapped to the input and inout ports of tested entity
	signal CLR : STD_LOGIC;
	signal CLK : STD_LOGIC;
	signal CE : STD_LOGIC;
	signal SGN : STD_LOGIC;	 
	signal MODE_1 : STD_LOGIC;
	signal MODE_2 : STD_LOGIC;
	signal MODE_3 : STD_LOGIC;
	-- Observed signals - signals mapped to the output ports of tested entity  
	signal RED : STD_LOGIC;
	signal GREEN : STD_LOGIC;
	signal Q : STD_LOGIC_VECTOR(6 downto 0); 
	signal AN : STD_LOGIC_VECTOR(7 downto 0);
	--Signal is used to stop clock signal generators
	signal END_SIM: BOOLEAN:=FALSE;
	
	-- Add your code here ...
	
begin
	
	-- Unit Under Test port map
	UUT : top
	port map (
		CLR => CLR,
		CLK => CLK,
		CE => CE,
		MODE_1 => MODE_1,
		MODE_2 => MODE_2,
		MODE_3 => MODE_3,
		Q => Q,
		RED => RED,
		GREEN => GREEN,
		SGN => SGN,
		AN => AN
		);
	
	CLOCK_CLK : process
	begin
		--this process was generated based on formula: 0 0 ns, 1 50 ns -r 100 ns
		--wait for <time to next event>; -- <current time>
		if END_SIM = FALSE then
			CLK <= '0';
			wait for 10 ns; --0 fs
		else
			wait;
		end if;
		if END_SIM = FALSE then
			CLK <= '1';
			wait for 2 ns; --2 ns
		else
			wait;
		end if;
	end process;  
	-- Add your stimulus here ... 
	
	STIM_CLR : process
	begin 
		CLR <= '0';
		wait for 600 ns;
		CLR <= '1';
		wait for 20 ns;
		CLR <= '0';
		wait for 1000 ns;
		CLR <= '1';
		wait for 20 ns;
		CLR <= '0';
		wait;
	end process;
	
	STIM_CE : process
	begin
		CE <='0';
		wait for 10 ns;
		CE <= '1';
		wait for 10 ns;
		CE <= '0';
		wait for 100 ns;
		CE <= '1';
		wait for 2000 ns;
		CE <='0';
		wait for 400 ns;
		CE <='1'; 
		wait for 300 ns;
		CE <='0';
		wait for 50 ns;
		CE <='1';
		wait;
	end process;  
	STIM_MODES : process 
	begin 		
		MODE_1 <='1';
		MODE_2 <='1';  
		MODE_3 <='1';
		wait for 10 ns;
		MODE_1 <='0';
		MODE_2 <='0';  
		MODE_3 <='0';
		wait for 500 ns;
		MODE_2 <= '1';
		wait for 100 ns;
		MODE_2 <= '0';
		wait for 500 ns;	 
		MODE_3 <= '1';
		wait for 100 ns;
		MODE_3 <= '0';
		wait;
	end process;
	
end TB_ARCHITECTURE;

configuration TESTBENCH_FOR_top of top_tb is
	for TB_ARCHITECTURE
		for UUT : top
			use entity work.top(top);
		end for;
	end for;
end TESTBENCH_FOR_top;

