module CRC # (parameter WIDTH = 8)
(
  input wire  ACTIVE , CLK , RST ,
  input wire  DATA ,
  output reg cRc , Valid

) ;

parameter SEED = 8'hD8 ;
parameter taps = 7'b1000100 ;
reg [WIDTH - 1 : 0] LFSR ;
wire feedback ;
reg [3:0] count ;
assign feedback = DATA ^ LFSR [0] ;
integer i ;
always@ (posedge CLK or negedge RST)
 begin
  if (!RST)
   begin
   LFSR <= SEED ;
   cRc <= 1'b0 ;
   Valid <= 1'b0 ;
   end
  else if(ACTIVE)
   begin
    LFSR [7] <= feedback ;
    for ( i = 0 ; i < WIDTH-1 ; i = i + 1)
     begin
       if (taps[i])
       LFSR[i] <= LFSR [i+1] ^ feedback ;
       else
       LFSR[i] <= LFSR [i+1] ;
     end
     Valid <= 1'b0 ;
   end
   else if(count != 4'b1000)
   begin
     {LFSR[6:0] , cRc} <= {1'b0 , LFSR} ;
     Valid <= 1'b1 ;
   end
   else 
    begin
     cRc <= 1'b0 ;
     Valid <= 1'b0 ;
    end
 end
 always@ (posedge CLK or negedge RST)
  begin
   if (!RST)
    count <= 4'b1000 ;
   else if (ACTIVE)
    count <= 4'b0 ;
   else if (count!= 4'b1000)
    count <= count + 1 ;
  end
 endmodule