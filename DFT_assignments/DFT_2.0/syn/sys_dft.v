/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Fri Feb 27 20:26:27 2026
/////////////////////////////////////////////////////////////


module mux2X1_0 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;


  MX2X6M U1 ( .A(IN_0), .B(IN_1), .S0(SEL), .Y(OUT) );
endmodule


module mux2X1_2 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;


  MX2X6M U1 ( .A(IN_0), .B(IN_1), .S0(SEL), .Y(OUT) );
endmodule


module mux2X1_1 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;


  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(SEL), .Y(OUT) );
endmodule


module ALU_DW_div_uns_0 ( a, b, quotient, remainder, divide_by_0 );
  input [7:0] a;
  input [7:0] b;
  output [7:0] quotient;
  output [7:0] remainder;
  output divide_by_0;
  wire   \u_div/SumTmp[1][0] , \u_div/SumTmp[1][1] , \u_div/SumTmp[1][2] ,
         \u_div/SumTmp[1][3] , \u_div/SumTmp[1][4] , \u_div/SumTmp[1][5] ,
         \u_div/SumTmp[1][6] , \u_div/SumTmp[2][0] , \u_div/SumTmp[2][1] ,
         \u_div/SumTmp[2][2] , \u_div/SumTmp[2][3] , \u_div/SumTmp[2][4] ,
         \u_div/SumTmp[2][5] , \u_div/SumTmp[3][0] , \u_div/SumTmp[3][1] ,
         \u_div/SumTmp[3][2] , \u_div/SumTmp[3][3] , \u_div/SumTmp[3][4] ,
         \u_div/SumTmp[4][0] , \u_div/SumTmp[4][1] , \u_div/SumTmp[4][2] ,
         \u_div/SumTmp[4][3] , \u_div/SumTmp[5][0] , \u_div/SumTmp[5][1] ,
         \u_div/SumTmp[5][2] , \u_div/SumTmp[6][0] , \u_div/SumTmp[6][1] ,
         \u_div/SumTmp[7][0] , \u_div/CryTmp[0][1] , \u_div/CryTmp[0][2] ,
         \u_div/CryTmp[0][3] , \u_div/CryTmp[0][4] , \u_div/CryTmp[0][5] ,
         \u_div/CryTmp[0][6] , \u_div/CryTmp[0][7] , \u_div/CryTmp[1][1] ,
         \u_div/CryTmp[1][2] , \u_div/CryTmp[1][3] , \u_div/CryTmp[1][4] ,
         \u_div/CryTmp[1][5] , \u_div/CryTmp[1][6] , \u_div/CryTmp[1][7] ,
         \u_div/CryTmp[2][1] , \u_div/CryTmp[2][2] , \u_div/CryTmp[2][3] ,
         \u_div/CryTmp[2][4] , \u_div/CryTmp[2][5] , \u_div/CryTmp[2][6] ,
         \u_div/CryTmp[3][1] , \u_div/CryTmp[3][2] , \u_div/CryTmp[3][3] ,
         \u_div/CryTmp[3][4] , \u_div/CryTmp[3][5] , \u_div/CryTmp[4][1] ,
         \u_div/CryTmp[4][2] , \u_div/CryTmp[4][3] , \u_div/CryTmp[4][4] ,
         \u_div/CryTmp[5][1] , \u_div/CryTmp[5][2] , \u_div/CryTmp[5][3] ,
         \u_div/CryTmp[6][1] , \u_div/CryTmp[6][2] , \u_div/CryTmp[7][1] ,
         \u_div/PartRem[1][1] , \u_div/PartRem[1][2] , \u_div/PartRem[1][3] ,
         \u_div/PartRem[1][4] , \u_div/PartRem[1][5] , \u_div/PartRem[1][6] ,
         \u_div/PartRem[1][7] , \u_div/PartRem[2][1] , \u_div/PartRem[2][2] ,
         \u_div/PartRem[2][3] , \u_div/PartRem[2][4] , \u_div/PartRem[2][5] ,
         \u_div/PartRem[2][6] , \u_div/PartRem[3][1] , \u_div/PartRem[3][2] ,
         \u_div/PartRem[3][3] , \u_div/PartRem[3][4] , \u_div/PartRem[3][5] ,
         \u_div/PartRem[4][1] , \u_div/PartRem[4][2] , \u_div/PartRem[4][3] ,
         \u_div/PartRem[4][4] , \u_div/PartRem[5][1] , \u_div/PartRem[5][2] ,
         \u_div/PartRem[5][3] , \u_div/PartRem[6][1] , \u_div/PartRem[6][2] ,
         \u_div/PartRem[7][1] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;

  ADDFX2M \u_div/u_fa_PartRem_0_2_5  ( .A(\u_div/PartRem[3][5] ), .B(n3), .CI(
        \u_div/CryTmp[2][5] ), .CO(\u_div/CryTmp[2][6] ), .S(
        \u_div/SumTmp[2][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_3  ( .A(\u_div/PartRem[5][3] ), .B(n5), .CI(
        \u_div/CryTmp[4][3] ), .CO(\u_div/CryTmp[4][4] ), .S(
        \u_div/SumTmp[4][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_4  ( .A(\u_div/PartRem[4][4] ), .B(n4), .CI(
        \u_div/CryTmp[3][4] ), .CO(\u_div/CryTmp[3][5] ), .S(
        \u_div/SumTmp[3][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_5_2  ( .A(\u_div/PartRem[6][2] ), .B(n6), .CI(
        \u_div/CryTmp[5][2] ), .CO(\u_div/CryTmp[5][3] ), .S(
        \u_div/SumTmp[5][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_6_1  ( .A(\u_div/PartRem[7][1] ), .B(n7), .CI(
        \u_div/CryTmp[6][1] ), .CO(\u_div/CryTmp[6][2] ), .S(
        \u_div/SumTmp[6][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_6  ( .A(\u_div/PartRem[1][6] ), .B(n2), .CI(
        \u_div/CryTmp[0][6] ), .CO(\u_div/CryTmp[0][7] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_7  ( .A(\u_div/PartRem[1][7] ), .B(n1), .CI(
        \u_div/CryTmp[0][7] ), .CO(quotient[0]) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_4  ( .A(\u_div/PartRem[1][4] ), .B(n4), .CI(
        \u_div/CryTmp[0][4] ), .CO(\u_div/CryTmp[0][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_5  ( .A(\u_div/PartRem[1][5] ), .B(n3), .CI(
        \u_div/CryTmp[0][5] ), .CO(\u_div/CryTmp[0][6] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_5  ( .A(\u_div/PartRem[2][5] ), .B(n3), .CI(
        \u_div/CryTmp[1][5] ), .CO(\u_div/CryTmp[1][6] ), .S(
        \u_div/SumTmp[1][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_4  ( .A(\u_div/PartRem[2][4] ), .B(n4), .CI(
        \u_div/CryTmp[1][4] ), .CO(\u_div/CryTmp[1][5] ), .S(
        \u_div/SumTmp[1][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_4  ( .A(\u_div/PartRem[3][4] ), .B(n4), .CI(
        \u_div/CryTmp[2][4] ), .CO(\u_div/CryTmp[2][5] ), .S(
        \u_div/SumTmp[2][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_2  ( .A(\u_div/PartRem[1][2] ), .B(n6), .CI(
        \u_div/CryTmp[0][2] ), .CO(\u_div/CryTmp[0][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_3  ( .A(\u_div/PartRem[1][3] ), .B(n5), .CI(
        \u_div/CryTmp[0][3] ), .CO(\u_div/CryTmp[0][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_3  ( .A(\u_div/PartRem[2][3] ), .B(n5), .CI(
        \u_div/CryTmp[1][3] ), .CO(\u_div/CryTmp[1][4] ), .S(
        \u_div/SumTmp[1][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_3  ( .A(\u_div/PartRem[3][3] ), .B(n5), .CI(
        \u_div/CryTmp[2][3] ), .CO(\u_div/CryTmp[2][4] ), .S(
        \u_div/SumTmp[2][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_3  ( .A(\u_div/PartRem[4][3] ), .B(n5), .CI(
        \u_div/CryTmp[3][3] ), .CO(\u_div/CryTmp[3][4] ), .S(
        \u_div/SumTmp[3][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_2  ( .A(\u_div/PartRem[2][2] ), .B(n6), .CI(
        \u_div/CryTmp[1][2] ), .CO(\u_div/CryTmp[1][3] ), .S(
        \u_div/SumTmp[1][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_2  ( .A(\u_div/PartRem[3][2] ), .B(n6), .CI(
        \u_div/CryTmp[2][2] ), .CO(\u_div/CryTmp[2][3] ), .S(
        \u_div/SumTmp[2][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_2  ( .A(\u_div/PartRem[4][2] ), .B(n6), .CI(
        \u_div/CryTmp[3][2] ), .CO(\u_div/CryTmp[3][3] ), .S(
        \u_div/SumTmp[3][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_2  ( .A(\u_div/PartRem[5][2] ), .B(n6), .CI(
        \u_div/CryTmp[4][2] ), .CO(\u_div/CryTmp[4][3] ), .S(
        \u_div/SumTmp[4][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_1  ( .A(\u_div/PartRem[1][1] ), .B(n7), .CI(
        \u_div/CryTmp[0][1] ), .CO(\u_div/CryTmp[0][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_1  ( .A(\u_div/PartRem[2][1] ), .B(n7), .CI(
        \u_div/CryTmp[1][1] ), .CO(\u_div/CryTmp[1][2] ), .S(
        \u_div/SumTmp[1][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_1  ( .A(\u_div/PartRem[3][1] ), .B(n7), .CI(
        \u_div/CryTmp[2][1] ), .CO(\u_div/CryTmp[2][2] ), .S(
        \u_div/SumTmp[2][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_1  ( .A(\u_div/PartRem[4][1] ), .B(n7), .CI(
        \u_div/CryTmp[3][1] ), .CO(\u_div/CryTmp[3][2] ), .S(
        \u_div/SumTmp[3][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_1  ( .A(\u_div/PartRem[5][1] ), .B(n7), .CI(
        \u_div/CryTmp[4][1] ), .CO(\u_div/CryTmp[4][2] ), .S(
        \u_div/SumTmp[4][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_5_1  ( .A(\u_div/PartRem[6][1] ), .B(n7), .CI(
        \u_div/CryTmp[5][1] ), .CO(\u_div/CryTmp[5][2] ), .S(
        \u_div/SumTmp[5][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_6  ( .A(\u_div/PartRem[2][6] ), .B(n2), .CI(
        \u_div/CryTmp[1][6] ), .CO(\u_div/CryTmp[1][7] ), .S(
        \u_div/SumTmp[1][6] ) );
  INVX8M U1 ( .A(b[0]), .Y(n8) );
  NOR2X4M U2 ( .A(b[6]), .B(b[7]), .Y(n11) );
  AND3X4M U3 ( .A(n11), .B(n3), .C(\u_div/CryTmp[3][5] ), .Y(quotient[3]) );
  CLKAND2X4M U4 ( .A(\u_div/CryTmp[4][4] ), .B(n10), .Y(quotient[4]) );
  CLKAND2X4M U5 ( .A(\u_div/CryTmp[2][6] ), .B(n11), .Y(quotient[2]) );
  CLKAND2X4M U6 ( .A(\u_div/CryTmp[1][7] ), .B(n1), .Y(quotient[1]) );
  AND2X2M U7 ( .A(\u_div/CryTmp[5][3] ), .B(n9), .Y(quotient[5]) );
  MX2X1M U8 ( .A(\u_div/PartRem[3][1] ), .B(\u_div/SumTmp[2][1] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][2] ) );
  MX2X1M U9 ( .A(\u_div/PartRem[4][1] ), .B(\u_div/SumTmp[3][1] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][2] ) );
  MX2X1M U10 ( .A(\u_div/PartRem[5][1] ), .B(\u_div/SumTmp[4][1] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][2] ) );
  MX2X1M U11 ( .A(\u_div/PartRem[6][1] ), .B(\u_div/SumTmp[5][1] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][2] ) );
  MX2X1M U12 ( .A(\u_div/PartRem[3][2] ), .B(\u_div/SumTmp[2][2] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][3] ) );
  MX2X1M U13 ( .A(\u_div/PartRem[3][3] ), .B(\u_div/SumTmp[2][3] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][4] ) );
  MX2X1M U14 ( .A(\u_div/PartRem[4][3] ), .B(\u_div/SumTmp[3][3] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][4] ) );
  MX2X1M U15 ( .A(\u_div/PartRem[4][2] ), .B(\u_div/SumTmp[3][2] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][3] ) );
  MX2X1M U16 ( .A(\u_div/PartRem[5][3] ), .B(\u_div/SumTmp[4][3] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][4] ) );
  MX2X1M U17 ( .A(\u_div/PartRem[5][2] ), .B(\u_div/SumTmp[4][2] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][3] ) );
  MX2X1M U18 ( .A(\u_div/PartRem[6][2] ), .B(\u_div/SumTmp[5][2] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][3] ) );
  MX2X1M U19 ( .A(\u_div/PartRem[3][4] ), .B(\u_div/SumTmp[2][4] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][5] ) );
  MX2X1M U20 ( .A(\u_div/PartRem[3][5] ), .B(\u_div/SumTmp[2][5] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][6] ) );
  MX2X1M U21 ( .A(\u_div/PartRem[4][4] ), .B(\u_div/SumTmp[3][4] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][5] ) );
  AND3X2M U22 ( .A(n9), .B(n6), .C(\u_div/CryTmp[6][2] ), .Y(quotient[6]) );
  AND2X2M U23 ( .A(n10), .B(n5), .Y(n9) );
  INVX4M U24 ( .A(b[1]), .Y(n7) );
  INVX4M U25 ( .A(b[2]), .Y(n6) );
  OR2X2M U26 ( .A(a[7]), .B(n8), .Y(\u_div/CryTmp[7][1] ) );
  XNOR2X2M U27 ( .A(n8), .B(a[2]), .Y(\u_div/SumTmp[2][0] ) );
  XNOR2X2M U28 ( .A(n8), .B(a[3]), .Y(\u_div/SumTmp[3][0] ) );
  XNOR2X2M U29 ( .A(n8), .B(a[4]), .Y(\u_div/SumTmp[4][0] ) );
  XNOR2X2M U30 ( .A(n8), .B(a[5]), .Y(\u_div/SumTmp[5][0] ) );
  XNOR2X2M U31 ( .A(n8), .B(a[6]), .Y(\u_div/SumTmp[6][0] ) );
  XNOR2X2M U32 ( .A(n8), .B(a[7]), .Y(\u_div/SumTmp[7][0] ) );
  OR2X2M U33 ( .A(a[5]), .B(n8), .Y(\u_div/CryTmp[5][1] ) );
  OR2X2M U34 ( .A(a[4]), .B(n8), .Y(\u_div/CryTmp[4][1] ) );
  OR2X2M U35 ( .A(a[3]), .B(n8), .Y(\u_div/CryTmp[3][1] ) );
  OR2X2M U36 ( .A(a[2]), .B(n8), .Y(\u_div/CryTmp[2][1] ) );
  OR2X2M U37 ( .A(a[1]), .B(n8), .Y(\u_div/CryTmp[1][1] ) );
  NAND2BX2M U38 ( .AN(a[0]), .B(b[0]), .Y(\u_div/CryTmp[0][1] ) );
  OR2X2M U39 ( .A(a[6]), .B(n8), .Y(\u_div/CryTmp[6][1] ) );
  INVX2M U40 ( .A(b[6]), .Y(n2) );
  XNOR2X2M U41 ( .A(n8), .B(a[1]), .Y(\u_div/SumTmp[1][0] ) );
  INVX4M U42 ( .A(b[3]), .Y(n5) );
  INVX4M U43 ( .A(b[4]), .Y(n4) );
  INVX4M U44 ( .A(b[5]), .Y(n3) );
  INVX2M U45 ( .A(b[7]), .Y(n1) );
  CLKMX2X2M U46 ( .A(\u_div/PartRem[2][6] ), .B(\u_div/SumTmp[1][6] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][7] ) );
  CLKMX2X2M U47 ( .A(\u_div/PartRem[7][1] ), .B(\u_div/SumTmp[6][1] ), .S0(
        quotient[6]), .Y(\u_div/PartRem[6][2] ) );
  CLKMX2X2M U48 ( .A(a[7]), .B(\u_div/SumTmp[7][0] ), .S0(quotient[7]), .Y(
        \u_div/PartRem[7][1] ) );
  CLKMX2X2M U49 ( .A(\u_div/PartRem[2][5] ), .B(\u_div/SumTmp[1][5] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][6] ) );
  CLKMX2X2M U50 ( .A(a[6]), .B(\u_div/SumTmp[6][0] ), .S0(quotient[6]), .Y(
        \u_div/PartRem[6][1] ) );
  CLKMX2X2M U51 ( .A(\u_div/PartRem[2][4] ), .B(\u_div/SumTmp[1][4] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][5] ) );
  CLKMX2X2M U52 ( .A(a[5]), .B(\u_div/SumTmp[5][0] ), .S0(quotient[5]), .Y(
        \u_div/PartRem[5][1] ) );
  CLKMX2X2M U53 ( .A(\u_div/PartRem[2][3] ), .B(\u_div/SumTmp[1][3] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][4] ) );
  CLKMX2X2M U54 ( .A(a[4]), .B(\u_div/SumTmp[4][0] ), .S0(quotient[4]), .Y(
        \u_div/PartRem[4][1] ) );
  CLKMX2X2M U55 ( .A(\u_div/PartRem[2][2] ), .B(\u_div/SumTmp[1][2] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][3] ) );
  CLKMX2X2M U56 ( .A(a[3]), .B(\u_div/SumTmp[3][0] ), .S0(quotient[3]), .Y(
        \u_div/PartRem[3][1] ) );
  CLKMX2X2M U57 ( .A(\u_div/PartRem[2][1] ), .B(\u_div/SumTmp[1][1] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][2] ) );
  CLKMX2X2M U58 ( .A(a[2]), .B(\u_div/SumTmp[2][0] ), .S0(quotient[2]), .Y(
        \u_div/PartRem[2][1] ) );
  CLKMX2X2M U59 ( .A(a[1]), .B(\u_div/SumTmp[1][0] ), .S0(quotient[1]), .Y(
        \u_div/PartRem[1][1] ) );
  AND4X1M U60 ( .A(\u_div/CryTmp[7][1] ), .B(n9), .C(n7), .D(n6), .Y(
        quotient[7]) );
  AND3X1M U61 ( .A(n11), .B(n4), .C(n3), .Y(n10) );
endmodule


module ALU_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8;
  wire   [8:0] carry;

  ADDFX2M U2_2 ( .A(A[2]), .B(n6), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFX2M U2_5 ( .A(A[5]), .B(n3), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFX2M U2_4 ( .A(A[4]), .B(n4), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFX2M U2_3 ( .A(A[3]), .B(n5), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFX2M U2_1 ( .A(A[1]), .B(n7), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  XOR3XLM U2_7 ( .A(A[7]), .B(n1), .C(carry[7]), .Y(DIFF[7]) );
  ADDFX2M U2_6 ( .A(A[6]), .B(n2), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  INVX2M U1 ( .A(B[6]), .Y(n2) );
  XNOR2X2M U2 ( .A(n8), .B(A[0]), .Y(DIFF[0]) );
  INVX2M U3 ( .A(B[0]), .Y(n8) );
  INVX2M U4 ( .A(B[7]), .Y(n1) );
  INVX2M U5 ( .A(B[1]), .Y(n7) );
  OR2X2M U6 ( .A(A[0]), .B(n8), .Y(carry[1]) );
  INVX2M U7 ( .A(B[3]), .Y(n5) );
  INVX2M U8 ( .A(B[4]), .Y(n4) );
  INVX2M U9 ( .A(B[5]), .Y(n3) );
  INVX2M U10 ( .A(B[2]), .Y(n6) );
endmodule


module ALU_DW01_add_0 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [7:1] carry;

  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  XOR3XLM U1_7 ( .A(A[7]), .B(B[7]), .C(carry[7]), .Y(SUM[7]) );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  AND2X2M U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  CLKXOR2X2M U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module ALU_DW02_mult_0 ( A, B, TC, PRODUCT );
  input [7:0] A;
  input [7:0] B;
  output [15:0] PRODUCT;
  input TC;
  wire   \ab[7][0] , \ab[6][1] , \ab[6][0] , \ab[5][2] , \ab[5][1] ,
         \ab[5][0] , \ab[4][3] , \ab[4][2] , \ab[4][1] , \ab[4][0] ,
         \ab[3][4] , \ab[3][3] , \ab[3][2] , \ab[3][1] , \ab[3][0] ,
         \ab[2][5] , \ab[2][4] , \ab[2][3] , \ab[2][2] , \ab[2][1] ,
         \ab[2][0] , \ab[1][6] , \ab[1][5] , \ab[1][4] , \ab[1][3] ,
         \ab[1][2] , \ab[1][1] , \ab[1][0] , \ab[0][7] , \ab[0][6] ,
         \ab[0][5] , \ab[0][4] , \ab[0][3] , \ab[0][2] , \ab[0][1] ,
         \CARRYB[6][0] , \CARRYB[5][1] , \CARRYB[5][0] , \CARRYB[4][2] ,
         \CARRYB[4][1] , \CARRYB[4][0] , \CARRYB[3][3] , \CARRYB[3][2] ,
         \CARRYB[3][1] , \CARRYB[3][0] , \CARRYB[2][4] , \CARRYB[2][3] ,
         \CARRYB[2][2] , \CARRYB[2][1] , \CARRYB[2][0] , \SUMB[6][1] ,
         \SUMB[5][2] , \SUMB[5][1] , \SUMB[4][3] , \SUMB[4][2] , \SUMB[4][1] ,
         \SUMB[3][4] , \SUMB[3][3] , \SUMB[3][2] , \SUMB[3][1] , \SUMB[2][5] ,
         \SUMB[2][4] , \SUMB[2][3] , \SUMB[2][2] , \SUMB[2][1] , \SUMB[1][6] ,
         \SUMB[1][5] , \SUMB[1][4] , \SUMB[1][3] , \SUMB[1][2] , \SUMB[1][1] ,
         n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23;

  ADDFX2M S1_6_0 ( .A(\ab[6][0] ), .B(\CARRYB[5][0] ), .CI(\SUMB[5][1] ), .CO(
        \CARRYB[6][0] ), .S(PRODUCT[6]) );
  ADDFX2M S1_5_0 ( .A(\ab[5][0] ), .B(\CARRYB[4][0] ), .CI(\SUMB[4][1] ), .CO(
        \CARRYB[5][0] ), .S(PRODUCT[5]) );
  ADDFX2M S1_4_0 ( .A(\ab[4][0] ), .B(\CARRYB[3][0] ), .CI(\SUMB[3][1] ), .CO(
        \CARRYB[4][0] ), .S(PRODUCT[4]) );
  ADDFX2M S1_3_0 ( .A(\ab[3][0] ), .B(\CARRYB[2][0] ), .CI(\SUMB[2][1] ), .CO(
        \CARRYB[3][0] ), .S(PRODUCT[3]) );
  ADDFX2M S2_5_1 ( .A(\ab[5][1] ), .B(\CARRYB[4][1] ), .CI(\SUMB[4][2] ), .CO(
        \CARRYB[5][1] ), .S(\SUMB[5][1] ) );
  ADDFX2M S2_4_2 ( .A(\ab[4][2] ), .B(\CARRYB[3][2] ), .CI(\SUMB[3][3] ), .CO(
        \CARRYB[4][2] ), .S(\SUMB[4][2] ) );
  ADDFX2M S1_2_0 ( .A(\ab[2][0] ), .B(n7), .CI(\SUMB[1][1] ), .CO(
        \CARRYB[2][0] ), .S(PRODUCT[2]) );
  XOR3XLM S2_6_1 ( .A(\ab[6][1] ), .B(\CARRYB[5][1] ), .C(\SUMB[5][2] ), .Y(
        \SUMB[6][1] ) );
  XOR3XLM S4_0 ( .A(\ab[7][0] ), .B(\CARRYB[6][0] ), .C(\SUMB[6][1] ), .Y(
        PRODUCT[7]) );
  XOR3XLM S2_4_3 ( .A(\ab[4][3] ), .B(\CARRYB[3][3] ), .C(\SUMB[3][4] ), .Y(
        \SUMB[4][3] ) );
  XOR3XLM S2_5_2 ( .A(\ab[5][2] ), .B(\CARRYB[4][2] ), .C(\SUMB[4][3] ), .Y(
        \SUMB[5][2] ) );
  ADDFX2M S2_4_1 ( .A(\ab[4][1] ), .B(\CARRYB[3][1] ), .CI(\SUMB[3][2] ), .CO(
        \CARRYB[4][1] ), .S(\SUMB[4][1] ) );
  ADDFX2M S2_3_1 ( .A(\ab[3][1] ), .B(\CARRYB[2][1] ), .CI(\SUMB[2][2] ), .CO(
        \CARRYB[3][1] ), .S(\SUMB[3][1] ) );
  ADDFX2M S2_3_3 ( .A(\ab[3][3] ), .B(\CARRYB[2][3] ), .CI(\SUMB[2][4] ), .CO(
        \CARRYB[3][3] ), .S(\SUMB[3][3] ) );
  XOR3XLM S2_2_5 ( .A(\ab[2][5] ), .B(n8), .C(\SUMB[1][6] ), .Y(\SUMB[2][5] )
         );
  XOR3XLM S2_3_4 ( .A(\ab[3][4] ), .B(\CARRYB[2][4] ), .C(\SUMB[2][5] ), .Y(
        \SUMB[3][4] ) );
  ADDFX2M S2_3_2 ( .A(\ab[3][2] ), .B(\CARRYB[2][2] ), .CI(\SUMB[2][3] ), .CO(
        \CARRYB[3][2] ), .S(\SUMB[3][2] ) );
  ADDFX2M S2_2_1 ( .A(\ab[2][1] ), .B(n6), .CI(\SUMB[1][2] ), .CO(
        \CARRYB[2][1] ), .S(\SUMB[2][1] ) );
  ADDFX2M S2_2_4 ( .A(\ab[2][4] ), .B(n5), .CI(\SUMB[1][5] ), .CO(
        \CARRYB[2][4] ), .S(\SUMB[2][4] ) );
  ADDFX2M S2_2_3 ( .A(\ab[2][3] ), .B(n4), .CI(\SUMB[1][4] ), .CO(
        \CARRYB[2][3] ), .S(\SUMB[2][3] ) );
  ADDFX2M S2_2_2 ( .A(\ab[2][2] ), .B(n3), .CI(\SUMB[1][3] ), .CO(
        \CARRYB[2][2] ), .S(\SUMB[2][2] ) );
  AND2X2M U2 ( .A(\ab[0][3] ), .B(\ab[1][2] ), .Y(n3) );
  AND2X2M U3 ( .A(\ab[0][4] ), .B(\ab[1][3] ), .Y(n4) );
  AND2X2M U4 ( .A(\ab[0][5] ), .B(\ab[1][4] ), .Y(n5) );
  AND2X2M U5 ( .A(\ab[0][2] ), .B(\ab[1][1] ), .Y(n6) );
  AND2X2M U6 ( .A(\ab[0][1] ), .B(\ab[1][0] ), .Y(n7) );
  NOR2X2M U7 ( .A(n9), .B(n23), .Y(\ab[0][6] ) );
  NOR2X2M U8 ( .A(n12), .B(n23), .Y(\ab[0][3] ) );
  NOR2X2M U9 ( .A(n13), .B(n23), .Y(\ab[0][2] ) );
  NOR2X2M U10 ( .A(n11), .B(n23), .Y(\ab[0][4] ) );
  NOR2X2M U11 ( .A(n10), .B(n23), .Y(\ab[0][5] ) );
  NOR2X2M U12 ( .A(n14), .B(n23), .Y(\ab[0][1] ) );
  NOR2X2M U13 ( .A(n12), .B(n22), .Y(\ab[1][3] ) );
  NOR2X2M U14 ( .A(n11), .B(n22), .Y(\ab[1][4] ) );
  NOR2X2M U15 ( .A(n13), .B(n22), .Y(\ab[1][2] ) );
  NOR2X2M U16 ( .A(n14), .B(n22), .Y(\ab[1][1] ) );
  NOR2X2M U17 ( .A(n15), .B(n22), .Y(\ab[1][0] ) );
  CLKXOR2X2M U18 ( .A(\ab[1][5] ), .B(\ab[0][6] ), .Y(\SUMB[1][5] ) );
  NOR2X2M U19 ( .A(n10), .B(n22), .Y(\ab[1][5] ) );
  INVX4M U20 ( .A(A[1]), .Y(n22) );
  AND2X2M U21 ( .A(\ab[0][6] ), .B(\ab[1][5] ), .Y(n8) );
  INVX4M U22 ( .A(A[3]), .Y(n20) );
  XOR2X1M U23 ( .A(\ab[1][0] ), .B(\ab[0][1] ), .Y(PRODUCT[1]) );
  INVX2M U24 ( .A(A[4]), .Y(n19) );
  INVX2M U25 ( .A(A[5]), .Y(n18) );
  INVX2M U26 ( .A(A[6]), .Y(n17) );
  INVX4M U27 ( .A(A[0]), .Y(n23) );
  XOR2X1M U28 ( .A(\ab[1][3] ), .B(\ab[0][4] ), .Y(\SUMB[1][3] ) );
  XOR2X1M U29 ( .A(\ab[1][4] ), .B(\ab[0][5] ), .Y(\SUMB[1][4] ) );
  XOR2X1M U30 ( .A(\ab[1][2] ), .B(\ab[0][3] ), .Y(\SUMB[1][2] ) );
  CLKXOR2X2M U31 ( .A(\ab[1][6] ), .B(\ab[0][7] ), .Y(\SUMB[1][6] ) );
  INVX2M U32 ( .A(A[7]), .Y(n16) );
  XOR2X1M U33 ( .A(\ab[1][1] ), .B(\ab[0][2] ), .Y(\SUMB[1][1] ) );
  INVX2M U34 ( .A(B[6]), .Y(n9) );
  INVX4M U35 ( .A(A[2]), .Y(n21) );
  INVX4M U36 ( .A(B[0]), .Y(n15) );
  INVX4M U37 ( .A(B[1]), .Y(n14) );
  INVX4M U38 ( .A(B[2]), .Y(n13) );
  INVX4M U39 ( .A(B[3]), .Y(n12) );
  INVX2M U40 ( .A(B[4]), .Y(n11) );
  INVX2M U41 ( .A(B[5]), .Y(n10) );
  NOR2BX2M U42 ( .AN(B[7]), .B(n23), .Y(\ab[0][7] ) );
  NOR2X1M U43 ( .A(n16), .B(n15), .Y(\ab[7][0] ) );
  NOR2X1M U44 ( .A(n14), .B(n17), .Y(\ab[6][1] ) );
  NOR2X1M U45 ( .A(n15), .B(n17), .Y(\ab[6][0] ) );
  NOR2X1M U46 ( .A(n13), .B(n18), .Y(\ab[5][2] ) );
  NOR2X1M U47 ( .A(n14), .B(n18), .Y(\ab[5][1] ) );
  NOR2X1M U48 ( .A(n15), .B(n18), .Y(\ab[5][0] ) );
  NOR2X1M U49 ( .A(n12), .B(n19), .Y(\ab[4][3] ) );
  NOR2X1M U50 ( .A(n13), .B(n19), .Y(\ab[4][2] ) );
  NOR2X1M U51 ( .A(n14), .B(n19), .Y(\ab[4][1] ) );
  NOR2X1M U52 ( .A(n15), .B(n19), .Y(\ab[4][0] ) );
  NOR2X1M U53 ( .A(n11), .B(n20), .Y(\ab[3][4] ) );
  NOR2X1M U54 ( .A(n12), .B(n20), .Y(\ab[3][3] ) );
  NOR2X1M U55 ( .A(n13), .B(n20), .Y(\ab[3][2] ) );
  NOR2X1M U56 ( .A(n14), .B(n20), .Y(\ab[3][1] ) );
  NOR2X1M U57 ( .A(n15), .B(n20), .Y(\ab[3][0] ) );
  NOR2X1M U58 ( .A(n10), .B(n21), .Y(\ab[2][5] ) );
  NOR2X1M U59 ( .A(n11), .B(n21), .Y(\ab[2][4] ) );
  NOR2X1M U60 ( .A(n12), .B(n21), .Y(\ab[2][3] ) );
  NOR2X1M U61 ( .A(n13), .B(n21), .Y(\ab[2][2] ) );
  NOR2X1M U62 ( .A(n14), .B(n21), .Y(\ab[2][1] ) );
  NOR2X1M U63 ( .A(n15), .B(n21), .Y(\ab[2][0] ) );
  NOR2X1M U64 ( .A(n9), .B(n22), .Y(\ab[1][6] ) );
  NOR2X1M U65 ( .A(n15), .B(n23), .Y(PRODUCT[0]) );
endmodule


module ALU_test_1 ( A, B, ALU_FUN, CLK, RST, Enable, ALU_OUT, OUT_VALID, 
        test_si, test_se );
  input [7:0] A;
  input [7:0] B;
  input [3:0] ALU_FUN;
  output [7:0] ALU_OUT;
  input CLK, RST, Enable, test_si, test_se;
  output OUT_VALID;
  wire   N91, N92, N93, N94, N95, N96, N97, N98, N99, N100, N101, N102, N103,
         N104, N105, N106, N107, N108, N109, N110, N111, N112, N113, N114,
         N115, N116, N117, N118, N119, N120, N121, N122, N147, N148, N149, n39,
         n40, n41, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97,
         n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n42, n43, n109, n110, n111, n112, n113, n114, n115,
         n116, n117, n118, n119, n120, n121, n122, n123, n124, n125, n126,
         n127, n128, n129, n130, n131, n132, n133, n134, n135, n136, n137,
         n138, n139, n140, n141, n142, n143, n144, n145, n146, n147, n148,
         n149, n150, n151, n152, n153, n154, n155, n156, n157, n158, n159,
         n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n170,
         n171, n172;
  wire   [7:0] ALU_OUT_Comb;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7;

  NAND3BX4M U60 ( .AN(n91), .B(n171), .C(ALU_FUN[3]), .Y(n47) );
  SDFFRQX1M OUT_VALID_reg ( .D(Enable), .SI(ALU_OUT[7]), .SE(test_se), .CK(CLK), .RN(RST), .Q(OUT_VALID) );
  SDFFRQX1M \ALU_OUT_reg[6]  ( .D(ALU_OUT_Comb[6]), .SI(ALU_OUT[5]), .SE(
        test_se), .CK(CLK), .RN(n122), .Q(ALU_OUT[6]) );
  SDFFRQX1M \ALU_OUT_reg[7]  ( .D(ALU_OUT_Comb[7]), .SI(ALU_OUT[6]), .SE(
        test_se), .CK(CLK), .RN(n122), .Q(ALU_OUT[7]) );
  SDFFRQX1M \ALU_OUT_reg[4]  ( .D(ALU_OUT_Comb[4]), .SI(ALU_OUT[3]), .SE(
        test_se), .CK(CLK), .RN(n122), .Q(ALU_OUT[4]) );
  SDFFRQX1M \ALU_OUT_reg[5]  ( .D(ALU_OUT_Comb[5]), .SI(ALU_OUT[4]), .SE(
        test_se), .CK(CLK), .RN(n122), .Q(ALU_OUT[5]) );
  SDFFRQX1M \ALU_OUT_reg[3]  ( .D(ALU_OUT_Comb[3]), .SI(ALU_OUT[2]), .SE(
        test_se), .CK(CLK), .RN(n122), .Q(ALU_OUT[3]) );
  SDFFRQX1M \ALU_OUT_reg[2]  ( .D(ALU_OUT_Comb[2]), .SI(ALU_OUT[1]), .SE(
        test_se), .CK(CLK), .RN(n122), .Q(ALU_OUT[2]) );
  SDFFRQX1M \ALU_OUT_reg[1]  ( .D(ALU_OUT_Comb[1]), .SI(ALU_OUT[0]), .SE(
        test_se), .CK(CLK), .RN(n122), .Q(ALU_OUT[1]) );
  SDFFRQX1M \ALU_OUT_reg[0]  ( .D(ALU_OUT_Comb[0]), .SI(test_si), .SE(test_se), 
        .CK(CLK), .RN(n122), .Q(ALU_OUT[0]) );
  INVX4M U7 ( .A(ALU_FUN[1]), .Y(n170) );
  NAND2BX4M U15 ( .AN(ALU_FUN[3]), .B(n171), .Y(n101) );
  NAND2BX2M U16 ( .AN(ALU_FUN[3]), .B(ALU_FUN[0]), .Y(n107) );
  NOR3X6M U17 ( .A(n170), .B(ALU_FUN[2]), .C(n101), .Y(n52) );
  INVX4M U18 ( .A(n25), .Y(n117) );
  INVX4M U19 ( .A(n123), .Y(n122) );
  CLKINVX2M U20 ( .A(A[7]), .Y(n113) );
  BUFX4M U30 ( .A(n50), .Y(n21) );
  OAI21X2M U31 ( .A0(n101), .A1(n102), .B0(n103), .Y(n50) );
  XNOR2X4M U32 ( .A(n112), .B(n27), .Y(n143) );
  BUFX4M U33 ( .A(n51), .Y(n22) );
  NOR3X2M U34 ( .A(n170), .B(ALU_FUN[2]), .C(n107), .Y(n51) );
  BUFX4M U35 ( .A(n49), .Y(n23) );
  OAI21X2M U36 ( .A0(n91), .A1(n107), .B0(n103), .Y(n49) );
  OAI31X2M U37 ( .A0(n136), .A1(n127), .A2(n126), .B0(n137), .Y(n129) );
  AOI211X2M U38 ( .A0(n31), .A1(n153), .B0(n133), .C0(n125), .Y(n126) );
  NOR3X12M U39 ( .A(n170), .B(ALU_FUN[2]), .C(n101), .Y(n24) );
  AOI222X2M U40 ( .A0(N108), .A1(n52), .B0(n31), .B1(n117), .C0(N116), .C1(n22), .Y(n87) );
  AOI222X2M U41 ( .A0(N109), .A1(n52), .B0(n32), .B1(n116), .C0(N117), .C1(n22), .Y(n80) );
  AOI222X2M U42 ( .A0(N112), .A1(n52), .B0(n109), .B1(n117), .C0(N120), .C1(
        n22), .Y(n62) );
  AOI222X2M U43 ( .A0(N110), .A1(n24), .B0(n35), .B1(n117), .C0(N118), .C1(n22), .Y(n74) );
  AOI222X2M U44 ( .A0(N111), .A1(n24), .B0(n38), .B1(n116), .C0(N119), .C1(n22), .Y(n68) );
  OAI21X2M U45 ( .A0(n146), .A1(n131), .B0(n147), .Y(N149) );
  OR2X1M U46 ( .A(n102), .B(n107), .Y(n25) );
  OR2X1M U47 ( .A(n101), .B(n91), .Y(n26) );
  AOI31X1M U48 ( .A0(n86), .A1(n87), .A2(n88), .B0(n172), .Y(ALU_OUT_Comb[1])
         );
  NOR2X2M U49 ( .A(n154), .B(n32), .Y(n127) );
  AOI211X2M U50 ( .A0(n134), .A1(n166), .B0(n133), .C0(n132), .Y(n135) );
  NOR2X2M U51 ( .A(n152), .B(n28), .Y(n124) );
  NOR2X2M U52 ( .A(n156), .B(n35), .Y(n136) );
  NOR2X2M U53 ( .A(n151), .B(B[7]), .Y(n146) );
  INVX4M U54 ( .A(n25), .Y(n116) );
  AOI31X1M U55 ( .A0(n79), .A1(n80), .A2(n81), .B0(n172), .Y(ALU_OUT_Comb[2])
         );
  AOI31X1M U56 ( .A0(n73), .A1(n74), .A2(n75), .B0(n172), .Y(ALU_OUT_Comb[3])
         );
  NOR2X4M U57 ( .A(ALU_FUN[2]), .B(ALU_FUN[1]), .Y(n108) );
  AOI31X1M U58 ( .A0(n67), .A1(n68), .A2(n69), .B0(n172), .Y(ALU_OUT_Comb[4])
         );
  AOI31X1M U59 ( .A0(n61), .A1(n62), .A2(n63), .B0(n172), .Y(ALU_OUT_Comb[5])
         );
  CLKBUFX6M U61 ( .A(B[6]), .Y(n27) );
  BUFX6M U62 ( .A(A[2]), .Y(n32) );
  BUFX6M U63 ( .A(A[0]), .Y(n28) );
  INVX4M U64 ( .A(n26), .Y(n118) );
  INVX4M U65 ( .A(n26), .Y(n119) );
  OAI22X1M U66 ( .A0(n85), .A1(n165), .B0(n47), .B1(n167), .Y(n90) );
  BUFX4M U67 ( .A(n48), .Y(n120) );
  BUFX4M U68 ( .A(n48), .Y(n121) );
  NOR2BX8M U69 ( .AN(n108), .B(n107), .Y(n53) );
  NOR2BX8M U70 ( .AN(n108), .B(n101), .Y(n54) );
  INVX4M U71 ( .A(n85), .Y(n168) );
  CLKINVX1M U72 ( .A(n102), .Y(n169) );
  INVX2M U73 ( .A(n115), .Y(n151) );
  INVX4M U74 ( .A(n31), .Y(n166) );
  INVX2M U75 ( .A(n35), .Y(n164) );
  INVX2M U76 ( .A(n38), .Y(n163) );
  INVX2M U77 ( .A(n109), .Y(n162) );
  AOI31X2M U78 ( .A0(n95), .A1(n96), .A2(n97), .B0(n172), .Y(ALU_OUT_Comb[0])
         );
  AOI22X1M U79 ( .A0(N99), .A1(n53), .B0(N91), .B1(n54), .Y(n95) );
  AOI211X2M U80 ( .A0(n118), .A1(n167), .B0(n98), .C0(n99), .Y(n97) );
  AOI222X2M U81 ( .A0(N107), .A1(n24), .B0(n28), .B1(n116), .C0(N115), .C1(n22), .Y(n96) );
  AOI22X1M U82 ( .A0(N100), .A1(n53), .B0(N92), .B1(n54), .Y(n86) );
  AOI211X2M U83 ( .A0(n119), .A1(n166), .B0(n89), .C0(n90), .Y(n88) );
  INVX4M U84 ( .A(n113), .Y(n114) );
  INVX4M U85 ( .A(n110), .Y(n111) );
  AOI22X1M U86 ( .A0(N101), .A1(n53), .B0(N93), .B1(n54), .Y(n79) );
  AOI221X2M U87 ( .A0(n35), .A1(n168), .B0(n118), .B1(n165), .C0(n82), .Y(n81)
         );
  INVX4M U88 ( .A(n42), .Y(n43) );
  INVX4M U89 ( .A(n36), .Y(n37) );
  AOI22X1M U90 ( .A0(N102), .A1(n53), .B0(N94), .B1(n54), .Y(n73) );
  AOI221X2M U91 ( .A0(n38), .A1(n168), .B0(n119), .B1(n164), .C0(n76), .Y(n75)
         );
  INVX4M U92 ( .A(n33), .Y(n34) );
  AOI22X1M U93 ( .A0(N103), .A1(n53), .B0(N95), .B1(n54), .Y(n67) );
  AOI221X2M U94 ( .A0(n168), .A1(n109), .B0(n118), .B1(n163), .C0(n70), .Y(n69) );
  OAI222X1M U95 ( .A0(n59), .A1(n157), .B0(n27), .B1(n60), .C0(n47), .C1(n162), 
        .Y(n58) );
  AOI221X2M U96 ( .A0(n112), .A1(n120), .B0(n23), .B1(n150), .C0(n118), .Y(n60) );
  AOI221X2M U97 ( .A0(n121), .A1(n150), .B0(n112), .B1(n21), .C0(n117), .Y(n59) );
  AOI22X1M U98 ( .A0(N104), .A1(n53), .B0(N96), .B1(n54), .Y(n61) );
  AOI221X2M U99 ( .A0(n168), .A1(n112), .B0(n119), .B1(n162), .C0(n64), .Y(n63) );
  AOI31X2M U100 ( .A0(n55), .A1(n56), .A2(n57), .B0(n172), .Y(ALU_OUT_Comb[6])
         );
  AOI22X1M U101 ( .A0(N105), .A1(n53), .B0(N97), .B1(n54), .Y(n55) );
  AOI222X2M U102 ( .A0(N113), .A1(n24), .B0(n116), .B1(n112), .C0(N121), .C1(
        n22), .Y(n56) );
  AOI221X2M U103 ( .A0(n168), .A1(n115), .B0(n118), .B1(n110), .C0(n58), .Y(
        n57) );
  AOI31X2M U104 ( .A0(n39), .A1(n40), .A2(n41), .B0(n172), .Y(ALU_OUT_Comb[7])
         );
  AOI22X1M U105 ( .A0(N106), .A1(n53), .B0(N98), .B1(n54), .Y(n39) );
  AOI22X1M U106 ( .A0(N122), .A1(n22), .B0(N114), .B1(n24), .Y(n40) );
  AOI221X2M U107 ( .A0(n119), .A1(n113), .B0(n117), .B1(n115), .C0(n44), .Y(
        n41) );
  INVX4M U108 ( .A(ALU_FUN[0]), .Y(n171) );
  NAND2X2M U109 ( .A(ALU_FUN[2]), .B(n170), .Y(n102) );
  NAND3X2M U110 ( .A(n108), .B(ALU_FUN[0]), .C(ALU_FUN[3]), .Y(n103) );
  NAND2X2M U111 ( .A(ALU_FUN[2]), .B(ALU_FUN[1]), .Y(n91) );
  AND3X2M U112 ( .A(n108), .B(n171), .C(ALU_FUN[3]), .Y(n48) );
  NAND4X2M U113 ( .A(N149), .B(n169), .C(ALU_FUN[3]), .D(n171), .Y(n94) );
  NAND3X2M U114 ( .A(ALU_FUN[3]), .B(ALU_FUN[0]), .C(n169), .Y(n85) );
  INVX2M U115 ( .A(n111), .Y(n150) );
  INVXLM U116 ( .A(n135), .Y(n155) );
  INVX2M U117 ( .A(n149), .Y(N148) );
  INVX2M U118 ( .A(n27), .Y(n157) );
  INVX4M U119 ( .A(n29), .Y(n30) );
  INVX4M U120 ( .A(n33), .Y(n35) );
  INVX4M U121 ( .A(n36), .Y(n38) );
  INVX4M U122 ( .A(n29), .Y(n31) );
  INVX4M U123 ( .A(n42), .Y(n109) );
  INVX4M U124 ( .A(n110), .Y(n112) );
  INVX4M U125 ( .A(n113), .Y(n115) );
  INVX4M U126 ( .A(n32), .Y(n165) );
  INVX2M U127 ( .A(n28), .Y(n167) );
  INVX2M U128 ( .A(RST), .Y(n123) );
  INVX2M U129 ( .A(A[6]), .Y(n110) );
  INVX2M U130 ( .A(A[5]), .Y(n42) );
  INVX2M U131 ( .A(A[4]), .Y(n36) );
  INVX2M U132 ( .A(A[3]), .Y(n33) );
  OAI222X1M U133 ( .A0(n83), .A1(n154), .B0(B[2]), .B1(n84), .C0(n47), .C1(
        n166), .Y(n82) );
  AOI221X2M U134 ( .A0(n32), .A1(n120), .B0(n23), .B1(n165), .C0(n118), .Y(n84) );
  AOI221X2M U135 ( .A0(n121), .A1(n165), .B0(n32), .B1(n21), .C0(n117), .Y(n83) );
  OAI222X1M U136 ( .A0(n77), .A1(n156), .B0(B[3]), .B1(n78), .C0(n47), .C1(
        n165), .Y(n76) );
  AOI221X2M U137 ( .A0(n35), .A1(n120), .B0(n23), .B1(n164), .C0(n119), .Y(n78) );
  AOI221X2M U138 ( .A0(n121), .A1(n164), .B0(n35), .B1(n21), .C0(n116), .Y(n77) );
  OAI222X1M U139 ( .A0(n71), .A1(n160), .B0(B[4]), .B1(n72), .C0(n47), .C1(
        n164), .Y(n70) );
  INVX2M U140 ( .A(B[4]), .Y(n160) );
  AOI221X2M U141 ( .A0(n38), .A1(n120), .B0(n23), .B1(n163), .C0(n118), .Y(n72) );
  AOI221X2M U142 ( .A0(n121), .A1(n163), .B0(n38), .B1(n21), .C0(n117), .Y(n71) );
  OAI222X1M U143 ( .A0(n65), .A1(n159), .B0(B[5]), .B1(n66), .C0(n47), .C1(
        n163), .Y(n64) );
  INVX2M U144 ( .A(B[5]), .Y(n159) );
  AOI221X2M U145 ( .A0(n109), .A1(n120), .B0(n23), .B1(n162), .C0(n119), .Y(
        n66) );
  AOI221X2M U146 ( .A0(n121), .A1(n162), .B0(n109), .B1(n21), .C0(n116), .Y(
        n65) );
  OAI222X1M U147 ( .A0(n45), .A1(n158), .B0(B[7]), .B1(n46), .C0(n47), .C1(
        n150), .Y(n44) );
  INVX2M U148 ( .A(B[7]), .Y(n158) );
  AOI221X2M U149 ( .A0(n115), .A1(n120), .B0(n23), .B1(n151), .C0(n119), .Y(
        n46) );
  AOI221X2M U150 ( .A0(n121), .A1(n151), .B0(n115), .B1(n21), .C0(n116), .Y(
        n45) );
  OAI221X1M U151 ( .A0(B[1]), .A1(n92), .B0(n93), .B1(n161), .C0(n94), .Y(n89)
         );
  INVX2M U152 ( .A(B[1]), .Y(n161) );
  AOI221X2M U153 ( .A0(n31), .A1(n120), .B0(n23), .B1(n166), .C0(n119), .Y(n92) );
  AOI221X2M U154 ( .A0(n121), .A1(n166), .B0(n31), .B1(n21), .C0(n116), .Y(n93) );
  OAI2B2X1M U155 ( .A1N(B[0]), .A0(n100), .B0(n85), .B1(n166), .Y(n99) );
  AOI221X2M U156 ( .A0(n121), .A1(n167), .B0(n28), .B1(n21), .C0(n117), .Y(
        n100) );
  OAI211X2M U157 ( .A0(B[0]), .A1(n104), .B0(n105), .C0(n94), .Y(n98) );
  NAND4BBX1M U158 ( .AN(n106), .BN(ALU_FUN[2]), .C(ALU_FUN[3]), .D(ALU_FUN[1]), 
        .Y(n105) );
  AOI221X2M U159 ( .A0(n28), .A1(n120), .B0(n23), .B1(n167), .C0(n118), .Y(
        n104) );
  AOI22X1M U160 ( .A0(N147), .A1(n171), .B0(N148), .B1(ALU_FUN[0]), .Y(n106)
         );
  INVX4M U161 ( .A(Enable), .Y(n172) );
  INVXLM U162 ( .A(n124), .Y(n153) );
  INVX2M U163 ( .A(B[0]), .Y(n152) );
  INVX2M U164 ( .A(B[2]), .Y(n154) );
  INVX2M U165 ( .A(B[3]), .Y(n156) );
  INVX2M U166 ( .A(A[1]), .Y(n29) );
  NAND2BX1M U167 ( .AN(B[4]), .B(n38), .Y(n139) );
  NAND2BX1M U168 ( .AN(n38), .B(B[4]), .Y(n128) );
  CLKNAND2X2M U169 ( .A(n139), .B(n128), .Y(n141) );
  CLKNAND2X2M U170 ( .A(n32), .B(n154), .Y(n138) );
  NAND2BX1M U171 ( .AN(n127), .B(n138), .Y(n133) );
  AOI21X1M U172 ( .A0(n124), .A1(n166), .B0(B[1]), .Y(n125) );
  CLKNAND2X2M U173 ( .A(n35), .B(n156), .Y(n137) );
  NAND2BX1M U174 ( .AN(n109), .B(B[5]), .Y(n144) );
  OAI211X1M U175 ( .A0(n141), .A1(n129), .B0(n128), .C0(n144), .Y(n130) );
  NAND2BX1M U176 ( .AN(B[5]), .B(n109), .Y(n140) );
  AOI32X1M U177 ( .A0(n130), .A1(n140), .A2(n143), .B0(n27), .B1(n150), .Y(
        n131) );
  CLKNAND2X2M U178 ( .A(B[7]), .B(n151), .Y(n147) );
  CLKNAND2X2M U179 ( .A(n28), .B(n152), .Y(n134) );
  OA21X1M U180 ( .A0(n134), .A1(n166), .B0(B[1]), .Y(n132) );
  AOI31X1M U181 ( .A0(n155), .A1(n138), .A2(n137), .B0(n136), .Y(n142) );
  OAI2B11X1M U182 ( .A1N(n142), .A0(n141), .B0(n140), .C0(n139), .Y(n145) );
  AOI32X1M U183 ( .A0(n145), .A1(n144), .A2(n143), .B0(n112), .B1(n157), .Y(
        n148) );
  AOI2B1X1M U184 ( .A1N(n148), .A0(n147), .B0(n146), .Y(n149) );
  NOR2X1M U185 ( .A(N149), .B(N148), .Y(N147) );
  ALU_DW_div_uns_0 div_51 ( .a({n114, n111, n43, n37, n34, n32, n30, n28}), 
        .b({B[7], n27, B[5:0]}), .quotient({N122, N121, N120, N119, N118, N117, 
        N116, N115}) );
  ALU_DW01_sub_0 sub_45 ( .A({n114, n111, n43, n37, n34, n32, n30, n28}), .B({
        B[7], n27, B[5:0]}), .CI(1'b0), .DIFF({N106, N105, N104, N103, N102, 
        N101, N100, N99}) );
  ALU_DW01_add_0 add_42 ( .A({n114, n111, n43, n37, n34, n32, n30, n28}), .B({
        B[7], n27, B[5:0]}), .CI(1'b0), .SUM({N98, N97, N96, N95, N94, N93, 
        N92, N91}) );
  ALU_DW02_mult_0 mult_48 ( .A({n114, n111, n43, n37, n34, n32, n30, n28}), 
        .B({B[7], n27, B[5:0]}), .TC(1'b0), .PRODUCT({SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, N114, N113, N112, N111, N110, N109, N108, 
        N107}) );
endmodule


module RegFile_test_1 ( CLK, RST, WrEn, RdEn, Address, WrData, RdData, REG0, 
        REG1, REG2, test_si2, test_si1, test_so2, test_so1, test_se );
  input [3:0] Address;
  input [7:0] WrData;
  output [7:0] RdData;
  output [7:0] REG0;
  output [7:0] REG1;
  output [7:0] REG2;
  input CLK, RST, WrEn, RdEn, test_si2, test_si1, test_se;
  output test_so2, test_so1;
  wire   N10, N11, N12, N13, n582, n583, n584, n585, n586, n587, n588, n589,
         n663, n664, n665, n666, n667, n668, n590, n591, n592, n593, n594,
         n669, n670, n671, n672, n673, n674, \regArr[15][7] , \regArr[15][6] ,
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
         \regArr[3][1] , \regArr[3][0] , N35, N36, N37, N38, N39, N40, N41,
         N42, n149, n150, n151, n152, n153, n154, n155, n156, n158, n161, n162,
         n164, n165, n166, n167, n168, n169, n170, n174, n176, n177, n178,
         n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211,
         n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222,
         n223, n224, n225, n226, n227, n228, n229, n230, n231, n232, n233,
         n234, n235, n236, n237, n238, n239, n240, n241, n242, n243, n244,
         n245, n246, n247, n248, n249, n250, n251, n252, n253, n254, n255,
         n256, n257, n258, n259, n260, n261, n262, n263, n264, n265, n266,
         n267, n268, n269, n270, n271, n272, n273, n274, n275, n276, n277,
         n278, n279, n280, n281, n282, n283, n284, n285, n286, n287, n288,
         n289, n290, n291, n292, n293, n294, n295, n296, n297, n298, n299,
         n300, n301, n302, n303, n304, n305, n306, n307, n308, n309, n310,
         n311, n312, n137, n139, n141, n143, n145, n439, n440, n441, n442,
         n443, n444, n445, n446, n447, n448, n449, n450, n451, n452, n453,
         n454, n455, n456, n457, n458, n459, n460, n461, n462, n463, n464,
         n465, n466, n467, n468, n469, n470, n471, n472, n473, n474, n475,
         n476, n477, n478, n479, n480, n481, n482, n483, n484, n485, n486,
         n487, n489, n491, n493, n495, n497, n499, n501, n503, n504, n505,
         n506, n507, n508, n509, n510, n511, n512, n513, n514, n515, n516,
         n517, n518, n519, n520, n521, n522, n523, n524, n525, n526, n527,
         n528, n529, n530, n531, n532, n533, n534, n535, n536, n537, n538,
         n539, n540, n541, n542, n543, n544, n545, n546, n547, n548, n549,
         n550, n551, n552, n553, n554, n555, n556, n557, n558, n559, n560,
         n561, n562, n563, n564, n565, n566, n567, n568, n569, n570, n571,
         n572, n573, n574, n575, n576, n577, n578, n579, n580, n581, n599,
         n601, n605, n607, n611, n613, n614, n615, n616, n619, n620, n628,
         n629, n631, n636, n637, n640, n641, n642, n643, n644, n645, n646,
         n647, n648, n649, n650, n651, n652, n655, n656, n659, n660, n661,
         n662;
  assign N10 = Address[0];
  assign N11 = Address[1];
  assign N12 = Address[2];
  assign N13 = Address[3];
  assign REG0[3] = n666;
  assign REG0[1] = n667;
  assign REG2[1] = n673;
  assign test_so2 = \regArr[15][7] ;
  assign test_so1 = \regArr[5][6] ;

  SDFFRQX2M \regArr_reg[1][5]  ( .D(n190), .SI(REG1[4]), .SE(test_se), .CK(CLK), .RN(n562), .Q(n591) );
  SDFFRQX2M \regArr_reg[1][4]  ( .D(n189), .SI(REG1[3]), .SE(test_se), .CK(CLK), .RN(n562), .Q(n592) );
  SDFFRQX2M \regArr_reg[1][1]  ( .D(n186), .SI(REG1[0]), .SE(test_se), .CK(CLK), .RN(n562), .Q(n593) );
  SDFFRQX2M \regArr_reg[1][0]  ( .D(n185), .SI(n615), .SE(test_se), .CK(CLK), 
        .RN(n562), .Q(n594) );
  SDFFRQX1M \regArr_reg[15][7]  ( .D(n304), .SI(\regArr[15][6] ), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(\regArr[15][7] ) );
  SDFFRQX1M \regArr_reg[15][6]  ( .D(n303), .SI(\regArr[15][5] ), .SE(test_se), 
        .CK(CLK), .RN(n552), .Q(\regArr[15][6] ) );
  SDFFRQX1M \regArr_reg[15][5]  ( .D(n302), .SI(\regArr[15][4] ), .SE(test_se), 
        .CK(CLK), .RN(n552), .Q(\regArr[15][5] ) );
  SDFFRQX1M \regArr_reg[15][4]  ( .D(n301), .SI(\regArr[15][3] ), .SE(test_se), 
        .CK(CLK), .RN(n552), .Q(\regArr[15][4] ) );
  SDFFRQX1M \regArr_reg[15][3]  ( .D(n300), .SI(\regArr[15][2] ), .SE(test_se), 
        .CK(CLK), .RN(n553), .Q(\regArr[15][3] ) );
  SDFFRQX1M \regArr_reg[15][2]  ( .D(n299), .SI(\regArr[15][1] ), .SE(test_se), 
        .CK(CLK), .RN(n553), .Q(\regArr[15][2] ) );
  SDFFRQX1M \regArr_reg[14][7]  ( .D(n296), .SI(\regArr[14][6] ), .SE(test_se), 
        .CK(CLK), .RN(n553), .Q(\regArr[14][7] ) );
  SDFFRQX1M \regArr_reg[14][6]  ( .D(n295), .SI(\regArr[14][5] ), .SE(test_se), 
        .CK(CLK), .RN(n553), .Q(\regArr[14][6] ) );
  SDFFRQX1M \regArr_reg[14][5]  ( .D(n294), .SI(\regArr[14][4] ), .SE(test_se), 
        .CK(CLK), .RN(n553), .Q(\regArr[14][5] ) );
  SDFFRQX1M \regArr_reg[14][4]  ( .D(n293), .SI(\regArr[14][3] ), .SE(test_se), 
        .CK(CLK), .RN(n553), .Q(\regArr[14][4] ) );
  SDFFRQX1M \regArr_reg[14][3]  ( .D(n292), .SI(\regArr[14][2] ), .SE(test_se), 
        .CK(CLK), .RN(n553), .Q(\regArr[14][3] ) );
  SDFFRQX1M \regArr_reg[14][2]  ( .D(n291), .SI(\regArr[14][1] ), .SE(test_se), 
        .CK(CLK), .RN(n553), .Q(\regArr[14][2] ) );
  SDFFRQX1M \regArr_reg[14][1]  ( .D(n290), .SI(\regArr[14][0] ), .SE(test_se), 
        .CK(CLK), .RN(n553), .Q(\regArr[14][1] ) );
  SDFFRQX1M \regArr_reg[14][0]  ( .D(n289), .SI(\regArr[13][7] ), .SE(test_se), 
        .CK(CLK), .RN(n553), .Q(\regArr[14][0] ) );
  SDFFRQX1M \regArr_reg[13][7]  ( .D(n288), .SI(\regArr[13][6] ), .SE(test_se), 
        .CK(CLK), .RN(n554), .Q(\regArr[13][7] ) );
  SDFFRQX1M \regArr_reg[13][6]  ( .D(n287), .SI(\regArr[13][5] ), .SE(test_se), 
        .CK(CLK), .RN(n554), .Q(\regArr[13][6] ) );
  SDFFRQX1M \regArr_reg[13][5]  ( .D(n286), .SI(\regArr[13][4] ), .SE(test_se), 
        .CK(CLK), .RN(n554), .Q(\regArr[13][5] ) );
  SDFFRQX1M \regArr_reg[13][4]  ( .D(n285), .SI(\regArr[13][3] ), .SE(test_se), 
        .CK(CLK), .RN(n554), .Q(\regArr[13][4] ) );
  SDFFRQX1M \regArr_reg[13][3]  ( .D(n284), .SI(\regArr[13][2] ), .SE(test_se), 
        .CK(CLK), .RN(n554), .Q(\regArr[13][3] ) );
  SDFFRQX1M \regArr_reg[13][2]  ( .D(n283), .SI(\regArr[13][1] ), .SE(test_se), 
        .CK(CLK), .RN(n554), .Q(\regArr[13][2] ) );
  SDFFRQX1M \regArr_reg[13][1]  ( .D(n282), .SI(\regArr[13][0] ), .SE(test_se), 
        .CK(CLK), .RN(n554), .Q(\regArr[13][1] ) );
  SDFFRQX1M \regArr_reg[12][0]  ( .D(n273), .SI(\regArr[11][7] ), .SE(test_se), 
        .CK(CLK), .RN(n555), .Q(\regArr[12][0] ) );
  SDFFRQX1M \regArr_reg[11][7]  ( .D(n272), .SI(\regArr[11][6] ), .SE(test_se), 
        .CK(CLK), .RN(n555), .Q(\regArr[11][7] ) );
  SDFFRQX1M \regArr_reg[11][6]  ( .D(n271), .SI(\regArr[11][5] ), .SE(test_se), 
        .CK(CLK), .RN(n555), .Q(\regArr[11][6] ) );
  SDFFRQX1M \regArr_reg[11][5]  ( .D(n270), .SI(\regArr[11][4] ), .SE(test_se), 
        .CK(CLK), .RN(n555), .Q(\regArr[11][5] ) );
  SDFFRQX1M \regArr_reg[11][4]  ( .D(n269), .SI(\regArr[11][3] ), .SE(test_se), 
        .CK(CLK), .RN(n555), .Q(\regArr[11][4] ) );
  SDFFRQX1M \regArr_reg[11][3]  ( .D(n268), .SI(\regArr[11][2] ), .SE(test_se), 
        .CK(CLK), .RN(n555), .Q(\regArr[11][3] ) );
  SDFFRQX1M \regArr_reg[11][2]  ( .D(n267), .SI(\regArr[11][1] ), .SE(test_se), 
        .CK(CLK), .RN(n555), .Q(\regArr[11][2] ) );
  SDFFRQX1M \regArr_reg[9][7]  ( .D(n256), .SI(\regArr[9][6] ), .SE(test_se), 
        .CK(CLK), .RN(n556), .Q(\regArr[9][7] ) );
  SDFFRQX1M \regArr_reg[9][6]  ( .D(n255), .SI(\regArr[9][5] ), .SE(test_se), 
        .CK(CLK), .RN(n556), .Q(\regArr[9][6] ) );
  SDFFRQX1M \regArr_reg[9][5]  ( .D(n254), .SI(\regArr[9][4] ), .SE(test_se), 
        .CK(CLK), .RN(n556), .Q(\regArr[9][5] ) );
  SDFFRQX1M \regArr_reg[9][4]  ( .D(n253), .SI(\regArr[9][3] ), .SE(test_se), 
        .CK(CLK), .RN(n556), .Q(\regArr[9][4] ) );
  SDFFRQX1M \regArr_reg[9][3]  ( .D(n252), .SI(\regArr[9][2] ), .SE(test_se), 
        .CK(CLK), .RN(n557), .Q(\regArr[9][3] ) );
  SDFFRQX1M \regArr_reg[9][2]  ( .D(n251), .SI(\regArr[9][1] ), .SE(test_se), 
        .CK(CLK), .RN(n557), .Q(\regArr[9][2] ) );
  SDFFRQX1M \regArr_reg[9][1]  ( .D(n250), .SI(\regArr[9][0] ), .SE(test_se), 
        .CK(CLK), .RN(n557), .Q(\regArr[9][1] ) );
  SDFFRQX1M \regArr_reg[10][7]  ( .D(n264), .SI(\regArr[10][6] ), .SE(test_se), 
        .CK(CLK), .RN(n556), .Q(\regArr[10][7] ) );
  SDFFRQX1M \regArr_reg[10][6]  ( .D(n263), .SI(\regArr[10][5] ), .SE(test_se), 
        .CK(CLK), .RN(n556), .Q(\regArr[10][6] ) );
  SDFFRQX1M \regArr_reg[10][5]  ( .D(n262), .SI(\regArr[10][4] ), .SE(test_se), 
        .CK(CLK), .RN(n556), .Q(\regArr[10][5] ) );
  SDFFRQX1M \regArr_reg[10][4]  ( .D(n261), .SI(\regArr[10][3] ), .SE(test_se), 
        .CK(CLK), .RN(n556), .Q(\regArr[10][4] ) );
  SDFFRQX1M \regArr_reg[10][3]  ( .D(n260), .SI(\regArr[10][2] ), .SE(test_se), 
        .CK(CLK), .RN(n556), .Q(\regArr[10][3] ) );
  SDFFRQX1M \regArr_reg[10][2]  ( .D(n259), .SI(\regArr[10][1] ), .SE(test_se), 
        .CK(CLK), .RN(n556), .Q(\regArr[10][2] ) );
  SDFFRQX1M \regArr_reg[10][1]  ( .D(n258), .SI(\regArr[10][0] ), .SE(test_se), 
        .CK(CLK), .RN(n556), .Q(\regArr[10][1] ) );
  SDFFRQX1M \regArr_reg[10][0]  ( .D(n257), .SI(\regArr[9][7] ), .SE(test_se), 
        .CK(CLK), .RN(n556), .Q(\regArr[10][0] ) );
  SDFFRQX1M \regArr_reg[8][0]  ( .D(n241), .SI(\regArr[7][7] ), .SE(test_se), 
        .CK(CLK), .RN(n557), .Q(\regArr[8][0] ) );
  SDFFRQX1M \regArr_reg[6][7]  ( .D(n232), .SI(\regArr[6][6] ), .SE(test_se), 
        .CK(CLK), .RN(n558), .Q(\regArr[6][7] ) );
  SDFFRQX1M \regArr_reg[6][6]  ( .D(n231), .SI(\regArr[6][5] ), .SE(test_se), 
        .CK(CLK), .RN(n558), .Q(\regArr[6][6] ) );
  SDFFRQX1M \regArr_reg[6][5]  ( .D(n230), .SI(\regArr[6][4] ), .SE(test_se), 
        .CK(CLK), .RN(n558), .Q(\regArr[6][5] ) );
  SDFFRQX1M \regArr_reg[6][4]  ( .D(n229), .SI(\regArr[6][3] ), .SE(test_se), 
        .CK(CLK), .RN(n558), .Q(\regArr[6][4] ) );
  SDFFRQX1M \regArr_reg[6][3]  ( .D(n228), .SI(\regArr[6][2] ), .SE(test_se), 
        .CK(CLK), .RN(n559), .Q(\regArr[6][3] ) );
  SDFFRQX1M \regArr_reg[6][2]  ( .D(n227), .SI(\regArr[6][1] ), .SE(test_se), 
        .CK(CLK), .RN(n559), .Q(\regArr[6][2] ) );
  SDFFRQX1M \regArr_reg[6][1]  ( .D(n226), .SI(\regArr[6][0] ), .SE(test_se), 
        .CK(CLK), .RN(n559), .Q(\regArr[6][1] ) );
  SDFFRQX1M \regArr_reg[6][0]  ( .D(n225), .SI(\regArr[5][7] ), .SE(test_se), 
        .CK(CLK), .RN(n559), .Q(\regArr[6][0] ) );
  SDFFRQX1M \regArr_reg[4][0]  ( .D(n209), .SI(\regArr[3][7] ), .SE(test_se), 
        .CK(CLK), .RN(n560), .Q(\regArr[4][0] ) );
  SDFFRQX1M \regArr_reg[7][7]  ( .D(n240), .SI(\regArr[7][6] ), .SE(test_se), 
        .CK(CLK), .RN(n558), .Q(\regArr[7][7] ) );
  SDFFRQX1M \regArr_reg[7][6]  ( .D(n239), .SI(\regArr[7][5] ), .SE(test_se), 
        .CK(CLK), .RN(n558), .Q(\regArr[7][6] ) );
  SDFFRQX1M \regArr_reg[7][5]  ( .D(n238), .SI(\regArr[7][4] ), .SE(test_se), 
        .CK(CLK), .RN(n558), .Q(\regArr[7][5] ) );
  SDFFRQX1M \regArr_reg[7][4]  ( .D(n237), .SI(\regArr[7][3] ), .SE(test_se), 
        .CK(CLK), .RN(n558), .Q(\regArr[7][4] ) );
  SDFFRQX1M \regArr_reg[7][3]  ( .D(n236), .SI(\regArr[7][2] ), .SE(test_se), 
        .CK(CLK), .RN(n558), .Q(\regArr[7][3] ) );
  SDFFRQX1M \regArr_reg[7][2]  ( .D(n235), .SI(\regArr[7][1] ), .SE(test_se), 
        .CK(CLK), .RN(n558), .Q(\regArr[7][2] ) );
  SDFFRQX1M \regArr_reg[5][7]  ( .D(n224), .SI(test_si2), .SE(test_se), .CK(
        CLK), .RN(n559), .Q(\regArr[5][7] ) );
  SDFFRQX1M \regArr_reg[5][6]  ( .D(n223), .SI(\regArr[5][5] ), .SE(test_se), 
        .CK(CLK), .RN(n559), .Q(\regArr[5][6] ) );
  SDFFRQX1M \regArr_reg[5][5]  ( .D(n222), .SI(\regArr[5][4] ), .SE(test_se), 
        .CK(CLK), .RN(n559), .Q(\regArr[5][5] ) );
  SDFFRQX1M \regArr_reg[5][4]  ( .D(n221), .SI(\regArr[5][3] ), .SE(test_se), 
        .CK(CLK), .RN(n559), .Q(\regArr[5][4] ) );
  SDFFRQX1M \regArr_reg[5][3]  ( .D(n220), .SI(\regArr[5][2] ), .SE(test_se), 
        .CK(CLK), .RN(n559), .Q(\regArr[5][3] ) );
  SDFFRQX1M \regArr_reg[5][2]  ( .D(n219), .SI(\regArr[5][1] ), .SE(test_se), 
        .CK(CLK), .RN(n559), .Q(\regArr[5][2] ) );
  SDFFRQX1M \regArr_reg[5][1]  ( .D(n218), .SI(\regArr[5][0] ), .SE(test_se), 
        .CK(CLK), .RN(n559), .Q(\regArr[5][1] ) );
  SDFFRQX1M \regArr_reg[2][7]  ( .D(n200), .SI(REG2[6]), .SE(test_se), .CK(CLK), .RN(n561), .Q(n669) );
  SDFFRQX1M \regArr_reg[2][5]  ( .D(n198), .SI(n671), .SE(test_se), .CK(CLK), 
        .RN(n561), .Q(n670) );
  SDFFRQX1M \regArr_reg[2][4]  ( .D(n197), .SI(n672), .SE(test_se), .CK(CLK), 
        .RN(n561), .Q(n671) );
  SDFFRQX1M \regArr_reg[2][3]  ( .D(n196), .SI(REG2[2]), .SE(test_se), .CK(CLK), .RN(n561), .Q(n672) );
  SDFFRQX1M \regArr_reg[3][7]  ( .D(n208), .SI(\regArr[3][6] ), .SE(test_se), 
        .CK(CLK), .RN(n560), .Q(\regArr[3][7] ) );
  SDFFRQX1M \regArr_reg[3][6]  ( .D(n207), .SI(\regArr[3][5] ), .SE(test_se), 
        .CK(CLK), .RN(n560), .Q(\regArr[3][6] ) );
  SDFFRQX1M \regArr_reg[3][5]  ( .D(n206), .SI(\regArr[3][4] ), .SE(test_se), 
        .CK(CLK), .RN(n560), .Q(\regArr[3][5] ) );
  SDFFRQX1M \regArr_reg[0][7]  ( .D(n184), .SI(REG0[6]), .SE(test_se), .CK(CLK), .RN(n562), .Q(n663) );
  SDFFRQX1M \regArr_reg[0][0]  ( .D(n177), .SI(n582), .SE(test_se), .CK(CLK), 
        .RN(n563), .Q(n668) );
  SDFFRQX1M \regArr_reg[2][0]  ( .D(n193), .SI(REG1[7]), .SE(test_se), .CK(CLK), .RN(n561), .Q(n674) );
  SDFFRQX1M \regArr_reg[3][0]  ( .D(n201), .SI(n669), .SE(test_se), .CK(CLK), 
        .RN(n561), .Q(\regArr[3][0] ) );
  SDFFRQX1M \regArr_reg[1][6]  ( .D(n191), .SI(REG1[5]), .SE(test_se), .CK(CLK), .RN(n562), .Q(REG1[6]) );
  SDFFRQX1M \RdData_reg[7]  ( .D(n312), .SI(n583), .SE(test_se), .CK(CLK), 
        .RN(n552), .Q(n582) );
  SDFFRQX1M \RdData_reg[6]  ( .D(n311), .SI(n584), .SE(test_se), .CK(CLK), 
        .RN(n552), .Q(n583) );
  SDFFRQX1M \RdData_reg[5]  ( .D(n310), .SI(n585), .SE(test_se), .CK(CLK), 
        .RN(n552), .Q(n584) );
  SDFFRQX1M \RdData_reg[1]  ( .D(n306), .SI(n589), .SE(test_se), .CK(CLK), 
        .RN(n552), .Q(n588) );
  SDFFRQX1M \RdData_reg[4]  ( .D(n309), .SI(n586), .SE(test_se), .CK(CLK), 
        .RN(n552), .Q(n585) );
  SDFFRQX1M \RdData_reg[3]  ( .D(n308), .SI(n587), .SE(test_se), .CK(CLK), 
        .RN(n552), .Q(n586) );
  SDFFRQX1M \RdData_reg[2]  ( .D(n307), .SI(n588), .SE(test_se), .CK(CLK), 
        .RN(n552), .Q(n587) );
  SDFFRQX1M \regArr_reg[1][7]  ( .D(n192), .SI(n616), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(n590) );
  SDFFRQX4M \regArr_reg[1][3]  ( .D(n188), .SI(REG1[2]), .SE(test_se), .CK(CLK), .RN(n562), .Q(REG1[3]) );
  SDFFRQX4M \regArr_reg[1][2]  ( .D(n187), .SI(REG1[1]), .SE(test_se), .CK(CLK), .RN(n562), .Q(REG1[2]) );
  SDFFRQX2M \regArr_reg[0][2]  ( .D(n179), .SI(n667), .SE(test_se), .CK(CLK), 
        .RN(n563), .Q(REG0[2]) );
  SDFFRQX2M \regArr_reg[0][6]  ( .D(n183), .SI(n664), .SE(test_se), .CK(CLK), 
        .RN(n562), .Q(REG0[6]) );
  CLKBUFX6M U139 ( .A(n564), .Y(n552) );
  CLKBUFX6M U140 ( .A(n567), .Y(n562) );
  MX4XLM U141 ( .A(REG0[6]), .B(n616), .C(REG2[6]), .D(\regArr[3][6] ), .S0(
        n486), .S1(n481), .Y(n474) );
  MX4XLM U142 ( .A(REG0[2]), .B(REG1[2]), .C(REG2[2]), .D(\regArr[3][2] ), 
        .S0(n485), .S1(n482), .Y(n458) );
  INVXLM U143 ( .A(n592), .Y(n137) );
  INVX6M U144 ( .A(n137), .Y(REG1[4]) );
  INVXLM U145 ( .A(n591), .Y(n139) );
  INVX6M U146 ( .A(n139), .Y(REG1[5]) );
  INVXLM U147 ( .A(n593), .Y(n141) );
  INVX6M U148 ( .A(n141), .Y(REG1[1]) );
  INVXLM U149 ( .A(n594), .Y(n143) );
  INVX6M U150 ( .A(n143), .Y(REG1[0]) );
  INVXLM U151 ( .A(n590), .Y(n145) );
  INVX6M U152 ( .A(n145), .Y(REG1[7]) );
  CLKINVX1M U289 ( .A(n582), .Y(n501) );
  CLKINVX1M U290 ( .A(n583), .Y(n499) );
  CLKINVX1M U291 ( .A(n584), .Y(n497) );
  CLKINVX1M U292 ( .A(n585), .Y(n495) );
  CLKINVX1M U293 ( .A(n586), .Y(n493) );
  CLKINVX1M U294 ( .A(n587), .Y(n491) );
  CLKINVX1M U295 ( .A(n588), .Y(n489) );
  CLKINVX1M U296 ( .A(n589), .Y(n487) );
  AND2X2M U297 ( .A(n162), .B(n569), .Y(n151) );
  NOR2X4M U298 ( .A(n571), .B(N12), .Y(n155) );
  NOR2X4M U299 ( .A(n570), .B(N12), .Y(n150) );
  AND2X2M U300 ( .A(n174), .B(n569), .Y(n166) );
  AND2X2M U301 ( .A(N12), .B(n570), .Y(n161) );
  BUFX4M U302 ( .A(n176), .Y(n519) );
  AND2X2M U303 ( .A(N12), .B(n571), .Y(n158) );
  INVX2M U304 ( .A(N11), .Y(n571) );
  CLKBUFX8M U305 ( .A(n483), .Y(n485) );
  CLKBUFX8M U306 ( .A(n480), .Y(n482) );
  BUFX4M U307 ( .A(n480), .Y(n481) );
  BUFX6M U308 ( .A(n564), .Y(n561) );
  BUFX6M U309 ( .A(n564), .Y(n560) );
  BUFX6M U310 ( .A(n565), .Y(n559) );
  BUFX6M U311 ( .A(n565), .Y(n558) );
  BUFX6M U312 ( .A(n566), .Y(n557) );
  BUFX6M U313 ( .A(n566), .Y(n556) );
  BUFX6M U314 ( .A(n567), .Y(n555) );
  BUFX6M U315 ( .A(n565), .Y(n554) );
  BUFX6M U316 ( .A(n567), .Y(n553) );
  BUFX2M U317 ( .A(n566), .Y(n563) );
  CLKBUFX8M U318 ( .A(n484), .Y(n486) );
  BUFX2M U319 ( .A(n483), .Y(n484) );
  BUFX4M U320 ( .A(n154), .Y(n547) );
  BUFX4M U321 ( .A(n156), .Y(n545) );
  BUFX4M U322 ( .A(n152), .Y(n549) );
  BUFX4M U323 ( .A(n165), .Y(n535) );
  BUFX4M U324 ( .A(n167), .Y(n533) );
  BUFX4M U325 ( .A(n169), .Y(n531) );
  BUFX4M U326 ( .A(n170), .Y(n529) );
  BUFX4M U327 ( .A(n149), .Y(n551) );
  BUFX4M U328 ( .A(n154), .Y(n546) );
  BUFX4M U329 ( .A(n156), .Y(n544) );
  BUFX4M U330 ( .A(n152), .Y(n548) );
  BUFX4M U331 ( .A(n165), .Y(n534) );
  BUFX4M U332 ( .A(n167), .Y(n532) );
  BUFX4M U333 ( .A(n169), .Y(n530) );
  BUFX4M U334 ( .A(n170), .Y(n528) );
  BUFX4M U335 ( .A(n149), .Y(n550) );
  INVX4M U336 ( .A(n439), .Y(n543) );
  INVX4M U337 ( .A(n439), .Y(n542) );
  INVX4M U338 ( .A(n440), .Y(n541) );
  INVX4M U339 ( .A(n440), .Y(n540) );
  INVX4M U340 ( .A(n441), .Y(n539) );
  INVX4M U341 ( .A(n441), .Y(n538) );
  INVX4M U342 ( .A(n442), .Y(n537) );
  INVX4M U343 ( .A(n442), .Y(n536) );
  INVX4M U344 ( .A(n443), .Y(n527) );
  INVX4M U345 ( .A(n443), .Y(n526) );
  INVX4M U346 ( .A(n444), .Y(n525) );
  INVX4M U347 ( .A(n444), .Y(n524) );
  INVX4M U348 ( .A(n445), .Y(n523) );
  INVX4M U349 ( .A(n445), .Y(n522) );
  INVX4M U350 ( .A(n446), .Y(n521) );
  INVX4M U351 ( .A(n446), .Y(n520) );
  BUFX2M U352 ( .A(n479), .Y(n480) );
  BUFX2M U353 ( .A(n566), .Y(n564) );
  BUFX2M U354 ( .A(RST), .Y(n565) );
  BUFX2M U355 ( .A(n567), .Y(n566) );
  AND2X2M U356 ( .A(n162), .B(n568), .Y(n153) );
  AND2X2M U357 ( .A(n174), .B(n568), .Y(n168) );
  NAND2X2M U358 ( .A(n150), .B(n151), .Y(n149) );
  NAND2X2M U359 ( .A(n155), .B(n151), .Y(n154) );
  NAND2X2M U360 ( .A(n155), .B(n153), .Y(n156) );
  NAND2X2M U361 ( .A(n153), .B(n150), .Y(n152) );
  NAND2X2M U362 ( .A(n166), .B(n150), .Y(n165) );
  NAND2X2M U363 ( .A(n168), .B(n150), .Y(n167) );
  NAND2X2M U364 ( .A(n166), .B(n155), .Y(n169) );
  NAND2X2M U365 ( .A(n168), .B(n155), .Y(n170) );
  AND2X2M U366 ( .A(n158), .B(n151), .Y(n439) );
  AND2X2M U367 ( .A(n158), .B(n153), .Y(n440) );
  AND2X2M U368 ( .A(n161), .B(n151), .Y(n441) );
  AND2X2M U369 ( .A(n161), .B(n153), .Y(n442) );
  AND2X2M U370 ( .A(n166), .B(n158), .Y(n443) );
  AND2X2M U371 ( .A(n168), .B(n158), .Y(n444) );
  AND2X2M U372 ( .A(n166), .B(n161), .Y(n445) );
  AND2X2M U373 ( .A(n168), .B(n161), .Y(n446) );
  BUFX2M U374 ( .A(n570), .Y(n479) );
  BUFX2M U375 ( .A(n568), .Y(n483) );
  INVX4M U376 ( .A(n519), .Y(n572) );
  BUFX2M U377 ( .A(RST), .Y(n567) );
  NOR2BX2M U378 ( .AN(n164), .B(N13), .Y(n162) );
  NOR2X2M U379 ( .A(n573), .B(RdEn), .Y(n164) );
  AND2X2M U380 ( .A(N13), .B(n164), .Y(n174) );
  INVX2M U381 ( .A(n571), .Y(n570) );
  INVX2M U382 ( .A(n569), .Y(n568) );
  BUFX4M U383 ( .A(n581), .Y(n517) );
  BUFX4M U384 ( .A(n580), .Y(n515) );
  BUFX4M U385 ( .A(n579), .Y(n513) );
  BUFX4M U386 ( .A(n578), .Y(n511) );
  BUFX4M U387 ( .A(n577), .Y(n509) );
  BUFX4M U388 ( .A(n576), .Y(n507) );
  BUFX4M U389 ( .A(n575), .Y(n505) );
  BUFX4M U390 ( .A(n574), .Y(n503) );
  BUFX4M U391 ( .A(n581), .Y(n518) );
  BUFX4M U392 ( .A(n580), .Y(n516) );
  BUFX4M U393 ( .A(n579), .Y(n514) );
  BUFX4M U394 ( .A(n578), .Y(n512) );
  BUFX4M U395 ( .A(n577), .Y(n510) );
  BUFX4M U396 ( .A(n576), .Y(n508) );
  BUFX4M U397 ( .A(n575), .Y(n506) );
  BUFX4M U398 ( .A(n574), .Y(n504) );
  NAND2X2M U399 ( .A(RdEn), .B(n573), .Y(n176) );
  OAI2BB2X1M U400 ( .B0(n516), .B1(n548), .A0N(REG1[1]), .A1N(n549), .Y(n186)
         );
  OAI2BB2X1M U401 ( .B0(n514), .B1(n548), .A0N(REG1[2]), .A1N(n549), .Y(n187)
         );
  OAI2BB2X1M U402 ( .B0(n512), .B1(n548), .A0N(REG1[3]), .A1N(n549), .Y(n188)
         );
  OAI2BB2X1M U403 ( .B0(n510), .B1(n548), .A0N(REG1[4]), .A1N(n549), .Y(n189)
         );
  OAI2BB2X1M U404 ( .B0(n508), .B1(n548), .A0N(REG1[5]), .A1N(n549), .Y(n190)
         );
  OAI2BB2X1M U405 ( .B0(n506), .B1(n548), .A0N(n649), .A1N(n549), .Y(n191) );
  OAI2BB2X1M U406 ( .B0(n504), .B1(n548), .A0N(REG1[7]), .A1N(n549), .Y(n192)
         );
  OAI2BB2X1M U407 ( .B0(n516), .B1(n546), .A0N(n673), .A1N(n547), .Y(n194) );
  OAI2BB2X1M U408 ( .B0(n514), .B1(n546), .A0N(REG2[2]), .A1N(n547), .Y(n195)
         );
  OAI2BB2X1M U409 ( .B0(n512), .B1(n546), .A0N(REG2[3]), .A1N(n547), .Y(n196)
         );
  OAI2BB2X1M U410 ( .B0(n510), .B1(n546), .A0N(REG2[4]), .A1N(n547), .Y(n197)
         );
  OAI2BB2X1M U411 ( .B0(n508), .B1(n546), .A0N(REG2[5]), .A1N(n547), .Y(n198)
         );
  OAI2BB2X1M U412 ( .B0(n506), .B1(n546), .A0N(REG2[6]), .A1N(n547), .Y(n199)
         );
  OAI2BB2X1M U413 ( .B0(n504), .B1(n546), .A0N(REG2[7]), .A1N(n547), .Y(n200)
         );
  OAI2BB2X1M U414 ( .B0(n516), .B1(n544), .A0N(\regArr[3][1] ), .A1N(n545), 
        .Y(n202) );
  OAI2BB2X1M U415 ( .B0(n514), .B1(n544), .A0N(\regArr[3][2] ), .A1N(n545), 
        .Y(n203) );
  OAI2BB2X1M U416 ( .B0(n512), .B1(n544), .A0N(\regArr[3][3] ), .A1N(n545), 
        .Y(n204) );
  OAI2BB2X1M U417 ( .B0(n510), .B1(n544), .A0N(\regArr[3][4] ), .A1N(n545), 
        .Y(n205) );
  OAI2BB2X1M U418 ( .B0(n508), .B1(n544), .A0N(\regArr[3][5] ), .A1N(n545), 
        .Y(n206) );
  OAI2BB2X1M U419 ( .B0(n506), .B1(n544), .A0N(\regArr[3][6] ), .A1N(n545), 
        .Y(n207) );
  OAI2BB2X1M U420 ( .B0(n504), .B1(n544), .A0N(\regArr[3][7] ), .A1N(n545), 
        .Y(n208) );
  OAI2BB2X1M U421 ( .B0(n518), .B1(n543), .A0N(\regArr[4][0] ), .A1N(n543), 
        .Y(n209) );
  OAI2BB2X1M U422 ( .B0(n516), .B1(n542), .A0N(\regArr[4][1] ), .A1N(n542), 
        .Y(n210) );
  OAI2BB2X1M U423 ( .B0(n514), .B1(n543), .A0N(\regArr[4][2] ), .A1N(n543), 
        .Y(n211) );
  OAI2BB2X1M U424 ( .B0(n512), .B1(n542), .A0N(\regArr[4][3] ), .A1N(n542), 
        .Y(n212) );
  OAI2BB2X1M U425 ( .B0(n510), .B1(n543), .A0N(\regArr[4][4] ), .A1N(n543), 
        .Y(n213) );
  OAI2BB2X1M U426 ( .B0(n508), .B1(n542), .A0N(\regArr[4][5] ), .A1N(n542), 
        .Y(n214) );
  OAI2BB2X1M U427 ( .B0(n506), .B1(n543), .A0N(\regArr[4][6] ), .A1N(n543), 
        .Y(n215) );
  OAI2BB2X1M U428 ( .B0(n504), .B1(n542), .A0N(\regArr[4][7] ), .A1N(n542), 
        .Y(n216) );
  OAI2BB2X1M U429 ( .B0(n518), .B1(n541), .A0N(\regArr[5][0] ), .A1N(n541), 
        .Y(n217) );
  OAI2BB2X1M U430 ( .B0(n516), .B1(n540), .A0N(\regArr[5][1] ), .A1N(n540), 
        .Y(n218) );
  OAI2BB2X1M U431 ( .B0(n514), .B1(n541), .A0N(\regArr[5][2] ), .A1N(n541), 
        .Y(n219) );
  OAI2BB2X1M U432 ( .B0(n512), .B1(n540), .A0N(\regArr[5][3] ), .A1N(n540), 
        .Y(n220) );
  OAI2BB2X1M U433 ( .B0(n510), .B1(n541), .A0N(\regArr[5][4] ), .A1N(n541), 
        .Y(n221) );
  OAI2BB2X1M U434 ( .B0(n508), .B1(n540), .A0N(\regArr[5][5] ), .A1N(n540), 
        .Y(n222) );
  OAI2BB2X1M U435 ( .B0(n506), .B1(n541), .A0N(\regArr[5][6] ), .A1N(n541), 
        .Y(n223) );
  OAI2BB2X1M U436 ( .B0(n504), .B1(n540), .A0N(\regArr[5][7] ), .A1N(n540), 
        .Y(n224) );
  OAI2BB2X1M U437 ( .B0(n518), .B1(n539), .A0N(\regArr[6][0] ), .A1N(n539), 
        .Y(n225) );
  OAI2BB2X1M U438 ( .B0(n516), .B1(n538), .A0N(\regArr[6][1] ), .A1N(n538), 
        .Y(n226) );
  OAI2BB2X1M U439 ( .B0(n514), .B1(n539), .A0N(\regArr[6][2] ), .A1N(n539), 
        .Y(n227) );
  OAI2BB2X1M U440 ( .B0(n512), .B1(n538), .A0N(\regArr[6][3] ), .A1N(n538), 
        .Y(n228) );
  OAI2BB2X1M U441 ( .B0(n510), .B1(n539), .A0N(\regArr[6][4] ), .A1N(n539), 
        .Y(n229) );
  OAI2BB2X1M U442 ( .B0(n508), .B1(n538), .A0N(\regArr[6][5] ), .A1N(n538), 
        .Y(n230) );
  OAI2BB2X1M U443 ( .B0(n506), .B1(n539), .A0N(\regArr[6][6] ), .A1N(n539), 
        .Y(n231) );
  OAI2BB2X1M U444 ( .B0(n504), .B1(n538), .A0N(\regArr[6][7] ), .A1N(n538), 
        .Y(n232) );
  OAI2BB2X1M U445 ( .B0(n518), .B1(n537), .A0N(\regArr[7][0] ), .A1N(n537), 
        .Y(n233) );
  OAI2BB2X1M U446 ( .B0(n516), .B1(n536), .A0N(\regArr[7][1] ), .A1N(n536), 
        .Y(n234) );
  OAI2BB2X1M U447 ( .B0(n514), .B1(n537), .A0N(\regArr[7][2] ), .A1N(n537), 
        .Y(n235) );
  OAI2BB2X1M U448 ( .B0(n512), .B1(n536), .A0N(\regArr[7][3] ), .A1N(n536), 
        .Y(n236) );
  OAI2BB2X1M U449 ( .B0(n510), .B1(n537), .A0N(\regArr[7][4] ), .A1N(n537), 
        .Y(n237) );
  OAI2BB2X1M U450 ( .B0(n508), .B1(n536), .A0N(\regArr[7][5] ), .A1N(n536), 
        .Y(n238) );
  OAI2BB2X1M U451 ( .B0(n506), .B1(n537), .A0N(\regArr[7][6] ), .A1N(n537), 
        .Y(n239) );
  OAI2BB2X1M U452 ( .B0(n504), .B1(n536), .A0N(\regArr[7][7] ), .A1N(n536), 
        .Y(n240) );
  OAI2BB2X1M U453 ( .B0(n516), .B1(n534), .A0N(\regArr[8][1] ), .A1N(n535), 
        .Y(n242) );
  OAI2BB2X1M U454 ( .B0(n514), .B1(n534), .A0N(\regArr[8][2] ), .A1N(n535), 
        .Y(n243) );
  OAI2BB2X1M U455 ( .B0(n512), .B1(n534), .A0N(\regArr[8][3] ), .A1N(n535), 
        .Y(n244) );
  OAI2BB2X1M U456 ( .B0(n510), .B1(n534), .A0N(\regArr[8][4] ), .A1N(n535), 
        .Y(n245) );
  OAI2BB2X1M U457 ( .B0(n508), .B1(n534), .A0N(\regArr[8][5] ), .A1N(n535), 
        .Y(n246) );
  OAI2BB2X1M U458 ( .B0(n506), .B1(n534), .A0N(\regArr[8][6] ), .A1N(n535), 
        .Y(n247) );
  OAI2BB2X1M U459 ( .B0(n504), .B1(n534), .A0N(\regArr[8][7] ), .A1N(n535), 
        .Y(n248) );
  OAI2BB2X1M U460 ( .B0(n515), .B1(n532), .A0N(\regArr[9][1] ), .A1N(n533), 
        .Y(n250) );
  OAI2BB2X1M U461 ( .B0(n513), .B1(n532), .A0N(\regArr[9][2] ), .A1N(n533), 
        .Y(n251) );
  OAI2BB2X1M U462 ( .B0(n511), .B1(n532), .A0N(\regArr[9][3] ), .A1N(n533), 
        .Y(n252) );
  OAI2BB2X1M U463 ( .B0(n509), .B1(n532), .A0N(\regArr[9][4] ), .A1N(n533), 
        .Y(n253) );
  OAI2BB2X1M U464 ( .B0(n507), .B1(n532), .A0N(\regArr[9][5] ), .A1N(n533), 
        .Y(n254) );
  OAI2BB2X1M U465 ( .B0(n505), .B1(n532), .A0N(\regArr[9][6] ), .A1N(n533), 
        .Y(n255) );
  OAI2BB2X1M U466 ( .B0(n503), .B1(n532), .A0N(\regArr[9][7] ), .A1N(n533), 
        .Y(n256) );
  OAI2BB2X1M U467 ( .B0(n515), .B1(n530), .A0N(\regArr[10][1] ), .A1N(n531), 
        .Y(n258) );
  OAI2BB2X1M U468 ( .B0(n513), .B1(n530), .A0N(\regArr[10][2] ), .A1N(n531), 
        .Y(n259) );
  OAI2BB2X1M U469 ( .B0(n511), .B1(n530), .A0N(\regArr[10][3] ), .A1N(n531), 
        .Y(n260) );
  OAI2BB2X1M U470 ( .B0(n509), .B1(n530), .A0N(\regArr[10][4] ), .A1N(n531), 
        .Y(n261) );
  OAI2BB2X1M U471 ( .B0(n507), .B1(n530), .A0N(\regArr[10][5] ), .A1N(n531), 
        .Y(n262) );
  OAI2BB2X1M U472 ( .B0(n505), .B1(n530), .A0N(\regArr[10][6] ), .A1N(n531), 
        .Y(n263) );
  OAI2BB2X1M U473 ( .B0(n503), .B1(n530), .A0N(\regArr[10][7] ), .A1N(n531), 
        .Y(n264) );
  OAI2BB2X1M U474 ( .B0(n515), .B1(n528), .A0N(\regArr[11][1] ), .A1N(n529), 
        .Y(n266) );
  OAI2BB2X1M U475 ( .B0(n513), .B1(n528), .A0N(\regArr[11][2] ), .A1N(n529), 
        .Y(n267) );
  OAI2BB2X1M U476 ( .B0(n511), .B1(n528), .A0N(\regArr[11][3] ), .A1N(n529), 
        .Y(n268) );
  OAI2BB2X1M U477 ( .B0(n509), .B1(n528), .A0N(\regArr[11][4] ), .A1N(n529), 
        .Y(n269) );
  OAI2BB2X1M U478 ( .B0(n507), .B1(n528), .A0N(\regArr[11][5] ), .A1N(n529), 
        .Y(n270) );
  OAI2BB2X1M U479 ( .B0(n505), .B1(n528), .A0N(\regArr[11][6] ), .A1N(n529), 
        .Y(n271) );
  OAI2BB2X1M U480 ( .B0(n503), .B1(n528), .A0N(\regArr[11][7] ), .A1N(n529), 
        .Y(n272) );
  OAI2BB2X1M U481 ( .B0(n517), .B1(n527), .A0N(\regArr[12][0] ), .A1N(n527), 
        .Y(n273) );
  OAI2BB2X1M U482 ( .B0(n515), .B1(n526), .A0N(\regArr[12][1] ), .A1N(n526), 
        .Y(n274) );
  OAI2BB2X1M U483 ( .B0(n513), .B1(n527), .A0N(\regArr[12][2] ), .A1N(n527), 
        .Y(n275) );
  OAI2BB2X1M U484 ( .B0(n511), .B1(n526), .A0N(\regArr[12][3] ), .A1N(n526), 
        .Y(n276) );
  OAI2BB2X1M U485 ( .B0(n509), .B1(n527), .A0N(\regArr[12][4] ), .A1N(n527), 
        .Y(n277) );
  OAI2BB2X1M U486 ( .B0(n507), .B1(n526), .A0N(\regArr[12][5] ), .A1N(n526), 
        .Y(n278) );
  OAI2BB2X1M U487 ( .B0(n505), .B1(n527), .A0N(\regArr[12][6] ), .A1N(n527), 
        .Y(n279) );
  OAI2BB2X1M U488 ( .B0(n503), .B1(n526), .A0N(\regArr[12][7] ), .A1N(n526), 
        .Y(n280) );
  OAI2BB2X1M U489 ( .B0(n517), .B1(n525), .A0N(\regArr[13][0] ), .A1N(n525), 
        .Y(n281) );
  OAI2BB2X1M U490 ( .B0(n515), .B1(n524), .A0N(\regArr[13][1] ), .A1N(n524), 
        .Y(n282) );
  OAI2BB2X1M U491 ( .B0(n513), .B1(n525), .A0N(\regArr[13][2] ), .A1N(n525), 
        .Y(n283) );
  OAI2BB2X1M U492 ( .B0(n511), .B1(n524), .A0N(\regArr[13][3] ), .A1N(n524), 
        .Y(n284) );
  OAI2BB2X1M U493 ( .B0(n509), .B1(n525), .A0N(\regArr[13][4] ), .A1N(n525), 
        .Y(n285) );
  OAI2BB2X1M U494 ( .B0(n507), .B1(n524), .A0N(\regArr[13][5] ), .A1N(n524), 
        .Y(n286) );
  OAI2BB2X1M U495 ( .B0(n505), .B1(n525), .A0N(\regArr[13][6] ), .A1N(n525), 
        .Y(n287) );
  OAI2BB2X1M U496 ( .B0(n503), .B1(n524), .A0N(\regArr[13][7] ), .A1N(n524), 
        .Y(n288) );
  OAI2BB2X1M U497 ( .B0(n517), .B1(n523), .A0N(\regArr[14][0] ), .A1N(n523), 
        .Y(n289) );
  OAI2BB2X1M U498 ( .B0(n515), .B1(n522), .A0N(\regArr[14][1] ), .A1N(n522), 
        .Y(n290) );
  OAI2BB2X1M U499 ( .B0(n513), .B1(n523), .A0N(\regArr[14][2] ), .A1N(n523), 
        .Y(n291) );
  OAI2BB2X1M U500 ( .B0(n511), .B1(n522), .A0N(\regArr[14][3] ), .A1N(n522), 
        .Y(n292) );
  OAI2BB2X1M U501 ( .B0(n509), .B1(n523), .A0N(\regArr[14][4] ), .A1N(n523), 
        .Y(n293) );
  OAI2BB2X1M U502 ( .B0(n507), .B1(n522), .A0N(\regArr[14][5] ), .A1N(n522), 
        .Y(n294) );
  OAI2BB2X1M U503 ( .B0(n505), .B1(n523), .A0N(\regArr[14][6] ), .A1N(n523), 
        .Y(n295) );
  OAI2BB2X1M U504 ( .B0(n503), .B1(n522), .A0N(\regArr[14][7] ), .A1N(n522), 
        .Y(n296) );
  OAI2BB2X1M U505 ( .B0(n517), .B1(n521), .A0N(\regArr[15][0] ), .A1N(n521), 
        .Y(n297) );
  OAI2BB2X1M U506 ( .B0(n515), .B1(n520), .A0N(\regArr[15][1] ), .A1N(n520), 
        .Y(n298) );
  OAI2BB2X1M U507 ( .B0(n513), .B1(n521), .A0N(\regArr[15][2] ), .A1N(n521), 
        .Y(n299) );
  OAI2BB2X1M U508 ( .B0(n511), .B1(n520), .A0N(\regArr[15][3] ), .A1N(n520), 
        .Y(n300) );
  OAI2BB2X1M U509 ( .B0(n509), .B1(n521), .A0N(\regArr[15][4] ), .A1N(n521), 
        .Y(n301) );
  OAI2BB2X1M U510 ( .B0(n507), .B1(n520), .A0N(\regArr[15][5] ), .A1N(n520), 
        .Y(n302) );
  OAI2BB2X1M U511 ( .B0(n505), .B1(n521), .A0N(\regArr[15][6] ), .A1N(n521), 
        .Y(n303) );
  OAI2BB2X1M U512 ( .B0(n503), .B1(n520), .A0N(\regArr[15][7] ), .A1N(n520), 
        .Y(n304) );
  OAI2BB2X1M U513 ( .B0(n551), .B1(n517), .A0N(n614), .A1N(n551), .Y(n177) );
  OAI2BB2X1M U514 ( .B0(n550), .B1(n515), .A0N(n667), .A1N(n551), .Y(n178) );
  OAI2BB2X1M U515 ( .B0(n550), .B1(n513), .A0N(REG0[2]), .A1N(n551), .Y(n179)
         );
  OAI2BB2X1M U516 ( .B0(n550), .B1(n511), .A0N(n666), .A1N(n551), .Y(n180) );
  OAI2BB2X1M U517 ( .B0(n550), .B1(n509), .A0N(n613), .A1N(n551), .Y(n181) );
  OAI2BB2X1M U518 ( .B0(n550), .B1(n507), .A0N(n607), .A1N(n551), .Y(n182) );
  OAI2BB2X1M U519 ( .B0(n550), .B1(n505), .A0N(REG0[6]), .A1N(n551), .Y(n183)
         );
  OAI2BB2X1M U520 ( .B0(n550), .B1(n503), .A0N(n615), .A1N(n551), .Y(n184) );
  OAI2BB2X1M U521 ( .B0(n518), .B1(n549), .A0N(REG1[0]), .A1N(n549), .Y(n185)
         );
  OAI2BB2X1M U522 ( .B0(n518), .B1(n547), .A0N(REG2[0]), .A1N(n547), .Y(n193)
         );
  OAI2BB2X1M U523 ( .B0(n518), .B1(n545), .A0N(\regArr[3][0] ), .A1N(n545), 
        .Y(n201) );
  OAI2BB2X1M U524 ( .B0(n518), .B1(n535), .A0N(\regArr[8][0] ), .A1N(n535), 
        .Y(n241) );
  OAI2BB2X1M U525 ( .B0(n517), .B1(n533), .A0N(\regArr[9][0] ), .A1N(n533), 
        .Y(n249) );
  OAI2BB2X1M U526 ( .B0(n517), .B1(n531), .A0N(\regArr[10][0] ), .A1N(n531), 
        .Y(n257) );
  OAI2BB2X1M U527 ( .B0(n517), .B1(n529), .A0N(\regArr[11][0] ), .A1N(n529), 
        .Y(n265) );
  INVX2M U528 ( .A(WrEn), .Y(n573) );
  MX4X1M U529 ( .A(\regArr[4][2] ), .B(\regArr[5][2] ), .C(\regArr[6][2] ), 
        .D(\regArr[7][2] ), .S0(n485), .S1(n482), .Y(n457) );
  MX4X1M U531 ( .A(\regArr[4][4] ), .B(\regArr[5][4] ), .C(\regArr[6][4] ), 
        .D(\regArr[7][4] ), .S0(n485), .S1(n482), .Y(n465) );
  MX4X1M U533 ( .A(\regArr[4][6] ), .B(\regArr[5][6] ), .C(\regArr[6][6] ), 
        .D(\regArr[7][6] ), .S0(n486), .S1(n479), .Y(n473) );
  MX4X1M U535 ( .A(\regArr[12][2] ), .B(\regArr[13][2] ), .C(\regArr[14][2] ), 
        .D(\regArr[15][2] ), .S0(n485), .S1(n482), .Y(n455) );
  MX4X1M U537 ( .A(\regArr[12][4] ), .B(\regArr[13][4] ), .C(\regArr[14][4] ), 
        .D(\regArr[15][4] ), .S0(n485), .S1(n482), .Y(n463) );
  MX4X1M U539 ( .A(\regArr[12][6] ), .B(\regArr[13][6] ), .C(\regArr[14][6] ), 
        .D(\regArr[15][6] ), .S0(n486), .S1(n570), .Y(n471) );
  AO22X1M U545 ( .A0(N42), .A1(n572), .B0(n589), .B1(n519), .Y(n305) );
  MX4X1M U546 ( .A(n450), .B(n448), .C(n449), .D(n447), .S0(N13), .S1(N12), 
        .Y(N42) );
  MX4X1M U547 ( .A(n668), .B(REG1[0]), .C(n674), .D(\regArr[3][0] ), .S0(n568), 
        .S1(n481), .Y(n450) );
  AO22X1M U549 ( .A0(N41), .A1(n572), .B0(n588), .B1(n519), .Y(n306) );
  MX4X1M U550 ( .A(n454), .B(n452), .C(n453), .D(n451), .S0(N13), .S1(N12), 
        .Y(N41) );
  AO22X1M U553 ( .A0(N40), .A1(n572), .B0(n587), .B1(n519), .Y(n307) );
  MX4X1M U554 ( .A(n458), .B(n456), .C(n457), .D(n455), .S0(N13), .S1(N12), 
        .Y(N40) );
  MX4X1M U555 ( .A(\regArr[8][2] ), .B(\regArr[9][2] ), .C(\regArr[10][2] ), 
        .D(\regArr[11][2] ), .S0(n485), .S1(n482), .Y(n456) );
  AO22X1M U556 ( .A0(N39), .A1(n572), .B0(n586), .B1(n519), .Y(n308) );
  MX4X1M U557 ( .A(n462), .B(n460), .C(n461), .D(n459), .S0(N13), .S1(N12), 
        .Y(N39) );
  AO22X1M U560 ( .A0(N38), .A1(n572), .B0(n585), .B1(n519), .Y(n309) );
  MX4X1M U561 ( .A(n466), .B(n464), .C(n465), .D(n463), .S0(N13), .S1(N12), 
        .Y(N38) );
  MX4X1M U563 ( .A(\regArr[8][4] ), .B(\regArr[9][4] ), .C(\regArr[10][4] ), 
        .D(\regArr[11][4] ), .S0(n485), .S1(n482), .Y(n464) );
  AO22X1M U564 ( .A0(N37), .A1(n572), .B0(n584), .B1(n519), .Y(n310) );
  MX4X1M U565 ( .A(n470), .B(n468), .C(n469), .D(n467), .S0(N13), .S1(N12), 
        .Y(N37) );
  MX4X1M U566 ( .A(n664), .B(REG1[5]), .C(n670), .D(\regArr[3][5] ), .S0(n486), 
        .S1(n480), .Y(n470) );
  AO22X1M U568 ( .A0(N36), .A1(n572), .B0(n583), .B1(n519), .Y(n311) );
  MX4X1M U569 ( .A(n474), .B(n472), .C(n473), .D(n471), .S0(N13), .S1(N12), 
        .Y(N36) );
  MX4X1M U570 ( .A(\regArr[8][6] ), .B(\regArr[9][6] ), .C(\regArr[10][6] ), 
        .D(\regArr[11][6] ), .S0(n486), .S1(N11), .Y(n472) );
  AO22X1M U571 ( .A0(N35), .A1(n572), .B0(n582), .B1(n519), .Y(n312) );
  MX4X1M U572 ( .A(n478), .B(n476), .C(n477), .D(n475), .S0(N13), .S1(N12), 
        .Y(N35) );
  MX4X1M U573 ( .A(n663), .B(REG1[7]), .C(n669), .D(\regArr[3][7] ), .S0(n486), 
        .S1(n479), .Y(n478) );
  INVX2M U575 ( .A(N10), .Y(n569) );
  INVX2M U576 ( .A(WrData[0]), .Y(n581) );
  INVX2M U577 ( .A(WrData[1]), .Y(n580) );
  INVX2M U578 ( .A(WrData[2]), .Y(n579) );
  INVX2M U579 ( .A(WrData[3]), .Y(n578) );
  INVX2M U580 ( .A(WrData[4]), .Y(n577) );
  INVX2M U581 ( .A(WrData[5]), .Y(n576) );
  INVX2M U582 ( .A(WrData[6]), .Y(n575) );
  INVX2M U583 ( .A(WrData[7]), .Y(n574) );
  CLKINVX40M U584 ( .A(n487), .Y(RdData[0]) );
  CLKINVX40M U585 ( .A(n489), .Y(RdData[1]) );
  CLKINVX40M U586 ( .A(n491), .Y(RdData[2]) );
  CLKINVX40M U587 ( .A(n493), .Y(RdData[3]) );
  CLKINVX40M U588 ( .A(n495), .Y(RdData[4]) );
  CLKINVX40M U589 ( .A(n497), .Y(RdData[5]) );
  CLKINVX40M U590 ( .A(n499), .Y(RdData[6]) );
  CLKINVX40M U591 ( .A(n501), .Y(RdData[7]) );
  DLY1X1M U593 ( .A(n611), .Y(n599) );
  DLY1X1M U595 ( .A(n605), .Y(n601) );
  INVXLM U599 ( .A(n660), .Y(n605) );
  INVXLM U600 ( .A(n601), .Y(REG0[5]) );
  INVXLM U601 ( .A(n601), .Y(n607) );
  INVXLM U605 ( .A(n656), .Y(n611) );
  INVXLM U606 ( .A(n599), .Y(REG0[4]) );
  INVXLM U607 ( .A(n599), .Y(n613) );
  DLY1X1M U608 ( .A(n631), .Y(n614) );
  DLY1X1M U609 ( .A(n628), .Y(n615) );
  DLY1X1M U610 ( .A(n650), .Y(n616) );
  DLY1X1M U613 ( .A(n629), .Y(n619) );
  DLY1X1M U614 ( .A(n648), .Y(n620) );
  DLY1X1M U615 ( .A(n637), .Y(REG2[0]) );
  DLY1X1M U617 ( .A(n641), .Y(REG2[3]) );
  DLY1X1M U618 ( .A(n643), .Y(REG2[4]) );
  DLY1X1M U619 ( .A(n645), .Y(REG2[5]) );
  DLY1X1M U620 ( .A(n647), .Y(REG2[7]) );
  DLY1X1M U621 ( .A(n651), .Y(n652) );
  INVXLM U622 ( .A(n652), .Y(REG0[7]) );
  INVXLM U623 ( .A(n652), .Y(n628) );
  INVXLM U624 ( .A(n662), .Y(n629) );
  INVXLM U625 ( .A(n619), .Y(REG0[0]) );
  INVXLM U626 ( .A(n619), .Y(n631) );
  INVXLM U631 ( .A(n674), .Y(n636) );
  INVXLM U632 ( .A(n636), .Y(n637) );
  INVXLM U635 ( .A(n672), .Y(n640) );
  INVXLM U636 ( .A(n640), .Y(n641) );
  INVXLM U637 ( .A(n671), .Y(n642) );
  INVXLM U638 ( .A(n642), .Y(n643) );
  INVXLM U639 ( .A(n670), .Y(n644) );
  INVXLM U640 ( .A(n644), .Y(n645) );
  INVXLM U641 ( .A(n669), .Y(n646) );
  INVXLM U642 ( .A(n646), .Y(n647) );
  INVXLM U643 ( .A(REG1[6]), .Y(n648) );
  INVXLM U644 ( .A(n620), .Y(n649) );
  INVXLM U645 ( .A(n620), .Y(n650) );
  INVXLM U646 ( .A(n663), .Y(n651) );
  INVXLM U649 ( .A(n665), .Y(n655) );
  INVXLM U650 ( .A(n655), .Y(n656) );
  INVXLM U653 ( .A(n664), .Y(n659) );
  INVXLM U654 ( .A(n659), .Y(n660) );
  INVXLM U655 ( .A(n668), .Y(n661) );
  INVXLM U656 ( .A(n661), .Y(n662) );
  SDFFRQX2M \RdData_reg[0]  ( .D(n305), .SI(test_si1), .SE(test_se), .CK(CLK), 
        .RN(n552), .Q(n589) );
  SDFFRQX2M \regArr_reg[12][7]  ( .D(n280), .SI(\regArr[12][6] ), .SE(test_se), 
        .CK(CLK), .RN(n554), .Q(\regArr[12][7] ) );
  SDFFRQX2M \regArr_reg[13][0]  ( .D(n281), .SI(\regArr[12][7] ), .SE(test_se), 
        .CK(CLK), .RN(n554), .Q(\regArr[13][0] ) );
  SDFFRQX2M \regArr_reg[12][5]  ( .D(n278), .SI(\regArr[12][4] ), .SE(test_se), 
        .CK(CLK), .RN(n554), .Q(\regArr[12][5] ) );
  SDFFRQX2M \regArr_reg[12][6]  ( .D(n279), .SI(\regArr[12][5] ), .SE(test_se), 
        .CK(CLK), .RN(n554), .Q(\regArr[12][6] ) );
  SDFFRQX2M \regArr_reg[12][3]  ( .D(n276), .SI(\regArr[12][2] ), .SE(test_se), 
        .CK(CLK), .RN(n555), .Q(\regArr[12][3] ) );
  SDFFRQX2M \regArr_reg[12][4]  ( .D(n277), .SI(\regArr[12][3] ), .SE(test_se), 
        .CK(CLK), .RN(n554), .Q(\regArr[12][4] ) );
  SDFFRQX2M \regArr_reg[12][1]  ( .D(n274), .SI(\regArr[12][0] ), .SE(test_se), 
        .CK(CLK), .RN(n555), .Q(\regArr[12][1] ) );
  SDFFRQX2M \regArr_reg[12][2]  ( .D(n275), .SI(\regArr[12][1] ), .SE(test_se), 
        .CK(CLK), .RN(n555), .Q(\regArr[12][2] ) );
  SDFFRQX2M \regArr_reg[8][7]  ( .D(n248), .SI(\regArr[8][6] ), .SE(test_se), 
        .CK(CLK), .RN(n557), .Q(\regArr[8][7] ) );
  SDFFRQX2M \regArr_reg[9][0]  ( .D(n249), .SI(\regArr[8][7] ), .SE(test_se), 
        .CK(CLK), .RN(n557), .Q(\regArr[9][0] ) );
  SDFFRQX2M \regArr_reg[8][5]  ( .D(n246), .SI(\regArr[8][4] ), .SE(test_se), 
        .CK(CLK), .RN(n557), .Q(\regArr[8][5] ) );
  SDFFRQX2M \regArr_reg[8][6]  ( .D(n247), .SI(\regArr[8][5] ), .SE(test_se), 
        .CK(CLK), .RN(n557), .Q(\regArr[8][6] ) );
  SDFFRQX2M \regArr_reg[8][3]  ( .D(n244), .SI(\regArr[8][2] ), .SE(test_se), 
        .CK(CLK), .RN(n557), .Q(\regArr[8][3] ) );
  SDFFRQX2M \regArr_reg[8][4]  ( .D(n245), .SI(\regArr[8][3] ), .SE(test_se), 
        .CK(CLK), .RN(n557), .Q(\regArr[8][4] ) );
  SDFFRQX2M \regArr_reg[8][1]  ( .D(n242), .SI(\regArr[8][0] ), .SE(test_se), 
        .CK(CLK), .RN(n557), .Q(\regArr[8][1] ) );
  SDFFRQX2M \regArr_reg[8][2]  ( .D(n243), .SI(\regArr[8][1] ), .SE(test_se), 
        .CK(CLK), .RN(n557), .Q(\regArr[8][2] ) );
  SDFFRQX2M \regArr_reg[4][7]  ( .D(n216), .SI(\regArr[4][6] ), .SE(test_se), 
        .CK(CLK), .RN(n560), .Q(\regArr[4][7] ) );
  SDFFRQX2M \regArr_reg[5][0]  ( .D(n217), .SI(\regArr[4][7] ), .SE(test_se), 
        .CK(CLK), .RN(n559), .Q(\regArr[5][0] ) );
  SDFFRQX2M \regArr_reg[4][5]  ( .D(n214), .SI(\regArr[4][4] ), .SE(test_se), 
        .CK(CLK), .RN(n560), .Q(\regArr[4][5] ) );
  SDFFRQX2M \regArr_reg[4][6]  ( .D(n215), .SI(\regArr[4][5] ), .SE(test_se), 
        .CK(CLK), .RN(n560), .Q(\regArr[4][6] ) );
  SDFFRQX2M \regArr_reg[4][3]  ( .D(n212), .SI(\regArr[4][2] ), .SE(test_se), 
        .CK(CLK), .RN(n560), .Q(\regArr[4][3] ) );
  SDFFRQX2M \regArr_reg[4][4]  ( .D(n213), .SI(\regArr[4][3] ), .SE(test_se), 
        .CK(CLK), .RN(n560), .Q(\regArr[4][4] ) );
  SDFFRQX2M \regArr_reg[4][1]  ( .D(n210), .SI(\regArr[4][0] ), .SE(test_se), 
        .CK(CLK), .RN(n560), .Q(\regArr[4][1] ) );
  SDFFRQX2M \regArr_reg[4][2]  ( .D(n211), .SI(\regArr[4][1] ), .SE(test_se), 
        .CK(CLK), .RN(n560), .Q(\regArr[4][2] ) );
  SDFFRQX2M \regArr_reg[0][4]  ( .D(n181), .SI(n666), .SE(test_se), .CK(CLK), 
        .RN(n562), .Q(n665) );
  SDFFRQX2M \regArr_reg[0][5]  ( .D(n182), .SI(n665), .SE(test_se), .CK(CLK), 
        .RN(n562), .Q(n664) );
  SDFFRQX2M \regArr_reg[15][0]  ( .D(n297), .SI(\regArr[14][7] ), .SE(test_se), 
        .CK(CLK), .RN(n553), .Q(\regArr[15][0] ) );
  SDFFRQX2M \regArr_reg[15][1]  ( .D(n298), .SI(\regArr[15][0] ), .SE(test_se), 
        .CK(CLK), .RN(n553), .Q(\regArr[15][1] ) );
  SDFFRQX2M \regArr_reg[11][0]  ( .D(n265), .SI(\regArr[10][7] ), .SE(test_se), 
        .CK(CLK), .RN(n555), .Q(\regArr[11][0] ) );
  SDFFRQX2M \regArr_reg[11][1]  ( .D(n266), .SI(\regArr[11][0] ), .SE(test_se), 
        .CK(CLK), .RN(n555), .Q(\regArr[11][1] ) );
  SDFFRQX2M \regArr_reg[7][0]  ( .D(n233), .SI(\regArr[6][7] ), .SE(test_se), 
        .CK(CLK), .RN(n558), .Q(\regArr[7][0] ) );
  SDFFRQX2M \regArr_reg[7][1]  ( .D(n234), .SI(\regArr[7][0] ), .SE(test_se), 
        .CK(CLK), .RN(n558), .Q(\regArr[7][1] ) );
  SDFFRQX2M \regArr_reg[3][3]  ( .D(n204), .SI(\regArr[3][2] ), .SE(test_se), 
        .CK(CLK), .RN(n561), .Q(\regArr[3][3] ) );
  SDFFRQX2M \regArr_reg[3][4]  ( .D(n205), .SI(\regArr[3][3] ), .SE(test_se), 
        .CK(CLK), .RN(n560), .Q(\regArr[3][4] ) );
  SDFFRQX2M \regArr_reg[3][1]  ( .D(n202), .SI(\regArr[3][0] ), .SE(test_se), 
        .CK(CLK), .RN(n561), .Q(\regArr[3][1] ) );
  SDFFRQX2M \regArr_reg[3][2]  ( .D(n203), .SI(\regArr[3][1] ), .SE(test_se), 
        .CK(CLK), .RN(n561), .Q(\regArr[3][2] ) );
  SDFFRQX2M \regArr_reg[2][2]  ( .D(n195), .SI(n673), .SE(test_se), .CK(CLK), 
        .RN(n561), .Q(REG2[2]) );
  SDFFRQX2M \regArr_reg[2][6]  ( .D(n199), .SI(n670), .SE(test_se), .CK(CLK), 
        .RN(n561), .Q(REG2[6]) );
  SDFFRQX2M \regArr_reg[0][1]  ( .D(n178), .SI(n614), .SE(test_se), .CK(CLK), 
        .RN(n563), .Q(n667) );
  SDFFRQX2M \regArr_reg[0][3]  ( .D(n180), .SI(REG0[2]), .SE(test_se), .CK(CLK), .RN(n563), .Q(n666) );
  SDFFRQX2M \regArr_reg[2][1]  ( .D(n194), .SI(n674), .SE(test_se), .CK(CLK), 
        .RN(n561), .Q(n673) );
  MX4XLM U3 ( .A(n667), .B(REG1[1]), .C(n673), .D(\regArr[3][1] ), .S0(N10), 
        .S1(n482), .Y(n454) );
  MX4XLM U4 ( .A(n666), .B(REG1[3]), .C(n672), .D(\regArr[3][3] ), .S0(n485), 
        .S1(n482), .Y(n462) );
  MX4XLM U5 ( .A(\regArr[4][0] ), .B(\regArr[5][0] ), .C(\regArr[6][0] ), .D(
        \regArr[7][0] ), .S0(N10), .S1(n481), .Y(n449) );
  MX4XLM U6 ( .A(\regArr[8][0] ), .B(\regArr[9][0] ), .C(\regArr[10][0] ), .D(
        \regArr[11][0] ), .S0(n483), .S1(n481), .Y(n448) );
  MX4XLM U7 ( .A(\regArr[12][0] ), .B(\regArr[13][0] ), .C(\regArr[14][0] ), 
        .D(\regArr[15][0] ), .S0(n485), .S1(n481), .Y(n447) );
  MX4XLM U8 ( .A(n665), .B(REG1[4]), .C(n671), .D(\regArr[3][4] ), .S0(n485), 
        .S1(n480), .Y(n466) );
  MX4XLM U9 ( .A(\regArr[4][1] ), .B(\regArr[5][1] ), .C(\regArr[6][1] ), .D(
        \regArr[7][1] ), .S0(n484), .S1(n482), .Y(n453) );
  MX4XLM U10 ( .A(\regArr[4][3] ), .B(\regArr[5][3] ), .C(\regArr[6][3] ), .D(
        \regArr[7][3] ), .S0(n485), .S1(n482), .Y(n461) );
  MX4XLM U11 ( .A(\regArr[4][5] ), .B(\regArr[5][5] ), .C(\regArr[6][5] ), .D(
        \regArr[7][5] ), .S0(n486), .S1(N11), .Y(n469) );
  MX4XLM U12 ( .A(\regArr[4][7] ), .B(\regArr[5][7] ), .C(\regArr[6][7] ), .D(
        \regArr[7][7] ), .S0(n486), .S1(n481), .Y(n477) );
  MX4XLM U13 ( .A(\regArr[8][1] ), .B(\regArr[9][1] ), .C(\regArr[10][1] ), 
        .D(\regArr[11][1] ), .S0(n483), .S1(n481), .Y(n452) );
  MX4XLM U14 ( .A(\regArr[8][3] ), .B(\regArr[9][3] ), .C(\regArr[10][3] ), 
        .D(\regArr[11][3] ), .S0(n485), .S1(n482), .Y(n460) );
  MX4XLM U15 ( .A(\regArr[8][5] ), .B(\regArr[9][5] ), .C(\regArr[10][5] ), 
        .D(\regArr[11][5] ), .S0(n486), .S1(n482), .Y(n468) );
  MX4XLM U16 ( .A(\regArr[8][7] ), .B(\regArr[9][7] ), .C(\regArr[10][7] ), 
        .D(\regArr[11][7] ), .S0(n486), .S1(n479), .Y(n476) );
  MX4XLM U17 ( .A(\regArr[12][1] ), .B(\regArr[13][1] ), .C(\regArr[14][1] ), 
        .D(\regArr[15][1] ), .S0(n486), .S1(n481), .Y(n451) );
  MX4XLM U18 ( .A(\regArr[12][3] ), .B(\regArr[13][3] ), .C(\regArr[14][3] ), 
        .D(\regArr[15][3] ), .S0(n485), .S1(n482), .Y(n459) );
  MX4XLM U19 ( .A(\regArr[12][5] ), .B(\regArr[13][5] ), .C(\regArr[14][5] ), 
        .D(\regArr[15][5] ), .S0(n486), .S1(n482), .Y(n467) );
  MX4XLM U20 ( .A(\regArr[12][7] ), .B(\regArr[13][7] ), .C(\regArr[14][7] ), 
        .D(\regArr[15][7] ), .S0(n486), .S1(N11), .Y(n475) );
endmodule


module CLK_GATE ( test_en, CLK_EN, CLK, GATED_CLK );
  input test_en, CLK_EN, CLK;
  output GATED_CLK;
  wire   _0_net_;

  TLATNCAX12M U0_TLATNCAX12M ( .E(_0_net_), .CK(CLK), .ECK(GATED_CLK) );
  OR2X2M U1 ( .A(CLK_EN), .B(test_en), .Y(_0_net_) );
endmodule


module ClkDiv_DW01_inc_0 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  INVX2M U1 ( .A(A[0]), .Y(SUM[0]) );
  CLKXOR2X2M U2 ( .A(carry[6]), .B(A[6]), .Y(SUM[6]) );
endmodule


module ClkDiv_test_1 ( i_ref_clk, i_rst, i_clk_en, i_div_ratio, o_div_clk, 
        test_si, test_so, test_se );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst, i_clk_en, test_si, test_se;
  output o_div_clk, test_so;
  wire   div_clk, odd_edge_tog, N16, N17, N18, N19, N20, N21, N22, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n1, n2, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n85, n86, n87, n88, n89, n90, n91, n92, n93;
  wire   [7:0] i_div_ratio_reg;
  wire   [6:0] count;
  wire   [6:0] edge_flip_half;
  assign test_so = odd_edge_tog;

  SDFFQX2M \i_div_ratio_reg_reg[7]  ( .D(i_div_ratio[7]), .SI(n85), .SE(
        test_se), .CK(i_ref_clk), .Q(i_div_ratio_reg[7]) );
  SDFFQX2M \i_div_ratio_reg_reg[6]  ( .D(i_div_ratio[6]), .SI(n54), .SE(
        test_se), .CK(i_ref_clk), .Q(i_div_ratio_reg[6]) );
  SDFFQX2M \i_div_ratio_reg_reg[5]  ( .D(i_div_ratio[5]), .SI(n90), .SE(
        test_se), .CK(i_ref_clk), .Q(i_div_ratio_reg[5]) );
  SDFFQX2M \i_div_ratio_reg_reg[4]  ( .D(i_div_ratio[4]), .SI(n89), .SE(
        test_se), .CK(i_ref_clk), .Q(i_div_ratio_reg[4]) );
  SDFFQX2M \i_div_ratio_reg_reg[3]  ( .D(i_div_ratio[3]), .SI(
        i_div_ratio_reg[2]), .SE(test_se), .CK(i_ref_clk), .Q(
        i_div_ratio_reg[3]) );
  SDFFQX2M \i_div_ratio_reg_reg[2]  ( .D(i_div_ratio[2]), .SI(
        edge_flip_half[0]), .SE(test_se), .CK(i_ref_clk), .Q(
        i_div_ratio_reg[2]) );
  SDFFQX2M \i_div_ratio_reg_reg[1]  ( .D(i_div_ratio[1]), .SI(
        i_div_ratio_reg[0]), .SE(test_se), .CK(i_ref_clk), .Q(
        i_div_ratio_reg[1]) );
  SDFFRQX1M \count_reg[0]  ( .D(n42), .SI(test_si), .SE(test_se), .CK(
        i_ref_clk), .RN(n47), .Q(count[0]) );
  SDFFRQX2M \count_reg[6]  ( .D(n36), .SI(n87), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst), .Q(count[6]) );
  SDFFRQX2M \count_reg[5]  ( .D(n37), .SI(n86), .SE(test_se), .CK(i_ref_clk), 
        .RN(n47), .Q(count[5]) );
  SDFFRQX2M \count_reg[4]  ( .D(n38), .SI(n93), .SE(test_se), .CK(i_ref_clk), 
        .RN(n47), .Q(count[4]) );
  SDFFRQX2M \count_reg[3]  ( .D(n39), .SI(n92), .SE(test_se), .CK(i_ref_clk), 
        .RN(n47), .Q(count[3]) );
  SDFFRQX2M \count_reg[2]  ( .D(n40), .SI(n91), .SE(test_se), .CK(i_ref_clk), 
        .RN(n47), .Q(count[2]) );
  SDFFRQX2M \count_reg[1]  ( .D(n41), .SI(n2), .SE(test_se), .CK(i_ref_clk), 
        .RN(n47), .Q(count[1]) );
  INVX4M U5 ( .A(n48), .Y(n47) );
  INVXLM U6 ( .A(count[0]), .Y(n1) );
  INVX4M U11 ( .A(n1), .Y(n2) );
  NOR4X2M U40 ( .A(n70), .B(n71), .C(n72), .D(n73), .Y(n69) );
  NOR2X4M U41 ( .A(i_div_ratio_reg[4]), .B(n50), .Y(n51) );
  AND3X4M U42 ( .A(n57), .B(n58), .C(n82), .Y(n56) );
  NAND4X2M U43 ( .A(n66), .B(n67), .C(n68), .D(n69), .Y(n60) );
  NAND2BX2M U44 ( .AN(i_div_ratio_reg[2]), .B(edge_flip_half[0]), .Y(n49) );
  OR2X2M U45 ( .A(n49), .B(i_div_ratio_reg[3]), .Y(n50) );
  AO22XLM U46 ( .A0(n86), .A1(n46), .B0(N20), .B1(n56), .Y(n38) );
  AO22XLM U47 ( .A0(n87), .A1(n46), .B0(N21), .B1(n56), .Y(n37) );
  AO22XLM U48 ( .A0(n91), .A1(n46), .B0(N17), .B1(n56), .Y(n41) );
  AO22XLM U49 ( .A0(n92), .A1(n46), .B0(N18), .B1(n56), .Y(n40) );
  AO22XLM U50 ( .A0(n93), .A1(n46), .B0(N19), .B1(n56), .Y(n39) );
  AO22XLM U51 ( .A0(n88), .A1(n46), .B0(N22), .B1(n56), .Y(n36) );
  OAI2BB1XLM U52 ( .A0N(n49), .A1N(i_div_ratio_reg[3]), .B0(n50), .Y(
        edge_flip_half[2]) );
  OAI2BB1XLM U53 ( .A0N(i_div_ratio_reg[1]), .A1N(i_div_ratio_reg[2]), .B0(n49), .Y(edge_flip_half[1]) );
  INVX2M U54 ( .A(i_rst), .Y(n48) );
  INVX2M U55 ( .A(i_div_ratio_reg[1]), .Y(edge_flip_half[0]) );
  CLKBUFX6M U56 ( .A(n55), .Y(n46) );
  OAI21X2M U57 ( .A0(n62), .A1(n63), .B0(i_clk_en), .Y(n55) );
  INVX2M U58 ( .A(i_div_ratio_reg[5]), .Y(n54) );
  MX2XLM U59 ( .A(i_ref_clk), .B(div_clk), .S0(n82), .Y(o_div_clk) );
  AO21XLM U60 ( .A0(n50), .A1(i_div_ratio_reg[4]), .B0(n51), .Y(
        edge_flip_half[3]) );
  CLKNAND2X2M U61 ( .A(n51), .B(n54), .Y(n52) );
  OAI21X1M U62 ( .A0(n51), .A1(n54), .B0(n52), .Y(edge_flip_half[4]) );
  XNOR2X1M U63 ( .A(i_div_ratio_reg[6]), .B(n52), .Y(edge_flip_half[5]) );
  NOR2X1M U64 ( .A(n52), .B(i_div_ratio_reg[6]), .Y(n53) );
  CLKXOR2X2M U65 ( .A(i_div_ratio_reg[7]), .B(n53), .Y(edge_flip_half[6]) );
  AO22X1M U66 ( .A0(n46), .A1(n2), .B0(N16), .B1(n56), .Y(n42) );
  CLKINVX1M U67 ( .A(n46), .Y(n82) );
  CLKXOR2X2M U68 ( .A(div_clk), .B(n59), .Y(n35) );
  AOI21X1M U69 ( .A0(n58), .A1(n57), .B0(n46), .Y(n59) );
  OR2X1M U70 ( .A(n60), .B(i_div_ratio_reg[0]), .Y(n57) );
  XNOR2X1M U71 ( .A(odd_edge_tog), .B(n61), .Y(n34) );
  OR2X1M U72 ( .A(n58), .B(n46), .Y(n61) );
  OR3X1M U73 ( .A(i_div_ratio_reg[2]), .B(n89), .C(i_div_ratio_reg[1]), .Y(n63) );
  OR4X1M U74 ( .A(n90), .B(i_div_ratio_reg[5]), .C(n85), .D(i_div_ratio_reg[7]), .Y(n62) );
  CLKNAND2X2M U75 ( .A(n64), .B(i_div_ratio_reg[0]), .Y(n58) );
  MXI2X1M U76 ( .A(n65), .B(n60), .S0(odd_edge_tog), .Y(n64) );
  CLKXOR2X2M U77 ( .A(edge_flip_half[2]), .B(count[2]), .Y(n73) );
  CLKXOR2X2M U78 ( .A(edge_flip_half[1]), .B(count[1]), .Y(n72) );
  CLKXOR2X2M U79 ( .A(edge_flip_half[0]), .B(n2), .Y(n71) );
  CLKXOR2X2M U80 ( .A(edge_flip_half[6]), .B(count[6]), .Y(n70) );
  XNOR2X1M U81 ( .A(count[4]), .B(edge_flip_half[4]), .Y(n68) );
  XNOR2X1M U82 ( .A(count[5]), .B(edge_flip_half[5]), .Y(n67) );
  XNOR2X1M U83 ( .A(count[3]), .B(edge_flip_half[3]), .Y(n66) );
  NAND4X1M U84 ( .A(n74), .B(n75), .C(n76), .D(n77), .Y(n65) );
  NOR4X1M U85 ( .A(n78), .B(n79), .C(n80), .D(n81), .Y(n77) );
  CLKXOR2X2M U86 ( .A(count[2]), .B(i_div_ratio_reg[3]), .Y(n81) );
  CLKXOR2X2M U87 ( .A(count[1]), .B(i_div_ratio_reg[2]), .Y(n80) );
  CLKXOR2X2M U88 ( .A(i_div_ratio_reg[1]), .B(n2), .Y(n79) );
  CLKXOR2X2M U89 ( .A(i_div_ratio_reg[7]), .B(count[6]), .Y(n78) );
  XNOR2X1M U90 ( .A(count[4]), .B(i_div_ratio_reg[5]), .Y(n76) );
  XNOR2X1M U91 ( .A(count[5]), .B(i_div_ratio_reg[6]), .Y(n75) );
  XNOR2X1M U92 ( .A(count[3]), .B(i_div_ratio_reg[4]), .Y(n74) );
  DLY1X1M U93 ( .A(i_div_ratio_reg[6]), .Y(n85) );
  DLY1X1M U94 ( .A(count[4]), .Y(n86) );
  DLY1X1M U95 ( .A(count[5]), .Y(n87) );
  DLY1X1M U96 ( .A(count[6]), .Y(n88) );
  DLY1X1M U97 ( .A(i_div_ratio_reg[3]), .Y(n89) );
  DLY1X1M U98 ( .A(i_div_ratio_reg[4]), .Y(n90) );
  DLY1X1M U99 ( .A(count[1]), .Y(n91) );
  DLY1X1M U100 ( .A(count[2]), .Y(n92) );
  DLY1X1M U101 ( .A(count[3]), .Y(n93) );
  ClkDiv_DW01_inc_0 add_52 ( .A({count[6:1], n2}), .SUM({N22, N21, N20, N19, 
        N18, N17, N16}) );
  SDFFSQX2M odd_edge_tog_reg ( .D(n34), .SI(i_div_ratio_reg[7]), .SE(test_se), 
        .CK(i_ref_clk), .SN(i_rst), .Q(odd_edge_tog) );
  SDFFRQX2M div_clk_reg ( .D(n35), .SI(n88), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst), .Q(div_clk) );
  SDFFQX2M \i_div_ratio_reg_reg[0]  ( .D(i_div_ratio[0]), .SI(div_clk), .SE(
        test_se), .CK(i_ref_clk), .Q(i_div_ratio_reg[0]) );
endmodule


module System_Top ( SI, SE, scan_clk, scan_rst, test_mode, SO, CLKDIV_EN, 
        CLKG_EN, CLK, RST, ALU_FUN, ALU_Enable, WrEn, RdEn, Address, WrData, 
        RdData, ALU_VLD, ALU_OUT, test_si2, test_so2 );
  input [3:0] ALU_FUN;
  input [3:0] Address;
  input [7:0] WrData;
  output [7:0] RdData;
  output [7:0] ALU_OUT;
  input SI, SE, scan_clk, scan_rst, test_mode, CLKDIV_EN, CLKG_EN, CLK, RST,
         ALU_Enable, WrEn, RdEn, test_si2;
  output SO, ALU_VLD, test_so2;
  wire   n26, n27, n28, n29, n30, n31, n32, n33, n34, CLK_M, REG_CLK, CLK_M_1,
         RST_M, ALU_CLK, n1, n3, n5, n7, n9, n11, n13, n15, n17, n19, n20, n21,
         n22, n23, n24, n25, n39;
  wire   [7:0] ALU_A;
  wire   [7:0] ALU_B;
  wire   [7:0] CLKDIV_Config;

  INVX6M U1 ( .A(n25), .Y(n24) );
  BUFX4M U2 ( .A(ALU_FUN[3]), .Y(n23) );
  CLKBUFX6M U3 ( .A(Address[3]), .Y(n20) );
  BUFX6M U4 ( .A(Address[2]), .Y(n19) );
  BUFX4M U5 ( .A(ALU_FUN[2]), .Y(n22) );
  BUFX4M U6 ( .A(ALU_FUN[0]), .Y(n21) );
  INVX2M U7 ( .A(RST_M), .Y(n25) );
  CLKINVX1M U8 ( .A(n34), .Y(n1) );
  CLKINVX40M U9 ( .A(n1), .Y(ALU_OUT[0]) );
  CLKINVX1M U10 ( .A(n33), .Y(n3) );
  CLKINVX40M U11 ( .A(n3), .Y(ALU_OUT[1]) );
  CLKINVX1M U12 ( .A(n32), .Y(n5) );
  CLKINVX40M U13 ( .A(n5), .Y(ALU_OUT[2]) );
  CLKINVX1M U14 ( .A(n31), .Y(n7) );
  CLKINVX40M U15 ( .A(n7), .Y(ALU_OUT[3]) );
  CLKINVX1M U16 ( .A(n30), .Y(n9) );
  CLKINVX40M U17 ( .A(n9), .Y(ALU_OUT[4]) );
  CLKINVX1M U18 ( .A(n29), .Y(n11) );
  CLKINVX40M U19 ( .A(n11), .Y(ALU_OUT[5]) );
  CLKINVX1M U20 ( .A(n28), .Y(n13) );
  CLKINVX40M U21 ( .A(n13), .Y(ALU_OUT[6]) );
  CLKINVX1M U22 ( .A(n27), .Y(n15) );
  CLKINVX40M U23 ( .A(n15), .Y(ALU_OUT[7]) );
  CLKINVX1M U24 ( .A(n26), .Y(n17) );
  CLKINVX40M U25 ( .A(n17), .Y(ALU_VLD) );
  mux2X1_0 U0_mux2X1 ( .IN_0(CLK), .IN_1(scan_clk), .SEL(test_mode), .OUT(
        CLK_M) );
  mux2X1_2 U1_mux2X1 ( .IN_0(REG_CLK), .IN_1(scan_clk), .SEL(test_mode), .OUT(
        CLK_M_1) );
  mux2X1_1 U2_mux2X1 ( .IN_0(RST), .IN_1(scan_rst), .SEL(test_mode), .OUT(
        RST_M) );
  ALU_test_1 U0_ALU ( .A(ALU_A), .B(ALU_B), .ALU_FUN({n23, n22, ALU_FUN[1], 
        n21}), .CLK(ALU_CLK), .RST(n24), .Enable(ALU_Enable), .ALU_OUT({n27, 
        n28, n29, n30, n31, n32, n33, n34}), .OUT_VALID(n26), .test_si(SI), 
        .test_se(SE) );
  RegFile_test_1 U0_RegFile ( .CLK(CLK_M_1), .RST(n24), .WrEn(WrEn), .RdEn(
        RdEn), .Address({n20, n19, Address[1:0]}), .WrData(WrData), .RdData(
        RdData), .REG0(ALU_A), .REG1(ALU_B), .REG2(CLKDIV_Config), .test_si2(
        test_si2), .test_si1(n39), .test_so2(test_so2), .test_so1(SO), 
        .test_se(SE) );
  CLK_GATE U0_CLK_GATE ( .test_en(test_mode), .CLK_EN(CLKG_EN), .CLK(CLK_M), 
        .GATED_CLK(ALU_CLK) );
  ClkDiv_test_1 U0_ClkDiv ( .i_ref_clk(CLK_M), .i_rst(n24), .i_clk_en(
        CLKDIV_EN), .i_div_ratio(CLKDIV_Config), .o_div_clk(REG_CLK), 
        .test_si(n26), .test_so(n39), .test_se(SE) );
endmodule

