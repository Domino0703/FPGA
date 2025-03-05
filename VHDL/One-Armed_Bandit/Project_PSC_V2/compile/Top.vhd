-------------------------------------------------------------------------------
--
-- Title       : No Title
-- Design      : Project_PSC_V2
-- Author      : Dominik
-- Company     : AGH
--
-------------------------------------------------------------------------------
--
-- File        : C:\Users\Dominik\Desktop\Project_PSC_V2\compile\Top.vhd
-- Generated   : Thu Feb 10 18:14:56 2022
-- From        : C:\Users\Dominik\Desktop\Project_PSC_V2\src\Top.bde
-- By          : Bde2Vhdl ver. 2.6
--
-------------------------------------------------------------------------------
--
-- Description : 
--
-------------------------------------------------------------------------------
-- Design unit header --
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_signed.all;
use IEEE.std_logic_unsigned.all;

entity Top is
  port(
       CLK : in STD_LOGIC;
       CLR : in STD_LOGIC;
       CE : in STD_LOGIC;
       Q : out STD_LOGIC_VECTOR(6 downto 0);
       AN : out STD_LOGIC_VECTOR(7 downto 0);
       SGN : in STD_LOGIC;
       RED : out STD_LOGIC;
       GREEN : out STD_LOGIC;
       MODE_1 : in STD_LOGIC;
       MODE_2 : in STD_LOGIC;
       MODE_3 : in STD_LOGIC
  );
end Top;

architecture Top of Top is

---- Component declarations -----

component Annode
  port(
       DataIn : in STD_LOGIC_VECTOR(1 downto 0);
       Output : out STD_LOGIC_VECTOR(7 downto 0)
  );
end component;
component Compare
  port(
       CE : in STD_LOGIC;
       Q_RED : out STD_LOGIC;
       Q_GREEN : out STD_LOGIC;
       IN_1 : in STD_LOGIC_VECTOR(2 downto 0);
       IN_2 : in STD_LOGIC_VECTOR(2 downto 0);
       IN_3 : in STD_LOGIC_VECTOR(2 downto 0)
  );
end component;
component Counter
  port(
       CLK : in STD_LOGIC;
       RESET : in STD_LOGIC;
       MODE_1 : in STD_LOGIC;
       MODE_2 : in STD_LOGIC;
       MODE_3 : in STD_LOGIC;
       CE : in STD_LOGIC;
       Q : out STD_LOGIC_VECTOR(2 downto 0)
  );
end component;
component Counter_2
  port(
       CLK : in STD_LOGIC;
       RESET : in STD_LOGIC;
       Q : out STD_LOGIC_VECTOR(1 downto 0)
  );
end component;
component Decoder_1
  port(
       SGN : in STD_LOGIC;
       DataIn : in STD_LOGIC_VECTOR(2 downto 0);
       Output : out STD_LOGIC_VECTOR(6 downto 0)
  );
end component;
component Display
  port(
       CLK_IN : in STD_LOGIC_VECTOR(1 downto 0);
       IN_1 : in STD_LOGIC_VECTOR(2 downto 0);
       IN_2 : in STD_LOGIC_VECTOR(2 downto 0);
       IN_3 : in STD_LOGIC_VECTOR(2 downto 0);
       OUTPUT : out STD_LOGIC_VECTOR(2 downto 0)
  );
end component;
component Prescaler_11
  port(
       CLK : in STD_LOGIC;
       CLR : in STD_LOGIC;
       CE : in STD_LOGIC;
       POUT : out STD_LOGIC
  );
end component;
component Prescaler_13
  port(
       CLK : in STD_LOGIC;
       CLR : in STD_LOGIC;
       CE : in STD_LOGIC;
       POUT : out STD_LOGIC
  );
end component;
component Prescaler_17
  port(
       CLK : in STD_LOGIC;
       CLR : in STD_LOGIC;
       CE : in STD_LOGIC;
       POUT : out STD_LOGIC
  );
end component;
component Prescaler_DISP
  port(
       CLK : in STD_LOGIC;
       CLR : in STD_LOGIC;
       POUT : out STD_LOGIC
  );
end component;

---- Signal declarations used on the diagram ----

signal NET3177 : STD_LOGIC;
signal NET3226 : STD_LOGIC;
signal NET3284 : STD_LOGIC;
signal NET3292 : STD_LOGIC;
signal NET3300 : STD_LOGIC;
signal NET3445 : STD_LOGIC;
signal NET3792 : STD_LOGIC;
signal BUS3311 : STD_LOGIC_VECTOR(1 downto 0);
signal BUS3327 : STD_LOGIC_VECTOR(2 downto 0);
signal BUS3362 : STD_LOGIC_VECTOR(2 downto 0);
signal BUS3381 : STD_LOGIC_VECTOR(2 downto 0);
signal BUS3406 : STD_LOGIC_VECTOR(2 downto 0);

begin

----  Component instantiations  ----

U1 : Prescaler_11
  port map(
       CLK => NET3177,
       CLR => NET3445,
       CE => NET3792,
       POUT => NET3284
  );

U10 : Display
  port map(
       CLK_IN => BUS3311,
       IN_1 => BUS3362,
       IN_2 => BUS3327,
       IN_3 => BUS3381,
       OUTPUT => BUS3406
  );

U11 : Annode
  port map(
       DataIn => BUS3311,
       Output => AN
  );

U12 : Decoder_1
  port map(
       SGN => SGN,
       DataIn => BUS3406,
       Output => Q
  );

U13 : Compare
  port map(
       CE => NET3792,
       Q_RED => RED,
       Q_GREEN => GREEN,
       IN_1 => BUS3362,
       IN_2 => BUS3327,
       IN_3 => BUS3381
  );

U2 : Prescaler_13
  port map(
       CLK => NET3177,
       CLR => NET3445,
       CE => NET3792,
       POUT => NET3292
  );

U3 : Prescaler_17
  port map(
       CLK => NET3177,
       CLR => NET3445,
       CE => NET3792,
       POUT => NET3300
  );

U5 : Prescaler_DISP
  port map(
       CLK => NET3177,
       CLR => NET3445,
       POUT => NET3226
  );

U6 : Counter_2
  port map(
       CLK => NET3226,
       RESET => NET3445,
       Q => BUS3311
  );

U7 : Counter
  port map(
       CLK => NET3284,
       RESET => NET3445,
       MODE_1 => MODE_1,
       MODE_2 => MODE_2,
       MODE_3 => MODE_3,
       CE => NET3792,
       Q => BUS3362
  );

U8 : Counter
  port map(
       CLK => NET3292,
       RESET => NET3445,
       MODE_1 => MODE_1,
       MODE_2 => MODE_2,
       MODE_3 => MODE_3,
       CE => NET3792,
       Q => BUS3327
  );

U9 : Counter
  port map(
       CLK => NET3300,
       RESET => NET3445,
       MODE_1 => MODE_1,
       MODE_2 => MODE_2,
       MODE_3 => MODE_3,
       CE => NET3792,
       Q => BUS3381
  );


---- Terminal assignment ----

    -- Inputs terminals
	NET3792 <= CE;
	NET3177 <= CLK;
	NET3445 <= CLR;


end Top;
