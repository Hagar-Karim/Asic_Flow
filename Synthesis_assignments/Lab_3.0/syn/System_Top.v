/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Mon Feb  9 21:32:34 2026
/////////////////////////////////////////////////////////////


module RegFile ( CLK, RST, WrEn, RdEn, Address, WrData, RdData, REG0, REG1, 
        REG2 );
  input [3:0] Address;
  input [7:0] WrData;
  output [7:0] RdData;
  output [7:0] REG0;
  output [7:0] REG1;
  output [7:0] REG2;
  input CLK, RST, WrEn, RdEn;
  wire   n384, n381, n376, n377, n364, n365, n366, n367, n368, n369, n370,
         n371, n372, n373, n374, n375, \regArr[15][7] , \regArr[15][6] ,
         \regArr[15][5] , \regArr[15][4] , \regArr[15][3] , \regArr[15][2] ,
         \regArr[15][1] , \regArr[15][0] , \regArr[14][7] , \regArr[14][6] ,
         \regArr[14][5] , \regArr[14][4] , \regArr[14][3] , \regArr[14][2] ,
         \regArr[14][1] , \regArr[14][0] , \regArr[13][7] , \regArr[13][6] ,
         \regArr[13][5] , \regArr[13][4] , \regArr[13][3] , \regArr[13][2] ,
         \regArr[13][1] , \regArr[13][0] , \regArr[12][7] , \regArr[12][6] ,
         \regArr[12][5] , \regArr[12][4] , \regArr[12][3] , \regArr[12][2] ,
         \regArr[12][1] , \regArr[12][0] , \regArr[11][7] , \regArr[11][6] ,
         \regArr[11][5] , \regArr[11][4] , \regArr[11][3] , \regArr[11][2] ,
         \regArr[11][1] , \regArr[11][0] , \regArr[10][7] , \regArr[10][6] ,
         \regArr[10][5] , \regArr[10][4] , \regArr[10][3] , \regArr[10][2] ,
         \regArr[10][1] , \regArr[10][0] , \regArr[9][7] , \regArr[9][6] ,
         \regArr[9][5] , \regArr[9][4] , \regArr[9][3] , \regArr[9][2] ,
         \regArr[9][1] , \regArr[9][0] , \regArr[8][7] , \regArr[8][6] ,
         \regArr[8][5] , \regArr[8][4] , \regArr[8][3] , \regArr[8][2] ,
         \regArr[8][1] , \regArr[8][0] , \regArr[7][7] , \regArr[7][6] ,
         \regArr[7][5] , \regArr[7][4] , \regArr[7][3] , \regArr[7][2] ,
         \regArr[7][1] , \regArr[7][0] , \regArr[6][7] , \regArr[6][6] ,
         \regArr[6][5] , \regArr[6][4] , \regArr[6][3] , \regArr[6][2] ,
         \regArr[6][1] , \regArr[6][0] , \regArr[5][7] , \regArr[5][6] ,
         \regArr[5][5] , \regArr[5][4] , \regArr[5][3] , \regArr[5][2] ,
         \regArr[5][1] , \regArr[5][0] , \regArr[4][7] , \regArr[4][6] ,
         \regArr[4][5] , \regArr[4][4] , \regArr[4][3] , \regArr[4][2] ,
         \regArr[4][1] , \regArr[4][0] , \regArr[3][7] , \regArr[3][6] ,
         \regArr[3][5] , \regArr[3][4] , \regArr[3][3] , \regArr[3][2] ,
         \regArr[3][1] , \regArr[3][0] , N36, N37, N38, N39, N40, N41, N42,
         N43, n1, n12, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n2, n3, n4, n5, n6, n7, n8,
         n9, n10, n11, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23,
         n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n205, n206, n207, n208, n209, n210, n211, n212,
         n213, n214, n215, n216, n217, n218, n219, n220, n221, n223, n224,
         n226, n227, n228, n229, n230, n231, n232, n233, n234, n235, n236,
         n237, n238, n239, n240, n241, n242, n244, n245, n246, n247, n248,
         n249, n250, n251, n252, n253, n254, n255, n256, n257, n258, n259,
         n260, n261, n262, n263, n264, n265, n266, n267, n268, n269, n270,
         n271, n272, n273, n274, n275, n276, n277, n278, n279, n280, n281,
         n282, n283, n284, n285, n286, n287, n288, n289, n290, n291, n292,
         n293, n294, n295, n296, n297, n298, n299, n300, n301, n302, n303,
         n304, n305, n306, n307, n308, n309, n310, n311, n312, n313, n314,
         n315, n203, n204, n225, n316, n318, n320, n322, n324, n326, n328,
         n330, n332, n334, n336, n338, n339, n340, n341, n342, n343, n344,
         n345, n346, n347, n348, n349, n350, n351, n352, n353, n354, n355,
         n356, n357, n358, n359, n360, n361, n362, n363, n378;
  assign REG1[2] = n384;
  assign REG0[2] = n381;
  assign REG1[1] = n377;

  INVX2M U123 ( .A(n12), .Y(n1) );
  NAND3BX2M U124 ( .AN(WrEn), .B(RdEn), .C(RST), .Y(n12) );
  DFFRQX1M \regArr_reg[14][4]  ( .D(n156), .CK(CLK), .RN(RST), .Q(
        \regArr[14][4] ) );
  DFFRQX1M \regArr_reg[14][0]  ( .D(n152), .CK(CLK), .RN(RST), .Q(
        \regArr[14][0] ) );
  DFFRQX1M \regArr_reg[14][7]  ( .D(n159), .CK(CLK), .RN(RST), .Q(
        \regArr[14][7] ) );
  DFFRQX1M \regArr_reg[14][6]  ( .D(n158), .CK(CLK), .RN(RST), .Q(
        \regArr[14][6] ) );
  DFFRQX1M \regArr_reg[14][5]  ( .D(n157), .CK(CLK), .RN(RST), .Q(
        \regArr[14][5] ) );
  DFFRQX1M \regArr_reg[14][3]  ( .D(n155), .CK(CLK), .RN(RST), .Q(
        \regArr[14][3] ) );
  DFFRQX1M \regArr_reg[14][2]  ( .D(n154), .CK(CLK), .RN(RST), .Q(
        \regArr[14][2] ) );
  DFFRQX1M \regArr_reg[14][1]  ( .D(n153), .CK(CLK), .RN(RST), .Q(
        \regArr[14][1] ) );
  DFFRQX1M \regArr_reg[15][0]  ( .D(n160), .CK(CLK), .RN(RST), .Q(
        \regArr[15][0] ) );
  DFFRQX1M \regArr_reg[15][2]  ( .D(n162), .CK(CLK), .RN(RST), .Q(
        \regArr[15][2] ) );
  DFFRQX1M \regArr_reg[15][1]  ( .D(n161), .CK(CLK), .RN(RST), .Q(
        \regArr[15][1] ) );
  DFFRQX1M \regArr_reg[13][0]  ( .D(n144), .CK(CLK), .RN(RST), .Q(
        \regArr[13][0] ) );
  DFFRQX1M \regArr_reg[13][3]  ( .D(n147), .CK(CLK), .RN(RST), .Q(
        \regArr[13][3] ) );
  DFFRQX1M \regArr_reg[13][2]  ( .D(n146), .CK(CLK), .RN(RST), .Q(
        \regArr[13][2] ) );
  DFFRQX1M \regArr_reg[13][1]  ( .D(n145), .CK(CLK), .RN(RST), .Q(
        \regArr[13][1] ) );
  DFFRQX1M \regArr_reg[13][4]  ( .D(n148), .CK(CLK), .RN(RST), .Q(
        \regArr[13][4] ) );
  DFFRQX1M \regArr_reg[12][7]  ( .D(n143), .CK(CLK), .RN(RST), .Q(
        \regArr[12][7] ) );
  DFFRQX1M \regArr_reg[12][6]  ( .D(n142), .CK(CLK), .RN(RST), .Q(
        \regArr[12][6] ) );
  DFFRQX1M \regArr_reg[12][5]  ( .D(n141), .CK(CLK), .RN(RST), .Q(
        \regArr[12][5] ) );
  DFFRQX1M \regArr_reg[12][4]  ( .D(n140), .CK(CLK), .RN(RST), .Q(
        \regArr[12][4] ) );
  DFFRQX1M \regArr_reg[12][3]  ( .D(n139), .CK(CLK), .RN(RST), .Q(
        \regArr[12][3] ) );
  DFFRQX1M \regArr_reg[12][2]  ( .D(n138), .CK(CLK), .RN(RST), .Q(
        \regArr[12][2] ) );
  DFFRQX1M \regArr_reg[12][1]  ( .D(n137), .CK(CLK), .RN(RST), .Q(
        \regArr[12][1] ) );
  DFFRQX1M \regArr_reg[12][0]  ( .D(n136), .CK(CLK), .RN(RST), .Q(
        \regArr[12][0] ) );
  DFFRQX1M \regArr_reg[15][4]  ( .D(n164), .CK(CLK), .RN(RST), .Q(
        \regArr[15][4] ) );
  DFFRQX1M \regArr_reg[15][3]  ( .D(n163), .CK(CLK), .RN(RST), .Q(
        \regArr[15][3] ) );
  DFFRQX1M \regArr_reg[6][7]  ( .D(n95), .CK(CLK), .RN(RST), .Q(\regArr[6][7] ) );
  DFFRQX1M \regArr_reg[6][6]  ( .D(n94), .CK(CLK), .RN(RST), .Q(\regArr[6][6] ) );
  DFFRQX1M \regArr_reg[6][5]  ( .D(n93), .CK(CLK), .RN(RST), .Q(\regArr[6][5] ) );
  DFFRQX1M \regArr_reg[6][4]  ( .D(n92), .CK(CLK), .RN(RST), .Q(\regArr[6][4] ) );
  DFFRQX1M \regArr_reg[6][3]  ( .D(n91), .CK(CLK), .RN(RST), .Q(\regArr[6][3] ) );
  DFFRQX1M \regArr_reg[6][2]  ( .D(n90), .CK(CLK), .RN(RST), .Q(\regArr[6][2] ) );
  DFFRQX1M \regArr_reg[6][1]  ( .D(n89), .CK(CLK), .RN(RST), .Q(\regArr[6][1] ) );
  DFFRQX1M \regArr_reg[6][0]  ( .D(n88), .CK(CLK), .RN(RST), .Q(\regArr[6][0] ) );
  DFFRQX1M \regArr_reg[4][7]  ( .D(n79), .CK(CLK), .RN(RST), .Q(\regArr[4][7] ) );
  DFFRQX1M \regArr_reg[4][6]  ( .D(n78), .CK(CLK), .RN(RST), .Q(\regArr[4][6] ) );
  DFFRQX1M \regArr_reg[4][5]  ( .D(n77), .CK(CLK), .RN(RST), .Q(\regArr[4][5] ) );
  DFFRQX1M \regArr_reg[4][4]  ( .D(n76), .CK(CLK), .RN(RST), .Q(\regArr[4][4] ) );
  DFFRQX1M \regArr_reg[4][3]  ( .D(n75), .CK(CLK), .RN(RST), .Q(\regArr[4][3] ) );
  DFFRQX1M \regArr_reg[4][2]  ( .D(n74), .CK(CLK), .RN(RST), .Q(\regArr[4][2] ) );
  DFFRQX1M \regArr_reg[4][1]  ( .D(n73), .CK(CLK), .RN(RST), .Q(\regArr[4][1] ) );
  DFFRQX1M \regArr_reg[4][0]  ( .D(n72), .CK(CLK), .RN(RST), .Q(\regArr[4][0] ) );
  DFFRQX1M \regArr_reg[5][7]  ( .D(n87), .CK(CLK), .RN(RST), .Q(\regArr[5][7] ) );
  DFFRQX1M \regArr_reg[5][6]  ( .D(n86), .CK(CLK), .RN(RST), .Q(\regArr[5][6] ) );
  DFFRQX1M \regArr_reg[5][5]  ( .D(n85), .CK(CLK), .RN(RST), .Q(\regArr[5][5] ) );
  DFFRQX1M \regArr_reg[5][4]  ( .D(n84), .CK(CLK), .RN(RST), .Q(\regArr[5][4] ) );
  DFFRQX1M \regArr_reg[5][3]  ( .D(n83), .CK(CLK), .RN(RST), .Q(\regArr[5][3] ) );
  DFFRQX1M \regArr_reg[5][2]  ( .D(n82), .CK(CLK), .RN(RST), .Q(\regArr[5][2] ) );
  DFFRQX1M \regArr_reg[5][1]  ( .D(n81), .CK(CLK), .RN(RST), .Q(\regArr[5][1] ) );
  DFFRQX1M \regArr_reg[5][0]  ( .D(n80), .CK(CLK), .RN(RST), .Q(\regArr[5][0] ) );
  DFFRQX1M \regArr_reg[7][7]  ( .D(n103), .CK(CLK), .RN(RST), .Q(
        \regArr[7][7] ) );
  DFFRQX1M \regArr_reg[7][6]  ( .D(n102), .CK(CLK), .RN(RST), .Q(
        \regArr[7][6] ) );
  DFFRQX1M \regArr_reg[7][5]  ( .D(n101), .CK(CLK), .RN(RST), .Q(
        \regArr[7][5] ) );
  DFFRQX1M \regArr_reg[7][4]  ( .D(n100), .CK(CLK), .RN(RST), .Q(
        \regArr[7][4] ) );
  DFFRQX1M \regArr_reg[7][3]  ( .D(n99), .CK(CLK), .RN(RST), .Q(\regArr[7][3] ) );
  DFFRQX1M \regArr_reg[7][2]  ( .D(n98), .CK(CLK), .RN(RST), .Q(\regArr[7][2] ) );
  DFFRQX1M \regArr_reg[7][1]  ( .D(n97), .CK(CLK), .RN(RST), .Q(\regArr[7][1] ) );
  DFFRQX1M \regArr_reg[7][0]  ( .D(n96), .CK(CLK), .RN(RST), .Q(\regArr[7][0] ) );
  DFFRQX1M \regArr_reg[15][7]  ( .D(n167), .CK(CLK), .RN(RST), .Q(
        \regArr[15][7] ) );
  DFFRQX1M \regArr_reg[15][6]  ( .D(n166), .CK(CLK), .RN(RST), .Q(
        \regArr[15][6] ) );
  DFFRQX1M \regArr_reg[15][5]  ( .D(n165), .CK(CLK), .RN(RST), .Q(
        \regArr[15][5] ) );
  DFFSQX2M \regArr_reg[2][2]  ( .D(n58), .CK(CLK), .SN(RST), .Q(REG2[2]) );
  DFFSQX2M \regArr_reg[0][1]  ( .D(n41), .CK(CLK), .SN(RST), .Q(REG0[1]) );
  DFFRQX1M \regArr_reg[9][3]  ( .D(n115), .CK(CLK), .RN(RST), .Q(
        \regArr[9][3] ) );
  DFFRQX1M \regArr_reg[9][2]  ( .D(n114), .CK(CLK), .RN(RST), .Q(
        \regArr[9][2] ) );
  DFFRQX1M \regArr_reg[9][1]  ( .D(n113), .CK(CLK), .RN(RST), .Q(
        \regArr[9][1] ) );
  DFFRQX1M \regArr_reg[9][0]  ( .D(n112), .CK(CLK), .RN(RST), .Q(
        \regArr[9][0] ) );
  DFFRQX1M \regArr_reg[9][6]  ( .D(n118), .CK(CLK), .RN(RST), .Q(
        \regArr[9][6] ) );
  DFFRQX1M \regArr_reg[9][5]  ( .D(n117), .CK(CLK), .RN(RST), .Q(
        \regArr[9][5] ) );
  DFFRQX1M \regArr_reg[9][4]  ( .D(n116), .CK(CLK), .RN(RST), .Q(
        \regArr[9][4] ) );
  DFFRQX1M \regArr_reg[8][6]  ( .D(n110), .CK(CLK), .RN(RST), .Q(
        \regArr[8][6] ) );
  DFFRQX1M \regArr_reg[8][5]  ( .D(n109), .CK(CLK), .RN(RST), .Q(
        \regArr[8][5] ) );
  DFFRQX1M \regArr_reg[8][4]  ( .D(n108), .CK(CLK), .RN(RST), .Q(
        \regArr[8][4] ) );
  DFFRQX1M \regArr_reg[8][3]  ( .D(n107), .CK(CLK), .RN(RST), .Q(
        \regArr[8][3] ) );
  DFFRQX1M \regArr_reg[8][2]  ( .D(n106), .CK(CLK), .RN(RST), .Q(
        \regArr[8][2] ) );
  DFFRQX1M \regArr_reg[8][1]  ( .D(n105), .CK(CLK), .RN(RST), .Q(
        \regArr[8][1] ) );
  DFFRQX1M \regArr_reg[8][0]  ( .D(n104), .CK(CLK), .RN(RST), .Q(
        \regArr[8][0] ) );
  DFFRQX1M \regArr_reg[9][7]  ( .D(n119), .CK(CLK), .RN(RST), .Q(
        \regArr[9][7] ) );
  DFFRQX1M \regArr_reg[8][7]  ( .D(n111), .CK(CLK), .RN(RST), .Q(
        \regArr[8][7] ) );
  DFFRQX1M \regArr_reg[11][4]  ( .D(n132), .CK(CLK), .RN(RST), .Q(
        \regArr[11][4] ) );
  DFFRQX1M \regArr_reg[10][4]  ( .D(n124), .CK(CLK), .RN(RST), .Q(
        \regArr[10][4] ) );
  DFFRQX1M \regArr_reg[11][6]  ( .D(n134), .CK(CLK), .RN(RST), .Q(
        \regArr[11][6] ) );
  DFFRQX1M \regArr_reg[11][5]  ( .D(n133), .CK(CLK), .RN(RST), .Q(
        \regArr[11][5] ) );
  DFFRQX1M \regArr_reg[10][6]  ( .D(n126), .CK(CLK), .RN(RST), .Q(
        \regArr[10][6] ) );
  DFFRQX1M \regArr_reg[10][5]  ( .D(n125), .CK(CLK), .RN(RST), .Q(
        \regArr[10][5] ) );
  DFFRQX1M \regArr_reg[11][3]  ( .D(n131), .CK(CLK), .RN(RST), .Q(
        \regArr[11][3] ) );
  DFFRQX1M \regArr_reg[11][2]  ( .D(n130), .CK(CLK), .RN(RST), .Q(
        \regArr[11][2] ) );
  DFFRQX1M \regArr_reg[11][1]  ( .D(n129), .CK(CLK), .RN(RST), .Q(
        \regArr[11][1] ) );
  DFFRQX1M \regArr_reg[11][0]  ( .D(n128), .CK(CLK), .RN(RST), .Q(
        \regArr[11][0] ) );
  DFFRQX1M \regArr_reg[10][3]  ( .D(n123), .CK(CLK), .RN(RST), .Q(
        \regArr[10][3] ) );
  DFFRQX1M \regArr_reg[10][2]  ( .D(n122), .CK(CLK), .RN(RST), .Q(
        \regArr[10][2] ) );
  DFFRQX1M \regArr_reg[10][1]  ( .D(n121), .CK(CLK), .RN(RST), .Q(
        \regArr[10][1] ) );
  DFFRQX1M \regArr_reg[10][0]  ( .D(n120), .CK(CLK), .RN(RST), .Q(
        \regArr[10][0] ) );
  DFFRQX1M \regArr_reg[1][6]  ( .D(n54), .CK(CLK), .RN(RST), .Q(n373) );
  DFFRQX1M \regArr_reg[1][5]  ( .D(n53), .CK(CLK), .RN(RST), .Q(n376) );
  DFFRQX1M \regArr_reg[1][0]  ( .D(n48), .CK(CLK), .RN(RST), .Q(n375) );
  DFFRQX1M \regArr_reg[1][2]  ( .D(n50), .CK(CLK), .RN(RST), .Q(n384) );
  DFFRQX1M \regArr_reg[1][1]  ( .D(n49), .CK(CLK), .RN(RST), .Q(n377) );
  DFFRQX1M \regArr_reg[3][4]  ( .D(n68), .CK(CLK), .RN(RST), .Q(\regArr[3][4] ) );
  DFFRQX1M \regArr_reg[3][6]  ( .D(n70), .CK(CLK), .RN(RST), .Q(\regArr[3][6] ) );
  DFFRQX1M \regArr_reg[3][5]  ( .D(n69), .CK(CLK), .RN(RST), .Q(\regArr[3][5] ) );
  DFFRQX1M \regArr_reg[3][3]  ( .D(n67), .CK(CLK), .RN(RST), .Q(\regArr[3][3] ) );
  DFFRQX1M \regArr_reg[3][2]  ( .D(n66), .CK(CLK), .RN(RST), .Q(\regArr[3][2] ) );
  DFFRQX1M \regArr_reg[3][1]  ( .D(n65), .CK(CLK), .RN(RST), .Q(\regArr[3][1] ) );
  DFFRQX1M \regArr_reg[3][0]  ( .D(n64), .CK(CLK), .RN(RST), .Q(\regArr[3][0] ) );
  DFFRQX1M \regArr_reg[11][7]  ( .D(n135), .CK(CLK), .RN(RST), .Q(
        \regArr[11][7] ) );
  DFFRQX1M \regArr_reg[10][7]  ( .D(n127), .CK(CLK), .RN(RST), .Q(
        \regArr[10][7] ) );
  DFFRQX1M \regArr_reg[1][7]  ( .D(n55), .CK(CLK), .RN(RST), .Q(n372) );
  DFFRQX1M \regArr_reg[3][7]  ( .D(n71), .CK(CLK), .RN(RST), .Q(\regArr[3][7] ) );
  DFFRQX1M \regArr_reg[2][4]  ( .D(n60), .CK(CLK), .RN(RST), .Q(REG2[4]) );
  DFFRQX1M \regArr_reg[0][4]  ( .D(n44), .CK(CLK), .RN(RST), .Q(REG0[4]) );
  DFFRQX1M \regArr_reg[2][6]  ( .D(n62), .CK(CLK), .RN(RST), .Q(REG2[6]) );
  DFFRQX1M \regArr_reg[2][5]  ( .D(n61), .CK(CLK), .RN(RST), .Q(REG2[5]) );
  DFFRQX1M \regArr_reg[0][6]  ( .D(n46), .CK(CLK), .RN(RST), .Q(REG0[6]) );
  DFFRQX1M \regArr_reg[0][5]  ( .D(n45), .CK(CLK), .RN(RST), .Q(REG0[5]) );
  DFFRQX1M \regArr_reg[2][3]  ( .D(n59), .CK(CLK), .RN(RST), .Q(REG2[3]) );
  DFFRQX1M \regArr_reg[2][1]  ( .D(n57), .CK(CLK), .RN(RST), .Q(REG2[1]) );
  DFFRQX1M \regArr_reg[2][0]  ( .D(n56), .CK(CLK), .RN(RST), .Q(REG2[0]) );
  DFFRQX1M \regArr_reg[0][3]  ( .D(n43), .CK(CLK), .RN(RST), .Q(REG0[3]) );
  DFFRQX1M \regArr_reg[0][2]  ( .D(n42), .CK(CLK), .RN(RST), .Q(n381) );
  DFFRQX1M \regArr_reg[0][0]  ( .D(n40), .CK(CLK), .RN(RST), .Q(REG0[0]) );
  DFFRQX1M \regArr_reg[2][7]  ( .D(n63), .CK(CLK), .RN(RST), .Q(REG2[7]) );
  DFFRQX1M \regArr_reg[0][7]  ( .D(n47), .CK(CLK), .RN(RST), .Q(REG0[7]) );
  DFFRQX1M \regArr_reg[1][4]  ( .D(n52), .CK(CLK), .RN(RST), .Q(n374) );
  DFFRQX1M \regArr_reg[13][7]  ( .D(n151), .CK(CLK), .RN(RST), .Q(
        \regArr[13][7] ) );
  DFFRQX1M \regArr_reg[13][6]  ( .D(n150), .CK(CLK), .RN(RST), .Q(
        \regArr[13][6] ) );
  DFFRQX1M \regArr_reg[13][5]  ( .D(n149), .CK(CLK), .RN(RST), .Q(
        \regArr[13][5] ) );
  EDFFHQX1M \RdData_reg[3]  ( .D(N40), .E(n1), .CK(CLK), .Q(n368) );
  EDFFHQX1M \RdData_reg[2]  ( .D(N41), .E(n1), .CK(CLK), .Q(n369) );
  EDFFHQX1M \RdData_reg[1]  ( .D(N42), .E(n1), .CK(CLK), .Q(n370) );
  EDFFHQX1M \RdData_reg[7]  ( .D(N36), .E(n1), .CK(CLK), .Q(n364) );
  EDFFHQX1M \RdData_reg[6]  ( .D(N37), .E(n1), .CK(CLK), .Q(n365) );
  EDFFHQX1M \RdData_reg[5]  ( .D(N38), .E(n1), .CK(CLK), .Q(n366) );
  EDFFHQX1M \RdData_reg[4]  ( .D(N39), .E(n1), .CK(CLK), .Q(n367) );
  EDFFHQX1M \RdData_reg[0]  ( .D(N43), .E(n1), .CK(CLK), .Q(n371) );
  DFFSQX4M \regArr_reg[1][3]  ( .D(n51), .CK(CLK), .SN(RST), .Q(REG1[3]) );
  AND2X2M U324 ( .A(Address[2]), .B(Address[1]), .Y(n203) );
  INVXLM U325 ( .A(n371), .Y(n204) );
  CLKINVX12M U326 ( .A(n204), .Y(RdData[0]) );
  INVXLM U327 ( .A(n367), .Y(n225) );
  CLKINVX12M U328 ( .A(n225), .Y(RdData[4]) );
  INVXLM U329 ( .A(n366), .Y(n316) );
  CLKINVX12M U330 ( .A(n316), .Y(RdData[5]) );
  INVXLM U331 ( .A(n365), .Y(n318) );
  CLKINVX12M U332 ( .A(n318), .Y(RdData[6]) );
  INVXLM U333 ( .A(n364), .Y(n320) );
  CLKINVX12M U334 ( .A(n320), .Y(RdData[7]) );
  INVXLM U335 ( .A(n370), .Y(n322) );
  CLKINVX12M U336 ( .A(n322), .Y(RdData[1]) );
  INVXLM U337 ( .A(n369), .Y(n324) );
  CLKINVX12M U338 ( .A(n324), .Y(RdData[2]) );
  INVXLM U339 ( .A(n368), .Y(n326) );
  CLKINVX12M U340 ( .A(n326), .Y(RdData[3]) );
  INVXLM U341 ( .A(n372), .Y(n328) );
  INVX2M U342 ( .A(n328), .Y(REG1[7]) );
  INVXLM U343 ( .A(n373), .Y(n330) );
  INVX4M U344 ( .A(n330), .Y(REG1[6]) );
  INVXLM U345 ( .A(n376), .Y(n332) );
  INVX4M U346 ( .A(n332), .Y(REG1[5]) );
  INVXLM U347 ( .A(n374), .Y(n334) );
  INVX4M U348 ( .A(n334), .Y(REG1[4]) );
  INVXLM U349 ( .A(n375), .Y(n336) );
  INVX4M U350 ( .A(n336), .Y(REG1[0]) );
  INVX2M U351 ( .A(n235), .Y(n360) );
  NOR2BX2M U352 ( .AN(n227), .B(n228), .Y(n217) );
  NOR2BX2M U353 ( .AN(n227), .B(n242), .Y(n219) );
  OR2X2M U354 ( .A(n205), .B(Address[2]), .Y(n338) );
  OR2X2M U355 ( .A(Address[1]), .B(Address[2]), .Y(n339) );
  BUFX2M U356 ( .A(n213), .Y(n341) );
  BUFX2M U357 ( .A(n212), .Y(n342) );
  BUFX2M U358 ( .A(n211), .Y(n343) );
  BUFX2M U359 ( .A(n214), .Y(n340) );
  BUFX2M U360 ( .A(n209), .Y(n345) );
  BUFX2M U361 ( .A(n208), .Y(n346) );
  BUFX2M U362 ( .A(n207), .Y(n347) );
  BUFX2M U363 ( .A(n210), .Y(n344) );
  INVX2M U364 ( .A(n215), .Y(n195) );
  INVX2M U365 ( .A(n216), .Y(n202) );
  INVX2M U366 ( .A(n218), .Y(n196) );
  INVX2M U367 ( .A(n220), .Y(n201) );
  INVX2M U368 ( .A(n234), .Y(n197) );
  INVX2M U369 ( .A(n233), .Y(n199) );
  INVX2M U370 ( .A(n229), .Y(n200) );
  INVX2M U371 ( .A(n231), .Y(n198) );
  INVX4M U372 ( .A(n203), .Y(n357) );
  INVX2M U373 ( .A(n360), .Y(n358) );
  INVX2M U374 ( .A(n360), .Y(n359) );
  INVX2M U375 ( .A(n203), .Y(n356) );
  BUFX2M U376 ( .A(n221), .Y(n355) );
  BUFX2M U377 ( .A(n224), .Y(n353) );
  BUFX2M U378 ( .A(n226), .Y(n352) );
  BUFX2M U379 ( .A(n223), .Y(n354) );
  BUFX2M U380 ( .A(n240), .Y(n348) );
  BUFX2M U381 ( .A(n237), .Y(n350) );
  BUFX2M U382 ( .A(n236), .Y(n351) );
  BUFX2M U383 ( .A(n238), .Y(n349) );
  NAND2X2M U384 ( .A(n203), .B(n219), .Y(n215) );
  NAND2X2M U385 ( .A(n217), .B(n203), .Y(n216) );
  NAND2X2M U386 ( .A(n232), .B(n360), .Y(n234) );
  NAND2X2M U387 ( .A(n230), .B(n203), .Y(n229) );
  NAND2X2M U388 ( .A(n360), .B(n219), .Y(n218) );
  NAND2X2M U389 ( .A(n360), .B(n217), .Y(n220) );
  NAND2X2M U390 ( .A(n230), .B(n360), .Y(n233) );
  NAND2X2M U391 ( .A(n232), .B(n203), .Y(n231) );
  INVX4M U392 ( .A(n338), .Y(n363) );
  INVX4M U393 ( .A(n339), .Y(n362) );
  INVX2M U394 ( .A(n338), .Y(n378) );
  NAND2X2M U395 ( .A(n363), .B(n219), .Y(n221) );
  NAND2X2M U396 ( .A(n362), .B(n219), .Y(n224) );
  NAND2X2M U397 ( .A(n362), .B(n217), .Y(n226) );
  NAND2X2M U398 ( .A(n363), .B(n217), .Y(n223) );
  INVX2M U399 ( .A(n339), .Y(n361) );
  NAND2X2M U400 ( .A(n232), .B(n361), .Y(n240) );
  NAND2X2M U401 ( .A(n232), .B(n363), .Y(n237) );
  NAND2X2M U402 ( .A(n230), .B(n363), .Y(n236) );
  NAND2X2M U403 ( .A(n230), .B(n361), .Y(n238) );
  NAND2BX2M U404 ( .AN(Address[3]), .B(Address[0]), .Y(n242) );
  NAND2BX2M U405 ( .AN(Address[3]), .B(n206), .Y(n228) );
  OAI22X1M U406 ( .A0(n356), .A1(n186), .B0(n358), .B1(n178), .Y(n296) );
  OAI22X1M U407 ( .A0(n356), .A1(n34), .B0(n358), .B1(n170), .Y(n297) );
  OAI22X1M U408 ( .A0(n356), .A1(n185), .B0(n358), .B1(n177), .Y(n305) );
  OAI22X1M U409 ( .A0(n356), .A1(n33), .B0(n358), .B1(n169), .Y(n306) );
  OAI22X1M U410 ( .A0(n356), .A1(n191), .B0(n358), .B1(n183), .Y(n251) );
  OAI22X1M U411 ( .A0(n356), .A1(n39), .B0(n358), .B1(n175), .Y(n252) );
  OAI22X1M U412 ( .A0(n356), .A1(n187), .B0(n358), .B1(n179), .Y(n287) );
  OAI22X1M U413 ( .A0(n356), .A1(n35), .B0(n358), .B1(n171), .Y(n288) );
  OAI22X1M U414 ( .A0(n356), .A1(n184), .B0(n358), .B1(n176), .Y(n314) );
  OAI22X1M U415 ( .A0(n356), .A1(n32), .B0(n358), .B1(n168), .Y(n315) );
  OAI22X1M U416 ( .A0(n356), .A1(n190), .B0(n358), .B1(n182), .Y(n260) );
  OAI22X1M U417 ( .A0(n357), .A1(n38), .B0(n359), .B1(n174), .Y(n261) );
  OAI22X1M U418 ( .A0(n356), .A1(n189), .B0(n358), .B1(n181), .Y(n269) );
  OAI22X1M U419 ( .A0(n357), .A1(n37), .B0(n359), .B1(n173), .Y(n270) );
  OAI22X1M U420 ( .A0(n357), .A1(n188), .B0(n359), .B1(n180), .Y(n278) );
  OAI22X1M U421 ( .A0(n357), .A1(n36), .B0(n359), .B1(n172), .Y(n279) );
  OAI22X1M U422 ( .A0(n195), .A1(n191), .B0(n215), .B1(n340), .Y(n96) );
  OAI22X1M U423 ( .A0(n195), .A1(n190), .B0(n215), .B1(n341), .Y(n97) );
  OAI22X1M U424 ( .A0(n195), .A1(n189), .B0(n215), .B1(n342), .Y(n98) );
  OAI22X1M U425 ( .A0(n195), .A1(n188), .B0(n215), .B1(n343), .Y(n99) );
  OAI22X1M U426 ( .A0(n195), .A1(n187), .B0(n215), .B1(n210), .Y(n100) );
  OAI22X1M U427 ( .A0(n195), .A1(n186), .B0(n215), .B1(n345), .Y(n101) );
  OAI22X1M U428 ( .A0(n195), .A1(n185), .B0(n215), .B1(n346), .Y(n102) );
  OAI22X1M U429 ( .A0(n195), .A1(n184), .B0(n215), .B1(n347), .Y(n103) );
  OAI22X1M U430 ( .A0(n202), .A1(n39), .B0(n340), .B1(n216), .Y(n88) );
  OAI22X1M U431 ( .A0(n202), .A1(n38), .B0(n341), .B1(n216), .Y(n89) );
  OAI22X1M U432 ( .A0(n202), .A1(n37), .B0(n342), .B1(n216), .Y(n90) );
  OAI22X1M U433 ( .A0(n202), .A1(n36), .B0(n343), .B1(n216), .Y(n91) );
  OAI22X1M U434 ( .A0(n202), .A1(n35), .B0(n216), .B1(n210), .Y(n92) );
  OAI22X1M U435 ( .A0(n202), .A1(n34), .B0(n216), .B1(n209), .Y(n93) );
  OAI22X1M U436 ( .A0(n202), .A1(n33), .B0(n216), .B1(n208), .Y(n94) );
  OAI22X1M U437 ( .A0(n202), .A1(n32), .B0(n216), .B1(n207), .Y(n95) );
  OAI22X1M U438 ( .A0(n200), .A1(n194), .B0(n345), .B1(n229), .Y(n165) );
  OAI22X1M U439 ( .A0(n200), .A1(n193), .B0(n346), .B1(n229), .Y(n166) );
  OAI22X1M U440 ( .A0(n200), .A1(n192), .B0(n347), .B1(n229), .Y(n167) );
  OAI22X1M U441 ( .A0(n196), .A1(n183), .B0(n340), .B1(n218), .Y(n80) );
  OAI22X1M U442 ( .A0(n196), .A1(n182), .B0(n341), .B1(n218), .Y(n81) );
  OAI22X1M U443 ( .A0(n196), .A1(n181), .B0(n342), .B1(n218), .Y(n82) );
  OAI22X1M U444 ( .A0(n196), .A1(n180), .B0(n343), .B1(n218), .Y(n83) );
  OAI22X1M U445 ( .A0(n196), .A1(n179), .B0(n344), .B1(n218), .Y(n84) );
  OAI22X1M U446 ( .A0(n196), .A1(n178), .B0(n345), .B1(n218), .Y(n85) );
  OAI22X1M U447 ( .A0(n196), .A1(n177), .B0(n346), .B1(n218), .Y(n86) );
  OAI22X1M U448 ( .A0(n196), .A1(n176), .B0(n347), .B1(n218), .Y(n87) );
  OAI22X1M U449 ( .A0(n201), .A1(n175), .B0(n340), .B1(n220), .Y(n72) );
  OAI22X1M U450 ( .A0(n201), .A1(n174), .B0(n341), .B1(n220), .Y(n73) );
  OAI22X1M U451 ( .A0(n201), .A1(n173), .B0(n342), .B1(n220), .Y(n74) );
  OAI22X1M U452 ( .A0(n201), .A1(n172), .B0(n343), .B1(n220), .Y(n75) );
  OAI22X1M U453 ( .A0(n201), .A1(n171), .B0(n344), .B1(n220), .Y(n76) );
  OAI22X1M U454 ( .A0(n201), .A1(n170), .B0(n345), .B1(n220), .Y(n77) );
  OAI22X1M U455 ( .A0(n201), .A1(n169), .B0(n346), .B1(n220), .Y(n78) );
  OAI22X1M U456 ( .A0(n201), .A1(n168), .B0(n347), .B1(n220), .Y(n79) );
  OAI22X1M U457 ( .A0(n200), .A1(n31), .B0(n343), .B1(n229), .Y(n163) );
  OAI22X1M U458 ( .A0(n200), .A1(n30), .B0(n344), .B1(n229), .Y(n164) );
  OAI22X1M U459 ( .A0(n197), .A1(n29), .B0(n340), .B1(n234), .Y(n136) );
  OAI22X1M U460 ( .A0(n197), .A1(n28), .B0(n341), .B1(n234), .Y(n137) );
  OAI22X1M U461 ( .A0(n197), .A1(n27), .B0(n342), .B1(n234), .Y(n138) );
  OAI22X1M U462 ( .A0(n197), .A1(n26), .B0(n343), .B1(n234), .Y(n139) );
  OAI22X1M U463 ( .A0(n197), .A1(n25), .B0(n344), .B1(n234), .Y(n140) );
  OAI22X1M U464 ( .A0(n197), .A1(n24), .B0(n345), .B1(n234), .Y(n141) );
  OAI22X1M U465 ( .A0(n197), .A1(n23), .B0(n346), .B1(n234), .Y(n142) );
  OAI22X1M U466 ( .A0(n197), .A1(n22), .B0(n347), .B1(n234), .Y(n143) );
  OAI22X1M U467 ( .A0(n199), .A1(n21), .B0(n344), .B1(n233), .Y(n148) );
  OAI22X1M U468 ( .A0(n199), .A1(n20), .B0(n345), .B1(n233), .Y(n149) );
  OAI22X1M U469 ( .A0(n199), .A1(n19), .B0(n346), .B1(n233), .Y(n150) );
  OAI22X1M U470 ( .A0(n199), .A1(n18), .B0(n347), .B1(n233), .Y(n151) );
  OAI22X1M U471 ( .A0(n199), .A1(n17), .B0(n341), .B1(n233), .Y(n145) );
  OAI22X1M U472 ( .A0(n199), .A1(n16), .B0(n342), .B1(n233), .Y(n146) );
  OAI22X1M U473 ( .A0(n199), .A1(n15), .B0(n343), .B1(n233), .Y(n147) );
  OAI22X1M U474 ( .A0(n199), .A1(n14), .B0(n340), .B1(n233), .Y(n144) );
  OAI22X1M U475 ( .A0(n200), .A1(n13), .B0(n341), .B1(n229), .Y(n161) );
  OAI22X1M U476 ( .A0(n200), .A1(n11), .B0(n342), .B1(n229), .Y(n162) );
  OAI22X1M U477 ( .A0(n200), .A1(n10), .B0(n340), .B1(n229), .Y(n160) );
  OAI22X1M U478 ( .A0(n198), .A1(n9), .B0(n341), .B1(n231), .Y(n153) );
  OAI22X1M U479 ( .A0(n198), .A1(n8), .B0(n342), .B1(n231), .Y(n154) );
  OAI22X1M U480 ( .A0(n198), .A1(n7), .B0(n343), .B1(n231), .Y(n155) );
  OAI22X1M U481 ( .A0(n198), .A1(n6), .B0(n345), .B1(n231), .Y(n157) );
  OAI22X1M U482 ( .A0(n198), .A1(n5), .B0(n346), .B1(n231), .Y(n158) );
  OAI22X1M U483 ( .A0(n198), .A1(n4), .B0(n347), .B1(n231), .Y(n159) );
  OAI22X1M U484 ( .A0(n198), .A1(n3), .B0(n340), .B1(n231), .Y(n152) );
  OAI22X1M U485 ( .A0(n198), .A1(n2), .B0(n344), .B1(n231), .Y(n156) );
  AND2X2M U486 ( .A(Address[3]), .B(Address[0]), .Y(n239) );
  AND2X2M U487 ( .A(Address[3]), .B(n206), .Y(n241) );
  AND2X2M U488 ( .A(n241), .B(n227), .Y(n232) );
  AND2X2M U489 ( .A(n239), .B(n227), .Y(n230) );
  INVX2M U490 ( .A(Address[0]), .Y(n206) );
  INVX2M U491 ( .A(Address[1]), .Y(n205) );
  NAND2X2M U492 ( .A(Address[2]), .B(n205), .Y(n235) );
  OAI221X1M U493 ( .A0(n359), .A1(n20), .B0(n357), .B1(n194), .C0(n295), .Y(
        n292) );
  AOI22X1M U494 ( .A0(\regArr[11][5] ), .A1(n363), .B0(\regArr[9][5] ), .B1(
        n362), .Y(n295) );
  OAI221X1M U495 ( .A0(n359), .A1(n19), .B0(n357), .B1(n193), .C0(n304), .Y(
        n301) );
  AOI22X1M U496 ( .A0(\regArr[11][6] ), .A1(n378), .B0(\regArr[9][6] ), .B1(
        n362), .Y(n304) );
  OAI221X1M U497 ( .A0(n235), .A1(n14), .B0(n357), .B1(n10), .C0(n250), .Y(
        n247) );
  AOI22X1M U498 ( .A0(\regArr[11][0] ), .A1(n378), .B0(\regArr[9][0] ), .B1(
        n362), .Y(n250) );
  OAI221X1M U499 ( .A0(n235), .A1(n21), .B0(n357), .B1(n30), .C0(n286), .Y(
        n283) );
  AOI22X1M U500 ( .A0(\regArr[11][4] ), .A1(n363), .B0(\regArr[9][4] ), .B1(
        n362), .Y(n286) );
  OAI221X1M U501 ( .A0(n235), .A1(n18), .B0(n357), .B1(n192), .C0(n313), .Y(
        n310) );
  AOI22X1M U502 ( .A0(\regArr[11][7] ), .A1(n378), .B0(\regArr[9][7] ), .B1(
        n362), .Y(n313) );
  OAI221X1M U503 ( .A0(n235), .A1(n17), .B0(n357), .B1(n13), .C0(n259), .Y(
        n256) );
  AOI22X1M U504 ( .A0(\regArr[11][1] ), .A1(n378), .B0(\regArr[9][1] ), .B1(
        n362), .Y(n259) );
  OAI221X1M U505 ( .A0(n235), .A1(n16), .B0(n357), .B1(n11), .C0(n268), .Y(
        n265) );
  AOI22X1M U506 ( .A0(\regArr[11][2] ), .A1(n378), .B0(\regArr[9][2] ), .B1(
        n362), .Y(n268) );
  OAI221X1M U507 ( .A0(n235), .A1(n15), .B0(n357), .B1(n31), .C0(n277), .Y(
        n274) );
  AOI22X1M U508 ( .A0(\regArr[11][3] ), .A1(n363), .B0(\regArr[9][3] ), .B1(
        n362), .Y(n277) );
  OAI221X1M U509 ( .A0(n235), .A1(n24), .B0(n357), .B1(n6), .C0(n294), .Y(n293) );
  AOI22X1M U510 ( .A0(\regArr[10][5] ), .A1(n363), .B0(\regArr[8][5] ), .B1(
        n362), .Y(n294) );
  OAI221X1M U511 ( .A0(n359), .A1(n23), .B0(n357), .B1(n5), .C0(n303), .Y(n302) );
  AOI22X1M U512 ( .A0(\regArr[10][6] ), .A1(n363), .B0(\regArr[8][6] ), .B1(
        n362), .Y(n303) );
  OAI221X1M U513 ( .A0(n359), .A1(n29), .B0(n357), .B1(n3), .C0(n249), .Y(n248) );
  AOI22X1M U514 ( .A0(\regArr[10][0] ), .A1(n378), .B0(\regArr[8][0] ), .B1(
        n362), .Y(n249) );
  OAI221X1M U515 ( .A0(n359), .A1(n25), .B0(n357), .B1(n2), .C0(n285), .Y(n284) );
  AOI22X1M U516 ( .A0(\regArr[10][4] ), .A1(n378), .B0(\regArr[8][4] ), .B1(
        n362), .Y(n285) );
  OAI221X1M U517 ( .A0(n359), .A1(n22), .B0(n357), .B1(n4), .C0(n312), .Y(n311) );
  AOI22X1M U518 ( .A0(\regArr[10][7] ), .A1(n378), .B0(\regArr[8][7] ), .B1(
        n362), .Y(n312) );
  OAI221X1M U519 ( .A0(n359), .A1(n28), .B0(n357), .B1(n9), .C0(n258), .Y(n257) );
  AOI22X1M U520 ( .A0(\regArr[10][1] ), .A1(n378), .B0(\regArr[8][1] ), .B1(
        n362), .Y(n258) );
  OAI221X1M U521 ( .A0(n359), .A1(n27), .B0(n357), .B1(n8), .C0(n267), .Y(n266) );
  AOI22X1M U522 ( .A0(\regArr[10][2] ), .A1(n378), .B0(\regArr[8][2] ), .B1(
        n362), .Y(n267) );
  OAI221X1M U523 ( .A0(n235), .A1(n26), .B0(n357), .B1(n7), .C0(n276), .Y(n275) );
  AOI22X1M U524 ( .A0(\regArr[10][3] ), .A1(n363), .B0(\regArr[8][3] ), .B1(
        n362), .Y(n276) );
  NOR2BX2M U525 ( .AN(WrEn), .B(RdEn), .Y(n227) );
  OAI221X1M U526 ( .A0(n244), .A1(n228), .B0(n245), .B1(n242), .C0(n246), .Y(
        N43) );
  AOI221XLM U527 ( .A0(REG2[0]), .A1(n363), .B0(REG0[0]), .B1(n361), .C0(n252), 
        .Y(n244) );
  AOI221XLM U528 ( .A0(\regArr[3][0] ), .A1(n378), .B0(REG1[0]), .B1(n361), 
        .C0(n251), .Y(n245) );
  AOI22X1M U529 ( .A0(n239), .A1(n247), .B0(n241), .B1(n248), .Y(n246) );
  OAI221X1M U530 ( .A0(n280), .A1(n228), .B0(n281), .B1(n242), .C0(n282), .Y(
        N39) );
  AOI221XLM U531 ( .A0(REG2[4]), .A1(n363), .B0(REG0[4]), .B1(n361), .C0(n288), 
        .Y(n280) );
  AOI221XLM U532 ( .A0(\regArr[3][4] ), .A1(n363), .B0(REG1[4]), .B1(n361), 
        .C0(n287), .Y(n281) );
  AOI22X1M U533 ( .A0(n239), .A1(n283), .B0(n241), .B1(n284), .Y(n282) );
  OAI221X1M U534 ( .A0(n289), .A1(n228), .B0(n290), .B1(n242), .C0(n291), .Y(
        N38) );
  AOI221XLM U535 ( .A0(REG2[5]), .A1(n363), .B0(REG0[5]), .B1(n362), .C0(n297), 
        .Y(n289) );
  AOI221XLM U536 ( .A0(\regArr[3][5] ), .A1(n363), .B0(REG1[5]), .B1(n362), 
        .C0(n296), .Y(n290) );
  AOI22X1M U537 ( .A0(n239), .A1(n292), .B0(n241), .B1(n293), .Y(n291) );
  OAI221X1M U538 ( .A0(n298), .A1(n228), .B0(n299), .B1(n242), .C0(n300), .Y(
        N37) );
  AOI22X1M U539 ( .A0(n239), .A1(n301), .B0(n241), .B1(n302), .Y(n300) );
  AOI221XLM U540 ( .A0(REG2[6]), .A1(n363), .B0(REG0[6]), .B1(n362), .C0(n306), 
        .Y(n298) );
  AOI221XLM U541 ( .A0(\regArr[3][6] ), .A1(n363), .B0(REG1[6]), .B1(n362), 
        .C0(n305), .Y(n299) );
  OAI221X1M U542 ( .A0(n307), .A1(n228), .B0(n308), .B1(n242), .C0(n309), .Y(
        N36) );
  AOI22X1M U543 ( .A0(n239), .A1(n310), .B0(n241), .B1(n311), .Y(n309) );
  AOI221XLM U544 ( .A0(REG2[7]), .A1(n363), .B0(REG0[7]), .B1(n361), .C0(n315), 
        .Y(n307) );
  AOI221XLM U545 ( .A0(\regArr[3][7] ), .A1(n363), .B0(REG1[7]), .B1(n362), 
        .C0(n314), .Y(n308) );
  OAI221X1M U546 ( .A0(n253), .A1(n228), .B0(n254), .B1(n242), .C0(n255), .Y(
        N42) );
  AOI221XLM U547 ( .A0(REG2[1]), .A1(n363), .B0(REG0[1]), .B1(n361), .C0(n261), 
        .Y(n253) );
  AOI221XLM U548 ( .A0(\regArr[3][1] ), .A1(n363), .B0(n377), .B1(n361), .C0(
        n260), .Y(n254) );
  AOI22X1M U549 ( .A0(n239), .A1(n256), .B0(n241), .B1(n257), .Y(n255) );
  OAI221X1M U550 ( .A0(n262), .A1(n228), .B0(n263), .B1(n242), .C0(n264), .Y(
        N41) );
  AOI221XLM U551 ( .A0(REG2[2]), .A1(n378), .B0(n381), .B1(n361), .C0(n270), 
        .Y(n262) );
  AOI221XLM U552 ( .A0(\regArr[3][2] ), .A1(n363), .B0(n384), .B1(n361), .C0(
        n269), .Y(n263) );
  AOI22X1M U553 ( .A0(n239), .A1(n265), .B0(n241), .B1(n266), .Y(n264) );
  OAI221X1M U554 ( .A0(n271), .A1(n228), .B0(n272), .B1(n242), .C0(n273), .Y(
        N40) );
  AOI221XLM U555 ( .A0(REG2[3]), .A1(n363), .B0(REG0[3]), .B1(n361), .C0(n279), 
        .Y(n271) );
  AOI221XLM U556 ( .A0(\regArr[3][3] ), .A1(n363), .B0(REG1[3]), .B1(n361), 
        .C0(n278), .Y(n272) );
  AOI22X1M U557 ( .A0(n239), .A1(n274), .B0(n241), .B1(n275), .Y(n273) );
  OAI2BB2X1M U558 ( .B0(n214), .B1(n355), .A0N(n355), .A1N(\regArr[3][0] ), 
        .Y(n64) );
  OAI2BB2X1M U559 ( .B0(n213), .B1(n221), .A0N(n355), .A1N(\regArr[3][1] ), 
        .Y(n65) );
  OAI2BB2X1M U560 ( .B0(n212), .B1(n221), .A0N(n355), .A1N(\regArr[3][2] ), 
        .Y(n66) );
  OAI2BB2X1M U561 ( .B0(n211), .B1(n221), .A0N(n355), .A1N(\regArr[3][3] ), 
        .Y(n67) );
  OAI2BB2X1M U562 ( .B0(n210), .B1(n355), .A0N(n355), .A1N(\regArr[3][4] ), 
        .Y(n68) );
  OAI2BB2X1M U563 ( .B0(n209), .B1(n221), .A0N(n355), .A1N(\regArr[3][5] ), 
        .Y(n69) );
  OAI2BB2X1M U564 ( .B0(n208), .B1(n221), .A0N(n355), .A1N(\regArr[3][6] ), 
        .Y(n70) );
  OAI2BB2X1M U565 ( .B0(n207), .B1(n355), .A0N(n355), .A1N(\regArr[3][7] ), 
        .Y(n71) );
  OAI2BB2X1M U566 ( .B0(n214), .B1(n353), .A0N(n353), .A1N(REG1[0]), .Y(n48)
         );
  OAI2BB2X1M U567 ( .B0(n213), .B1(n224), .A0N(n353), .A1N(n377), .Y(n49) );
  OAI2BB2X1M U568 ( .B0(n212), .B1(n224), .A0N(n353), .A1N(n384), .Y(n50) );
  OAI2BB2XLM U569 ( .B0(n210), .B1(n224), .A0N(n353), .A1N(REG1[4]), .Y(n52)
         );
  OAI2BB2X1M U570 ( .B0(n209), .B1(n224), .A0N(n353), .A1N(REG1[5]), .Y(n53)
         );
  OAI2BB2X1M U571 ( .B0(n208), .B1(n224), .A0N(n353), .A1N(REG1[6]), .Y(n54)
         );
  OAI2BB2X1M U572 ( .B0(n207), .B1(n353), .A0N(n353), .A1N(REG1[7]), .Y(n55)
         );
  OAI2BB2X1M U573 ( .B0(n214), .B1(n354), .A0N(n354), .A1N(REG2[0]), .Y(n56)
         );
  OAI2BB2X1M U574 ( .B0(n213), .B1(n223), .A0N(n354), .A1N(REG2[1]), .Y(n57)
         );
  OAI2BB2X1M U575 ( .B0(n211), .B1(n223), .A0N(n354), .A1N(REG2[3]), .Y(n59)
         );
  OAI2BB2X1M U576 ( .B0(n214), .B1(n352), .A0N(n352), .A1N(REG0[0]), .Y(n40)
         );
  OAI2BB2X1M U577 ( .B0(n212), .B1(n226), .A0N(n352), .A1N(n381), .Y(n42) );
  OAI2BB2X1M U578 ( .B0(n211), .B1(n226), .A0N(n352), .A1N(REG0[3]), .Y(n43)
         );
  OAI2BB2X1M U579 ( .B0(n210), .B1(n354), .A0N(n354), .A1N(REG2[4]), .Y(n60)
         );
  OAI2BB2X1M U580 ( .B0(n209), .B1(n223), .A0N(n354), .A1N(REG2[5]), .Y(n61)
         );
  OAI2BB2X1M U581 ( .B0(n208), .B1(n223), .A0N(n354), .A1N(REG2[6]), .Y(n62)
         );
  OAI2BB2X1M U582 ( .B0(n207), .B1(n354), .A0N(n354), .A1N(REG2[7]), .Y(n63)
         );
  OAI2BB2X1M U583 ( .B0(n210), .B1(n352), .A0N(n352), .A1N(REG0[4]), .Y(n44)
         );
  OAI2BB2X1M U584 ( .B0(n209), .B1(n226), .A0N(n352), .A1N(REG0[5]), .Y(n45)
         );
  OAI2BB2X1M U585 ( .B0(n208), .B1(n226), .A0N(n352), .A1N(REG0[6]), .Y(n46)
         );
  OAI2BB2X1M U586 ( .B0(n207), .B1(n352), .A0N(n352), .A1N(REG0[7]), .Y(n47)
         );
  OAI2BB2X1M U587 ( .B0(n340), .B1(n348), .A0N(n348), .A1N(\regArr[8][0] ), 
        .Y(n104) );
  OAI2BB2X1M U588 ( .B0(n341), .B1(n348), .A0N(n348), .A1N(\regArr[8][1] ), 
        .Y(n105) );
  OAI2BB2X1M U589 ( .B0(n342), .B1(n240), .A0N(n348), .A1N(\regArr[8][2] ), 
        .Y(n106) );
  OAI2BB2X1M U590 ( .B0(n343), .B1(n240), .A0N(n348), .A1N(\regArr[8][3] ), 
        .Y(n107) );
  OAI2BB2X1M U591 ( .B0(n211), .B1(n350), .A0N(n350), .A1N(\regArr[10][3] ), 
        .Y(n123) );
  OAI2BB2X1M U592 ( .B0(n344), .B1(n240), .A0N(n348), .A1N(\regArr[8][4] ), 
        .Y(n108) );
  OAI2BB2X1M U593 ( .B0(n345), .B1(n240), .A0N(n348), .A1N(\regArr[8][5] ), 
        .Y(n109) );
  OAI2BB2X1M U594 ( .B0(n346), .B1(n240), .A0N(n348), .A1N(\regArr[8][6] ), 
        .Y(n110) );
  OAI2BB2X1M U595 ( .B0(n347), .B1(n348), .A0N(n348), .A1N(\regArr[8][7] ), 
        .Y(n111) );
  OAI2BB2X1M U596 ( .B0(n209), .B1(n350), .A0N(n350), .A1N(\regArr[10][5] ), 
        .Y(n125) );
  OAI2BB2X1M U597 ( .B0(n208), .B1(n237), .A0N(n350), .A1N(\regArr[10][6] ), 
        .Y(n126) );
  OAI2BB2X1M U598 ( .B0(n207), .B1(n350), .A0N(n350), .A1N(\regArr[10][7] ), 
        .Y(n127) );
  OAI2BB2X1M U599 ( .B0(n214), .B1(n237), .A0N(n350), .A1N(\regArr[10][0] ), 
        .Y(n120) );
  OAI2BB2X1M U600 ( .B0(n213), .B1(n237), .A0N(n350), .A1N(\regArr[10][1] ), 
        .Y(n121) );
  OAI2BB2X1M U601 ( .B0(n212), .B1(n237), .A0N(n350), .A1N(\regArr[10][2] ), 
        .Y(n122) );
  OAI2BB2X1M U602 ( .B0(n210), .B1(n350), .A0N(n350), .A1N(\regArr[10][4] ), 
        .Y(n124) );
  OAI2BB2X1M U603 ( .B0(n211), .B1(n351), .A0N(n351), .A1N(\regArr[11][3] ), 
        .Y(n131) );
  OAI2BB2X1M U604 ( .B0(n209), .B1(n351), .A0N(n351), .A1N(\regArr[11][5] ), 
        .Y(n133) );
  OAI2BB2X1M U605 ( .B0(n208), .B1(n236), .A0N(n351), .A1N(\regArr[11][6] ), 
        .Y(n134) );
  OAI2BB2X1M U606 ( .B0(n207), .B1(n351), .A0N(n351), .A1N(\regArr[11][7] ), 
        .Y(n135) );
  OAI2BB2X1M U607 ( .B0(n214), .B1(n236), .A0N(n351), .A1N(\regArr[11][0] ), 
        .Y(n128) );
  OAI2BB2X1M U608 ( .B0(n213), .B1(n236), .A0N(n351), .A1N(\regArr[11][1] ), 
        .Y(n129) );
  OAI2BB2X1M U609 ( .B0(n212), .B1(n236), .A0N(n351), .A1N(\regArr[11][2] ), 
        .Y(n130) );
  OAI2BB2X1M U610 ( .B0(n210), .B1(n351), .A0N(n351), .A1N(\regArr[11][4] ), 
        .Y(n132) );
  OAI2BB2X1M U611 ( .B0(n344), .B1(n238), .A0N(n349), .A1N(\regArr[9][4] ), 
        .Y(n116) );
  OAI2BB2X1M U612 ( .B0(n345), .B1(n349), .A0N(n349), .A1N(\regArr[9][5] ), 
        .Y(n117) );
  OAI2BB2X1M U613 ( .B0(n346), .B1(n349), .A0N(n349), .A1N(\regArr[9][6] ), 
        .Y(n118) );
  OAI2BB2X1M U614 ( .B0(n347), .B1(n349), .A0N(n349), .A1N(\regArr[9][7] ), 
        .Y(n119) );
  OAI2BB2X1M U615 ( .B0(n211), .B1(n238), .A0N(n349), .A1N(\regArr[9][3] ), 
        .Y(n115) );
  OAI2BB2X1M U616 ( .B0(n214), .B1(n238), .A0N(n349), .A1N(\regArr[9][0] ), 
        .Y(n112) );
  OAI2BB2X1M U617 ( .B0(n213), .B1(n238), .A0N(n349), .A1N(\regArr[9][1] ), 
        .Y(n113) );
  OAI2BB2X1M U618 ( .B0(n212), .B1(n238), .A0N(n349), .A1N(\regArr[9][2] ), 
        .Y(n114) );
  OAI2BB2X1M U619 ( .B0(n211), .B1(n224), .A0N(n353), .A1N(REG1[3]), .Y(n51)
         );
  OAI2BB2X1M U620 ( .B0(n213), .B1(n226), .A0N(n352), .A1N(REG0[1]), .Y(n41)
         );
  OAI2BB2X1M U621 ( .B0(n212), .B1(n223), .A0N(n354), .A1N(REG2[2]), .Y(n58)
         );
  INVX2M U622 ( .A(WrData[1]), .Y(n213) );
  INVX2M U623 ( .A(WrData[2]), .Y(n212) );
  INVX2M U624 ( .A(WrData[3]), .Y(n211) );
  INVX2M U625 ( .A(WrData[5]), .Y(n209) );
  INVX2M U626 ( .A(WrData[6]), .Y(n208) );
  INVX2M U627 ( .A(WrData[7]), .Y(n207) );
  INVX2M U628 ( .A(WrData[0]), .Y(n214) );
  INVX2M U629 ( .A(WrData[4]), .Y(n210) );
  INVX2M U630 ( .A(\regArr[5][5] ), .Y(n178) );
  INVX2M U631 ( .A(\regArr[4][5] ), .Y(n170) );
  INVX2M U632 ( .A(\regArr[5][6] ), .Y(n177) );
  INVX2M U633 ( .A(\regArr[4][6] ), .Y(n169) );
  INVX2M U634 ( .A(\regArr[5][0] ), .Y(n183) );
  INVX2M U635 ( .A(\regArr[4][0] ), .Y(n175) );
  INVX2M U636 ( .A(\regArr[5][4] ), .Y(n179) );
  INVX2M U637 ( .A(\regArr[4][4] ), .Y(n171) );
  INVX2M U638 ( .A(\regArr[5][7] ), .Y(n176) );
  INVX2M U639 ( .A(\regArr[4][7] ), .Y(n168) );
  INVX2M U640 ( .A(\regArr[5][1] ), .Y(n182) );
  INVX2M U641 ( .A(\regArr[4][1] ), .Y(n174) );
  INVX2M U642 ( .A(\regArr[5][2] ), .Y(n181) );
  INVX2M U643 ( .A(\regArr[4][2] ), .Y(n173) );
  INVX2M U644 ( .A(\regArr[5][3] ), .Y(n180) );
  INVX2M U645 ( .A(\regArr[4][3] ), .Y(n172) );
  INVX2M U646 ( .A(\regArr[7][5] ), .Y(n186) );
  INVX2M U647 ( .A(\regArr[6][5] ), .Y(n34) );
  INVX2M U648 ( .A(\regArr[7][6] ), .Y(n185) );
  INVX2M U649 ( .A(\regArr[6][6] ), .Y(n33) );
  INVX2M U650 ( .A(\regArr[7][0] ), .Y(n191) );
  INVX2M U651 ( .A(\regArr[6][0] ), .Y(n39) );
  INVX2M U652 ( .A(\regArr[7][4] ), .Y(n187) );
  INVX2M U653 ( .A(\regArr[6][4] ), .Y(n35) );
  INVX2M U654 ( .A(\regArr[7][7] ), .Y(n184) );
  INVX2M U655 ( .A(\regArr[6][7] ), .Y(n32) );
  INVX2M U656 ( .A(\regArr[7][1] ), .Y(n190) );
  INVX2M U657 ( .A(\regArr[6][1] ), .Y(n38) );
  INVX2M U658 ( .A(\regArr[7][2] ), .Y(n189) );
  INVX2M U659 ( .A(\regArr[6][2] ), .Y(n37) );
  INVX2M U660 ( .A(\regArr[7][3] ), .Y(n188) );
  INVX2M U661 ( .A(\regArr[6][3] ), .Y(n36) );
  INVX2M U662 ( .A(\regArr[14][5] ), .Y(n6) );
  INVX2M U663 ( .A(\regArr[15][5] ), .Y(n194) );
  INVX2M U664 ( .A(\regArr[14][6] ), .Y(n5) );
  INVX2M U665 ( .A(\regArr[15][6] ), .Y(n193) );
  INVX2M U666 ( .A(\regArr[14][0] ), .Y(n3) );
  INVX2M U667 ( .A(\regArr[15][0] ), .Y(n10) );
  INVX2M U668 ( .A(\regArr[14][4] ), .Y(n2) );
  INVX2M U669 ( .A(\regArr[15][4] ), .Y(n30) );
  INVX2M U670 ( .A(\regArr[15][7] ), .Y(n192) );
  INVX2M U671 ( .A(\regArr[14][7] ), .Y(n4) );
  INVX2M U672 ( .A(\regArr[14][1] ), .Y(n9) );
  INVX2M U673 ( .A(\regArr[15][1] ), .Y(n13) );
  INVX2M U674 ( .A(\regArr[14][2] ), .Y(n8) );
  INVX2M U675 ( .A(\regArr[15][2] ), .Y(n11) );
  INVX2M U676 ( .A(\regArr[14][3] ), .Y(n7) );
  INVX2M U677 ( .A(\regArr[15][3] ), .Y(n31) );
  INVX2M U678 ( .A(\regArr[12][5] ), .Y(n24) );
  INVX2M U679 ( .A(\regArr[13][5] ), .Y(n20) );
  INVX2M U680 ( .A(\regArr[12][6] ), .Y(n23) );
  INVX2M U681 ( .A(\regArr[13][6] ), .Y(n19) );
  INVX2M U682 ( .A(\regArr[12][0] ), .Y(n29) );
  INVX2M U683 ( .A(\regArr[13][0] ), .Y(n14) );
  INVX2M U684 ( .A(\regArr[12][4] ), .Y(n25) );
  INVX2M U685 ( .A(\regArr[13][4] ), .Y(n21) );
  INVX2M U686 ( .A(\regArr[13][7] ), .Y(n18) );
  INVX2M U687 ( .A(\regArr[12][7] ), .Y(n22) );
  INVX2M U688 ( .A(\regArr[12][1] ), .Y(n28) );
  INVX2M U689 ( .A(\regArr[13][1] ), .Y(n17) );
  INVX2M U690 ( .A(\regArr[12][2] ), .Y(n27) );
  INVX2M U691 ( .A(\regArr[13][2] ), .Y(n16) );
  INVX2M U692 ( .A(\regArr[12][3] ), .Y(n26) );
  INVX2M U693 ( .A(\regArr[13][3] ), .Y(n15) );
endmodule


module ALU_DW_div_uns_0 ( a, b, quotient, remainder, divide_by_0 );
  input [7:0] a;
  input [7:0] b;
  output [7:0] quotient;
  output [7:0] remainder;
  output divide_by_0;
  wire   n11, n4, n5, n1, n2, n3, n6, n10, n12, n13, n16, n17, n18, n19, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n7, n8, n9, n14, n15;
  assign quotient[2] = n11;
  assign quotient[4] = n4;
  assign quotient[1] = n5;

  OAI32X4M U33 ( .A0(n66), .A1(b[7]), .A2(n11), .B0(n67), .B1(n68), .Y(n5) );
  OAI31X4M U60 ( .A0(n25), .A1(n67), .A2(n92), .B0(n93), .Y(n11) );
  OAI32X4M U102 ( .A0(n129), .A1(quotient[5]), .A2(n130), .B0(n12), .B1(n131), 
        .Y(n4) );
  AOI211X4M U114 ( .A0(n140), .A1(n129), .B0(n141), .C0(n131), .Y(quotient[5])
         );
  OAI31X2M U147 ( .A0(n7), .A1(n122), .A2(n10), .B0(n124), .Y(n99) );
  OAI31X2M U148 ( .A0(n103), .A1(n101), .A2(n7), .B0(n104), .Y(n77) );
  OAI31X2M U149 ( .A0(n13), .A1(n135), .A2(n7), .B0(n136), .Y(n119) );
  OAI2BB1X2M U150 ( .A0N(n92), .A1N(n25), .B0(n94), .Y(n93) );
  NOR2X2M U151 ( .A(n7), .B(a[5]), .Y(n135) );
  NOR2X2M U152 ( .A(n7), .B(a[4]), .Y(n122) );
  NOR2X2M U153 ( .A(n7), .B(a[3]), .Y(n101) );
  OAI2BB2X1M U154 ( .B0(b[3]), .B1(n96), .A0N(n87), .A1N(n84), .Y(n91) );
  AND2X2M U155 ( .A(n112), .B(n110), .Y(n117) );
  OAI2BB2X1M U156 ( .B0(n14), .B1(n73), .A0N(n52), .A1N(n49), .Y(n56) );
  NOR2X2M U157 ( .A(n49), .B(n52), .Y(n73) );
  OAI2BB1X2M U158 ( .A0N(n108), .A1N(n106), .B0(n118), .Y(n112) );
  OAI21X2M U159 ( .A0(n106), .A1(n108), .B0(n15), .Y(n118) );
  OAI2BB1X2M U160 ( .A0N(n83), .A1N(n80), .B0(n97), .Y(n87) );
  OAI21X2M U161 ( .A0(n80), .A1(n83), .B0(n15), .Y(n97) );
  NOR2X2M U162 ( .A(n125), .B(n128), .Y(n133) );
  CLKXOR2X2M U163 ( .A(n80), .B(n81), .Y(n53) );
  NOR2X2M U164 ( .A(n6), .B(n82), .Y(n81) );
  CLKXOR2X2M U165 ( .A(n83), .B(n14), .Y(n82) );
  INVX2M U166 ( .A(n9), .Y(n8) );
  CLKXOR2X2M U167 ( .A(n125), .B(n126), .Y(n110) );
  NOR2X2M U168 ( .A(n10), .B(n127), .Y(n126) );
  CLKXOR2X2M U169 ( .A(n128), .B(n14), .Y(n127) );
  INVX2M U170 ( .A(n15), .Y(n14) );
  AOI2BB1X2M U171 ( .A0N(n140), .A1N(n129), .B0(n15), .Y(n141) );
  OAI2BB1X2M U172 ( .A0N(n138), .A1N(n135), .B0(n143), .Y(n140) );
  OAI21X2M U173 ( .A0(n135), .A1(n138), .B0(b[1]), .Y(n143) );
  INVX2M U174 ( .A(n11), .Y(n6) );
  XNOR2X2M U175 ( .A(n77), .B(n78), .Y(n49) );
  NOR2X2M U176 ( .A(n6), .B(n79), .Y(n78) );
  CLKXOR2X2M U177 ( .A(n75), .B(n8), .Y(n79) );
  OAI21X2M U178 ( .A0(n101), .A1(n99), .B0(n123), .Y(n108) );
  OAI2BB1X2M U179 ( .A0N(n99), .A1N(n101), .B0(n8), .Y(n123) );
  OAI21X2M U180 ( .A0(n122), .A1(n119), .B0(n134), .Y(n128) );
  AO21XLM U181 ( .A0(n119), .A1(n122), .B0(b[1]), .Y(n134) );
  INVX2M U182 ( .A(n4), .Y(n10) );
  OAI21X2M U183 ( .A0(n75), .A1(n77), .B0(n102), .Y(n83) );
  AO21XLM U184 ( .A0(n77), .A1(n75), .B0(n9), .Y(n102) );
  XNOR2X2M U185 ( .A(n41), .B(n42), .Y(n39) );
  NOR2X2M U186 ( .A(n1), .B(n43), .Y(n42) );
  CLKXOR2X2M U187 ( .A(n16), .B(n9), .Y(n43) );
  INVX2M U188 ( .A(n131), .Y(n17) );
  INVX2M U189 ( .A(n70), .Y(n2) );
  AND2X2M U190 ( .A(n39), .B(n38), .Y(n40) );
  CLKXOR2X2M U191 ( .A(n137), .B(n138), .Y(n125) );
  NAND2XLM U192 ( .A(quotient[5]), .B(n139), .Y(n137) );
  CLKXOR2X2M U193 ( .A(b[1]), .B(n135), .Y(n139) );
  XNOR2X2M U194 ( .A(n119), .B(n120), .Y(n106) );
  NOR2X2M U195 ( .A(n10), .B(n121), .Y(n120) );
  CLKXOR2X2M U196 ( .A(n122), .B(n8), .Y(n121) );
  OAI2BB1X2M U197 ( .A0N(n16), .A1N(n41), .B0(n74), .Y(n52) );
  OAI21X2M U198 ( .A0(n41), .A1(n16), .B0(n8), .Y(n74) );
  NOR2X2M U199 ( .A(n1), .B(n51), .Y(n50) );
  CLKXOR2X2M U200 ( .A(n52), .B(n14), .Y(n51) );
  CLKXOR2X2M U201 ( .A(n98), .B(n99), .Y(n80) );
  NAND2X2M U202 ( .A(quotient[3]), .B(n100), .Y(n98) );
  CLKXOR2X2M U203 ( .A(b[1]), .B(n101), .Y(n100) );
  XNOR2X2M U204 ( .A(n105), .B(n106), .Y(n84) );
  NAND2X2M U205 ( .A(quotient[3]), .B(n107), .Y(n105) );
  CLKXOR2X2M U206 ( .A(n15), .B(n108), .Y(n107) );
  BUFX2M U207 ( .A(b[1]), .Y(n9) );
  INVX2M U208 ( .A(b[2]), .Y(n15) );
  NOR3X1M U209 ( .A(quotient[5]), .B(n4), .C(n129), .Y(n113) );
  INVX2M U210 ( .A(n48), .Y(n16) );
  INVX2M U211 ( .A(n64), .Y(quotient[7]) );
  INVX2M U212 ( .A(n65), .Y(quotient[6]) );
  OAI2B1X2M U213 ( .A1N(n88), .A0(n91), .B0(n95), .Y(n92) );
  INVX2M U214 ( .A(n132), .Y(n12) );
  AOI31X2M U215 ( .A0(n132), .A1(n18), .A2(n94), .B0(n17), .Y(n130) );
  OAI2BB2X1M U216 ( .B0(n14), .B1(n133), .A0N(n128), .A1N(n125), .Y(n132) );
  AO21XLM U217 ( .A0(n101), .A1(quotient[3]), .B0(a[3]), .Y(n104) );
  INVXLM U218 ( .A(quotient[5]), .Y(n13) );
  AO21XLM U219 ( .A0(n135), .A1(quotient[5]), .B0(a[5]), .Y(n136) );
  AO21XLM U220 ( .A0(n4), .A1(n122), .B0(a[4]), .Y(n124) );
  INVX2M U221 ( .A(n5), .Y(n1) );
  OAI21X2M U222 ( .A0(n7), .A1(n65), .B0(a[6]), .Y(n138) );
  NAND3X2M U223 ( .A(n19), .B(n18), .C(n94), .Y(n131) );
  OAI21X2M U224 ( .A0(n53), .A1(n56), .B0(n72), .Y(n70) );
  AO21XLM U225 ( .A0(n56), .A1(n53), .B0(n19), .Y(n72) );
  OAI21X2M U226 ( .A0(n35), .A1(n36), .B0(n37), .Y(n33) );
  AO21XLM U227 ( .A0(n36), .A1(n35), .B0(n19), .Y(n37) );
  OAI22X1M U228 ( .A0(n38), .A1(n39), .B0(n14), .B1(n40), .Y(n36) );
  CLKXOR2X2M U229 ( .A(n49), .B(n50), .Y(n35) );
  NAND3X2M U230 ( .A(n64), .B(n65), .C(a[7]), .Y(n129) );
  OAI211X2M U231 ( .A0(a[7]), .A1(n7), .B0(n17), .C0(n142), .Y(n64) );
  NOR2X2M U232 ( .A(n14), .B(n9), .Y(n142) );
  AOI2BB2XLM U233 ( .B0(n5), .B1(n16), .A0N(n8), .A1N(a[0]), .Y(n47) );
  OAI2BB1X1M U234 ( .A0N(n11), .A1N(n75), .B0(n76), .Y(n41) );
  OAI21X2M U235 ( .A0(n6), .A1(n7), .B0(a[2]), .Y(n76) );
  INVX2M U236 ( .A(n103), .Y(quotient[3]) );
  OA21X2M U237 ( .A0(n44), .A1(n45), .B0(n46), .Y(n38) );
  OAI21X2M U238 ( .A0(a[0]), .A1(n7), .B0(n8), .Y(n46) );
  NOR2X2M U239 ( .A(n47), .B(n7), .Y(n45) );
  AOI21XLM U240 ( .A0(n48), .A1(n5), .B0(a[1]), .Y(n44) );
  CLKXOR2X2M U241 ( .A(n109), .B(n110), .Y(n88) );
  NAND2X2M U242 ( .A(quotient[3]), .B(n111), .Y(n109) );
  CLKXOR2X2M U243 ( .A(n19), .B(n112), .Y(n111) );
  NAND2X2M U244 ( .A(n113), .B(n103), .Y(n25) );
  NOR2X2M U245 ( .A(n7), .B(a[2]), .Y(n75) );
  NOR2X2M U246 ( .A(n7), .B(a[1]), .Y(n48) );
  OAI32X1M U247 ( .A0(n23), .A1(n5), .A2(n11), .B0(b[7]), .B1(n24), .Y(
        quotient[0]) );
  AO21XLM U248 ( .A0(n24), .A1(b[7]), .B0(n25), .Y(n23) );
  OAI21X2M U249 ( .A0(n26), .A1(n27), .B0(n28), .Y(n24) );
  OAI2BB1X2M U250 ( .A0N(n27), .A1N(n26), .B0(b[6]), .Y(n28) );
  OAI22X1M U251 ( .A0(n57), .A1(n70), .B0(b[4]), .B1(n71), .Y(n63) );
  NOR2X2M U252 ( .A(n2), .B(n3), .Y(n71) );
  INVX2M U253 ( .A(n57), .Y(n3) );
  OAI211X2M U254 ( .A0(a[7]), .A1(n8), .B0(n17), .C0(n144), .Y(n65) );
  AOI2B1X1M U255 ( .A1N(a[6]), .A0(b[0]), .B0(n14), .Y(n144) );
  INVX2M U256 ( .A(b[4]), .Y(n18) );
  NAND2X2M U257 ( .A(n94), .B(n114), .Y(n103) );
  OAI2B2X1M U258 ( .A1N(n113), .A0(n115), .B0(b[4]), .B1(n116), .Y(n114) );
  NOR2BX2M U259 ( .AN(n116), .B(n18), .Y(n115) );
  OAI22X1M U260 ( .A0(n110), .A1(n112), .B0(n117), .B1(n19), .Y(n116) );
  OAI2BB2X1M U261 ( .B0(b[5]), .B1(n29), .A0N(n30), .A1N(n31), .Y(n27) );
  NOR2X2M U262 ( .A(n31), .B(n30), .Y(n29) );
  OAI21X2M U263 ( .A0(n32), .A1(n33), .B0(n34), .Y(n30) );
  XNOR2X2M U264 ( .A(n57), .B(n58), .Y(n31) );
  AO21XLM U265 ( .A0(n68), .A1(b[6]), .B0(n25), .Y(n66) );
  OAI21X2M U266 ( .A0(n60), .A1(n63), .B0(n69), .Y(n68) );
  OAI2BB1X2M U267 ( .A0N(n63), .A1N(n60), .B0(b[5]), .Y(n69) );
  NOR2X2M U268 ( .A(n84), .B(n87), .Y(n96) );
  OAI2B1X2M U269 ( .A1N(n91), .A0(n88), .B0(b[4]), .Y(n95) );
  AO21XLM U270 ( .A0(n33), .A1(n32), .B0(b[4]), .Y(n34) );
  XNOR2X2M U271 ( .A(n84), .B(n85), .Y(n57) );
  NOR2X2M U272 ( .A(n6), .B(n86), .Y(n85) );
  CLKXOR2X2M U273 ( .A(n87), .B(b[3]), .Y(n86) );
  NOR2X2M U274 ( .A(n67), .B(b[5]), .Y(n94) );
  XNOR2X2M U275 ( .A(n53), .B(n54), .Y(n32) );
  NOR2X2M U276 ( .A(n1), .B(n55), .Y(n54) );
  CLKXOR2X2M U277 ( .A(n56), .B(b[3]), .Y(n55) );
  INVX2M U278 ( .A(b[3]), .Y(n19) );
  NOR2X2M U279 ( .A(n1), .B(n59), .Y(n58) );
  CLKXOR2X2M U280 ( .A(b[4]), .B(n2), .Y(n59) );
  BUFX4M U281 ( .A(n22), .Y(n7) );
  INVX2M U282 ( .A(b[0]), .Y(n22) );
  OR2X2M U283 ( .A(b[6]), .B(b[7]), .Y(n67) );
  XNOR2X2M U284 ( .A(n88), .B(n89), .Y(n60) );
  NOR2X2M U285 ( .A(n6), .B(n90), .Y(n89) );
  CLKXOR2X2M U286 ( .A(n91), .B(b[4]), .Y(n90) );
  CLKXOR2X2M U287 ( .A(n60), .B(n61), .Y(n26) );
  NOR2X2M U288 ( .A(n1), .B(n62), .Y(n61) );
  CLKXOR2X2M U289 ( .A(n63), .B(b[5]), .Y(n62) );
endmodule


module ALU_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16
;

  XNOR3X2M U4 ( .A(B[6]), .B(A[6]), .C(n5), .Y(DIFF[6]) );
  XNOR3X2M U7 ( .A(B[5]), .B(A[5]), .C(n8), .Y(DIFF[5]) );
  XNOR3X2M U10 ( .A(B[4]), .B(A[4]), .C(n10), .Y(DIFF[4]) );
  XNOR3X2M U13 ( .A(B[3]), .B(A[3]), .C(n12), .Y(DIFF[3]) );
  XNOR3X2M U19 ( .A(B[1]), .B(A[1]), .C(n16), .Y(DIFF[1]) );
  OAI2BB2X1M U25 ( .B0(B[3]), .B1(n11), .A0N(n12), .A1N(A[3]), .Y(n10) );
  OAI21X2M U26 ( .A0(n2), .A1(n1), .B0(n13), .Y(n12) );
  AO21XLM U27 ( .A0(n1), .A1(n2), .B0(B[2]), .Y(n13) );
  INVX2M U28 ( .A(n14), .Y(n2) );
  XOR3XLM U29 ( .A(B[2]), .B(n1), .C(n14), .Y(DIFF[2]) );
  OAI2BB2X1M U30 ( .B0(B[1]), .B1(n15), .A0N(n16), .A1N(A[1]), .Y(n14) );
  NOR2X2M U31 ( .A(A[1]), .B(n16), .Y(n15) );
  INVX2M U32 ( .A(A[0]), .Y(n3) );
  INVX2M U33 ( .A(A[2]), .Y(n1) );
  NAND2X1M U34 ( .A(B[0]), .B(n3), .Y(n16) );
  OAI2BB2X1M U35 ( .B0(B[4]), .B1(n9), .A0N(n10), .A1N(A[4]), .Y(n8) );
  NOR2X2M U36 ( .A(A[4]), .B(n10), .Y(n9) );
  OAI2BB2X1M U37 ( .B0(B[5]), .B1(n7), .A0N(n8), .A1N(A[5]), .Y(n5) );
  NOR2X2M U38 ( .A(A[5]), .B(n8), .Y(n7) );
  XOR3XLM U39 ( .A(B[7]), .B(A[7]), .C(n4), .Y(DIFF[7]) );
  OAI21X2M U40 ( .A0(A[6]), .A1(n5), .B0(n6), .Y(n4) );
  OAI2BB1X2M U41 ( .A0N(n5), .A1N(A[6]), .B0(B[6]), .Y(n6) );
  NOR2X2M U42 ( .A(A[3]), .B(n12), .Y(n11) );
  OAI21XLM U43 ( .A0(B[0]), .A1(n3), .B0(n16), .Y(DIFF[0]) );
endmodule


module ALU_DW01_add_0 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13;

  OAI2BB1X2M U22 ( .A0N(n10), .A1N(A[2]), .B0(n11), .Y(n8) );
  OAI21X2M U23 ( .A0(A[2]), .A1(n10), .B0(B[2]), .Y(n11) );
  OAI2BB1X2M U24 ( .A0N(n12), .A1N(A[1]), .B0(n13), .Y(n10) );
  OAI21X2M U25 ( .A0(n12), .A1(A[1]), .B0(B[1]), .Y(n13) );
  XOR3XLM U26 ( .A(B[2]), .B(A[2]), .C(n10), .Y(SUM[2]) );
  XOR3XLM U27 ( .A(B[1]), .B(A[1]), .C(n12), .Y(SUM[1]) );
  OAI2BB1X2M U28 ( .A0N(n4), .A1N(A[5]), .B0(n5), .Y(n2) );
  OAI21X2M U29 ( .A0(A[5]), .A1(n4), .B0(B[5]), .Y(n5) );
  XOR3XLM U30 ( .A(B[5]), .B(A[5]), .C(n4), .Y(SUM[5]) );
  XOR3XLM U31 ( .A(B[7]), .B(A[7]), .C(n1), .Y(SUM[7]) );
  AO2B2X2M U32 ( .B0(n2), .B1(A[6]), .A0(B[6]), .A1N(n3), .Y(n1) );
  NOR2X2M U33 ( .A(A[6]), .B(n2), .Y(n3) );
  XOR3XLM U34 ( .A(B[6]), .B(A[6]), .C(n2), .Y(SUM[6]) );
  AO22X1M U35 ( .A0(n6), .A1(A[4]), .B0(n7), .B1(B[4]), .Y(n4) );
  OR2X2M U36 ( .A(A[4]), .B(n6), .Y(n7) );
  AO22X1M U37 ( .A0(n8), .A1(A[3]), .B0(n9), .B1(B[3]), .Y(n6) );
  OR2X2M U38 ( .A(A[3]), .B(n8), .Y(n9) );
  AND2X1M U39 ( .A(B[0]), .B(A[0]), .Y(n12) );
  XOR3XLM U40 ( .A(B[4]), .B(A[4]), .C(n6), .Y(SUM[4]) );
  XOR3XLM U41 ( .A(B[3]), .B(A[3]), .C(n8), .Y(SUM[3]) );
  XOR2XLM U42 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module ALU_DW02_mult_0 ( A, B, TC, PRODUCT );
  input [7:0] A;
  input [7:0] B;
  output [15:0] PRODUCT;
  input TC;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73,
         n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n57, n99, n100,
         n101, n102;

  XNOR3X2M U25 ( .A(n16), .B(n18), .C(n15), .Y(PRODUCT[6]) );
  XNOR3X2M U28 ( .A(n22), .B(n19), .C(n20), .Y(n32) );
  XNOR3X2M U48 ( .A(n62), .B(n59), .C(n60), .Y(n66) );
  XNOR3X2M U49 ( .A(n55), .B(n58), .C(n56), .Y(n60) );
  OAI22X1M U107 ( .A0(n82), .A1(n83), .B0(n84), .B1(n85), .Y(n74) );
  OAI2BB2X1M U108 ( .B0(n90), .B1(n91), .A0N(n92), .A1N(n4), .Y(n86) );
  NAND2X2M U109 ( .A(n99), .B(A[3]), .Y(n72) );
  NAND2X2M U110 ( .A(n101), .B(A[3]), .Y(n58) );
  XOR3XLM U111 ( .A(n30), .B(n31), .C(n32), .Y(n33) );
  XOR3XLM U112 ( .A(n35), .B(n34), .C(n33), .Y(n15) );
  XOR3XLM U113 ( .A(n2), .B(n68), .C(n69), .Y(n75) );
  AOI2BB2X2M U114 ( .B0(n68), .B1(n69), .A0N(n70), .A1N(n71), .Y(n55) );
  NOR2X2M U115 ( .A(n69), .B(n68), .Y(n70) );
  CLKXOR2X2M U116 ( .A(n27), .B(n28), .Y(n26) );
  AOI22X1M U117 ( .A0(n29), .A1(n30), .B0(n31), .B1(n32), .Y(n28) );
  OAI22X1M U118 ( .A0(n33), .A1(n34), .B0(n35), .B1(n36), .Y(n27) );
  OR2X2M U119 ( .A(n32), .B(n31), .Y(n29) );
  AOI2BB2X2M U120 ( .B0(n72), .B1(n73), .A0N(n74), .A1N(n75), .Y(n59) );
  NAND2X2M U121 ( .A(n74), .B(n75), .Y(n73) );
  AOI21BX2M U122 ( .A0(n59), .A1(n60), .B0N(n61), .Y(n35) );
  OAI21X2M U123 ( .A0(n59), .A1(n60), .B0(n62), .Y(n61) );
  AND2X2M U124 ( .A(n34), .B(n33), .Y(n36) );
  AOI2BB1X2M U125 ( .A0N(n55), .A1N(n56), .B0(n57), .Y(n31) );
  AOI21X2M U126 ( .A0(n55), .A1(n56), .B0(n58), .Y(n57) );
  NOR2BX2M U127 ( .AN(n99), .B(n5), .Y(n94) );
  XOR3XLM U128 ( .A(n74), .B(n72), .C(n75), .Y(n79) );
  NAND2BX2M U129 ( .AN(n80), .B(n94), .Y(n83) );
  INVX2M U130 ( .A(n100), .Y(n99) );
  INVX2M U131 ( .A(B[1]), .Y(n100) );
  INVX2M U132 ( .A(n102), .Y(n101) );
  INVX2M U133 ( .A(B[2]), .Y(n102) );
  XOR3XLM U134 ( .A(n85), .B(n3), .C(n83), .Y(n87) );
  XNOR2X2M U135 ( .A(n80), .B(n94), .Y(n92) );
  INVX2M U136 ( .A(n71), .Y(n2) );
  NOR3X2M U137 ( .A(n6), .B(n8), .C(n67), .Y(n49) );
  XOR3XLM U138 ( .A(n41), .B(n42), .C(n43), .Y(n19) );
  XOR3XLM U139 ( .A(n51), .B(n48), .C(n49), .Y(n56) );
  XNOR2X2M U140 ( .A(n53), .B(n52), .Y(n48) );
  XNOR2X2M U141 ( .A(n67), .B(n81), .Y(n68) );
  NOR2X2M U142 ( .A(n8), .B(n6), .Y(n81) );
  NOR2BX2M U143 ( .AN(n52), .B(n53), .Y(n43) );
  NOR2X2M U144 ( .A(n5), .B(n8), .Y(n52) );
  OAI22X1M U145 ( .A0(n15), .A1(n16), .B0(n17), .B1(n18), .Y(n14) );
  AND2X2M U146 ( .A(n16), .B(n15), .Y(n17) );
  NOR2BX2M U147 ( .AN(n83), .B(n3), .Y(n84) );
  NOR2X2M U148 ( .A(n67), .B(n80), .Y(n69) );
  NAND2X2M U149 ( .A(n101), .B(A[0]), .Y(n80) );
  NOR2X2M U150 ( .A(n7), .B(n6), .Y(n44) );
  INVX2M U151 ( .A(A[0]), .Y(n6) );
  INVX2M U152 ( .A(A[1]), .Y(n5) );
  OAI2BB2X1M U153 ( .B0(n63), .B1(n64), .A0N(n65), .A1N(n66), .Y(n18) );
  NOR2X2M U154 ( .A(n66), .B(n65), .Y(n64) );
  XOR3XLM U155 ( .A(n63), .B(n65), .C(n66), .Y(PRODUCT[5]) );
  AOI2BB2X2M U156 ( .B0(n48), .B1(n49), .A0N(n50), .A1N(n51), .Y(n20) );
  NOR2X2M U157 ( .A(n49), .B(n48), .Y(n50) );
  OAI21X2M U158 ( .A0(n1), .A1(n76), .B0(n77), .Y(n65) );
  OAI2BB1X2M U159 ( .A0N(n76), .A1N(n1), .B0(n78), .Y(n77) );
  INVX2M U160 ( .A(n79), .Y(n1) );
  NAND2X2M U161 ( .A(n99), .B(A[2]), .Y(n85) );
  NAND2X2M U162 ( .A(n101), .B(A[2]), .Y(n71) );
  OAI2BB1X2M U163 ( .A0N(n86), .A1N(n87), .B0(n88), .Y(n76) );
  OAI21X2M U164 ( .A0(n87), .A1(n86), .B0(n89), .Y(n88) );
  XOR3XLM U165 ( .A(n78), .B(n76), .C(n79), .Y(PRODUCT[4]) );
  NAND2X2M U166 ( .A(PRODUCT[0]), .B(n94), .Y(n93) );
  NOR2X2M U167 ( .A(n43), .B(n42), .Y(n40) );
  NAND2X2M U168 ( .A(n101), .B(A[4]), .Y(n30) );
  AOI21X2M U169 ( .A0(n19), .A1(n20), .B0(n21), .Y(n13) );
  AOI2BB1X2M U170 ( .A0N(n19), .A1N(n20), .B0(n22), .Y(n21) );
  INVX2M U171 ( .A(n82), .Y(n3) );
  NOR2X2M U172 ( .A(n4), .B(n92), .Y(n90) );
  INVX2M U173 ( .A(n93), .Y(n4) );
  NAND2X2M U174 ( .A(n99), .B(A[5]), .Y(n34) );
  XOR3XLM U175 ( .A(n91), .B(n93), .C(n92), .Y(PRODUCT[2]) );
  XOR3XLM U176 ( .A(n89), .B(n87), .C(n86), .Y(PRODUCT[3]) );
  AND2X2M U177 ( .A(n99), .B(A[4]), .Y(n62) );
  CLKXOR2X2M U178 ( .A(n97), .B(n98), .Y(PRODUCT[1]) );
  NAND2X2M U179 ( .A(n99), .B(A[0]), .Y(n98) );
  NAND2X2M U180 ( .A(A[1]), .B(B[0]), .Y(n97) );
  INVX2M U181 ( .A(B[4]), .Y(n8) );
  XOR3XLM U182 ( .A(n9), .B(n10), .C(n11), .Y(PRODUCT[7]) );
  NAND2X2M U183 ( .A(B[7]), .B(A[0]), .Y(n10) );
  XOR3XLM U184 ( .A(n24), .B(n25), .C(n26), .Y(n9) );
  XOR3XLM U185 ( .A(n12), .B(n13), .C(n14), .Y(n11) );
  CLKXOR2X2M U186 ( .A(n44), .B(n54), .Y(n42) );
  NOR2BX2M U187 ( .AN(B[5]), .B(n5), .Y(n54) );
  NAND2X2M U188 ( .A(B[5]), .B(A[0]), .Y(n53) );
  NAND2XLM U189 ( .A(A[2]), .B(B[4]), .Y(n41) );
  NAND2X2M U190 ( .A(A[1]), .B(B[3]), .Y(n67) );
  INVX2M U191 ( .A(B[6]), .Y(n7) );
  NAND2X2M U192 ( .A(A[2]), .B(B[3]), .Y(n51) );
  NAND2XLM U193 ( .A(A[2]), .B(B[0]), .Y(n91) );
  CLKXOR2X2M U194 ( .A(n95), .B(n96), .Y(n82) );
  NAND2X2M U195 ( .A(A[0]), .B(B[3]), .Y(n95) );
  AND2X2M U196 ( .A(n101), .B(A[1]), .Y(n96) );
  NOR2BX1M U197 ( .AN(B[0]), .B(n6), .Y(PRODUCT[0]) );
  XOR3XLM U198 ( .A(n37), .B(n38), .C(n39), .Y(n25) );
  NAND2XLM U199 ( .A(A[7]), .B(B[0]), .Y(n39) );
  AOI211X2M U200 ( .A0(n44), .A1(B[5]), .B0(n7), .C0(n5), .Y(n37) );
  OAI2BB2X1M U201 ( .B0(n40), .B1(n41), .A0N(n42), .A1N(n43), .Y(n38) );
  AND2X1M U202 ( .A(B[0]), .B(A[3]), .Y(n89) );
  AND2X2M U203 ( .A(B[3]), .B(A[3]), .Y(n22) );
  NAND2X1M U204 ( .A(A[6]), .B(B[0]), .Y(n16) );
  NAND2XLM U205 ( .A(B[0]), .B(A[4]), .Y(n78) );
  CLKXOR2X2M U206 ( .A(n45), .B(n46), .Y(n24) );
  AND2X2M U207 ( .A(n99), .B(A[6]), .Y(n45) );
  AOI31XLM U208 ( .A0(n2), .A1(A[5]), .A2(B[5]), .B0(n47), .Y(n46) );
  AOI22XLM U209 ( .A0(B[5]), .A1(A[2]), .B0(n101), .B1(A[5]), .Y(n47) );
  AOI31XLM U210 ( .A0(A[4]), .A1(n22), .A2(B[4]), .B0(n23), .Y(n12) );
  AOI22XLM U211 ( .A0(B[4]), .A1(A[3]), .B0(A[4]), .B1(B[3]), .Y(n23) );
  AND2X1M U212 ( .A(B[0]), .B(A[5]), .Y(n63) );
endmodule


module ALU ( A, B, ALU_FUN, CLK, RST, Enable, ALU_OUT, OUT_VALID );
  input [7:0] A;
  input [7:0] B;
  input [3:0] ALU_FUN;
  output [7:0] ALU_OUT;
  input CLK, RST, Enable;
  output OUT_VALID;
  wire   n148, n149, n150, n151, n152, n153, n154, n155, n156, N91, N92, N93,
         N94, N95, N96, N97, N98, N99, N100, N101, N102, N103, N104, N105,
         N106, N107, N108, N109, N110, N111, N112, N113, N114, N115, N116,
         N117, N118, N119, N120, N121, N122, n1, n2, n3, n4, n5, n6, n7, n9,
         n10, n11, n12, n13, n14, n15, n16, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95,
         n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124, n125, n8, n17, n18, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n157, n158;
  wire   [7:0] ALU_OUT_Comb;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7;

  ALU_DW_div_uns_0 div_51 ( .a({n141, n140, n139, n138, n157, n137, n136, n135}), .b({B[7:3], n146, n144, B[0]}), .quotient({N122, N121, N120, N119, N118, 
        N117, N116, N115}) );
  ALU_DW01_sub_0 sub_45 ( .A({n141, n140, n139, n138, n157, n137, n136, n135}), 
        .B({B[7:3], n146, n144, B[0]}), .CI(1'b0), .DIFF({N106, N105, N104, 
        N103, N102, N101, N100, N99}) );
  ALU_DW01_add_0 add_42 ( .A({n141, n140, n139, n138, n157, n137, A[1], n135}), 
        .B({B[7:3], n146, n144, B[0]}), .CI(1'b0), .SUM({N98, N97, N96, N95, 
        N94, N93, N92, N91}) );
  ALU_DW02_mult_0 mult_48 ( .A({n141, n140, n139, n138, n157, n137, n136, n135}), .B({B[7:3], n146, n144, B[0]}), .TC(1'b0), .PRODUCT({
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, N114, N113, N112, 
        N111, N110, N109, N108, N107}) );
  NOR4BX4M U94 ( .AN(ALU_FUN[3]), .B(n27), .C(n25), .D(ALU_FUN[1]), .Y(n53) );
  DFFRQX2M \ALU_OUT_reg[2]  ( .D(ALU_OUT_Comb[2]), .CK(CLK), .RN(RST), .Q(n153) );
  DFFRQX2M \ALU_OUT_reg[4]  ( .D(ALU_OUT_Comb[4]), .CK(CLK), .RN(RST), .Q(n151) );
  DFFRQX2M \ALU_OUT_reg[6]  ( .D(ALU_OUT_Comb[6]), .CK(CLK), .RN(RST), .Q(n149) );
  DFFRQX2M \ALU_OUT_reg[0]  ( .D(ALU_OUT_Comb[0]), .CK(CLK), .RN(RST), .Q(n155) );
  DFFRQX2M \ALU_OUT_reg[1]  ( .D(ALU_OUT_Comb[1]), .CK(CLK), .RN(RST), .Q(n154) );
  DFFRQX2M \ALU_OUT_reg[3]  ( .D(ALU_OUT_Comb[3]), .CK(CLK), .RN(RST), .Q(n152) );
  DFFRQX2M \ALU_OUT_reg[5]  ( .D(ALU_OUT_Comb[5]), .CK(CLK), .RN(RST), .Q(n150) );
  DFFRQX2M \ALU_OUT_reg[7]  ( .D(ALU_OUT_Comb[7]), .CK(CLK), .RN(RST), .Q(n148) );
  DFFRQX2M OUT_VALID_reg ( .D(Enable), .CK(CLK), .RN(RST), .Q(n156) );
  NAND3X2M U134 ( .A(n98), .B(n26), .C(ALU_FUN[0]), .Y(n49) );
  NOR2X2M U135 ( .A(ALU_FUN[2]), .B(ALU_FUN[3]), .Y(n97) );
  BUFX2M U136 ( .A(n44), .Y(n8) );
  INVX1M U137 ( .A(ALU_FUN[0]), .Y(n27) );
  NOR3BX2M U138 ( .AN(n97), .B(n27), .C(ALU_FUN[1]), .Y(n44) );
  BUFX2M U139 ( .A(n32), .Y(n17) );
  CLKINVX2M U140 ( .A(ALU_FUN[1]), .Y(n26) );
  NOR3BX2M U141 ( .AN(n97), .B(n26), .C(ALU_FUN[0]), .Y(n32) );
  BUFX2M U142 ( .A(n42), .Y(n18) );
  NOR3BX2M U143 ( .AN(n97), .B(n27), .C(n26), .Y(n42) );
  CLKBUFX12M U144 ( .A(n156), .Y(OUT_VALID) );
  CLKBUFX12M U145 ( .A(n148), .Y(ALU_OUT[7]) );
  CLKBUFX12M U146 ( .A(n150), .Y(ALU_OUT[5]) );
  CLKBUFX12M U147 ( .A(n152), .Y(ALU_OUT[3]) );
  CLKBUFX12M U148 ( .A(n154), .Y(ALU_OUT[1]) );
  CLKBUFX12M U149 ( .A(n155), .Y(ALU_OUT[0]) );
  CLKBUFX12M U150 ( .A(n149), .Y(ALU_OUT[6]) );
  CLKBUFX12M U151 ( .A(n151), .Y(ALU_OUT[4]) );
  CLKBUFX12M U152 ( .A(n153), .Y(ALU_OUT[2]) );
  BUFX2M U153 ( .A(n34), .Y(n143) );
  BUFX2M U154 ( .A(n40), .Y(n142) );
  INVX2M U155 ( .A(n147), .Y(n146) );
  INVX2M U156 ( .A(n145), .Y(n144) );
  BUFX4M U157 ( .A(A[5]), .Y(n139) );
  BUFX4M U158 ( .A(A[4]), .Y(n138) );
  BUFX4M U159 ( .A(A[2]), .Y(n137) );
  BUFX2M U160 ( .A(A[1]), .Y(n136) );
  BUFX4M U161 ( .A(A[0]), .Y(n135) );
  OAI32X1M U162 ( .A0(n82), .A1(n122), .A2(n123), .B0(n137), .B1(n147), .Y(
        n120) );
  INVX2M U163 ( .A(n41), .Y(n22) );
  INVX2M U164 ( .A(n39), .Y(n21) );
  OAI2BB1X2M U165 ( .A0N(n98), .A1N(n99), .B0(n100), .Y(n41) );
  NAND2X2M U166 ( .A(n100), .B(n124), .Y(n39) );
  INVX2M U167 ( .A(n142), .Y(n24) );
  INVX2M U168 ( .A(n49), .Y(n23) );
  OAI21X2M U169 ( .A0(n22), .A1(n9), .B0(n49), .Y(n81) );
  OAI21X2M U170 ( .A0(n22), .A1(n6), .B0(n49), .Y(n67) );
  OAI21X2M U171 ( .A0(n22), .A1(n3), .B0(n49), .Y(n52) );
  INVX2M U172 ( .A(n38), .Y(n20) );
  AND2X2M U173 ( .A(n97), .B(n99), .Y(n43) );
  INVX2M U174 ( .A(n105), .Y(n1) );
  INVX2M U175 ( .A(n54), .Y(n4) );
  AOI31X2M U176 ( .A0(n75), .A1(n76), .A2(n77), .B0(n28), .Y(ALU_OUT_Comb[2])
         );
  AOI222X1M U177 ( .A0(A[1]), .A1(n20), .B0(n80), .B1(n147), .C0(n146), .C1(
        n81), .Y(n76) );
  AOI222XLM U178 ( .A0(n157), .A1(n53), .B0(N109), .B1(n17), .C0(n143), .C1(
        n82), .Y(n75) );
  AOI221XLM U179 ( .A0(N93), .A1(n43), .B0(N101), .B1(n8), .C0(n78), .Y(n77)
         );
  OAI221X1M U180 ( .A0(n49), .A1(n9), .B0(n137), .B1(n24), .C0(n79), .Y(n78)
         );
  NAND2XLM U181 ( .A(N117), .B(n18), .Y(n79) );
  OAI221X1M U182 ( .A0(n49), .A1(n6), .B0(n138), .B1(n24), .C0(n65), .Y(n64)
         );
  NAND2XLM U183 ( .A(N119), .B(n18), .Y(n65) );
  OAI221X1M U184 ( .A0(n3), .A1(n49), .B0(n140), .B1(n24), .C0(n50), .Y(n48)
         );
  NAND2XLM U185 ( .A(N121), .B(n18), .Y(n50) );
  AOI31X2M U186 ( .A0(n91), .A1(n92), .A2(n93), .B0(n28), .Y(ALU_OUT_Comb[0])
         );
  AOI222XLM U187 ( .A0(N115), .A1(n18), .B0(n135), .B1(n23), .C0(n142), .C1(
        n11), .Y(n92) );
  AOI22XLM U188 ( .A0(N91), .A1(n43), .B0(N99), .B1(n8), .Y(n91) );
  AOI211X2M U189 ( .A0(n136), .A1(n53), .B0(n94), .C0(n95), .Y(n93) );
  AOI31X2M U190 ( .A0(n83), .A1(n84), .A2(n85), .B0(n28), .Y(ALU_OUT_Comb[1])
         );
  AOI222XLM U191 ( .A0(N116), .A1(n18), .B0(A[1]), .B1(n23), .C0(n142), .C1(
        n10), .Y(n84) );
  AOI22XLM U192 ( .A0(N92), .A1(n43), .B0(N100), .B1(n8), .Y(n83) );
  AOI211X2M U193 ( .A0(n137), .A1(n53), .B0(n86), .C0(n87), .Y(n85) );
  OAI2BB2XLM U194 ( .B0(n96), .B1(n19), .A0N(N107), .A1N(n17), .Y(n95) );
  AOI221XLM U195 ( .A0(n143), .A1(n11), .B0(n135), .B1(n41), .C0(n23), .Y(n96)
         );
  NOR3BX2M U196 ( .AN(ALU_FUN[3]), .B(ALU_FUN[1]), .C(ALU_FUN[2]), .Y(n125) );
  NAND4X2M U197 ( .A(ALU_FUN[3]), .B(ALU_FUN[1]), .C(ALU_FUN[2]), .D(n27), .Y(
        n38) );
  OAI221X1M U198 ( .A0(n144), .A1(n88), .B0(n89), .B1(n145), .C0(n90), .Y(n86)
         );
  AOI221XLM U199 ( .A0(A[1]), .A1(n143), .B0(n39), .B1(n10), .C0(n142), .Y(n88) );
  AOI221XLM U200 ( .A0(n143), .A1(n10), .B0(A[1]), .B1(n41), .C0(n23), .Y(n89)
         );
  AOI31X2M U201 ( .A0(n69), .A1(n70), .A2(n71), .B0(n28), .Y(ALU_OUT_Comb[3])
         );
  AOI222XLM U202 ( .A0(N118), .A1(n18), .B0(n157), .B1(n23), .C0(n142), .C1(
        n158), .Y(n70) );
  AOI22XLM U203 ( .A0(N94), .A1(n43), .B0(N102), .B1(n8), .Y(n69) );
  AOI221XLM U204 ( .A0(N110), .A1(n17), .B0(n138), .B1(n53), .C0(n72), .Y(n71)
         );
  AOI31X2M U205 ( .A0(n55), .A1(n56), .A2(n57), .B0(n28), .Y(ALU_OUT_Comb[5])
         );
  AOI22XLM U206 ( .A0(N96), .A1(n43), .B0(N104), .B1(n8), .Y(n55) );
  AOI222XLM U207 ( .A0(N120), .A1(n18), .B0(n139), .B1(n23), .C0(n142), .C1(n5), .Y(n56) );
  AOI221XLM U208 ( .A0(N112), .A1(n17), .B0(n53), .B1(n140), .C0(n58), .Y(n57)
         );
  AOI31X2M U209 ( .A0(n29), .A1(n30), .A2(n31), .B0(n28), .Y(ALU_OUT_Comb[7])
         );
  AOI222XLM U210 ( .A0(N122), .A1(n18), .B0(n23), .B1(n141), .C0(n142), .C1(n2), .Y(n30) );
  AOI22XLM U211 ( .A0(N98), .A1(n43), .B0(N106), .B1(n8), .Y(n29) );
  AOI221XLM U212 ( .A0(N114), .A1(n17), .B0(n33), .B1(n143), .C0(n35), .Y(n31)
         );
  NOR2X2M U213 ( .A(ALU_FUN[0]), .B(ALU_FUN[1]), .Y(n99) );
  NOR2X2M U214 ( .A(n25), .B(ALU_FUN[3]), .Y(n98) );
  NAND2X2M U215 ( .A(ALU_FUN[1]), .B(n98), .Y(n124) );
  NAND2X2M U216 ( .A(ALU_FUN[0]), .B(n125), .Y(n100) );
  OAI21X2M U217 ( .A0(n137), .A1(n21), .B0(n24), .Y(n80) );
  OAI21X2M U218 ( .A0(n138), .A1(n21), .B0(n24), .Y(n66) );
  OAI21X2M U219 ( .A0(n140), .A1(n21), .B0(n24), .Y(n51) );
  INVX2M U220 ( .A(ALU_FUN[2]), .Y(n25) );
  NOR2BX2M U221 ( .AN(n125), .B(ALU_FUN[0]), .Y(n34) );
  NOR2X2M U222 ( .A(n124), .B(ALU_FUN[0]), .Y(n40) );
  NAND4X2M U223 ( .A(n99), .B(ALU_FUN[3]), .C(ALU_FUN[2]), .D(n103), .Y(n90)
         );
  INVX4M U224 ( .A(n158), .Y(n157) );
  OAI32X1M U225 ( .A0(n82), .A1(n115), .A2(n116), .B0(n146), .B1(n9), .Y(n113)
         );
  AOI21X2M U226 ( .A0(n135), .A1(n19), .B0(A[1]), .Y(n116) );
  AOI31X2M U227 ( .A0(A[1]), .A1(n19), .A2(n135), .B0(n145), .Y(n115) );
  AOI22X1M U228 ( .A0(n7), .A1(n112), .B0(n138), .B1(n15), .Y(n109) );
  INVX2M U229 ( .A(n68), .Y(n7) );
  OAI2BB1X2M U230 ( .A0N(n113), .A1N(n157), .B0(n114), .Y(n112) );
  OAI21X2M U231 ( .A0(n157), .A1(n113), .B0(n16), .Y(n114) );
  OAI21BX1M U232 ( .A0(n106), .A1(n107), .B0N(n33), .Y(n105) );
  NOR2X2M U233 ( .A(n141), .B(n12), .Y(n107) );
  AOI22X1M U234 ( .A0(n4), .A1(n108), .B0(n140), .B1(n13), .Y(n106) );
  OAI21X2M U235 ( .A0(n109), .A1(n110), .B0(n111), .Y(n108) );
  CLKXOR2X2M U236 ( .A(n146), .B(n137), .Y(n82) );
  XNOR2X2M U237 ( .A(n15), .B(n138), .Y(n68) );
  INVX2M U238 ( .A(n135), .Y(n11) );
  INVX2M U239 ( .A(A[1]), .Y(n10) );
  AOI2B1X1M U240 ( .A1N(n120), .A0(n157), .B0(n16), .Y(n121) );
  XNOR2X2M U241 ( .A(n13), .B(n140), .Y(n54) );
  NAND2X2M U242 ( .A(n139), .B(n14), .Y(n111) );
  NOR2X2M U243 ( .A(n139), .B(n14), .Y(n110) );
  INVX2M U244 ( .A(n137), .Y(n9) );
  INVX2M U245 ( .A(n141), .Y(n2) );
  INVX2M U246 ( .A(n140), .Y(n3) );
  INVX2M U247 ( .A(n139), .Y(n5) );
  INVX2M U248 ( .A(n138), .Y(n6) );
  AOI31X2M U249 ( .A0(n61), .A1(n62), .A2(n63), .B0(n28), .Y(ALU_OUT_Comb[4])
         );
  AOI222X1M U250 ( .A0(n157), .A1(n20), .B0(n66), .B1(n15), .C0(B[4]), .C1(n67), .Y(n62) );
  AOI222XLM U251 ( .A0(n53), .A1(n139), .B0(N111), .B1(n17), .C0(n143), .C1(
        n68), .Y(n61) );
  AOI221XLM U252 ( .A0(N95), .A1(n43), .B0(N103), .B1(n8), .C0(n64), .Y(n63)
         );
  AOI31X2M U253 ( .A0(n45), .A1(n46), .A2(n47), .B0(n28), .Y(ALU_OUT_Comb[6])
         );
  AOI222X1M U254 ( .A0(n139), .A1(n20), .B0(n51), .B1(n13), .C0(B[6]), .C1(n52), .Y(n46) );
  AOI222XLM U255 ( .A0(n53), .A1(n141), .B0(N113), .B1(n17), .C0(n143), .C1(
        n54), .Y(n45) );
  AOI221XLM U256 ( .A0(N97), .A1(n43), .B0(N105), .B1(n8), .C0(n48), .Y(n47)
         );
  OAI2BB2XLM U257 ( .B0(n38), .B1(n11), .A0N(N108), .A1N(n17), .Y(n87) );
  OAI222X1M U258 ( .A0(n59), .A1(n14), .B0(B[5]), .B1(n60), .C0(n38), .C1(n6), 
        .Y(n58) );
  AOI221XLM U259 ( .A0(n139), .A1(n143), .B0(n39), .B1(n5), .C0(n142), .Y(n60)
         );
  AOI221XLM U260 ( .A0(n143), .A1(n5), .B0(n139), .B1(n41), .C0(n23), .Y(n59)
         );
  OAI222X1M U261 ( .A0(n36), .A1(n12), .B0(B[7]), .B1(n37), .C0(n38), .C1(n3), 
        .Y(n35) );
  AOI21X2M U262 ( .A0(n39), .A1(n2), .B0(n142), .Y(n37) );
  AOI221XLM U263 ( .A0(n143), .A1(n2), .B0(n141), .B1(n41), .C0(n23), .Y(n36)
         );
  OAI222X1M U264 ( .A0(n73), .A1(n16), .B0(B[3]), .B1(n74), .C0(n38), .C1(n9), 
        .Y(n72) );
  AOI221XLM U265 ( .A0(n157), .A1(n143), .B0(n39), .B1(n158), .C0(n142), .Y(
        n74) );
  AOI221XLM U266 ( .A0(n143), .A1(n158), .B0(n157), .B1(n41), .C0(n23), .Y(n73) );
  OAI211X2M U267 ( .A0(B[0]), .A1(n101), .B0(n102), .C0(n90), .Y(n94) );
  NAND4X2M U268 ( .A(ALU_FUN[3]), .B(ALU_FUN[1]), .C(n104), .D(n25), .Y(n102)
         );
  AOI221XLM U269 ( .A0(n135), .A1(n143), .B0(n39), .B1(n11), .C0(n142), .Y(
        n101) );
  OAI32X1M U270 ( .A0(n103), .A1(ALU_FUN[0]), .A2(n105), .B0(n1), .B1(n27), 
        .Y(n104) );
  INVX2M U271 ( .A(Enable), .Y(n28) );
  INVX2M U272 ( .A(B[1]), .Y(n145) );
  BUFX4M U273 ( .A(A[6]), .Y(n140) );
  BUFX4M U274 ( .A(A[7]), .Y(n141) );
  INVX2M U275 ( .A(B[2]), .Y(n147) );
  INVX2M U276 ( .A(A[3]), .Y(n158) );
  CLKINVX1M U277 ( .A(B[0]), .Y(n19) );
  AOI21XLM U278 ( .A0(B[0]), .A1(n11), .B0(n10), .Y(n123) );
  AOI31XLM U279 ( .A0(n11), .A1(n10), .A2(B[0]), .B0(n144), .Y(n122) );
  CLKINVX1M U280 ( .A(B[4]), .Y(n15) );
  OAI22X1M U281 ( .A0(n141), .A1(n12), .B0(n33), .B1(n117), .Y(n103) );
  AOI32X1M U282 ( .A0(n111), .A1(n118), .A2(n4), .B0(B[6]), .B1(n3), .Y(n117)
         );
  OAI222X1M U283 ( .A0(n138), .A1(n15), .B0(n119), .B1(n68), .C0(n139), .C1(
        n14), .Y(n118) );
  AOI21X2M U284 ( .A0(n120), .A1(n158), .B0(n121), .Y(n119) );
  INVX2M U285 ( .A(B[5]), .Y(n14) );
  INVX2M U286 ( .A(B[7]), .Y(n12) );
  INVX2M U287 ( .A(B[6]), .Y(n13) );
  INVX2M U288 ( .A(B[3]), .Y(n16) );
  NOR2X2M U289 ( .A(n2), .B(B[7]), .Y(n33) );
endmodule


module ClkDiv_DW01_inc_0 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;
  wire   n2, n3, n4, n5, n6;

  CLKXOR2X2M U13 ( .A(A[4]), .B(n4), .Y(SUM[4]) );
  XNOR2X2M U14 ( .A(A[3]), .B(n5), .Y(SUM[3]) );
  XNOR2X2M U15 ( .A(A[2]), .B(n6), .Y(SUM[2]) );
  NAND2X2M U16 ( .A(A[1]), .B(A[0]), .Y(n6) );
  CLKXOR2X2M U17 ( .A(A[6]), .B(n2), .Y(SUM[6]) );
  NOR2BX2M U18 ( .AN(A[5]), .B(n3), .Y(n2) );
  CLKXOR2X2M U19 ( .A(A[1]), .B(A[0]), .Y(SUM[1]) );
  XNOR2X2M U20 ( .A(A[5]), .B(n3), .Y(SUM[5]) );
  INVX2M U21 ( .A(A[0]), .Y(SUM[0]) );
  NAND3X2M U22 ( .A(A[1]), .B(A[0]), .C(A[2]), .Y(n5) );
  NOR2BX2M U23 ( .AN(A[3]), .B(n5), .Y(n4) );
  NAND2X2M U24 ( .A(A[4]), .B(n4), .Y(n3) );
endmodule


module ClkDiv ( i_ref_clk, i_rst, i_clk_en, i_div_ratio, o_div_clk );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst, i_clk_en;
  output o_div_clk;
  wire   div_clk, odd_edge_tog, N16, N17, N18, N19, N20, N21, N22, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n66, n7, n8, n9, n69, n70, n71, n81, n82, n83, n84, n85, n43,
         n17, n18, n19, n20, n38, n39, n40, n41, n42, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n67, n68, n72, n73, n74, n75, n76, n77, n78, n79, n86,
         n1;
  wire   [6:0] count;

  ClkDiv_DW01_inc_0 add_50 ( .A(count), .SUM({N22, N21, N20, N19, N18, N17, 
        N16}) );
  CLKMX2X4M U10 ( .A(i_ref_clk), .B(div_clk), .S0(n1), .Y(o_div_clk) );
  OAI31X4M U47 ( .A0(n41), .A1(n43), .A2(n59), .B0(i_clk_en), .Y(n44) );
  DFFRQX2M div_clk_reg ( .D(n22), .CK(i_ref_clk), .RN(i_rst), .Q(div_clk) );
  DFFRX1M \count_reg[0]  ( .D(n29), .CK(i_ref_clk), .RN(i_rst), .Q(count[0]), 
        .QN(n84) );
  DFFRX1M \count_reg[3]  ( .D(n26), .CK(i_ref_clk), .RN(i_rst), .Q(count[3]), 
        .QN(n8) );
  DFFRX1M \count_reg[4]  ( .D(n25), .CK(i_ref_clk), .RN(i_rst), .Q(count[4]), 
        .QN(n7) );
  DFFRX1M \i_div_ratio_c_reg[5]  ( .D(n32), .CK(i_ref_clk), .RN(i_rst), .Q(n86), .QN(n18) );
  DFFRX1M \count_reg[5]  ( .D(n24), .CK(i_ref_clk), .RN(i_rst), .Q(count[5]), 
        .QN(n83) );
  DFFRX1M \count_reg[1]  ( .D(n28), .CK(i_ref_clk), .RN(i_rst), .Q(count[1]), 
        .QN(n9) );
  DFFRX1M \count_reg[6]  ( .D(n23), .CK(i_ref_clk), .RN(i_rst), .Q(count[6]), 
        .QN(n82) );
  DFFRX1M \count_reg[2]  ( .D(n27), .CK(i_ref_clk), .RN(i_rst), .Q(count[2]), 
        .QN(n85) );
  DFFRX1M \i_div_ratio_c_reg[4]  ( .D(n33), .CK(i_ref_clk), .RN(i_rst), .QN(
        n39) );
  DFFRQX2M \i_div_ratio_c_reg[3]  ( .D(n34), .CK(i_ref_clk), .RN(i_rst), .Q(
        n70) );
  DFFRQX2M \i_div_ratio_c_reg[2]  ( .D(n35), .CK(i_ref_clk), .RN(i_rst), .Q(
        n71) );
  DFFRQX2M \i_div_ratio_c_reg[1]  ( .D(n36), .CK(i_ref_clk), .RN(i_rst), .Q(
        n69) );
  DFFSX1M odd_edge_tog_reg ( .D(n21), .CK(i_ref_clk), .SN(i_rst), .Q(
        odd_edge_tog), .QN(n40) );
  DFFRX1M \i_div_ratio_c_reg[7]  ( .D(n30), .CK(i_ref_clk), .RN(i_rst), .Q(n41), .QN(n81) );
  DFFRX1M \i_div_ratio_c_reg[0]  ( .D(n37), .CK(i_ref_clk), .RN(i_rst), .Q(n42), .QN(n66) );
  DFFRX1M \i_div_ratio_c_reg[6]  ( .D(n31), .CK(i_ref_clk), .RN(i_rst), .Q(n43), .QN(n20) );
  OAI221X1M U60 ( .A0(odd_edge_tog), .A1(n51), .B0(n49), .B1(n40), .C0(n42), 
        .Y(n47) );
  NOR3X2M U61 ( .A(n70), .B(n71), .C(n69), .Y(n67) );
  INVX2M U62 ( .A(n75), .Y(n38) );
  AND3X2M U63 ( .A(n46), .B(n47), .C(n1), .Y(n45) );
  BUFX4M U64 ( .A(n17), .Y(n1) );
  INVX2M U65 ( .A(n44), .Y(n17) );
  NAND2X2M U66 ( .A(n38), .B(n18), .Y(n59) );
  NAND2X2M U67 ( .A(n67), .B(n39), .Y(n75) );
  NAND2X2M U68 ( .A(n61), .B(n62), .Y(n60) );
  OAI21X2M U69 ( .A0(n67), .A1(n39), .B0(n75), .Y(n74) );
  OAI21X2M U70 ( .A0(n38), .A1(n18), .B0(n59), .Y(n73) );
  OAI2BB2X1M U71 ( .B0(n7), .B1(n1), .A0N(N20), .A1N(n45), .Y(n25) );
  OAI2BB2X1M U72 ( .B0(n8), .B1(n1), .A0N(N19), .A1N(n45), .Y(n26) );
  OAI2BB2X1M U73 ( .B0(n85), .B1(n1), .A0N(N18), .A1N(n45), .Y(n27) );
  OAI2BB2X1M U74 ( .B0(n82), .B1(n1), .A0N(N22), .A1N(n45), .Y(n23) );
  OAI2BB2X1M U75 ( .B0(n9), .B1(n1), .A0N(N17), .A1N(n45), .Y(n28) );
  OAI2BB2X1M U76 ( .B0(n83), .B1(n1), .A0N(N21), .A1N(n45), .Y(n24) );
  OAI2BB2X1M U77 ( .B0(n84), .B1(n1), .A0N(N16), .A1N(n45), .Y(n29) );
  CLKXOR2X2M U78 ( .A(div_clk), .B(n48), .Y(n22) );
  AOI21XLM U79 ( .A0(n47), .A1(n46), .B0(n44), .Y(n48) );
  CLKXOR2X2M U80 ( .A(odd_edge_tog), .B(n50), .Y(n21) );
  NOR2XLM U81 ( .A(n44), .B(n47), .Y(n50) );
  OAI2BB2X1M U82 ( .B0(n66), .B1(n1), .A0N(i_div_ratio[0]), .A1N(n1), .Y(n37)
         );
  OAI2BB2X1M U83 ( .B0(n81), .B1(n1), .A0N(i_div_ratio[7]), .A1N(n1), .Y(n30)
         );
  OAI2BB2X1M U84 ( .B0(n1), .B1(n20), .A0N(i_div_ratio[6]), .A1N(n1), .Y(n31)
         );
  OAI2BB2X1M U85 ( .B0(n1), .B1(n39), .A0N(i_div_ratio[4]), .A1N(n1), .Y(n33)
         );
  OAI2BB2X1M U86 ( .B0(n1), .B1(n18), .A0N(i_div_ratio[5]), .A1N(n1), .Y(n32)
         );
  AO22XLM U87 ( .A0(n44), .A1(n69), .B0(i_div_ratio[1]), .B1(n1), .Y(n36) );
  AO22XLM U88 ( .A0(n44), .A1(n71), .B0(i_div_ratio[2]), .B1(n1), .Y(n35) );
  AO22XLM U89 ( .A0(n44), .A1(n70), .B0(i_div_ratio[3]), .B1(n1), .Y(n34) );
  NOR4X1M U90 ( .A(n76), .B(n60), .C(n77), .D(n78), .Y(n51) );
  CLKXOR2X2M U91 ( .A(n41), .B(n82), .Y(n61) );
  AOI211X2M U92 ( .A0(n43), .A1(n19), .B0(n56), .C0(n57), .Y(n55) );
  INVX2M U93 ( .A(n61), .Y(n19) );
  OAI2BB2X1M U94 ( .B0(n58), .B1(n59), .A0N(n59), .A1N(n60), .Y(n56) );
  AOI21X2M U95 ( .A0(n61), .A1(n20), .B0(n62), .Y(n58) );
  CLKXOR2X2M U96 ( .A(n9), .B(n71), .Y(n72) );
  XNOR2X2M U97 ( .A(n83), .B(n20), .Y(n62) );
  CLKXOR2X2M U98 ( .A(n69), .B(n72), .Y(n63) );
  NAND2X2M U99 ( .A(n66), .B(n49), .Y(n46) );
  AND4X2M U100 ( .A(n52), .B(n53), .C(n54), .D(n55), .Y(n49) );
  CLKXOR2X2M U101 ( .A(n74), .B(n8), .Y(n52) );
  NOR2X2M U102 ( .A(n63), .B(n64), .Y(n54) );
  CLKXOR2X2M U103 ( .A(n73), .B(n7), .Y(n53) );
  XNOR2X2M U104 ( .A(n85), .B(n65), .Y(n64) );
  NAND2BX2M U105 ( .AN(n67), .B(n68), .Y(n65) );
  OAI21X2M U106 ( .A0(n69), .A1(n71), .B0(n70), .Y(n68) );
  CLKXOR2X2M U107 ( .A(n84), .B(n69), .Y(n57) );
  CLKXOR2X2M U108 ( .A(n8), .B(n39), .Y(n78) );
  XNOR2X2M U109 ( .A(n85), .B(n70), .Y(n77) );
  NAND3X2M U110 ( .A(n72), .B(n57), .C(n79), .Y(n76) );
  CLKXOR2X2M U111 ( .A(n86), .B(n7), .Y(n79) );
endmodule


module CLK_GATE ( CLK_EN, CLK, GATED_CLK );
  input CLK_EN, CLK;
  output GATED_CLK;


  TLATNCAX6M gating ( .E(CLK_EN), .CK(CLK), .ECK(GATED_CLK) );
endmodule


module System_Top ( CLKDIV_EN, CLKG_EN, CLK, RST, ALU_FUN, ALU_Enable, WrEn, 
        RdEn, Address, WrData, RdData, ALU_VLD, ALU_OUT );
  input [3:0] ALU_FUN;
  input [3:0] Address;
  input [7:0] WrData;
  output [7:0] RdData;
  output [7:0] ALU_OUT;
  input CLKDIV_EN, CLKG_EN, CLK, RST, ALU_Enable, WrEn, RdEn;
  output ALU_VLD;
  wire   n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, REG_CLK, ALU_CLK;
  wire   [7:0] ALU_A;
  wire   [7:0] ALU_B;
  wire   [7:0] CLKDIV_Config;
  assign RdData[7] = n37;
  assign RdData[6] = n38;
  assign RdData[5] = n39;
  assign RdData[4] = n40;
  assign RdData[3] = n41;
  assign RdData[2] = n42;
  assign RdData[1] = n43;
  assign RdData[0] = n44;
  assign ALU_VLD = n45;
  assign ALU_OUT[7] = n46;
  assign ALU_OUT[6] = n47;
  assign ALU_OUT[5] = n48;
  assign ALU_OUT[4] = n49;
  assign ALU_OUT[3] = n50;
  assign ALU_OUT[2] = n51;
  assign ALU_OUT[1] = n52;
  assign ALU_OUT[0] = n53;

  RegFile U0_RegFile ( .CLK(REG_CLK), .RST(RST), .WrEn(WrEn), .RdEn(RdEn), 
        .Address(Address), .WrData(WrData), .RdData({n37, n38, n39, n40, n41, 
        n42, n43, n44}), .REG0(ALU_A), .REG1(ALU_B), .REG2(CLKDIV_Config) );
  ALU U0_ALU ( .A(ALU_A), .B(ALU_B), .ALU_FUN(ALU_FUN), .CLK(ALU_CLK), .RST(
        RST), .Enable(ALU_Enable), .ALU_OUT({n46, n47, n48, n49, n50, n51, n52, 
        n53}), .OUT_VALID(n45) );
  ClkDiv U0_ClkDiv ( .i_ref_clk(CLK), .i_rst(RST), .i_clk_en(CLKDIV_EN), 
        .i_div_ratio(CLKDIV_Config), .o_div_clk(REG_CLK) );
  CLK_GATE U0_CLK_GATE ( .CLK_EN(CLKG_EN), .CLK(CLK), .GATED_CLK(ALU_CLK) );
endmodule

