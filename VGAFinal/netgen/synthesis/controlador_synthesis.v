////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: controlador_synthesis.v
// /___/   /\     Timestamp: Mon Aug 29 11:14:57 2016
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim controlador.ngc controlador_synthesis.v 
// Device	: xc3s500e-4-fg320
// Input file	: controlador.ngc
// Output file	: D:\Desktop\cata\VGAFinal\netgen\synthesis\controlador_synthesis.v
// # of Modules	: 1
// Design Name	: controlador
// Xilinx        : C:\Xilinx\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module controlador (
  clk, vsync, rst, b, g, r, video_on, hsync, p_tick, pixel_x, pixel_y, colores, text_on
);
  input clk;
  output vsync;
  input rst;
  input b;
  input g;
  input r;
  output video_on;
  output hsync;
  output p_tick;
  inout [9 : 0] pixel_x;
  inout [9 : 0] pixel_y;
  output [2 : 0] colores;
  output [3 : 0] text_on;
  wire N1;
  wire N10;
  wire N2;
  wire N36;
  wire N37;
  wire N38;
  wire N39;
  wire N4;
  wire N40;
  wire N41;
  wire N6;
  wire N8;
  wire b_IBUF_13;
  wire clk_BUFGP_15;
  wire g_IBUF_20;
  wire r_IBUF_44;
  wire rst_IBUF_46;
  wire text_on_0_OBUF_51;
  wire text_on_1_OBUF_52;
  wire \textgen/Mmux__COND_5_3_f5_53 ;
  wire \textgen/Mmux__COND_5_4_f5_54 ;
  wire \textgen/char_addr[0] ;
  wire \textgen/char_addr[1] ;
  wire \textgen/char_addr[2] ;
  wire \textgen/char_addr[3] ;
  wire \textgen/char_addr[5] ;
  wire \textgen/char_addr_l[0] ;
  wire \textgen/char_addr_l<1>1 ;
  wire \textgen/char_addr_l[3] ;
  wire \textgen/char_addr_l[5] ;
  wire \textgen/char_addr_l_cmp_eq00011 ;
  wire \textgen/font_bit_inv ;
  wire \timer/Madd_h_cont_sig_addsub0000_cy<1>_rt_86 ;
  wire \timer/Madd_h_cont_sig_addsub0000_cy<2>_rt_88 ;
  wire \timer/Madd_h_cont_sig_addsub0000_cy<3>_rt_90 ;
  wire \timer/Madd_h_cont_sig_addsub0000_cy<4>_rt_92 ;
  wire \timer/Madd_h_cont_sig_addsub0000_cy<5>_rt_94 ;
  wire \timer/Madd_h_cont_sig_addsub0000_cy<6>_rt_96 ;
  wire \timer/Madd_h_cont_sig_addsub0000_cy<7>_rt_98 ;
  wire \timer/Madd_h_cont_sig_addsub0000_cy<8>_rt_100 ;
  wire \timer/Madd_h_cont_sig_addsub0000_xor<9>_rt_102 ;
  wire \timer/Madd_v_cont_sig_addsub0000_cy<1>_rt_105 ;
  wire \timer/Madd_v_cont_sig_addsub0000_cy<2>_rt_107 ;
  wire \timer/Madd_v_cont_sig_addsub0000_cy<3>_rt_109 ;
  wire \timer/Madd_v_cont_sig_addsub0000_cy<4>_rt_111 ;
  wire \timer/Madd_v_cont_sig_addsub0000_cy<5>_rt_113 ;
  wire \timer/Madd_v_cont_sig_addsub0000_cy<6>_rt_115 ;
  wire \timer/Madd_v_cont_sig_addsub0000_cy<7>_rt_117 ;
  wire \timer/Madd_v_cont_sig_addsub0000_cy<8>_rt_119 ;
  wire \timer/Madd_v_cont_sig_addsub0000_xor<9>_rt_121 ;
  wire \timer/N11 ;
  wire \timer/N4 ;
  wire \timer/N9 ;
  wire \timer/h_end ;
  wire \timer/h_end12_156 ;
  wire \timer/h_end7_157 ;
  wire \timer/h_sync_reg_158 ;
  wire \timer/h_sync_sig_159 ;
  wire \timer/mod2_reg_160 ;
  wire \timer/mod2_sig ;
  wire \timer/v_sync_reg_192 ;
  wire \timer/v_sync_sig_193 ;
  wire \timer/video_on21_194 ;
  wire \timer/video_on8_195 ;
  wire video_on_OBUF_197;
  wire \NLW_textgen/font_unit/Mrom_data_DOP<0>_UNCONNECTED ;
  wire [2 : 0] \textgen/bit_addr ;
  wire [7 : 0] \textgen/font_word ;
  wire [3 : 0] \textgen/row_addr ;
  wire [2 : 0] \textgen/text_rgb ;
  wire [8 : 0] \timer/Madd_h_cont_sig_addsub0000_cy ;
  wire [0 : 0] \timer/Madd_h_cont_sig_addsub0000_lut ;
  wire [8 : 0] \timer/Madd_v_cont_sig_addsub0000_cy ;
  wire [0 : 0] \timer/Madd_v_cont_sig_addsub0000_lut ;
  wire [9 : 0] \timer/h_cont_reg ;
  wire [9 : 0] \timer/h_cont_sig ;
  wire [9 : 0] \timer/h_cont_sig_addsub0000 ;
  wire [9 : 0] \timer/v_cont_reg ;
  wire [9 : 0] \timer/v_cont_sig ;
  wire [9 : 0] \timer/v_cont_sig_addsub0000 ;
  GND   XST_GND (
    .G(text_on_1_OBUF_52)
  );
  VCC   XST_VCC (
    .P(N1)
  );
  XORCY   \timer/Madd_v_cont_sig_addsub0000_xor<9>  (
    .CI(\timer/Madd_v_cont_sig_addsub0000_cy [8]),
    .LI(\timer/Madd_v_cont_sig_addsub0000_xor<9>_rt_121 ),
    .O(\timer/v_cont_sig_addsub0000 [9])
  );
  XORCY   \timer/Madd_v_cont_sig_addsub0000_xor<8>  (
    .CI(\timer/Madd_v_cont_sig_addsub0000_cy [7]),
    .LI(\timer/Madd_v_cont_sig_addsub0000_cy<8>_rt_119 ),
    .O(\timer/v_cont_sig_addsub0000 [8])
  );
  MUXCY   \timer/Madd_v_cont_sig_addsub0000_cy<8>  (
    .CI(\timer/Madd_v_cont_sig_addsub0000_cy [7]),
    .DI(text_on_1_OBUF_52),
    .S(\timer/Madd_v_cont_sig_addsub0000_cy<8>_rt_119 ),
    .O(\timer/Madd_v_cont_sig_addsub0000_cy [8])
  );
  XORCY   \timer/Madd_v_cont_sig_addsub0000_xor<7>  (
    .CI(\timer/Madd_v_cont_sig_addsub0000_cy [6]),
    .LI(\timer/Madd_v_cont_sig_addsub0000_cy<7>_rt_117 ),
    .O(\timer/v_cont_sig_addsub0000 [7])
  );
  MUXCY   \timer/Madd_v_cont_sig_addsub0000_cy<7>  (
    .CI(\timer/Madd_v_cont_sig_addsub0000_cy [6]),
    .DI(text_on_1_OBUF_52),
    .S(\timer/Madd_v_cont_sig_addsub0000_cy<7>_rt_117 ),
    .O(\timer/Madd_v_cont_sig_addsub0000_cy [7])
  );
  XORCY   \timer/Madd_v_cont_sig_addsub0000_xor<6>  (
    .CI(\timer/Madd_v_cont_sig_addsub0000_cy [5]),
    .LI(\timer/Madd_v_cont_sig_addsub0000_cy<6>_rt_115 ),
    .O(\timer/v_cont_sig_addsub0000 [6])
  );
  MUXCY   \timer/Madd_v_cont_sig_addsub0000_cy<6>  (
    .CI(\timer/Madd_v_cont_sig_addsub0000_cy [5]),
    .DI(text_on_1_OBUF_52),
    .S(\timer/Madd_v_cont_sig_addsub0000_cy<6>_rt_115 ),
    .O(\timer/Madd_v_cont_sig_addsub0000_cy [6])
  );
  XORCY   \timer/Madd_v_cont_sig_addsub0000_xor<5>  (
    .CI(\timer/Madd_v_cont_sig_addsub0000_cy [4]),
    .LI(\timer/Madd_v_cont_sig_addsub0000_cy<5>_rt_113 ),
    .O(\timer/v_cont_sig_addsub0000 [5])
  );
  MUXCY   \timer/Madd_v_cont_sig_addsub0000_cy<5>  (
    .CI(\timer/Madd_v_cont_sig_addsub0000_cy [4]),
    .DI(text_on_1_OBUF_52),
    .S(\timer/Madd_v_cont_sig_addsub0000_cy<5>_rt_113 ),
    .O(\timer/Madd_v_cont_sig_addsub0000_cy [5])
  );
  XORCY   \timer/Madd_v_cont_sig_addsub0000_xor<4>  (
    .CI(\timer/Madd_v_cont_sig_addsub0000_cy [3]),
    .LI(\timer/Madd_v_cont_sig_addsub0000_cy<4>_rt_111 ),
    .O(\timer/v_cont_sig_addsub0000 [4])
  );
  MUXCY   \timer/Madd_v_cont_sig_addsub0000_cy<4>  (
    .CI(\timer/Madd_v_cont_sig_addsub0000_cy [3]),
    .DI(text_on_1_OBUF_52),
    .S(\timer/Madd_v_cont_sig_addsub0000_cy<4>_rt_111 ),
    .O(\timer/Madd_v_cont_sig_addsub0000_cy [4])
  );
  XORCY   \timer/Madd_v_cont_sig_addsub0000_xor<3>  (
    .CI(\timer/Madd_v_cont_sig_addsub0000_cy [2]),
    .LI(\timer/Madd_v_cont_sig_addsub0000_cy<3>_rt_109 ),
    .O(\timer/v_cont_sig_addsub0000 [3])
  );
  MUXCY   \timer/Madd_v_cont_sig_addsub0000_cy<3>  (
    .CI(\timer/Madd_v_cont_sig_addsub0000_cy [2]),
    .DI(text_on_1_OBUF_52),
    .S(\timer/Madd_v_cont_sig_addsub0000_cy<3>_rt_109 ),
    .O(\timer/Madd_v_cont_sig_addsub0000_cy [3])
  );
  XORCY   \timer/Madd_v_cont_sig_addsub0000_xor<2>  (
    .CI(\timer/Madd_v_cont_sig_addsub0000_cy [1]),
    .LI(\timer/Madd_v_cont_sig_addsub0000_cy<2>_rt_107 ),
    .O(\timer/v_cont_sig_addsub0000 [2])
  );
  MUXCY   \timer/Madd_v_cont_sig_addsub0000_cy<2>  (
    .CI(\timer/Madd_v_cont_sig_addsub0000_cy [1]),
    .DI(text_on_1_OBUF_52),
    .S(\timer/Madd_v_cont_sig_addsub0000_cy<2>_rt_107 ),
    .O(\timer/Madd_v_cont_sig_addsub0000_cy [2])
  );
  XORCY   \timer/Madd_v_cont_sig_addsub0000_xor<1>  (
    .CI(\timer/Madd_v_cont_sig_addsub0000_cy [0]),
    .LI(\timer/Madd_v_cont_sig_addsub0000_cy<1>_rt_105 ),
    .O(\timer/v_cont_sig_addsub0000 [1])
  );
  MUXCY   \timer/Madd_v_cont_sig_addsub0000_cy<1>  (
    .CI(\timer/Madd_v_cont_sig_addsub0000_cy [0]),
    .DI(text_on_1_OBUF_52),
    .S(\timer/Madd_v_cont_sig_addsub0000_cy<1>_rt_105 ),
    .O(\timer/Madd_v_cont_sig_addsub0000_cy [1])
  );
  XORCY   \timer/Madd_v_cont_sig_addsub0000_xor<0>  (
    .CI(text_on_1_OBUF_52),
    .LI(\timer/Madd_v_cont_sig_addsub0000_lut [0]),
    .O(\timer/v_cont_sig_addsub0000 [0])
  );
  MUXCY   \timer/Madd_v_cont_sig_addsub0000_cy<0>  (
    .CI(text_on_1_OBUF_52),
    .DI(N1),
    .S(\timer/Madd_v_cont_sig_addsub0000_lut [0]),
    .O(\timer/Madd_v_cont_sig_addsub0000_cy [0])
  );
  XORCY   \timer/Madd_h_cont_sig_addsub0000_xor<9>  (
    .CI(\timer/Madd_h_cont_sig_addsub0000_cy [8]),
    .LI(\timer/Madd_h_cont_sig_addsub0000_xor<9>_rt_102 ),
    .O(\timer/h_cont_sig_addsub0000 [9])
  );
  XORCY   \timer/Madd_h_cont_sig_addsub0000_xor<8>  (
    .CI(\timer/Madd_h_cont_sig_addsub0000_cy [7]),
    .LI(\timer/Madd_h_cont_sig_addsub0000_cy<8>_rt_100 ),
    .O(\timer/h_cont_sig_addsub0000 [8])
  );
  MUXCY   \timer/Madd_h_cont_sig_addsub0000_cy<8>  (
    .CI(\timer/Madd_h_cont_sig_addsub0000_cy [7]),
    .DI(text_on_1_OBUF_52),
    .S(\timer/Madd_h_cont_sig_addsub0000_cy<8>_rt_100 ),
    .O(\timer/Madd_h_cont_sig_addsub0000_cy [8])
  );
  XORCY   \timer/Madd_h_cont_sig_addsub0000_xor<7>  (
    .CI(\timer/Madd_h_cont_sig_addsub0000_cy [6]),
    .LI(\timer/Madd_h_cont_sig_addsub0000_cy<7>_rt_98 ),
    .O(\timer/h_cont_sig_addsub0000 [7])
  );
  MUXCY   \timer/Madd_h_cont_sig_addsub0000_cy<7>  (
    .CI(\timer/Madd_h_cont_sig_addsub0000_cy [6]),
    .DI(text_on_1_OBUF_52),
    .S(\timer/Madd_h_cont_sig_addsub0000_cy<7>_rt_98 ),
    .O(\timer/Madd_h_cont_sig_addsub0000_cy [7])
  );
  XORCY   \timer/Madd_h_cont_sig_addsub0000_xor<6>  (
    .CI(\timer/Madd_h_cont_sig_addsub0000_cy [5]),
    .LI(\timer/Madd_h_cont_sig_addsub0000_cy<6>_rt_96 ),
    .O(\timer/h_cont_sig_addsub0000 [6])
  );
  MUXCY   \timer/Madd_h_cont_sig_addsub0000_cy<6>  (
    .CI(\timer/Madd_h_cont_sig_addsub0000_cy [5]),
    .DI(text_on_1_OBUF_52),
    .S(\timer/Madd_h_cont_sig_addsub0000_cy<6>_rt_96 ),
    .O(\timer/Madd_h_cont_sig_addsub0000_cy [6])
  );
  XORCY   \timer/Madd_h_cont_sig_addsub0000_xor<5>  (
    .CI(\timer/Madd_h_cont_sig_addsub0000_cy [4]),
    .LI(\timer/Madd_h_cont_sig_addsub0000_cy<5>_rt_94 ),
    .O(\timer/h_cont_sig_addsub0000 [5])
  );
  MUXCY   \timer/Madd_h_cont_sig_addsub0000_cy<5>  (
    .CI(\timer/Madd_h_cont_sig_addsub0000_cy [4]),
    .DI(text_on_1_OBUF_52),
    .S(\timer/Madd_h_cont_sig_addsub0000_cy<5>_rt_94 ),
    .O(\timer/Madd_h_cont_sig_addsub0000_cy [5])
  );
  XORCY   \timer/Madd_h_cont_sig_addsub0000_xor<4>  (
    .CI(\timer/Madd_h_cont_sig_addsub0000_cy [3]),
    .LI(\timer/Madd_h_cont_sig_addsub0000_cy<4>_rt_92 ),
    .O(\timer/h_cont_sig_addsub0000 [4])
  );
  MUXCY   \timer/Madd_h_cont_sig_addsub0000_cy<4>  (
    .CI(\timer/Madd_h_cont_sig_addsub0000_cy [3]),
    .DI(text_on_1_OBUF_52),
    .S(\timer/Madd_h_cont_sig_addsub0000_cy<4>_rt_92 ),
    .O(\timer/Madd_h_cont_sig_addsub0000_cy [4])
  );
  XORCY   \timer/Madd_h_cont_sig_addsub0000_xor<3>  (
    .CI(\timer/Madd_h_cont_sig_addsub0000_cy [2]),
    .LI(\timer/Madd_h_cont_sig_addsub0000_cy<3>_rt_90 ),
    .O(\timer/h_cont_sig_addsub0000 [3])
  );
  MUXCY   \timer/Madd_h_cont_sig_addsub0000_cy<3>  (
    .CI(\timer/Madd_h_cont_sig_addsub0000_cy [2]),
    .DI(text_on_1_OBUF_52),
    .S(\timer/Madd_h_cont_sig_addsub0000_cy<3>_rt_90 ),
    .O(\timer/Madd_h_cont_sig_addsub0000_cy [3])
  );
  XORCY   \timer/Madd_h_cont_sig_addsub0000_xor<2>  (
    .CI(\timer/Madd_h_cont_sig_addsub0000_cy [1]),
    .LI(\timer/Madd_h_cont_sig_addsub0000_cy<2>_rt_88 ),
    .O(\timer/h_cont_sig_addsub0000 [2])
  );
  MUXCY   \timer/Madd_h_cont_sig_addsub0000_cy<2>  (
    .CI(\timer/Madd_h_cont_sig_addsub0000_cy [1]),
    .DI(text_on_1_OBUF_52),
    .S(\timer/Madd_h_cont_sig_addsub0000_cy<2>_rt_88 ),
    .O(\timer/Madd_h_cont_sig_addsub0000_cy [2])
  );
  XORCY   \timer/Madd_h_cont_sig_addsub0000_xor<1>  (
    .CI(\timer/Madd_h_cont_sig_addsub0000_cy [0]),
    .LI(\timer/Madd_h_cont_sig_addsub0000_cy<1>_rt_86 ),
    .O(\timer/h_cont_sig_addsub0000 [1])
  );
  MUXCY   \timer/Madd_h_cont_sig_addsub0000_cy<1>  (
    .CI(\timer/Madd_h_cont_sig_addsub0000_cy [0]),
    .DI(text_on_1_OBUF_52),
    .S(\timer/Madd_h_cont_sig_addsub0000_cy<1>_rt_86 ),
    .O(\timer/Madd_h_cont_sig_addsub0000_cy [1])
  );
  XORCY   \timer/Madd_h_cont_sig_addsub0000_xor<0>  (
    .CI(text_on_1_OBUF_52),
    .LI(\timer/Madd_h_cont_sig_addsub0000_lut [0]),
    .O(\timer/h_cont_sig_addsub0000 [0])
  );
  MUXCY   \timer/Madd_h_cont_sig_addsub0000_cy<0>  (
    .CI(text_on_1_OBUF_52),
    .DI(N1),
    .S(\timer/Madd_h_cont_sig_addsub0000_lut [0]),
    .O(\timer/Madd_h_cont_sig_addsub0000_cy [0])
  );
  FDC   \timer/h_sync_reg  (
    .C(clk_BUFGP_15),
    .CLR(rst_IBUF_46),
    .D(\timer/h_sync_sig_159 ),
    .Q(\timer/h_sync_reg_158 )
  );
  FDC   \timer/v_sync_reg  (
    .C(clk_BUFGP_15),
    .CLR(rst_IBUF_46),
    .D(\timer/v_sync_sig_193 ),
    .Q(\timer/v_sync_reg_192 )
  );
  FDC   \timer/h_cont_reg_9  (
    .C(clk_BUFGP_15),
    .CLR(rst_IBUF_46),
    .D(\timer/h_cont_sig [9]),
    .Q(\timer/h_cont_reg [9])
  );
  FDC   \timer/h_cont_reg_8  (
    .C(clk_BUFGP_15),
    .CLR(rst_IBUF_46),
    .D(\timer/h_cont_sig [8]),
    .Q(\timer/h_cont_reg [8])
  );
  FDC   \timer/h_cont_reg_7  (
    .C(clk_BUFGP_15),
    .CLR(rst_IBUF_46),
    .D(\timer/h_cont_sig [7]),
    .Q(\timer/h_cont_reg [7])
  );
  FDC   \timer/h_cont_reg_6  (
    .C(clk_BUFGP_15),
    .CLR(rst_IBUF_46),
    .D(\timer/h_cont_sig [6]),
    .Q(\timer/h_cont_reg [6])
  );
  FDC   \timer/h_cont_reg_5  (
    .C(clk_BUFGP_15),
    .CLR(rst_IBUF_46),
    .D(\timer/h_cont_sig [5]),
    .Q(\timer/h_cont_reg [5])
  );
  FDC   \timer/h_cont_reg_4  (
    .C(clk_BUFGP_15),
    .CLR(rst_IBUF_46),
    .D(\timer/h_cont_sig [4]),
    .Q(\timer/h_cont_reg [4])
  );
  FDC   \timer/h_cont_reg_3  (
    .C(clk_BUFGP_15),
    .CLR(rst_IBUF_46),
    .D(\timer/h_cont_sig [3]),
    .Q(\timer/h_cont_reg [3])
  );
  FDC   \timer/h_cont_reg_2  (
    .C(clk_BUFGP_15),
    .CLR(rst_IBUF_46),
    .D(\timer/h_cont_sig [2]),
    .Q(\timer/h_cont_reg [2])
  );
  FDC   \timer/h_cont_reg_1  (
    .C(clk_BUFGP_15),
    .CLR(rst_IBUF_46),
    .D(\timer/h_cont_sig [1]),
    .Q(\timer/h_cont_reg [1])
  );
  FDC   \timer/h_cont_reg_0  (
    .C(clk_BUFGP_15),
    .CLR(rst_IBUF_46),
    .D(\timer/h_cont_sig [0]),
    .Q(\timer/h_cont_reg [0])
  );
  FDC   \timer/v_cont_reg_9  (
    .C(clk_BUFGP_15),
    .CLR(rst_IBUF_46),
    .D(\timer/v_cont_sig [9]),
    .Q(\timer/v_cont_reg [9])
  );
  FDC   \timer/v_cont_reg_8  (
    .C(clk_BUFGP_15),
    .CLR(rst_IBUF_46),
    .D(\timer/v_cont_sig [8]),
    .Q(\timer/v_cont_reg [8])
  );
  FDC   \timer/v_cont_reg_7  (
    .C(clk_BUFGP_15),
    .CLR(rst_IBUF_46),
    .D(\timer/v_cont_sig [7]),
    .Q(\timer/v_cont_reg [7])
  );
  FDC   \timer/v_cont_reg_6  (
    .C(clk_BUFGP_15),
    .CLR(rst_IBUF_46),
    .D(\timer/v_cont_sig [6]),
    .Q(\timer/v_cont_reg [6])
  );
  FDC   \timer/v_cont_reg_5  (
    .C(clk_BUFGP_15),
    .CLR(rst_IBUF_46),
    .D(\timer/v_cont_sig [5]),
    .Q(\timer/v_cont_reg [5])
  );
  FDC   \timer/v_cont_reg_4  (
    .C(clk_BUFGP_15),
    .CLR(rst_IBUF_46),
    .D(\timer/v_cont_sig [4]),
    .Q(\timer/v_cont_reg [4])
  );
  FDC   \timer/v_cont_reg_3  (
    .C(clk_BUFGP_15),
    .CLR(rst_IBUF_46),
    .D(\timer/v_cont_sig [3]),
    .Q(\timer/v_cont_reg [3])
  );
  FDC   \timer/v_cont_reg_2  (
    .C(clk_BUFGP_15),
    .CLR(rst_IBUF_46),
    .D(\timer/v_cont_sig [2]),
    .Q(\timer/v_cont_reg [2])
  );
  FDC   \timer/v_cont_reg_1  (
    .C(clk_BUFGP_15),
    .CLR(rst_IBUF_46),
    .D(\timer/v_cont_sig [1]),
    .Q(\timer/v_cont_reg [1])
  );
  FDC   \timer/v_cont_reg_0  (
    .C(clk_BUFGP_15),
    .CLR(rst_IBUF_46),
    .D(\timer/v_cont_sig [0]),
    .Q(\timer/v_cont_reg [0])
  );
  FDC   \timer/mod2_reg  (
    .C(clk_BUFGP_15),
    .CLR(rst_IBUF_46),
    .D(\timer/mod2_sig ),
    .Q(\timer/mod2_reg_160 )
  );
  FDR   \textgen/text_rgb_2  (
    .C(clk_BUFGP_15),
    .D(b_IBUF_13),
    .R(\textgen/font_bit_inv ),
    .Q(\textgen/text_rgb [2])
  );
  FDR   \textgen/text_rgb_1  (
    .C(clk_BUFGP_15),
    .D(g_IBUF_20),
    .R(\textgen/font_bit_inv ),
    .Q(\textgen/text_rgb [1])
  );
  FDR   \textgen/text_rgb_0  (
    .C(clk_BUFGP_15),
    .D(r_IBUF_44),
    .R(\textgen/font_bit_inv ),
    .Q(\textgen/text_rgb [0])
  );
  FD   \textgen/bit_addr_2  (
    .C(clk_BUFGP_15),
    .D(\timer/h_cont_reg [5]),
    .Q(\textgen/bit_addr [2])
  );
  FD   \textgen/bit_addr_1  (
    .C(clk_BUFGP_15),
    .D(\timer/h_cont_reg [4]),
    .Q(\textgen/bit_addr [1])
  );
  FD   \textgen/bit_addr_0  (
    .C(clk_BUFGP_15),
    .D(\timer/h_cont_reg [3]),
    .Q(\textgen/bit_addr [0])
  );
  FD   \textgen/row_addr_3  (
    .C(clk_BUFGP_15),
    .D(\timer/v_cont_reg [8]),
    .Q(\textgen/row_addr [3])
  );
  FD   \textgen/row_addr_2  (
    .C(clk_BUFGP_15),
    .D(\timer/v_cont_reg [7]),
    .Q(\textgen/row_addr [2])
  );
  FD   \textgen/row_addr_1  (
    .C(clk_BUFGP_15),
    .D(\timer/v_cont_reg [6]),
    .Q(\textgen/row_addr [1])
  );
  FD   \textgen/row_addr_0  (
    .C(clk_BUFGP_15),
    .D(\timer/v_cont_reg [5]),
    .Q(\textgen/row_addr [0])
  );
  FD   \textgen/char_addr_5  (
    .C(clk_BUFGP_15),
    .D(\textgen/char_addr_l[5] ),
    .Q(\textgen/char_addr[5] )
  );
  FD   \textgen/char_addr_3  (
    .C(clk_BUFGP_15),
    .D(\textgen/char_addr_l[3] ),
    .Q(\textgen/char_addr[3] )
  );
  FD   \textgen/char_addr_0  (
    .C(clk_BUFGP_15),
    .D(\textgen/char_addr_l[0] ),
    .Q(\textgen/char_addr[0] )
  );
  LUT3 #(
    .INIT ( 8'hB5 ))
  \textgen/char_addr_l_or00001  (
    .I0(\timer/h_cont_reg [8]),
    .I1(\timer/h_cont_reg [6]),
    .I2(\timer/h_cont_reg [7]),
    .O(\textgen/char_addr_l[5] )
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \textgen/char_addr_l<0>1  (
    .I0(\timer/h_cont_reg [6]),
    .I1(\timer/h_cont_reg [7]),
    .I2(\timer/h_cont_reg [8]),
    .O(\textgen/char_addr_l[0] )
  );
  LUT4 #(
    .INIT ( 16'hD777 ))
  \textgen/names_on_SW0  (
    .I0(\timer/v_cont_reg [9]),
    .I1(\timer/h_cont_reg [8]),
    .I2(\timer/h_cont_reg [6]),
    .I3(\timer/h_cont_reg [7]),
    .O(N2)
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  \textgen/names_on  (
    .I0(\timer/v_cont_reg [8]),
    .I1(\timer/v_cont_reg [7]),
    .I2(\timer/h_cont_reg [9]),
    .I3(N2),
    .O(text_on_0_OBUF_51)
  );
  LUT3 #(
    .INIT ( 8'h57 ))
  \timer/video_on8  (
    .I0(\timer/h_cont_reg [9]),
    .I1(\timer/h_cont_reg [8]),
    .I2(\timer/h_cont_reg [7]),
    .O(\timer/video_on8_195 )
  );
  LUT4 #(
    .INIT ( 16'h7FFF ))
  \timer/video_on21  (
    .I0(\timer/v_cont_reg [6]),
    .I1(\timer/v_cont_reg [5]),
    .I2(\timer/v_cont_reg [8]),
    .I3(\timer/v_cont_reg [7]),
    .O(\timer/video_on21_194 )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \timer/video_on32  (
    .I0(\timer/video_on8_195 ),
    .I1(\timer/video_on21_194 ),
    .I2(\timer/v_cont_reg [9]),
    .O(video_on_OBUF_197)
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \textgen/names_on111  (
    .I0(\timer/h_cont_reg [7]),
    .I1(\timer/h_cont_reg [6]),
    .I2(\timer/h_cont_reg [8]),
    .O(\textgen/char_addr_l[3] )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \timer/v_sync_sig_SW0  (
    .I0(\timer/v_cont_reg [3]),
    .I1(\timer/v_cont_reg [2]),
    .O(N4)
  );
  LUT4 #(
    .INIT ( 16'h0028 ))
  \timer/v_sync_sig  (
    .I0(\timer/N9 ),
    .I1(\timer/v_cont_reg [0]),
    .I2(\timer/v_cont_reg [1]),
    .I3(N4),
    .O(\timer/v_sync_sig_193 )
  );
  LUT3 #(
    .INIT ( 8'h81 ))
  \timer/h_sync_sig_SW0  (
    .I0(\timer/h_cont_reg [6]),
    .I1(\timer/h_cont_reg [5]),
    .I2(\timer/h_cont_reg [4]),
    .O(N6)
  );
  LUT4 #(
    .INIT ( 16'h0008 ))
  \timer/h_sync_sig  (
    .I0(\timer/h_cont_reg [7]),
    .I1(\timer/h_cont_reg [9]),
    .I2(\timer/h_cont_reg [8]),
    .I3(N6),
    .O(\timer/h_sync_sig_159 )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \timer/v_end1  (
    .I0(\timer/v_cont_reg [8]),
    .I1(\timer/v_cont_reg [7]),
    .I2(\timer/v_cont_reg [6]),
    .I3(N8),
    .O(\timer/N9 )
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \timer/v_cont_sig<0>11  (
    .I0(\timer/mod2_reg_160 ),
    .I1(N41),
    .O(\timer/N11 )
  );
  LUT4 #(
    .INIT ( 16'hEAC0 ))
  \timer/v_cont_sig<9>1  (
    .I0(\timer/v_cont_reg [9]),
    .I1(\timer/v_cont_sig_addsub0000 [9]),
    .I2(N40),
    .I3(\timer/N11 ),
    .O(\timer/v_cont_sig [9])
  );
  LUT4 #(
    .INIT ( 16'hEAC0 ))
  \timer/v_cont_sig<8>1  (
    .I0(\timer/v_cont_reg [8]),
    .I1(\timer/v_cont_sig_addsub0000 [8]),
    .I2(\timer/N4 ),
    .I3(\timer/N11 ),
    .O(\timer/v_cont_sig [8])
  );
  LUT4 #(
    .INIT ( 16'hEAC0 ))
  \timer/v_cont_sig<7>1  (
    .I0(\timer/v_cont_reg [7]),
    .I1(\timer/v_cont_sig_addsub0000 [7]),
    .I2(\timer/N4 ),
    .I3(\timer/N11 ),
    .O(\timer/v_cont_sig [7])
  );
  LUT4 #(
    .INIT ( 16'hEAC0 ))
  \timer/v_cont_sig<6>1  (
    .I0(\timer/v_cont_reg [6]),
    .I1(\timer/v_cont_sig_addsub0000 [6]),
    .I2(\timer/N4 ),
    .I3(\timer/N11 ),
    .O(\timer/v_cont_sig [6])
  );
  LUT4 #(
    .INIT ( 16'hEAC0 ))
  \timer/v_cont_sig<5>1  (
    .I0(\timer/v_cont_reg [5]),
    .I1(\timer/v_cont_sig_addsub0000 [5]),
    .I2(\timer/N4 ),
    .I3(\timer/N11 ),
    .O(\timer/v_cont_sig [5])
  );
  LUT4 #(
    .INIT ( 16'hEAC0 ))
  \timer/v_cont_sig<4>1  (
    .I0(\timer/v_cont_reg [4]),
    .I1(\timer/v_cont_sig_addsub0000 [4]),
    .I2(\timer/N4 ),
    .I3(\timer/N11 ),
    .O(\timer/v_cont_sig [4])
  );
  LUT4 #(
    .INIT ( 16'hEAC0 ))
  \timer/v_cont_sig<3>1  (
    .I0(\timer/v_cont_reg [3]),
    .I1(\timer/v_cont_sig_addsub0000 [3]),
    .I2(\timer/N4 ),
    .I3(\timer/N11 ),
    .O(\timer/v_cont_sig [3])
  );
  LUT4 #(
    .INIT ( 16'hEAC0 ))
  \timer/v_cont_sig<2>1  (
    .I0(\timer/v_cont_reg [2]),
    .I1(\timer/v_cont_sig_addsub0000 [2]),
    .I2(\timer/N4 ),
    .I3(\timer/N11 ),
    .O(\timer/v_cont_sig [2])
  );
  LUT4 #(
    .INIT ( 16'hEAC0 ))
  \timer/v_cont_sig<1>1  (
    .I0(\timer/v_cont_reg [1]),
    .I1(\timer/v_cont_sig_addsub0000 [1]),
    .I2(\timer/N4 ),
    .I3(\timer/N11 ),
    .O(\timer/v_cont_sig [1])
  );
  LUT4 #(
    .INIT ( 16'hEAC0 ))
  \timer/v_cont_sig<0>1  (
    .I0(\timer/v_cont_reg [0]),
    .I1(\timer/v_cont_sig_addsub0000 [0]),
    .I2(\timer/N4 ),
    .I3(\timer/N11 ),
    .O(\timer/v_cont_sig [0])
  );
  LUT4 #(
    .INIT ( 16'hFDFF ))
  \timer/v_cont_sig<0>2_SW0  (
    .I0(\timer/v_cont_reg [3]),
    .I1(\timer/v_cont_reg [1]),
    .I2(\timer/v_cont_reg [0]),
    .I3(\timer/v_cont_reg [2]),
    .O(N10)
  );
  LUT4 #(
    .INIT ( 16'h0080 ))
  \timer/h_end7  (
    .I0(\timer/h_cont_reg [0]),
    .I1(\timer/h_cont_reg [1]),
    .I2(\timer/h_cont_reg [4]),
    .I3(\timer/h_cont_reg [5]),
    .O(\timer/h_end7_157 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \timer/h_end12  (
    .I0(\timer/h_cont_reg [2]),
    .I1(\timer/h_cont_reg [3]),
    .I2(\timer/h_cont_reg [9]),
    .I3(\timer/h_cont_reg [8]),
    .O(\timer/h_end12_156 )
  );
  IBUF   rst_IBUF (
    .I(rst),
    .O(rst_IBUF_46)
  );
  IBUF   b_IBUF (
    .I(b),
    .O(b_IBUF_13)
  );
  IBUF   g_IBUF (
    .I(g),
    .O(g_IBUF_20)
  );
  IBUF   r_IBUF (
    .I(r),
    .O(r_IBUF_44)
  );
  OBUF   pixel_x_9_OBUF (
    .I(\timer/h_cont_reg [9]),
    .O(pixel_x[9])
  );
  OBUF   pixel_x_8_OBUF (
    .I(\timer/h_cont_reg [8]),
    .O(pixel_x[8])
  );
  OBUF   pixel_x_7_OBUF (
    .I(\timer/h_cont_reg [7]),
    .O(pixel_x[7])
  );
  OBUF   pixel_x_6_OBUF (
    .I(\timer/h_cont_reg [6]),
    .O(pixel_x[6])
  );
  OBUF   pixel_x_5_OBUF (
    .I(\timer/h_cont_reg [5]),
    .O(pixel_x[5])
  );
  OBUF   pixel_x_4_OBUF (
    .I(\timer/h_cont_reg [4]),
    .O(pixel_x[4])
  );
  OBUF   pixel_x_3_OBUF (
    .I(\timer/h_cont_reg [3]),
    .O(pixel_x[3])
  );
  OBUF   pixel_x_2_OBUF (
    .I(\timer/h_cont_reg [2]),
    .O(pixel_x[2])
  );
  OBUF   pixel_x_1_OBUF (
    .I(\timer/h_cont_reg [1]),
    .O(pixel_x[1])
  );
  OBUF   pixel_x_0_OBUF (
    .I(\timer/h_cont_reg [0]),
    .O(pixel_x[0])
  );
  OBUF   pixel_y_9_OBUF (
    .I(\timer/v_cont_reg [9]),
    .O(pixel_y[9])
  );
  OBUF   pixel_y_8_OBUF (
    .I(\timer/v_cont_reg [8]),
    .O(pixel_y[8])
  );
  OBUF   pixel_y_7_OBUF (
    .I(\timer/v_cont_reg [7]),
    .O(pixel_y[7])
  );
  OBUF   pixel_y_6_OBUF (
    .I(\timer/v_cont_reg [6]),
    .O(pixel_y[6])
  );
  OBUF   pixel_y_5_OBUF (
    .I(\timer/v_cont_reg [5]),
    .O(pixel_y[5])
  );
  OBUF   pixel_y_4_OBUF (
    .I(\timer/v_cont_reg [4]),
    .O(pixel_y[4])
  );
  OBUF   pixel_y_3_OBUF (
    .I(\timer/v_cont_reg [3]),
    .O(pixel_y[3])
  );
  OBUF   pixel_y_2_OBUF (
    .I(\timer/v_cont_reg [2]),
    .O(pixel_y[2])
  );
  OBUF   pixel_y_1_OBUF (
    .I(\timer/v_cont_reg [1]),
    .O(pixel_y[1])
  );
  OBUF   pixel_y_0_OBUF (
    .I(\timer/v_cont_reg [0]),
    .O(pixel_y[0])
  );
  OBUF   vsync_OBUF (
    .I(\timer/v_sync_reg_192 ),
    .O(vsync)
  );
  OBUF   video_on_OBUF (
    .I(video_on_OBUF_197),
    .O(video_on)
  );
  OBUF   hsync_OBUF (
    .I(\timer/h_sync_reg_158 ),
    .O(hsync)
  );
  OBUF   p_tick_OBUF (
    .I(\timer/mod2_reg_160 ),
    .O(p_tick)
  );
  OBUF   colores_2_OBUF (
    .I(\textgen/text_rgb [2]),
    .O(colores[2])
  );
  OBUF   colores_1_OBUF (
    .I(\textgen/text_rgb [1]),
    .O(colores[1])
  );
  OBUF   colores_0_OBUF (
    .I(\textgen/text_rgb [0]),
    .O(colores[0])
  );
  OBUF   text_on_3_OBUF (
    .I(text_on_1_OBUF_52),
    .O(text_on[3])
  );
  OBUF   text_on_2_OBUF (
    .I(text_on_1_OBUF_52),
    .O(text_on[2])
  );
  OBUF   text_on_1_OBUF (
    .I(text_on_1_OBUF_52),
    .O(text_on[1])
  );
  OBUF   text_on_0_OBUF (
    .I(text_on_0_OBUF_51),
    .O(text_on[0])
  );
  FDR   \textgen/char_addr_2  (
    .C(clk_BUFGP_15),
    .D(\textgen/char_addr_l_cmp_eq00011 ),
    .R(\timer/h_cont_reg [7]),
    .Q(\textgen/char_addr[2] )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \textgen/char_addr_l_cmp_eq000111  (
    .I0(\timer/h_cont_reg [8]),
    .I1(\timer/h_cont_reg [6]),
    .O(\textgen/char_addr_l_cmp_eq00011 )
  );
  FDS   \textgen/char_addr_1  (
    .C(clk_BUFGP_15),
    .D(\textgen/char_addr_l<1>1 ),
    .S(\textgen/char_addr_l[3] ),
    .Q(\textgen/char_addr[1] )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \textgen/char_addr_l<1>11  (
    .I0(\timer/h_cont_reg [8]),
    .I1(\timer/h_cont_reg [7]),
    .O(\textgen/char_addr_l<1>1 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \timer/Madd_v_cont_sig_addsub0000_cy<8>_rt  (
    .I0(\timer/v_cont_reg [8]),
    .O(\timer/Madd_v_cont_sig_addsub0000_cy<8>_rt_119 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \timer/Madd_v_cont_sig_addsub0000_cy<7>_rt  (
    .I0(\timer/v_cont_reg [7]),
    .O(\timer/Madd_v_cont_sig_addsub0000_cy<7>_rt_117 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \timer/Madd_v_cont_sig_addsub0000_cy<6>_rt  (
    .I0(\timer/v_cont_reg [6]),
    .O(\timer/Madd_v_cont_sig_addsub0000_cy<6>_rt_115 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \timer/Madd_v_cont_sig_addsub0000_cy<5>_rt  (
    .I0(\timer/v_cont_reg [5]),
    .O(\timer/Madd_v_cont_sig_addsub0000_cy<5>_rt_113 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \timer/Madd_v_cont_sig_addsub0000_cy<4>_rt  (
    .I0(\timer/v_cont_reg [4]),
    .O(\timer/Madd_v_cont_sig_addsub0000_cy<4>_rt_111 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \timer/Madd_v_cont_sig_addsub0000_cy<3>_rt  (
    .I0(\timer/v_cont_reg [3]),
    .O(\timer/Madd_v_cont_sig_addsub0000_cy<3>_rt_109 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \timer/Madd_v_cont_sig_addsub0000_cy<2>_rt  (
    .I0(\timer/v_cont_reg [2]),
    .O(\timer/Madd_v_cont_sig_addsub0000_cy<2>_rt_107 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \timer/Madd_v_cont_sig_addsub0000_cy<1>_rt  (
    .I0(\timer/v_cont_reg [1]),
    .O(\timer/Madd_v_cont_sig_addsub0000_cy<1>_rt_105 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \timer/Madd_h_cont_sig_addsub0000_cy<8>_rt  (
    .I0(\timer/h_cont_reg [8]),
    .O(\timer/Madd_h_cont_sig_addsub0000_cy<8>_rt_100 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \timer/Madd_h_cont_sig_addsub0000_cy<7>_rt  (
    .I0(\timer/h_cont_reg [7]),
    .O(\timer/Madd_h_cont_sig_addsub0000_cy<7>_rt_98 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \timer/Madd_h_cont_sig_addsub0000_cy<6>_rt  (
    .I0(\timer/h_cont_reg [6]),
    .O(\timer/Madd_h_cont_sig_addsub0000_cy<6>_rt_96 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \timer/Madd_h_cont_sig_addsub0000_cy<5>_rt  (
    .I0(\timer/h_cont_reg [5]),
    .O(\timer/Madd_h_cont_sig_addsub0000_cy<5>_rt_94 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \timer/Madd_h_cont_sig_addsub0000_cy<4>_rt  (
    .I0(\timer/h_cont_reg [4]),
    .O(\timer/Madd_h_cont_sig_addsub0000_cy<4>_rt_92 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \timer/Madd_h_cont_sig_addsub0000_cy<3>_rt  (
    .I0(\timer/h_cont_reg [3]),
    .O(\timer/Madd_h_cont_sig_addsub0000_cy<3>_rt_90 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \timer/Madd_h_cont_sig_addsub0000_cy<2>_rt  (
    .I0(\timer/h_cont_reg [2]),
    .O(\timer/Madd_h_cont_sig_addsub0000_cy<2>_rt_88 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \timer/Madd_h_cont_sig_addsub0000_cy<1>_rt  (
    .I0(\timer/h_cont_reg [1]),
    .O(\timer/Madd_h_cont_sig_addsub0000_cy<1>_rt_86 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \timer/Madd_v_cont_sig_addsub0000_xor<9>_rt  (
    .I0(\timer/v_cont_reg [9]),
    .O(\timer/Madd_v_cont_sig_addsub0000_xor<9>_rt_121 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \timer/Madd_h_cont_sig_addsub0000_xor<9>_rt  (
    .I0(\timer/h_cont_reg [9]),
    .O(\timer/Madd_h_cont_sig_addsub0000_xor<9>_rt_102 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \textgen/font_bit_inv1  (
    .I0(\textgen/bit_addr [2]),
    .I1(\textgen/Mmux__COND_5_3_f5_53 ),
    .I2(\textgen/Mmux__COND_5_4_f5_54 ),
    .O(\textgen/font_bit_inv )
  );
  LUT4 #(
    .INIT ( 16'h4E44 ))
  \timer/h_cont_sig<0>1  (
    .I0(\timer/mod2_reg_160 ),
    .I1(\timer/h_cont_reg [0]),
    .I2(\timer/h_end ),
    .I3(\timer/h_cont_sig_addsub0000 [0]),
    .O(\timer/h_cont_sig [0])
  );
  LUT4 #(
    .INIT ( 16'h4E44 ))
  \timer/h_cont_sig<1>1  (
    .I0(\timer/mod2_reg_160 ),
    .I1(\timer/h_cont_reg [1]),
    .I2(\timer/h_end ),
    .I3(\timer/h_cont_sig_addsub0000 [1]),
    .O(\timer/h_cont_sig [1])
  );
  LUT4 #(
    .INIT ( 16'h4E44 ))
  \timer/h_cont_sig<2>1  (
    .I0(\timer/mod2_reg_160 ),
    .I1(\timer/h_cont_reg [2]),
    .I2(\timer/h_end ),
    .I3(\timer/h_cont_sig_addsub0000 [2]),
    .O(\timer/h_cont_sig [2])
  );
  LUT4 #(
    .INIT ( 16'h4E44 ))
  \timer/h_cont_sig<3>1  (
    .I0(\timer/mod2_reg_160 ),
    .I1(\timer/h_cont_reg [3]),
    .I2(\timer/h_end ),
    .I3(\timer/h_cont_sig_addsub0000 [3]),
    .O(\timer/h_cont_sig [3])
  );
  LUT4 #(
    .INIT ( 16'h4E44 ))
  \timer/h_cont_sig<4>1  (
    .I0(\timer/mod2_reg_160 ),
    .I1(\timer/h_cont_reg [4]),
    .I2(\timer/h_end ),
    .I3(\timer/h_cont_sig_addsub0000 [4]),
    .O(\timer/h_cont_sig [4])
  );
  LUT4 #(
    .INIT ( 16'h4E44 ))
  \timer/h_cont_sig<5>1  (
    .I0(\timer/mod2_reg_160 ),
    .I1(\timer/h_cont_reg [5]),
    .I2(\timer/h_end ),
    .I3(\timer/h_cont_sig_addsub0000 [5]),
    .O(\timer/h_cont_sig [5])
  );
  LUT4 #(
    .INIT ( 16'h4E44 ))
  \timer/h_cont_sig<6>1  (
    .I0(\timer/mod2_reg_160 ),
    .I1(\timer/h_cont_reg [6]),
    .I2(\timer/h_end ),
    .I3(\timer/h_cont_sig_addsub0000 [6]),
    .O(\timer/h_cont_sig [6])
  );
  LUT4 #(
    .INIT ( 16'h4E44 ))
  \timer/h_cont_sig<7>1  (
    .I0(\timer/mod2_reg_160 ),
    .I1(\timer/h_cont_reg [7]),
    .I2(\timer/h_end ),
    .I3(\timer/h_cont_sig_addsub0000 [7]),
    .O(\timer/h_cont_sig [7])
  );
  LUT4 #(
    .INIT ( 16'h4E44 ))
  \timer/h_cont_sig<8>1  (
    .I0(\timer/mod2_reg_160 ),
    .I1(\timer/h_cont_reg [8]),
    .I2(\timer/h_end ),
    .I3(\timer/h_cont_sig_addsub0000 [8]),
    .O(\timer/h_cont_sig [8])
  );
  LUT4 #(
    .INIT ( 16'h4E44 ))
  \timer/h_cont_sig<9>1  (
    .I0(\timer/mod2_reg_160 ),
    .I1(\timer/h_cont_reg [9]),
    .I2(\timer/h_end ),
    .I3(\timer/h_cont_sig_addsub0000 [9]),
    .O(\timer/h_cont_sig [9])
  );
  MUXF5   \textgen/Mmux__COND_5_3_f5  (
    .I0(N36),
    .I1(N37),
    .S(\textgen/bit_addr [1]),
    .O(\textgen/Mmux__COND_5_3_f5_53 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \textgen/Mmux__COND_5_3_f5_F  (
    .I0(\textgen/bit_addr [0]),
    .I1(\textgen/font_word [7]),
    .I2(\textgen/font_word [6]),
    .O(N36)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \textgen/Mmux__COND_5_3_f5_G  (
    .I0(\textgen/bit_addr [0]),
    .I1(\textgen/font_word [5]),
    .I2(\textgen/font_word [4]),
    .O(N37)
  );
  MUXF5   \textgen/Mmux__COND_5_4_f5  (
    .I0(N38),
    .I1(N39),
    .S(\textgen/bit_addr [1]),
    .O(\textgen/Mmux__COND_5_4_f5_54 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \textgen/Mmux__COND_5_4_f5_F  (
    .I0(\textgen/bit_addr [0]),
    .I1(\textgen/font_word [3]),
    .I2(\textgen/font_word [2]),
    .O(N38)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \textgen/Mmux__COND_5_4_f5_G  (
    .I0(\textgen/bit_addr [0]),
    .I1(\textgen/font_word [1]),
    .I2(\textgen/font_word [0]),
    .O(N39)
  );
  BUFGP   clk_BUFGP (
    .I(clk),
    .O(clk_BUFGP_15)
  );
  INV   \timer/Madd_v_cont_sig_addsub0000_lut<0>_INV_0  (
    .I(\timer/v_cont_reg [0]),
    .O(\timer/Madd_v_cont_sig_addsub0000_lut [0])
  );
  INV   \timer/Madd_h_cont_sig_addsub0000_lut<0>_INV_0  (
    .I(\timer/h_cont_reg [0]),
    .O(\timer/Madd_h_cont_sig_addsub0000_lut [0])
  );
  INV   \timer/mod2_sig1_INV_0  (
    .I(\timer/mod2_reg_160 ),
    .O(\timer/mod2_sig )
  );
  RAMB16_S9 #(
    .WRITE_MODE ( "WRITE_FIRST" ),
    .INIT_3E ( 256'h0000000070181818180E18181870000000000000181818181800181818180000 ),
    .INIT_00 ( 256'h000000007E818199BD8181A5817E000000000000000000000000000000000000 ),
    .INIT_01 ( 256'h0000000010387CFEFEFEFE6C00000000000000007EFFFFE7C3FFFFDBFF7E0000 ),
    .INIT_02 ( 256'h000000003C1818E7E7E73C3C18000000000000000010387CFE7C381000000000 ),
    .INIT_03 ( 256'h000000000000183C3C18000000000000000000003C18187EFFFF7E3C18000000 ),
    .INIT_04 ( 256'h00000000003C664242663C0000000000FFFFFFFFFFFFE7C3C3E7FFFFFFFFFFFF ),
    .INIT_05 ( 256'h0000000078CCCCCCCC78321A0E1E0000FFFFFFFFFFC399BDBD99C3FFFFFFFFFF ),
    .INIT_06 ( 256'h00000000E0F070303030303F333F00000000000018187E183C666666663C0000 ),
    .INIT_07 ( 256'h000000001818DB3CE73CDB1818000000000000C0E6E767636363637F637F0000 ),
    .INIT_08 ( 256'h0000000002060E1E3EFE3E1E0E0602000000000080C0E0F0F8FEF8F0E0C08000 ),
    .INIT_09 ( 256'h000000006666006666666666666600000000000000183C7E1818187E3C180000 ),
    .INIT_0A ( 256'h0000007CC60C386CC6C66C3860C67C00000000001B1B1B1B1B7BDBDBDB7F0000 ),
    .INIT_0B ( 256'h000000307E183C7E1818187E3C18000000000000FEFEFEFE0000000000000000 ),
    .INIT_0C ( 256'h00000000183C7E18181818181818000000000000181818181818187E3C180000 ),
    .INIT_0D ( 256'h0000000000003060FE60300000000000000000000000180CFE0C180000000000 ),
    .INIT_0E ( 256'h0000000000002466FF66240000000000000000000000FEC0C0C0000000000000 ),
    .INIT_0F ( 256'h00000000001038387C7CFEFE000000000000000000FEFE7C7C38381000000000 ),
    .INIT_10 ( 256'h000000001818001818183C3C3C18000000000000000000000000000000000000 ),
    .INIT_11 ( 256'h000000006C6CFE6C6C6CFE6C6C00000000000000000000000000002466666600 ),
    .INIT_12 ( 256'h0000000086C66030180CC6C200000000000018187CC68606067CC0C2C67C1818 ),
    .INIT_13 ( 256'h000000000000000000000060303030000000000076CCCCCCDC76386C6C380000 ),
    .INIT_14 ( 256'h0000000030180C0C0C0C0C0C18300000000000000C18303030303030180C0000 ),
    .INIT_15 ( 256'h00000000000018187E18180000000000000000000000663CFF3C660000000000 ),
    .INIT_16 ( 256'h00000000000000007E0000000000000000000030181818000000000000000000 ),
    .INIT_17 ( 256'h0000000080C06030180C06020000000000000000181800000000000000000000 ),
    .INIT_18 ( 256'h000000007E1818181818187838180000000000007CC6C6E6F6DECEC6C67C0000 ),
    .INIT_19 ( 256'h000000007CC60606063C0606C67C000000000000FEC6C06030180C06C67C0000 ),
    .INIT_1A ( 256'h000000007CC6060606FCC0C0C0FE0000000000001E0C0C0CFECC6C3C1C0C0000 ),
    .INIT_1B ( 256'h0000000030303030180C0606C6FE0000000000007CC6C6C6C6FCC0C060380000 ),
    .INIT_1C ( 256'h00000000780C0606067EC6C6C67C0000000000007CC6C6C6C67CC6C6C67C0000 ),
    .INIT_1D ( 256'h0000000030181800000018180000000000000000001818000000181800000000 ),
    .INIT_1E ( 256'h000000000000007E00007E000000000000000000060C18306030180C06000000 ),
    .INIT_1F ( 256'h000000001818001818180CC6C67C0000000000006030180C060C183060000000 ),
    .INIT_20 ( 256'h00000000C6C6C6C6FEC6C66C38100000000000007CC0DCDEDEDEC6C6C67C0000 ),
    .INIT_21 ( 256'h000000003C66C2C0C0C0C0C2663C000000000000FC666666667C666666FC0000 ),
    .INIT_22 ( 256'h00000000FE6662606878686266FE000000000000F86C6666666666666CF80000 ),
    .INIT_23 ( 256'h000000003A66C6C6DEC0C0C2663C000000000000F06060606878686266FE0000 ),
    .INIT_24 ( 256'h000000003C18181818181818183C000000000000C6C6C6C6C6FEC6C6C6C60000 ),
    .INIT_25 ( 256'h00000000E666666C78786C6666E600000000000078CCCCCC0C0C0C0C0C1E0000 ),
    .INIT_26 ( 256'h00000000C3C3C3C3C3DBFFFFE7C3000000000000FE6662606060606060F00000 ),
    .INIT_27 ( 256'h000000007CC6C6C6C6C6C6C6C67C000000000000C6C6C6C6CEDEFEF6E6C60000 ),
    .INIT_28 ( 256'h00000E0C7CDED6C6C6C6C6C6C67C000000000000F0606060607C666666FC0000 ),
    .INIT_29 ( 256'h000000007CC6C6060C3860C6C67C000000000000E66666666C7C666666FC0000 ),
    .INIT_2A ( 256'h000000007CC6C6C6C6C6C6C6C6C60000000000003C18181818181899DBFF0000 ),
    .INIT_2B ( 256'h000000006666FFDBDBC3C3C3C3C3000000000000183C66C3C3C3C3C3C3C30000 ),
    .INIT_2C ( 256'h000000003C181818183C66C3C3C3000000000000C3C3663C18183C66C3C30000 ),
    .INIT_2D ( 256'h000000003C30303030303030303C000000000000FFC3C16030180C86C3FF0000 ),
    .INIT_2E ( 256'h000000003C0C0C0C0C0C0C0C0C3C00000000000002060E1C3870E0C080000000 ),
    .INIT_2F ( 256'h0000FF00000000000000000000000000000000000000000000000000C66C3810 ),
    .INIT_30 ( 256'h0000000076CCCCCC7C0C78000000000000000000000000000000000000183030 ),
    .INIT_31 ( 256'h000000007CC6C0C0C0C67C0000000000000000007C666666666C786060E00000 ),
    .INIT_32 ( 256'h000000007CC6C0C0FEC67C00000000000000000076CCCCCCCC6C3C0C0C1C0000 ),
    .INIT_33 ( 256'h0078CC0C7CCCCCCCCCCC76000000000000000000F060606060F060646C380000 ),
    .INIT_34 ( 256'h000000003C181818181838001818000000000000E666666666766C6060E00000 ),
    .INIT_35 ( 256'h00000000E6666C78786C666060E00000003C66660606060606060E0006060000 ),
    .INIT_36 ( 256'h00000000DBDBDBDBDBFFE60000000000000000003C1818181818181818380000 ),
    .INIT_37 ( 256'h000000007CC6C6C6C6C67C000000000000000000666666666666DC0000000000 ),
    .INIT_38 ( 256'h001E0C0C7CCCCCCCCCCC76000000000000F060607C6666666666DC0000000000 ),
    .INIT_39 ( 256'h000000007CC60C3860C67C000000000000000000F06060606676DC0000000000 ),
    .INIT_3A ( 256'h0000000076CCCCCCCCCCCC0000000000000000001C3630303030FC3030100000 ),
    .INIT_3B ( 256'h0000000066FFDBDBC3C3C3000000000000000000183C66C3C3C3C30000000000 ),
    .INIT_3C ( 256'h00F80C067EC6C6C6C6C6C6000000000000000000C3663C183C66C30000000000 ),
    .INIT_3D ( 256'h000000000E18181818701818180E000000000000FEC6603018CCFE0000000000 ),
    .INIT_3F ( 256'h0000000000FEC6C6C66C381000000000000000000000000000000000DC760000 ))
  \textgen/font_unit/Mrom_data  (
    .CLK(clk_BUFGP_15),
    .EN(N1),
    .SSR(text_on_1_OBUF_52),
    .WE(text_on_1_OBUF_52),
    .ADDR({\textgen/char_addr[1] , \textgen/char_addr[5] , text_on_1_OBUF_52, \textgen/char_addr[3] , \textgen/char_addr[2] , \textgen/char_addr[1] , 
\textgen/char_addr[0] , \textgen/row_addr [3], \textgen/row_addr [2], \textgen/row_addr [1], \textgen/row_addr [0]}),
    .DI({text_on_1_OBUF_52, text_on_1_OBUF_52, text_on_1_OBUF_52, text_on_1_OBUF_52, text_on_1_OBUF_52, text_on_1_OBUF_52, text_on_1_OBUF_52, 
text_on_1_OBUF_52}),
    .DIP({text_on_1_OBUF_52}),
    .DO({\textgen/font_word [7], \textgen/font_word [6], \textgen/font_word [5], \textgen/font_word [4], \textgen/font_word [3], 
\textgen/font_word [2], \textgen/font_word [1], \textgen/font_word [0]}),
    .DOP({\NLW_textgen/font_unit/Mrom_data_DOP<0>_UNCONNECTED })
  );
  LUT3_L #(
    .INIT ( 8'hEF ))
  \timer/v_end1_SW0  (
    .I0(\timer/v_cont_reg [4]),
    .I1(\timer/v_cont_reg [5]),
    .I2(\timer/v_cont_reg [9]),
    .LO(N8)
  );
  LUT4_D #(
    .INIT ( 16'h8A00 ))
  \timer/v_cont_sig<0>2  (
    .I0(\timer/mod2_reg_160 ),
    .I1(N10),
    .I2(\timer/N9 ),
    .I3(\timer/h_end ),
    .LO(N40),
    .O(\timer/N4 )
  );
  LUT4_D #(
    .INIT ( 16'h1000 ))
  \timer/h_end24  (
    .I0(\timer/h_cont_reg [6]),
    .I1(\timer/h_cont_reg [7]),
    .I2(\timer/h_end7_157 ),
    .I3(\timer/h_end12_156 ),
    .LO(N41),
    .O(\timer/h_end )
  );
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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
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

