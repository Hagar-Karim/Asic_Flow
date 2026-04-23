/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Tue Feb 10 02:35:21 2026
/////////////////////////////////////////////////////////////


module RST_SYNC_0 ( RST, CLK, SYNC_RST );
  input RST, CLK;
  output SYNC_RST;
  wire   \sync_reg[0] ;

  DFFRQX2M \sync_reg_reg[1]  ( .D(\sync_reg[0] ), .CK(CLK), .RN(RST), .Q(
        SYNC_RST) );
  DFFRQX2M \sync_reg_reg[0]  ( .D(1'b1), .CK(CLK), .RN(RST), .Q(\sync_reg[0] )
         );
endmodule


module RST_SYNC_1 ( RST, CLK, SYNC_RST );
  input RST, CLK;
  output SYNC_RST;
  wire   \sync_reg[0] ;

  DFFRQX2M \sync_reg_reg[1]  ( .D(\sync_reg[0] ), .CK(CLK), .RN(RST), .Q(
        SYNC_RST) );
  DFFRQX2M \sync_reg_reg[0]  ( .D(1'b1), .CK(CLK), .RN(RST), .Q(\sync_reg[0] )
         );
endmodule


module CRC ( CLK, RST, DATA, ACTIVE, CRC, Valid );
  input CLK, RST, DATA, ACTIVE;
  output CRC, Valid;
  wire   N10, N17, N18, N19, N20, N21, n2, n3, n4, n6, n7, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, \add_72/carry[4] , \add_72/carry[3] ,
         \add_72/carry[2] , n1, n5, n8, n9;
  wire   [7:0] LFSR;
  wire   [4:0] count;

  DFFRQX2M CRC_reg ( .D(n17), .CK(CLK), .RN(RST), .Q(CRC) );
  DFFSX1M \LFSR_reg[4]  ( .D(n19), .CK(CLK), .SN(RST), .QN(n4) );
  DFFSX1M \LFSR_reg[6]  ( .D(n21), .CK(CLK), .SN(RST), .QN(n2) );
  DFFRQX2M Valid_reg ( .D(N10), .CK(CLK), .RN(RST), .Q(Valid) );
  DFFRQX2M \count_reg[4]  ( .D(n29), .CK(CLK), .RN(RST), .Q(count[4]) );
  DFFRQX2M \LFSR_reg[0]  ( .D(n22), .CK(CLK), .RN(RST), .Q(LFSR[0]) );
  DFFRQX2M \count_reg[0]  ( .D(n30), .CK(CLK), .RN(RST), .Q(count[0]) );
  DFFRX1M \LFSR_reg[5]  ( .D(n20), .CK(CLK), .RN(RST), .QN(n3) );
  DFFRX1M \LFSR_reg[2]  ( .D(n24), .CK(CLK), .RN(RST), .QN(n6) );
  DFFRX1M \LFSR_reg[1]  ( .D(n23), .CK(CLK), .RN(RST), .QN(n7) );
  DFFRQX2M \count_reg[1]  ( .D(n28), .CK(CLK), .RN(RST), .Q(count[1]) );
  DFFRQX2M \count_reg[2]  ( .D(n27), .CK(CLK), .RN(RST), .Q(count[2]) );
  DFFSX1M \LFSR_reg[7]  ( .D(n25), .CK(CLK), .SN(RST), .Q(LFSR[7]), .QN(n8) );
  DFFSX1M \count_reg[3]  ( .D(n26), .CK(CLK), .SN(RST), .Q(count[3]) );
  DFFSX1M \LFSR_reg[3]  ( .D(n18), .CK(CLK), .SN(RST), .Q(LFSR[3]), .QN(n9) );
  INVX2M U3 ( .A(n10), .Y(n1) );
  NOR2X2M U4 ( .A(ACTIVE), .B(N10), .Y(n10) );
  OAI21X2M U5 ( .A0(n1), .A1(n8), .B0(n12), .Y(n25) );
  AO21XLM U6 ( .A0(N20), .A1(N10), .B0(n10), .Y(n26) );
  INVX2M U7 ( .A(n12), .Y(n5) );
  AND2X2M U8 ( .A(N19), .B(N10), .Y(n27) );
  AND2X2M U9 ( .A(N18), .B(N10), .Y(n28) );
  NOR2BX2M U10 ( .AN(n15), .B(ACTIVE), .Y(N10) );
  NAND3BX2M U11 ( .AN(count[0]), .B(count[3]), .C(n16), .Y(n15) );
  NOR3X2M U12 ( .A(count[1]), .B(count[4]), .C(count[2]), .Y(n16) );
  OAI22X1M U13 ( .A0(n10), .A1(n4), .B0(n1), .B1(n9), .Y(n18) );
  OAI22X1M U14 ( .A0(n10), .A1(n3), .B0(n1), .B1(n4), .Y(n19) );
  OAI22X1M U15 ( .A0(n10), .A1(n2), .B0(n1), .B1(n3), .Y(n20) );
  OAI22X1M U16 ( .A0(n10), .A1(n6), .B0(n1), .B1(n7), .Y(n23) );
  OAI2BB2X1M U17 ( .B0(n10), .B1(n7), .A0N(LFSR[0]), .A1N(n10), .Y(n22) );
  NAND2X2M U18 ( .A(ACTIVE), .B(n14), .Y(n12) );
  CLKXOR2X2M U19 ( .A(LFSR[0]), .B(DATA), .Y(n14) );
  OAI21X2M U20 ( .A0(n1), .A1(n2), .B0(n11), .Y(n21) );
  AOI32X1M U21 ( .A0(n12), .A1(n1), .A2(LFSR[7]), .B0(n5), .B1(n8), .Y(n11) );
  OAI21X2M U22 ( .A0(n1), .A1(n6), .B0(n13), .Y(n24) );
  AOI32X1M U23 ( .A0(n12), .A1(n1), .A2(LFSR[3]), .B0(n5), .B1(n9), .Y(n13) );
  AO22X1M U24 ( .A0(N10), .A1(LFSR[0]), .B0(CRC), .B1(ACTIVE), .Y(n17) );
  AND2X2M U25 ( .A(N21), .B(N10), .Y(n29) );
  AND2X2M U26 ( .A(N17), .B(N10), .Y(n30) );
  INVX2M U27 ( .A(count[0]), .Y(N17) );
  ADDHX1M U28 ( .A(count[2]), .B(\add_72/carry[2] ), .CO(\add_72/carry[3] ), 
        .S(N19) );
  ADDHX1M U29 ( .A(count[1]), .B(count[0]), .CO(\add_72/carry[2] ), .S(N18) );
  ADDHX1M U30 ( .A(count[3]), .B(\add_72/carry[3] ), .CO(\add_72/carry[4] ), 
        .S(N20) );
  CLKXOR2X2M U31 ( .A(\add_72/carry[4] ), .B(count[4]), .Y(N21) );
endmodule


module SER_2_PAR ( CLK, RST, SER_DATA, SER_DATA_VLD, PAR_DATA, PAR_DATA_VLD );
  output [7:0] PAR_DATA;
  input CLK, RST, SER_DATA, SER_DATA_VLD;
  output PAR_DATA_VLD;
  wire   n8, n9, n10, n11, n12, n13, n14, n15, n1, n2, n3, n4, n5, n6, n7, n16,
         n17;

  DFFRQX2M \PAR_DATA_reg[0]  ( .D(n8), .CK(CLK), .RN(RST), .Q(PAR_DATA[0]) );
  DFFRQX2M \PAR_DATA_reg[7]  ( .D(n15), .CK(CLK), .RN(RST), .Q(PAR_DATA[7]) );
  DFFRQX2M \PAR_DATA_reg[6]  ( .D(n14), .CK(CLK), .RN(RST), .Q(PAR_DATA[6]) );
  DFFRQX2M \PAR_DATA_reg[5]  ( .D(n13), .CK(CLK), .RN(RST), .Q(PAR_DATA[5]) );
  DFFRQX2M \PAR_DATA_reg[4]  ( .D(n12), .CK(CLK), .RN(RST), .Q(PAR_DATA[4]) );
  DFFRQX2M \PAR_DATA_reg[3]  ( .D(n11), .CK(CLK), .RN(RST), .Q(PAR_DATA[3]) );
  DFFRQX2M \PAR_DATA_reg[2]  ( .D(n10), .CK(CLK), .RN(RST), .Q(PAR_DATA[2]) );
  DFFRQX2M \PAR_DATA_reg[1]  ( .D(n9), .CK(CLK), .RN(RST), .Q(PAR_DATA[1]) );
  DFFRQX2M PAR_DATA_VLD_reg ( .D(n17), .CK(CLK), .RN(RST), .Q(PAR_DATA_VLD) );
  OAI22X1M U3 ( .A0(n17), .A1(n7), .B0(n1), .B1(n16), .Y(n9) );
  OAI22X1M U4 ( .A0(n17), .A1(n6), .B0(n1), .B1(n7), .Y(n10) );
  OAI22X1M U5 ( .A0(n17), .A1(n5), .B0(n1), .B1(n6), .Y(n11) );
  OAI22X1M U6 ( .A0(n17), .A1(n4), .B0(n1), .B1(n5), .Y(n12) );
  OAI22X1M U7 ( .A0(n17), .A1(n3), .B0(n1), .B1(n4), .Y(n13) );
  OAI22X1M U8 ( .A0(n17), .A1(n2), .B0(n1), .B1(n3), .Y(n14) );
  INVX2M U9 ( .A(n1), .Y(n17) );
  OAI2BB2X1M U10 ( .B0(n17), .B1(n16), .A0N(PAR_DATA[0]), .A1N(n17), .Y(n8) );
  BUFX2M U11 ( .A(SER_DATA_VLD), .Y(n1) );
  OAI2BB2X1M U12 ( .B0(n1), .B1(n2), .A0N(SER_DATA), .A1N(n1), .Y(n15) );
  INVX2M U13 ( .A(PAR_DATA[1]), .Y(n16) );
  INVX2M U14 ( .A(PAR_DATA[7]), .Y(n2) );
  INVX2M U15 ( .A(PAR_DATA[2]), .Y(n7) );
  INVX2M U16 ( .A(PAR_DATA[3]), .Y(n6) );
  INVX2M U17 ( .A(PAR_DATA[4]), .Y(n5) );
  INVX2M U18 ( .A(PAR_DATA[5]), .Y(n4) );
  INVX2M U19 ( .A(PAR_DATA[6]), .Y(n3) );
endmodule


module DATA_SYNC ( CLK, RST, unsync_bus, bus_enable, sync_bus, enable_pulse_d
 );
  input [7:0] unsync_bus;
  output [7:0] sync_bus;
  input CLK, RST, bus_enable;
  output enable_pulse_d;
  wire   enable_flop, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10;
  wire   [1:0] sync_reg;

  DFFRQX2M \sync_bus_reg[7]  ( .D(n9), .CK(CLK), .RN(RST), .Q(sync_bus[7]) );
  DFFRQX2M \sync_bus_reg[6]  ( .D(n8), .CK(CLK), .RN(RST), .Q(sync_bus[6]) );
  DFFRQX2M \sync_bus_reg[5]  ( .D(n7), .CK(CLK), .RN(RST), .Q(sync_bus[5]) );
  DFFRQX2M \sync_bus_reg[4]  ( .D(n6), .CK(CLK), .RN(RST), .Q(sync_bus[4]) );
  DFFRQX2M \sync_bus_reg[3]  ( .D(n5), .CK(CLK), .RN(RST), .Q(sync_bus[3]) );
  DFFRQX2M \sync_bus_reg[2]  ( .D(n4), .CK(CLK), .RN(RST), .Q(sync_bus[2]) );
  DFFRQX2M \sync_bus_reg[1]  ( .D(n3), .CK(CLK), .RN(RST), .Q(sync_bus[1]) );
  DFFRQX2M \sync_bus_reg[0]  ( .D(n2), .CK(CLK), .RN(RST), .Q(sync_bus[0]) );
  DFFRQX2M enable_flop_reg ( .D(sync_reg[1]), .CK(CLK), .RN(RST), .Q(
        enable_flop) );
  DFFRQX2M enable_pulse_d_reg ( .D(n10), .CK(CLK), .RN(RST), .Q(enable_pulse_d) );
  DFFRQX2M \sync_reg_reg[1]  ( .D(sync_reg[0]), .CK(CLK), .RN(RST), .Q(
        sync_reg[1]) );
  DFFRQX2M \sync_reg_reg[0]  ( .D(bus_enable), .CK(CLK), .RN(RST), .Q(
        sync_reg[0]) );
  INVX2M U3 ( .A(n1), .Y(n10) );
  NAND2BX2M U4 ( .AN(enable_flop), .B(sync_reg[1]), .Y(n1) );
  AO22X1M U5 ( .A0(unsync_bus[0]), .A1(n10), .B0(sync_bus[0]), .B1(n1), .Y(n2)
         );
  AO22X1M U6 ( .A0(unsync_bus[1]), .A1(n10), .B0(sync_bus[1]), .B1(n1), .Y(n3)
         );
  AO22X1M U7 ( .A0(unsync_bus[2]), .A1(n10), .B0(sync_bus[2]), .B1(n1), .Y(n4)
         );
  AO22X1M U8 ( .A0(unsync_bus[3]), .A1(n10), .B0(sync_bus[3]), .B1(n1), .Y(n5)
         );
  AO22X1M U9 ( .A0(unsync_bus[4]), .A1(n10), .B0(sync_bus[4]), .B1(n1), .Y(n6)
         );
  AO22X1M U10 ( .A0(unsync_bus[5]), .A1(n10), .B0(sync_bus[5]), .B1(n1), .Y(n7) );
  AO22X1M U11 ( .A0(unsync_bus[6]), .A1(n10), .B0(sync_bus[6]), .B1(n1), .Y(n8) );
  AO22X1M U12 ( .A0(unsync_bus[7]), .A1(n10), .B0(sync_bus[7]), .B1(n1), .Y(n9) );
endmodule


module RegFile ( CLK, RST, WrEn, RdEn, WrData, RdData );
  input [7:0] WrData;
  output [7:0] RdData;
  input CLK, RST, WrEn, RdEn;
  wire   N10, N11, N12, N13, \regArr[15][7] , \regArr[15][6] , \regArr[15][5] ,
         \regArr[15][4] , \regArr[15][3] , \regArr[15][2] , \regArr[15][1] ,
         \regArr[15][0] , \regArr[14][7] , \regArr[14][6] , \regArr[14][5] ,
         \regArr[14][4] , \regArr[14][3] , \regArr[14][2] , \regArr[14][1] ,
         \regArr[14][0] , \regArr[13][7] , \regArr[13][6] , \regArr[13][5] ,
         \regArr[13][4] , \regArr[13][3] , \regArr[13][2] , \regArr[13][1] ,
         \regArr[13][0] , \regArr[12][7] , \regArr[12][6] , \regArr[12][5] ,
         \regArr[12][4] , \regArr[12][3] , \regArr[12][2] , \regArr[12][1] ,
         \regArr[12][0] , \regArr[11][7] , \regArr[11][6] , \regArr[11][5] ,
         \regArr[11][4] , \regArr[11][3] , \regArr[11][2] , \regArr[11][1] ,
         \regArr[11][0] , \regArr[10][7] , \regArr[10][6] , \regArr[10][5] ,
         \regArr[10][4] , \regArr[10][3] , \regArr[10][2] , \regArr[10][1] ,
         \regArr[10][0] , \regArr[9][7] , \regArr[9][6] , \regArr[9][5] ,
         \regArr[9][4] , \regArr[9][3] , \regArr[9][2] , \regArr[9][1] ,
         \regArr[9][0] , \regArr[8][7] , \regArr[8][6] , \regArr[8][5] ,
         \regArr[8][4] , \regArr[8][3] , \regArr[8][2] , \regArr[8][1] ,
         \regArr[8][0] , \regArr[7][7] , \regArr[7][6] , \regArr[7][5] ,
         \regArr[7][4] , \regArr[7][3] , \regArr[7][2] , \regArr[7][1] ,
         \regArr[7][0] , \regArr[6][7] , \regArr[6][6] , \regArr[6][5] ,
         \regArr[6][4] , \regArr[6][3] , \regArr[6][2] , \regArr[6][1] ,
         \regArr[6][0] , \regArr[5][7] , \regArr[5][6] , \regArr[5][5] ,
         \regArr[5][4] , \regArr[5][3] , \regArr[5][2] , \regArr[5][1] ,
         \regArr[5][0] , \regArr[4][7] , \regArr[4][6] , \regArr[4][5] ,
         \regArr[4][4] , \regArr[4][3] , \regArr[4][2] , \regArr[4][1] ,
         \regArr[4][0] , \regArr[3][7] , \regArr[3][6] , \regArr[3][5] ,
         \regArr[3][4] , \regArr[3][3] , \regArr[3][2] , \regArr[3][1] ,
         \regArr[3][0] , \regArr[2][7] , \regArr[2][6] , \regArr[2][5] ,
         \regArr[2][4] , \regArr[2][3] , \regArr[2][2] , \regArr[2][1] ,
         \regArr[2][0] , \regArr[1][7] , \regArr[1][6] , \regArr[1][5] ,
         \regArr[1][4] , \regArr[1][3] , \regArr[1][2] , \regArr[1][1] ,
         \regArr[1][0] , \regArr[0][7] , \regArr[0][6] , \regArr[0][5] ,
         \regArr[0][4] , \regArr[0][3] , \regArr[0][2] , \regArr[0][1] ,
         \regArr[0][0] , N40, N41, N42, N43, N44, N45, N46, N47, n7, n17, n18,
         n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n182, n183, n184, n1, n2, n3, n4, n5, n6, n8, n9,
         n10, n11, n12, n13, n14, n15, n16, n185, n186, n187, n188, n189, n190,
         n191, n192, n193, n194, n195, n196, n197, n198, n199, n200, n201,
         n202, n203, n204, n205, n206, n207, n208, n209, n210, n211, n212,
         n213, n214, n215, n216, n217, n218, n219, n220, n221, n222, n223,
         n224, n225, n226, n227, n228, n229, n230, n231, n232;
  wire   [3:0] WR_ADDR;

  DFFRQX2M \regArr_reg[13][7]  ( .D(n160), .CK(CLK), .RN(n214), .Q(
        \regArr[13][7] ) );
  DFFRQX2M \regArr_reg[13][6]  ( .D(n159), .CK(CLK), .RN(n214), .Q(
        \regArr[13][6] ) );
  DFFRQX2M \regArr_reg[13][5]  ( .D(n158), .CK(CLK), .RN(n214), .Q(
        \regArr[13][5] ) );
  DFFRQX2M \regArr_reg[13][4]  ( .D(n157), .CK(CLK), .RN(n214), .Q(
        \regArr[13][4] ) );
  DFFRQX2M \regArr_reg[13][3]  ( .D(n156), .CK(CLK), .RN(n214), .Q(
        \regArr[13][3] ) );
  DFFRQX2M \regArr_reg[13][2]  ( .D(n155), .CK(CLK), .RN(n213), .Q(
        \regArr[13][2] ) );
  DFFRQX2M \regArr_reg[13][1]  ( .D(n154), .CK(CLK), .RN(n213), .Q(
        \regArr[13][1] ) );
  DFFRQX2M \regArr_reg[13][0]  ( .D(n153), .CK(CLK), .RN(n213), .Q(
        \regArr[13][0] ) );
  DFFRQX2M \regArr_reg[9][7]  ( .D(n128), .CK(CLK), .RN(n212), .Q(
        \regArr[9][7] ) );
  DFFRQX2M \regArr_reg[9][6]  ( .D(n127), .CK(CLK), .RN(n212), .Q(
        \regArr[9][6] ) );
  DFFRQX2M \regArr_reg[9][5]  ( .D(n126), .CK(CLK), .RN(n212), .Q(
        \regArr[9][5] ) );
  DFFRQX2M \regArr_reg[9][4]  ( .D(n125), .CK(CLK), .RN(n212), .Q(
        \regArr[9][4] ) );
  DFFRQX2M \regArr_reg[9][3]  ( .D(n124), .CK(CLK), .RN(n212), .Q(
        \regArr[9][3] ) );
  DFFRQX2M \regArr_reg[9][2]  ( .D(n123), .CK(CLK), .RN(n212), .Q(
        \regArr[9][2] ) );
  DFFRQX2M \regArr_reg[9][1]  ( .D(n122), .CK(CLK), .RN(n212), .Q(
        \regArr[9][1] ) );
  DFFRQX2M \regArr_reg[9][0]  ( .D(n121), .CK(CLK), .RN(n212), .Q(
        \regArr[9][0] ) );
  DFFRQX2M \regArr_reg[5][7]  ( .D(n96), .CK(CLK), .RN(n209), .Q(
        \regArr[5][7] ) );
  DFFRQX2M \regArr_reg[5][6]  ( .D(n95), .CK(CLK), .RN(n209), .Q(
        \regArr[5][6] ) );
  DFFRQX2M \regArr_reg[5][5]  ( .D(n94), .CK(CLK), .RN(n211), .Q(
        \regArr[5][5] ) );
  DFFRQX2M \regArr_reg[5][4]  ( .D(n93), .CK(CLK), .RN(RST), .Q(\regArr[5][4] ) );
  DFFRQX2M \regArr_reg[5][3]  ( .D(n92), .CK(CLK), .RN(RST), .Q(\regArr[5][3] ) );
  DFFRQX2M \regArr_reg[5][2]  ( .D(n91), .CK(CLK), .RN(RST), .Q(\regArr[5][2] ) );
  DFFRQX2M \regArr_reg[5][1]  ( .D(n90), .CK(CLK), .RN(RST), .Q(\regArr[5][1] ) );
  DFFRQX2M \regArr_reg[5][0]  ( .D(n89), .CK(CLK), .RN(RST), .Q(\regArr[5][0] ) );
  DFFRQX2M \regArr_reg[1][7]  ( .D(n64), .CK(CLK), .RN(n212), .Q(
        \regArr[1][7] ) );
  DFFRQX2M \regArr_reg[1][6]  ( .D(n63), .CK(CLK), .RN(n214), .Q(
        \regArr[1][6] ) );
  DFFRQX2M \regArr_reg[1][5]  ( .D(n62), .CK(CLK), .RN(n213), .Q(
        \regArr[1][5] ) );
  DFFRQX2M \regArr_reg[1][4]  ( .D(n61), .CK(CLK), .RN(n212), .Q(
        \regArr[1][4] ) );
  DFFRQX2M \regArr_reg[1][3]  ( .D(n60), .CK(CLK), .RN(n214), .Q(
        \regArr[1][3] ) );
  DFFRQX2M \regArr_reg[1][2]  ( .D(n59), .CK(CLK), .RN(n213), .Q(
        \regArr[1][2] ) );
  DFFRQX2M \regArr_reg[1][1]  ( .D(n58), .CK(CLK), .RN(n212), .Q(
        \regArr[1][1] ) );
  DFFRQX2M \regArr_reg[1][0]  ( .D(n57), .CK(CLK), .RN(n214), .Q(
        \regArr[1][0] ) );
  DFFRQX2M \regArr_reg[15][7]  ( .D(n176), .CK(CLK), .RN(RST), .Q(
        \regArr[15][7] ) );
  DFFRQX2M \regArr_reg[15][6]  ( .D(n175), .CK(CLK), .RN(RST), .Q(
        \regArr[15][6] ) );
  DFFRQX2M \regArr_reg[15][5]  ( .D(n174), .CK(CLK), .RN(RST), .Q(
        \regArr[15][5] ) );
  DFFRQX2M \regArr_reg[15][4]  ( .D(n173), .CK(CLK), .RN(n214), .Q(
        \regArr[15][4] ) );
  DFFRQX2M \regArr_reg[15][3]  ( .D(n172), .CK(CLK), .RN(n214), .Q(
        \regArr[15][3] ) );
  DFFRQX2M \regArr_reg[15][2]  ( .D(n171), .CK(CLK), .RN(n214), .Q(
        \regArr[15][2] ) );
  DFFRQX2M \regArr_reg[15][1]  ( .D(n170), .CK(CLK), .RN(n214), .Q(
        \regArr[15][1] ) );
  DFFRQX2M \regArr_reg[15][0]  ( .D(n169), .CK(CLK), .RN(n214), .Q(
        \regArr[15][0] ) );
  DFFRQX2M \regArr_reg[11][7]  ( .D(n144), .CK(CLK), .RN(n213), .Q(
        \regArr[11][7] ) );
  DFFRQX2M \regArr_reg[11][6]  ( .D(n143), .CK(CLK), .RN(n213), .Q(
        \regArr[11][6] ) );
  DFFRQX2M \regArr_reg[11][5]  ( .D(n142), .CK(CLK), .RN(n213), .Q(
        \regArr[11][5] ) );
  DFFRQX2M \regArr_reg[11][4]  ( .D(n141), .CK(CLK), .RN(n213), .Q(
        \regArr[11][4] ) );
  DFFRQX2M \regArr_reg[11][3]  ( .D(n140), .CK(CLK), .RN(n213), .Q(
        \regArr[11][3] ) );
  DFFRQX2M \regArr_reg[11][2]  ( .D(n139), .CK(CLK), .RN(n213), .Q(
        \regArr[11][2] ) );
  DFFRQX2M \regArr_reg[11][1]  ( .D(n138), .CK(CLK), .RN(n213), .Q(
        \regArr[11][1] ) );
  DFFRQX2M \regArr_reg[11][0]  ( .D(n137), .CK(CLK), .RN(n212), .Q(
        \regArr[11][0] ) );
  DFFRQX2M \regArr_reg[7][7]  ( .D(n112), .CK(CLK), .RN(n209), .Q(
        \regArr[7][7] ) );
  DFFRQX2M \regArr_reg[7][6]  ( .D(n111), .CK(CLK), .RN(n209), .Q(
        \regArr[7][6] ) );
  DFFRQX2M \regArr_reg[7][5]  ( .D(n110), .CK(CLK), .RN(n209), .Q(
        \regArr[7][5] ) );
  DFFRQX2M \regArr_reg[7][4]  ( .D(n109), .CK(CLK), .RN(n209), .Q(
        \regArr[7][4] ) );
  DFFRQX2M \regArr_reg[7][3]  ( .D(n108), .CK(CLK), .RN(n209), .Q(
        \regArr[7][3] ) );
  DFFRQX2M \regArr_reg[7][2]  ( .D(n107), .CK(CLK), .RN(n209), .Q(
        \regArr[7][2] ) );
  DFFRQX2M \regArr_reg[7][1]  ( .D(n106), .CK(CLK), .RN(n209), .Q(
        \regArr[7][1] ) );
  DFFRQX2M \regArr_reg[7][0]  ( .D(n105), .CK(CLK), .RN(n209), .Q(
        \regArr[7][0] ) );
  DFFRQX2M \regArr_reg[3][7]  ( .D(n80), .CK(CLK), .RN(n211), .Q(
        \regArr[3][7] ) );
  DFFRQX2M \regArr_reg[3][6]  ( .D(n79), .CK(CLK), .RN(n211), .Q(
        \regArr[3][6] ) );
  DFFRQX2M \regArr_reg[3][5]  ( .D(n78), .CK(CLK), .RN(n211), .Q(
        \regArr[3][5] ) );
  DFFRQX2M \regArr_reg[3][4]  ( .D(n77), .CK(CLK), .RN(n211), .Q(
        \regArr[3][4] ) );
  DFFRQX2M \regArr_reg[3][3]  ( .D(n76), .CK(CLK), .RN(n211), .Q(
        \regArr[3][3] ) );
  DFFRQX2M \regArr_reg[3][2]  ( .D(n75), .CK(CLK), .RN(n211), .Q(
        \regArr[3][2] ) );
  DFFRQX2M \regArr_reg[3][1]  ( .D(n74), .CK(CLK), .RN(n211), .Q(
        \regArr[3][1] ) );
  DFFRQX2M \regArr_reg[3][0]  ( .D(n73), .CK(CLK), .RN(n211), .Q(
        \regArr[3][0] ) );
  DFFRQX2M \regArr_reg[14][7]  ( .D(n168), .CK(CLK), .RN(n214), .Q(
        \regArr[14][7] ) );
  DFFRQX2M \regArr_reg[14][6]  ( .D(n167), .CK(CLK), .RN(n214), .Q(
        \regArr[14][6] ) );
  DFFRQX2M \regArr_reg[14][5]  ( .D(n166), .CK(CLK), .RN(n214), .Q(
        \regArr[14][5] ) );
  DFFRQX2M \regArr_reg[14][4]  ( .D(n165), .CK(CLK), .RN(n214), .Q(
        \regArr[14][4] ) );
  DFFRQX2M \regArr_reg[14][3]  ( .D(n164), .CK(CLK), .RN(n214), .Q(
        \regArr[14][3] ) );
  DFFRQX2M \regArr_reg[14][2]  ( .D(n163), .CK(CLK), .RN(n214), .Q(
        \regArr[14][2] ) );
  DFFRQX2M \regArr_reg[14][1]  ( .D(n162), .CK(CLK), .RN(n214), .Q(
        \regArr[14][1] ) );
  DFFRQX2M \regArr_reg[14][0]  ( .D(n161), .CK(CLK), .RN(n214), .Q(
        \regArr[14][0] ) );
  DFFRQX2M \regArr_reg[10][7]  ( .D(n136), .CK(CLK), .RN(n212), .Q(
        \regArr[10][7] ) );
  DFFRQX2M \regArr_reg[10][6]  ( .D(n135), .CK(CLK), .RN(n212), .Q(
        \regArr[10][6] ) );
  DFFRQX2M \regArr_reg[10][5]  ( .D(n134), .CK(CLK), .RN(n212), .Q(
        \regArr[10][5] ) );
  DFFRQX2M \regArr_reg[10][4]  ( .D(n133), .CK(CLK), .RN(n212), .Q(
        \regArr[10][4] ) );
  DFFRQX2M \regArr_reg[10][3]  ( .D(n132), .CK(CLK), .RN(n212), .Q(
        \regArr[10][3] ) );
  DFFRQX2M \regArr_reg[10][2]  ( .D(n131), .CK(CLK), .RN(n212), .Q(
        \regArr[10][2] ) );
  DFFRQX2M \regArr_reg[10][1]  ( .D(n130), .CK(CLK), .RN(n212), .Q(
        \regArr[10][1] ) );
  DFFRQX2M \regArr_reg[10][0]  ( .D(n129), .CK(CLK), .RN(n212), .Q(
        \regArr[10][0] ) );
  DFFRQX2M \regArr_reg[6][7]  ( .D(n104), .CK(CLK), .RN(n209), .Q(
        \regArr[6][7] ) );
  DFFRQX2M \regArr_reg[6][6]  ( .D(n103), .CK(CLK), .RN(n209), .Q(
        \regArr[6][6] ) );
  DFFRQX2M \regArr_reg[6][5]  ( .D(n102), .CK(CLK), .RN(n209), .Q(
        \regArr[6][5] ) );
  DFFRQX2M \regArr_reg[6][4]  ( .D(n101), .CK(CLK), .RN(RST), .Q(
        \regArr[6][4] ) );
  DFFRQX2M \regArr_reg[6][3]  ( .D(n100), .CK(CLK), .RN(RST), .Q(
        \regArr[6][3] ) );
  DFFRQX2M \regArr_reg[6][2]  ( .D(n99), .CK(CLK), .RN(RST), .Q(\regArr[6][2] ) );
  DFFRQX2M \regArr_reg[6][1]  ( .D(n98), .CK(CLK), .RN(RST), .Q(\regArr[6][1] ) );
  DFFRQX2M \regArr_reg[6][0]  ( .D(n97), .CK(CLK), .RN(RST), .Q(\regArr[6][0] ) );
  DFFRQX2M \regArr_reg[2][7]  ( .D(n72), .CK(CLK), .RN(n211), .Q(
        \regArr[2][7] ) );
  DFFRQX2M \regArr_reg[2][6]  ( .D(n71), .CK(CLK), .RN(n211), .Q(
        \regArr[2][6] ) );
  DFFRQX2M \regArr_reg[2][5]  ( .D(n70), .CK(CLK), .RN(n211), .Q(
        \regArr[2][5] ) );
  DFFRQX2M \regArr_reg[2][4]  ( .D(n69), .CK(CLK), .RN(n211), .Q(
        \regArr[2][4] ) );
  DFFRQX2M \regArr_reg[2][3]  ( .D(n68), .CK(CLK), .RN(n211), .Q(
        \regArr[2][3] ) );
  DFFRQX2M \regArr_reg[2][2]  ( .D(n67), .CK(CLK), .RN(n211), .Q(
        \regArr[2][2] ) );
  DFFRQX2M \regArr_reg[2][1]  ( .D(n66), .CK(CLK), .RN(n211), .Q(
        \regArr[2][1] ) );
  DFFRQX2M \regArr_reg[2][0]  ( .D(n65), .CK(CLK), .RN(n213), .Q(
        \regArr[2][0] ) );
  DFFRQX2M \regArr_reg[12][7]  ( .D(n152), .CK(CLK), .RN(n213), .Q(
        \regArr[12][7] ) );
  DFFRQX2M \regArr_reg[12][6]  ( .D(n151), .CK(CLK), .RN(n213), .Q(
        \regArr[12][6] ) );
  DFFRQX2M \regArr_reg[12][5]  ( .D(n150), .CK(CLK), .RN(n213), .Q(
        \regArr[12][5] ) );
  DFFRQX2M \regArr_reg[12][4]  ( .D(n149), .CK(CLK), .RN(n213), .Q(
        \regArr[12][4] ) );
  DFFRQX2M \regArr_reg[12][3]  ( .D(n148), .CK(CLK), .RN(n213), .Q(
        \regArr[12][3] ) );
  DFFRQX2M \regArr_reg[12][2]  ( .D(n147), .CK(CLK), .RN(n213), .Q(
        \regArr[12][2] ) );
  DFFRQX2M \regArr_reg[12][1]  ( .D(n146), .CK(CLK), .RN(n213), .Q(
        \regArr[12][1] ) );
  DFFRQX2M \regArr_reg[12][0]  ( .D(n145), .CK(CLK), .RN(n213), .Q(
        \regArr[12][0] ) );
  DFFRQX2M \regArr_reg[8][7]  ( .D(n120), .CK(CLK), .RN(n212), .Q(
        \regArr[8][7] ) );
  DFFRQX2M \regArr_reg[8][6]  ( .D(n119), .CK(CLK), .RN(n209), .Q(
        \regArr[8][6] ) );
  DFFRQX2M \regArr_reg[8][5]  ( .D(n118), .CK(CLK), .RN(n209), .Q(
        \regArr[8][5] ) );
  DFFRQX2M \regArr_reg[8][4]  ( .D(n117), .CK(CLK), .RN(n209), .Q(
        \regArr[8][4] ) );
  DFFRQX2M \regArr_reg[8][3]  ( .D(n116), .CK(CLK), .RN(n209), .Q(
        \regArr[8][3] ) );
  DFFRQX2M \regArr_reg[8][2]  ( .D(n115), .CK(CLK), .RN(n209), .Q(
        \regArr[8][2] ) );
  DFFRQX2M \regArr_reg[8][1]  ( .D(n114), .CK(CLK), .RN(n209), .Q(
        \regArr[8][1] ) );
  DFFRQX2M \regArr_reg[8][0]  ( .D(n113), .CK(CLK), .RN(n209), .Q(
        \regArr[8][0] ) );
  DFFRQX2M \regArr_reg[4][7]  ( .D(n88), .CK(CLK), .RN(n213), .Q(
        \regArr[4][7] ) );
  DFFRQX2M \regArr_reg[4][6]  ( .D(n87), .CK(CLK), .RN(n214), .Q(
        \regArr[4][6] ) );
  DFFRQX2M \regArr_reg[4][5]  ( .D(n86), .CK(CLK), .RN(n214), .Q(
        \regArr[4][5] ) );
  DFFRQX2M \regArr_reg[4][4]  ( .D(n85), .CK(CLK), .RN(n212), .Q(
        \regArr[4][4] ) );
  DFFRQX2M \regArr_reg[4][3]  ( .D(n84), .CK(CLK), .RN(n213), .Q(
        \regArr[4][3] ) );
  DFFRQX2M \regArr_reg[4][2]  ( .D(n83), .CK(CLK), .RN(n211), .Q(
        \regArr[4][2] ) );
  DFFRQX2M \regArr_reg[4][1]  ( .D(n82), .CK(CLK), .RN(n211), .Q(
        \regArr[4][1] ) );
  DFFRQX2M \regArr_reg[4][0]  ( .D(n81), .CK(CLK), .RN(n211), .Q(
        \regArr[4][0] ) );
  DFFRQX2M \regArr_reg[0][7]  ( .D(n56), .CK(CLK), .RN(n214), .Q(
        \regArr[0][7] ) );
  DFFRQX2M \regArr_reg[0][6]  ( .D(n55), .CK(CLK), .RN(n212), .Q(
        \regArr[0][6] ) );
  DFFRQX2M \regArr_reg[0][5]  ( .D(n54), .CK(CLK), .RN(n213), .Q(
        \regArr[0][5] ) );
  DFFRQX2M \regArr_reg[0][4]  ( .D(n53), .CK(CLK), .RN(n214), .Q(
        \regArr[0][4] ) );
  DFFRQX2M \regArr_reg[0][3]  ( .D(n52), .CK(CLK), .RN(n212), .Q(
        \regArr[0][3] ) );
  DFFRQX2M \regArr_reg[0][2]  ( .D(n51), .CK(CLK), .RN(n213), .Q(
        \regArr[0][2] ) );
  DFFRQX2M \regArr_reg[0][1]  ( .D(n50), .CK(CLK), .RN(n214), .Q(
        \regArr[0][1] ) );
  DFFRQX2M \regArr_reg[0][0]  ( .D(n49), .CK(CLK), .RN(n212), .Q(
        \regArr[0][0] ) );
  DFFRQX2M \WR_ADDR_reg[2]  ( .D(n178), .CK(CLK), .RN(RST), .Q(WR_ADDR[2]) );
  DFFRQX2M \WR_ADDR_reg[1]  ( .D(n179), .CK(CLK), .RN(RST), .Q(WR_ADDR[1]) );
  DFFRQX2M \RD_ADDR_reg[1]  ( .D(n183), .CK(CLK), .RN(RST), .Q(N11) );
  DFFRQX2M \RD_ADDR_reg[0]  ( .D(n184), .CK(CLK), .RN(RST), .Q(N10) );
  DFFRQX2M \WR_ADDR_reg[3]  ( .D(n177), .CK(CLK), .RN(RST), .Q(WR_ADDR[3]) );
  DFFRQX2M \RD_ADDR_reg[2]  ( .D(n182), .CK(CLK), .RN(RST), .Q(N12) );
  DFFRX1M \WR_ADDR_reg[0]  ( .D(n180), .CK(CLK), .RN(n211), .QN(n7) );
  DFFRQX2M \RD_ADDR_reg[3]  ( .D(n181), .CK(CLK), .RN(RST), .Q(N13) );
  EDFFHQX8M \RdData_reg[0]  ( .D(N47), .E(n17), .CK(CLK), .Q(RdData[0]) );
  EDFFHQX8M \RdData_reg[7]  ( .D(N40), .E(n17), .CK(CLK), .Q(RdData[7]) );
  EDFFHQX8M \RdData_reg[6]  ( .D(N41), .E(n17), .CK(CLK), .Q(RdData[6]) );
  EDFFHQX8M \RdData_reg[5]  ( .D(N42), .E(n17), .CK(CLK), .Q(RdData[5]) );
  EDFFHQX8M \RdData_reg[1]  ( .D(N46), .E(n17), .CK(CLK), .Q(RdData[1]) );
  EDFFHQX8M \RdData_reg[4]  ( .D(N43), .E(n17), .CK(CLK), .Q(RdData[4]) );
  EDFFHQX8M \RdData_reg[3]  ( .D(N44), .E(n17), .CK(CLK), .Q(RdData[3]) );
  EDFFHQX8M \RdData_reg[2]  ( .D(N45), .E(n17), .CK(CLK), .Q(RdData[2]) );
  NOR2X2M U3 ( .A(n224), .B(n223), .Y(n37) );
  NOR2X2M U4 ( .A(n38), .B(WR_ADDR[1]), .Y(n21) );
  NOR2X2M U5 ( .A(n223), .B(WR_ADDR[3]), .Y(n27) );
  NOR2X2M U6 ( .A(WR_ADDR[2]), .B(WR_ADDR[3]), .Y(n20) );
  INVX2M U7 ( .A(WrData[0]), .Y(n232) );
  INVX2M U8 ( .A(WrData[1]), .Y(n231) );
  INVX2M U9 ( .A(WrData[2]), .Y(n230) );
  INVX2M U10 ( .A(WrData[3]), .Y(n229) );
  INVX2M U11 ( .A(WrData[4]), .Y(n228) );
  INVX2M U12 ( .A(WrData[5]), .Y(n227) );
  INVX2M U13 ( .A(WrData[6]), .Y(n226) );
  INVX2M U14 ( .A(WrData[7]), .Y(n225) );
  INVX2M U15 ( .A(n215), .Y(n214) );
  INVX2M U16 ( .A(n217), .Y(n211) );
  INVX2M U17 ( .A(n216), .Y(n212) );
  INVX2M U18 ( .A(n216), .Y(n213) );
  BUFX2M U19 ( .A(n218), .Y(n215) );
  BUFX2M U20 ( .A(n218), .Y(n216) );
  BUFX2M U21 ( .A(n216), .Y(n217) );
  NAND2X2M U22 ( .A(n222), .B(n219), .Y(n32) );
  NAND2X2M U23 ( .A(n37), .B(n219), .Y(n39) );
  NAND2X2M U24 ( .A(n222), .B(n220), .Y(n34) );
  NAND2X2M U25 ( .A(n37), .B(n220), .Y(n42) );
  NAND2X2M U26 ( .A(n222), .B(n24), .Y(n33) );
  NAND2X2M U27 ( .A(n37), .B(n24), .Y(n41) );
  INVX2M U28 ( .A(n40), .Y(n219) );
  INVX2M U29 ( .A(n203), .Y(n205) );
  INVX2M U30 ( .A(n203), .Y(n204) );
  INVX2M U31 ( .A(n207), .Y(n208) );
  INVX2M U32 ( .A(n209), .Y(n218) );
  NOR2X2M U33 ( .A(n221), .B(n38), .Y(n24) );
  NAND2X2M U34 ( .A(n27), .B(n220), .Y(n30) );
  NAND2X2M U35 ( .A(n219), .B(n20), .Y(n22) );
  NAND2X2M U36 ( .A(n24), .B(n20), .Y(n23) );
  NAND2X2M U37 ( .A(n220), .B(n20), .Y(n25) );
  NAND2X2M U38 ( .A(n27), .B(n219), .Y(n28) );
  NAND2X2M U39 ( .A(n27), .B(n21), .Y(n26) );
  NAND2X2M U40 ( .A(n222), .B(n21), .Y(n31) );
  NAND2X2M U41 ( .A(n37), .B(n21), .Y(n36) );
  NAND2X2M U42 ( .A(n27), .B(n24), .Y(n29) );
  NAND2X2M U43 ( .A(n20), .B(n21), .Y(n19) );
  OAI211X2M U44 ( .A0(n220), .A1(n224), .B0(n35), .C0(n30), .Y(n177) );
  INVX2M U45 ( .A(n43), .Y(n220) );
  OAI21X2M U46 ( .A0(n44), .A1(n221), .B0(n40), .Y(n179) );
  NAND2X2M U47 ( .A(n44), .B(n221), .Y(n40) );
  CLKXOR2X2M U48 ( .A(n223), .B(n43), .Y(n178) );
  NOR2X2M U49 ( .A(n18), .B(n215), .Y(n17) );
  INVX2M U50 ( .A(n35), .Y(n222) );
  BUFX2M U51 ( .A(n202), .Y(n203) );
  INVX2M U52 ( .A(n210), .Y(n209) );
  INVX2M U53 ( .A(RST), .Y(n210) );
  BUFX2M U54 ( .A(n206), .Y(n207) );
  NOR2BX2M U55 ( .AN(n45), .B(n7), .Y(n44) );
  NOR2BX2M U56 ( .AN(WrEn), .B(RdEn), .Y(n45) );
  NOR2BX2M U57 ( .AN(N11), .B(n48), .Y(n47) );
  XNOR2X2M U58 ( .A(N11), .B(n48), .Y(n183) );
  XNOR2X2M U59 ( .A(N13), .B(n46), .Y(n181) );
  NAND2X2M U60 ( .A(N12), .B(n47), .Y(n46) );
  NAND2X2M U61 ( .A(n45), .B(n7), .Y(n38) );
  OAI2BB2X1M U62 ( .B0(n232), .B1(n30), .A0N(\regArr[7][0] ), .A1N(n30), .Y(
        n105) );
  OAI2BB2X1M U63 ( .B0(n231), .B1(n30), .A0N(\regArr[7][1] ), .A1N(n30), .Y(
        n106) );
  OAI2BB2X1M U64 ( .B0(n230), .B1(n30), .A0N(\regArr[7][2] ), .A1N(n30), .Y(
        n107) );
  OAI2BB2X1M U65 ( .B0(n229), .B1(n30), .A0N(\regArr[7][3] ), .A1N(n30), .Y(
        n108) );
  OAI2BB2X1M U66 ( .B0(n228), .B1(n30), .A0N(\regArr[7][4] ), .A1N(n30), .Y(
        n109) );
  OAI2BB2X1M U67 ( .B0(n227), .B1(n30), .A0N(\regArr[7][5] ), .A1N(n30), .Y(
        n110) );
  OAI2BB2X1M U68 ( .B0(n226), .B1(n30), .A0N(\regArr[7][6] ), .A1N(n30), .Y(
        n111) );
  OAI2BB2X1M U69 ( .B0(n225), .B1(n30), .A0N(\regArr[7][7] ), .A1N(n30), .Y(
        n112) );
  OAI2BB2X1M U70 ( .B0(n19), .B1(n232), .A0N(\regArr[0][0] ), .A1N(n19), .Y(
        n49) );
  OAI2BB2X1M U71 ( .B0(n19), .B1(n231), .A0N(\regArr[0][1] ), .A1N(n19), .Y(
        n50) );
  OAI2BB2X1M U72 ( .B0(n19), .B1(n230), .A0N(\regArr[0][2] ), .A1N(n19), .Y(
        n51) );
  OAI2BB2X1M U73 ( .B0(n19), .B1(n229), .A0N(\regArr[0][3] ), .A1N(n19), .Y(
        n52) );
  OAI2BB2X1M U74 ( .B0(n19), .B1(n228), .A0N(\regArr[0][4] ), .A1N(n19), .Y(
        n53) );
  OAI2BB2X1M U75 ( .B0(n19), .B1(n227), .A0N(\regArr[0][5] ), .A1N(n19), .Y(
        n54) );
  OAI2BB2X1M U76 ( .B0(n19), .B1(n226), .A0N(\regArr[0][6] ), .A1N(n19), .Y(
        n55) );
  OAI2BB2X1M U77 ( .B0(n19), .B1(n225), .A0N(\regArr[0][7] ), .A1N(n19), .Y(
        n56) );
  OAI2BB2X1M U78 ( .B0(n232), .B1(n23), .A0N(\regArr[2][0] ), .A1N(n23), .Y(
        n65) );
  OAI2BB2X1M U79 ( .B0(n231), .B1(n23), .A0N(\regArr[2][1] ), .A1N(n23), .Y(
        n66) );
  OAI2BB2X1M U80 ( .B0(n230), .B1(n23), .A0N(\regArr[2][2] ), .A1N(n23), .Y(
        n67) );
  OAI2BB2X1M U81 ( .B0(n229), .B1(n23), .A0N(\regArr[2][3] ), .A1N(n23), .Y(
        n68) );
  OAI2BB2X1M U82 ( .B0(n228), .B1(n23), .A0N(\regArr[2][4] ), .A1N(n23), .Y(
        n69) );
  OAI2BB2X1M U83 ( .B0(n227), .B1(n23), .A0N(\regArr[2][5] ), .A1N(n23), .Y(
        n70) );
  OAI2BB2X1M U84 ( .B0(n226), .B1(n23), .A0N(\regArr[2][6] ), .A1N(n23), .Y(
        n71) );
  OAI2BB2X1M U85 ( .B0(n225), .B1(n23), .A0N(\regArr[2][7] ), .A1N(n23), .Y(
        n72) );
  OAI2BB2X1M U86 ( .B0(n232), .B1(n26), .A0N(\regArr[4][0] ), .A1N(n26), .Y(
        n81) );
  OAI2BB2X1M U87 ( .B0(n231), .B1(n26), .A0N(\regArr[4][1] ), .A1N(n26), .Y(
        n82) );
  OAI2BB2X1M U88 ( .B0(n230), .B1(n26), .A0N(\regArr[4][2] ), .A1N(n26), .Y(
        n83) );
  OAI2BB2X1M U89 ( .B0(n229), .B1(n26), .A0N(\regArr[4][3] ), .A1N(n26), .Y(
        n84) );
  OAI2BB2X1M U90 ( .B0(n228), .B1(n26), .A0N(\regArr[4][4] ), .A1N(n26), .Y(
        n85) );
  OAI2BB2X1M U91 ( .B0(n227), .B1(n26), .A0N(\regArr[4][5] ), .A1N(n26), .Y(
        n86) );
  OAI2BB2X1M U92 ( .B0(n226), .B1(n26), .A0N(\regArr[4][6] ), .A1N(n26), .Y(
        n87) );
  OAI2BB2X1M U93 ( .B0(n225), .B1(n26), .A0N(\regArr[4][7] ), .A1N(n26), .Y(
        n88) );
  OAI2BB2X1M U94 ( .B0(n232), .B1(n28), .A0N(\regArr[5][0] ), .A1N(n28), .Y(
        n89) );
  OAI2BB2X1M U95 ( .B0(n231), .B1(n28), .A0N(\regArr[5][1] ), .A1N(n28), .Y(
        n90) );
  OAI2BB2X1M U96 ( .B0(n230), .B1(n28), .A0N(\regArr[5][2] ), .A1N(n28), .Y(
        n91) );
  OAI2BB2X1M U97 ( .B0(n229), .B1(n28), .A0N(\regArr[5][3] ), .A1N(n28), .Y(
        n92) );
  OAI2BB2X1M U98 ( .B0(n228), .B1(n28), .A0N(\regArr[5][4] ), .A1N(n28), .Y(
        n93) );
  OAI2BB2X1M U99 ( .B0(n227), .B1(n28), .A0N(\regArr[5][5] ), .A1N(n28), .Y(
        n94) );
  OAI2BB2X1M U100 ( .B0(n226), .B1(n28), .A0N(\regArr[5][6] ), .A1N(n28), .Y(
        n95) );
  OAI2BB2X1M U101 ( .B0(n225), .B1(n28), .A0N(\regArr[5][7] ), .A1N(n28), .Y(
        n96) );
  OAI2BB2X1M U102 ( .B0(n232), .B1(n29), .A0N(\regArr[6][0] ), .A1N(n29), .Y(
        n97) );
  OAI2BB2X1M U103 ( .B0(n231), .B1(n29), .A0N(\regArr[6][1] ), .A1N(n29), .Y(
        n98) );
  OAI2BB2X1M U104 ( .B0(n230), .B1(n29), .A0N(\regArr[6][2] ), .A1N(n29), .Y(
        n99) );
  OAI2BB2X1M U105 ( .B0(n229), .B1(n29), .A0N(\regArr[6][3] ), .A1N(n29), .Y(
        n100) );
  OAI2BB2X1M U106 ( .B0(n228), .B1(n29), .A0N(\regArr[6][4] ), .A1N(n29), .Y(
        n101) );
  OAI2BB2X1M U107 ( .B0(n227), .B1(n29), .A0N(\regArr[6][5] ), .A1N(n29), .Y(
        n102) );
  OAI2BB2X1M U108 ( .B0(n226), .B1(n29), .A0N(\regArr[6][6] ), .A1N(n29), .Y(
        n103) );
  OAI2BB2X1M U109 ( .B0(n225), .B1(n29), .A0N(\regArr[6][7] ), .A1N(n29), .Y(
        n104) );
  OAI2BB2X1M U110 ( .B0(n232), .B1(n36), .A0N(\regArr[12][0] ), .A1N(n36), .Y(
        n145) );
  OAI2BB2X1M U111 ( .B0(n231), .B1(n36), .A0N(\regArr[12][1] ), .A1N(n36), .Y(
        n146) );
  OAI2BB2X1M U112 ( .B0(n230), .B1(n36), .A0N(\regArr[12][2] ), .A1N(n36), .Y(
        n147) );
  OAI2BB2X1M U113 ( .B0(n229), .B1(n36), .A0N(\regArr[12][3] ), .A1N(n36), .Y(
        n148) );
  OAI2BB2X1M U114 ( .B0(n228), .B1(n36), .A0N(\regArr[12][4] ), .A1N(n36), .Y(
        n149) );
  OAI2BB2X1M U115 ( .B0(n227), .B1(n36), .A0N(\regArr[12][5] ), .A1N(n36), .Y(
        n150) );
  OAI2BB2X1M U116 ( .B0(n226), .B1(n36), .A0N(\regArr[12][6] ), .A1N(n36), .Y(
        n151) );
  OAI2BB2X1M U117 ( .B0(n225), .B1(n36), .A0N(\regArr[12][7] ), .A1N(n36), .Y(
        n152) );
  OAI2BB2X1M U118 ( .B0(n232), .B1(n39), .A0N(\regArr[13][0] ), .A1N(n39), .Y(
        n153) );
  OAI2BB2X1M U119 ( .B0(n231), .B1(n39), .A0N(\regArr[13][1] ), .A1N(n39), .Y(
        n154) );
  OAI2BB2X1M U120 ( .B0(n230), .B1(n39), .A0N(\regArr[13][2] ), .A1N(n39), .Y(
        n155) );
  OAI2BB2X1M U121 ( .B0(n229), .B1(n39), .A0N(\regArr[13][3] ), .A1N(n39), .Y(
        n156) );
  OAI2BB2X1M U122 ( .B0(n228), .B1(n39), .A0N(\regArr[13][4] ), .A1N(n39), .Y(
        n157) );
  OAI2BB2X1M U123 ( .B0(n227), .B1(n39), .A0N(\regArr[13][5] ), .A1N(n39), .Y(
        n158) );
  OAI2BB2X1M U124 ( .B0(n226), .B1(n39), .A0N(\regArr[13][6] ), .A1N(n39), .Y(
        n159) );
  OAI2BB2X1M U125 ( .B0(n225), .B1(n39), .A0N(\regArr[13][7] ), .A1N(n39), .Y(
        n160) );
  OAI2BB2X1M U126 ( .B0(n232), .B1(n41), .A0N(\regArr[14][0] ), .A1N(n41), .Y(
        n161) );
  OAI2BB2X1M U127 ( .B0(n231), .B1(n41), .A0N(\regArr[14][1] ), .A1N(n41), .Y(
        n162) );
  OAI2BB2X1M U128 ( .B0(n230), .B1(n41), .A0N(\regArr[14][2] ), .A1N(n41), .Y(
        n163) );
  OAI2BB2X1M U129 ( .B0(n229), .B1(n41), .A0N(\regArr[14][3] ), .A1N(n41), .Y(
        n164) );
  OAI2BB2X1M U130 ( .B0(n228), .B1(n41), .A0N(\regArr[14][4] ), .A1N(n41), .Y(
        n165) );
  OAI2BB2X1M U131 ( .B0(n227), .B1(n41), .A0N(\regArr[14][5] ), .A1N(n41), .Y(
        n166) );
  OAI2BB2X1M U132 ( .B0(n226), .B1(n41), .A0N(\regArr[14][6] ), .A1N(n41), .Y(
        n167) );
  OAI2BB2X1M U133 ( .B0(n225), .B1(n41), .A0N(\regArr[14][7] ), .A1N(n41), .Y(
        n168) );
  OAI2BB2X1M U134 ( .B0(n232), .B1(n42), .A0N(\regArr[15][0] ), .A1N(n42), .Y(
        n169) );
  OAI2BB2X1M U135 ( .B0(n231), .B1(n42), .A0N(\regArr[15][1] ), .A1N(n42), .Y(
        n170) );
  OAI2BB2X1M U136 ( .B0(n230), .B1(n42), .A0N(\regArr[15][2] ), .A1N(n42), .Y(
        n171) );
  OAI2BB2X1M U137 ( .B0(n229), .B1(n42), .A0N(\regArr[15][3] ), .A1N(n42), .Y(
        n172) );
  OAI2BB2X1M U138 ( .B0(n228), .B1(n42), .A0N(\regArr[15][4] ), .A1N(n42), .Y(
        n173) );
  OAI2BB2X1M U139 ( .B0(n227), .B1(n42), .A0N(\regArr[15][5] ), .A1N(n42), .Y(
        n174) );
  OAI2BB2X1M U140 ( .B0(n226), .B1(n42), .A0N(\regArr[15][6] ), .A1N(n42), .Y(
        n175) );
  OAI2BB2X1M U141 ( .B0(n225), .B1(n42), .A0N(\regArr[15][7] ), .A1N(n42), .Y(
        n176) );
  OAI2BB2X1M U142 ( .B0(n232), .B1(n31), .A0N(\regArr[8][0] ), .A1N(n31), .Y(
        n113) );
  OAI2BB2X1M U143 ( .B0(n231), .B1(n31), .A0N(\regArr[8][1] ), .A1N(n31), .Y(
        n114) );
  OAI2BB2X1M U144 ( .B0(n230), .B1(n31), .A0N(\regArr[8][2] ), .A1N(n31), .Y(
        n115) );
  OAI2BB2X1M U145 ( .B0(n229), .B1(n31), .A0N(\regArr[8][3] ), .A1N(n31), .Y(
        n116) );
  OAI2BB2X1M U146 ( .B0(n228), .B1(n31), .A0N(\regArr[8][4] ), .A1N(n31), .Y(
        n117) );
  OAI2BB2X1M U147 ( .B0(n227), .B1(n31), .A0N(\regArr[8][5] ), .A1N(n31), .Y(
        n118) );
  OAI2BB2X1M U148 ( .B0(n226), .B1(n31), .A0N(\regArr[8][6] ), .A1N(n31), .Y(
        n119) );
  OAI2BB2X1M U149 ( .B0(n225), .B1(n31), .A0N(\regArr[8][7] ), .A1N(n31), .Y(
        n120) );
  OAI2BB2X1M U150 ( .B0(n232), .B1(n22), .A0N(\regArr[1][0] ), .A1N(n22), .Y(
        n57) );
  OAI2BB2X1M U151 ( .B0(n231), .B1(n22), .A0N(\regArr[1][1] ), .A1N(n22), .Y(
        n58) );
  OAI2BB2X1M U152 ( .B0(n230), .B1(n22), .A0N(\regArr[1][2] ), .A1N(n22), .Y(
        n59) );
  OAI2BB2X1M U153 ( .B0(n229), .B1(n22), .A0N(\regArr[1][3] ), .A1N(n22), .Y(
        n60) );
  OAI2BB2X1M U154 ( .B0(n228), .B1(n22), .A0N(\regArr[1][4] ), .A1N(n22), .Y(
        n61) );
  OAI2BB2X1M U155 ( .B0(n227), .B1(n22), .A0N(\regArr[1][5] ), .A1N(n22), .Y(
        n62) );
  OAI2BB2X1M U156 ( .B0(n226), .B1(n22), .A0N(\regArr[1][6] ), .A1N(n22), .Y(
        n63) );
  OAI2BB2X1M U157 ( .B0(n225), .B1(n22), .A0N(\regArr[1][7] ), .A1N(n22), .Y(
        n64) );
  OAI2BB2X1M U158 ( .B0(n232), .B1(n25), .A0N(\regArr[3][0] ), .A1N(n25), .Y(
        n73) );
  OAI2BB2X1M U159 ( .B0(n231), .B1(n25), .A0N(\regArr[3][1] ), .A1N(n25), .Y(
        n74) );
  OAI2BB2X1M U160 ( .B0(n230), .B1(n25), .A0N(\regArr[3][2] ), .A1N(n25), .Y(
        n75) );
  OAI2BB2X1M U161 ( .B0(n229), .B1(n25), .A0N(\regArr[3][3] ), .A1N(n25), .Y(
        n76) );
  OAI2BB2X1M U162 ( .B0(n228), .B1(n25), .A0N(\regArr[3][4] ), .A1N(n25), .Y(
        n77) );
  OAI2BB2X1M U163 ( .B0(n227), .B1(n25), .A0N(\regArr[3][5] ), .A1N(n25), .Y(
        n78) );
  OAI2BB2X1M U164 ( .B0(n226), .B1(n25), .A0N(\regArr[3][6] ), .A1N(n25), .Y(
        n79) );
  OAI2BB2X1M U165 ( .B0(n225), .B1(n25), .A0N(\regArr[3][7] ), .A1N(n25), .Y(
        n80) );
  OAI2BB2X1M U166 ( .B0(n232), .B1(n33), .A0N(\regArr[10][0] ), .A1N(n33), .Y(
        n129) );
  OAI2BB2X1M U167 ( .B0(n231), .B1(n33), .A0N(\regArr[10][1] ), .A1N(n33), .Y(
        n130) );
  OAI2BB2X1M U168 ( .B0(n230), .B1(n33), .A0N(\regArr[10][2] ), .A1N(n33), .Y(
        n131) );
  OAI2BB2X1M U169 ( .B0(n229), .B1(n33), .A0N(\regArr[10][3] ), .A1N(n33), .Y(
        n132) );
  OAI2BB2X1M U170 ( .B0(n228), .B1(n33), .A0N(\regArr[10][4] ), .A1N(n33), .Y(
        n133) );
  OAI2BB2X1M U171 ( .B0(n227), .B1(n33), .A0N(\regArr[10][5] ), .A1N(n33), .Y(
        n134) );
  OAI2BB2X1M U172 ( .B0(n226), .B1(n33), .A0N(\regArr[10][6] ), .A1N(n33), .Y(
        n135) );
  OAI2BB2X1M U173 ( .B0(n225), .B1(n33), .A0N(\regArr[10][7] ), .A1N(n33), .Y(
        n136) );
  OAI2BB2X1M U174 ( .B0(n232), .B1(n34), .A0N(\regArr[11][0] ), .A1N(n34), .Y(
        n137) );
  OAI2BB2X1M U175 ( .B0(n231), .B1(n34), .A0N(\regArr[11][1] ), .A1N(n34), .Y(
        n138) );
  OAI2BB2X1M U176 ( .B0(n230), .B1(n34), .A0N(\regArr[11][2] ), .A1N(n34), .Y(
        n139) );
  OAI2BB2X1M U177 ( .B0(n229), .B1(n34), .A0N(\regArr[11][3] ), .A1N(n34), .Y(
        n140) );
  OAI2BB2X1M U178 ( .B0(n228), .B1(n34), .A0N(\regArr[11][4] ), .A1N(n34), .Y(
        n141) );
  OAI2BB2X1M U179 ( .B0(n227), .B1(n34), .A0N(\regArr[11][5] ), .A1N(n34), .Y(
        n142) );
  OAI2BB2X1M U180 ( .B0(n226), .B1(n34), .A0N(\regArr[11][6] ), .A1N(n34), .Y(
        n143) );
  OAI2BB2X1M U181 ( .B0(n225), .B1(n34), .A0N(\regArr[11][7] ), .A1N(n34), .Y(
        n144) );
  OAI2BB2X1M U182 ( .B0(n232), .B1(n32), .A0N(\regArr[9][0] ), .A1N(n32), .Y(
        n121) );
  OAI2BB2X1M U183 ( .B0(n231), .B1(n32), .A0N(\regArr[9][1] ), .A1N(n32), .Y(
        n122) );
  OAI2BB2X1M U184 ( .B0(n230), .B1(n32), .A0N(\regArr[9][2] ), .A1N(n32), .Y(
        n123) );
  OAI2BB2X1M U185 ( .B0(n229), .B1(n32), .A0N(\regArr[9][3] ), .A1N(n32), .Y(
        n124) );
  OAI2BB2X1M U186 ( .B0(n228), .B1(n32), .A0N(\regArr[9][4] ), .A1N(n32), .Y(
        n125) );
  OAI2BB2X1M U187 ( .B0(n227), .B1(n32), .A0N(\regArr[9][5] ), .A1N(n32), .Y(
        n126) );
  OAI2BB2X1M U188 ( .B0(n226), .B1(n32), .A0N(\regArr[9][6] ), .A1N(n32), .Y(
        n127) );
  OAI2BB2X1M U189 ( .B0(n225), .B1(n32), .A0N(\regArr[9][7] ), .A1N(n32), .Y(
        n128) );
  NAND2BX2M U190 ( .AN(WrEn), .B(RdEn), .Y(n18) );
  NAND2X2M U191 ( .A(WR_ADDR[1]), .B(n44), .Y(n43) );
  NAND2BX2M U192 ( .AN(n18), .B(N10), .Y(n48) );
  CLKXOR2X2M U193 ( .A(N12), .B(n47), .Y(n182) );
  XNOR2X2M U194 ( .A(N10), .B(n18), .Y(n184) );
  OAI21X2M U195 ( .A0(n45), .A1(n7), .B0(n38), .Y(n180) );
  NAND2X2M U196 ( .A(WR_ADDR[3]), .B(n223), .Y(n35) );
  INVX2M U197 ( .A(WR_ADDR[2]), .Y(n223) );
  MX4X1M U198 ( .A(\regArr[4][1] ), .B(\regArr[5][1] ), .C(\regArr[6][1] ), 
        .D(\regArr[7][1] ), .S0(n205), .S1(N11), .Y(n8) );
  MX4X1M U199 ( .A(\regArr[12][0] ), .B(\regArr[13][0] ), .C(\regArr[14][0] ), 
        .D(\regArr[15][0] ), .S0(n204), .S1(n208), .Y(n1) );
  MX4X1M U200 ( .A(\regArr[12][2] ), .B(\regArr[13][2] ), .C(\regArr[14][2] ), 
        .D(\regArr[15][2] ), .S0(n205), .S1(n208), .Y(n10) );
  MX4X1M U201 ( .A(\regArr[12][3] ), .B(\regArr[13][3] ), .C(\regArr[14][3] ), 
        .D(\regArr[15][3] ), .S0(n205), .S1(n208), .Y(n14) );
  MX4X1M U202 ( .A(\regArr[12][4] ), .B(\regArr[13][4] ), .C(\regArr[14][4] ), 
        .D(\regArr[15][4] ), .S0(n205), .S1(n208), .Y(n186) );
  MX4X1M U203 ( .A(\regArr[12][5] ), .B(\regArr[13][5] ), .C(\regArr[14][5] ), 
        .D(\regArr[15][5] ), .S0(n204), .S1(N11), .Y(n190) );
  MX4X1M U204 ( .A(\regArr[12][6] ), .B(\regArr[13][6] ), .C(\regArr[14][6] ), 
        .D(\regArr[15][6] ), .S0(n204), .S1(N11), .Y(n194) );
  MX4X1M U205 ( .A(\regArr[12][7] ), .B(\regArr[13][7] ), .C(\regArr[14][7] ), 
        .D(\regArr[15][7] ), .S0(n204), .S1(N11), .Y(n198) );
  INVX2M U206 ( .A(WR_ADDR[1]), .Y(n221) );
  MX4X1M U207 ( .A(n4), .B(n2), .C(n3), .D(n1), .S0(N13), .S1(N12), .Y(N47) );
  MX4X1M U208 ( .A(\regArr[0][0] ), .B(\regArr[1][0] ), .C(\regArr[2][0] ), 
        .D(\regArr[3][0] ), .S0(n204), .S1(N11), .Y(n4) );
  MX4X1M U209 ( .A(\regArr[8][0] ), .B(\regArr[9][0] ), .C(\regArr[10][0] ), 
        .D(\regArr[11][0] ), .S0(n204), .S1(N11), .Y(n2) );
  MX4X1M U210 ( .A(\regArr[4][0] ), .B(\regArr[5][0] ), .C(\regArr[6][0] ), 
        .D(\regArr[7][0] ), .S0(n204), .S1(N11), .Y(n3) );
  MX4X1M U211 ( .A(n9), .B(n6), .C(n8), .D(n5), .S0(N13), .S1(N12), .Y(N46) );
  MX4X1M U212 ( .A(\regArr[8][1] ), .B(\regArr[9][1] ), .C(\regArr[10][1] ), 
        .D(\regArr[11][1] ), .S0(n204), .S1(N11), .Y(n6) );
  MX4X1M U213 ( .A(\regArr[12][1] ), .B(\regArr[13][1] ), .C(\regArr[14][1] ), 
        .D(\regArr[15][1] ), .S0(n204), .S1(n208), .Y(n5) );
  MX4X1M U214 ( .A(\regArr[0][1] ), .B(\regArr[1][1] ), .C(\regArr[2][1] ), 
        .D(\regArr[3][1] ), .S0(n205), .S1(N11), .Y(n9) );
  MX4X1M U215 ( .A(n13), .B(n11), .C(n12), .D(n10), .S0(N13), .S1(N12), .Y(N45) );
  MX4X1M U216 ( .A(\regArr[0][2] ), .B(\regArr[1][2] ), .C(\regArr[2][2] ), 
        .D(\regArr[3][2] ), .S0(n205), .S1(n208), .Y(n13) );
  MX4X1M U217 ( .A(\regArr[8][2] ), .B(\regArr[9][2] ), .C(\regArr[10][2] ), 
        .D(\regArr[11][2] ), .S0(n205), .S1(n208), .Y(n11) );
  MX4X1M U218 ( .A(\regArr[4][2] ), .B(\regArr[5][2] ), .C(\regArr[6][2] ), 
        .D(\regArr[7][2] ), .S0(n205), .S1(n208), .Y(n12) );
  MX4X1M U219 ( .A(n185), .B(n15), .C(n16), .D(n14), .S0(N13), .S1(N12), .Y(
        N44) );
  MX4X1M U220 ( .A(\regArr[0][3] ), .B(\regArr[1][3] ), .C(\regArr[2][3] ), 
        .D(\regArr[3][3] ), .S0(n205), .S1(n208), .Y(n185) );
  MX4X1M U221 ( .A(\regArr[8][3] ), .B(\regArr[9][3] ), .C(\regArr[10][3] ), 
        .D(\regArr[11][3] ), .S0(n205), .S1(n208), .Y(n15) );
  MX4X1M U222 ( .A(\regArr[4][3] ), .B(\regArr[5][3] ), .C(\regArr[6][3] ), 
        .D(\regArr[7][3] ), .S0(n205), .S1(n208), .Y(n16) );
  MX4X1M U223 ( .A(n189), .B(n187), .C(n188), .D(n186), .S0(N13), .S1(N12), 
        .Y(N43) );
  MX4X1M U224 ( .A(\regArr[0][4] ), .B(\regArr[1][4] ), .C(\regArr[2][4] ), 
        .D(\regArr[3][4] ), .S0(N10), .S1(n208), .Y(n189) );
  MX4X1M U225 ( .A(\regArr[8][4] ), .B(\regArr[9][4] ), .C(\regArr[10][4] ), 
        .D(\regArr[11][4] ), .S0(n205), .S1(n208), .Y(n187) );
  MX4X1M U226 ( .A(\regArr[4][4] ), .B(\regArr[5][4] ), .C(\regArr[6][4] ), 
        .D(\regArr[7][4] ), .S0(n205), .S1(n208), .Y(n188) );
  MX4X1M U227 ( .A(n193), .B(n191), .C(n192), .D(n190), .S0(N13), .S1(N12), 
        .Y(N42) );
  MX4X1M U228 ( .A(\regArr[0][5] ), .B(\regArr[1][5] ), .C(\regArr[2][5] ), 
        .D(\regArr[3][5] ), .S0(N10), .S1(N11), .Y(n193) );
  MX4X1M U229 ( .A(\regArr[8][5] ), .B(\regArr[9][5] ), .C(\regArr[10][5] ), 
        .D(\regArr[11][5] ), .S0(n204), .S1(N11), .Y(n191) );
  MX4X1M U230 ( .A(\regArr[4][5] ), .B(\regArr[5][5] ), .C(\regArr[6][5] ), 
        .D(\regArr[7][5] ), .S0(n204), .S1(N11), .Y(n192) );
  MX4X1M U231 ( .A(n197), .B(n195), .C(n196), .D(n194), .S0(N13), .S1(N12), 
        .Y(N41) );
  MX4X1M U232 ( .A(\regArr[0][6] ), .B(\regArr[1][6] ), .C(\regArr[2][6] ), 
        .D(\regArr[3][6] ), .S0(N10), .S1(N11), .Y(n197) );
  MX4X1M U233 ( .A(\regArr[8][6] ), .B(\regArr[9][6] ), .C(\regArr[10][6] ), 
        .D(\regArr[11][6] ), .S0(n205), .S1(N11), .Y(n195) );
  MX4X1M U234 ( .A(\regArr[4][6] ), .B(\regArr[5][6] ), .C(\regArr[6][6] ), 
        .D(\regArr[7][6] ), .S0(n204), .S1(N11), .Y(n196) );
  MX4X1M U235 ( .A(n201), .B(n199), .C(n200), .D(n198), .S0(N13), .S1(N12), 
        .Y(N40) );
  MX4X1M U236 ( .A(\regArr[0][7] ), .B(\regArr[1][7] ), .C(\regArr[2][7] ), 
        .D(\regArr[3][7] ), .S0(N10), .S1(N11), .Y(n201) );
  MX4X1M U237 ( .A(\regArr[8][7] ), .B(\regArr[9][7] ), .C(\regArr[10][7] ), 
        .D(\regArr[11][7] ), .S0(n204), .S1(N11), .Y(n199) );
  MX4X1M U238 ( .A(\regArr[4][7] ), .B(\regArr[5][7] ), .C(\regArr[6][7] ), 
        .D(\regArr[7][7] ), .S0(n204), .S1(N11), .Y(n200) );
  INVX2M U239 ( .A(WR_ADDR[3]), .Y(n224) );
  INVX2M U240 ( .A(N10), .Y(n202) );
  INVX2M U241 ( .A(N11), .Y(n206) );
endmodule


module System_Top ( CLKA, CLKB, RST, DATA, ACTIVE, RdEn, RdData );
  output [7:0] RdData;
  input CLKA, CLKB, RST, DATA, ACTIVE, RdEn;
  wire   RST_A, RST_B, CRC_S_OUT, CRC_S_VLD, PAR_DATA_VLD, PAR_VLD_SYNC, n1,
         n2;
  wire   [7:0] PAR_DATA;
  wire   [7:0] PAR_DATA_SYNC;

  RST_SYNC_0 U0_RST_SYNC ( .RST(RST), .CLK(CLKA), .SYNC_RST(RST_A) );
  RST_SYNC_1 U1_RST_SYNC ( .RST(RST), .CLK(CLKB), .SYNC_RST(RST_B) );
  CRC U0_CRC ( .CLK(CLKA), .RST(RST_A), .DATA(DATA), .ACTIVE(ACTIVE), .CRC(
        CRC_S_OUT), .Valid(CRC_S_VLD) );
  SER_2_PAR U0_SER_2_PAR ( .CLK(CLKA), .RST(RST_A), .SER_DATA(CRC_S_OUT), 
        .SER_DATA_VLD(CRC_S_VLD), .PAR_DATA(PAR_DATA), .PAR_DATA_VLD(
        PAR_DATA_VLD) );
  DATA_SYNC U0_DATA_SYNC ( .CLK(CLKB), .RST(n1), .unsync_bus(PAR_DATA), 
        .bus_enable(PAR_DATA_VLD), .sync_bus(PAR_DATA_SYNC), .enable_pulse_d(
        PAR_VLD_SYNC) );
  RegFile U0_RegFile ( .CLK(CLKB), .RST(n1), .WrEn(PAR_VLD_SYNC), .RdEn(RdEn), 
        .WrData(PAR_DATA_SYNC), .RdData(RdData) );
  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(RST_B), .Y(n2) );
endmodule

