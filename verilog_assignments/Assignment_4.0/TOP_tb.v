`timescale 1us/1ns
module TOP_tb #( parameter WIDTH_IN_DATA = 16 ,
                           WIDTH_OUT_DATA_ARITH = 32 ,
                           WIDTH_OUT_DATA_LOGIC = 16 ,
                           WIDTH_OUT_DATA_CMP = 16 ,
                           WIDTH_OUT_DATA_SHIFT = 16 ) () ;

reg signed [ WIDTH_IN_DATA-1 : 0 ] A_tb , B_tb ;
reg [3:0] ALU_FUN_tb ;
reg CLK_tb  , RST_tb ;
wire signed[ WIDTH_OUT_DATA_ARITH-1 : 0 ] Arith_OUT_tb  ; 
wire [ WIDTH_OUT_DATA_LOGIC-1 : 0 ] Logic_OUT_tb  ;
wire [ WIDTH_OUT_DATA_CMP-1 : 0 ]   CMP_OUT_tb  ; 
wire [ WIDTH_OUT_DATA_SHIFT-1 : 0 ] SHIFT_OUT_tb ;
wire Arith_Flag_tb , Logic_Flag_tb , CMP_Flag_tb , SHIFT_Flag_tb ;

ALU_TOP #(.WIDTH_IN_DATA(WIDTH_IN_DATA) , 
      .WIDTH_OUT_DATA_ARITH(WIDTH_OUT_DATA_ARITH) ,
      .WIDTH_OUT_DATA_CMP(WIDTH_OUT_DATA_CMP) ,
      .WIDTH_OUT_DATA_LOGIC(WIDTH_OUT_DATA_LOGIC) ,
      .WIDTH_OUT_DATA_SHIFT(WIDTH_OUT_DATA_SHIFT) 
      )

  DUT ( .A(A_tb) , 
        .B(B_tb) , 
        .ALU_FUN(ALU_FUN_tb) , 
        .CLK(CLK_tb) , 
        .RST(RST_tb) , 
        .Arith_OUT(Arith_OUT_tb) , 
        .Logic_OUT(Logic_OUT_tb) , 
        .CMP_OUT(CMP_OUT_tb) , 
        .SHIFT_OUT(SHIFT_OUT_tb) , 
        .Arith_Flag(Arith_Flag_tb) , 
        .Logic_Flag(Logic_Flag_tb) , 
        .CMP_Flag(CMP_Flag_tb) , 
        .SHIFT_Flag(SHIFT_Flag_tb)) ;


always
begin
 #4 CLK_tb = ~CLK_tb ;
 #6 CLK_tb = ~CLK_tb ;
end

initial
 begin
  CLK_tb = 0 ;
  $dumpfile("TOP.vcd");
  $dumpvars ;
  A_tb = 'shfffb ;
  B_tb = 'shfff9 ;
  RST_tb = 1'b0 ;
  ALU_FUN_tb = 4'b0000 ;
  $display ( "TEST CASE 1 :" ) ;
  #2 RST_tb = 1'b1 ;
  #4 
  if ((Arith_OUT_tb == A_tb + B_tb ) && (Arith_Flag_tb == 1'b1))
   begin
     $display ( "TEST CASE 1 PASSED" ) ;
   end
  else
   begin
    $display ( "TEST CASE 1 FAILED" ) ;
   end
  A_tb = 'sb101 ;
  $display ( "TEST CASE 2 :" ) ;
  #10 
  if ((Arith_OUT_tb == 'shfffffffe ) && (Arith_Flag_tb == 1'b1))
   begin
     $display ( "TEST CASE 2 PASSED" ) ;
   end
  else
   begin
    $display ( "TEST CASE 2 FAILED" ) ;
   end
   A_tb = 'shfffb ;
   B_tb = 'sb111 ;
   $display ( "TEST CASE 3 :" ) ;
  #10 
  if ((Arith_OUT_tb == 'sh2 ) && (Arith_Flag_tb == 1'b1))
   begin
     $display ( "TEST CASE 3 PASSED" ) ;
   end
  else
   begin
    $display ( "TEST CASE 3 FAILED" ) ;
   end
   A_tb = 16'sb101 ;
   B_tb = 16'sb111 ;
  $display ( "TEST CASE 4 :" ) ;
  #10 
  if ((Arith_OUT_tb == A_tb + B_tb ) && (Arith_Flag_tb == 1'b1))
   begin
     $display ( "TEST CASE 4 PASSED" ) ;
   end
  else
   begin
    $display ( "TEST CASE 4 FAILED" ) ;
   end
  ALU_FUN_tb = 4'b0001 ;
  A_tb = 16'shfffb ;
  B_tb = 16'shfff9 ;
  $display ( "TEST CASE 5 :" ) ;
  #10 
  if ((Arith_OUT_tb == 'sh2 ) && (Arith_Flag_tb == 1'b1))
   begin
     $display ( "TEST CASE 5 PASSED" ) ;
   end
  else
   begin
    $display ( "TEST CASE 5 FAILED" ) ;
   end
  A_tb = 'sb101 ;
  $display ( "TEST CASE 6 :" ) ;
  #10 
  if ((Arith_OUT_tb == 'shc ) && (Arith_Flag_tb == 1'b1))
   begin
     $display ( "TEST CASE 6 PASSED" ) ;
   end
  else
   begin
    $display ( "TEST CASE 6 FAILED" ) ;
   end
  A_tb = 'shfffb ;
  B_tb = 'sb111 ;
  $display ( "TEST CASE 7 :" ) ;
  #10 
  if ((Arith_OUT_tb == 'shfffffff4 ) && (Arith_Flag_tb == 1'b1))
   begin
     $display ( "TEST CASE 7 PASSED" ) ;
   end
  else
   begin
    $display ( "TEST CASE 7 FAILED" ) ;
   end
  A_tb = 16'sb101 ;
  B_tb = 16'sb111 ;
  $display ( "TEST CASE 8 :" ) ;
  #10 
  if ((Arith_OUT_tb == 'shfffffffe ) && (Arith_Flag_tb == 1'b1))
   begin
     $display ( "TEST CASE 8 PASSED" ) ;
   end
  else
   begin
    $display ( "TEST CASE 8 FAILED" ) ;
   end
  ALU_FUN_tb = 4'b0010 ;
  A_tb = 'shfffb ;
  B_tb = 'shfff9 ;
  $display ( "TEST CASE 9 :" ) ;
  #10 
  if ((Arith_OUT_tb == A_tb * B_tb ) && (Arith_Flag_tb == 1'b1))
   begin
     $display ( "TEST CASE 9 PASSED" ) ;
   end
  else
   begin
    $display ( "TEST CASE 9 FAILED" ) ;
   end
  A_tb = 16'sb101 ;
  $display ( "TEST CASE 10 :" ) ;
  #10 
  if ((Arith_OUT_tb == A_tb * B_tb ) && (Arith_Flag_tb == 1'b1))
   begin
     $display ( "TEST CASE 10 PASSED" ) ;
   end
  else
   begin
    $display ( "TEST CASE 10 FAILED" ) ;
   end
  A_tb = 16'shfffb ;
  B_tb = 16'sb111 ;
  $display ( "TEST CASE 11 :" ) ;
  #10 
  if ((Arith_OUT_tb == A_tb * B_tb ) && (Arith_Flag_tb == 1'b1))
   begin
     $display ( "TEST CASE 11 PASSED" ) ;
   end
  else
   begin
    $display ( "TEST CASE 11 FAILED" ) ;
   end
  A_tb = 16'sb101 ;
  B_tb = 16'sb111 ;
  $display ( "TEST CASE 12 :" ) ;
  #10 
  if ((Arith_OUT_tb == A_tb * B_tb ) && (Arith_Flag_tb == 1'b1))
   begin
     $display ( "TEST CASE 12 PASSED" ) ;
   end
  else
   begin
    $display ( "TEST CASE 12 FAILED" ) ;
   end
  ALU_FUN_tb = 4'b0011 ;
  A_tb = 16'shfffb ;
  B_tb = 16'shfff9 ;
  $display ( "TEST CASE 13 :" ) ;
  #10 
  if ((Arith_OUT_tb == A_tb / B_tb ) && (Arith_Flag_tb == 1'b1))
   begin
     $display ( "TEST CASE 13 PASSED" ) ;
   end
  else
   begin
    $display ( "TEST CASE 13 FAILED" ) ;
   end
  A_tb = 16'sb101 ;
  $display ( "TEST CASE 14 :" ) ;
  #10 
  if ((Arith_OUT_tb == A_tb / B_tb ) && (Arith_Flag_tb == 1'b1))
   begin
     $display ( "TEST CASE 14 PASSED" ) ;
   end
  else
   begin
    $display ( "TEST CASE 14 FAILED" ) ;
   end
  A_tb = 16'shfffb ;
  B_tb = 16'sb111 ;
  $display ( "TEST CASE 15 :" ) ;
  #10 
  if ((Arith_OUT_tb == A_tb / B_tb ) && (Arith_Flag_tb == 1'b1))
   begin
     $display ( "TEST CASE 15 PASSED" ) ;
   end
  else
   begin
    $display ( "TEST CASE 15 FAILED" ) ;
   end
  A_tb = 16'sb101 ;
  B_tb = 16'sb111 ;
  $display ( "TEST CASE 16 :" ) ;
  #10 
  if ((Arith_OUT_tb == A_tb / B_tb ) && (Arith_Flag_tb == 1'b1))
   begin
     $display ( "TEST CASE 16 PASSED" ) ;
   end
  else
   begin
    $display ( "TEST CASE 16 FAILED" ) ;
   end
  $display ( "TEST CASE 17 :" ) ;
  ALU_FUN_tb = 4'b0100 ;
  #10 
  if ((Logic_OUT_tb == A_tb & B_tb ) && (Logic_Flag_tb == 1'b1))
   begin
     $display ( "TEST CASE 17 PASSED" ) ;
   end
  else
   begin
    $display ( "TEST CASE 17 FAILED" ) ;
   end
  $display ( "TEST CASE 18 :" ) ;
  ALU_FUN_tb = 4'b0101 ;
  #10 
  if ((Logic_OUT_tb == A_tb | B_tb ) && (Logic_Flag_tb == 1'b1))
   begin
     $display ( "TEST CASE 18 PASSED" ) ;
   end
  else
   begin
    $display ( "TEST CASE 18 FAILED" ) ;
   end
  $display ( "TEST CASE 19 :" ) ;
  ALU_FUN_tb = 4'b0110 ;
  #10 
  if ((Logic_OUT_tb == ~(A_tb & B_tb) ) && (Logic_Flag_tb == 1'b1))
   begin
     $display ( "TEST CASE 19 PASSED" ) ;
   end
  else
   begin
    $display ( "TEST CASE 19 FAILED" ) ;
   end
  $display ( "TEST CASE 20 :" ) ;
  ALU_FUN_tb = 4'b0111 ;
  #10 
  if ((Logic_OUT_tb == ~(A_tb | B_tb) ) && (Logic_Flag_tb == 1'b1))
   begin
     $display ( "TEST CASE 20 PASSED" ) ;
   end
  else
   begin
    $display ( "TEST CASE 20 FAILED" ) ;
   end
  $display ( "TEST CASE 21 :" ) ;
  ALU_FUN_tb = 4'b1000 ;
  #10 
  if ((CMP_OUT_tb == 16'b0 ) && (CMP_Flag_tb == 1'b1))
   begin
     $display ( "TEST CASE 21 PASSED" ) ;
   end
  else
   begin
    $display ( "TEST CASE 21 FAILED" ) ;
   end
   $display ( "TEST CASE 22 :" ) ;
  ALU_FUN_tb = 4'b1001 ;
  #10 
  if ((CMP_OUT_tb == 16'b0 ) && (CMP_Flag_tb == 1'b1))
   begin
     $display ( "TEST CASE 22 PASSED" ) ;
   end
  else
   begin
    $display ( "TEST CASE 22 FAILED" ) ;
   end
   $display ( "TEST CASE 23 :" ) ;
  ALU_FUN_tb = 4'b1010 ;
  #10 
  if ((CMP_OUT_tb == 16'b0 ) && (CMP_Flag_tb == 1'b1))
   begin
     $display ( "TEST CASE 23 PASSED" ) ;
   end
  else
   begin
    $display ( "TEST CASE 23 FAILED" ) ;
   end
   $display ( "TEST CASE 24 :" ) ;
  ALU_FUN_tb = 4'b1011 ;
  #10 
  if ((CMP_OUT_tb == 16'b11 ) && (CMP_Flag_tb == 1'b1))
   begin
     $display ( "TEST CASE 24 PASSED" ) ;
   end
  else
   begin
    $display ( "TEST CASE 24 FAILED" ) ;
   end
$display ( "TEST CASE 25 :" ) ;
  ALU_FUN_tb = 4'b1100 ;
  #10 
  if ((SHIFT_OUT_tb == (A_tb>>1) ) && (SHIFT_Flag_tb == 1'b1))
   begin
     $display ( "TEST CASE 25 PASSED" ) ;
   end
  else
   begin
    $display ( "TEST CASE 25 FAILED" ) ;
   end
  $display ( "TEST CASE 26 :" ) ;
  ALU_FUN_tb = 4'b1101 ;
  #10 
  if ((SHIFT_OUT_tb == (A_tb<<1) ) && (SHIFT_Flag_tb == 1'b1))
   begin
     $display ( "TEST CASE 26 PASSED" ) ;
   end
  else
   begin
    $display ( "TEST CASE 26 FAILED" ) ;
   end
  $display ( "TEST CASE 27 :" ) ;
  ALU_FUN_tb = 4'b1110 ;
  #10 
  if ((SHIFT_OUT_tb == (B_tb>>1) ) && (SHIFT_Flag_tb == 1'b1))
   begin
     $display ( "TEST CASE 27 PASSED" ) ;
   end
  else
   begin
    $display ( "TEST CASE 27 FAILED" ) ;
   end
  $display ( "TEST CASE 28 :" ) ;
  ALU_FUN_tb = 4'b1111 ;
  #10 
  if ((SHIFT_OUT_tb == (B_tb<<1) ) && (SHIFT_Flag_tb == 1'b1))
   begin
     $display ( "TEST CASE 28 PASSED" ) ;
   end
  else
   begin
    $display ( "TEST CASE 28 FAILED" ) ;
   end


 end
 endmodule