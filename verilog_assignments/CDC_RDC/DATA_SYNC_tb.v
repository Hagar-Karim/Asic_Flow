module DATA_SYNC_tb #( parameter NUM_STAGES = 5 , BUS_WIDTH = 8) ;

reg [BUS_WIDTH-1:0] Unsync_bus_tb ;
reg bus_enable_tb ;
reg CLK_tb ;
reg RST_tb ;
wire [BUS_WIDTH-1:0] sync_bus_tb ;
wire enable_pulse_tb ;

DATA_SYNC #(.NUM_STAGES(NUM_STAGES) , .BUS_WIDTH(BUS_WIDTH))

DUT (.Unsync_bus(Unsync_bus_tb) , 
     .bus_enable(bus_enable_tb) , 
     .CLK(CLK_tb) , .RST(RST_tb) , 
     .sync_bus(sync_bus_tb) , 
     .enable_pulse(enable_pulse_tb)) ;

parameter clock_period = 10 ;

always
 begin
   #(clock_period/2) CLK_tb = ~CLK_tb ;
 end

task initialize () ;
 begin
   CLK_tb = 1'b0 ;
   Unsync_bus_tb = 'b0 ;
   bus_enable_tb = 1'b0 ;
 end
endtask

task reset () ;
 begin
   RST_tb = 1'b0 ;
   #clock_period
   RST_tb = 1'b1 ;
 end
endtask

task do_operation ;
 input [BUS_WIDTH-1:0] fun_data ;
 input [3:0] latency ;
 begin
  Unsync_bus_tb = fun_data ;
  bus_enable_tb = 1'b1 ;
  #(clock_period*latency)
  bus_enable_tb = 1'b0 ;
 end
endtask

task check ;
 input [BUS_WIDTH-1:0] check_data ;
 begin
  if (sync_bus_tb == check_data)
   begin
     $display ("the data passed successfully at time %0t with value %b" , $time , sync_bus_tb) ;
   end
  else
   begin
     $display ("the data failed  at time %0t with value %b" , $time , sync_bus_tb) ;
   end
 end
endtask


initial 
 begin
  initialize () ;
  reset () ;
  do_operation ('b11110000 , NUM_STAGES + 1) ;
  check ('b11110000) ;
  #clock_period
  do_operation ('b01010101 , NUM_STAGES + 1) ;
  check ('b01010101) ;
  reset () ;
  do_operation ('b11001100 , NUM_STAGES + 1) ;
  check ('b11001100) ;
 end

endmodule