module  LOGIC_UNIT #(parameter WIDTH_IN_DATA = 16 , WIDTH_OUT_DATA = 16) 
(
  input wire [ WIDTH_IN_DATA-1 : 0 ] A_logic  , B_logic ,
  input wire CLK_logic ,
  input wire Logic_Enable , RST_logic ,
  input wire [1:0] ALU_FUN_logic ,
  output reg  [ WIDTH_OUT_DATA : 0 ] Logic_OUT ,
  output reg Logic_Flag

) ;

reg [ WIDTH_OUT_DATA : 0 ] Logic_OUT_Comb ;
reg Logic_Flag_comb ;

always@ (posedge CLK_logic , negedge RST_logic)
 begin
  if (!RST_logic)
   begin
    Logic_OUT <= 'b0 ;
    Logic_Flag <= 1'b0 ;
   end
  else
  begin
   Logic_OUT <= Logic_OUT_Comb ;
   Logic_Flag <= Logic_Flag_comb ;
  end
 end

always@ (*)
 begin
  if(Logic_Enable)
   begin
    Logic_Flag_comb = 1'b1 ;
    case (ALU_FUN_logic) 
     2'b00 : Logic_OUT_Comb = A_logic & B_logic ;
     2'b01 : Logic_OUT_Comb = A_logic | B_logic ;
     2'b10 : Logic_OUT_Comb = ~(A_logic & B_logic) ;
     2'b11 : Logic_OUT_Comb = ~(A_logic | B_logic) ;
    endcase
   end
   else 
   begin
   Logic_Flag_comb = 1'b0 ;
   Logic_OUT_Comb =   'b0 ;

   end
 end
endmodule