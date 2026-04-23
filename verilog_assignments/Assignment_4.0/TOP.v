module ALU_TOP 

#( parameter WIDTH_IN_DATA = 16 ,
             WIDTH_OUT_DATA_ARITH = 32 ,
             WIDTH_OUT_DATA_LOGIC = 16 ,
             WIDTH_OUT_DATA_CMP = 16 ,
             WIDTH_OUT_DATA_SHIFT = 16 ) 


 
(

 input wire signed [ WIDTH_IN_DATA-1 : 0 ] A , B ,
 input wire [3:0] ALU_FUN ,
 input wire CLK , RST ,
 output wire [ WIDTH_OUT_DATA_ARITH-1 : 0 ] Arith_OUT  ,
 output wire [ WIDTH_OUT_DATA_LOGIC-1 : 0 ] Logic_OUT  ,
 output wire [ WIDTH_OUT_DATA_CMP-1 : 0 ] CMP_OUT  ,
 output wire [ WIDTH_OUT_DATA_SHIFT-1 : 0 ] SHIFT_OUT ,
 output wire Arith_Flag , Logic_Flag , CMP_Flag , SHIFT_Flag

) ;

wire Arith_Enable , Logic_Enable , CMP_Enable , Shift_Enable ;

ARITHMETIC_UNIT #(.WIDTH_IN_DATA(WIDTH_IN_DATA) ,
                  .WIDTH_OUT_DATA(WIDTH_OUT_DATA_ARITH)) 
                DUT_0 (.A_arith(A) , 
                       .B_arith(B) , 
                       .CLK_arith(CLK) , 
                       .Arith_Enable(Arith_Enable) , 
                       .Arith_OUT(Arith_OUT) , 
                       .Arith_Flag(Arith_Flag) ,
                       .ALU_FUN_arith(ALU_FUN[1:0]) ,
                       .RST_arith(RST)     ) ;

LOGIC_UNIT     #(.WIDTH_IN_DATA(WIDTH_IN_DATA) ,
                 .WIDTH_OUT_DATA(WIDTH_OUT_DATA_LOGIC)) 
               DUT_1 (.A_logic(A) , 
                      .B_logic(B) ,
                      .CLK_logic(CLK) ,
                      .Logic_Enable(Logic_Enable) ,
                      .Logic_OUT(Logic_OUT) , 
                      .Logic_Flag(Logic_Flag) , 
                      .ALU_FUN_logic(ALU_FUN[1:0]) , 
                      .RST_logic(RST)) ;

CMP_UNIT        #(.WIDTH_IN_DATA(WIDTH_IN_DATA) , .WIDTH_OUT_DATA(WIDTH_OUT_DATA_CMP)) DUT_2 (.A_cmp(A) , 
                                                                                              .B_cmp(B) , 
                                                                                              .CLK_cmp(CLK) , 
                                                                                              .Cmp_Enable(CMP_Enable) , 
                                                                                              .CMP_OUT(CMP_OUT) , 
                                                                                              .CMP_Flag(CMP_Flag) , 
                                                                                              .ALU_FUN_cmp(ALU_FUN[1:0]) , 
                                                                                              .RST_cmp(RST)) ;

SHIFT_UNIT     #(.WIDTH_IN_DATA(WIDTH_IN_DATA) , .WIDTH_OUT_DATA(WIDTH_OUT_DATA_SHIFT)) DUT_3  (.A_shift(A) , 
                                                                                                .B_shift(B) , 
                                                                                                .CLK_shift(CLK) , 
                                                                                                .Shift_Enable(Shift_Enable) , 
                                                                                                .SHIFT_OUT(SHIFT_OUT) , 
                                                                                                .SHIFT_Flag(SHIFT_Flag) , 
                                                                                                .ALU_FUN_shift(ALU_FUN[1:0]) , 
                                                                                                .RST_shift(RST)) ;

Decoder        DUT_4  (.ALU_FUN_decoder(ALU_FUN[3:2]) , 
                       .Enable({Shift_Enable , CMP_Enable , Logic_Enable , Arith_Enable})) ;

endmodule