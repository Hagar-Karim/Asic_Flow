module AGDC_moore_tb_2 ();

 reg UP_Max_tb , Activate_tb , DN_Max_tb ;
 reg CLK_tb , RST_tb ;
 wire UP_M_tb , DN_M_tb ;

parameter clk_p = 20 ;

always 
 begin
  #(clk_p/2) CLK_tb = ~CLK_tb ;
 end

AGDC_moore dut (.UP_Max(UP_Max_tb) , 
            .Activate(Activate_tb) , 
            .DN_Max(DN_Max_tb) , 
            .CLK(CLK_tb) , 
            .RST(RST_tb) , 
            .UP_M(UP_M_tb) , 
            .DN_M(DN_M_tb)) ;

task initialize ;
 begin
  UP_Max_tb = 1'b0 ;
  Activate_tb = 1'b0 ;
  DN_Max_tb = 1'b1 ;
  CLK_tb = 1'b0 ;
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

task Activate_button ;
 begin 
  Activate_tb = 1'b1 ;
  #40
  Activate_tb = 1'b0 ;
 end
 endtask 

task Up_Sensor ;
 begin
  #40 
  UP_Max_tb = 1'b1 ;
  DN_Max_tb = 1'b0 ;
 end
 endtask

task check ;
 input up ;
 input dn ;
 begin
  if ((UP_M_tb == up)&&(DN_M_tb == dn))
   $display ("test case passed at time %0t" , $time) ;
  else 
   $display ("test case failed at time %0t" , $time) ;
 end
 endtask

task Dn_Sensor ;
 begin
  #40 
  UP_Max_tb = 1'b0 ;
  DN_Max_tb = 1'b1 ;
 end
 endtask

initial
 begin
  initialize () ;
  reset () ;
  Activate_button () ;
  check (1'b1 , 1'b0) ;
  Up_Sensor () ;
  Activate_button () ;
  check (1'b0 , 1'b1) ;
  

  
 end
 


endmodule
