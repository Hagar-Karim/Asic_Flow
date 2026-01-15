`timescale 1ns/1ps

module ASYNC_FIFO_tb #(parameter ADDR_WIDTH = 3 , 
                                 ptr_width = 4 , 
                                 DATA_WIDTH = 8 , 
                                 DATA_DEPTH = 6 , 
                                 num_stages = 2) ;

reg W_CLK_tb , W_RST_tb , W_INC_tb ;
reg R_CLK_tb , R_RST_tb , R_INC_tb ;
reg [DATA_WIDTH-1:0] WR_DATA_tb ;
wire FULL_tb , EMPTY_tb ;
wire [DATA_WIDTH-1:0] RD_DATA_tb ;


ASYNC_FIFO     #(.ADDR_WIDTH(ADDR_WIDTH) , 
                 .ptr_width(ptr_width) , 
                 .DATA_WIDTH(DATA_WIDTH) , 
                 .DATA_DEPTH(DATA_DEPTH) , 
                 .num_stages(num_stages)) 

dut              (.W_CLK(W_CLK_tb) , 
                  .W_RST(W_RST_tb) , 
                  .W_INC(W_INC_tb) , 
                  .R_CLK(R_CLK_tb) , 
                  .R_RST(R_RST_tb) , 
                  .R_INC(R_INC_tb) , 
                  .WR_DATA(WR_DATA_tb) ,
                  .FULL(FULL_tb) , 
                  .EMPTY(EMPTY_tb) , 
                  .RD_DATA(RD_DATA_tb) ) ;

parameter clock_period_w = 10 , clock_period_r = 25.0 ;
parameter data_num = 9 ;
integer i ;
reg [DATA_WIDTH-1:0] DATA [data_num-1:0] ;

always 
 begin
   #(clock_period_r/2.0) R_CLK_tb = ~R_CLK_tb ;
 end

always
 begin
   #(clock_period_w/2.0)  W_CLK_tb = ~W_CLK_tb ;
 end

task initialize () ;
 begin
  W_CLK_tb = 1'b0 ;
  R_CLK_tb = 1'b0 ;
  W_INC_tb = 1'b0 ;
  R_INC_tb = 1'b0 ;
  WR_DATA_tb = 'b0 ;

 end
endtask

task reset () ;
 begin
   W_RST_tb = 1'b0 ;
   R_RST_tb = 1'b0 ;
   #clock_period_r 
   W_RST_tb = 1'b1 ;
   R_RST_tb = 1'b1 ;
 end
endtask

task do_operation_w ;
 input [DATA_WIDTH-1:0] data_func ;
 begin
   WR_DATA_tb = data_func ;
   W_INC_tb = 1'b1 ;
   #clock_period_w 
   W_INC_tb = 1'b0 ;
 end
endtask

task do_operation_r ;
  begin
   R_INC_tb = 1'b1 ;
   #clock_period_r
   R_INC_tb = 1'b0 ;
  end
endtask


initial 
 begin

   initialize () ;
   reset () ;

   $readmemh ("data.txt" , DATA) ;

   $monitor ("write data is %h at time %0t" , WR_DATA_tb , $time) ;

   for ( i = 0 ; i < data_num ; i = i + 1)

    do_operation_w (DATA [i]) ;
   
 end

 initial 
 begin
 $monitor ("read data is %h at time %0t" , RD_DATA_tb , $time) ;

 wait (!EMPTY_tb) ;
 
 for ( i = 0 ; i < data_num ; i = i + 1)

    do_operation_r () ;

   
 end

endmodule