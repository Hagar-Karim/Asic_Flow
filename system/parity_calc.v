module parity_calc #( parameter WIDTH = 8 )
(
 input [WIDTH-1:0] P_DATA_p ,
 input Data_Valid ,
 input PAR_TYP ,
 input PAR_EN ,
 output reg par_bit 
) ;

reg register ;


always@ (*)
 begin
  if (Data_Valid)
   begin
    register = ^P_DATA_p ;
   end
  else if (PAR_EN)
   begin
  case (PAR_TYP)
  1'b0 : 
   par_bit = register ;
  1'b1 :
   par_bit = ~register ;
  endcase
  end
  else
   begin
    par_bit = 1'b0  ;
   end
 end

endmodule