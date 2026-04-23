module LSFR_UNIT 
(
 input wire clk , rst , Enable , Out_Enable ,
 input wire [7:0] seed ,
 output reg OUT , Valid

) ;

wire feedback ;
reg [7:0] LFSR ;
parameter taps = 7'b1010101;
integer i ;
assign feedback = ((~|LFSR [6:0]) ^ LFSR [7]) ;

always@ (posedge clk or negedge rst)
begin
  if (!rst)
   begin
    LFSR <= seed ;
    OUT <= 1'b0 ;
    Valid <= 1'b0 ;
   end 
  else if (Enable)
  begin
   LFSR[0] <= feedback ;
   for (i = 0 ; i < 8 ; i = i + 1) 
    begin
     if (taps[i])
      begin
       LFSR [i+1]  <= LFSR [i] ^ feedback ;
      end
      else
      begin
        LFSR [i+1] <= LFSR [i] ;
      end
    end
  end
  else if (Out_Enable)
   begin
    {LFSR[6:0],OUT} <= LFSR ;
    Valid <= 1'b1 ;
   end
end
endmodule 