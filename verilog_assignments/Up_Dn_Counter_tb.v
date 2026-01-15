module Up_Dn_Counter_tb () ;
 
   reg [4:0] IN_tb ;

   reg    Load_tb ; 
   reg    Up_tb ; 
   reg    Down_tb ; 
   reg    CLK_tb ;
  
   wire High_tb , Low_tb ;

   wire  [4:0] Counter_tb ;

Up_Dn_Counter Dut ( .IN(IN_tb) , 
                    .Load(Load_tb) , 
                    .Up(Up_tb) , 
                    .Down(Down_tb) , 
                    .CLK(CLK_tb) , 
                    .High(High_tb) , 
                    .Low(Low_tb) , 
                    .Counter(Counter_tb) ) ;


always #5 CLK_tb = ~CLK_tb ;

initial
 begin
  $dumbfile("Up_Dn_Counter.vcd");
  $dumbvars;
  CLK_tb = 0 ;
  Load_tb = 0 ;
  Up_tb = 0 ;
  Down_tb = 0 ;
  IN_tb = 5 ;
  $display (" Test case 1 ") ;
  #3  Load_tb = 1 ;
  #8  
  if (Counter_tb == 5)
   begin
    $display (" Test case 1 passed ") ;
   end
  else 
   begin
    $display (" Test case 1 failed ") ;
   end

Down_tb = 1 ;

$display (" Test case 2 ") ;
#5
if (Counter_tb == 5)
   begin
    $display (" Test case 2 passed ") ;
   end
  else 
   begin
    $display (" Test case 2 failed ") ;
   end
  
Load_tb = 0 ;
Up_tb = 1 ;

$display (" Test case 3 ") ;

#10 

if (Counter_tb == 4)
   begin
    $display (" Test case 3 passed ") ;
   end
  else 
   begin
    $display (" Test case 3 failed ") ;
   end

$display (" Test case 4 ") ;

Down_tb = 0 ;

#10

if (Counter_tb == 5)
   begin
    $display (" Test case 4 passed ") ;
   end
  else 
   begin
    $display (" Test case 4 failed ") ;
   end



 $finish ;



 end
endmodule