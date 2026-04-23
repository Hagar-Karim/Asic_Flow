module CRC_tb () ;
reg  ACTIVE_tb , CLK_tb , RST_tb ;
reg DATA_tb ;
wire cRc_tb , Valid_tb ;

parameter clk_p = 10 ;
parameter WIDTH = 8 ;
parameter test_cases = 10 ;

reg [WIDTH - 1 : 0] in_data [test_cases - 1 : 0] ;
reg [WIDTH - 1 : 0] expec_out [test_cases - 1 : 0] ;

CRC DUT (.ACTIVE(ACTIVE_tb) , 
         .CLK(CLK_tb) , 
         .RST(RST_tb) , 
         .DATA(DATA_tb) , 
         .cRc(cRc_tb) , 
         .Valid(Valid_tb)) ;
always
begin
 #(clk_p/2) CLK_tb = ~CLK_tb ;
end

task intialize ;
begin
  ACTIVE_tb = 1'b0 ;
  CLK_tb =    1'b0 ;
  DATA_tb =   1'b0 ;
end
endtask

task reset ;
begin
  RST_tb = 1'b1 ;
  #clk_p
  RST_tb = 1'b0 ;
  #clk_p
  RST_tb = 1'b1 ;
end
endtask

task operation ;
input [7:0] data ;
integer i ;
begin
  ACTIVE_tb = 1'b1 ;
  for (i=0 ; i < 8 ; i = i + 1) 
   begin
     DATA_tb = data [i] ;
     #clk_p ;
   end
  ACTIVE_tb = 1'b0 ;
end
endtask

task check ;
input [7:0] expec_data ;
integer i ;
begin
  
  for (i = 0 ; i < 8 ; i = i + 1)
  begin
   #clk_p 
   if (cRc_tb == expec_data [i])
    $display (" passed at time %0t " , $time);
    else
    $display ("notpassed") ;
    
  end
end
endtask

 integer x ;
initial 
begin
 intialize () ;
 $readmemh ("DATA_h.txt" , in_data) ;
 $readmemh ("Expec_Out_h.txt" , expec_out) ;
 for ( x = 0 ; x < 10 ; x = x + 1)
  begin
   reset () ;
   operation (in_data[x]) ;
   @(posedge Valid_tb)
   check (expec_out[x]) ;
  end
end
endmodule




