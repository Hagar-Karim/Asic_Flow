module  SHIFT_UNIT #(parameter WIDTH_IN_DATA = 16 , WIDTH_OUT_DATA = 16) 
(
  input wire  [ WIDTH_IN_DATA-1 : 0 ] A_shift  , B_shift ,
  input wire CLK_shift ,
  input wire Shift_Enable , RST_shift ,
  input wire [1:0] ALU_FUN_shift ,
  output reg  [ WIDTH_OUT_DATA : 0 ] SHIFT_OUT ,
  output reg SHIFT_Flag

) ;

reg [ WIDTH_OUT_DATA : 0 ] SHIFT_OUT_Comb ;
reg SHIFT_Flag_Comb ;

always@ (posedge CLK_shift or negedge RST_shift)
 begin
  if (!RST_shift)
   begin
   SHIFT_OUT <= 'b0 ;
   SHIFT_Flag <= 1'b0 ;
   end
  else
   begin
   SHIFT_OUT <= SHIFT_OUT_Comb ;
   SHIFT_Flag <= SHIFT_Flag_Comb ;
   end
 end

 always@ (*)
  begin
   if(Shift_Enable)
    begin
      SHIFT_Flag_Comb = 1'b1 ;
      case (ALU_FUN_shift)
       2'b00 : SHIFT_OUT_Comb = A_shift >> 1 ;
       2'b01 : SHIFT_OUT_Comb = A_shift << 1 ;
       2'b10 : SHIFT_OUT_Comb = B_shift >> 1 ;
       2'b11 : SHIFT_OUT_Comb = B_shift << 1 ;
       endcase
       end
       else 
       begin
         SHIFT_Flag_Comb = 1'b0 ;
         SHIFT_OUT_Comb =   'b0 ;
       end
    
   
  end
  endmodule