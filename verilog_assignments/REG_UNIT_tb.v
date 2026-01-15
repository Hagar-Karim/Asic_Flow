module REG_UNIT_tb #( parameter REG_WIDTH = 16 ,
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

initial
 begin
  CLK_tb = 1'b0 ;
  RST_tb = 1'b0 ;
  #clk_period
  RST_tb = 1'b1 ;
  WrEn_tb = 1'b1 ;
  RdEn_tb = 1'b0 ;
  Address_tb = 3'b101 ;
  WrData_tb = 16'b111 ;
  #clk_period
  Address_tb = 3'b111 ;
  WrData_tb = 16'b1111 ;
  #clk_period
  WrEn_tb = 1'b0 ;
  RdEn_tb = 1'b1 ;
  Address_tb = 3'b101 ;
  #clk_period
  if (RdData_tb == 16'b111)
   $display("TEST CASE 1 PASSED");
  else
   $display("TEST CASE 1 FAILED") ;
    Address_tb = 3'b111 ; 
    #clk_period
     if (RdData_tb == 16'b1111)
   $display("TEST CASE 2 PASSED");
  else
   $display("TEST CASE 2 FAILED") ;
 end
 endmodule