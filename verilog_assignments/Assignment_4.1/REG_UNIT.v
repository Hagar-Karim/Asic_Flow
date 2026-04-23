module REG_UNIT #( parameter REG_WIDTH = 16 ,
                             REG_DEPTH = 8 ,
                             ADDR_WIDTH = 3)
(

 input wire CLK , RST , WrEn , RdEn ,
 input wire [REG_WIDTH-1 : 0] WrData , 
 input wire [ADDR_WIDTH-1 : 0] Address ,
 output reg [REG_WIDTH-1 : 0] RdData 

) ;

reg [REG_WIDTH-1 : 0] REG_FILE [REG_DEPTH-1 : 0] ;

always@ (posedge CLK or negedge RST)
begin
  if (!RST)
   begin
    REG_FILE[0] <= 16'b0 ;
    REG_FILE[1] <= 16'b0 ;
    REG_FILE[2] <= 16'b0 ;
    REG_FILE[3] <= 16'b0 ;
    REG_FILE[4] <= 16'b0 ;
    REG_FILE[5] <= 16'b0 ;
    REG_FILE[6] <= 16'b0 ;
    REG_FILE[7] <= 16'b0 ;
   end
  else if(WrEn && !RdEn)
   begin
    REG_FILE[Address] <= WrData ;
   end
  else if (RdEn && !WrEn)
   begin
     RdData <= REG_FILE[Address] ;
   end
end
endmodule