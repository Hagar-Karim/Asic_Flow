module ClkDiv #( parameter WIDTH = 8)
(
 input wire I_ref_clk , 
 input wire I_rst_n ,
 input wire I_clk_en ,
 input wire [WIDTH-1:0] I_div_ratio , 
 output wire o_div_clk

) ;

reg [WIDTH-1:0] counter ;
wire enable , is_odd ; 
wire [WIDTH-1:0] even_edge , odd_edge ;
reg toggle , o_clk;

always@ (posedge I_ref_clk or negedge I_rst_n)
 begin
   if (!I_rst_n)
    begin
     o_clk <= 1'b0 ;
     counter <= 4'b0 ;
     toggle <= 1'b1 ;
    end
   else if ( enable )
    begin
      if ((!is_odd) && (counter == even_edge))
       begin
         o_clk <= ~o_clk ;
         counter <= 'b0 ;
       end
      else if ((is_odd) && (((counter == even_edge) && (!toggle)) || ((counter == odd_edge) && (toggle))))
         begin
          o_clk <= ~o_clk ;
          counter <= 'b0 ;
          toggle = ~toggle ;
         end
      else 
       begin
         counter <= counter + 1 ;
       end
    end
     
      
 end


 assign enable = ((I_clk_en == 1'b1) && (I_div_ratio != 'b0) && (I_div_ratio != 'b1)) ;
 assign is_odd = I_div_ratio [0] ;
 assign even_edge = (I_div_ratio >> 1) - 1 ;
 assign odd_edge  = (I_div_ratio >> 1) ;
 assign o_div_clk = enable ? o_clk : I_ref_clk ;
endmodule  