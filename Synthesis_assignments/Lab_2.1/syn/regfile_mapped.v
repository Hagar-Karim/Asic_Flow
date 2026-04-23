/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : K-2015.06
// Date      : Mon Sep  1 00:01:08 2025
/////////////////////////////////////////////////////////////


module regfile ( i_scan_mode, i_scan_clk, i_scan_rst, i_phy_rate_en, i_rf_clk, 
        i_rf_rst, i_wrEn, i_rdEn, i_address, i_wrData, o_rdData, o_reg0, 
        o_reg1, o_reg2, o_reg3, o_reg4, o_reg5, o_tx_mode );
  input [7:0] i_address;
  input [7:0] i_wrData;
  output [7:0] o_rdData;
  output [7:0] o_reg0;
  output [7:0] o_reg1;
  output [7:0] o_reg2;
  output [7:0] o_reg3;
  output [7:0] o_reg4;
  output [7:0] o_reg5;
  input i_scan_mode, i_scan_clk, i_scan_rst, i_phy_rate_en, i_rf_clk, i_rf_rst,
         i_wrEn, i_rdEn;
  output o_tx_mode;
  wire   \o_reg4[0] , scan_ref_clk, scan_ref_rst, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132, n133;
  assign o_reg5[1] = \o_reg4[0] ;
  assign o_reg5[3] = \o_reg4[0] ;
  assign o_reg5[4] = \o_reg4[0] ;
  assign o_reg5[5] = \o_reg4[0] ;
  assign o_reg5[6] = \o_reg4[0] ;
  assign o_reg4[0] = \o_reg4[0] ;
  assign o_reg4[2] = \o_reg4[0] ;
  assign o_reg4[4] = \o_reg4[0] ;
  assign o_reg4[6] = \o_reg4[0] ;
  assign o_reg5[0] = 1'b0;
  assign o_reg5[2] = 1'b0;
  assign o_reg5[7] = 1'b0;
  assign o_reg4[1] = 1'b0;
  assign o_reg4[3] = 1'b0;
  assign o_reg4[5] = 1'b0;
  assign o_reg4[7] = 1'b0;

  DFFRQX1M \o_rdData_reg[4]  ( .D(n61), .CK(n133), .RN(scan_ref_rst), .Q(
        o_rdData[4]) );
  DFFRQX1M \o_rdData_reg[2]  ( .D(n59), .CK(n133), .RN(scan_ref_rst), .Q(
        o_rdData[2]) );
  DFFRQX1M \reg0_reg[6]  ( .D(n79), .CK(n133), .RN(scan_ref_rst), .Q(o_reg0[6]) );
  DFFRQX1M \reg0_reg[5]  ( .D(n78), .CK(n133), .RN(scan_ref_rst), .Q(o_reg0[5]) );
  DFFRQX1M \reg0_reg[4]  ( .D(n77), .CK(n133), .RN(scan_ref_rst), .Q(o_reg0[4]) );
  DFFRQX1M \reg0_reg[3]  ( .D(n76), .CK(n133), .RN(scan_ref_rst), .Q(o_reg0[3]) );
  DFFRQX1M \reg0_reg[0]  ( .D(n73), .CK(n133), .RN(scan_ref_rst), .Q(o_reg0[0]) );
  DFFRQX1M \reg1_reg[6]  ( .D(n55), .CK(n133), .RN(scan_ref_rst), .Q(o_reg1[6]) );
  DFFRQX1M \reg0_reg[7]  ( .D(n80), .CK(n133), .RN(scan_ref_rst), .Q(o_reg0[7]) );
  DFFRQX1M \reg3_reg[5]  ( .D(n70), .CK(scan_ref_clk), .RN(scan_ref_rst), .Q(
        o_reg3[5]) );
  DFFRQX1M \reg3_reg[3]  ( .D(n68), .CK(scan_ref_clk), .RN(scan_ref_rst), .Q(
        o_reg3[3]) );
  DFFRQX1M \reg3_reg[1]  ( .D(n66), .CK(scan_ref_clk), .RN(scan_ref_rst), .Q(
        o_reg3[1]) );
  DFFRQX1M \reg2_reg[6]  ( .D(n87), .CK(scan_ref_clk), .RN(scan_ref_rst), .Q(
        o_reg2[6]) );
  DFFRQX1M \reg2_reg[4]  ( .D(n85), .CK(n133), .RN(scan_ref_rst), .Q(o_reg2[4]) );
  DFFRQX1M \reg2_reg[2]  ( .D(n83), .CK(scan_ref_clk), .RN(scan_ref_rst), .Q(
        o_reg2[2]) );
  DFFRQX1M \reg2_reg[0]  ( .D(n81), .CK(n133), .RN(scan_ref_rst), .Q(o_reg2[0]) );
  DFFRQX1M \reg3_reg[6]  ( .D(n71), .CK(n133), .RN(scan_ref_rst), .Q(o_reg3[6]) );
  DFFRQX1M \reg3_reg[0]  ( .D(n65), .CK(n133), .RN(scan_ref_rst), .Q(o_reg3[0]) );
  MX2X1M U90 ( .A(i_rf_clk), .B(i_scan_clk), .S0(i_scan_mode), .Y(scan_ref_clk) );
  MX2X2M U91 ( .A(i_rf_rst), .B(i_scan_rst), .S0(i_scan_mode), .Y(scan_ref_rst) );
  DFFRQX1M \reg1_reg[1]  ( .D(n50), .CK(scan_ref_clk), .RN(n132), .Q(o_reg1[1]) );
  DFFRQX1M \reg3_reg[7]  ( .D(n72), .CK(n133), .RN(n132), .Q(o_reg3[7]) );
  DFFRQX1M \reg3_reg[2]  ( .D(n67), .CK(scan_ref_clk), .RN(n132), .Q(o_reg3[2]) );
  DFFRQX1M o_tx_mode_reg ( .D(i_phy_rate_en), .CK(scan_ref_clk), .RN(n132), 
        .Q(o_tx_mode) );
  DFFRQX1M \reg4_reg[0]  ( .D(1'b1), .CK(scan_ref_clk), .RN(scan_ref_rst), .Q(
        \o_reg4[0] ) );
  DFFRQX1M \o_rdData_reg[6]  ( .D(n63), .CK(scan_ref_clk), .RN(scan_ref_rst), 
        .Q(o_rdData[6]) );
  DFFRQX1M \o_rdData_reg[1]  ( .D(n58), .CK(scan_ref_clk), .RN(n132), .Q(
        o_rdData[1]) );
  DFFRQX1M \o_rdData_reg[0]  ( .D(n57), .CK(scan_ref_clk), .RN(scan_ref_rst), 
        .Q(o_rdData[0]) );
  DFFRQX1M \o_rdData_reg[7]  ( .D(n64), .CK(n133), .RN(n132), .Q(o_rdData[7])
         );
  DFFRQX1M \o_rdData_reg[5]  ( .D(n62), .CK(n133), .RN(n132), .Q(o_rdData[5])
         );
  DFFRQX1M \o_rdData_reg[3]  ( .D(n60), .CK(scan_ref_clk), .RN(n132), .Q(
        o_rdData[3]) );
  DFFRQX1M \reg1_reg[7]  ( .D(n56), .CK(scan_ref_clk), .RN(n132), .Q(o_reg1[7]) );
  DFFRQX1M \reg1_reg[5]  ( .D(n54), .CK(scan_ref_clk), .RN(n132), .Q(o_reg1[5]) );
  DFFRQX1M \reg1_reg[3]  ( .D(n52), .CK(scan_ref_clk), .RN(n132), .Q(o_reg1[3]) );
  DFFRQX1M \reg0_reg[2]  ( .D(n75), .CK(n133), .RN(n132), .Q(o_reg0[2]) );
  DFFRQX1M \reg0_reg[1]  ( .D(n74), .CK(n133), .RN(n132), .Q(o_reg0[1]) );
  DFFRQX1M \reg1_reg[4]  ( .D(n53), .CK(n133), .RN(n132), .Q(o_reg1[4]) );
  DFFRQX1M \reg1_reg[2]  ( .D(n51), .CK(scan_ref_clk), .RN(n132), .Q(o_reg1[2]) );
  DFFRQX1M \reg1_reg[0]  ( .D(n49), .CK(n133), .RN(n132), .Q(o_reg1[0]) );
  DFFRQX1M \reg2_reg[7]  ( .D(n88), .CK(scan_ref_clk), .RN(n132), .Q(o_reg2[7]) );
  DFFRQX1M \reg2_reg[5]  ( .D(n86), .CK(n133), .RN(n132), .Q(o_reg2[5]) );
  DFFRQX1M \reg2_reg[3]  ( .D(n84), .CK(scan_ref_clk), .RN(n132), .Q(o_reg2[3]) );
  DFFRQX1M \reg2_reg[1]  ( .D(n82), .CK(n133), .RN(n132), .Q(o_reg2[1]) );
  DFFRQX1M \reg3_reg[4]  ( .D(n69), .CK(scan_ref_clk), .RN(n132), .Q(o_reg3[4]) );
  BUFX2M U92 ( .A(scan_ref_rst), .Y(n132) );
  BUFX2M U93 ( .A(scan_ref_clk), .Y(n133) );
  INVX2M U95 ( .A(i_address[1]), .Y(n94) );
  NOR2X2M U96 ( .A(n94), .B(i_address[0]), .Y(n121) );
  OR4X1M U97 ( .A(i_address[7]), .B(i_address[3]), .C(i_address[5]), .D(
        i_address[2]), .Y(n89) );
  NOR3X2M U98 ( .A(i_address[6]), .B(i_address[4]), .C(n89), .Y(n97) );
  NAND2X2M U99 ( .A(n97), .B(i_wrEn), .Y(n128) );
  NOR2BX2M U100 ( .AN(n121), .B(n128), .Y(n90) );
  INVX2M U101 ( .A(n90), .Y(n91) );
  OA22X2M U102 ( .A0(n91), .A1(i_wrData[7]), .B0(o_reg2[7]), .B1(n90), .Y(n88)
         );
  OA22X2M U103 ( .A0(n91), .A1(i_wrData[6]), .B0(o_reg2[6]), .B1(n90), .Y(n87)
         );
  OA22X2M U104 ( .A0(n91), .A1(i_wrData[5]), .B0(o_reg2[5]), .B1(n90), .Y(n86)
         );
  OA22X2M U105 ( .A0(n91), .A1(i_wrData[4]), .B0(o_reg2[4]), .B1(n90), .Y(n85)
         );
  OA22X2M U106 ( .A0(n91), .A1(i_wrData[3]), .B0(o_reg2[3]), .B1(n90), .Y(n84)
         );
  OA22X2M U107 ( .A0(n91), .A1(i_wrData[2]), .B0(o_reg2[2]), .B1(n90), .Y(n83)
         );
  OA22X2M U108 ( .A0(n91), .A1(i_wrData[1]), .B0(o_reg2[1]), .B1(n90), .Y(n82)
         );
  OA22X2M U109 ( .A0(n91), .A1(i_wrData[0]), .B0(o_reg2[0]), .B1(n90), .Y(n81)
         );
  NOR2X2M U110 ( .A(i_address[1]), .B(i_address[0]), .Y(n120) );
  NOR2BX2M U111 ( .AN(n120), .B(n128), .Y(n92) );
  INVX2M U112 ( .A(n92), .Y(n93) );
  OA22X2M U113 ( .A0(n93), .A1(i_wrData[7]), .B0(o_reg0[7]), .B1(n92), .Y(n80)
         );
  OA22X2M U114 ( .A0(n93), .A1(i_wrData[6]), .B0(o_reg0[6]), .B1(n92), .Y(n79)
         );
  OA22X2M U115 ( .A0(n93), .A1(i_wrData[5]), .B0(o_reg0[5]), .B1(n92), .Y(n78)
         );
  OA22X2M U116 ( .A0(n93), .A1(i_wrData[4]), .B0(o_reg0[4]), .B1(n92), .Y(n77)
         );
  OA22X2M U117 ( .A0(n93), .A1(i_wrData[3]), .B0(o_reg0[3]), .B1(n92), .Y(n76)
         );
  OA22X2M U118 ( .A0(n93), .A1(i_wrData[2]), .B0(o_reg0[2]), .B1(n92), .Y(n75)
         );
  OA22X2M U119 ( .A0(n93), .A1(i_wrData[1]), .B0(o_reg0[1]), .B1(n92), .Y(n74)
         );
  OA22X2M U120 ( .A0(n93), .A1(i_wrData[0]), .B0(o_reg0[0]), .B1(n92), .Y(n73)
         );
  INVX2M U121 ( .A(i_address[0]), .Y(n98) );
  NOR2X2M U122 ( .A(n94), .B(n98), .Y(n122) );
  NOR2BX2M U123 ( .AN(n122), .B(n128), .Y(n95) );
  INVX2M U124 ( .A(n95), .Y(n96) );
  OA22X2M U125 ( .A0(n96), .A1(i_wrData[7]), .B0(o_reg3[7]), .B1(n95), .Y(n72)
         );
  OA22X2M U126 ( .A0(n96), .A1(i_wrData[6]), .B0(o_reg3[6]), .B1(n95), .Y(n71)
         );
  OA22X2M U127 ( .A0(n96), .A1(i_wrData[5]), .B0(o_reg3[5]), .B1(n95), .Y(n70)
         );
  OA22X2M U128 ( .A0(n96), .A1(i_wrData[4]), .B0(o_reg3[4]), .B1(n95), .Y(n69)
         );
  OA22X2M U129 ( .A0(n96), .A1(i_wrData[3]), .B0(o_reg3[3]), .B1(n95), .Y(n68)
         );
  OA22X2M U130 ( .A0(n96), .A1(i_wrData[2]), .B0(o_reg3[2]), .B1(n95), .Y(n67)
         );
  OA22X2M U131 ( .A0(n96), .A1(i_wrData[1]), .B0(o_reg3[1]), .B1(n95), .Y(n66)
         );
  OA22X2M U132 ( .A0(n96), .A1(i_wrData[0]), .B0(o_reg3[0]), .B1(n95), .Y(n65)
         );
  AOI22X1M U133 ( .A0(o_reg2[7]), .A1(n121), .B0(o_reg0[7]), .B1(n120), .Y(
        n101) );
  NAND3BX2M U134 ( .AN(i_wrEn), .B(n97), .C(i_rdEn), .Y(n123) );
  INVX2M U135 ( .A(n123), .Y(n126) );
  NOR2X2M U136 ( .A(n98), .B(i_address[1]), .Y(n129) );
  AOI22X1M U137 ( .A0(o_reg3[7]), .A1(n122), .B0(n129), .B1(o_reg1[7]), .Y(
        n100) );
  INVX2M U138 ( .A(o_rdData[7]), .Y(n99) );
  AOI32X1M U139 ( .A0(n101), .A1(n126), .A2(n100), .B0(n99), .B1(n123), .Y(n64) );
  AOI22X1M U140 ( .A0(n121), .A1(o_reg2[6]), .B0(n120), .B1(o_reg0[6]), .Y(
        n104) );
  AOI22X1M U141 ( .A0(n122), .A1(o_reg3[6]), .B0(n129), .B1(o_reg1[6]), .Y(
        n103) );
  INVX2M U142 ( .A(o_rdData[6]), .Y(n102) );
  AOI32X1M U143 ( .A0(n104), .A1(n126), .A2(n103), .B0(n102), .B1(n123), .Y(
        n63) );
  AOI22X1M U144 ( .A0(n121), .A1(o_reg2[5]), .B0(n120), .B1(o_reg0[5]), .Y(
        n107) );
  AOI22X1M U145 ( .A0(n122), .A1(o_reg3[5]), .B0(n129), .B1(o_reg1[5]), .Y(
        n106) );
  INVX2M U146 ( .A(o_rdData[5]), .Y(n105) );
  AOI32X1M U147 ( .A0(n107), .A1(n126), .A2(n106), .B0(n105), .B1(n123), .Y(
        n62) );
  AOI22X1M U148 ( .A0(n121), .A1(o_reg2[4]), .B0(n120), .B1(o_reg0[4]), .Y(
        n110) );
  AOI22X1M U149 ( .A0(n122), .A1(o_reg3[4]), .B0(n129), .B1(o_reg1[4]), .Y(
        n109) );
  INVX2M U150 ( .A(o_rdData[4]), .Y(n108) );
  AOI32X1M U151 ( .A0(n110), .A1(n126), .A2(n109), .B0(n108), .B1(n123), .Y(
        n61) );
  AOI22X1M U152 ( .A0(n121), .A1(o_reg2[3]), .B0(n120), .B1(o_reg0[3]), .Y(
        n113) );
  AOI22X1M U153 ( .A0(n122), .A1(o_reg3[3]), .B0(n129), .B1(o_reg1[3]), .Y(
        n112) );
  INVX2M U154 ( .A(o_rdData[3]), .Y(n111) );
  AOI32X1M U155 ( .A0(n113), .A1(n126), .A2(n112), .B0(n111), .B1(n123), .Y(
        n60) );
  AOI22X1M U156 ( .A0(n121), .A1(o_reg2[2]), .B0(n120), .B1(o_reg0[2]), .Y(
        n116) );
  AOI22X1M U157 ( .A0(n122), .A1(o_reg3[2]), .B0(n129), .B1(o_reg1[2]), .Y(
        n115) );
  INVX2M U158 ( .A(o_rdData[2]), .Y(n114) );
  AOI32X1M U159 ( .A0(n116), .A1(n126), .A2(n115), .B0(n114), .B1(n123), .Y(
        n59) );
  AOI22X1M U160 ( .A0(n121), .A1(o_reg2[1]), .B0(n120), .B1(o_reg0[1]), .Y(
        n119) );
  AOI22X1M U161 ( .A0(n122), .A1(o_reg3[1]), .B0(n129), .B1(o_reg1[1]), .Y(
        n118) );
  INVX2M U162 ( .A(o_rdData[1]), .Y(n117) );
  AOI32X1M U163 ( .A0(n119), .A1(n126), .A2(n118), .B0(n117), .B1(n123), .Y(
        n58) );
  AOI22X1M U164 ( .A0(n121), .A1(o_reg2[0]), .B0(n120), .B1(o_reg0[0]), .Y(
        n127) );
  AOI22X1M U165 ( .A0(n122), .A1(o_reg3[0]), .B0(n129), .B1(o_reg1[0]), .Y(
        n125) );
  INVX2M U166 ( .A(o_rdData[0]), .Y(n124) );
  AOI32X1M U167 ( .A0(n127), .A1(n126), .A2(n125), .B0(n124), .B1(n123), .Y(
        n57) );
  NOR2BX2M U168 ( .AN(n129), .B(n128), .Y(n130) );
  INVX2M U169 ( .A(n130), .Y(n131) );
  OA22X2M U170 ( .A0(n131), .A1(i_wrData[7]), .B0(o_reg1[7]), .B1(n130), .Y(
        n56) );
  OA22X2M U171 ( .A0(n131), .A1(i_wrData[6]), .B0(o_reg1[6]), .B1(n130), .Y(
        n55) );
  OA22X2M U172 ( .A0(n131), .A1(i_wrData[5]), .B0(o_reg1[5]), .B1(n130), .Y(
        n54) );
  OA22X2M U173 ( .A0(n131), .A1(i_wrData[4]), .B0(o_reg1[4]), .B1(n130), .Y(
        n53) );
  OA22X2M U174 ( .A0(n131), .A1(i_wrData[3]), .B0(o_reg1[3]), .B1(n130), .Y(
        n52) );
  OA22X2M U175 ( .A0(n131), .A1(i_wrData[2]), .B0(o_reg1[2]), .B1(n130), .Y(
        n51) );
  OA22X2M U176 ( .A0(n131), .A1(i_wrData[1]), .B0(o_reg1[1]), .B1(n130), .Y(
        n50) );
  OA22X2M U177 ( .A0(n131), .A1(i_wrData[0]), .B0(o_reg1[0]), .B1(n130), .Y(
        n49) );
endmodule

