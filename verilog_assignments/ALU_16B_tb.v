module ALU_16B_tb () ;

  reg [15:0] A_tb , B_tb ;
  reg [3:0]  ALU_FUN_tb ;
  reg clk_tb ;
  wire [15:0] ALU_OUT_tb ;
  wire Carry_Flag_tb ;
  wire Arith_Flag_tb ;
  wire Logic_Flag_tb ;
  wire CMP_Flag_tb ;
  wire Shift_Flag_tb ;
  
  ALU_16B DUT(.A(A_tb) ,
              .B(B_tb) , 
              .ALU_FUN(ALU_FUN_tb) ,
              .clk(clk_tb) , 
              .ALU_OUT(ALU_OUT_tb) , 
              .Carry_Flag(Carry_Flag_tb)  , 
              .Arith_Flag(Arith_Flag_tb) , 
              .Logic_Flag(Logic_Flag_tb) , 
              .CMP_Flag(CMP_Flag_tb) , 
              .Shift_Flag(Shift_Flag_tb)) ;

always  #5 clk_tb = ~clk_tb ;

initial
begin
$dumbfile("ALU_16B.vcd");
$dumbvars;
clk_tb = 0 ;
A_tb = 16'b101 ;
B_tb = 16'b111 ;
ALU_FUN_tb = 4'b0 ;
$display (" TEST CASE 1 : ") ;
#7
if ( ALU_OUT_tb == A_tb + B_tb)
 begin
  $display (" TEST CASE 1 PASSED ") ;
 end
else 
 begin
  $display (" TEST CASE 1 FAILED ") ;
 end
$display (" TEST CASE 2 : ") ;
ALU_FUN_tb = 4'b1 ;
#10
if ( ALU_OUT_tb == A_tb - B_tb)
 begin
  $display (" TEST CASE 2 PASSED ") ;
 end
else 
 begin
  $display (" TEST CASE 2 FAILED ") ;
 end
$display (" TEST CASE 3 : ") ;
ALU_FUN_tb = 4'b10 ;
#10
if ( ALU_OUT_tb == A_tb * B_tb)
 begin
  $display (" TEST CASE 3 PASSED ") ;
 end
else 
 begin
  $display (" TEST CASE 3 FAILED ") ;
 end
 $display (" TEST CASE 4 : ") ;
 ALU_FUN_tb = 4'b11 ;
#10
if ( ALU_OUT_tb == A_tb / B_tb)
 begin
  $display (" TEST CASE 4 PASSED ") ;
 end
else 
 begin
  $display (" TEST CASE 4 FAILED ") ;
 end
 $display (" TEST CASE 5 : ") ;
 ALU_FUN_tb = 4'b100 ;
#10
if ( ALU_OUT_tb == A_tb & B_tb)
 begin
  $display (" TEST CASE 5 PASSED ") ;
 end
else 
 begin
  $display (" TEST CASE 5 FAILED ") ;
 end
  $display (" TEST CASE 6 : ") ;
 ALU_FUN_tb = 4'b101 ;
#10
if ( ALU_OUT_tb == A_tb | B_tb)
 begin
  $display (" TEST CASE 6 PASSED ") ;
 end
else 
 begin
  $display (" TEST CASE 6 FAILED ") ;
 end
  $display (" TEST CASE 7 : ") ;
 ALU_FUN_tb = 4'b110 ;
#10
if ( ALU_OUT_tb == ~(A_tb & B_tb))
 begin
  $display (" TEST CASE 7 PASSED ") ;
 end
else 
 begin
  $display (" TEST CASE 7 FAILED ") ;
 end
 $display (" TEST CASE 8 : ") ;
 ALU_FUN_tb = 4'b111 ;
#10
if ( ALU_OUT_tb == ~(A_tb | B_tb))
 begin
  $display (" TEST CASE 8 PASSED ") ;
 end
else 
 begin
  $display (" TEST CASE 8 FAILED ") ;
 end
  $display (" TEST CASE 9 : ") ;
 ALU_FUN_tb = 4'b1000 ;
#10
if ( ALU_OUT_tb == A_tb ^ B_tb)
 begin
  $display (" TEST CASE 9 PASSED ") ;
 end
else 
 begin
  $display (" TEST CASE 9 FAILED ") ;
 end
  $display (" TEST CASE 10 : ") ;
 ALU_FUN_tb = 4'b1001 ;
#10
if ( ALU_OUT_tb == ~(A_tb ^ B_tb))
 begin
  $display (" TEST CASE 10 PASSED ") ;
 end
else 
 begin
  $display (" TEST CASE 10 FAILED ") ;
 end
  $display (" TEST CASE 11 : ") ;
 ALU_FUN_tb = 4'b1010 ;
#10
if ( ALU_OUT_tb == (A_tb==B_tb))
 begin
  $display (" TEST CASE 11 PASSED ") ;
 end
else 
 begin
  $display (" TEST CASE 11 FAILED ") ;
 end
  $display (" TEST CASE 12 : ") ;
 ALU_FUN_tb = 4'b1011 ;
#10
if ( ALU_OUT_tb == (A_tb > B_tb) )
 begin
  $display (" TEST CASE 12 PASSED ") ;
 end
else 
 begin
  $display (" TEST CASE 12 FAILED ") ;
 end
$display (" TEST CASE 13 : ") ;
 ALU_FUN_tb = 4'b1100 ;
#10
if ( ALU_OUT_tb == 16'b11 )
 begin
  $display (" TEST CASE 13 PASSED ") ;
 end
else 
 begin
  $display (" TEST CASE 13 FAILED ") ;
 end
$display (" TEST CASE 14 : ") ;
 ALU_FUN_tb = 4'b1101 ;
#10
if ( ALU_OUT_tb == (A_tb >> 1) )
 begin
  $display (" TEST CASE 14 PASSED ") ;
 end
else 
 begin
  $display (" TEST CASE 14 FAILED ") ;
 end
$display (" TEST CASE 15 : ") ;
 ALU_FUN_tb = 4'b1110 ;
#10
if ( ALU_OUT_tb == (A_tb << 1) )
 begin
  $display (" TEST CASE 15 PASSED ") ;
 end
else 
 begin
  $display (" TEST CASE 15 FAILED ") ;
 end
$display (" TEST CASE 16 : ") ;
 ALU_FUN_tb = 4'b1111 ;
#10
if ( ALU_OUT_tb == 16'b0 )
 begin
  $display (" TEST CASE 16 PASSED ") ;
 end
else 
 begin
  $display (" TEST CASE 16 FAILED ") ;
 end
$stop ;
end
endmodule