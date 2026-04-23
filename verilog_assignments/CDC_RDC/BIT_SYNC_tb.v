module BIT_SYNC_tb #(parameter NUM_STAGES = 5 , BUS_WIDTH = 6) ;

reg [BUS_WIDTH-1:0] ASYNC_tb ;
reg CLK_tb , RST_tb ;
wire [BUS_WIDTH-1:0] SYNC_tb ;

BIT_SYNC #(.NUM_STAGES(NUM_STAGES) , 
           .BUS_WIDTH(BUS_WIDTH))  

DUT       (.ASYNC(ASYNC_tb) , 
           .CLK(CLK_tb) , 
           .RST(RST_tb) , 
           .SYNC(SYNC_tb)) ;

parameter clock_period = 10 ;
integer i ;
always 
 begin
   #(clock_period/2) CLK_tb = ~CLK_tb ;
 end

task reset () ;
begin
  RST_tb = 1'b0 ;
  #clock_period
  RST_tb = 1'b1 ;
end
endtask

task initialize () ;
 begin
   ASYNC_tb = 'b0 ;
   CLK_tb = 1'b0 ;
 end
endtask

task do_operation ;
 input [BUS_WIDTH-1:0] in_data ;
 begin
  for ( i = 0 ; i < BUS_WIDTH ; i = i + 1)
   ASYNC_tb [i] = in_data [i] ;  
 end
endtask

task check ;
 input [BUS_WIDTH-1:0] check_data ;
 input [3:0] latency ; 
 begin
 #(clock_period*latency)
 for ( i = 0 ; i < BUS_WIDTH ; i = i + 1)
  begin
    if (SYNC_tb [i] == check_data [i] )
    $display ("passed @ time %0t with value %d" , $time , check_data [i]) ;
    else
    $display ("failed @ time %0t with value %d" , $time , SYNC_tb [i]) ;
  end
 end
endtask

initial 
 begin
   initialize () ;
   reset () ;
   do_operation ('b101011) ;
   check ('b101011 , NUM_STAGES ) ;
 end

endmodule

 