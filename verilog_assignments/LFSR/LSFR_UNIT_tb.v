module LSFR_UNIT_tb () ;
 reg clk_tb , rst_tb , Enable_tb , Out_Enable_tb ;
 reg [7:0] seed_tb ;
 wire OUT_tb , Valid_tb ;

 LSFR_UNIT  DUT (.clk(clk_tb) , 
                .rst(rst_tb) , 
                .Enable(Enable_tb) , 
                .Out_Enable(Out_Enable_tb) , 
                .seed(seed_tb) , 
                .OUT(OUT_tb) , 
                .Valid(Valid_tb)) ;

parameter clk_period = 10 , TESTS = 5 , Seeds_WD = 8 ;  

always
begin
#(clk_period/2) clk_tb = ~ clk_tb ;
end

reg [Seeds_WD-1 : 0] SEEDS [TESTS-1 : 0] ;
reg [Seeds_WD-1 : 0] EXPEC_out [TESTS-1 : 0] ;

task initialize ;
begin
 clk_tb = 'b0 ;
 seed_tb = 'b10010011;
 Out_Enable_tb = 'b0 ;
 Enable_tb = 'b0 ; 
 rst_tb = 'b0 ;
end
endtask

task reset ;
begin
 rst_tb = 'b1 ;
 #clk_period
 rst_tb = 'b0 ;
 #clk_period
 rst_tb = 'b1 ;
end
endtask

task do_operation ;
 input [Seeds_WD-1 : 0] seed_task ;
begin
 seed_tb = seed_task ;
 reset () ;
 #clk_period 
 Enable_tb = 1'b1 ;
 #(10*clk_period)
 Enable_tb = 1'b0 ;
end
endtask

task test_operation ;
reg [Seeds_WD-1:0] testing ;
input [Seeds_WD-1:0] expected ;
integer i ;
 begin 
  Enable_tb = 1'b0 ;
  #clk_period  
  Out_Enable_tb = 1'b1 ;
  @(posedge Valid_tb)
   for ( i = 0 ; i < 8 ; i = i + 1)
    begin
     #clk_period testing [i] = OUT_tb ;
    end
  Out_Enable_tb = 1'b0 ;
  if (testing == expected)
  $display ("TEST PASSED") ;
  else 
  $display ("TEST FAILED") ;

 end
 endtask
 integer oper ;
 initial
 begin
  initialize () ;
  $readmemb ("Seeds_b.txt" , SEEDS) ;
  $readmemb ("Expec_Out_b.txt" , EXPEC_out) ;
  #clk_period
  for (oper = 0 ; oper < TESTS ; oper = oper + 1)
   begin
    do_operation (SEEDS[oper]) ;
    test_operation (EXPEC_out[oper]) ;
   end
 end
 endmodule


