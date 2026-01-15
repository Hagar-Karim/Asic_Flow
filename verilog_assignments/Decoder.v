module Decoder 
(
 input wire [1:0] ALU_FUN_decoder ,
 output reg [3:0] Enable

) ;


always@ (*)
begin
 Enable = 4'b0 ; 
 Enable = 4'b0 ; 
 Enable = 4'b0 ; 
 Enable = 4'b0 ;
 case (ALU_FUN_decoder)
  2'b00 : Enable = 4'b0001 ;
  2'b01 : Enable = 4'b0010 ;
  2'b10 : Enable = 4'b0100 ;
  2'b11 : Enable = 4'b1000 ;
endcase  


end
endmodule