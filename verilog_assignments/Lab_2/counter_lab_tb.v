module counter_lab_tb ;

  reg [3:0] IN_tb ;
  reg latch_tb, dec_tb, clk_tb ;
  wire  zero_tb ; 
  wire [3:0] counter_tb ;
  



counter_lab DUT (.IN(IN_tb) , 
                 .latch(latch_tb) ,
                 .dec(dec_tb) , 
                 .clk(clk_tb) , 
                 .zero(zero_tb) , 
                 .counter(counter_tb)) ;


always #5 clk_tb = ~clk_tb ;

initial 
 begin
  $dumbfile("counter.vcd");
  $dumbvars;
  clk_tb = 0 ;
  IN_tb = 7 ;
  latch_tb = 0 ;
  dec_tb = 0 ;
  $display ("Test Case 1") ;
  #7 latch_tb = 1 ;
  #9 
  if (counter_tb == 7)
   begin
  $display ("Test Case 1 Passed") ;
   end
  $display ("Test Case 2") ;
   dec_tb = 1 ; //dec has lower priority than latch in my design 
  #10 
  if (counter_tb == 7)
    begin
  $display ("Test Case 2 Passed") ;
   end
  latch_tb = 0 ;
  #30
  if (counter_tb == 4)
    begin
  $display ("Test Case 3 Passed") ;
   end
  #40
  if (counter_tb == 0)
    begin
  $display ("Test Case 4 Passed") ;
   end


 end
 endmodule