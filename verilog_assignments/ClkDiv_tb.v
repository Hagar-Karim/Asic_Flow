module ClkDiv_tb #(parameter WIDTH = 8) ;

reg I_ref_clk_tb ;
reg I_rst_n_tb ;
reg I_clk_en_tb ;
reg [WIDTH-1:0] I_div_ratio_tb ;
wire o_div_clk_tb ;

ClkDiv #(.WIDTH(WIDTH)) DUT (.I_ref_clk(I_ref_clk_tb) , 
                             .I_rst_n(I_rst_n_tb) , 
                             .I_clk_en(I_clk_en_tb) , 
                             .I_div_ratio(I_div_ratio_tb) , 
                             .o_div_clk(o_div_clk_tb)) ;

parameter clk_period = 10 ;

always 
 begin
  #(clk_period/2) I_ref_clk_tb = ~I_ref_clk_tb ;
 end

 task reset () ;
  begin
   I_rst_n_tb = 1'b0 ;
   #clk_period
   I_rst_n_tb = 1'b1 ;
  end
 endtask

 task initialize () ;
  begin
    I_ref_clk_tb = 1'b0 ;
    I_clk_en_tb = 1'b0 ;
    I_div_ratio_tb = 1'b0 ;
  end
 endtask

 task do_operation  ;
  input [(WIDTH)-1:0] div ;
  begin
    I_clk_en_tb = 1'b1 ;
    I_div_ratio_tb = div ;
    $display ("clock divider by %d" , div) ;
    #(20*clk_period)
    I_clk_en_tb = 1'b0 ;
  end
 endtask

initial 
 begin
  initialize () ;
  reset () ;
  do_operation (0) ;
  do_operation (1) ;
  do_operation (2) ;
  do_operation (3) ;
  do_operation (4) ;
  do_operation (5) ;
  do_operation (6) ;
  do_operation (7) ;
  do_operation (8) ;

 end
 endmodule