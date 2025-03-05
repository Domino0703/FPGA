-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Thu Feb 10 18:42:55 2022
-- Host        : DESKTOP-85IVNNL running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force Top.vhd
-- Design      : Top
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Compare is
  port (
    RED_OBUF : out STD_LOGIC;
    GREEN_OBUF : out STD_LOGIC;
    Q_GREEN1 : in STD_LOGIC;
    RED : in STD_LOGIC;
    CE_IBUF : in STD_LOGIC;
    GREEN : in STD_LOGIC;
    Q_GREEN0 : in STD_LOGIC
  );
end Compare;

architecture STRUCTURE of Compare is
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of Q_GREEN_reg : label is "LDC";
  attribute XILINX_LEGACY_PRIM of Q_RED_reg : label is "LDC";
begin
Q_GREEN_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => CE_IBUF,
      D => GREEN,
      G => Q_GREEN0,
      GE => '1',
      Q => GREEN_OBUF
    );
Q_RED_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => CE_IBUF,
      D => Q_GREEN1,
      G => RED,
      GE => '1',
      Q => RED_OBUF
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Counter is
  port (
    \Qint_reg[0]_0\ : out STD_LOGIC;
    Q_GREEN0 : out STD_LOGIC;
    Q_GREEN1 : out STD_LOGIC;
    \Qint_reg[1]_0\ : out STD_LOGIC;
    BUS3362 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    BUS3381 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    MODE_1_IBUF : in STD_LOGIC;
    MODE_2_IBUF : in STD_LOGIC;
    MODE_3_IBUF : in STD_LOGIC;
    BUS3327 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    CE_IBUF : in STD_LOGIC;
    NET3284 : in STD_LOGIC;
    CLR_IBUF : in STD_LOGIC
  );
end Counter;

architecture STRUCTURE of Counter is
  signal \^bus3362\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^q_green0\ : STD_LOGIC;
  signal \^q_green1\ : STD_LOGIC;
  signal \Qint[0]_i_1_n_0\ : STD_LOGIC;
  signal \Qint[0]_i_2__1_n_0\ : STD_LOGIC;
  signal \Qint[1]_i_1_n_0\ : STD_LOGIC;
  signal \Qint[1]_i_2__2_n_0\ : STD_LOGIC;
  signal \Qint[2]_i_1_n_0\ : STD_LOGIC;
  signal \Qint[2]_i_3__1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Qint[0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \Qint[2]_i_1\ : label is "soft_lutpair7";
begin
  BUS3362(2 downto 0) <= \^bus3362\(2 downto 0);
  Q_GREEN0 <= \^q_green0\;
  Q_GREEN1 <= \^q_green1\;
Q_GREEN_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \^bus3362\(1),
      I1 => BUS3381(1),
      I2 => \^bus3362\(2),
      I3 => BUS3381(2),
      I4 => BUS3381(0),
      I5 => \^bus3362\(0),
      O => \Qint_reg[1]_0\
    );
Q_GREEN_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^bus3362\(0),
      I1 => BUS3327(0),
      I2 => BUS3327(2),
      I3 => \^bus3362\(2),
      I4 => BUS3327(1),
      I5 => \^bus3362\(1),
      O => \^q_green0\
    );
Q_RED_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^bus3362\(0),
      I1 => BUS3381(0),
      I2 => BUS3381(2),
      I3 => \^bus3362\(2),
      I4 => BUS3381(1),
      I5 => \^bus3362\(1),
      O => \^q_green1\
    );
Q_RED_reg_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q_green0\,
      I1 => \^q_green1\,
      O => \Qint_reg[0]_0\
    );
\Qint[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \Qint[0]_i_2__1_n_0\,
      I1 => CE_IBUF,
      I2 => \^bus3362\(0),
      O => \Qint[0]_i_1_n_0\
    );
\Qint[0]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000EFE9FF"
    )
        port map (
      I0 => MODE_1_IBUF,
      I1 => MODE_2_IBUF,
      I2 => MODE_3_IBUF,
      I3 => \^bus3362\(2),
      I4 => \^bus3362\(1),
      I5 => \^bus3362\(0),
      O => \Qint[0]_i_2__1_n_0\
    );
\Qint[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \Qint[1]_i_2__2_n_0\,
      I1 => CE_IBUF,
      I2 => \^bus3362\(1),
      O => \Qint[1]_i_1_n_0\
    );
\Qint[1]_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000FF00EF0000"
    )
        port map (
      I0 => MODE_1_IBUF,
      I1 => MODE_2_IBUF,
      I2 => MODE_3_IBUF,
      I3 => \^bus3362\(2),
      I4 => \^bus3362\(1),
      I5 => \^bus3362\(0),
      O => \Qint[1]_i_2__2_n_0\
    );
\Qint[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \Qint[2]_i_3__1_n_0\,
      I1 => CE_IBUF,
      I2 => \^bus3362\(2),
      O => \Qint[2]_i_1_n_0\
    );
\Qint[2]_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00EB00000000E900"
    )
        port map (
      I0 => MODE_1_IBUF,
      I1 => MODE_2_IBUF,
      I2 => MODE_3_IBUF,
      I3 => \^bus3362\(2),
      I4 => \^bus3362\(1),
      I5 => \^bus3362\(0),
      O => \Qint[2]_i_3__1_n_0\
    );
\Qint_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => NET3284,
      CE => '1',
      CLR => CLR_IBUF,
      D => \Qint[0]_i_1_n_0\,
      Q => \^bus3362\(0)
    );
\Qint_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => NET3284,
      CE => '1',
      CLR => CLR_IBUF,
      D => \Qint[1]_i_1_n_0\,
      Q => \^bus3362\(1)
    );
\Qint_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => NET3284,
      CE => '1',
      CLR => CLR_IBUF,
      D => \Qint[2]_i_1_n_0\,
      Q => \^bus3362\(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Counter_0 is
  port (
    BUS3327 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    MODE_1_IBUF : in STD_LOGIC;
    MODE_2_IBUF : in STD_LOGIC;
    MODE_3_IBUF : in STD_LOGIC;
    CE_IBUF : in STD_LOGIC;
    NET3292 : in STD_LOGIC;
    CLR_IBUF : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Counter_0 : entity is "Counter";
end Counter_0;

architecture STRUCTURE of Counter_0 is
  signal \^bus3327\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \Qint[0]_i_1_n_0\ : STD_LOGIC;
  signal \Qint[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \Qint[1]_i_1_n_0\ : STD_LOGIC;
  signal \Qint[1]_i_2__1_n_0\ : STD_LOGIC;
  signal \Qint[2]_i_1_n_0\ : STD_LOGIC;
  signal \Qint[2]_i_3__0_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Qint[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \Qint[2]_i_1\ : label is "soft_lutpair8";
begin
  BUS3327(2 downto 0) <= \^bus3327\(2 downto 0);
\Qint[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \Qint[0]_i_2__0_n_0\,
      I1 => CE_IBUF,
      I2 => \^bus3327\(0),
      O => \Qint[0]_i_1_n_0\
    );
\Qint[0]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000EFE9FF"
    )
        port map (
      I0 => MODE_1_IBUF,
      I1 => MODE_2_IBUF,
      I2 => MODE_3_IBUF,
      I3 => \^bus3327\(2),
      I4 => \^bus3327\(1),
      I5 => \^bus3327\(0),
      O => \Qint[0]_i_2__0_n_0\
    );
\Qint[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \Qint[1]_i_2__1_n_0\,
      I1 => CE_IBUF,
      I2 => \^bus3327\(1),
      O => \Qint[1]_i_1_n_0\
    );
\Qint[1]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000FF00EF0000"
    )
        port map (
      I0 => MODE_1_IBUF,
      I1 => MODE_2_IBUF,
      I2 => MODE_3_IBUF,
      I3 => \^bus3327\(2),
      I4 => \^bus3327\(1),
      I5 => \^bus3327\(0),
      O => \Qint[1]_i_2__1_n_0\
    );
\Qint[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \Qint[2]_i_3__0_n_0\,
      I1 => CE_IBUF,
      I2 => \^bus3327\(2),
      O => \Qint[2]_i_1_n_0\
    );
\Qint[2]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00EB00000000E900"
    )
        port map (
      I0 => MODE_1_IBUF,
      I1 => MODE_2_IBUF,
      I2 => MODE_3_IBUF,
      I3 => \^bus3327\(2),
      I4 => \^bus3327\(1),
      I5 => \^bus3327\(0),
      O => \Qint[2]_i_3__0_n_0\
    );
\Qint_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => NET3292,
      CE => '1',
      CLR => CLR_IBUF,
      D => \Qint[0]_i_1_n_0\,
      Q => \^bus3327\(0)
    );
\Qint_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => NET3292,
      CE => '1',
      CLR => CLR_IBUF,
      D => \Qint[1]_i_1_n_0\,
      Q => \^bus3327\(1)
    );
\Qint_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => NET3292,
      CE => '1',
      CLR => CLR_IBUF,
      D => \Qint[2]_i_1_n_0\,
      Q => \^bus3327\(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Counter_1 is
  port (
    BUS3381 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    MODE_1_IBUF : in STD_LOGIC;
    MODE_2_IBUF : in STD_LOGIC;
    MODE_3_IBUF : in STD_LOGIC;
    CE_IBUF : in STD_LOGIC;
    NET3300 : in STD_LOGIC;
    CLR_IBUF : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Counter_1 : entity is "Counter";
end Counter_1;

architecture STRUCTURE of Counter_1 is
  signal \^bus3381\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \Qint[0]_i_1_n_0\ : STD_LOGIC;
  signal \Qint[0]_i_2_n_0\ : STD_LOGIC;
  signal \Qint[1]_i_1_n_0\ : STD_LOGIC;
  signal \Qint[1]_i_2__0_n_0\ : STD_LOGIC;
  signal \Qint[2]_i_1_n_0\ : STD_LOGIC;
  signal \Qint[2]_i_3_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Qint[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \Qint[2]_i_1\ : label is "soft_lutpair9";
begin
  BUS3381(2 downto 0) <= \^bus3381\(2 downto 0);
\Qint[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \Qint[0]_i_2_n_0\,
      I1 => CE_IBUF,
      I2 => \^bus3381\(0),
      O => \Qint[0]_i_1_n_0\
    );
\Qint[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000EFE9FF"
    )
        port map (
      I0 => MODE_1_IBUF,
      I1 => MODE_2_IBUF,
      I2 => MODE_3_IBUF,
      I3 => \^bus3381\(2),
      I4 => \^bus3381\(1),
      I5 => \^bus3381\(0),
      O => \Qint[0]_i_2_n_0\
    );
\Qint[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \Qint[1]_i_2__0_n_0\,
      I1 => CE_IBUF,
      I2 => \^bus3381\(1),
      O => \Qint[1]_i_1_n_0\
    );
\Qint[1]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000FF00EF0000"
    )
        port map (
      I0 => MODE_1_IBUF,
      I1 => MODE_2_IBUF,
      I2 => MODE_3_IBUF,
      I3 => \^bus3381\(2),
      I4 => \^bus3381\(1),
      I5 => \^bus3381\(0),
      O => \Qint[1]_i_2__0_n_0\
    );
\Qint[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \Qint[2]_i_3_n_0\,
      I1 => CE_IBUF,
      I2 => \^bus3381\(2),
      O => \Qint[2]_i_1_n_0\
    );
\Qint[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00EB00000000E900"
    )
        port map (
      I0 => MODE_1_IBUF,
      I1 => MODE_2_IBUF,
      I2 => MODE_3_IBUF,
      I3 => \^bus3381\(2),
      I4 => \^bus3381\(1),
      I5 => \^bus3381\(0),
      O => \Qint[2]_i_3_n_0\
    );
\Qint_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => NET3300,
      CE => '1',
      CLR => CLR_IBUF,
      D => \Qint[0]_i_1_n_0\,
      Q => \^bus3381\(0)
    );
\Qint_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => NET3300,
      CE => '1',
      CLR => CLR_IBUF,
      D => \Qint[1]_i_1_n_0\,
      Q => \^bus3381\(1)
    );
\Qint_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => NET3300,
      CE => '1',
      CLR => CLR_IBUF,
      D => \Qint[2]_i_1_n_0\,
      Q => \^bus3381\(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Counter_2 is
  port (
    Q_OBUF : out STD_LOGIC_VECTOR ( 6 downto 0 );
    AN_OBUF : out STD_LOGIC_VECTOR ( 2 downto 0 );
    SGN_IBUF : in STD_LOGIC;
    BUS3381 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    BUS3362 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    BUS3327 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    CLK : in STD_LOGIC;
    CLR_IBUF : in STD_LOGIC
  );
end Counter_2;

architecture STRUCTURE of Counter_2 is
  signal BUS3311 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal BUS3406 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \Qint[0]_i_1_n_0\ : STD_LOGIC;
  signal \Qint[1]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \AN_OBUF[5]_inst_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \AN_OBUF[6]_inst_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \AN_OBUF[7]_inst_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \Q_OBUF[0]_inst_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \Q_OBUF[1]_inst_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \Q_OBUF[2]_inst_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \Q_OBUF[3]_inst_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \Q_OBUF[4]_inst_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \Q_OBUF[6]_inst_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \Q_OBUF[6]_inst_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \Q_OBUF[6]_inst_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \Q_OBUF[6]_inst_i_4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \Qint[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \Qint[1]_i_1\ : label is "soft_lutpair6";
begin
\AN_OBUF[5]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => BUS3311(0),
      I1 => BUS3311(1),
      O => AN_OBUF(0)
    );
\AN_OBUF[6]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => BUS3311(1),
      I1 => BUS3311(0),
      O => AN_OBUF(1)
    );
\AN_OBUF[7]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => BUS3311(1),
      I1 => BUS3311(0),
      O => AN_OBUF(2)
    );
\Q_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4A14"
    )
        port map (
      I0 => BUS3406(1),
      I1 => BUS3406(0),
      I2 => BUS3406(2),
      I3 => SGN_IBUF,
      O => Q_OBUF(0)
    );
\Q_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"982A"
    )
        port map (
      I0 => SGN_IBUF,
      I1 => BUS3406(1),
      I2 => BUS3406(0),
      I3 => BUS3406(2),
      O => Q_OBUF(1)
    );
\Q_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C034"
    )
        port map (
      I0 => BUS3406(0),
      I1 => BUS3406(1),
      I2 => SGN_IBUF,
      I3 => BUS3406(2),
      O => Q_OBUF(2)
    );
\Q_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0D42"
    )
        port map (
      I0 => BUS3406(0),
      I1 => SGN_IBUF,
      I2 => BUS3406(1),
      I3 => BUS3406(2),
      O => Q_OBUF(3)
    );
\Q_OBUF[4]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"87F2"
    )
        port map (
      I0 => BUS3406(2),
      I1 => BUS3406(1),
      I2 => SGN_IBUF,
      I3 => BUS3406(0),
      O => Q_OBUF(4)
    );
\Q_OBUF[5]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E532"
    )
        port map (
      I0 => BUS3406(0),
      I1 => BUS3406(2),
      I2 => BUS3406(1),
      I3 => SGN_IBUF,
      O => Q_OBUF(5)
    );
\Q_OBUF[6]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"520D"
    )
        port map (
      I0 => SGN_IBUF,
      I1 => BUS3406(0),
      I2 => BUS3406(1),
      I3 => BUS3406(2),
      O => Q_OBUF(6)
    );
\Q_OBUF[6]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB8CCB8"
    )
        port map (
      I0 => BUS3381(0),
      I1 => BUS3311(1),
      I2 => BUS3362(0),
      I3 => BUS3311(0),
      I4 => BUS3327(0),
      O => BUS3406(0)
    );
\Q_OBUF[6]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB8CCB8"
    )
        port map (
      I0 => BUS3381(1),
      I1 => BUS3311(1),
      I2 => BUS3362(1),
      I3 => BUS3311(0),
      I4 => BUS3327(1),
      O => BUS3406(1)
    );
\Q_OBUF[6]_inst_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB8CCB8"
    )
        port map (
      I0 => BUS3381(2),
      I1 => BUS3311(1),
      I2 => BUS3362(2),
      I3 => BUS3311(0),
      I4 => BUS3327(2),
      O => BUS3406(2)
    );
\Qint[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => BUS3311(0),
      I1 => BUS3311(1),
      O => \Qint[0]_i_1_n_0\
    );
\Qint[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => BUS3311(0),
      I1 => BUS3311(1),
      O => \Qint[1]_i_1_n_0\
    );
\Qint_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => CLR_IBUF,
      D => \Qint[0]_i_1_n_0\,
      Q => BUS3311(0)
    );
\Qint_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => CLR_IBUF,
      D => \Qint[1]_i_1_n_0\,
      Q => BUS3311(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Prescaler_11 is
  port (
    NET3284 : out STD_LOGIC;
    CE_IBUF : in STD_LOGIC;
    CLK_IBUF_BUFG : in STD_LOGIC;
    CLR_IBUF : in STD_LOGIC
  );
end Prescaler_11;

architecture STRUCTURE of Prescaler_11 is
  signal \DIVIDER[0]_i_2_n_0\ : STD_LOGIC;
  signal \DIVIDER[0]_i_3_n_0\ : STD_LOGIC;
  signal \DIVIDER[0]_i_4_n_0\ : STD_LOGIC;
  signal \DIVIDER[0]_i_5_n_0\ : STD_LOGIC;
  signal \DIVIDER[0]_i_6_n_0\ : STD_LOGIC;
  signal \DIVIDER[12]_i_2_n_0\ : STD_LOGIC;
  signal \DIVIDER[12]_i_3_n_0\ : STD_LOGIC;
  signal \DIVIDER[12]_i_4_n_0\ : STD_LOGIC;
  signal \DIVIDER[12]_i_5_n_0\ : STD_LOGIC;
  signal \DIVIDER[16]_i_2_n_0\ : STD_LOGIC;
  signal \DIVIDER[16]_i_3_n_0\ : STD_LOGIC;
  signal \DIVIDER[16]_i_4_n_0\ : STD_LOGIC;
  signal \DIVIDER[16]_i_5_n_0\ : STD_LOGIC;
  signal \DIVIDER[20]_i_2_n_0\ : STD_LOGIC;
  signal \DIVIDER[20]_i_3_n_0\ : STD_LOGIC;
  signal \DIVIDER[20]_i_4_n_0\ : STD_LOGIC;
  signal \DIVIDER[4]_i_2_n_0\ : STD_LOGIC;
  signal \DIVIDER[4]_i_3_n_0\ : STD_LOGIC;
  signal \DIVIDER[4]_i_4_n_0\ : STD_LOGIC;
  signal \DIVIDER[4]_i_5_n_0\ : STD_LOGIC;
  signal \DIVIDER[8]_i_2_n_0\ : STD_LOGIC;
  signal \DIVIDER[8]_i_3_n_0\ : STD_LOGIC;
  signal \DIVIDER[8]_i_4_n_0\ : STD_LOGIC;
  signal \DIVIDER[8]_i_5_n_0\ : STD_LOGIC;
  signal DIVIDER_reg : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \DIVIDER_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \DIVIDER_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \DIVIDER_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \DIVIDER_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \DIVIDER_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \DIVIDER_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \DIVIDER_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \DIVIDER_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \DIVIDER_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \DIVIDER_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \DIVIDER_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \DIVIDER_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \DIVIDER_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \DIVIDER_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \DIVIDER_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \DIVIDER_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \DIVIDER_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \DIVIDER_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \DIVIDER_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \DIVIDER_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \DIVIDER_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \DIVIDER_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \DIVIDER_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \DIVIDER_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \DIVIDER_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \DIVIDER_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \DIVIDER_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \DIVIDER_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \DIVIDER_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \DIVIDER_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \DIVIDER_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \DIVIDER_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \DIVIDER_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \DIVIDER_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \DIVIDER_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \DIVIDER_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \DIVIDER_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \DIVIDER_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \DIVIDER_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \DIVIDER_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \DIVIDER_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \DIVIDER_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \DIVIDER_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \DIVIDER_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \DIVIDER_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \Qint[2]_i_4_n_0\ : STD_LOGIC;
  signal \Qint[2]_i_5_n_0\ : STD_LOGIC;
  signal \Qint[2]_i_6_n_0\ : STD_LOGIC;
  signal \Qint[2]_i_7_n_0\ : STD_LOGIC;
  signal \NLW_DIVIDER_reg[20]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_DIVIDER_reg[20]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
\DIVIDER[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(0),
      I1 => \Qint[2]_i_4_n_0\,
      I2 => \Qint[2]_i_5_n_0\,
      I3 => \Qint[2]_i_6_n_0\,
      I4 => \Qint[2]_i_7_n_0\,
      O => \DIVIDER[0]_i_2_n_0\
    );
\DIVIDER[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(3),
      I1 => \Qint[2]_i_4_n_0\,
      I2 => \Qint[2]_i_5_n_0\,
      I3 => \Qint[2]_i_6_n_0\,
      I4 => \Qint[2]_i_7_n_0\,
      O => \DIVIDER[0]_i_3_n_0\
    );
\DIVIDER[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(2),
      I1 => \Qint[2]_i_4_n_0\,
      I2 => \Qint[2]_i_5_n_0\,
      I3 => \Qint[2]_i_6_n_0\,
      I4 => \Qint[2]_i_7_n_0\,
      O => \DIVIDER[0]_i_4_n_0\
    );
\DIVIDER[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(1),
      I1 => \Qint[2]_i_4_n_0\,
      I2 => \Qint[2]_i_5_n_0\,
      I3 => \Qint[2]_i_6_n_0\,
      I4 => \Qint[2]_i_7_n_0\,
      O => \DIVIDER[0]_i_5_n_0\
    );
\DIVIDER[0]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55551555"
    )
        port map (
      I0 => DIVIDER_reg(0),
      I1 => \Qint[2]_i_4_n_0\,
      I2 => \Qint[2]_i_5_n_0\,
      I3 => \Qint[2]_i_6_n_0\,
      I4 => \Qint[2]_i_7_n_0\,
      O => \DIVIDER[0]_i_6_n_0\
    );
\DIVIDER[12]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(15),
      I1 => \Qint[2]_i_4_n_0\,
      I2 => \Qint[2]_i_5_n_0\,
      I3 => \Qint[2]_i_6_n_0\,
      I4 => \Qint[2]_i_7_n_0\,
      O => \DIVIDER[12]_i_2_n_0\
    );
\DIVIDER[12]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(14),
      I1 => \Qint[2]_i_4_n_0\,
      I2 => \Qint[2]_i_5_n_0\,
      I3 => \Qint[2]_i_6_n_0\,
      I4 => \Qint[2]_i_7_n_0\,
      O => \DIVIDER[12]_i_3_n_0\
    );
\DIVIDER[12]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(13),
      I1 => \Qint[2]_i_4_n_0\,
      I2 => \Qint[2]_i_5_n_0\,
      I3 => \Qint[2]_i_6_n_0\,
      I4 => \Qint[2]_i_7_n_0\,
      O => \DIVIDER[12]_i_4_n_0\
    );
\DIVIDER[12]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(12),
      I1 => \Qint[2]_i_4_n_0\,
      I2 => \Qint[2]_i_5_n_0\,
      I3 => \Qint[2]_i_6_n_0\,
      I4 => \Qint[2]_i_7_n_0\,
      O => \DIVIDER[12]_i_5_n_0\
    );
\DIVIDER[16]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(19),
      I1 => \Qint[2]_i_4_n_0\,
      I2 => \Qint[2]_i_5_n_0\,
      I3 => \Qint[2]_i_6_n_0\,
      I4 => \Qint[2]_i_7_n_0\,
      O => \DIVIDER[16]_i_2_n_0\
    );
\DIVIDER[16]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(18),
      I1 => \Qint[2]_i_4_n_0\,
      I2 => \Qint[2]_i_5_n_0\,
      I3 => \Qint[2]_i_6_n_0\,
      I4 => \Qint[2]_i_7_n_0\,
      O => \DIVIDER[16]_i_3_n_0\
    );
\DIVIDER[16]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(17),
      I1 => \Qint[2]_i_4_n_0\,
      I2 => \Qint[2]_i_5_n_0\,
      I3 => \Qint[2]_i_6_n_0\,
      I4 => \Qint[2]_i_7_n_0\,
      O => \DIVIDER[16]_i_4_n_0\
    );
\DIVIDER[16]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(16),
      I1 => \Qint[2]_i_4_n_0\,
      I2 => \Qint[2]_i_5_n_0\,
      I3 => \Qint[2]_i_6_n_0\,
      I4 => \Qint[2]_i_7_n_0\,
      O => \DIVIDER[16]_i_5_n_0\
    );
\DIVIDER[20]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(22),
      I1 => \Qint[2]_i_4_n_0\,
      I2 => \Qint[2]_i_5_n_0\,
      I3 => \Qint[2]_i_6_n_0\,
      I4 => \Qint[2]_i_7_n_0\,
      O => \DIVIDER[20]_i_2_n_0\
    );
\DIVIDER[20]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(21),
      I1 => \Qint[2]_i_4_n_0\,
      I2 => \Qint[2]_i_5_n_0\,
      I3 => \Qint[2]_i_6_n_0\,
      I4 => \Qint[2]_i_7_n_0\,
      O => \DIVIDER[20]_i_3_n_0\
    );
\DIVIDER[20]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(20),
      I1 => \Qint[2]_i_4_n_0\,
      I2 => \Qint[2]_i_5_n_0\,
      I3 => \Qint[2]_i_6_n_0\,
      I4 => \Qint[2]_i_7_n_0\,
      O => \DIVIDER[20]_i_4_n_0\
    );
\DIVIDER[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(7),
      I1 => \Qint[2]_i_4_n_0\,
      I2 => \Qint[2]_i_5_n_0\,
      I3 => \Qint[2]_i_6_n_0\,
      I4 => \Qint[2]_i_7_n_0\,
      O => \DIVIDER[4]_i_2_n_0\
    );
\DIVIDER[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(6),
      I1 => \Qint[2]_i_4_n_0\,
      I2 => \Qint[2]_i_5_n_0\,
      I3 => \Qint[2]_i_6_n_0\,
      I4 => \Qint[2]_i_7_n_0\,
      O => \DIVIDER[4]_i_3_n_0\
    );
\DIVIDER[4]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(5),
      I1 => \Qint[2]_i_4_n_0\,
      I2 => \Qint[2]_i_5_n_0\,
      I3 => \Qint[2]_i_6_n_0\,
      I4 => \Qint[2]_i_7_n_0\,
      O => \DIVIDER[4]_i_4_n_0\
    );
\DIVIDER[4]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(4),
      I1 => \Qint[2]_i_4_n_0\,
      I2 => \Qint[2]_i_5_n_0\,
      I3 => \Qint[2]_i_6_n_0\,
      I4 => \Qint[2]_i_7_n_0\,
      O => \DIVIDER[4]_i_5_n_0\
    );
\DIVIDER[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(11),
      I1 => \Qint[2]_i_4_n_0\,
      I2 => \Qint[2]_i_5_n_0\,
      I3 => \Qint[2]_i_6_n_0\,
      I4 => \Qint[2]_i_7_n_0\,
      O => \DIVIDER[8]_i_2_n_0\
    );
\DIVIDER[8]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(10),
      I1 => \Qint[2]_i_4_n_0\,
      I2 => \Qint[2]_i_5_n_0\,
      I3 => \Qint[2]_i_6_n_0\,
      I4 => \Qint[2]_i_7_n_0\,
      O => \DIVIDER[8]_i_3_n_0\
    );
\DIVIDER[8]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(9),
      I1 => \Qint[2]_i_4_n_0\,
      I2 => \Qint[2]_i_5_n_0\,
      I3 => \Qint[2]_i_6_n_0\,
      I4 => \Qint[2]_i_7_n_0\,
      O => \DIVIDER[8]_i_4_n_0\
    );
\DIVIDER[8]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(8),
      I1 => \Qint[2]_i_4_n_0\,
      I2 => \Qint[2]_i_5_n_0\,
      I3 => \Qint[2]_i_6_n_0\,
      I4 => \Qint[2]_i_7_n_0\,
      O => \DIVIDER[8]_i_5_n_0\
    );
\DIVIDER_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \DIVIDER_reg[0]_i_1_n_7\,
      Q => DIVIDER_reg(0)
    );
\DIVIDER_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \DIVIDER_reg[0]_i_1_n_0\,
      CO(2) => \DIVIDER_reg[0]_i_1_n_1\,
      CO(1) => \DIVIDER_reg[0]_i_1_n_2\,
      CO(0) => \DIVIDER_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \DIVIDER[0]_i_2_n_0\,
      O(3) => \DIVIDER_reg[0]_i_1_n_4\,
      O(2) => \DIVIDER_reg[0]_i_1_n_5\,
      O(1) => \DIVIDER_reg[0]_i_1_n_6\,
      O(0) => \DIVIDER_reg[0]_i_1_n_7\,
      S(3) => \DIVIDER[0]_i_3_n_0\,
      S(2) => \DIVIDER[0]_i_4_n_0\,
      S(1) => \DIVIDER[0]_i_5_n_0\,
      S(0) => \DIVIDER[0]_i_6_n_0\
    );
\DIVIDER_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \DIVIDER_reg[8]_i_1_n_5\,
      Q => DIVIDER_reg(10)
    );
\DIVIDER_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \DIVIDER_reg[8]_i_1_n_4\,
      Q => DIVIDER_reg(11)
    );
\DIVIDER_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \DIVIDER_reg[12]_i_1_n_7\,
      Q => DIVIDER_reg(12)
    );
\DIVIDER_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \DIVIDER_reg[8]_i_1_n_0\,
      CO(3) => \DIVIDER_reg[12]_i_1_n_0\,
      CO(2) => \DIVIDER_reg[12]_i_1_n_1\,
      CO(1) => \DIVIDER_reg[12]_i_1_n_2\,
      CO(0) => \DIVIDER_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \DIVIDER_reg[12]_i_1_n_4\,
      O(2) => \DIVIDER_reg[12]_i_1_n_5\,
      O(1) => \DIVIDER_reg[12]_i_1_n_6\,
      O(0) => \DIVIDER_reg[12]_i_1_n_7\,
      S(3) => \DIVIDER[12]_i_2_n_0\,
      S(2) => \DIVIDER[12]_i_3_n_0\,
      S(1) => \DIVIDER[12]_i_4_n_0\,
      S(0) => \DIVIDER[12]_i_5_n_0\
    );
\DIVIDER_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \DIVIDER_reg[12]_i_1_n_6\,
      Q => DIVIDER_reg(13)
    );
\DIVIDER_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \DIVIDER_reg[12]_i_1_n_5\,
      Q => DIVIDER_reg(14)
    );
\DIVIDER_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \DIVIDER_reg[12]_i_1_n_4\,
      Q => DIVIDER_reg(15)
    );
\DIVIDER_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \DIVIDER_reg[16]_i_1_n_7\,
      Q => DIVIDER_reg(16)
    );
\DIVIDER_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \DIVIDER_reg[12]_i_1_n_0\,
      CO(3) => \DIVIDER_reg[16]_i_1_n_0\,
      CO(2) => \DIVIDER_reg[16]_i_1_n_1\,
      CO(1) => \DIVIDER_reg[16]_i_1_n_2\,
      CO(0) => \DIVIDER_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \DIVIDER_reg[16]_i_1_n_4\,
      O(2) => \DIVIDER_reg[16]_i_1_n_5\,
      O(1) => \DIVIDER_reg[16]_i_1_n_6\,
      O(0) => \DIVIDER_reg[16]_i_1_n_7\,
      S(3) => \DIVIDER[16]_i_2_n_0\,
      S(2) => \DIVIDER[16]_i_3_n_0\,
      S(1) => \DIVIDER[16]_i_4_n_0\,
      S(0) => \DIVIDER[16]_i_5_n_0\
    );
\DIVIDER_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \DIVIDER_reg[16]_i_1_n_6\,
      Q => DIVIDER_reg(17)
    );
\DIVIDER_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \DIVIDER_reg[16]_i_1_n_5\,
      Q => DIVIDER_reg(18)
    );
\DIVIDER_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \DIVIDER_reg[16]_i_1_n_4\,
      Q => DIVIDER_reg(19)
    );
\DIVIDER_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \DIVIDER_reg[0]_i_1_n_6\,
      Q => DIVIDER_reg(1)
    );
\DIVIDER_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \DIVIDER_reg[20]_i_1_n_7\,
      Q => DIVIDER_reg(20)
    );
\DIVIDER_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \DIVIDER_reg[16]_i_1_n_0\,
      CO(3 downto 2) => \NLW_DIVIDER_reg[20]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \DIVIDER_reg[20]_i_1_n_2\,
      CO(0) => \DIVIDER_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_DIVIDER_reg[20]_i_1_O_UNCONNECTED\(3),
      O(2) => \DIVIDER_reg[20]_i_1_n_5\,
      O(1) => \DIVIDER_reg[20]_i_1_n_6\,
      O(0) => \DIVIDER_reg[20]_i_1_n_7\,
      S(3) => '0',
      S(2) => \DIVIDER[20]_i_2_n_0\,
      S(1) => \DIVIDER[20]_i_3_n_0\,
      S(0) => \DIVIDER[20]_i_4_n_0\
    );
\DIVIDER_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \DIVIDER_reg[20]_i_1_n_6\,
      Q => DIVIDER_reg(21)
    );
\DIVIDER_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \DIVIDER_reg[20]_i_1_n_5\,
      Q => DIVIDER_reg(22)
    );
\DIVIDER_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \DIVIDER_reg[0]_i_1_n_5\,
      Q => DIVIDER_reg(2)
    );
\DIVIDER_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \DIVIDER_reg[0]_i_1_n_4\,
      Q => DIVIDER_reg(3)
    );
\DIVIDER_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \DIVIDER_reg[4]_i_1_n_7\,
      Q => DIVIDER_reg(4)
    );
\DIVIDER_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \DIVIDER_reg[0]_i_1_n_0\,
      CO(3) => \DIVIDER_reg[4]_i_1_n_0\,
      CO(2) => \DIVIDER_reg[4]_i_1_n_1\,
      CO(1) => \DIVIDER_reg[4]_i_1_n_2\,
      CO(0) => \DIVIDER_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \DIVIDER_reg[4]_i_1_n_4\,
      O(2) => \DIVIDER_reg[4]_i_1_n_5\,
      O(1) => \DIVIDER_reg[4]_i_1_n_6\,
      O(0) => \DIVIDER_reg[4]_i_1_n_7\,
      S(3) => \DIVIDER[4]_i_2_n_0\,
      S(2) => \DIVIDER[4]_i_3_n_0\,
      S(1) => \DIVIDER[4]_i_4_n_0\,
      S(0) => \DIVIDER[4]_i_5_n_0\
    );
\DIVIDER_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \DIVIDER_reg[4]_i_1_n_6\,
      Q => DIVIDER_reg(5)
    );
\DIVIDER_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \DIVIDER_reg[4]_i_1_n_5\,
      Q => DIVIDER_reg(6)
    );
\DIVIDER_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \DIVIDER_reg[4]_i_1_n_4\,
      Q => DIVIDER_reg(7)
    );
\DIVIDER_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \DIVIDER_reg[8]_i_1_n_7\,
      Q => DIVIDER_reg(8)
    );
\DIVIDER_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \DIVIDER_reg[4]_i_1_n_0\,
      CO(3) => \DIVIDER_reg[8]_i_1_n_0\,
      CO(2) => \DIVIDER_reg[8]_i_1_n_1\,
      CO(1) => \DIVIDER_reg[8]_i_1_n_2\,
      CO(0) => \DIVIDER_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \DIVIDER_reg[8]_i_1_n_4\,
      O(2) => \DIVIDER_reg[8]_i_1_n_5\,
      O(1) => \DIVIDER_reg[8]_i_1_n_6\,
      O(0) => \DIVIDER_reg[8]_i_1_n_7\,
      S(3) => \DIVIDER[8]_i_2_n_0\,
      S(2) => \DIVIDER[8]_i_3_n_0\,
      S(1) => \DIVIDER[8]_i_4_n_0\,
      S(0) => \DIVIDER[8]_i_5_n_0\
    );
\DIVIDER_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \DIVIDER_reg[8]_i_1_n_6\,
      Q => DIVIDER_reg(9)
    );
\Qint[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => \Qint[2]_i_4_n_0\,
      I1 => \Qint[2]_i_5_n_0\,
      I2 => \Qint[2]_i_6_n_0\,
      I3 => \Qint[2]_i_7_n_0\,
      I4 => CE_IBUF,
      O => NET3284
    );
\Qint[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => DIVIDER_reg(8),
      I1 => DIVIDER_reg(9),
      I2 => DIVIDER_reg(11),
      I3 => DIVIDER_reg(6),
      I4 => DIVIDER_reg(1),
      I5 => DIVIDER_reg(3),
      O => \Qint[2]_i_4_n_0\
    );
\Qint[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400000000000000"
    )
        port map (
      I0 => DIVIDER_reg(2),
      I1 => DIVIDER_reg(22),
      I2 => DIVIDER_reg(0),
      I3 => DIVIDER_reg(19),
      I4 => DIVIDER_reg(14),
      I5 => DIVIDER_reg(18),
      O => \Qint[2]_i_5_n_0\
    );
\Qint[2]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => DIVIDER_reg(21),
      I1 => DIVIDER_reg(20),
      I2 => DIVIDER_reg(15),
      I3 => DIVIDER_reg(16),
      I4 => DIVIDER_reg(17),
      O => \Qint[2]_i_6_n_0\
    );
\Qint[2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => DIVIDER_reg(7),
      I1 => DIVIDER_reg(4),
      I2 => DIVIDER_reg(5),
      I3 => DIVIDER_reg(13),
      I4 => DIVIDER_reg(10),
      I5 => DIVIDER_reg(12),
      O => \Qint[2]_i_7_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Prescaler_13 is
  port (
    NET3292 : out STD_LOGIC;
    CE_IBUF : in STD_LOGIC;
    CLK_IBUF_BUFG : in STD_LOGIC;
    CLR_IBUF : in STD_LOGIC
  );
end Prescaler_13;

architecture STRUCTURE of Prescaler_13 is
  signal \DIVIDER[0]_i_2__1_n_0\ : STD_LOGIC;
  signal \DIVIDER[0]_i_3__1_n_0\ : STD_LOGIC;
  signal \DIVIDER[0]_i_4__1_n_0\ : STD_LOGIC;
  signal \DIVIDER[0]_i_5__1_n_0\ : STD_LOGIC;
  signal \DIVIDER[0]_i_6__1_n_0\ : STD_LOGIC;
  signal \DIVIDER[12]_i_2__1_n_0\ : STD_LOGIC;
  signal \DIVIDER[12]_i_3__1_n_0\ : STD_LOGIC;
  signal \DIVIDER[12]_i_4__1_n_0\ : STD_LOGIC;
  signal \DIVIDER[12]_i_5__1_n_0\ : STD_LOGIC;
  signal \DIVIDER[16]_i_2__1_n_0\ : STD_LOGIC;
  signal \DIVIDER[16]_i_3__1_n_0\ : STD_LOGIC;
  signal \DIVIDER[16]_i_4__0_n_0\ : STD_LOGIC;
  signal \DIVIDER[16]_i_5__0_n_0\ : STD_LOGIC;
  signal \DIVIDER[20]_i_2__0_n_0\ : STD_LOGIC;
  signal \DIVIDER[20]_i_3__0_n_0\ : STD_LOGIC;
  signal \DIVIDER[20]_i_4__0_n_0\ : STD_LOGIC;
  signal \DIVIDER[4]_i_2__1_n_0\ : STD_LOGIC;
  signal \DIVIDER[4]_i_3__1_n_0\ : STD_LOGIC;
  signal \DIVIDER[4]_i_4__1_n_0\ : STD_LOGIC;
  signal \DIVIDER[4]_i_5__1_n_0\ : STD_LOGIC;
  signal \DIVIDER[8]_i_2__1_n_0\ : STD_LOGIC;
  signal \DIVIDER[8]_i_3__1_n_0\ : STD_LOGIC;
  signal \DIVIDER[8]_i_4__1_n_0\ : STD_LOGIC;
  signal \DIVIDER[8]_i_5__1_n_0\ : STD_LOGIC;
  signal DIVIDER_reg : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \DIVIDER_reg[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \DIVIDER_reg[0]_i_1__1_n_1\ : STD_LOGIC;
  signal \DIVIDER_reg[0]_i_1__1_n_2\ : STD_LOGIC;
  signal \DIVIDER_reg[0]_i_1__1_n_3\ : STD_LOGIC;
  signal \DIVIDER_reg[0]_i_1__1_n_4\ : STD_LOGIC;
  signal \DIVIDER_reg[0]_i_1__1_n_5\ : STD_LOGIC;
  signal \DIVIDER_reg[0]_i_1__1_n_6\ : STD_LOGIC;
  signal \DIVIDER_reg[0]_i_1__1_n_7\ : STD_LOGIC;
  signal \DIVIDER_reg[12]_i_1__1_n_0\ : STD_LOGIC;
  signal \DIVIDER_reg[12]_i_1__1_n_1\ : STD_LOGIC;
  signal \DIVIDER_reg[12]_i_1__1_n_2\ : STD_LOGIC;
  signal \DIVIDER_reg[12]_i_1__1_n_3\ : STD_LOGIC;
  signal \DIVIDER_reg[12]_i_1__1_n_4\ : STD_LOGIC;
  signal \DIVIDER_reg[12]_i_1__1_n_5\ : STD_LOGIC;
  signal \DIVIDER_reg[12]_i_1__1_n_6\ : STD_LOGIC;
  signal \DIVIDER_reg[12]_i_1__1_n_7\ : STD_LOGIC;
  signal \DIVIDER_reg[16]_i_1__1_n_0\ : STD_LOGIC;
  signal \DIVIDER_reg[16]_i_1__1_n_1\ : STD_LOGIC;
  signal \DIVIDER_reg[16]_i_1__1_n_2\ : STD_LOGIC;
  signal \DIVIDER_reg[16]_i_1__1_n_3\ : STD_LOGIC;
  signal \DIVIDER_reg[16]_i_1__1_n_4\ : STD_LOGIC;
  signal \DIVIDER_reg[16]_i_1__1_n_5\ : STD_LOGIC;
  signal \DIVIDER_reg[16]_i_1__1_n_6\ : STD_LOGIC;
  signal \DIVIDER_reg[16]_i_1__1_n_7\ : STD_LOGIC;
  signal \DIVIDER_reg[20]_i_1__0_n_2\ : STD_LOGIC;
  signal \DIVIDER_reg[20]_i_1__0_n_3\ : STD_LOGIC;
  signal \DIVIDER_reg[20]_i_1__0_n_5\ : STD_LOGIC;
  signal \DIVIDER_reg[20]_i_1__0_n_6\ : STD_LOGIC;
  signal \DIVIDER_reg[20]_i_1__0_n_7\ : STD_LOGIC;
  signal \DIVIDER_reg[4]_i_1__1_n_0\ : STD_LOGIC;
  signal \DIVIDER_reg[4]_i_1__1_n_1\ : STD_LOGIC;
  signal \DIVIDER_reg[4]_i_1__1_n_2\ : STD_LOGIC;
  signal \DIVIDER_reg[4]_i_1__1_n_3\ : STD_LOGIC;
  signal \DIVIDER_reg[4]_i_1__1_n_4\ : STD_LOGIC;
  signal \DIVIDER_reg[4]_i_1__1_n_5\ : STD_LOGIC;
  signal \DIVIDER_reg[4]_i_1__1_n_6\ : STD_LOGIC;
  signal \DIVIDER_reg[4]_i_1__1_n_7\ : STD_LOGIC;
  signal \DIVIDER_reg[8]_i_1__1_n_0\ : STD_LOGIC;
  signal \DIVIDER_reg[8]_i_1__1_n_1\ : STD_LOGIC;
  signal \DIVIDER_reg[8]_i_1__1_n_2\ : STD_LOGIC;
  signal \DIVIDER_reg[8]_i_1__1_n_3\ : STD_LOGIC;
  signal \DIVIDER_reg[8]_i_1__1_n_4\ : STD_LOGIC;
  signal \DIVIDER_reg[8]_i_1__1_n_5\ : STD_LOGIC;
  signal \DIVIDER_reg[8]_i_1__1_n_6\ : STD_LOGIC;
  signal \DIVIDER_reg[8]_i_1__1_n_7\ : STD_LOGIC;
  signal \Qint[2]_i_4__0_n_0\ : STD_LOGIC;
  signal \Qint[2]_i_5__0_n_0\ : STD_LOGIC;
  signal \Qint[2]_i_6__0_n_0\ : STD_LOGIC;
  signal \Qint[2]_i_7__0_n_0\ : STD_LOGIC;
  signal \NLW_DIVIDER_reg[20]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_DIVIDER_reg[20]_i_1__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
\DIVIDER[0]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(0),
      I1 => \Qint[2]_i_4__0_n_0\,
      I2 => \Qint[2]_i_5__0_n_0\,
      I3 => \Qint[2]_i_6__0_n_0\,
      I4 => \Qint[2]_i_7__0_n_0\,
      O => \DIVIDER[0]_i_2__1_n_0\
    );
\DIVIDER[0]_i_3__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(3),
      I1 => \Qint[2]_i_4__0_n_0\,
      I2 => \Qint[2]_i_5__0_n_0\,
      I3 => \Qint[2]_i_6__0_n_0\,
      I4 => \Qint[2]_i_7__0_n_0\,
      O => \DIVIDER[0]_i_3__1_n_0\
    );
\DIVIDER[0]_i_4__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(2),
      I1 => \Qint[2]_i_4__0_n_0\,
      I2 => \Qint[2]_i_5__0_n_0\,
      I3 => \Qint[2]_i_6__0_n_0\,
      I4 => \Qint[2]_i_7__0_n_0\,
      O => \DIVIDER[0]_i_4__1_n_0\
    );
\DIVIDER[0]_i_5__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(1),
      I1 => \Qint[2]_i_4__0_n_0\,
      I2 => \Qint[2]_i_5__0_n_0\,
      I3 => \Qint[2]_i_6__0_n_0\,
      I4 => \Qint[2]_i_7__0_n_0\,
      O => \DIVIDER[0]_i_5__1_n_0\
    );
\DIVIDER[0]_i_6__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55551555"
    )
        port map (
      I0 => DIVIDER_reg(0),
      I1 => \Qint[2]_i_4__0_n_0\,
      I2 => \Qint[2]_i_5__0_n_0\,
      I3 => \Qint[2]_i_6__0_n_0\,
      I4 => \Qint[2]_i_7__0_n_0\,
      O => \DIVIDER[0]_i_6__1_n_0\
    );
\DIVIDER[12]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(15),
      I1 => \Qint[2]_i_4__0_n_0\,
      I2 => \Qint[2]_i_5__0_n_0\,
      I3 => \Qint[2]_i_6__0_n_0\,
      I4 => \Qint[2]_i_7__0_n_0\,
      O => \DIVIDER[12]_i_2__1_n_0\
    );
\DIVIDER[12]_i_3__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(14),
      I1 => \Qint[2]_i_4__0_n_0\,
      I2 => \Qint[2]_i_5__0_n_0\,
      I3 => \Qint[2]_i_6__0_n_0\,
      I4 => \Qint[2]_i_7__0_n_0\,
      O => \DIVIDER[12]_i_3__1_n_0\
    );
\DIVIDER[12]_i_4__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(13),
      I1 => \Qint[2]_i_4__0_n_0\,
      I2 => \Qint[2]_i_5__0_n_0\,
      I3 => \Qint[2]_i_6__0_n_0\,
      I4 => \Qint[2]_i_7__0_n_0\,
      O => \DIVIDER[12]_i_4__1_n_0\
    );
\DIVIDER[12]_i_5__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(12),
      I1 => \Qint[2]_i_4__0_n_0\,
      I2 => \Qint[2]_i_5__0_n_0\,
      I3 => \Qint[2]_i_6__0_n_0\,
      I4 => \Qint[2]_i_7__0_n_0\,
      O => \DIVIDER[12]_i_5__1_n_0\
    );
\DIVIDER[16]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(19),
      I1 => \Qint[2]_i_4__0_n_0\,
      I2 => \Qint[2]_i_5__0_n_0\,
      I3 => \Qint[2]_i_6__0_n_0\,
      I4 => \Qint[2]_i_7__0_n_0\,
      O => \DIVIDER[16]_i_2__1_n_0\
    );
\DIVIDER[16]_i_3__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(18),
      I1 => \Qint[2]_i_4__0_n_0\,
      I2 => \Qint[2]_i_5__0_n_0\,
      I3 => \Qint[2]_i_6__0_n_0\,
      I4 => \Qint[2]_i_7__0_n_0\,
      O => \DIVIDER[16]_i_3__1_n_0\
    );
\DIVIDER[16]_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(17),
      I1 => \Qint[2]_i_4__0_n_0\,
      I2 => \Qint[2]_i_5__0_n_0\,
      I3 => \Qint[2]_i_6__0_n_0\,
      I4 => \Qint[2]_i_7__0_n_0\,
      O => \DIVIDER[16]_i_4__0_n_0\
    );
\DIVIDER[16]_i_5__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(16),
      I1 => \Qint[2]_i_4__0_n_0\,
      I2 => \Qint[2]_i_5__0_n_0\,
      I3 => \Qint[2]_i_6__0_n_0\,
      I4 => \Qint[2]_i_7__0_n_0\,
      O => \DIVIDER[16]_i_5__0_n_0\
    );
\DIVIDER[20]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(22),
      I1 => \Qint[2]_i_4__0_n_0\,
      I2 => \Qint[2]_i_5__0_n_0\,
      I3 => \Qint[2]_i_6__0_n_0\,
      I4 => \Qint[2]_i_7__0_n_0\,
      O => \DIVIDER[20]_i_2__0_n_0\
    );
\DIVIDER[20]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(21),
      I1 => \Qint[2]_i_4__0_n_0\,
      I2 => \Qint[2]_i_5__0_n_0\,
      I3 => \Qint[2]_i_6__0_n_0\,
      I4 => \Qint[2]_i_7__0_n_0\,
      O => \DIVIDER[20]_i_3__0_n_0\
    );
\DIVIDER[20]_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(20),
      I1 => \Qint[2]_i_4__0_n_0\,
      I2 => \Qint[2]_i_5__0_n_0\,
      I3 => \Qint[2]_i_6__0_n_0\,
      I4 => \Qint[2]_i_7__0_n_0\,
      O => \DIVIDER[20]_i_4__0_n_0\
    );
\DIVIDER[4]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(7),
      I1 => \Qint[2]_i_4__0_n_0\,
      I2 => \Qint[2]_i_5__0_n_0\,
      I3 => \Qint[2]_i_6__0_n_0\,
      I4 => \Qint[2]_i_7__0_n_0\,
      O => \DIVIDER[4]_i_2__1_n_0\
    );
\DIVIDER[4]_i_3__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(6),
      I1 => \Qint[2]_i_4__0_n_0\,
      I2 => \Qint[2]_i_5__0_n_0\,
      I3 => \Qint[2]_i_6__0_n_0\,
      I4 => \Qint[2]_i_7__0_n_0\,
      O => \DIVIDER[4]_i_3__1_n_0\
    );
\DIVIDER[4]_i_4__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(5),
      I1 => \Qint[2]_i_4__0_n_0\,
      I2 => \Qint[2]_i_5__0_n_0\,
      I3 => \Qint[2]_i_6__0_n_0\,
      I4 => \Qint[2]_i_7__0_n_0\,
      O => \DIVIDER[4]_i_4__1_n_0\
    );
\DIVIDER[4]_i_5__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(4),
      I1 => \Qint[2]_i_4__0_n_0\,
      I2 => \Qint[2]_i_5__0_n_0\,
      I3 => \Qint[2]_i_6__0_n_0\,
      I4 => \Qint[2]_i_7__0_n_0\,
      O => \DIVIDER[4]_i_5__1_n_0\
    );
\DIVIDER[8]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(11),
      I1 => \Qint[2]_i_4__0_n_0\,
      I2 => \Qint[2]_i_5__0_n_0\,
      I3 => \Qint[2]_i_6__0_n_0\,
      I4 => \Qint[2]_i_7__0_n_0\,
      O => \DIVIDER[8]_i_2__1_n_0\
    );
\DIVIDER[8]_i_3__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(10),
      I1 => \Qint[2]_i_4__0_n_0\,
      I2 => \Qint[2]_i_5__0_n_0\,
      I3 => \Qint[2]_i_6__0_n_0\,
      I4 => \Qint[2]_i_7__0_n_0\,
      O => \DIVIDER[8]_i_3__1_n_0\
    );
\DIVIDER[8]_i_4__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(9),
      I1 => \Qint[2]_i_4__0_n_0\,
      I2 => \Qint[2]_i_5__0_n_0\,
      I3 => \Qint[2]_i_6__0_n_0\,
      I4 => \Qint[2]_i_7__0_n_0\,
      O => \DIVIDER[8]_i_4__1_n_0\
    );
\DIVIDER[8]_i_5__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(8),
      I1 => \Qint[2]_i_4__0_n_0\,
      I2 => \Qint[2]_i_5__0_n_0\,
      I3 => \Qint[2]_i_6__0_n_0\,
      I4 => \Qint[2]_i_7__0_n_0\,
      O => \DIVIDER[8]_i_5__1_n_0\
    );
\DIVIDER_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \DIVIDER_reg[0]_i_1__1_n_7\,
      Q => DIVIDER_reg(0)
    );
\DIVIDER_reg[0]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \DIVIDER_reg[0]_i_1__1_n_0\,
      CO(2) => \DIVIDER_reg[0]_i_1__1_n_1\,
      CO(1) => \DIVIDER_reg[0]_i_1__1_n_2\,
      CO(0) => \DIVIDER_reg[0]_i_1__1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \DIVIDER[0]_i_2__1_n_0\,
      O(3) => \DIVIDER_reg[0]_i_1__1_n_4\,
      O(2) => \DIVIDER_reg[0]_i_1__1_n_5\,
      O(1) => \DIVIDER_reg[0]_i_1__1_n_6\,
      O(0) => \DIVIDER_reg[0]_i_1__1_n_7\,
      S(3) => \DIVIDER[0]_i_3__1_n_0\,
      S(2) => \DIVIDER[0]_i_4__1_n_0\,
      S(1) => \DIVIDER[0]_i_5__1_n_0\,
      S(0) => \DIVIDER[0]_i_6__1_n_0\
    );
\DIVIDER_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \DIVIDER_reg[8]_i_1__1_n_5\,
      Q => DIVIDER_reg(10)
    );
\DIVIDER_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \DIVIDER_reg[8]_i_1__1_n_4\,
      Q => DIVIDER_reg(11)
    );
\DIVIDER_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \DIVIDER_reg[12]_i_1__1_n_7\,
      Q => DIVIDER_reg(12)
    );
\DIVIDER_reg[12]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \DIVIDER_reg[8]_i_1__1_n_0\,
      CO(3) => \DIVIDER_reg[12]_i_1__1_n_0\,
      CO(2) => \DIVIDER_reg[12]_i_1__1_n_1\,
      CO(1) => \DIVIDER_reg[12]_i_1__1_n_2\,
      CO(0) => \DIVIDER_reg[12]_i_1__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \DIVIDER_reg[12]_i_1__1_n_4\,
      O(2) => \DIVIDER_reg[12]_i_1__1_n_5\,
      O(1) => \DIVIDER_reg[12]_i_1__1_n_6\,
      O(0) => \DIVIDER_reg[12]_i_1__1_n_7\,
      S(3) => \DIVIDER[12]_i_2__1_n_0\,
      S(2) => \DIVIDER[12]_i_3__1_n_0\,
      S(1) => \DIVIDER[12]_i_4__1_n_0\,
      S(0) => \DIVIDER[12]_i_5__1_n_0\
    );
\DIVIDER_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \DIVIDER_reg[12]_i_1__1_n_6\,
      Q => DIVIDER_reg(13)
    );
\DIVIDER_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \DIVIDER_reg[12]_i_1__1_n_5\,
      Q => DIVIDER_reg(14)
    );
\DIVIDER_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \DIVIDER_reg[12]_i_1__1_n_4\,
      Q => DIVIDER_reg(15)
    );
\DIVIDER_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \DIVIDER_reg[16]_i_1__1_n_7\,
      Q => DIVIDER_reg(16)
    );
\DIVIDER_reg[16]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \DIVIDER_reg[12]_i_1__1_n_0\,
      CO(3) => \DIVIDER_reg[16]_i_1__1_n_0\,
      CO(2) => \DIVIDER_reg[16]_i_1__1_n_1\,
      CO(1) => \DIVIDER_reg[16]_i_1__1_n_2\,
      CO(0) => \DIVIDER_reg[16]_i_1__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \DIVIDER_reg[16]_i_1__1_n_4\,
      O(2) => \DIVIDER_reg[16]_i_1__1_n_5\,
      O(1) => \DIVIDER_reg[16]_i_1__1_n_6\,
      O(0) => \DIVIDER_reg[16]_i_1__1_n_7\,
      S(3) => \DIVIDER[16]_i_2__1_n_0\,
      S(2) => \DIVIDER[16]_i_3__1_n_0\,
      S(1) => \DIVIDER[16]_i_4__0_n_0\,
      S(0) => \DIVIDER[16]_i_5__0_n_0\
    );
\DIVIDER_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \DIVIDER_reg[16]_i_1__1_n_6\,
      Q => DIVIDER_reg(17)
    );
\DIVIDER_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \DIVIDER_reg[16]_i_1__1_n_5\,
      Q => DIVIDER_reg(18)
    );
\DIVIDER_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \DIVIDER_reg[16]_i_1__1_n_4\,
      Q => DIVIDER_reg(19)
    );
\DIVIDER_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \DIVIDER_reg[0]_i_1__1_n_6\,
      Q => DIVIDER_reg(1)
    );
\DIVIDER_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \DIVIDER_reg[20]_i_1__0_n_7\,
      Q => DIVIDER_reg(20)
    );
\DIVIDER_reg[20]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \DIVIDER_reg[16]_i_1__1_n_0\,
      CO(3 downto 2) => \NLW_DIVIDER_reg[20]_i_1__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \DIVIDER_reg[20]_i_1__0_n_2\,
      CO(0) => \DIVIDER_reg[20]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_DIVIDER_reg[20]_i_1__0_O_UNCONNECTED\(3),
      O(2) => \DIVIDER_reg[20]_i_1__0_n_5\,
      O(1) => \DIVIDER_reg[20]_i_1__0_n_6\,
      O(0) => \DIVIDER_reg[20]_i_1__0_n_7\,
      S(3) => '0',
      S(2) => \DIVIDER[20]_i_2__0_n_0\,
      S(1) => \DIVIDER[20]_i_3__0_n_0\,
      S(0) => \DIVIDER[20]_i_4__0_n_0\
    );
\DIVIDER_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \DIVIDER_reg[20]_i_1__0_n_6\,
      Q => DIVIDER_reg(21)
    );
\DIVIDER_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \DIVIDER_reg[20]_i_1__0_n_5\,
      Q => DIVIDER_reg(22)
    );
\DIVIDER_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \DIVIDER_reg[0]_i_1__1_n_5\,
      Q => DIVIDER_reg(2)
    );
\DIVIDER_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \DIVIDER_reg[0]_i_1__1_n_4\,
      Q => DIVIDER_reg(3)
    );
\DIVIDER_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \DIVIDER_reg[4]_i_1__1_n_7\,
      Q => DIVIDER_reg(4)
    );
\DIVIDER_reg[4]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \DIVIDER_reg[0]_i_1__1_n_0\,
      CO(3) => \DIVIDER_reg[4]_i_1__1_n_0\,
      CO(2) => \DIVIDER_reg[4]_i_1__1_n_1\,
      CO(1) => \DIVIDER_reg[4]_i_1__1_n_2\,
      CO(0) => \DIVIDER_reg[4]_i_1__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \DIVIDER_reg[4]_i_1__1_n_4\,
      O(2) => \DIVIDER_reg[4]_i_1__1_n_5\,
      O(1) => \DIVIDER_reg[4]_i_1__1_n_6\,
      O(0) => \DIVIDER_reg[4]_i_1__1_n_7\,
      S(3) => \DIVIDER[4]_i_2__1_n_0\,
      S(2) => \DIVIDER[4]_i_3__1_n_0\,
      S(1) => \DIVIDER[4]_i_4__1_n_0\,
      S(0) => \DIVIDER[4]_i_5__1_n_0\
    );
\DIVIDER_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \DIVIDER_reg[4]_i_1__1_n_6\,
      Q => DIVIDER_reg(5)
    );
\DIVIDER_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \DIVIDER_reg[4]_i_1__1_n_5\,
      Q => DIVIDER_reg(6)
    );
\DIVIDER_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \DIVIDER_reg[4]_i_1__1_n_4\,
      Q => DIVIDER_reg(7)
    );
\DIVIDER_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \DIVIDER_reg[8]_i_1__1_n_7\,
      Q => DIVIDER_reg(8)
    );
\DIVIDER_reg[8]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \DIVIDER_reg[4]_i_1__1_n_0\,
      CO(3) => \DIVIDER_reg[8]_i_1__1_n_0\,
      CO(2) => \DIVIDER_reg[8]_i_1__1_n_1\,
      CO(1) => \DIVIDER_reg[8]_i_1__1_n_2\,
      CO(0) => \DIVIDER_reg[8]_i_1__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \DIVIDER_reg[8]_i_1__1_n_4\,
      O(2) => \DIVIDER_reg[8]_i_1__1_n_5\,
      O(1) => \DIVIDER_reg[8]_i_1__1_n_6\,
      O(0) => \DIVIDER_reg[8]_i_1__1_n_7\,
      S(3) => \DIVIDER[8]_i_2__1_n_0\,
      S(2) => \DIVIDER[8]_i_3__1_n_0\,
      S(1) => \DIVIDER[8]_i_4__1_n_0\,
      S(0) => \DIVIDER[8]_i_5__1_n_0\
    );
\DIVIDER_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \DIVIDER_reg[8]_i_1__1_n_6\,
      Q => DIVIDER_reg(9)
    );
\Qint[2]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => \Qint[2]_i_4__0_n_0\,
      I1 => \Qint[2]_i_5__0_n_0\,
      I2 => \Qint[2]_i_6__0_n_0\,
      I3 => \Qint[2]_i_7__0_n_0\,
      I4 => CE_IBUF,
      O => NET3292
    );
\Qint[2]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => DIVIDER_reg(3),
      I1 => DIVIDER_reg(4),
      I2 => DIVIDER_reg(5),
      I3 => DIVIDER_reg(2),
      I4 => DIVIDER_reg(0),
      I5 => DIVIDER_reg(1),
      O => \Qint[2]_i_4__0_n_0\
    );
\Qint[2]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => DIVIDER_reg(14),
      I1 => DIVIDER_reg(16),
      I2 => DIVIDER_reg(17),
      I3 => DIVIDER_reg(12),
      I4 => DIVIDER_reg(6),
      I5 => DIVIDER_reg(11),
      O => \Qint[2]_i_5__0_n_0\
    );
\Qint[2]_i_6__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => DIVIDER_reg(21),
      I1 => DIVIDER_reg(20),
      I2 => DIVIDER_reg(10),
      I3 => DIVIDER_reg(13),
      I4 => DIVIDER_reg(15),
      O => \Qint[2]_i_6__0_n_0\
    );
\Qint[2]_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFF7F"
    )
        port map (
      I0 => DIVIDER_reg(18),
      I1 => DIVIDER_reg(19),
      I2 => DIVIDER_reg(22),
      I3 => DIVIDER_reg(9),
      I4 => DIVIDER_reg(7),
      I5 => DIVIDER_reg(8),
      O => \Qint[2]_i_7__0_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Prescaler_17 is
  port (
    NET3300 : out STD_LOGIC;
    CE_IBUF : in STD_LOGIC;
    CLK_IBUF_BUFG : in STD_LOGIC;
    CLR_IBUF : in STD_LOGIC
  );
end Prescaler_17;

architecture STRUCTURE of Prescaler_17 is
  signal \DIVIDER[0]_i_2__2_n_0\ : STD_LOGIC;
  signal \DIVIDER[0]_i_3__2_n_0\ : STD_LOGIC;
  signal \DIVIDER[0]_i_4__2_n_0\ : STD_LOGIC;
  signal \DIVIDER[0]_i_5__2_n_0\ : STD_LOGIC;
  signal \DIVIDER[0]_i_6__2_n_0\ : STD_LOGIC;
  signal \DIVIDER[12]_i_2__2_n_0\ : STD_LOGIC;
  signal \DIVIDER[12]_i_3__2_n_0\ : STD_LOGIC;
  signal \DIVIDER[12]_i_4__2_n_0\ : STD_LOGIC;
  signal \DIVIDER[12]_i_5__2_n_0\ : STD_LOGIC;
  signal \DIVIDER[16]_i_2__2_n_0\ : STD_LOGIC;
  signal \DIVIDER[16]_i_3__2_n_0\ : STD_LOGIC;
  signal \DIVIDER[16]_i_4__1_n_0\ : STD_LOGIC;
  signal \DIVIDER[16]_i_5__1_n_0\ : STD_LOGIC;
  signal \DIVIDER[20]_i_2__1_n_0\ : STD_LOGIC;
  signal \DIVIDER[20]_i_3__1_n_0\ : STD_LOGIC;
  signal \DIVIDER[20]_i_4__1_n_0\ : STD_LOGIC;
  signal \DIVIDER[4]_i_2__2_n_0\ : STD_LOGIC;
  signal \DIVIDER[4]_i_3__2_n_0\ : STD_LOGIC;
  signal \DIVIDER[4]_i_4__2_n_0\ : STD_LOGIC;
  signal \DIVIDER[4]_i_5__2_n_0\ : STD_LOGIC;
  signal \DIVIDER[8]_i_2__2_n_0\ : STD_LOGIC;
  signal \DIVIDER[8]_i_3__2_n_0\ : STD_LOGIC;
  signal \DIVIDER[8]_i_4__2_n_0\ : STD_LOGIC;
  signal \DIVIDER[8]_i_5__2_n_0\ : STD_LOGIC;
  signal DIVIDER_reg : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \DIVIDER_reg[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \DIVIDER_reg[0]_i_1__2_n_1\ : STD_LOGIC;
  signal \DIVIDER_reg[0]_i_1__2_n_2\ : STD_LOGIC;
  signal \DIVIDER_reg[0]_i_1__2_n_3\ : STD_LOGIC;
  signal \DIVIDER_reg[0]_i_1__2_n_4\ : STD_LOGIC;
  signal \DIVIDER_reg[0]_i_1__2_n_5\ : STD_LOGIC;
  signal \DIVIDER_reg[0]_i_1__2_n_6\ : STD_LOGIC;
  signal \DIVIDER_reg[0]_i_1__2_n_7\ : STD_LOGIC;
  signal \DIVIDER_reg[12]_i_1__2_n_0\ : STD_LOGIC;
  signal \DIVIDER_reg[12]_i_1__2_n_1\ : STD_LOGIC;
  signal \DIVIDER_reg[12]_i_1__2_n_2\ : STD_LOGIC;
  signal \DIVIDER_reg[12]_i_1__2_n_3\ : STD_LOGIC;
  signal \DIVIDER_reg[12]_i_1__2_n_4\ : STD_LOGIC;
  signal \DIVIDER_reg[12]_i_1__2_n_5\ : STD_LOGIC;
  signal \DIVIDER_reg[12]_i_1__2_n_6\ : STD_LOGIC;
  signal \DIVIDER_reg[12]_i_1__2_n_7\ : STD_LOGIC;
  signal \DIVIDER_reg[16]_i_1__2_n_0\ : STD_LOGIC;
  signal \DIVIDER_reg[16]_i_1__2_n_1\ : STD_LOGIC;
  signal \DIVIDER_reg[16]_i_1__2_n_2\ : STD_LOGIC;
  signal \DIVIDER_reg[16]_i_1__2_n_3\ : STD_LOGIC;
  signal \DIVIDER_reg[16]_i_1__2_n_4\ : STD_LOGIC;
  signal \DIVIDER_reg[16]_i_1__2_n_5\ : STD_LOGIC;
  signal \DIVIDER_reg[16]_i_1__2_n_6\ : STD_LOGIC;
  signal \DIVIDER_reg[16]_i_1__2_n_7\ : STD_LOGIC;
  signal \DIVIDER_reg[20]_i_1__1_n_2\ : STD_LOGIC;
  signal \DIVIDER_reg[20]_i_1__1_n_3\ : STD_LOGIC;
  signal \DIVIDER_reg[20]_i_1__1_n_5\ : STD_LOGIC;
  signal \DIVIDER_reg[20]_i_1__1_n_6\ : STD_LOGIC;
  signal \DIVIDER_reg[20]_i_1__1_n_7\ : STD_LOGIC;
  signal \DIVIDER_reg[4]_i_1__2_n_0\ : STD_LOGIC;
  signal \DIVIDER_reg[4]_i_1__2_n_1\ : STD_LOGIC;
  signal \DIVIDER_reg[4]_i_1__2_n_2\ : STD_LOGIC;
  signal \DIVIDER_reg[4]_i_1__2_n_3\ : STD_LOGIC;
  signal \DIVIDER_reg[4]_i_1__2_n_4\ : STD_LOGIC;
  signal \DIVIDER_reg[4]_i_1__2_n_5\ : STD_LOGIC;
  signal \DIVIDER_reg[4]_i_1__2_n_6\ : STD_LOGIC;
  signal \DIVIDER_reg[4]_i_1__2_n_7\ : STD_LOGIC;
  signal \DIVIDER_reg[8]_i_1__2_n_0\ : STD_LOGIC;
  signal \DIVIDER_reg[8]_i_1__2_n_1\ : STD_LOGIC;
  signal \DIVIDER_reg[8]_i_1__2_n_2\ : STD_LOGIC;
  signal \DIVIDER_reg[8]_i_1__2_n_3\ : STD_LOGIC;
  signal \DIVIDER_reg[8]_i_1__2_n_4\ : STD_LOGIC;
  signal \DIVIDER_reg[8]_i_1__2_n_5\ : STD_LOGIC;
  signal \DIVIDER_reg[8]_i_1__2_n_6\ : STD_LOGIC;
  signal \DIVIDER_reg[8]_i_1__2_n_7\ : STD_LOGIC;
  signal \Qint[2]_i_4__1_n_0\ : STD_LOGIC;
  signal \Qint[2]_i_5__1_n_0\ : STD_LOGIC;
  signal \Qint[2]_i_6__1_n_0\ : STD_LOGIC;
  signal \Qint[2]_i_7__1_n_0\ : STD_LOGIC;
  signal \NLW_DIVIDER_reg[20]_i_1__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_DIVIDER_reg[20]_i_1__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
\DIVIDER[0]_i_2__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(0),
      I1 => \Qint[2]_i_4__1_n_0\,
      I2 => \Qint[2]_i_5__1_n_0\,
      I3 => \Qint[2]_i_6__1_n_0\,
      I4 => \Qint[2]_i_7__1_n_0\,
      O => \DIVIDER[0]_i_2__2_n_0\
    );
\DIVIDER[0]_i_3__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(3),
      I1 => \Qint[2]_i_4__1_n_0\,
      I2 => \Qint[2]_i_5__1_n_0\,
      I3 => \Qint[2]_i_6__1_n_0\,
      I4 => \Qint[2]_i_7__1_n_0\,
      O => \DIVIDER[0]_i_3__2_n_0\
    );
\DIVIDER[0]_i_4__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(2),
      I1 => \Qint[2]_i_4__1_n_0\,
      I2 => \Qint[2]_i_5__1_n_0\,
      I3 => \Qint[2]_i_6__1_n_0\,
      I4 => \Qint[2]_i_7__1_n_0\,
      O => \DIVIDER[0]_i_4__2_n_0\
    );
\DIVIDER[0]_i_5__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(1),
      I1 => \Qint[2]_i_4__1_n_0\,
      I2 => \Qint[2]_i_5__1_n_0\,
      I3 => \Qint[2]_i_6__1_n_0\,
      I4 => \Qint[2]_i_7__1_n_0\,
      O => \DIVIDER[0]_i_5__2_n_0\
    );
\DIVIDER[0]_i_6__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55551555"
    )
        port map (
      I0 => DIVIDER_reg(0),
      I1 => \Qint[2]_i_4__1_n_0\,
      I2 => \Qint[2]_i_5__1_n_0\,
      I3 => \Qint[2]_i_6__1_n_0\,
      I4 => \Qint[2]_i_7__1_n_0\,
      O => \DIVIDER[0]_i_6__2_n_0\
    );
\DIVIDER[12]_i_2__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(15),
      I1 => \Qint[2]_i_4__1_n_0\,
      I2 => \Qint[2]_i_5__1_n_0\,
      I3 => \Qint[2]_i_6__1_n_0\,
      I4 => \Qint[2]_i_7__1_n_0\,
      O => \DIVIDER[12]_i_2__2_n_0\
    );
\DIVIDER[12]_i_3__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(14),
      I1 => \Qint[2]_i_4__1_n_0\,
      I2 => \Qint[2]_i_5__1_n_0\,
      I3 => \Qint[2]_i_6__1_n_0\,
      I4 => \Qint[2]_i_7__1_n_0\,
      O => \DIVIDER[12]_i_3__2_n_0\
    );
\DIVIDER[12]_i_4__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(13),
      I1 => \Qint[2]_i_4__1_n_0\,
      I2 => \Qint[2]_i_5__1_n_0\,
      I3 => \Qint[2]_i_6__1_n_0\,
      I4 => \Qint[2]_i_7__1_n_0\,
      O => \DIVIDER[12]_i_4__2_n_0\
    );
\DIVIDER[12]_i_5__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(12),
      I1 => \Qint[2]_i_4__1_n_0\,
      I2 => \Qint[2]_i_5__1_n_0\,
      I3 => \Qint[2]_i_6__1_n_0\,
      I4 => \Qint[2]_i_7__1_n_0\,
      O => \DIVIDER[12]_i_5__2_n_0\
    );
\DIVIDER[16]_i_2__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(19),
      I1 => \Qint[2]_i_4__1_n_0\,
      I2 => \Qint[2]_i_5__1_n_0\,
      I3 => \Qint[2]_i_6__1_n_0\,
      I4 => \Qint[2]_i_7__1_n_0\,
      O => \DIVIDER[16]_i_2__2_n_0\
    );
\DIVIDER[16]_i_3__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(18),
      I1 => \Qint[2]_i_4__1_n_0\,
      I2 => \Qint[2]_i_5__1_n_0\,
      I3 => \Qint[2]_i_6__1_n_0\,
      I4 => \Qint[2]_i_7__1_n_0\,
      O => \DIVIDER[16]_i_3__2_n_0\
    );
\DIVIDER[16]_i_4__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(17),
      I1 => \Qint[2]_i_4__1_n_0\,
      I2 => \Qint[2]_i_5__1_n_0\,
      I3 => \Qint[2]_i_6__1_n_0\,
      I4 => \Qint[2]_i_7__1_n_0\,
      O => \DIVIDER[16]_i_4__1_n_0\
    );
\DIVIDER[16]_i_5__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(16),
      I1 => \Qint[2]_i_4__1_n_0\,
      I2 => \Qint[2]_i_5__1_n_0\,
      I3 => \Qint[2]_i_6__1_n_0\,
      I4 => \Qint[2]_i_7__1_n_0\,
      O => \DIVIDER[16]_i_5__1_n_0\
    );
\DIVIDER[20]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(22),
      I1 => \Qint[2]_i_4__1_n_0\,
      I2 => \Qint[2]_i_5__1_n_0\,
      I3 => \Qint[2]_i_6__1_n_0\,
      I4 => \Qint[2]_i_7__1_n_0\,
      O => \DIVIDER[20]_i_2__1_n_0\
    );
\DIVIDER[20]_i_3__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(21),
      I1 => \Qint[2]_i_4__1_n_0\,
      I2 => \Qint[2]_i_5__1_n_0\,
      I3 => \Qint[2]_i_6__1_n_0\,
      I4 => \Qint[2]_i_7__1_n_0\,
      O => \DIVIDER[20]_i_3__1_n_0\
    );
\DIVIDER[20]_i_4__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(20),
      I1 => \Qint[2]_i_4__1_n_0\,
      I2 => \Qint[2]_i_5__1_n_0\,
      I3 => \Qint[2]_i_6__1_n_0\,
      I4 => \Qint[2]_i_7__1_n_0\,
      O => \DIVIDER[20]_i_4__1_n_0\
    );
\DIVIDER[4]_i_2__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(7),
      I1 => \Qint[2]_i_4__1_n_0\,
      I2 => \Qint[2]_i_5__1_n_0\,
      I3 => \Qint[2]_i_6__1_n_0\,
      I4 => \Qint[2]_i_7__1_n_0\,
      O => \DIVIDER[4]_i_2__2_n_0\
    );
\DIVIDER[4]_i_3__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(6),
      I1 => \Qint[2]_i_4__1_n_0\,
      I2 => \Qint[2]_i_5__1_n_0\,
      I3 => \Qint[2]_i_6__1_n_0\,
      I4 => \Qint[2]_i_7__1_n_0\,
      O => \DIVIDER[4]_i_3__2_n_0\
    );
\DIVIDER[4]_i_4__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(5),
      I1 => \Qint[2]_i_4__1_n_0\,
      I2 => \Qint[2]_i_5__1_n_0\,
      I3 => \Qint[2]_i_6__1_n_0\,
      I4 => \Qint[2]_i_7__1_n_0\,
      O => \DIVIDER[4]_i_4__2_n_0\
    );
\DIVIDER[4]_i_5__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(4),
      I1 => \Qint[2]_i_4__1_n_0\,
      I2 => \Qint[2]_i_5__1_n_0\,
      I3 => \Qint[2]_i_6__1_n_0\,
      I4 => \Qint[2]_i_7__1_n_0\,
      O => \DIVIDER[4]_i_5__2_n_0\
    );
\DIVIDER[8]_i_2__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(11),
      I1 => \Qint[2]_i_4__1_n_0\,
      I2 => \Qint[2]_i_5__1_n_0\,
      I3 => \Qint[2]_i_6__1_n_0\,
      I4 => \Qint[2]_i_7__1_n_0\,
      O => \DIVIDER[8]_i_2__2_n_0\
    );
\DIVIDER[8]_i_3__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(10),
      I1 => \Qint[2]_i_4__1_n_0\,
      I2 => \Qint[2]_i_5__1_n_0\,
      I3 => \Qint[2]_i_6__1_n_0\,
      I4 => \Qint[2]_i_7__1_n_0\,
      O => \DIVIDER[8]_i_3__2_n_0\
    );
\DIVIDER[8]_i_4__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(9),
      I1 => \Qint[2]_i_4__1_n_0\,
      I2 => \Qint[2]_i_5__1_n_0\,
      I3 => \Qint[2]_i_6__1_n_0\,
      I4 => \Qint[2]_i_7__1_n_0\,
      O => \DIVIDER[8]_i_4__2_n_0\
    );
\DIVIDER[8]_i_5__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(8),
      I1 => \Qint[2]_i_4__1_n_0\,
      I2 => \Qint[2]_i_5__1_n_0\,
      I3 => \Qint[2]_i_6__1_n_0\,
      I4 => \Qint[2]_i_7__1_n_0\,
      O => \DIVIDER[8]_i_5__2_n_0\
    );
\DIVIDER_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \DIVIDER_reg[0]_i_1__2_n_7\,
      Q => DIVIDER_reg(0)
    );
\DIVIDER_reg[0]_i_1__2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \DIVIDER_reg[0]_i_1__2_n_0\,
      CO(2) => \DIVIDER_reg[0]_i_1__2_n_1\,
      CO(1) => \DIVIDER_reg[0]_i_1__2_n_2\,
      CO(0) => \DIVIDER_reg[0]_i_1__2_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \DIVIDER[0]_i_2__2_n_0\,
      O(3) => \DIVIDER_reg[0]_i_1__2_n_4\,
      O(2) => \DIVIDER_reg[0]_i_1__2_n_5\,
      O(1) => \DIVIDER_reg[0]_i_1__2_n_6\,
      O(0) => \DIVIDER_reg[0]_i_1__2_n_7\,
      S(3) => \DIVIDER[0]_i_3__2_n_0\,
      S(2) => \DIVIDER[0]_i_4__2_n_0\,
      S(1) => \DIVIDER[0]_i_5__2_n_0\,
      S(0) => \DIVIDER[0]_i_6__2_n_0\
    );
\DIVIDER_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \DIVIDER_reg[8]_i_1__2_n_5\,
      Q => DIVIDER_reg(10)
    );
\DIVIDER_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \DIVIDER_reg[8]_i_1__2_n_4\,
      Q => DIVIDER_reg(11)
    );
\DIVIDER_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \DIVIDER_reg[12]_i_1__2_n_7\,
      Q => DIVIDER_reg(12)
    );
\DIVIDER_reg[12]_i_1__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \DIVIDER_reg[8]_i_1__2_n_0\,
      CO(3) => \DIVIDER_reg[12]_i_1__2_n_0\,
      CO(2) => \DIVIDER_reg[12]_i_1__2_n_1\,
      CO(1) => \DIVIDER_reg[12]_i_1__2_n_2\,
      CO(0) => \DIVIDER_reg[12]_i_1__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \DIVIDER_reg[12]_i_1__2_n_4\,
      O(2) => \DIVIDER_reg[12]_i_1__2_n_5\,
      O(1) => \DIVIDER_reg[12]_i_1__2_n_6\,
      O(0) => \DIVIDER_reg[12]_i_1__2_n_7\,
      S(3) => \DIVIDER[12]_i_2__2_n_0\,
      S(2) => \DIVIDER[12]_i_3__2_n_0\,
      S(1) => \DIVIDER[12]_i_4__2_n_0\,
      S(0) => \DIVIDER[12]_i_5__2_n_0\
    );
\DIVIDER_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \DIVIDER_reg[12]_i_1__2_n_6\,
      Q => DIVIDER_reg(13)
    );
\DIVIDER_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \DIVIDER_reg[12]_i_1__2_n_5\,
      Q => DIVIDER_reg(14)
    );
\DIVIDER_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \DIVIDER_reg[12]_i_1__2_n_4\,
      Q => DIVIDER_reg(15)
    );
\DIVIDER_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \DIVIDER_reg[16]_i_1__2_n_7\,
      Q => DIVIDER_reg(16)
    );
\DIVIDER_reg[16]_i_1__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \DIVIDER_reg[12]_i_1__2_n_0\,
      CO(3) => \DIVIDER_reg[16]_i_1__2_n_0\,
      CO(2) => \DIVIDER_reg[16]_i_1__2_n_1\,
      CO(1) => \DIVIDER_reg[16]_i_1__2_n_2\,
      CO(0) => \DIVIDER_reg[16]_i_1__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \DIVIDER_reg[16]_i_1__2_n_4\,
      O(2) => \DIVIDER_reg[16]_i_1__2_n_5\,
      O(1) => \DIVIDER_reg[16]_i_1__2_n_6\,
      O(0) => \DIVIDER_reg[16]_i_1__2_n_7\,
      S(3) => \DIVIDER[16]_i_2__2_n_0\,
      S(2) => \DIVIDER[16]_i_3__2_n_0\,
      S(1) => \DIVIDER[16]_i_4__1_n_0\,
      S(0) => \DIVIDER[16]_i_5__1_n_0\
    );
\DIVIDER_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \DIVIDER_reg[16]_i_1__2_n_6\,
      Q => DIVIDER_reg(17)
    );
\DIVIDER_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \DIVIDER_reg[16]_i_1__2_n_5\,
      Q => DIVIDER_reg(18)
    );
\DIVIDER_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \DIVIDER_reg[16]_i_1__2_n_4\,
      Q => DIVIDER_reg(19)
    );
\DIVIDER_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \DIVIDER_reg[0]_i_1__2_n_6\,
      Q => DIVIDER_reg(1)
    );
\DIVIDER_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \DIVIDER_reg[20]_i_1__1_n_7\,
      Q => DIVIDER_reg(20)
    );
\DIVIDER_reg[20]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \DIVIDER_reg[16]_i_1__2_n_0\,
      CO(3 downto 2) => \NLW_DIVIDER_reg[20]_i_1__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \DIVIDER_reg[20]_i_1__1_n_2\,
      CO(0) => \DIVIDER_reg[20]_i_1__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_DIVIDER_reg[20]_i_1__1_O_UNCONNECTED\(3),
      O(2) => \DIVIDER_reg[20]_i_1__1_n_5\,
      O(1) => \DIVIDER_reg[20]_i_1__1_n_6\,
      O(0) => \DIVIDER_reg[20]_i_1__1_n_7\,
      S(3) => '0',
      S(2) => \DIVIDER[20]_i_2__1_n_0\,
      S(1) => \DIVIDER[20]_i_3__1_n_0\,
      S(0) => \DIVIDER[20]_i_4__1_n_0\
    );
\DIVIDER_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \DIVIDER_reg[20]_i_1__1_n_6\,
      Q => DIVIDER_reg(21)
    );
\DIVIDER_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \DIVIDER_reg[20]_i_1__1_n_5\,
      Q => DIVIDER_reg(22)
    );
\DIVIDER_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \DIVIDER_reg[0]_i_1__2_n_5\,
      Q => DIVIDER_reg(2)
    );
\DIVIDER_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \DIVIDER_reg[0]_i_1__2_n_4\,
      Q => DIVIDER_reg(3)
    );
\DIVIDER_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \DIVIDER_reg[4]_i_1__2_n_7\,
      Q => DIVIDER_reg(4)
    );
\DIVIDER_reg[4]_i_1__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \DIVIDER_reg[0]_i_1__2_n_0\,
      CO(3) => \DIVIDER_reg[4]_i_1__2_n_0\,
      CO(2) => \DIVIDER_reg[4]_i_1__2_n_1\,
      CO(1) => \DIVIDER_reg[4]_i_1__2_n_2\,
      CO(0) => \DIVIDER_reg[4]_i_1__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \DIVIDER_reg[4]_i_1__2_n_4\,
      O(2) => \DIVIDER_reg[4]_i_1__2_n_5\,
      O(1) => \DIVIDER_reg[4]_i_1__2_n_6\,
      O(0) => \DIVIDER_reg[4]_i_1__2_n_7\,
      S(3) => \DIVIDER[4]_i_2__2_n_0\,
      S(2) => \DIVIDER[4]_i_3__2_n_0\,
      S(1) => \DIVIDER[4]_i_4__2_n_0\,
      S(0) => \DIVIDER[4]_i_5__2_n_0\
    );
\DIVIDER_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \DIVIDER_reg[4]_i_1__2_n_6\,
      Q => DIVIDER_reg(5)
    );
\DIVIDER_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \DIVIDER_reg[4]_i_1__2_n_5\,
      Q => DIVIDER_reg(6)
    );
\DIVIDER_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \DIVIDER_reg[4]_i_1__2_n_4\,
      Q => DIVIDER_reg(7)
    );
\DIVIDER_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \DIVIDER_reg[8]_i_1__2_n_7\,
      Q => DIVIDER_reg(8)
    );
\DIVIDER_reg[8]_i_1__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \DIVIDER_reg[4]_i_1__2_n_0\,
      CO(3) => \DIVIDER_reg[8]_i_1__2_n_0\,
      CO(2) => \DIVIDER_reg[8]_i_1__2_n_1\,
      CO(1) => \DIVIDER_reg[8]_i_1__2_n_2\,
      CO(0) => \DIVIDER_reg[8]_i_1__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \DIVIDER_reg[8]_i_1__2_n_4\,
      O(2) => \DIVIDER_reg[8]_i_1__2_n_5\,
      O(1) => \DIVIDER_reg[8]_i_1__2_n_6\,
      O(0) => \DIVIDER_reg[8]_i_1__2_n_7\,
      S(3) => \DIVIDER[8]_i_2__2_n_0\,
      S(2) => \DIVIDER[8]_i_3__2_n_0\,
      S(1) => \DIVIDER[8]_i_4__2_n_0\,
      S(0) => \DIVIDER[8]_i_5__2_n_0\
    );
\DIVIDER_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => \DIVIDER_reg[8]_i_1__2_n_6\,
      Q => DIVIDER_reg(9)
    );
\Qint[2]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => \Qint[2]_i_4__1_n_0\,
      I1 => \Qint[2]_i_5__1_n_0\,
      I2 => \Qint[2]_i_6__1_n_0\,
      I3 => \Qint[2]_i_7__1_n_0\,
      I4 => CE_IBUF,
      O => NET3300
    );
\Qint[2]_i_4__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => DIVIDER_reg(7),
      I1 => DIVIDER_reg(9),
      I2 => DIVIDER_reg(10),
      I3 => DIVIDER_reg(6),
      I4 => DIVIDER_reg(0),
      I5 => DIVIDER_reg(3),
      O => \Qint[2]_i_4__1_n_0\
    );
\Qint[2]_i_5__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => DIVIDER_reg(17),
      I1 => DIVIDER_reg(18),
      I2 => DIVIDER_reg(20),
      I3 => DIVIDER_reg(16),
      I4 => DIVIDER_reg(12),
      I5 => DIVIDER_reg(15),
      O => \Qint[2]_i_5__1_n_0\
    );
\Qint[2]_i_6__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => DIVIDER_reg(21),
      I1 => DIVIDER_reg(19),
      I2 => DIVIDER_reg(11),
      I3 => DIVIDER_reg(13),
      I4 => DIVIDER_reg(14),
      O => \Qint[2]_i_6__1_n_0\
    );
\Qint[2]_i_7__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFB"
    )
        port map (
      I0 => DIVIDER_reg(2),
      I1 => DIVIDER_reg(22),
      I2 => DIVIDER_reg(1),
      I3 => DIVIDER_reg(8),
      I4 => DIVIDER_reg(4),
      I5 => DIVIDER_reg(5),
      O => \Qint[2]_i_7__1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Prescaler_DISP is
  port (
    CLK : out STD_LOGIC;
    CLK_IBUF_BUFG : in STD_LOGIC;
    CLR_IBUF : in STD_LOGIC
  );
end Prescaler_DISP;

architecture STRUCTURE of Prescaler_DISP is
  signal \DIVIDER[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \DIVIDER[0]_i_3__0_n_0\ : STD_LOGIC;
  signal \DIVIDER[0]_i_4__0_n_0\ : STD_LOGIC;
  signal \DIVIDER[0]_i_5__0_n_0\ : STD_LOGIC;
  signal \DIVIDER[0]_i_6__0_n_0\ : STD_LOGIC;
  signal \DIVIDER[12]_i_2__0_n_0\ : STD_LOGIC;
  signal \DIVIDER[12]_i_3__0_n_0\ : STD_LOGIC;
  signal \DIVIDER[12]_i_4__0_n_0\ : STD_LOGIC;
  signal \DIVIDER[12]_i_5__0_n_0\ : STD_LOGIC;
  signal \DIVIDER[16]_i_2__0_n_0\ : STD_LOGIC;
  signal \DIVIDER[16]_i_3__0_n_0\ : STD_LOGIC;
  signal \DIVIDER[4]_i_2__0_n_0\ : STD_LOGIC;
  signal \DIVIDER[4]_i_3__0_n_0\ : STD_LOGIC;
  signal \DIVIDER[4]_i_4__0_n_0\ : STD_LOGIC;
  signal \DIVIDER[4]_i_5__0_n_0\ : STD_LOGIC;
  signal \DIVIDER[8]_i_2__0_n_0\ : STD_LOGIC;
  signal \DIVIDER[8]_i_3__0_n_0\ : STD_LOGIC;
  signal \DIVIDER[8]_i_4__0_n_0\ : STD_LOGIC;
  signal \DIVIDER[8]_i_5__0_n_0\ : STD_LOGIC;
  signal DIVIDER_reg : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \DIVIDER_reg[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \DIVIDER_reg[0]_i_1__0_n_1\ : STD_LOGIC;
  signal \DIVIDER_reg[0]_i_1__0_n_2\ : STD_LOGIC;
  signal \DIVIDER_reg[0]_i_1__0_n_3\ : STD_LOGIC;
  signal \DIVIDER_reg[0]_i_1__0_n_4\ : STD_LOGIC;
  signal \DIVIDER_reg[0]_i_1__0_n_5\ : STD_LOGIC;
  signal \DIVIDER_reg[0]_i_1__0_n_6\ : STD_LOGIC;
  signal \DIVIDER_reg[0]_i_1__0_n_7\ : STD_LOGIC;
  signal \DIVIDER_reg[12]_i_1__0_n_0\ : STD_LOGIC;
  signal \DIVIDER_reg[12]_i_1__0_n_1\ : STD_LOGIC;
  signal \DIVIDER_reg[12]_i_1__0_n_2\ : STD_LOGIC;
  signal \DIVIDER_reg[12]_i_1__0_n_3\ : STD_LOGIC;
  signal \DIVIDER_reg[12]_i_1__0_n_4\ : STD_LOGIC;
  signal \DIVIDER_reg[12]_i_1__0_n_5\ : STD_LOGIC;
  signal \DIVIDER_reg[12]_i_1__0_n_6\ : STD_LOGIC;
  signal \DIVIDER_reg[12]_i_1__0_n_7\ : STD_LOGIC;
  signal \DIVIDER_reg[16]_i_1__0_n_3\ : STD_LOGIC;
  signal \DIVIDER_reg[16]_i_1__0_n_6\ : STD_LOGIC;
  signal \DIVIDER_reg[16]_i_1__0_n_7\ : STD_LOGIC;
  signal \DIVIDER_reg[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \DIVIDER_reg[4]_i_1__0_n_1\ : STD_LOGIC;
  signal \DIVIDER_reg[4]_i_1__0_n_2\ : STD_LOGIC;
  signal \DIVIDER_reg[4]_i_1__0_n_3\ : STD_LOGIC;
  signal \DIVIDER_reg[4]_i_1__0_n_4\ : STD_LOGIC;
  signal \DIVIDER_reg[4]_i_1__0_n_5\ : STD_LOGIC;
  signal \DIVIDER_reg[4]_i_1__0_n_6\ : STD_LOGIC;
  signal \DIVIDER_reg[4]_i_1__0_n_7\ : STD_LOGIC;
  signal \DIVIDER_reg[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \DIVIDER_reg[8]_i_1__0_n_1\ : STD_LOGIC;
  signal \DIVIDER_reg[8]_i_1__0_n_2\ : STD_LOGIC;
  signal \DIVIDER_reg[8]_i_1__0_n_3\ : STD_LOGIC;
  signal \DIVIDER_reg[8]_i_1__0_n_4\ : STD_LOGIC;
  signal \DIVIDER_reg[8]_i_1__0_n_5\ : STD_LOGIC;
  signal \DIVIDER_reg[8]_i_1__0_n_6\ : STD_LOGIC;
  signal \DIVIDER_reg[8]_i_1__0_n_7\ : STD_LOGIC;
  signal \Qint[1]_i_3_n_0\ : STD_LOGIC;
  signal \Qint[1]_i_4_n_0\ : STD_LOGIC;
  signal \Qint[1]_i_5_n_0\ : STD_LOGIC;
  signal \Qint[1]_i_6_n_0\ : STD_LOGIC;
  signal \NLW_DIVIDER_reg[16]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DIVIDER_reg[16]_i_1__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
begin
\DIVIDER[0]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(0),
      I1 => \Qint[1]_i_6_n_0\,
      I2 => \Qint[1]_i_5_n_0\,
      I3 => \Qint[1]_i_4_n_0\,
      I4 => \Qint[1]_i_3_n_0\,
      O => \DIVIDER[0]_i_2__0_n_0\
    );
\DIVIDER[0]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(3),
      I1 => \Qint[1]_i_6_n_0\,
      I2 => \Qint[1]_i_5_n_0\,
      I3 => \Qint[1]_i_4_n_0\,
      I4 => \Qint[1]_i_3_n_0\,
      O => \DIVIDER[0]_i_3__0_n_0\
    );
\DIVIDER[0]_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(2),
      I1 => \Qint[1]_i_6_n_0\,
      I2 => \Qint[1]_i_5_n_0\,
      I3 => \Qint[1]_i_4_n_0\,
      I4 => \Qint[1]_i_3_n_0\,
      O => \DIVIDER[0]_i_4__0_n_0\
    );
\DIVIDER[0]_i_5__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(1),
      I1 => \Qint[1]_i_6_n_0\,
      I2 => \Qint[1]_i_5_n_0\,
      I3 => \Qint[1]_i_4_n_0\,
      I4 => \Qint[1]_i_3_n_0\,
      O => \DIVIDER[0]_i_5__0_n_0\
    );
\DIVIDER[0]_i_6__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55551555"
    )
        port map (
      I0 => DIVIDER_reg(0),
      I1 => \Qint[1]_i_6_n_0\,
      I2 => \Qint[1]_i_5_n_0\,
      I3 => \Qint[1]_i_4_n_0\,
      I4 => \Qint[1]_i_3_n_0\,
      O => \DIVIDER[0]_i_6__0_n_0\
    );
\DIVIDER[12]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(15),
      I1 => \Qint[1]_i_6_n_0\,
      I2 => \Qint[1]_i_5_n_0\,
      I3 => \Qint[1]_i_4_n_0\,
      I4 => \Qint[1]_i_3_n_0\,
      O => \DIVIDER[12]_i_2__0_n_0\
    );
\DIVIDER[12]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(14),
      I1 => \Qint[1]_i_6_n_0\,
      I2 => \Qint[1]_i_5_n_0\,
      I3 => \Qint[1]_i_4_n_0\,
      I4 => \Qint[1]_i_3_n_0\,
      O => \DIVIDER[12]_i_3__0_n_0\
    );
\DIVIDER[12]_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(13),
      I1 => \Qint[1]_i_6_n_0\,
      I2 => \Qint[1]_i_5_n_0\,
      I3 => \Qint[1]_i_4_n_0\,
      I4 => \Qint[1]_i_3_n_0\,
      O => \DIVIDER[12]_i_4__0_n_0\
    );
\DIVIDER[12]_i_5__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(12),
      I1 => \Qint[1]_i_6_n_0\,
      I2 => \Qint[1]_i_5_n_0\,
      I3 => \Qint[1]_i_4_n_0\,
      I4 => \Qint[1]_i_3_n_0\,
      O => \DIVIDER[12]_i_5__0_n_0\
    );
\DIVIDER[16]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(17),
      I1 => \Qint[1]_i_6_n_0\,
      I2 => \Qint[1]_i_5_n_0\,
      I3 => \Qint[1]_i_4_n_0\,
      I4 => \Qint[1]_i_3_n_0\,
      O => \DIVIDER[16]_i_2__0_n_0\
    );
\DIVIDER[16]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(16),
      I1 => \Qint[1]_i_6_n_0\,
      I2 => \Qint[1]_i_5_n_0\,
      I3 => \Qint[1]_i_4_n_0\,
      I4 => \Qint[1]_i_3_n_0\,
      O => \DIVIDER[16]_i_3__0_n_0\
    );
\DIVIDER[4]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(7),
      I1 => \Qint[1]_i_6_n_0\,
      I2 => \Qint[1]_i_5_n_0\,
      I3 => \Qint[1]_i_4_n_0\,
      I4 => \Qint[1]_i_3_n_0\,
      O => \DIVIDER[4]_i_2__0_n_0\
    );
\DIVIDER[4]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(6),
      I1 => \Qint[1]_i_6_n_0\,
      I2 => \Qint[1]_i_5_n_0\,
      I3 => \Qint[1]_i_4_n_0\,
      I4 => \Qint[1]_i_3_n_0\,
      O => \DIVIDER[4]_i_3__0_n_0\
    );
\DIVIDER[4]_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(5),
      I1 => \Qint[1]_i_6_n_0\,
      I2 => \Qint[1]_i_5_n_0\,
      I3 => \Qint[1]_i_4_n_0\,
      I4 => \Qint[1]_i_3_n_0\,
      O => \DIVIDER[4]_i_4__0_n_0\
    );
\DIVIDER[4]_i_5__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(4),
      I1 => \Qint[1]_i_6_n_0\,
      I2 => \Qint[1]_i_5_n_0\,
      I3 => \Qint[1]_i_4_n_0\,
      I4 => \Qint[1]_i_3_n_0\,
      O => \DIVIDER[4]_i_5__0_n_0\
    );
\DIVIDER[8]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(11),
      I1 => \Qint[1]_i_6_n_0\,
      I2 => \Qint[1]_i_5_n_0\,
      I3 => \Qint[1]_i_4_n_0\,
      I4 => \Qint[1]_i_3_n_0\,
      O => \DIVIDER[8]_i_2__0_n_0\
    );
\DIVIDER[8]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(10),
      I1 => \Qint[1]_i_6_n_0\,
      I2 => \Qint[1]_i_5_n_0\,
      I3 => \Qint[1]_i_4_n_0\,
      I4 => \Qint[1]_i_3_n_0\,
      O => \DIVIDER[8]_i_3__0_n_0\
    );
\DIVIDER[8]_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(9),
      I1 => \Qint[1]_i_6_n_0\,
      I2 => \Qint[1]_i_5_n_0\,
      I3 => \Qint[1]_i_4_n_0\,
      I4 => \Qint[1]_i_3_n_0\,
      O => \DIVIDER[8]_i_4__0_n_0\
    );
\DIVIDER[8]_i_5__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(8),
      I1 => \Qint[1]_i_6_n_0\,
      I2 => \Qint[1]_i_5_n_0\,
      I3 => \Qint[1]_i_4_n_0\,
      I4 => \Qint[1]_i_3_n_0\,
      O => \DIVIDER[8]_i_5__0_n_0\
    );
\DIVIDER_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      CLR => CLR_IBUF,
      D => \DIVIDER_reg[0]_i_1__0_n_7\,
      Q => DIVIDER_reg(0)
    );
\DIVIDER_reg[0]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \DIVIDER_reg[0]_i_1__0_n_0\,
      CO(2) => \DIVIDER_reg[0]_i_1__0_n_1\,
      CO(1) => \DIVIDER_reg[0]_i_1__0_n_2\,
      CO(0) => \DIVIDER_reg[0]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \DIVIDER[0]_i_2__0_n_0\,
      O(3) => \DIVIDER_reg[0]_i_1__0_n_4\,
      O(2) => \DIVIDER_reg[0]_i_1__0_n_5\,
      O(1) => \DIVIDER_reg[0]_i_1__0_n_6\,
      O(0) => \DIVIDER_reg[0]_i_1__0_n_7\,
      S(3) => \DIVIDER[0]_i_3__0_n_0\,
      S(2) => \DIVIDER[0]_i_4__0_n_0\,
      S(1) => \DIVIDER[0]_i_5__0_n_0\,
      S(0) => \DIVIDER[0]_i_6__0_n_0\
    );
\DIVIDER_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      CLR => CLR_IBUF,
      D => \DIVIDER_reg[8]_i_1__0_n_5\,
      Q => DIVIDER_reg(10)
    );
\DIVIDER_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      CLR => CLR_IBUF,
      D => \DIVIDER_reg[8]_i_1__0_n_4\,
      Q => DIVIDER_reg(11)
    );
\DIVIDER_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      CLR => CLR_IBUF,
      D => \DIVIDER_reg[12]_i_1__0_n_7\,
      Q => DIVIDER_reg(12)
    );
\DIVIDER_reg[12]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \DIVIDER_reg[8]_i_1__0_n_0\,
      CO(3) => \DIVIDER_reg[12]_i_1__0_n_0\,
      CO(2) => \DIVIDER_reg[12]_i_1__0_n_1\,
      CO(1) => \DIVIDER_reg[12]_i_1__0_n_2\,
      CO(0) => \DIVIDER_reg[12]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \DIVIDER_reg[12]_i_1__0_n_4\,
      O(2) => \DIVIDER_reg[12]_i_1__0_n_5\,
      O(1) => \DIVIDER_reg[12]_i_1__0_n_6\,
      O(0) => \DIVIDER_reg[12]_i_1__0_n_7\,
      S(3) => \DIVIDER[12]_i_2__0_n_0\,
      S(2) => \DIVIDER[12]_i_3__0_n_0\,
      S(1) => \DIVIDER[12]_i_4__0_n_0\,
      S(0) => \DIVIDER[12]_i_5__0_n_0\
    );
\DIVIDER_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      CLR => CLR_IBUF,
      D => \DIVIDER_reg[12]_i_1__0_n_6\,
      Q => DIVIDER_reg(13)
    );
\DIVIDER_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      CLR => CLR_IBUF,
      D => \DIVIDER_reg[12]_i_1__0_n_5\,
      Q => DIVIDER_reg(14)
    );
\DIVIDER_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      CLR => CLR_IBUF,
      D => \DIVIDER_reg[12]_i_1__0_n_4\,
      Q => DIVIDER_reg(15)
    );
\DIVIDER_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      CLR => CLR_IBUF,
      D => \DIVIDER_reg[16]_i_1__0_n_7\,
      Q => DIVIDER_reg(16)
    );
\DIVIDER_reg[16]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \DIVIDER_reg[12]_i_1__0_n_0\,
      CO(3 downto 1) => \NLW_DIVIDER_reg[16]_i_1__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \DIVIDER_reg[16]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_DIVIDER_reg[16]_i_1__0_O_UNCONNECTED\(3 downto 2),
      O(1) => \DIVIDER_reg[16]_i_1__0_n_6\,
      O(0) => \DIVIDER_reg[16]_i_1__0_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \DIVIDER[16]_i_2__0_n_0\,
      S(0) => \DIVIDER[16]_i_3__0_n_0\
    );
\DIVIDER_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      CLR => CLR_IBUF,
      D => \DIVIDER_reg[16]_i_1__0_n_6\,
      Q => DIVIDER_reg(17)
    );
\DIVIDER_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      CLR => CLR_IBUF,
      D => \DIVIDER_reg[0]_i_1__0_n_6\,
      Q => DIVIDER_reg(1)
    );
\DIVIDER_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      CLR => CLR_IBUF,
      D => \DIVIDER_reg[0]_i_1__0_n_5\,
      Q => DIVIDER_reg(2)
    );
\DIVIDER_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      CLR => CLR_IBUF,
      D => \DIVIDER_reg[0]_i_1__0_n_4\,
      Q => DIVIDER_reg(3)
    );
\DIVIDER_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      CLR => CLR_IBUF,
      D => \DIVIDER_reg[4]_i_1__0_n_7\,
      Q => DIVIDER_reg(4)
    );
\DIVIDER_reg[4]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \DIVIDER_reg[0]_i_1__0_n_0\,
      CO(3) => \DIVIDER_reg[4]_i_1__0_n_0\,
      CO(2) => \DIVIDER_reg[4]_i_1__0_n_1\,
      CO(1) => \DIVIDER_reg[4]_i_1__0_n_2\,
      CO(0) => \DIVIDER_reg[4]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \DIVIDER_reg[4]_i_1__0_n_4\,
      O(2) => \DIVIDER_reg[4]_i_1__0_n_5\,
      O(1) => \DIVIDER_reg[4]_i_1__0_n_6\,
      O(0) => \DIVIDER_reg[4]_i_1__0_n_7\,
      S(3) => \DIVIDER[4]_i_2__0_n_0\,
      S(2) => \DIVIDER[4]_i_3__0_n_0\,
      S(1) => \DIVIDER[4]_i_4__0_n_0\,
      S(0) => \DIVIDER[4]_i_5__0_n_0\
    );
\DIVIDER_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      CLR => CLR_IBUF,
      D => \DIVIDER_reg[4]_i_1__0_n_6\,
      Q => DIVIDER_reg(5)
    );
\DIVIDER_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      CLR => CLR_IBUF,
      D => \DIVIDER_reg[4]_i_1__0_n_5\,
      Q => DIVIDER_reg(6)
    );
\DIVIDER_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      CLR => CLR_IBUF,
      D => \DIVIDER_reg[4]_i_1__0_n_4\,
      Q => DIVIDER_reg(7)
    );
\DIVIDER_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      CLR => CLR_IBUF,
      D => \DIVIDER_reg[8]_i_1__0_n_7\,
      Q => DIVIDER_reg(8)
    );
\DIVIDER_reg[8]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \DIVIDER_reg[4]_i_1__0_n_0\,
      CO(3) => \DIVIDER_reg[8]_i_1__0_n_0\,
      CO(2) => \DIVIDER_reg[8]_i_1__0_n_1\,
      CO(1) => \DIVIDER_reg[8]_i_1__0_n_2\,
      CO(0) => \DIVIDER_reg[8]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \DIVIDER_reg[8]_i_1__0_n_4\,
      O(2) => \DIVIDER_reg[8]_i_1__0_n_5\,
      O(1) => \DIVIDER_reg[8]_i_1__0_n_6\,
      O(0) => \DIVIDER_reg[8]_i_1__0_n_7\,
      S(3) => \DIVIDER[8]_i_2__0_n_0\,
      S(2) => \DIVIDER[8]_i_3__0_n_0\,
      S(1) => \DIVIDER[8]_i_4__0_n_0\,
      S(0) => \DIVIDER[8]_i_5__0_n_0\
    );
\DIVIDER_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      CLR => CLR_IBUF,
      D => \DIVIDER_reg[8]_i_1__0_n_6\,
      Q => DIVIDER_reg(9)
    );
\Qint[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \Qint[1]_i_3_n_0\,
      I1 => \Qint[1]_i_4_n_0\,
      I2 => \Qint[1]_i_5_n_0\,
      I3 => \Qint[1]_i_6_n_0\,
      O => CLK
    );
\Qint[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFBF"
    )
        port map (
      I0 => DIVIDER_reg(6),
      I1 => DIVIDER_reg(17),
      I2 => DIVIDER_reg(16),
      I3 => DIVIDER_reg(9),
      I4 => DIVIDER_reg(7),
      O => \Qint[1]_i_3_n_0\
    );
\Qint[1]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => DIVIDER_reg(15),
      I1 => DIVIDER_reg(14),
      I2 => DIVIDER_reg(13),
      I3 => DIVIDER_reg(12),
      O => \Qint[1]_i_4_n_0\
    );
\Qint[1]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => DIVIDER_reg(8),
      I1 => DIVIDER_reg(5),
      I2 => DIVIDER_reg(11),
      I3 => DIVIDER_reg(10),
      O => \Qint[1]_i_5_n_0\
    );
\Qint[1]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => DIVIDER_reg(0),
      I1 => DIVIDER_reg(1),
      I2 => DIVIDER_reg(2),
      I3 => DIVIDER_reg(4),
      I4 => DIVIDER_reg(3),
      O => \Qint[1]_i_6_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Top is
  port (
    CLK : in STD_LOGIC;
    CLR : in STD_LOGIC;
    CE : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 6 downto 0 );
    AN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SGN : in STD_LOGIC;
    RED : out STD_LOGIC;
    GREEN : out STD_LOGIC;
    MODE_1 : in STD_LOGIC;
    MODE_2 : in STD_LOGIC;
    MODE_3 : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Top : entity is true;
end Top;

architecture STRUCTURE of Top is
  signal AN_OBUF : STD_LOGIC_VECTOR ( 7 downto 5 );
  signal BUS3327 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal BUS3362 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal BUS3381 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal CE_IBUF : STD_LOGIC;
  signal CLK_IBUF : STD_LOGIC;
  signal CLK_IBUF_BUFG : STD_LOGIC;
  signal CLR_IBUF : STD_LOGIC;
  signal GREEN_OBUF : STD_LOGIC;
  signal MODE_1_IBUF : STD_LOGIC;
  signal MODE_2_IBUF : STD_LOGIC;
  signal MODE_3_IBUF : STD_LOGIC;
  signal NET3284 : STD_LOGIC;
  signal NET3292 : STD_LOGIC;
  signal NET3300 : STD_LOGIC;
  signal Q_GREEN0 : STD_LOGIC;
  signal Q_GREEN1 : STD_LOGIC;
  signal Q_OBUF : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal RED_OBUF : STD_LOGIC;
  signal SGN_IBUF : STD_LOGIC;
  signal U7_n_0 : STD_LOGIC;
  signal U7_n_3 : STD_LOGIC;
  signal load : STD_LOGIC;
begin
\AN_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '1',
      O => AN(0)
    );
\AN_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '1',
      O => AN(1)
    );
\AN_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '1',
      O => AN(2)
    );
\AN_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '1',
      O => AN(3)
    );
\AN_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '1',
      O => AN(4)
    );
\AN_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => AN_OBUF(5),
      O => AN(5)
    );
\AN_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => AN_OBUF(6),
      O => AN(6)
    );
\AN_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => AN_OBUF(7),
      O => AN(7)
    );
CE_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => CE,
      O => CE_IBUF
    );
CLK_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => CLK_IBUF,
      O => CLK_IBUF_BUFG
    );
CLK_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => CLK,
      O => CLK_IBUF
    );
CLR_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => CLR,
      O => CLR_IBUF
    );
GREEN_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => GREEN_OBUF,
      O => GREEN
    );
MODE_1_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => MODE_1,
      O => MODE_1_IBUF
    );
MODE_2_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => MODE_2,
      O => MODE_2_IBUF
    );
MODE_3_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => MODE_3,
      O => MODE_3_IBUF
    );
\Q_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Q_OBUF(0),
      O => Q(0)
    );
\Q_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Q_OBUF(1),
      O => Q(1)
    );
\Q_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Q_OBUF(2),
      O => Q(2)
    );
\Q_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Q_OBUF(3),
      O => Q(3)
    );
\Q_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Q_OBUF(4),
      O => Q(4)
    );
\Q_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Q_OBUF(5),
      O => Q(5)
    );
\Q_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Q_OBUF(6),
      O => Q(6)
    );
RED_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => RED_OBUF,
      O => RED
    );
SGN_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => SGN,
      O => SGN_IBUF
    );
U1: entity work.Prescaler_11
     port map (
      CE_IBUF => CE_IBUF,
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      CLR_IBUF => CLR_IBUF,
      NET3284 => NET3284
    );
U13: entity work.Compare
     port map (
      CE_IBUF => CE_IBUF,
      GREEN => U7_n_3,
      GREEN_OBUF => GREEN_OBUF,
      Q_GREEN0 => Q_GREEN0,
      Q_GREEN1 => Q_GREEN1,
      RED => U7_n_0,
      RED_OBUF => RED_OBUF
    );
U2: entity work.Prescaler_13
     port map (
      CE_IBUF => CE_IBUF,
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      CLR_IBUF => CLR_IBUF,
      NET3292 => NET3292
    );
U3: entity work.Prescaler_17
     port map (
      CE_IBUF => CE_IBUF,
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      CLR_IBUF => CLR_IBUF,
      NET3300 => NET3300
    );
U5: entity work.Prescaler_DISP
     port map (
      CLK => load,
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      CLR_IBUF => CLR_IBUF
    );
U6: entity work.Counter_2
     port map (
      AN_OBUF(2 downto 0) => AN_OBUF(7 downto 5),
      BUS3327(2 downto 0) => BUS3327(2 downto 0),
      BUS3362(2 downto 0) => BUS3362(2 downto 0),
      BUS3381(2 downto 0) => BUS3381(2 downto 0),
      CLK => load,
      CLR_IBUF => CLR_IBUF,
      Q_OBUF(6 downto 0) => Q_OBUF(6 downto 0),
      SGN_IBUF => SGN_IBUF
    );
U7: entity work.Counter
     port map (
      BUS3327(2 downto 0) => BUS3327(2 downto 0),
      BUS3362(2 downto 0) => BUS3362(2 downto 0),
      BUS3381(2 downto 0) => BUS3381(2 downto 0),
      CE_IBUF => CE_IBUF,
      CLR_IBUF => CLR_IBUF,
      MODE_1_IBUF => MODE_1_IBUF,
      MODE_2_IBUF => MODE_2_IBUF,
      MODE_3_IBUF => MODE_3_IBUF,
      NET3284 => NET3284,
      Q_GREEN0 => Q_GREEN0,
      Q_GREEN1 => Q_GREEN1,
      \Qint_reg[0]_0\ => U7_n_0,
      \Qint_reg[1]_0\ => U7_n_3
    );
U8: entity work.Counter_0
     port map (
      BUS3327(2 downto 0) => BUS3327(2 downto 0),
      CE_IBUF => CE_IBUF,
      CLR_IBUF => CLR_IBUF,
      MODE_1_IBUF => MODE_1_IBUF,
      MODE_2_IBUF => MODE_2_IBUF,
      MODE_3_IBUF => MODE_3_IBUF,
      NET3292 => NET3292
    );
U9: entity work.Counter_1
     port map (
      BUS3381(2 downto 0) => BUS3381(2 downto 0),
      CE_IBUF => CE_IBUF,
      CLR_IBUF => CLR_IBUF,
      MODE_1_IBUF => MODE_1_IBUF,
      MODE_2_IBUF => MODE_2_IBUF,
      MODE_3_IBUF => MODE_3_IBUF,
      NET3300 => NET3300
    );
end STRUCTURE;
