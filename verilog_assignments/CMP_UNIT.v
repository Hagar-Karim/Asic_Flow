module  CMP_UNIT #(parameter WIDTH_IN_DATA = 16 , WIDTH_OUT_DATA = 16) 
(
  input wire  [ WIDTH_IN_DATA-1 : 0 ] A_cmp  , B_cmp ,
  input wire CLK_cmp ,
  input wire Cmp_Enable , RST_cmp ,
  input wire [1:0] ALU_FUN_cmp ,
  output reg  [ WIDTH_OUT_DATA : 0 ] CMP_OUT ,
  output reg CMP_Flag

) ;

reg [ WIDTH_OUT_DATA : 0 ] CMP_OUT_Comb ;
reg CMP_Flag_comb ;

always@ (posedge CLK_cmp or negedge RST_cmp)
 begin
  if (!RST_cmp)
   begin
   CMP_OUT <= 'b0 ;
   CMP_Flag <= 1'b0 ;
   end
  else
   begin
   CMP_OUT <= CMP_OUT_Comb ;
   CMP_Flag <= CMP_Flag_comb ;
   end
 end

 always@ (*)
  begin
   if (Cmp_Enable)
    begin 
     CMP_Flag_comb = 1'b1 ;
     case (ALU_FUN_cmp)
     2'b00 : CMP_OUT_Comb = 'b0 ;
     2'b01 : CMP_OUT_Comb = (A_cmp == B_cmp) ;
     2'b10 : CMP_OUT_Comb = (A_cmp > B_cmp) ? 'b10 :'b0 ;
     2'b11 : CMP_OUT_Comb = (A_cmp < B_cmp) ? 'b11 :'b0 ;
     endcase
     end
    else 
     begin
      CMP_OUT_Comb = 'b0 ;
      CMP_Flag_comb = 1'b0 ;

     end
    

  end
  endmodule