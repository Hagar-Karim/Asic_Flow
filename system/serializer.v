module serializer #(parameter WIDTH = 8)
(
 input wire [WIDTH-1:0] P_DATA_ser ,
 input wire ser_en , clk_ser , rst_ser ,
 output reg ser_done , ser_data

) ;

reg [3:0] counter ;
reg [WIDTH-1:0] shift_reg ;
always@ (posedge clk_ser or negedge rst_ser)
 begin
  ser_done <= 1'b0 ;
  if (!rst_ser)
   begin
   ser_done <= 1'b0 ;
   ser_data <= 1'b1 ;
   end
  else if (ser_en == 1'b1)
   begin
    shift_reg <= P_DATA_ser  ;
    counter <= 4'b1 ;
    ser_data <=  P_DATA_ser [0] ;
   end
  else if (counter != WIDTH)
   begin
    ser_data <= shift_reg [counter] ;
    //shift_reg <= (shift_reg >> 1) ;
    counter <= counter + 1 ;
    if (counter == WIDTH - 1)
    ser_done <= 1'b1 ;
   end
   
 end
 endmodule

