module BIT_SYNC #(parameter NUM_STAGES = 3 , BUS_WIDTH = 1)
(
 input [BUS_WIDTH-1:0] ASYNC ,
 input CLK , RST ,
 output reg [BUS_WIDTH-1:0] SYNC

) ;

reg [NUM_STAGES-1:0] ffs [BUS_WIDTH-1:0] ;
integer i ;
always@ (posedge CLK or negedge RST)
 begin
   if (!RST)
    begin
     for ( i = 0 ; i < BUS_WIDTH ; i = i + 1) 
      ffs[i] <= 'b0 ;
    end
   else
    begin
     for ( i = 0 ; i < BUS_WIDTH ; i = i + 1) 
      ffs [i] <= {ffs [i] [NUM_STAGES-2:0] , ASYNC [i]}  ;
    end
 end


 always@ (*)
  begin
    for ( i = 0 ; i < BUS_WIDTH ; i = i + 1)
     begin
       SYNC [i] = ffs [i] [NUM_STAGES-1] ;
     end
  end

 endmodule