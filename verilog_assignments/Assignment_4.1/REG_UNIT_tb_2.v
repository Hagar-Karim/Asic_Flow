module REG_UNIT_tb_2 #( parameter REG_WIDTH = 16 ,
                                  REG_DEPTH = 8 ,
                                  ADDR_WIDTH = 3) () ;

 reg CLK_tb , RST_tb , WrEn_tb , RdEn_tb ;
 reg [REG_WIDTH-1 : 0] WrData_tb ; 
 reg [ADDR_WIDTH-1 : 0] Address_tb ;
 wire [REG_WIDTH-1 : 0] RdData_tb ;

 REG_UNIT  #(.REG_WIDTH(REG_WIDTH) ,
                .REG_DEPTH(REG_DEPTH) ,
                .ADDR_WIDTH(ADDR_WIDTH))

            DUT (.CLK(CLK_tb) , 
                 .RST(RST_tb) , 
                 .WrEn(WrEn_tb) , 
                 .RdEn(RdEn_tb) , 
                 .WrData(WrData_tb) , 
                 .Address(Address_tb) , 
                 .RdData(RdData_tb)) ;

parameter clk_period = 10 ;
always
begin 
#(clk_period/2) CLK_tb = ~CLK_tb ;
end

task testing ;
input [ADDR_WIDTH-1:0] Addr_task;
input [REG_WIDTH-1:0]  DATA ;
 begin
  #clk_period
  WrEn_tb = 1'b1 ;
  RdEn_tb = 1'b0 ;
  Address_tb = Addr_task ;
  WrData_tb = DATA ;
  #clk_period
  WrEn_tb = 1'b0 ;
  RdEn_tb = 1'b1 ;
  #clk_period
  if (RdData_tb == DATA)
  $display ("TEST PASSED") ;
  else 
  $display ("TEST FAILED") ;
  
 end
 endtask

 initial 
 begin
   RST_tb = 1'b0 ;
   CLK_tb = 1'b0 ;
   #clk_period 
   RST_tb = 1'b1 ;
   testing (3'b101 , 16'b111) ;
   testing (3'b111 , 16'b1111) ;
 end
 endmodule 