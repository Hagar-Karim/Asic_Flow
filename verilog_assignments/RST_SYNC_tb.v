module RST_SYNC_tb #(parameter NUM_STAGES = 2) ;

reg RST_tb , CLK_tb ;
wire SYNC_RST_tb ;

RST_SYNC #(.NUM_STAGES(NUM_STAGES))

DUT       (.RST(RST_tb) , 
           .CLK(CLK_tb) , 
           .SYNC_RST(SYNC_RST_tb)) ;

parameter clock_period = 10 ;

always
 begin
  #(clock_period/2) CLK_tb = ~CLK_tb ;
 end

task initialize () ;
 begin
  CLK_tb = 0 ;
 end
endtask

task reset () ;
 begin
   RST_tb = 1'b0 ;
   #clock_period
   RST_tb = 1'b1 ;
 end
endtask

task check ;
 input [3:0] latency ;
 begin
  #(latency*clock_period) 
  if (SYNC_RST_tb == 1'b1)
   $display("reset syncronization passed @ time %0t with value %b", $time , SYNC_RST_tb ) ;
  else
   $display("reset syncronization failed @ time %0t with value %b" , $time , SYNC_RST_tb ) ;
 end
endtask


initial 
 begin
   initialize () ;
   reset () ;
   check (NUM_STAGES) ;
 end

 endmodule