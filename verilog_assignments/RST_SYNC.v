module RST_SYNC #( parameter NUM_STAGES = 2 ) 
(
 input wire RST , CLK ,
 output wire SYNC_RST

) ;
 reg [NUM_STAGES-1:0] rst ;

always@ ( posedge CLK or negedge RST )
 begin
  if (!RST) 
   begin
    rst <= 'b0 ;
   end
  else
   begin
     rst <= {rst[NUM_STAGES-2:0] , RST} ;
   end
   
 end

 assign SYNC_RST = rst[NUM_STAGES-1] ;
endmodule