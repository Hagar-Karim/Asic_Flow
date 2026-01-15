module mux 
(
 input [1:0] mux_sel ,
 input start_bit ,
 input stop_bit ,
 input ser_data ,
 input par_bit ,
 output reg TX_OUT
) ;

always@ (*)
 begin
  case (mux_sel)
   2'b00 : TX_OUT = start_bit ;
   2'b01 : TX_OUT = stop_bit ;
   2'b10 : TX_OUT = ser_data ;
   2'b11 : TX_OUT = par_bit ;
   default : TX_OUT = 1'b1 ;
  endcase
 end

endmodule