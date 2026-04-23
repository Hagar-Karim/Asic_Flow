module LOCK_tb () ;
reg rst_tb , clk_tb , key_tb ;
wire out_tb ;

locker_mealy DUT (.rst(rst_tb) , 
                  .clk(clk_tb) , 
                  .key(key_tb) , 
                  .out(out_tb)) ;

parameter clock_period = 10 ;

always 
begin
  #(clock_period/2) clk_tb = ~clk_tb ;
end

initial 
begin
  initialize () ;
  reset () ;
  lock_task (5'b01011) ;
  @(posedge out_tb)
  $display ("passed") ;
end


task lock_task ;
input [4:0] key_task ;
integer i ;
begin
  for ( i = 0 ; i < 5 ; i = i+1 )
   begin
    #clock_period 
    key_tb = key_task[i] ;
     
   end
end
endtask

task initialize ;
begin
 clk_tb = 1'b0 ;
 key_tb = 1'b0 ;
end
endtask

task reset ;
begin
 rst_tb = 1'b1 ;
 #clock_period
 rst_tb = 1'b0 ;
 #clock_period
 rst_tb = 1'b1 ;
end
endtask
endmodule