// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Thu Feb 10 18:16:56 2022
// Host        : DESKTOP-85IVNNL running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -sdf_anno false -force Top.v
// Design      : Top
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module Compare
   (CE_IBUF,
    GREEN,
    GREEN_OBUF,
    Q_GREEN0,
    Q_GREEN1,
    RED,
    RED_OBUF);
  input CE_IBUF;
  input GREEN;
  output GREEN_OBUF;
  input Q_GREEN0;
  input Q_GREEN1;
  input RED;
  output RED_OBUF;

  wire CE_IBUF;
  wire GREEN;
  wire GREEN_OBUF;
  wire Q_GREEN0;
  wire Q_GREEN1;
  wire RED;
  wire RED_OBUF;

  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    Q_GREEN_reg
       (.CLR(CE_IBUF),
        .D(GREEN),
        .G(Q_GREEN0),
        .GE(1'b1),
        .Q(GREEN_OBUF));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    Q_RED_reg
       (.CLR(CE_IBUF),
        .D(Q_GREEN1),
        .G(RED),
        .GE(1'b1),
        .Q(RED_OBUF));
endmodule

module Counter
   (CE_IBUF,
    CLR_IBUF,
    MODE_1_IBUF,
    MODE_2_IBUF,
    MODE_3_IBUF,
    NET3284,
    Q_GREEN0,
    Q_GREEN1,
    \Qint_reg[0]_0 ,
    \Qint_reg[1]_0 ,
    BUS3327,
    BUS3362,
    BUS3381);
  input CE_IBUF;
  input CLR_IBUF;
  input MODE_1_IBUF;
  input MODE_2_IBUF;
  input MODE_3_IBUF;
  input NET3284;
  output Q_GREEN0;
  output Q_GREEN1;
  output \Qint_reg[0]_0 ;
  output \Qint_reg[1]_0 ;
  input [2:0]BUS3327;
  output [2:0]BUS3362;
  input [2:0]BUS3381;

  wire [2:0]BUS3327;
  wire [2:0]BUS3362;
  wire [2:0]BUS3381;
  wire CE_IBUF;
  wire CLR_IBUF;
  wire MODE_1_IBUF;
  wire MODE_2_IBUF;
  wire MODE_3_IBUF;
  wire NET3284;
  wire Q_GREEN0;
  wire Q_GREEN1;
  wire \Qint[0]_i_1_n_0 ;
  wire \Qint[0]_i_2__1_n_0 ;
  wire \Qint[1]_i_1_n_0 ;
  wire \Qint[1]_i_2__2_n_0 ;
  wire \Qint[2]_i_1_n_0 ;
  wire \Qint[2]_i_3__1_n_0 ;
  wire \Qint_reg[0]_0 ;
  wire \Qint_reg[1]_0 ;

  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    Q_GREEN_reg_i_1
       (.I0(BUS3362[1]),
        .I1(BUS3381[1]),
        .I2(BUS3362[2]),
        .I3(BUS3381[2]),
        .I4(BUS3381[0]),
        .I5(BUS3362[0]),
        .O(\Qint_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    Q_GREEN_reg_i_2
       (.I0(BUS3362[0]),
        .I1(BUS3327[0]),
        .I2(BUS3327[2]),
        .I3(BUS3362[2]),
        .I4(BUS3327[1]),
        .I5(BUS3362[1]),
        .O(Q_GREEN0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    Q_RED_reg_i_1
       (.I0(BUS3362[0]),
        .I1(BUS3381[0]),
        .I2(BUS3381[2]),
        .I3(BUS3362[2]),
        .I4(BUS3381[1]),
        .I5(BUS3362[1]),
        .O(Q_GREEN1));
  LUT2 #(
    .INIT(4'h8)) 
    Q_RED_reg_i_2
       (.I0(Q_GREEN0),
        .I1(Q_GREEN1),
        .O(\Qint_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Qint[0]_i_1 
       (.I0(\Qint[0]_i_2__1_n_0 ),
        .I1(CE_IBUF),
        .I2(BUS3362[0]),
        .O(\Qint[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000EFE9FF)) 
    \Qint[0]_i_2__1 
       (.I0(MODE_1_IBUF),
        .I1(MODE_2_IBUF),
        .I2(MODE_3_IBUF),
        .I3(BUS3362[2]),
        .I4(BUS3362[1]),
        .I5(BUS3362[0]),
        .O(\Qint[0]_i_2__1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \Qint[1]_i_1 
       (.I0(\Qint[1]_i_2__2_n_0 ),
        .I1(CE_IBUF),
        .I2(BUS3362[1]),
        .O(\Qint[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000FF00EF0000)) 
    \Qint[1]_i_2__2 
       (.I0(MODE_1_IBUF),
        .I1(MODE_2_IBUF),
        .I2(MODE_3_IBUF),
        .I3(BUS3362[2]),
        .I4(BUS3362[1]),
        .I5(BUS3362[0]),
        .O(\Qint[1]_i_2__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Qint[2]_i_1 
       (.I0(\Qint[2]_i_3__1_n_0 ),
        .I1(CE_IBUF),
        .I2(BUS3362[2]),
        .O(\Qint[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00EB00000000E900)) 
    \Qint[2]_i_3__1 
       (.I0(MODE_1_IBUF),
        .I1(MODE_2_IBUF),
        .I2(MODE_3_IBUF),
        .I3(BUS3362[2]),
        .I4(BUS3362[1]),
        .I5(BUS3362[0]),
        .O(\Qint[2]_i_3__1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \Qint_reg[0] 
       (.C(NET3284),
        .CE(1'b1),
        .CLR(CLR_IBUF),
        .D(\Qint[0]_i_1_n_0 ),
        .Q(BUS3362[0]));
  FDCE #(
    .INIT(1'b0)) 
    \Qint_reg[1] 
       (.C(NET3284),
        .CE(1'b1),
        .CLR(CLR_IBUF),
        .D(\Qint[1]_i_1_n_0 ),
        .Q(BUS3362[1]));
  FDCE #(
    .INIT(1'b0)) 
    \Qint_reg[2] 
       (.C(NET3284),
        .CE(1'b1),
        .CLR(CLR_IBUF),
        .D(\Qint[2]_i_1_n_0 ),
        .Q(BUS3362[2]));
endmodule

(* ORIG_REF_NAME = "Counter" *) 
module Counter_0
   (CE_IBUF,
    CLR_IBUF,
    MODE_1_IBUF,
    MODE_2_IBUF,
    MODE_3_IBUF,
    NET3292,
    BUS3327);
  input CE_IBUF;
  input CLR_IBUF;
  input MODE_1_IBUF;
  input MODE_2_IBUF;
  input MODE_3_IBUF;
  input NET3292;
  output [2:0]BUS3327;

  wire [2:0]BUS3327;
  wire CE_IBUF;
  wire CLR_IBUF;
  wire MODE_1_IBUF;
  wire MODE_2_IBUF;
  wire MODE_3_IBUF;
  wire NET3292;
  wire \Qint[0]_i_1_n_0 ;
  wire \Qint[0]_i_2__0_n_0 ;
  wire \Qint[1]_i_1_n_0 ;
  wire \Qint[1]_i_2__1_n_0 ;
  wire \Qint[2]_i_1_n_0 ;
  wire \Qint[2]_i_3__0_n_0 ;

  LUT3 #(
    .INIT(8'hB8)) 
    \Qint[0]_i_1 
       (.I0(\Qint[0]_i_2__0_n_0 ),
        .I1(CE_IBUF),
        .I2(BUS3327[0]),
        .O(\Qint[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000EFE9FF)) 
    \Qint[0]_i_2__0 
       (.I0(MODE_1_IBUF),
        .I1(MODE_2_IBUF),
        .I2(MODE_3_IBUF),
        .I3(BUS3327[2]),
        .I4(BUS3327[1]),
        .I5(BUS3327[0]),
        .O(\Qint[0]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Qint[1]_i_1 
       (.I0(\Qint[1]_i_2__1_n_0 ),
        .I1(CE_IBUF),
        .I2(BUS3327[1]),
        .O(\Qint[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000FF00EF0000)) 
    \Qint[1]_i_2__1 
       (.I0(MODE_1_IBUF),
        .I1(MODE_2_IBUF),
        .I2(MODE_3_IBUF),
        .I3(BUS3327[2]),
        .I4(BUS3327[1]),
        .I5(BUS3327[0]),
        .O(\Qint[1]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Qint[2]_i_1 
       (.I0(\Qint[2]_i_3__0_n_0 ),
        .I1(CE_IBUF),
        .I2(BUS3327[2]),
        .O(\Qint[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00EB00000000E900)) 
    \Qint[2]_i_3__0 
       (.I0(MODE_1_IBUF),
        .I1(MODE_2_IBUF),
        .I2(MODE_3_IBUF),
        .I3(BUS3327[2]),
        .I4(BUS3327[1]),
        .I5(BUS3327[0]),
        .O(\Qint[2]_i_3__0_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \Qint_reg[0] 
       (.C(NET3292),
        .CE(1'b1),
        .CLR(CLR_IBUF),
        .D(\Qint[0]_i_1_n_0 ),
        .Q(BUS3327[0]));
  FDCE #(
    .INIT(1'b0)) 
    \Qint_reg[1] 
       (.C(NET3292),
        .CE(1'b1),
        .CLR(CLR_IBUF),
        .D(\Qint[1]_i_1_n_0 ),
        .Q(BUS3327[1]));
  FDCE #(
    .INIT(1'b0)) 
    \Qint_reg[2] 
       (.C(NET3292),
        .CE(1'b1),
        .CLR(CLR_IBUF),
        .D(\Qint[2]_i_1_n_0 ),
        .Q(BUS3327[2]));
endmodule

(* ORIG_REF_NAME = "Counter" *) 
module Counter_1
   (CE_IBUF,
    CLR_IBUF,
    MODE_1_IBUF,
    MODE_2_IBUF,
    MODE_3_IBUF,
    NET3300,
    BUS3381);
  input CE_IBUF;
  input CLR_IBUF;
  input MODE_1_IBUF;
  input MODE_2_IBUF;
  input MODE_3_IBUF;
  input NET3300;
  output [2:0]BUS3381;

  wire [2:0]BUS3381;
  wire CE_IBUF;
  wire CLR_IBUF;
  wire MODE_1_IBUF;
  wire MODE_2_IBUF;
  wire MODE_3_IBUF;
  wire NET3300;
  wire \Qint[0]_i_1_n_0 ;
  wire \Qint[0]_i_2_n_0 ;
  wire \Qint[1]_i_1_n_0 ;
  wire \Qint[1]_i_2__0_n_0 ;
  wire \Qint[2]_i_1_n_0 ;
  wire \Qint[2]_i_3_n_0 ;

  LUT3 #(
    .INIT(8'hB8)) 
    \Qint[0]_i_1 
       (.I0(\Qint[0]_i_2_n_0 ),
        .I1(CE_IBUF),
        .I2(BUS3381[0]),
        .O(\Qint[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000EFE9FF)) 
    \Qint[0]_i_2 
       (.I0(MODE_1_IBUF),
        .I1(MODE_2_IBUF),
        .I2(MODE_3_IBUF),
        .I3(BUS3381[2]),
        .I4(BUS3381[1]),
        .I5(BUS3381[0]),
        .O(\Qint[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Qint[1]_i_1 
       (.I0(\Qint[1]_i_2__0_n_0 ),
        .I1(CE_IBUF),
        .I2(BUS3381[1]),
        .O(\Qint[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000FF00EF0000)) 
    \Qint[1]_i_2__0 
       (.I0(MODE_1_IBUF),
        .I1(MODE_2_IBUF),
        .I2(MODE_3_IBUF),
        .I3(BUS3381[2]),
        .I4(BUS3381[1]),
        .I5(BUS3381[0]),
        .O(\Qint[1]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Qint[2]_i_1 
       (.I0(\Qint[2]_i_3_n_0 ),
        .I1(CE_IBUF),
        .I2(BUS3381[2]),
        .O(\Qint[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00EB00000000E900)) 
    \Qint[2]_i_3 
       (.I0(MODE_1_IBUF),
        .I1(MODE_2_IBUF),
        .I2(MODE_3_IBUF),
        .I3(BUS3381[2]),
        .I4(BUS3381[1]),
        .I5(BUS3381[0]),
        .O(\Qint[2]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \Qint_reg[0] 
       (.C(NET3300),
        .CE(1'b1),
        .CLR(CLR_IBUF),
        .D(\Qint[0]_i_1_n_0 ),
        .Q(BUS3381[0]));
  FDCE #(
    .INIT(1'b0)) 
    \Qint_reg[1] 
       (.C(NET3300),
        .CE(1'b1),
        .CLR(CLR_IBUF),
        .D(\Qint[1]_i_1_n_0 ),
        .Q(BUS3381[1]));
  FDCE #(
    .INIT(1'b0)) 
    \Qint_reg[2] 
       (.C(NET3300),
        .CE(1'b1),
        .CLR(CLR_IBUF),
        .D(\Qint[2]_i_1_n_0 ),
        .Q(BUS3381[2]));
endmodule

module Counter_2
   (CLK,
    CLR_IBUF,
    SGN_IBUF,
    AN_OBUF,
    BUS3327,
    BUS3362,
    BUS3381,
    Q_OBUF);
  input CLK;
  input CLR_IBUF;
  input SGN_IBUF;
  output [2:0]AN_OBUF;
  input [2:0]BUS3327;
  input [2:0]BUS3362;
  input [2:0]BUS3381;
  output [6:0]Q_OBUF;

  wire [2:0]AN_OBUF;
  wire [1:0]BUS3311;
  wire [2:0]BUS3327;
  wire [2:0]BUS3362;
  wire [2:0]BUS3381;
  wire [2:0]BUS3406;
  wire CLK;
  wire CLR_IBUF;
  wire [6:0]Q_OBUF;
  wire \Qint[0]_i_1_n_0 ;
  wire \Qint[1]_i_1_n_0 ;
  wire SGN_IBUF;

  LUT2 #(
    .INIT(4'hB)) 
    \AN_OBUF[5]_inst_i_1 
       (.I0(BUS3311[0]),
        .I1(BUS3311[1]),
        .O(AN_OBUF[0]));
  LUT2 #(
    .INIT(4'hB)) 
    \AN_OBUF[6]_inst_i_1 
       (.I0(BUS3311[1]),
        .I1(BUS3311[0]),
        .O(AN_OBUF[1]));
  LUT2 #(
    .INIT(4'hE)) 
    \AN_OBUF[7]_inst_i_1 
       (.I0(BUS3311[1]),
        .I1(BUS3311[0]),
        .O(AN_OBUF[2]));
  LUT4 #(
    .INIT(16'h4A14)) 
    \Q_OBUF[0]_inst_i_1 
       (.I0(BUS3406[1]),
        .I1(BUS3406[0]),
        .I2(BUS3406[2]),
        .I3(SGN_IBUF),
        .O(Q_OBUF[0]));
  LUT4 #(
    .INIT(16'h982A)) 
    \Q_OBUF[1]_inst_i_1 
       (.I0(SGN_IBUF),
        .I1(BUS3406[1]),
        .I2(BUS3406[0]),
        .I3(BUS3406[2]),
        .O(Q_OBUF[1]));
  LUT4 #(
    .INIT(16'hC034)) 
    \Q_OBUF[2]_inst_i_1 
       (.I0(BUS3406[0]),
        .I1(BUS3406[1]),
        .I2(SGN_IBUF),
        .I3(BUS3406[2]),
        .O(Q_OBUF[2]));
  LUT4 #(
    .INIT(16'h0D42)) 
    \Q_OBUF[3]_inst_i_1 
       (.I0(BUS3406[0]),
        .I1(SGN_IBUF),
        .I2(BUS3406[1]),
        .I3(BUS3406[2]),
        .O(Q_OBUF[3]));
  LUT4 #(
    .INIT(16'h87F2)) 
    \Q_OBUF[4]_inst_i_1 
       (.I0(BUS3406[2]),
        .I1(BUS3406[1]),
        .I2(SGN_IBUF),
        .I3(BUS3406[0]),
        .O(Q_OBUF[4]));
  LUT4 #(
    .INIT(16'hE532)) 
    \Q_OBUF[5]_inst_i_1 
       (.I0(BUS3406[0]),
        .I1(BUS3406[2]),
        .I2(BUS3406[1]),
        .I3(SGN_IBUF),
        .O(Q_OBUF[5]));
  LUT4 #(
    .INIT(16'h520D)) 
    \Q_OBUF[6]_inst_i_1 
       (.I0(SGN_IBUF),
        .I1(BUS3406[0]),
        .I2(BUS3406[1]),
        .I3(BUS3406[2]),
        .O(Q_OBUF[6]));
  LUT5 #(
    .INIT(32'hFFB8CCB8)) 
    \Q_OBUF[6]_inst_i_2 
       (.I0(BUS3381[0]),
        .I1(BUS3311[1]),
        .I2(BUS3362[0]),
        .I3(BUS3311[0]),
        .I4(BUS3327[0]),
        .O(BUS3406[0]));
  LUT5 #(
    .INIT(32'hFFB8CCB8)) 
    \Q_OBUF[6]_inst_i_3 
       (.I0(BUS3381[1]),
        .I1(BUS3311[1]),
        .I2(BUS3362[1]),
        .I3(BUS3311[0]),
        .I4(BUS3327[1]),
        .O(BUS3406[1]));
  LUT5 #(
    .INIT(32'hFFB8CCB8)) 
    \Q_OBUF[6]_inst_i_4 
       (.I0(BUS3381[2]),
        .I1(BUS3311[1]),
        .I2(BUS3362[2]),
        .I3(BUS3311[0]),
        .I4(BUS3327[2]),
        .O(BUS3406[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \Qint[0]_i_1 
       (.I0(BUS3311[0]),
        .I1(BUS3311[1]),
        .O(\Qint[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \Qint[1]_i_1 
       (.I0(BUS3311[0]),
        .I1(BUS3311[1]),
        .O(\Qint[1]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \Qint_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(CLR_IBUF),
        .D(\Qint[0]_i_1_n_0 ),
        .Q(BUS3311[0]));
  FDCE #(
    .INIT(1'b0)) 
    \Qint_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(CLR_IBUF),
        .D(\Qint[1]_i_1_n_0 ),
        .Q(BUS3311[1]));
endmodule

module Prescaler_11
   (CE_IBUF,
    CLK_IBUF_BUFG,
    CLR_IBUF,
    NET3284);
  input CE_IBUF;
  input CLK_IBUF_BUFG;
  input CLR_IBUF;
  output NET3284;

  wire CE_IBUF;
  wire CLK_IBUF_BUFG;
  wire CLR_IBUF;
  wire \DIVIDER[0]_i_2_n_0 ;
  wire \DIVIDER[0]_i_3_n_0 ;
  wire \DIVIDER[0]_i_4_n_0 ;
  wire \DIVIDER[0]_i_5_n_0 ;
  wire \DIVIDER[0]_i_6_n_0 ;
  wire \DIVIDER[12]_i_2_n_0 ;
  wire \DIVIDER[12]_i_3_n_0 ;
  wire \DIVIDER[12]_i_4_n_0 ;
  wire \DIVIDER[12]_i_5_n_0 ;
  wire \DIVIDER[16]_i_2_n_0 ;
  wire \DIVIDER[16]_i_3_n_0 ;
  wire \DIVIDER[16]_i_4_n_0 ;
  wire \DIVIDER[16]_i_5_n_0 ;
  wire \DIVIDER[20]_i_2_n_0 ;
  wire \DIVIDER[20]_i_3_n_0 ;
  wire \DIVIDER[20]_i_4_n_0 ;
  wire \DIVIDER[4]_i_2_n_0 ;
  wire \DIVIDER[4]_i_3_n_0 ;
  wire \DIVIDER[4]_i_4_n_0 ;
  wire \DIVIDER[4]_i_5_n_0 ;
  wire \DIVIDER[8]_i_2_n_0 ;
  wire \DIVIDER[8]_i_3_n_0 ;
  wire \DIVIDER[8]_i_4_n_0 ;
  wire \DIVIDER[8]_i_5_n_0 ;
  wire [22:0]DIVIDER_reg;
  wire \DIVIDER_reg[0]_i_1_n_0 ;
  wire \DIVIDER_reg[0]_i_1_n_4 ;
  wire \DIVIDER_reg[0]_i_1_n_5 ;
  wire \DIVIDER_reg[0]_i_1_n_6 ;
  wire \DIVIDER_reg[0]_i_1_n_7 ;
  wire \DIVIDER_reg[12]_i_1_n_0 ;
  wire \DIVIDER_reg[12]_i_1_n_4 ;
  wire \DIVIDER_reg[12]_i_1_n_5 ;
  wire \DIVIDER_reg[12]_i_1_n_6 ;
  wire \DIVIDER_reg[12]_i_1_n_7 ;
  wire \DIVIDER_reg[16]_i_1_n_0 ;
  wire \DIVIDER_reg[16]_i_1_n_4 ;
  wire \DIVIDER_reg[16]_i_1_n_5 ;
  wire \DIVIDER_reg[16]_i_1_n_6 ;
  wire \DIVIDER_reg[16]_i_1_n_7 ;
  wire \DIVIDER_reg[20]_i_1_n_5 ;
  wire \DIVIDER_reg[20]_i_1_n_6 ;
  wire \DIVIDER_reg[20]_i_1_n_7 ;
  wire \DIVIDER_reg[4]_i_1_n_0 ;
  wire \DIVIDER_reg[4]_i_1_n_4 ;
  wire \DIVIDER_reg[4]_i_1_n_5 ;
  wire \DIVIDER_reg[4]_i_1_n_6 ;
  wire \DIVIDER_reg[4]_i_1_n_7 ;
  wire \DIVIDER_reg[8]_i_1_n_0 ;
  wire \DIVIDER_reg[8]_i_1_n_4 ;
  wire \DIVIDER_reg[8]_i_1_n_5 ;
  wire \DIVIDER_reg[8]_i_1_n_6 ;
  wire \DIVIDER_reg[8]_i_1_n_7 ;
  wire NET3284;
  wire \Qint[2]_i_4_n_0 ;
  wire \Qint[2]_i_5_n_0 ;
  wire \Qint[2]_i_6_n_0 ;
  wire \Qint[2]_i_7_n_0 ;
  wire [2:0]\NLW_DIVIDER_reg[0]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_DIVIDER_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_DIVIDER_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_DIVIDER_reg[20]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_DIVIDER_reg[20]_i_1_O_UNCONNECTED ;
  wire [2:0]\NLW_DIVIDER_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_DIVIDER_reg[8]_i_1_CO_UNCONNECTED ;

  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[0]_i_2 
       (.I0(DIVIDER_reg[0]),
        .I1(\Qint[2]_i_4_n_0 ),
        .I2(\Qint[2]_i_5_n_0 ),
        .I3(\Qint[2]_i_6_n_0 ),
        .I4(\Qint[2]_i_7_n_0 ),
        .O(\DIVIDER[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[0]_i_3 
       (.I0(DIVIDER_reg[3]),
        .I1(\Qint[2]_i_4_n_0 ),
        .I2(\Qint[2]_i_5_n_0 ),
        .I3(\Qint[2]_i_6_n_0 ),
        .I4(\Qint[2]_i_7_n_0 ),
        .O(\DIVIDER[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[0]_i_4 
       (.I0(DIVIDER_reg[2]),
        .I1(\Qint[2]_i_4_n_0 ),
        .I2(\Qint[2]_i_5_n_0 ),
        .I3(\Qint[2]_i_6_n_0 ),
        .I4(\Qint[2]_i_7_n_0 ),
        .O(\DIVIDER[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[0]_i_5 
       (.I0(DIVIDER_reg[1]),
        .I1(\Qint[2]_i_4_n_0 ),
        .I2(\Qint[2]_i_5_n_0 ),
        .I3(\Qint[2]_i_6_n_0 ),
        .I4(\Qint[2]_i_7_n_0 ),
        .O(\DIVIDER[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h55551555)) 
    \DIVIDER[0]_i_6 
       (.I0(DIVIDER_reg[0]),
        .I1(\Qint[2]_i_4_n_0 ),
        .I2(\Qint[2]_i_5_n_0 ),
        .I3(\Qint[2]_i_6_n_0 ),
        .I4(\Qint[2]_i_7_n_0 ),
        .O(\DIVIDER[0]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[12]_i_2 
       (.I0(DIVIDER_reg[15]),
        .I1(\Qint[2]_i_4_n_0 ),
        .I2(\Qint[2]_i_5_n_0 ),
        .I3(\Qint[2]_i_6_n_0 ),
        .I4(\Qint[2]_i_7_n_0 ),
        .O(\DIVIDER[12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[12]_i_3 
       (.I0(DIVIDER_reg[14]),
        .I1(\Qint[2]_i_4_n_0 ),
        .I2(\Qint[2]_i_5_n_0 ),
        .I3(\Qint[2]_i_6_n_0 ),
        .I4(\Qint[2]_i_7_n_0 ),
        .O(\DIVIDER[12]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[12]_i_4 
       (.I0(DIVIDER_reg[13]),
        .I1(\Qint[2]_i_4_n_0 ),
        .I2(\Qint[2]_i_5_n_0 ),
        .I3(\Qint[2]_i_6_n_0 ),
        .I4(\Qint[2]_i_7_n_0 ),
        .O(\DIVIDER[12]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[12]_i_5 
       (.I0(DIVIDER_reg[12]),
        .I1(\Qint[2]_i_4_n_0 ),
        .I2(\Qint[2]_i_5_n_0 ),
        .I3(\Qint[2]_i_6_n_0 ),
        .I4(\Qint[2]_i_7_n_0 ),
        .O(\DIVIDER[12]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[16]_i_2 
       (.I0(DIVIDER_reg[19]),
        .I1(\Qint[2]_i_4_n_0 ),
        .I2(\Qint[2]_i_5_n_0 ),
        .I3(\Qint[2]_i_6_n_0 ),
        .I4(\Qint[2]_i_7_n_0 ),
        .O(\DIVIDER[16]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[16]_i_3 
       (.I0(DIVIDER_reg[18]),
        .I1(\Qint[2]_i_4_n_0 ),
        .I2(\Qint[2]_i_5_n_0 ),
        .I3(\Qint[2]_i_6_n_0 ),
        .I4(\Qint[2]_i_7_n_0 ),
        .O(\DIVIDER[16]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[16]_i_4 
       (.I0(DIVIDER_reg[17]),
        .I1(\Qint[2]_i_4_n_0 ),
        .I2(\Qint[2]_i_5_n_0 ),
        .I3(\Qint[2]_i_6_n_0 ),
        .I4(\Qint[2]_i_7_n_0 ),
        .O(\DIVIDER[16]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[16]_i_5 
       (.I0(DIVIDER_reg[16]),
        .I1(\Qint[2]_i_4_n_0 ),
        .I2(\Qint[2]_i_5_n_0 ),
        .I3(\Qint[2]_i_6_n_0 ),
        .I4(\Qint[2]_i_7_n_0 ),
        .O(\DIVIDER[16]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[20]_i_2 
       (.I0(DIVIDER_reg[22]),
        .I1(\Qint[2]_i_4_n_0 ),
        .I2(\Qint[2]_i_5_n_0 ),
        .I3(\Qint[2]_i_6_n_0 ),
        .I4(\Qint[2]_i_7_n_0 ),
        .O(\DIVIDER[20]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[20]_i_3 
       (.I0(DIVIDER_reg[21]),
        .I1(\Qint[2]_i_4_n_0 ),
        .I2(\Qint[2]_i_5_n_0 ),
        .I3(\Qint[2]_i_6_n_0 ),
        .I4(\Qint[2]_i_7_n_0 ),
        .O(\DIVIDER[20]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[20]_i_4 
       (.I0(DIVIDER_reg[20]),
        .I1(\Qint[2]_i_4_n_0 ),
        .I2(\Qint[2]_i_5_n_0 ),
        .I3(\Qint[2]_i_6_n_0 ),
        .I4(\Qint[2]_i_7_n_0 ),
        .O(\DIVIDER[20]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[4]_i_2 
       (.I0(DIVIDER_reg[7]),
        .I1(\Qint[2]_i_4_n_0 ),
        .I2(\Qint[2]_i_5_n_0 ),
        .I3(\Qint[2]_i_6_n_0 ),
        .I4(\Qint[2]_i_7_n_0 ),
        .O(\DIVIDER[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[4]_i_3 
       (.I0(DIVIDER_reg[6]),
        .I1(\Qint[2]_i_4_n_0 ),
        .I2(\Qint[2]_i_5_n_0 ),
        .I3(\Qint[2]_i_6_n_0 ),
        .I4(\Qint[2]_i_7_n_0 ),
        .O(\DIVIDER[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[4]_i_4 
       (.I0(DIVIDER_reg[5]),
        .I1(\Qint[2]_i_4_n_0 ),
        .I2(\Qint[2]_i_5_n_0 ),
        .I3(\Qint[2]_i_6_n_0 ),
        .I4(\Qint[2]_i_7_n_0 ),
        .O(\DIVIDER[4]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[4]_i_5 
       (.I0(DIVIDER_reg[4]),
        .I1(\Qint[2]_i_4_n_0 ),
        .I2(\Qint[2]_i_5_n_0 ),
        .I3(\Qint[2]_i_6_n_0 ),
        .I4(\Qint[2]_i_7_n_0 ),
        .O(\DIVIDER[4]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[8]_i_2 
       (.I0(DIVIDER_reg[11]),
        .I1(\Qint[2]_i_4_n_0 ),
        .I2(\Qint[2]_i_5_n_0 ),
        .I3(\Qint[2]_i_6_n_0 ),
        .I4(\Qint[2]_i_7_n_0 ),
        .O(\DIVIDER[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[8]_i_3 
       (.I0(DIVIDER_reg[10]),
        .I1(\Qint[2]_i_4_n_0 ),
        .I2(\Qint[2]_i_5_n_0 ),
        .I3(\Qint[2]_i_6_n_0 ),
        .I4(\Qint[2]_i_7_n_0 ),
        .O(\DIVIDER[8]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[8]_i_4 
       (.I0(DIVIDER_reg[9]),
        .I1(\Qint[2]_i_4_n_0 ),
        .I2(\Qint[2]_i_5_n_0 ),
        .I3(\Qint[2]_i_6_n_0 ),
        .I4(\Qint[2]_i_7_n_0 ),
        .O(\DIVIDER[8]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[8]_i_5 
       (.I0(DIVIDER_reg[8]),
        .I1(\Qint[2]_i_4_n_0 ),
        .I2(\Qint[2]_i_5_n_0 ),
        .I3(\Qint[2]_i_6_n_0 ),
        .I4(\Qint[2]_i_7_n_0 ),
        .O(\DIVIDER[8]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\DIVIDER_reg[0]_i_1_n_7 ),
        .Q(DIVIDER_reg[0]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \DIVIDER_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\DIVIDER_reg[0]_i_1_n_0 ,\NLW_DIVIDER_reg[0]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\DIVIDER[0]_i_2_n_0 }),
        .O({\DIVIDER_reg[0]_i_1_n_4 ,\DIVIDER_reg[0]_i_1_n_5 ,\DIVIDER_reg[0]_i_1_n_6 ,\DIVIDER_reg[0]_i_1_n_7 }),
        .S({\DIVIDER[0]_i_3_n_0 ,\DIVIDER[0]_i_4_n_0 ,\DIVIDER[0]_i_5_n_0 ,\DIVIDER[0]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[10] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\DIVIDER_reg[8]_i_1_n_5 ),
        .Q(DIVIDER_reg[10]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[11] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\DIVIDER_reg[8]_i_1_n_4 ),
        .Q(DIVIDER_reg[11]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[12] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\DIVIDER_reg[12]_i_1_n_7 ),
        .Q(DIVIDER_reg[12]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \DIVIDER_reg[12]_i_1 
       (.CI(\DIVIDER_reg[8]_i_1_n_0 ),
        .CO({\DIVIDER_reg[12]_i_1_n_0 ,\NLW_DIVIDER_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\DIVIDER_reg[12]_i_1_n_4 ,\DIVIDER_reg[12]_i_1_n_5 ,\DIVIDER_reg[12]_i_1_n_6 ,\DIVIDER_reg[12]_i_1_n_7 }),
        .S({\DIVIDER[12]_i_2_n_0 ,\DIVIDER[12]_i_3_n_0 ,\DIVIDER[12]_i_4_n_0 ,\DIVIDER[12]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[13] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\DIVIDER_reg[12]_i_1_n_6 ),
        .Q(DIVIDER_reg[13]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[14] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\DIVIDER_reg[12]_i_1_n_5 ),
        .Q(DIVIDER_reg[14]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[15] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\DIVIDER_reg[12]_i_1_n_4 ),
        .Q(DIVIDER_reg[15]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[16] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\DIVIDER_reg[16]_i_1_n_7 ),
        .Q(DIVIDER_reg[16]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \DIVIDER_reg[16]_i_1 
       (.CI(\DIVIDER_reg[12]_i_1_n_0 ),
        .CO({\DIVIDER_reg[16]_i_1_n_0 ,\NLW_DIVIDER_reg[16]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\DIVIDER_reg[16]_i_1_n_4 ,\DIVIDER_reg[16]_i_1_n_5 ,\DIVIDER_reg[16]_i_1_n_6 ,\DIVIDER_reg[16]_i_1_n_7 }),
        .S({\DIVIDER[16]_i_2_n_0 ,\DIVIDER[16]_i_3_n_0 ,\DIVIDER[16]_i_4_n_0 ,\DIVIDER[16]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[17] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\DIVIDER_reg[16]_i_1_n_6 ),
        .Q(DIVIDER_reg[17]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[18] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\DIVIDER_reg[16]_i_1_n_5 ),
        .Q(DIVIDER_reg[18]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[19] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\DIVIDER_reg[16]_i_1_n_4 ),
        .Q(DIVIDER_reg[19]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\DIVIDER_reg[0]_i_1_n_6 ),
        .Q(DIVIDER_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[20] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\DIVIDER_reg[20]_i_1_n_7 ),
        .Q(DIVIDER_reg[20]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \DIVIDER_reg[20]_i_1 
       (.CI(\DIVIDER_reg[16]_i_1_n_0 ),
        .CO(\NLW_DIVIDER_reg[20]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_DIVIDER_reg[20]_i_1_O_UNCONNECTED [3],\DIVIDER_reg[20]_i_1_n_5 ,\DIVIDER_reg[20]_i_1_n_6 ,\DIVIDER_reg[20]_i_1_n_7 }),
        .S({1'b0,\DIVIDER[20]_i_2_n_0 ,\DIVIDER[20]_i_3_n_0 ,\DIVIDER[20]_i_4_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[21] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\DIVIDER_reg[20]_i_1_n_6 ),
        .Q(DIVIDER_reg[21]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[22] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\DIVIDER_reg[20]_i_1_n_5 ),
        .Q(DIVIDER_reg[22]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\DIVIDER_reg[0]_i_1_n_5 ),
        .Q(DIVIDER_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\DIVIDER_reg[0]_i_1_n_4 ),
        .Q(DIVIDER_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\DIVIDER_reg[4]_i_1_n_7 ),
        .Q(DIVIDER_reg[4]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \DIVIDER_reg[4]_i_1 
       (.CI(\DIVIDER_reg[0]_i_1_n_0 ),
        .CO({\DIVIDER_reg[4]_i_1_n_0 ,\NLW_DIVIDER_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\DIVIDER_reg[4]_i_1_n_4 ,\DIVIDER_reg[4]_i_1_n_5 ,\DIVIDER_reg[4]_i_1_n_6 ,\DIVIDER_reg[4]_i_1_n_7 }),
        .S({\DIVIDER[4]_i_2_n_0 ,\DIVIDER[4]_i_3_n_0 ,\DIVIDER[4]_i_4_n_0 ,\DIVIDER[4]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\DIVIDER_reg[4]_i_1_n_6 ),
        .Q(DIVIDER_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\DIVIDER_reg[4]_i_1_n_5 ),
        .Q(DIVIDER_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\DIVIDER_reg[4]_i_1_n_4 ),
        .Q(DIVIDER_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[8] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\DIVIDER_reg[8]_i_1_n_7 ),
        .Q(DIVIDER_reg[8]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \DIVIDER_reg[8]_i_1 
       (.CI(\DIVIDER_reg[4]_i_1_n_0 ),
        .CO({\DIVIDER_reg[8]_i_1_n_0 ,\NLW_DIVIDER_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\DIVIDER_reg[8]_i_1_n_4 ,\DIVIDER_reg[8]_i_1_n_5 ,\DIVIDER_reg[8]_i_1_n_6 ,\DIVIDER_reg[8]_i_1_n_7 }),
        .S({\DIVIDER[8]_i_2_n_0 ,\DIVIDER[8]_i_3_n_0 ,\DIVIDER[8]_i_4_n_0 ,\DIVIDER[8]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[9] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\DIVIDER_reg[8]_i_1_n_6 ),
        .Q(DIVIDER_reg[9]));
  LUT5 #(
    .INIT(32'h00800000)) 
    \Qint[2]_i_2 
       (.I0(\Qint[2]_i_4_n_0 ),
        .I1(\Qint[2]_i_5_n_0 ),
        .I2(\Qint[2]_i_6_n_0 ),
        .I3(\Qint[2]_i_7_n_0 ),
        .I4(CE_IBUF),
        .O(NET3284));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \Qint[2]_i_4 
       (.I0(DIVIDER_reg[8]),
        .I1(DIVIDER_reg[9]),
        .I2(DIVIDER_reg[11]),
        .I3(DIVIDER_reg[6]),
        .I4(DIVIDER_reg[1]),
        .I5(DIVIDER_reg[3]),
        .O(\Qint[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    \Qint[2]_i_5 
       (.I0(DIVIDER_reg[2]),
        .I1(DIVIDER_reg[22]),
        .I2(DIVIDER_reg[0]),
        .I3(DIVIDER_reg[19]),
        .I4(DIVIDER_reg[14]),
        .I5(DIVIDER_reg[18]),
        .O(\Qint[2]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \Qint[2]_i_6 
       (.I0(DIVIDER_reg[21]),
        .I1(DIVIDER_reg[20]),
        .I2(DIVIDER_reg[15]),
        .I3(DIVIDER_reg[16]),
        .I4(DIVIDER_reg[17]),
        .O(\Qint[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \Qint[2]_i_7 
       (.I0(DIVIDER_reg[7]),
        .I1(DIVIDER_reg[4]),
        .I2(DIVIDER_reg[5]),
        .I3(DIVIDER_reg[13]),
        .I4(DIVIDER_reg[10]),
        .I5(DIVIDER_reg[12]),
        .O(\Qint[2]_i_7_n_0 ));
endmodule

module Prescaler_13
   (CE_IBUF,
    CLK_IBUF_BUFG,
    CLR_IBUF,
    NET3292);
  input CE_IBUF;
  input CLK_IBUF_BUFG;
  input CLR_IBUF;
  output NET3292;

  wire CE_IBUF;
  wire CLK_IBUF_BUFG;
  wire CLR_IBUF;
  wire \DIVIDER[0]_i_2__1_n_0 ;
  wire \DIVIDER[0]_i_3__1_n_0 ;
  wire \DIVIDER[0]_i_4__1_n_0 ;
  wire \DIVIDER[0]_i_5__1_n_0 ;
  wire \DIVIDER[0]_i_6__1_n_0 ;
  wire \DIVIDER[12]_i_2__1_n_0 ;
  wire \DIVIDER[12]_i_3__1_n_0 ;
  wire \DIVIDER[12]_i_4__1_n_0 ;
  wire \DIVIDER[12]_i_5__1_n_0 ;
  wire \DIVIDER[16]_i_2__1_n_0 ;
  wire \DIVIDER[16]_i_3__1_n_0 ;
  wire \DIVIDER[16]_i_4__0_n_0 ;
  wire \DIVIDER[16]_i_5__0_n_0 ;
  wire \DIVIDER[20]_i_2__0_n_0 ;
  wire \DIVIDER[20]_i_3__0_n_0 ;
  wire \DIVIDER[20]_i_4__0_n_0 ;
  wire \DIVIDER[4]_i_2__1_n_0 ;
  wire \DIVIDER[4]_i_3__1_n_0 ;
  wire \DIVIDER[4]_i_4__1_n_0 ;
  wire \DIVIDER[4]_i_5__1_n_0 ;
  wire \DIVIDER[8]_i_2__1_n_0 ;
  wire \DIVIDER[8]_i_3__1_n_0 ;
  wire \DIVIDER[8]_i_4__1_n_0 ;
  wire \DIVIDER[8]_i_5__1_n_0 ;
  wire [22:0]DIVIDER_reg;
  wire \DIVIDER_reg[0]_i_1__1_n_0 ;
  wire \DIVIDER_reg[0]_i_1__1_n_4 ;
  wire \DIVIDER_reg[0]_i_1__1_n_5 ;
  wire \DIVIDER_reg[0]_i_1__1_n_6 ;
  wire \DIVIDER_reg[0]_i_1__1_n_7 ;
  wire \DIVIDER_reg[12]_i_1__1_n_0 ;
  wire \DIVIDER_reg[12]_i_1__1_n_4 ;
  wire \DIVIDER_reg[12]_i_1__1_n_5 ;
  wire \DIVIDER_reg[12]_i_1__1_n_6 ;
  wire \DIVIDER_reg[12]_i_1__1_n_7 ;
  wire \DIVIDER_reg[16]_i_1__1_n_0 ;
  wire \DIVIDER_reg[16]_i_1__1_n_4 ;
  wire \DIVIDER_reg[16]_i_1__1_n_5 ;
  wire \DIVIDER_reg[16]_i_1__1_n_6 ;
  wire \DIVIDER_reg[16]_i_1__1_n_7 ;
  wire \DIVIDER_reg[20]_i_1__0_n_5 ;
  wire \DIVIDER_reg[20]_i_1__0_n_6 ;
  wire \DIVIDER_reg[20]_i_1__0_n_7 ;
  wire \DIVIDER_reg[4]_i_1__1_n_0 ;
  wire \DIVIDER_reg[4]_i_1__1_n_4 ;
  wire \DIVIDER_reg[4]_i_1__1_n_5 ;
  wire \DIVIDER_reg[4]_i_1__1_n_6 ;
  wire \DIVIDER_reg[4]_i_1__1_n_7 ;
  wire \DIVIDER_reg[8]_i_1__1_n_0 ;
  wire \DIVIDER_reg[8]_i_1__1_n_4 ;
  wire \DIVIDER_reg[8]_i_1__1_n_5 ;
  wire \DIVIDER_reg[8]_i_1__1_n_6 ;
  wire \DIVIDER_reg[8]_i_1__1_n_7 ;
  wire NET3292;
  wire \Qint[2]_i_4__0_n_0 ;
  wire \Qint[2]_i_5__0_n_0 ;
  wire \Qint[2]_i_6__0_n_0 ;
  wire \Qint[2]_i_7__0_n_0 ;
  wire [2:0]\NLW_DIVIDER_reg[0]_i_1__1_CO_UNCONNECTED ;
  wire [2:0]\NLW_DIVIDER_reg[12]_i_1__1_CO_UNCONNECTED ;
  wire [2:0]\NLW_DIVIDER_reg[16]_i_1__1_CO_UNCONNECTED ;
  wire [3:0]\NLW_DIVIDER_reg[20]_i_1__0_CO_UNCONNECTED ;
  wire [3:3]\NLW_DIVIDER_reg[20]_i_1__0_O_UNCONNECTED ;
  wire [2:0]\NLW_DIVIDER_reg[4]_i_1__1_CO_UNCONNECTED ;
  wire [2:0]\NLW_DIVIDER_reg[8]_i_1__1_CO_UNCONNECTED ;

  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[0]_i_2__1 
       (.I0(DIVIDER_reg[0]),
        .I1(\Qint[2]_i_4__0_n_0 ),
        .I2(\Qint[2]_i_5__0_n_0 ),
        .I3(\Qint[2]_i_6__0_n_0 ),
        .I4(\Qint[2]_i_7__0_n_0 ),
        .O(\DIVIDER[0]_i_2__1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[0]_i_3__1 
       (.I0(DIVIDER_reg[3]),
        .I1(\Qint[2]_i_4__0_n_0 ),
        .I2(\Qint[2]_i_5__0_n_0 ),
        .I3(\Qint[2]_i_6__0_n_0 ),
        .I4(\Qint[2]_i_7__0_n_0 ),
        .O(\DIVIDER[0]_i_3__1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[0]_i_4__1 
       (.I0(DIVIDER_reg[2]),
        .I1(\Qint[2]_i_4__0_n_0 ),
        .I2(\Qint[2]_i_5__0_n_0 ),
        .I3(\Qint[2]_i_6__0_n_0 ),
        .I4(\Qint[2]_i_7__0_n_0 ),
        .O(\DIVIDER[0]_i_4__1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[0]_i_5__1 
       (.I0(DIVIDER_reg[1]),
        .I1(\Qint[2]_i_4__0_n_0 ),
        .I2(\Qint[2]_i_5__0_n_0 ),
        .I3(\Qint[2]_i_6__0_n_0 ),
        .I4(\Qint[2]_i_7__0_n_0 ),
        .O(\DIVIDER[0]_i_5__1_n_0 ));
  LUT5 #(
    .INIT(32'h55551555)) 
    \DIVIDER[0]_i_6__1 
       (.I0(DIVIDER_reg[0]),
        .I1(\Qint[2]_i_4__0_n_0 ),
        .I2(\Qint[2]_i_5__0_n_0 ),
        .I3(\Qint[2]_i_6__0_n_0 ),
        .I4(\Qint[2]_i_7__0_n_0 ),
        .O(\DIVIDER[0]_i_6__1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[12]_i_2__1 
       (.I0(DIVIDER_reg[15]),
        .I1(\Qint[2]_i_4__0_n_0 ),
        .I2(\Qint[2]_i_5__0_n_0 ),
        .I3(\Qint[2]_i_6__0_n_0 ),
        .I4(\Qint[2]_i_7__0_n_0 ),
        .O(\DIVIDER[12]_i_2__1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[12]_i_3__1 
       (.I0(DIVIDER_reg[14]),
        .I1(\Qint[2]_i_4__0_n_0 ),
        .I2(\Qint[2]_i_5__0_n_0 ),
        .I3(\Qint[2]_i_6__0_n_0 ),
        .I4(\Qint[2]_i_7__0_n_0 ),
        .O(\DIVIDER[12]_i_3__1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[12]_i_4__1 
       (.I0(DIVIDER_reg[13]),
        .I1(\Qint[2]_i_4__0_n_0 ),
        .I2(\Qint[2]_i_5__0_n_0 ),
        .I3(\Qint[2]_i_6__0_n_0 ),
        .I4(\Qint[2]_i_7__0_n_0 ),
        .O(\DIVIDER[12]_i_4__1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[12]_i_5__1 
       (.I0(DIVIDER_reg[12]),
        .I1(\Qint[2]_i_4__0_n_0 ),
        .I2(\Qint[2]_i_5__0_n_0 ),
        .I3(\Qint[2]_i_6__0_n_0 ),
        .I4(\Qint[2]_i_7__0_n_0 ),
        .O(\DIVIDER[12]_i_5__1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[16]_i_2__1 
       (.I0(DIVIDER_reg[19]),
        .I1(\Qint[2]_i_4__0_n_0 ),
        .I2(\Qint[2]_i_5__0_n_0 ),
        .I3(\Qint[2]_i_6__0_n_0 ),
        .I4(\Qint[2]_i_7__0_n_0 ),
        .O(\DIVIDER[16]_i_2__1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[16]_i_3__1 
       (.I0(DIVIDER_reg[18]),
        .I1(\Qint[2]_i_4__0_n_0 ),
        .I2(\Qint[2]_i_5__0_n_0 ),
        .I3(\Qint[2]_i_6__0_n_0 ),
        .I4(\Qint[2]_i_7__0_n_0 ),
        .O(\DIVIDER[16]_i_3__1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[16]_i_4__0 
       (.I0(DIVIDER_reg[17]),
        .I1(\Qint[2]_i_4__0_n_0 ),
        .I2(\Qint[2]_i_5__0_n_0 ),
        .I3(\Qint[2]_i_6__0_n_0 ),
        .I4(\Qint[2]_i_7__0_n_0 ),
        .O(\DIVIDER[16]_i_4__0_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[16]_i_5__0 
       (.I0(DIVIDER_reg[16]),
        .I1(\Qint[2]_i_4__0_n_0 ),
        .I2(\Qint[2]_i_5__0_n_0 ),
        .I3(\Qint[2]_i_6__0_n_0 ),
        .I4(\Qint[2]_i_7__0_n_0 ),
        .O(\DIVIDER[16]_i_5__0_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[20]_i_2__0 
       (.I0(DIVIDER_reg[22]),
        .I1(\Qint[2]_i_4__0_n_0 ),
        .I2(\Qint[2]_i_5__0_n_0 ),
        .I3(\Qint[2]_i_6__0_n_0 ),
        .I4(\Qint[2]_i_7__0_n_0 ),
        .O(\DIVIDER[20]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[20]_i_3__0 
       (.I0(DIVIDER_reg[21]),
        .I1(\Qint[2]_i_4__0_n_0 ),
        .I2(\Qint[2]_i_5__0_n_0 ),
        .I3(\Qint[2]_i_6__0_n_0 ),
        .I4(\Qint[2]_i_7__0_n_0 ),
        .O(\DIVIDER[20]_i_3__0_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[20]_i_4__0 
       (.I0(DIVIDER_reg[20]),
        .I1(\Qint[2]_i_4__0_n_0 ),
        .I2(\Qint[2]_i_5__0_n_0 ),
        .I3(\Qint[2]_i_6__0_n_0 ),
        .I4(\Qint[2]_i_7__0_n_0 ),
        .O(\DIVIDER[20]_i_4__0_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[4]_i_2__1 
       (.I0(DIVIDER_reg[7]),
        .I1(\Qint[2]_i_4__0_n_0 ),
        .I2(\Qint[2]_i_5__0_n_0 ),
        .I3(\Qint[2]_i_6__0_n_0 ),
        .I4(\Qint[2]_i_7__0_n_0 ),
        .O(\DIVIDER[4]_i_2__1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[4]_i_3__1 
       (.I0(DIVIDER_reg[6]),
        .I1(\Qint[2]_i_4__0_n_0 ),
        .I2(\Qint[2]_i_5__0_n_0 ),
        .I3(\Qint[2]_i_6__0_n_0 ),
        .I4(\Qint[2]_i_7__0_n_0 ),
        .O(\DIVIDER[4]_i_3__1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[4]_i_4__1 
       (.I0(DIVIDER_reg[5]),
        .I1(\Qint[2]_i_4__0_n_0 ),
        .I2(\Qint[2]_i_5__0_n_0 ),
        .I3(\Qint[2]_i_6__0_n_0 ),
        .I4(\Qint[2]_i_7__0_n_0 ),
        .O(\DIVIDER[4]_i_4__1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[4]_i_5__1 
       (.I0(DIVIDER_reg[4]),
        .I1(\Qint[2]_i_4__0_n_0 ),
        .I2(\Qint[2]_i_5__0_n_0 ),
        .I3(\Qint[2]_i_6__0_n_0 ),
        .I4(\Qint[2]_i_7__0_n_0 ),
        .O(\DIVIDER[4]_i_5__1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[8]_i_2__1 
       (.I0(DIVIDER_reg[11]),
        .I1(\Qint[2]_i_4__0_n_0 ),
        .I2(\Qint[2]_i_5__0_n_0 ),
        .I3(\Qint[2]_i_6__0_n_0 ),
        .I4(\Qint[2]_i_7__0_n_0 ),
        .O(\DIVIDER[8]_i_2__1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[8]_i_3__1 
       (.I0(DIVIDER_reg[10]),
        .I1(\Qint[2]_i_4__0_n_0 ),
        .I2(\Qint[2]_i_5__0_n_0 ),
        .I3(\Qint[2]_i_6__0_n_0 ),
        .I4(\Qint[2]_i_7__0_n_0 ),
        .O(\DIVIDER[8]_i_3__1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[8]_i_4__1 
       (.I0(DIVIDER_reg[9]),
        .I1(\Qint[2]_i_4__0_n_0 ),
        .I2(\Qint[2]_i_5__0_n_0 ),
        .I3(\Qint[2]_i_6__0_n_0 ),
        .I4(\Qint[2]_i_7__0_n_0 ),
        .O(\DIVIDER[8]_i_4__1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[8]_i_5__1 
       (.I0(DIVIDER_reg[8]),
        .I1(\Qint[2]_i_4__0_n_0 ),
        .I2(\Qint[2]_i_5__0_n_0 ),
        .I3(\Qint[2]_i_6__0_n_0 ),
        .I4(\Qint[2]_i_7__0_n_0 ),
        .O(\DIVIDER[8]_i_5__1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\DIVIDER_reg[0]_i_1__1_n_7 ),
        .Q(DIVIDER_reg[0]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \DIVIDER_reg[0]_i_1__1 
       (.CI(1'b0),
        .CO({\DIVIDER_reg[0]_i_1__1_n_0 ,\NLW_DIVIDER_reg[0]_i_1__1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\DIVIDER[0]_i_2__1_n_0 }),
        .O({\DIVIDER_reg[0]_i_1__1_n_4 ,\DIVIDER_reg[0]_i_1__1_n_5 ,\DIVIDER_reg[0]_i_1__1_n_6 ,\DIVIDER_reg[0]_i_1__1_n_7 }),
        .S({\DIVIDER[0]_i_3__1_n_0 ,\DIVIDER[0]_i_4__1_n_0 ,\DIVIDER[0]_i_5__1_n_0 ,\DIVIDER[0]_i_6__1_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[10] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\DIVIDER_reg[8]_i_1__1_n_5 ),
        .Q(DIVIDER_reg[10]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[11] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\DIVIDER_reg[8]_i_1__1_n_4 ),
        .Q(DIVIDER_reg[11]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[12] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\DIVIDER_reg[12]_i_1__1_n_7 ),
        .Q(DIVIDER_reg[12]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \DIVIDER_reg[12]_i_1__1 
       (.CI(\DIVIDER_reg[8]_i_1__1_n_0 ),
        .CO({\DIVIDER_reg[12]_i_1__1_n_0 ,\NLW_DIVIDER_reg[12]_i_1__1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\DIVIDER_reg[12]_i_1__1_n_4 ,\DIVIDER_reg[12]_i_1__1_n_5 ,\DIVIDER_reg[12]_i_1__1_n_6 ,\DIVIDER_reg[12]_i_1__1_n_7 }),
        .S({\DIVIDER[12]_i_2__1_n_0 ,\DIVIDER[12]_i_3__1_n_0 ,\DIVIDER[12]_i_4__1_n_0 ,\DIVIDER[12]_i_5__1_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[13] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\DIVIDER_reg[12]_i_1__1_n_6 ),
        .Q(DIVIDER_reg[13]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[14] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\DIVIDER_reg[12]_i_1__1_n_5 ),
        .Q(DIVIDER_reg[14]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[15] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\DIVIDER_reg[12]_i_1__1_n_4 ),
        .Q(DIVIDER_reg[15]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[16] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\DIVIDER_reg[16]_i_1__1_n_7 ),
        .Q(DIVIDER_reg[16]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \DIVIDER_reg[16]_i_1__1 
       (.CI(\DIVIDER_reg[12]_i_1__1_n_0 ),
        .CO({\DIVIDER_reg[16]_i_1__1_n_0 ,\NLW_DIVIDER_reg[16]_i_1__1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\DIVIDER_reg[16]_i_1__1_n_4 ,\DIVIDER_reg[16]_i_1__1_n_5 ,\DIVIDER_reg[16]_i_1__1_n_6 ,\DIVIDER_reg[16]_i_1__1_n_7 }),
        .S({\DIVIDER[16]_i_2__1_n_0 ,\DIVIDER[16]_i_3__1_n_0 ,\DIVIDER[16]_i_4__0_n_0 ,\DIVIDER[16]_i_5__0_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[17] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\DIVIDER_reg[16]_i_1__1_n_6 ),
        .Q(DIVIDER_reg[17]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[18] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\DIVIDER_reg[16]_i_1__1_n_5 ),
        .Q(DIVIDER_reg[18]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[19] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\DIVIDER_reg[16]_i_1__1_n_4 ),
        .Q(DIVIDER_reg[19]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\DIVIDER_reg[0]_i_1__1_n_6 ),
        .Q(DIVIDER_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[20] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\DIVIDER_reg[20]_i_1__0_n_7 ),
        .Q(DIVIDER_reg[20]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \DIVIDER_reg[20]_i_1__0 
       (.CI(\DIVIDER_reg[16]_i_1__1_n_0 ),
        .CO(\NLW_DIVIDER_reg[20]_i_1__0_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_DIVIDER_reg[20]_i_1__0_O_UNCONNECTED [3],\DIVIDER_reg[20]_i_1__0_n_5 ,\DIVIDER_reg[20]_i_1__0_n_6 ,\DIVIDER_reg[20]_i_1__0_n_7 }),
        .S({1'b0,\DIVIDER[20]_i_2__0_n_0 ,\DIVIDER[20]_i_3__0_n_0 ,\DIVIDER[20]_i_4__0_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[21] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\DIVIDER_reg[20]_i_1__0_n_6 ),
        .Q(DIVIDER_reg[21]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[22] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\DIVIDER_reg[20]_i_1__0_n_5 ),
        .Q(DIVIDER_reg[22]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\DIVIDER_reg[0]_i_1__1_n_5 ),
        .Q(DIVIDER_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\DIVIDER_reg[0]_i_1__1_n_4 ),
        .Q(DIVIDER_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\DIVIDER_reg[4]_i_1__1_n_7 ),
        .Q(DIVIDER_reg[4]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \DIVIDER_reg[4]_i_1__1 
       (.CI(\DIVIDER_reg[0]_i_1__1_n_0 ),
        .CO({\DIVIDER_reg[4]_i_1__1_n_0 ,\NLW_DIVIDER_reg[4]_i_1__1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\DIVIDER_reg[4]_i_1__1_n_4 ,\DIVIDER_reg[4]_i_1__1_n_5 ,\DIVIDER_reg[4]_i_1__1_n_6 ,\DIVIDER_reg[4]_i_1__1_n_7 }),
        .S({\DIVIDER[4]_i_2__1_n_0 ,\DIVIDER[4]_i_3__1_n_0 ,\DIVIDER[4]_i_4__1_n_0 ,\DIVIDER[4]_i_5__1_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\DIVIDER_reg[4]_i_1__1_n_6 ),
        .Q(DIVIDER_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\DIVIDER_reg[4]_i_1__1_n_5 ),
        .Q(DIVIDER_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\DIVIDER_reg[4]_i_1__1_n_4 ),
        .Q(DIVIDER_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[8] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\DIVIDER_reg[8]_i_1__1_n_7 ),
        .Q(DIVIDER_reg[8]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \DIVIDER_reg[8]_i_1__1 
       (.CI(\DIVIDER_reg[4]_i_1__1_n_0 ),
        .CO({\DIVIDER_reg[8]_i_1__1_n_0 ,\NLW_DIVIDER_reg[8]_i_1__1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\DIVIDER_reg[8]_i_1__1_n_4 ,\DIVIDER_reg[8]_i_1__1_n_5 ,\DIVIDER_reg[8]_i_1__1_n_6 ,\DIVIDER_reg[8]_i_1__1_n_7 }),
        .S({\DIVIDER[8]_i_2__1_n_0 ,\DIVIDER[8]_i_3__1_n_0 ,\DIVIDER[8]_i_4__1_n_0 ,\DIVIDER[8]_i_5__1_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[9] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\DIVIDER_reg[8]_i_1__1_n_6 ),
        .Q(DIVIDER_reg[9]));
  LUT5 #(
    .INIT(32'h00800000)) 
    \Qint[2]_i_2__0 
       (.I0(\Qint[2]_i_4__0_n_0 ),
        .I1(\Qint[2]_i_5__0_n_0 ),
        .I2(\Qint[2]_i_6__0_n_0 ),
        .I3(\Qint[2]_i_7__0_n_0 ),
        .I4(CE_IBUF),
        .O(NET3292));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \Qint[2]_i_4__0 
       (.I0(DIVIDER_reg[3]),
        .I1(DIVIDER_reg[4]),
        .I2(DIVIDER_reg[5]),
        .I3(DIVIDER_reg[2]),
        .I4(DIVIDER_reg[0]),
        .I5(DIVIDER_reg[1]),
        .O(\Qint[2]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \Qint[2]_i_5__0 
       (.I0(DIVIDER_reg[14]),
        .I1(DIVIDER_reg[16]),
        .I2(DIVIDER_reg[17]),
        .I3(DIVIDER_reg[12]),
        .I4(DIVIDER_reg[6]),
        .I5(DIVIDER_reg[11]),
        .O(\Qint[2]_i_5__0_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \Qint[2]_i_6__0 
       (.I0(DIVIDER_reg[21]),
        .I1(DIVIDER_reg[20]),
        .I2(DIVIDER_reg[10]),
        .I3(DIVIDER_reg[13]),
        .I4(DIVIDER_reg[15]),
        .O(\Qint[2]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF7F)) 
    \Qint[2]_i_7__0 
       (.I0(DIVIDER_reg[18]),
        .I1(DIVIDER_reg[19]),
        .I2(DIVIDER_reg[22]),
        .I3(DIVIDER_reg[9]),
        .I4(DIVIDER_reg[7]),
        .I5(DIVIDER_reg[8]),
        .O(\Qint[2]_i_7__0_n_0 ));
endmodule

module Prescaler_17
   (CE_IBUF,
    CLK_IBUF_BUFG,
    CLR_IBUF,
    NET3300);
  input CE_IBUF;
  input CLK_IBUF_BUFG;
  input CLR_IBUF;
  output NET3300;

  wire CE_IBUF;
  wire CLK_IBUF_BUFG;
  wire CLR_IBUF;
  wire \DIVIDER[0]_i_2__2_n_0 ;
  wire \DIVIDER[0]_i_3__2_n_0 ;
  wire \DIVIDER[0]_i_4__2_n_0 ;
  wire \DIVIDER[0]_i_5__2_n_0 ;
  wire \DIVIDER[0]_i_6__2_n_0 ;
  wire \DIVIDER[12]_i_2__2_n_0 ;
  wire \DIVIDER[12]_i_3__2_n_0 ;
  wire \DIVIDER[12]_i_4__2_n_0 ;
  wire \DIVIDER[12]_i_5__2_n_0 ;
  wire \DIVIDER[16]_i_2__2_n_0 ;
  wire \DIVIDER[16]_i_3__2_n_0 ;
  wire \DIVIDER[16]_i_4__1_n_0 ;
  wire \DIVIDER[16]_i_5__1_n_0 ;
  wire \DIVIDER[20]_i_2__1_n_0 ;
  wire \DIVIDER[20]_i_3__1_n_0 ;
  wire \DIVIDER[20]_i_4__1_n_0 ;
  wire \DIVIDER[4]_i_2__2_n_0 ;
  wire \DIVIDER[4]_i_3__2_n_0 ;
  wire \DIVIDER[4]_i_4__2_n_0 ;
  wire \DIVIDER[4]_i_5__2_n_0 ;
  wire \DIVIDER[8]_i_2__2_n_0 ;
  wire \DIVIDER[8]_i_3__2_n_0 ;
  wire \DIVIDER[8]_i_4__2_n_0 ;
  wire \DIVIDER[8]_i_5__2_n_0 ;
  wire [22:0]DIVIDER_reg;
  wire \DIVIDER_reg[0]_i_1__2_n_0 ;
  wire \DIVIDER_reg[0]_i_1__2_n_4 ;
  wire \DIVIDER_reg[0]_i_1__2_n_5 ;
  wire \DIVIDER_reg[0]_i_1__2_n_6 ;
  wire \DIVIDER_reg[0]_i_1__2_n_7 ;
  wire \DIVIDER_reg[12]_i_1__2_n_0 ;
  wire \DIVIDER_reg[12]_i_1__2_n_4 ;
  wire \DIVIDER_reg[12]_i_1__2_n_5 ;
  wire \DIVIDER_reg[12]_i_1__2_n_6 ;
  wire \DIVIDER_reg[12]_i_1__2_n_7 ;
  wire \DIVIDER_reg[16]_i_1__2_n_0 ;
  wire \DIVIDER_reg[16]_i_1__2_n_4 ;
  wire \DIVIDER_reg[16]_i_1__2_n_5 ;
  wire \DIVIDER_reg[16]_i_1__2_n_6 ;
  wire \DIVIDER_reg[16]_i_1__2_n_7 ;
  wire \DIVIDER_reg[20]_i_1__1_n_5 ;
  wire \DIVIDER_reg[20]_i_1__1_n_6 ;
  wire \DIVIDER_reg[20]_i_1__1_n_7 ;
  wire \DIVIDER_reg[4]_i_1__2_n_0 ;
  wire \DIVIDER_reg[4]_i_1__2_n_4 ;
  wire \DIVIDER_reg[4]_i_1__2_n_5 ;
  wire \DIVIDER_reg[4]_i_1__2_n_6 ;
  wire \DIVIDER_reg[4]_i_1__2_n_7 ;
  wire \DIVIDER_reg[8]_i_1__2_n_0 ;
  wire \DIVIDER_reg[8]_i_1__2_n_4 ;
  wire \DIVIDER_reg[8]_i_1__2_n_5 ;
  wire \DIVIDER_reg[8]_i_1__2_n_6 ;
  wire \DIVIDER_reg[8]_i_1__2_n_7 ;
  wire NET3300;
  wire \Qint[2]_i_4__1_n_0 ;
  wire \Qint[2]_i_5__1_n_0 ;
  wire \Qint[2]_i_6__1_n_0 ;
  wire \Qint[2]_i_7__1_n_0 ;
  wire [2:0]\NLW_DIVIDER_reg[0]_i_1__2_CO_UNCONNECTED ;
  wire [2:0]\NLW_DIVIDER_reg[12]_i_1__2_CO_UNCONNECTED ;
  wire [2:0]\NLW_DIVIDER_reg[16]_i_1__2_CO_UNCONNECTED ;
  wire [3:0]\NLW_DIVIDER_reg[20]_i_1__1_CO_UNCONNECTED ;
  wire [3:3]\NLW_DIVIDER_reg[20]_i_1__1_O_UNCONNECTED ;
  wire [2:0]\NLW_DIVIDER_reg[4]_i_1__2_CO_UNCONNECTED ;
  wire [2:0]\NLW_DIVIDER_reg[8]_i_1__2_CO_UNCONNECTED ;

  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[0]_i_2__2 
       (.I0(DIVIDER_reg[0]),
        .I1(\Qint[2]_i_4__1_n_0 ),
        .I2(\Qint[2]_i_5__1_n_0 ),
        .I3(\Qint[2]_i_6__1_n_0 ),
        .I4(\Qint[2]_i_7__1_n_0 ),
        .O(\DIVIDER[0]_i_2__2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[0]_i_3__2 
       (.I0(DIVIDER_reg[3]),
        .I1(\Qint[2]_i_4__1_n_0 ),
        .I2(\Qint[2]_i_5__1_n_0 ),
        .I3(\Qint[2]_i_6__1_n_0 ),
        .I4(\Qint[2]_i_7__1_n_0 ),
        .O(\DIVIDER[0]_i_3__2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[0]_i_4__2 
       (.I0(DIVIDER_reg[2]),
        .I1(\Qint[2]_i_4__1_n_0 ),
        .I2(\Qint[2]_i_5__1_n_0 ),
        .I3(\Qint[2]_i_6__1_n_0 ),
        .I4(\Qint[2]_i_7__1_n_0 ),
        .O(\DIVIDER[0]_i_4__2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[0]_i_5__2 
       (.I0(DIVIDER_reg[1]),
        .I1(\Qint[2]_i_4__1_n_0 ),
        .I2(\Qint[2]_i_5__1_n_0 ),
        .I3(\Qint[2]_i_6__1_n_0 ),
        .I4(\Qint[2]_i_7__1_n_0 ),
        .O(\DIVIDER[0]_i_5__2_n_0 ));
  LUT5 #(
    .INIT(32'h55551555)) 
    \DIVIDER[0]_i_6__2 
       (.I0(DIVIDER_reg[0]),
        .I1(\Qint[2]_i_4__1_n_0 ),
        .I2(\Qint[2]_i_5__1_n_0 ),
        .I3(\Qint[2]_i_6__1_n_0 ),
        .I4(\Qint[2]_i_7__1_n_0 ),
        .O(\DIVIDER[0]_i_6__2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[12]_i_2__2 
       (.I0(DIVIDER_reg[15]),
        .I1(\Qint[2]_i_4__1_n_0 ),
        .I2(\Qint[2]_i_5__1_n_0 ),
        .I3(\Qint[2]_i_6__1_n_0 ),
        .I4(\Qint[2]_i_7__1_n_0 ),
        .O(\DIVIDER[12]_i_2__2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[12]_i_3__2 
       (.I0(DIVIDER_reg[14]),
        .I1(\Qint[2]_i_4__1_n_0 ),
        .I2(\Qint[2]_i_5__1_n_0 ),
        .I3(\Qint[2]_i_6__1_n_0 ),
        .I4(\Qint[2]_i_7__1_n_0 ),
        .O(\DIVIDER[12]_i_3__2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[12]_i_4__2 
       (.I0(DIVIDER_reg[13]),
        .I1(\Qint[2]_i_4__1_n_0 ),
        .I2(\Qint[2]_i_5__1_n_0 ),
        .I3(\Qint[2]_i_6__1_n_0 ),
        .I4(\Qint[2]_i_7__1_n_0 ),
        .O(\DIVIDER[12]_i_4__2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[12]_i_5__2 
       (.I0(DIVIDER_reg[12]),
        .I1(\Qint[2]_i_4__1_n_0 ),
        .I2(\Qint[2]_i_5__1_n_0 ),
        .I3(\Qint[2]_i_6__1_n_0 ),
        .I4(\Qint[2]_i_7__1_n_0 ),
        .O(\DIVIDER[12]_i_5__2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[16]_i_2__2 
       (.I0(DIVIDER_reg[19]),
        .I1(\Qint[2]_i_4__1_n_0 ),
        .I2(\Qint[2]_i_5__1_n_0 ),
        .I3(\Qint[2]_i_6__1_n_0 ),
        .I4(\Qint[2]_i_7__1_n_0 ),
        .O(\DIVIDER[16]_i_2__2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[16]_i_3__2 
       (.I0(DIVIDER_reg[18]),
        .I1(\Qint[2]_i_4__1_n_0 ),
        .I2(\Qint[2]_i_5__1_n_0 ),
        .I3(\Qint[2]_i_6__1_n_0 ),
        .I4(\Qint[2]_i_7__1_n_0 ),
        .O(\DIVIDER[16]_i_3__2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[16]_i_4__1 
       (.I0(DIVIDER_reg[17]),
        .I1(\Qint[2]_i_4__1_n_0 ),
        .I2(\Qint[2]_i_5__1_n_0 ),
        .I3(\Qint[2]_i_6__1_n_0 ),
        .I4(\Qint[2]_i_7__1_n_0 ),
        .O(\DIVIDER[16]_i_4__1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[16]_i_5__1 
       (.I0(DIVIDER_reg[16]),
        .I1(\Qint[2]_i_4__1_n_0 ),
        .I2(\Qint[2]_i_5__1_n_0 ),
        .I3(\Qint[2]_i_6__1_n_0 ),
        .I4(\Qint[2]_i_7__1_n_0 ),
        .O(\DIVIDER[16]_i_5__1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[20]_i_2__1 
       (.I0(DIVIDER_reg[22]),
        .I1(\Qint[2]_i_4__1_n_0 ),
        .I2(\Qint[2]_i_5__1_n_0 ),
        .I3(\Qint[2]_i_6__1_n_0 ),
        .I4(\Qint[2]_i_7__1_n_0 ),
        .O(\DIVIDER[20]_i_2__1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[20]_i_3__1 
       (.I0(DIVIDER_reg[21]),
        .I1(\Qint[2]_i_4__1_n_0 ),
        .I2(\Qint[2]_i_5__1_n_0 ),
        .I3(\Qint[2]_i_6__1_n_0 ),
        .I4(\Qint[2]_i_7__1_n_0 ),
        .O(\DIVIDER[20]_i_3__1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[20]_i_4__1 
       (.I0(DIVIDER_reg[20]),
        .I1(\Qint[2]_i_4__1_n_0 ),
        .I2(\Qint[2]_i_5__1_n_0 ),
        .I3(\Qint[2]_i_6__1_n_0 ),
        .I4(\Qint[2]_i_7__1_n_0 ),
        .O(\DIVIDER[20]_i_4__1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[4]_i_2__2 
       (.I0(DIVIDER_reg[7]),
        .I1(\Qint[2]_i_4__1_n_0 ),
        .I2(\Qint[2]_i_5__1_n_0 ),
        .I3(\Qint[2]_i_6__1_n_0 ),
        .I4(\Qint[2]_i_7__1_n_0 ),
        .O(\DIVIDER[4]_i_2__2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[4]_i_3__2 
       (.I0(DIVIDER_reg[6]),
        .I1(\Qint[2]_i_4__1_n_0 ),
        .I2(\Qint[2]_i_5__1_n_0 ),
        .I3(\Qint[2]_i_6__1_n_0 ),
        .I4(\Qint[2]_i_7__1_n_0 ),
        .O(\DIVIDER[4]_i_3__2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[4]_i_4__2 
       (.I0(DIVIDER_reg[5]),
        .I1(\Qint[2]_i_4__1_n_0 ),
        .I2(\Qint[2]_i_5__1_n_0 ),
        .I3(\Qint[2]_i_6__1_n_0 ),
        .I4(\Qint[2]_i_7__1_n_0 ),
        .O(\DIVIDER[4]_i_4__2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[4]_i_5__2 
       (.I0(DIVIDER_reg[4]),
        .I1(\Qint[2]_i_4__1_n_0 ),
        .I2(\Qint[2]_i_5__1_n_0 ),
        .I3(\Qint[2]_i_6__1_n_0 ),
        .I4(\Qint[2]_i_7__1_n_0 ),
        .O(\DIVIDER[4]_i_5__2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[8]_i_2__2 
       (.I0(DIVIDER_reg[11]),
        .I1(\Qint[2]_i_4__1_n_0 ),
        .I2(\Qint[2]_i_5__1_n_0 ),
        .I3(\Qint[2]_i_6__1_n_0 ),
        .I4(\Qint[2]_i_7__1_n_0 ),
        .O(\DIVIDER[8]_i_2__2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[8]_i_3__2 
       (.I0(DIVIDER_reg[10]),
        .I1(\Qint[2]_i_4__1_n_0 ),
        .I2(\Qint[2]_i_5__1_n_0 ),
        .I3(\Qint[2]_i_6__1_n_0 ),
        .I4(\Qint[2]_i_7__1_n_0 ),
        .O(\DIVIDER[8]_i_3__2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[8]_i_4__2 
       (.I0(DIVIDER_reg[9]),
        .I1(\Qint[2]_i_4__1_n_0 ),
        .I2(\Qint[2]_i_5__1_n_0 ),
        .I3(\Qint[2]_i_6__1_n_0 ),
        .I4(\Qint[2]_i_7__1_n_0 ),
        .O(\DIVIDER[8]_i_4__2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[8]_i_5__2 
       (.I0(DIVIDER_reg[8]),
        .I1(\Qint[2]_i_4__1_n_0 ),
        .I2(\Qint[2]_i_5__1_n_0 ),
        .I3(\Qint[2]_i_6__1_n_0 ),
        .I4(\Qint[2]_i_7__1_n_0 ),
        .O(\DIVIDER[8]_i_5__2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\DIVIDER_reg[0]_i_1__2_n_7 ),
        .Q(DIVIDER_reg[0]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \DIVIDER_reg[0]_i_1__2 
       (.CI(1'b0),
        .CO({\DIVIDER_reg[0]_i_1__2_n_0 ,\NLW_DIVIDER_reg[0]_i_1__2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\DIVIDER[0]_i_2__2_n_0 }),
        .O({\DIVIDER_reg[0]_i_1__2_n_4 ,\DIVIDER_reg[0]_i_1__2_n_5 ,\DIVIDER_reg[0]_i_1__2_n_6 ,\DIVIDER_reg[0]_i_1__2_n_7 }),
        .S({\DIVIDER[0]_i_3__2_n_0 ,\DIVIDER[0]_i_4__2_n_0 ,\DIVIDER[0]_i_5__2_n_0 ,\DIVIDER[0]_i_6__2_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[10] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\DIVIDER_reg[8]_i_1__2_n_5 ),
        .Q(DIVIDER_reg[10]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[11] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\DIVIDER_reg[8]_i_1__2_n_4 ),
        .Q(DIVIDER_reg[11]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[12] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\DIVIDER_reg[12]_i_1__2_n_7 ),
        .Q(DIVIDER_reg[12]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \DIVIDER_reg[12]_i_1__2 
       (.CI(\DIVIDER_reg[8]_i_1__2_n_0 ),
        .CO({\DIVIDER_reg[12]_i_1__2_n_0 ,\NLW_DIVIDER_reg[12]_i_1__2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\DIVIDER_reg[12]_i_1__2_n_4 ,\DIVIDER_reg[12]_i_1__2_n_5 ,\DIVIDER_reg[12]_i_1__2_n_6 ,\DIVIDER_reg[12]_i_1__2_n_7 }),
        .S({\DIVIDER[12]_i_2__2_n_0 ,\DIVIDER[12]_i_3__2_n_0 ,\DIVIDER[12]_i_4__2_n_0 ,\DIVIDER[12]_i_5__2_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[13] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\DIVIDER_reg[12]_i_1__2_n_6 ),
        .Q(DIVIDER_reg[13]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[14] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\DIVIDER_reg[12]_i_1__2_n_5 ),
        .Q(DIVIDER_reg[14]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[15] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\DIVIDER_reg[12]_i_1__2_n_4 ),
        .Q(DIVIDER_reg[15]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[16] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\DIVIDER_reg[16]_i_1__2_n_7 ),
        .Q(DIVIDER_reg[16]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \DIVIDER_reg[16]_i_1__2 
       (.CI(\DIVIDER_reg[12]_i_1__2_n_0 ),
        .CO({\DIVIDER_reg[16]_i_1__2_n_0 ,\NLW_DIVIDER_reg[16]_i_1__2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\DIVIDER_reg[16]_i_1__2_n_4 ,\DIVIDER_reg[16]_i_1__2_n_5 ,\DIVIDER_reg[16]_i_1__2_n_6 ,\DIVIDER_reg[16]_i_1__2_n_7 }),
        .S({\DIVIDER[16]_i_2__2_n_0 ,\DIVIDER[16]_i_3__2_n_0 ,\DIVIDER[16]_i_4__1_n_0 ,\DIVIDER[16]_i_5__1_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[17] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\DIVIDER_reg[16]_i_1__2_n_6 ),
        .Q(DIVIDER_reg[17]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[18] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\DIVIDER_reg[16]_i_1__2_n_5 ),
        .Q(DIVIDER_reg[18]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[19] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\DIVIDER_reg[16]_i_1__2_n_4 ),
        .Q(DIVIDER_reg[19]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\DIVIDER_reg[0]_i_1__2_n_6 ),
        .Q(DIVIDER_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[20] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\DIVIDER_reg[20]_i_1__1_n_7 ),
        .Q(DIVIDER_reg[20]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \DIVIDER_reg[20]_i_1__1 
       (.CI(\DIVIDER_reg[16]_i_1__2_n_0 ),
        .CO(\NLW_DIVIDER_reg[20]_i_1__1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_DIVIDER_reg[20]_i_1__1_O_UNCONNECTED [3],\DIVIDER_reg[20]_i_1__1_n_5 ,\DIVIDER_reg[20]_i_1__1_n_6 ,\DIVIDER_reg[20]_i_1__1_n_7 }),
        .S({1'b0,\DIVIDER[20]_i_2__1_n_0 ,\DIVIDER[20]_i_3__1_n_0 ,\DIVIDER[20]_i_4__1_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[21] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\DIVIDER_reg[20]_i_1__1_n_6 ),
        .Q(DIVIDER_reg[21]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[22] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\DIVIDER_reg[20]_i_1__1_n_5 ),
        .Q(DIVIDER_reg[22]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\DIVIDER_reg[0]_i_1__2_n_5 ),
        .Q(DIVIDER_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\DIVIDER_reg[0]_i_1__2_n_4 ),
        .Q(DIVIDER_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\DIVIDER_reg[4]_i_1__2_n_7 ),
        .Q(DIVIDER_reg[4]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \DIVIDER_reg[4]_i_1__2 
       (.CI(\DIVIDER_reg[0]_i_1__2_n_0 ),
        .CO({\DIVIDER_reg[4]_i_1__2_n_0 ,\NLW_DIVIDER_reg[4]_i_1__2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\DIVIDER_reg[4]_i_1__2_n_4 ,\DIVIDER_reg[4]_i_1__2_n_5 ,\DIVIDER_reg[4]_i_1__2_n_6 ,\DIVIDER_reg[4]_i_1__2_n_7 }),
        .S({\DIVIDER[4]_i_2__2_n_0 ,\DIVIDER[4]_i_3__2_n_0 ,\DIVIDER[4]_i_4__2_n_0 ,\DIVIDER[4]_i_5__2_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\DIVIDER_reg[4]_i_1__2_n_6 ),
        .Q(DIVIDER_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\DIVIDER_reg[4]_i_1__2_n_5 ),
        .Q(DIVIDER_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\DIVIDER_reg[4]_i_1__2_n_4 ),
        .Q(DIVIDER_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[8] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\DIVIDER_reg[8]_i_1__2_n_7 ),
        .Q(DIVIDER_reg[8]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \DIVIDER_reg[8]_i_1__2 
       (.CI(\DIVIDER_reg[4]_i_1__2_n_0 ),
        .CO({\DIVIDER_reg[8]_i_1__2_n_0 ,\NLW_DIVIDER_reg[8]_i_1__2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\DIVIDER_reg[8]_i_1__2_n_4 ,\DIVIDER_reg[8]_i_1__2_n_5 ,\DIVIDER_reg[8]_i_1__2_n_6 ,\DIVIDER_reg[8]_i_1__2_n_7 }),
        .S({\DIVIDER[8]_i_2__2_n_0 ,\DIVIDER[8]_i_3__2_n_0 ,\DIVIDER[8]_i_4__2_n_0 ,\DIVIDER[8]_i_5__2_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[9] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(\DIVIDER_reg[8]_i_1__2_n_6 ),
        .Q(DIVIDER_reg[9]));
  LUT5 #(
    .INIT(32'h00800000)) 
    \Qint[2]_i_2__1 
       (.I0(\Qint[2]_i_4__1_n_0 ),
        .I1(\Qint[2]_i_5__1_n_0 ),
        .I2(\Qint[2]_i_6__1_n_0 ),
        .I3(\Qint[2]_i_7__1_n_0 ),
        .I4(CE_IBUF),
        .O(NET3300));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \Qint[2]_i_4__1 
       (.I0(DIVIDER_reg[7]),
        .I1(DIVIDER_reg[9]),
        .I2(DIVIDER_reg[10]),
        .I3(DIVIDER_reg[6]),
        .I4(DIVIDER_reg[0]),
        .I5(DIVIDER_reg[3]),
        .O(\Qint[2]_i_4__1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \Qint[2]_i_5__1 
       (.I0(DIVIDER_reg[17]),
        .I1(DIVIDER_reg[18]),
        .I2(DIVIDER_reg[20]),
        .I3(DIVIDER_reg[16]),
        .I4(DIVIDER_reg[12]),
        .I5(DIVIDER_reg[15]),
        .O(\Qint[2]_i_5__1_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \Qint[2]_i_6__1 
       (.I0(DIVIDER_reg[21]),
        .I1(DIVIDER_reg[19]),
        .I2(DIVIDER_reg[11]),
        .I3(DIVIDER_reg[13]),
        .I4(DIVIDER_reg[14]),
        .O(\Qint[2]_i_6__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFB)) 
    \Qint[2]_i_7__1 
       (.I0(DIVIDER_reg[2]),
        .I1(DIVIDER_reg[22]),
        .I2(DIVIDER_reg[1]),
        .I3(DIVIDER_reg[8]),
        .I4(DIVIDER_reg[4]),
        .I5(DIVIDER_reg[5]),
        .O(\Qint[2]_i_7__1_n_0 ));
endmodule

module Prescaler_DISP
   (CLK,
    CLK_IBUF_BUFG,
    CLR_IBUF);
  output CLK;
  input CLK_IBUF_BUFG;
  input CLR_IBUF;

  wire CLK;
  wire CLK_IBUF_BUFG;
  wire CLR_IBUF;
  wire \DIVIDER[0]_i_2__0_n_0 ;
  wire \DIVIDER[0]_i_3__0_n_0 ;
  wire \DIVIDER[0]_i_4__0_n_0 ;
  wire \DIVIDER[0]_i_5__0_n_0 ;
  wire \DIVIDER[0]_i_6__0_n_0 ;
  wire \DIVIDER[12]_i_2__0_n_0 ;
  wire \DIVIDER[12]_i_3__0_n_0 ;
  wire \DIVIDER[12]_i_4__0_n_0 ;
  wire \DIVIDER[12]_i_5__0_n_0 ;
  wire \DIVIDER[16]_i_2__0_n_0 ;
  wire \DIVIDER[16]_i_3__0_n_0 ;
  wire \DIVIDER[4]_i_2__0_n_0 ;
  wire \DIVIDER[4]_i_3__0_n_0 ;
  wire \DIVIDER[4]_i_4__0_n_0 ;
  wire \DIVIDER[4]_i_5__0_n_0 ;
  wire \DIVIDER[8]_i_2__0_n_0 ;
  wire \DIVIDER[8]_i_3__0_n_0 ;
  wire \DIVIDER[8]_i_4__0_n_0 ;
  wire \DIVIDER[8]_i_5__0_n_0 ;
  wire [17:0]DIVIDER_reg;
  wire \DIVIDER_reg[0]_i_1__0_n_0 ;
  wire \DIVIDER_reg[0]_i_1__0_n_4 ;
  wire \DIVIDER_reg[0]_i_1__0_n_5 ;
  wire \DIVIDER_reg[0]_i_1__0_n_6 ;
  wire \DIVIDER_reg[0]_i_1__0_n_7 ;
  wire \DIVIDER_reg[12]_i_1__0_n_0 ;
  wire \DIVIDER_reg[12]_i_1__0_n_4 ;
  wire \DIVIDER_reg[12]_i_1__0_n_5 ;
  wire \DIVIDER_reg[12]_i_1__0_n_6 ;
  wire \DIVIDER_reg[12]_i_1__0_n_7 ;
  wire \DIVIDER_reg[16]_i_1__0_n_6 ;
  wire \DIVIDER_reg[16]_i_1__0_n_7 ;
  wire \DIVIDER_reg[4]_i_1__0_n_0 ;
  wire \DIVIDER_reg[4]_i_1__0_n_4 ;
  wire \DIVIDER_reg[4]_i_1__0_n_5 ;
  wire \DIVIDER_reg[4]_i_1__0_n_6 ;
  wire \DIVIDER_reg[4]_i_1__0_n_7 ;
  wire \DIVIDER_reg[8]_i_1__0_n_0 ;
  wire \DIVIDER_reg[8]_i_1__0_n_4 ;
  wire \DIVIDER_reg[8]_i_1__0_n_5 ;
  wire \DIVIDER_reg[8]_i_1__0_n_6 ;
  wire \DIVIDER_reg[8]_i_1__0_n_7 ;
  wire \Qint[1]_i_3_n_0 ;
  wire \Qint[1]_i_4_n_0 ;
  wire \Qint[1]_i_5_n_0 ;
  wire \Qint[1]_i_6_n_0 ;
  wire [2:0]\NLW_DIVIDER_reg[0]_i_1__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_DIVIDER_reg[12]_i_1__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_DIVIDER_reg[16]_i_1__0_CO_UNCONNECTED ;
  wire [3:2]\NLW_DIVIDER_reg[16]_i_1__0_O_UNCONNECTED ;
  wire [2:0]\NLW_DIVIDER_reg[4]_i_1__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_DIVIDER_reg[8]_i_1__0_CO_UNCONNECTED ;

  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[0]_i_2__0 
       (.I0(DIVIDER_reg[0]),
        .I1(\Qint[1]_i_6_n_0 ),
        .I2(\Qint[1]_i_5_n_0 ),
        .I3(\Qint[1]_i_4_n_0 ),
        .I4(\Qint[1]_i_3_n_0 ),
        .O(\DIVIDER[0]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[0]_i_3__0 
       (.I0(DIVIDER_reg[3]),
        .I1(\Qint[1]_i_6_n_0 ),
        .I2(\Qint[1]_i_5_n_0 ),
        .I3(\Qint[1]_i_4_n_0 ),
        .I4(\Qint[1]_i_3_n_0 ),
        .O(\DIVIDER[0]_i_3__0_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[0]_i_4__0 
       (.I0(DIVIDER_reg[2]),
        .I1(\Qint[1]_i_6_n_0 ),
        .I2(\Qint[1]_i_5_n_0 ),
        .I3(\Qint[1]_i_4_n_0 ),
        .I4(\Qint[1]_i_3_n_0 ),
        .O(\DIVIDER[0]_i_4__0_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[0]_i_5__0 
       (.I0(DIVIDER_reg[1]),
        .I1(\Qint[1]_i_6_n_0 ),
        .I2(\Qint[1]_i_5_n_0 ),
        .I3(\Qint[1]_i_4_n_0 ),
        .I4(\Qint[1]_i_3_n_0 ),
        .O(\DIVIDER[0]_i_5__0_n_0 ));
  LUT5 #(
    .INIT(32'h55551555)) 
    \DIVIDER[0]_i_6__0 
       (.I0(DIVIDER_reg[0]),
        .I1(\Qint[1]_i_6_n_0 ),
        .I2(\Qint[1]_i_5_n_0 ),
        .I3(\Qint[1]_i_4_n_0 ),
        .I4(\Qint[1]_i_3_n_0 ),
        .O(\DIVIDER[0]_i_6__0_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[12]_i_2__0 
       (.I0(DIVIDER_reg[15]),
        .I1(\Qint[1]_i_6_n_0 ),
        .I2(\Qint[1]_i_5_n_0 ),
        .I3(\Qint[1]_i_4_n_0 ),
        .I4(\Qint[1]_i_3_n_0 ),
        .O(\DIVIDER[12]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[12]_i_3__0 
       (.I0(DIVIDER_reg[14]),
        .I1(\Qint[1]_i_6_n_0 ),
        .I2(\Qint[1]_i_5_n_0 ),
        .I3(\Qint[1]_i_4_n_0 ),
        .I4(\Qint[1]_i_3_n_0 ),
        .O(\DIVIDER[12]_i_3__0_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[12]_i_4__0 
       (.I0(DIVIDER_reg[13]),
        .I1(\Qint[1]_i_6_n_0 ),
        .I2(\Qint[1]_i_5_n_0 ),
        .I3(\Qint[1]_i_4_n_0 ),
        .I4(\Qint[1]_i_3_n_0 ),
        .O(\DIVIDER[12]_i_4__0_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[12]_i_5__0 
       (.I0(DIVIDER_reg[12]),
        .I1(\Qint[1]_i_6_n_0 ),
        .I2(\Qint[1]_i_5_n_0 ),
        .I3(\Qint[1]_i_4_n_0 ),
        .I4(\Qint[1]_i_3_n_0 ),
        .O(\DIVIDER[12]_i_5__0_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[16]_i_2__0 
       (.I0(DIVIDER_reg[17]),
        .I1(\Qint[1]_i_6_n_0 ),
        .I2(\Qint[1]_i_5_n_0 ),
        .I3(\Qint[1]_i_4_n_0 ),
        .I4(\Qint[1]_i_3_n_0 ),
        .O(\DIVIDER[16]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[16]_i_3__0 
       (.I0(DIVIDER_reg[16]),
        .I1(\Qint[1]_i_6_n_0 ),
        .I2(\Qint[1]_i_5_n_0 ),
        .I3(\Qint[1]_i_4_n_0 ),
        .I4(\Qint[1]_i_3_n_0 ),
        .O(\DIVIDER[16]_i_3__0_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[4]_i_2__0 
       (.I0(DIVIDER_reg[7]),
        .I1(\Qint[1]_i_6_n_0 ),
        .I2(\Qint[1]_i_5_n_0 ),
        .I3(\Qint[1]_i_4_n_0 ),
        .I4(\Qint[1]_i_3_n_0 ),
        .O(\DIVIDER[4]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[4]_i_3__0 
       (.I0(DIVIDER_reg[6]),
        .I1(\Qint[1]_i_6_n_0 ),
        .I2(\Qint[1]_i_5_n_0 ),
        .I3(\Qint[1]_i_4_n_0 ),
        .I4(\Qint[1]_i_3_n_0 ),
        .O(\DIVIDER[4]_i_3__0_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[4]_i_4__0 
       (.I0(DIVIDER_reg[5]),
        .I1(\Qint[1]_i_6_n_0 ),
        .I2(\Qint[1]_i_5_n_0 ),
        .I3(\Qint[1]_i_4_n_0 ),
        .I4(\Qint[1]_i_3_n_0 ),
        .O(\DIVIDER[4]_i_4__0_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[4]_i_5__0 
       (.I0(DIVIDER_reg[4]),
        .I1(\Qint[1]_i_6_n_0 ),
        .I2(\Qint[1]_i_5_n_0 ),
        .I3(\Qint[1]_i_4_n_0 ),
        .I4(\Qint[1]_i_3_n_0 ),
        .O(\DIVIDER[4]_i_5__0_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[8]_i_2__0 
       (.I0(DIVIDER_reg[11]),
        .I1(\Qint[1]_i_6_n_0 ),
        .I2(\Qint[1]_i_5_n_0 ),
        .I3(\Qint[1]_i_4_n_0 ),
        .I4(\Qint[1]_i_3_n_0 ),
        .O(\DIVIDER[8]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[8]_i_3__0 
       (.I0(DIVIDER_reg[10]),
        .I1(\Qint[1]_i_6_n_0 ),
        .I2(\Qint[1]_i_5_n_0 ),
        .I3(\Qint[1]_i_4_n_0 ),
        .I4(\Qint[1]_i_3_n_0 ),
        .O(\DIVIDER[8]_i_3__0_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[8]_i_4__0 
       (.I0(DIVIDER_reg[9]),
        .I1(\Qint[1]_i_6_n_0 ),
        .I2(\Qint[1]_i_5_n_0 ),
        .I3(\Qint[1]_i_4_n_0 ),
        .I4(\Qint[1]_i_3_n_0 ),
        .O(\DIVIDER[8]_i_4__0_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[8]_i_5__0 
       (.I0(DIVIDER_reg[8]),
        .I1(\Qint[1]_i_6_n_0 ),
        .I2(\Qint[1]_i_5_n_0 ),
        .I3(\Qint[1]_i_4_n_0 ),
        .I4(\Qint[1]_i_3_n_0 ),
        .O(\DIVIDER[8]_i_5__0_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(CLR_IBUF),
        .D(\DIVIDER_reg[0]_i_1__0_n_7 ),
        .Q(DIVIDER_reg[0]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \DIVIDER_reg[0]_i_1__0 
       (.CI(1'b0),
        .CO({\DIVIDER_reg[0]_i_1__0_n_0 ,\NLW_DIVIDER_reg[0]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\DIVIDER[0]_i_2__0_n_0 }),
        .O({\DIVIDER_reg[0]_i_1__0_n_4 ,\DIVIDER_reg[0]_i_1__0_n_5 ,\DIVIDER_reg[0]_i_1__0_n_6 ,\DIVIDER_reg[0]_i_1__0_n_7 }),
        .S({\DIVIDER[0]_i_3__0_n_0 ,\DIVIDER[0]_i_4__0_n_0 ,\DIVIDER[0]_i_5__0_n_0 ,\DIVIDER[0]_i_6__0_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[10] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(CLR_IBUF),
        .D(\DIVIDER_reg[8]_i_1__0_n_5 ),
        .Q(DIVIDER_reg[10]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[11] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(CLR_IBUF),
        .D(\DIVIDER_reg[8]_i_1__0_n_4 ),
        .Q(DIVIDER_reg[11]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[12] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(CLR_IBUF),
        .D(\DIVIDER_reg[12]_i_1__0_n_7 ),
        .Q(DIVIDER_reg[12]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \DIVIDER_reg[12]_i_1__0 
       (.CI(\DIVIDER_reg[8]_i_1__0_n_0 ),
        .CO({\DIVIDER_reg[12]_i_1__0_n_0 ,\NLW_DIVIDER_reg[12]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\DIVIDER_reg[12]_i_1__0_n_4 ,\DIVIDER_reg[12]_i_1__0_n_5 ,\DIVIDER_reg[12]_i_1__0_n_6 ,\DIVIDER_reg[12]_i_1__0_n_7 }),
        .S({\DIVIDER[12]_i_2__0_n_0 ,\DIVIDER[12]_i_3__0_n_0 ,\DIVIDER[12]_i_4__0_n_0 ,\DIVIDER[12]_i_5__0_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[13] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(CLR_IBUF),
        .D(\DIVIDER_reg[12]_i_1__0_n_6 ),
        .Q(DIVIDER_reg[13]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[14] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(CLR_IBUF),
        .D(\DIVIDER_reg[12]_i_1__0_n_5 ),
        .Q(DIVIDER_reg[14]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[15] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(CLR_IBUF),
        .D(\DIVIDER_reg[12]_i_1__0_n_4 ),
        .Q(DIVIDER_reg[15]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[16] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(CLR_IBUF),
        .D(\DIVIDER_reg[16]_i_1__0_n_7 ),
        .Q(DIVIDER_reg[16]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \DIVIDER_reg[16]_i_1__0 
       (.CI(\DIVIDER_reg[12]_i_1__0_n_0 ),
        .CO(\NLW_DIVIDER_reg[16]_i_1__0_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_DIVIDER_reg[16]_i_1__0_O_UNCONNECTED [3:2],\DIVIDER_reg[16]_i_1__0_n_6 ,\DIVIDER_reg[16]_i_1__0_n_7 }),
        .S({1'b0,1'b0,\DIVIDER[16]_i_2__0_n_0 ,\DIVIDER[16]_i_3__0_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[17] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(CLR_IBUF),
        .D(\DIVIDER_reg[16]_i_1__0_n_6 ),
        .Q(DIVIDER_reg[17]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(CLR_IBUF),
        .D(\DIVIDER_reg[0]_i_1__0_n_6 ),
        .Q(DIVIDER_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(CLR_IBUF),
        .D(\DIVIDER_reg[0]_i_1__0_n_5 ),
        .Q(DIVIDER_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(CLR_IBUF),
        .D(\DIVIDER_reg[0]_i_1__0_n_4 ),
        .Q(DIVIDER_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(CLR_IBUF),
        .D(\DIVIDER_reg[4]_i_1__0_n_7 ),
        .Q(DIVIDER_reg[4]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \DIVIDER_reg[4]_i_1__0 
       (.CI(\DIVIDER_reg[0]_i_1__0_n_0 ),
        .CO({\DIVIDER_reg[4]_i_1__0_n_0 ,\NLW_DIVIDER_reg[4]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\DIVIDER_reg[4]_i_1__0_n_4 ,\DIVIDER_reg[4]_i_1__0_n_5 ,\DIVIDER_reg[4]_i_1__0_n_6 ,\DIVIDER_reg[4]_i_1__0_n_7 }),
        .S({\DIVIDER[4]_i_2__0_n_0 ,\DIVIDER[4]_i_3__0_n_0 ,\DIVIDER[4]_i_4__0_n_0 ,\DIVIDER[4]_i_5__0_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(CLR_IBUF),
        .D(\DIVIDER_reg[4]_i_1__0_n_6 ),
        .Q(DIVIDER_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(CLR_IBUF),
        .D(\DIVIDER_reg[4]_i_1__0_n_5 ),
        .Q(DIVIDER_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(CLR_IBUF),
        .D(\DIVIDER_reg[4]_i_1__0_n_4 ),
        .Q(DIVIDER_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[8] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(CLR_IBUF),
        .D(\DIVIDER_reg[8]_i_1__0_n_7 ),
        .Q(DIVIDER_reg[8]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \DIVIDER_reg[8]_i_1__0 
       (.CI(\DIVIDER_reg[4]_i_1__0_n_0 ),
        .CO({\DIVIDER_reg[8]_i_1__0_n_0 ,\NLW_DIVIDER_reg[8]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\DIVIDER_reg[8]_i_1__0_n_4 ,\DIVIDER_reg[8]_i_1__0_n_5 ,\DIVIDER_reg[8]_i_1__0_n_6 ,\DIVIDER_reg[8]_i_1__0_n_7 }),
        .S({\DIVIDER[8]_i_2__0_n_0 ,\DIVIDER[8]_i_3__0_n_0 ,\DIVIDER[8]_i_4__0_n_0 ,\DIVIDER[8]_i_5__0_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[9] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(CLR_IBUF),
        .D(\DIVIDER_reg[8]_i_1__0_n_6 ),
        .Q(DIVIDER_reg[9]));
  LUT4 #(
    .INIT(16'h4000)) 
    \Qint[1]_i_2 
       (.I0(\Qint[1]_i_3_n_0 ),
        .I1(\Qint[1]_i_4_n_0 ),
        .I2(\Qint[1]_i_5_n_0 ),
        .I3(\Qint[1]_i_6_n_0 ),
        .O(CLK));
  LUT5 #(
    .INIT(32'hFFFFFFBF)) 
    \Qint[1]_i_3 
       (.I0(DIVIDER_reg[6]),
        .I1(DIVIDER_reg[17]),
        .I2(DIVIDER_reg[16]),
        .I3(DIVIDER_reg[9]),
        .I4(DIVIDER_reg[7]),
        .O(\Qint[1]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \Qint[1]_i_4 
       (.I0(DIVIDER_reg[15]),
        .I1(DIVIDER_reg[14]),
        .I2(DIVIDER_reg[13]),
        .I3(DIVIDER_reg[12]),
        .O(\Qint[1]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \Qint[1]_i_5 
       (.I0(DIVIDER_reg[8]),
        .I1(DIVIDER_reg[5]),
        .I2(DIVIDER_reg[11]),
        .I3(DIVIDER_reg[10]),
        .O(\Qint[1]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \Qint[1]_i_6 
       (.I0(DIVIDER_reg[0]),
        .I1(DIVIDER_reg[1]),
        .I2(DIVIDER_reg[2]),
        .I3(DIVIDER_reg[4]),
        .I4(DIVIDER_reg[3]),
        .O(\Qint[1]_i_6_n_0 ));
endmodule

(* ECO_CHECKSUM = "ef798d8e" *) (* POWER_OPT_BRAM_CDC = "0" *) (* POWER_OPT_BRAM_SR_ADDR = "0" *) 
(* POWER_OPT_LOOPED_NET_PERCENTAGE = "0" *) 
(* NotValidForBitStream *)
module Top
   (CE,
    CLK,
    CLR,
    GREEN,
    MODE_1,
    MODE_2,
    MODE_3,
    RED,
    SGN,
    AN,
    Q);
  input CE;
  input CLK;
  input CLR;
  output GREEN;
  input MODE_1;
  input MODE_2;
  input MODE_3;
  output RED;
  input SGN;
  output [7:0]AN;
  output [6:0]Q;

  wire [7:0]AN;
  wire [7:5]AN_OBUF;
  wire [2:0]BUS3327;
  wire [2:0]BUS3362;
  wire [2:0]BUS3381;
  wire CE;
  wire CE_IBUF;
  wire CLK;
  wire CLK_IBUF;
  wire CLK_IBUF_BUFG;
  wire CLR;
  wire CLR_IBUF;
  wire GREEN;
  wire GREEN_OBUF;
  wire MODE_1;
  wire MODE_1_IBUF;
  wire MODE_2;
  wire MODE_2_IBUF;
  wire MODE_3;
  wire MODE_3_IBUF;
  wire NET3284;
  wire NET3292;
  wire NET3300;
  wire [6:0]Q;
  wire Q_GREEN0;
  wire Q_GREEN1;
  wire [6:0]Q_OBUF;
  wire RED;
  wire RED_OBUF;
  wire SGN;
  wire SGN_IBUF;
  wire U7_n_0;
  wire U7_n_3;
  wire load;

  OBUF \AN_OBUF[0]_inst 
       (.I(1'b1),
        .O(AN[0]));
  OBUF \AN_OBUF[1]_inst 
       (.I(1'b1),
        .O(AN[1]));
  OBUF \AN_OBUF[2]_inst 
       (.I(1'b1),
        .O(AN[2]));
  OBUF \AN_OBUF[3]_inst 
       (.I(1'b1),
        .O(AN[3]));
  OBUF \AN_OBUF[4]_inst 
       (.I(1'b1),
        .O(AN[4]));
  OBUF \AN_OBUF[5]_inst 
       (.I(AN_OBUF[5]),
        .O(AN[5]));
  OBUF \AN_OBUF[6]_inst 
       (.I(AN_OBUF[6]),
        .O(AN[6]));
  OBUF \AN_OBUF[7]_inst 
       (.I(AN_OBUF[7]),
        .O(AN[7]));
  IBUF CE_IBUF_inst
       (.I(CE),
        .O(CE_IBUF));
  BUFG CLK_IBUF_BUFG_inst
       (.I(CLK_IBUF),
        .O(CLK_IBUF_BUFG));
  IBUF CLK_IBUF_inst
       (.I(CLK),
        .O(CLK_IBUF));
  IBUF CLR_IBUF_inst
       (.I(CLR),
        .O(CLR_IBUF));
  OBUF GREEN_OBUF_inst
       (.I(GREEN_OBUF),
        .O(GREEN));
  IBUF MODE_1_IBUF_inst
       (.I(MODE_1),
        .O(MODE_1_IBUF));
  IBUF MODE_2_IBUF_inst
       (.I(MODE_2),
        .O(MODE_2_IBUF));
  IBUF MODE_3_IBUF_inst
       (.I(MODE_3),
        .O(MODE_3_IBUF));
  OBUF \Q_OBUF[0]_inst 
       (.I(Q_OBUF[0]),
        .O(Q[0]));
  OBUF \Q_OBUF[1]_inst 
       (.I(Q_OBUF[1]),
        .O(Q[1]));
  OBUF \Q_OBUF[2]_inst 
       (.I(Q_OBUF[2]),
        .O(Q[2]));
  OBUF \Q_OBUF[3]_inst 
       (.I(Q_OBUF[3]),
        .O(Q[3]));
  OBUF \Q_OBUF[4]_inst 
       (.I(Q_OBUF[4]),
        .O(Q[4]));
  OBUF \Q_OBUF[5]_inst 
       (.I(Q_OBUF[5]),
        .O(Q[5]));
  OBUF \Q_OBUF[6]_inst 
       (.I(Q_OBUF[6]),
        .O(Q[6]));
  OBUF RED_OBUF_inst
       (.I(RED_OBUF),
        .O(RED));
  IBUF SGN_IBUF_inst
       (.I(SGN),
        .O(SGN_IBUF));
  Prescaler_11 U1
       (.CE_IBUF(CE_IBUF),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .CLR_IBUF(CLR_IBUF),
        .NET3284(NET3284));
  Compare U13
       (.CE_IBUF(CE_IBUF),
        .GREEN(U7_n_3),
        .GREEN_OBUF(GREEN_OBUF),
        .Q_GREEN0(Q_GREEN0),
        .Q_GREEN1(Q_GREEN1),
        .RED(U7_n_0),
        .RED_OBUF(RED_OBUF));
  Prescaler_13 U2
       (.CE_IBUF(CE_IBUF),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .CLR_IBUF(CLR_IBUF),
        .NET3292(NET3292));
  Prescaler_17 U3
       (.CE_IBUF(CE_IBUF),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .CLR_IBUF(CLR_IBUF),
        .NET3300(NET3300));
  Prescaler_DISP U5
       (.CLK(load),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .CLR_IBUF(CLR_IBUF));
  Counter_2 U6
       (.AN_OBUF(AN_OBUF),
        .BUS3327(BUS3327),
        .BUS3362(BUS3362),
        .BUS3381(BUS3381),
        .CLK(load),
        .CLR_IBUF(CLR_IBUF),
        .Q_OBUF(Q_OBUF),
        .SGN_IBUF(SGN_IBUF));
  Counter U7
       (.BUS3327(BUS3327),
        .BUS3362(BUS3362),
        .BUS3381(BUS3381),
        .CE_IBUF(CE_IBUF),
        .CLR_IBUF(CLR_IBUF),
        .MODE_1_IBUF(MODE_1_IBUF),
        .MODE_2_IBUF(MODE_2_IBUF),
        .MODE_3_IBUF(MODE_3_IBUF),
        .NET3284(NET3284),
        .Q_GREEN0(Q_GREEN0),
        .Q_GREEN1(Q_GREEN1),
        .\Qint_reg[0]_0 (U7_n_0),
        .\Qint_reg[1]_0 (U7_n_3));
  Counter_0 U8
       (.BUS3327(BUS3327),
        .CE_IBUF(CE_IBUF),
        .CLR_IBUF(CLR_IBUF),
        .MODE_1_IBUF(MODE_1_IBUF),
        .MODE_2_IBUF(MODE_2_IBUF),
        .MODE_3_IBUF(MODE_3_IBUF),
        .NET3292(NET3292));
  Counter_1 U9
       (.BUS3381(BUS3381),
        .CE_IBUF(CE_IBUF),
        .CLR_IBUF(CLR_IBUF),
        .MODE_1_IBUF(MODE_1_IBUF),
        .MODE_2_IBUF(MODE_2_IBUF),
        .MODE_3_IBUF(MODE_3_IBUF),
        .NET3300(NET3300));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
