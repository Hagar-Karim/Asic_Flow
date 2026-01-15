module  ARITHMETIC_UNIT #(parameter WIDTH_IN_DATA = 16 , WIDTH_OUT_DATA = 32) 
(
  input wire signed [ WIDTH_IN_DATA-1 : 0 ] A_arith  , B_arith ,
  input wire CLK_arith ,
  input wire Arith_Enable , RST_arith ,
  input wire [1:0] ALU_FUN_arith ,
  output reg signed [ WIDTH_OUT_DATA : 0 ] Arith_OUT ,
  output reg Arith_Flag

) ;

reg [ WIDTH_OUT_DATA : 0 ] Arith_OUT_Comb ;
reg Arith_Flag_comb ;

always@ (posedge CLK_arith or negedge RST_arith)
 begin
  if (!RST_arith)
   begin
   Arith_OUT <= 'b0 ;
   Arith_Flag <= 1'b0 ;
   end
  else
   begin
   Arith_OUT <= Arith_OUT_Comb ;
   Arith_Flag <= Arith_Flag_comb ;
   end
 end

always@ (*)
begin
 if(Arith_Enable)
  begin
   Arith_Flag_comb = 1'b1 ;
   case (ALU_FUN_arith)
    2'b00 : Arith_OUT_Comb = A_arith + B_arith ;
    2'b01 : Arith_OUT_Comb = A_arith - B_arith ;
    2'b10 : Arith_OUT_Comb = A_arith * B_arith ;
    2'b11 : Arith_OUT_Comb = A_arith / B_arith ;
   endcase
  end 
  else
  begin
  Arith_Flag_comb = 1'b0 ;
  Arith_OUT_Comb  = 'b0 ;
  end

end 
endmodule