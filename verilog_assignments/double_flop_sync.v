module double_flop_sync 
(
  input wire  ASYNC , CLK , RST ,
  output reg SYNC 


) ;

 parameter NUM_STAGES = 2 ;
 reg flip1 ;

 always@ (posedge CLK or negedge RST)
  begin
   if (!RST)
    begin
     flip1 <= 1'b0 ;
     SYNC  <= 1'b0 ;
    end
     flip1 <= ASYNC ;
     SYNC  <= flip1 ;
  end
  endmodule