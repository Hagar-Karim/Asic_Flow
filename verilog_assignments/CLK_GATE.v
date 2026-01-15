module CLK_GATE 
(

 input wire CLK , CLK_EN ,
 output wire GATED_CLK

) ;

reg latch_output ;

always@ ( CLK or CLK_EN)
 begin
   if (!CLK)
    begin
     latch_output <= CLK_EN ;
    end
   
 end

 assign GATED_CLK = latch_output && CLK ;
 endmodule 