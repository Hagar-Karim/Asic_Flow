module FSM_moore
(
input Data_Valid ,
input ser_done ,
input PAR_EN ,
input clk ,
input rst ,
output reg ser_en ,
output reg [1:0] mux_sel ,
output reg busy 
) ;

reg [2:0] cs , ns ;

localparam IDLE = 3'b0 ,
           start = 3'b01 ,
           stop  = 3'b10 ,
           ser_data = 3'b11 ,
           par_bit  = 3'b100 ;

//next state logic

always@ (posedge clk or negedge rst)
 begin
  if (!rst)
   begin
    cs <= IDLE ;
   end
  else
    cs <= ns ;
   
 end

//current state logic 

always@ (*)
 begin
  case (cs)
   IDLE : 
    begin
     if (Data_Valid == 1'b1)
      begin
       ns = start ;
      end
     else 
      begin
       ns = IDLE ;
      end
    end
   start :
    begin
     ns = ser_data ;
    end
   ser_data :
    begin
     if (ser_done)
      begin
       if (PAR_EN)
        ns = par_bit ;
       else
        ns = stop ;
      end
     else
      begin
       ns = ser_data ;
      end
    end
   par_bit :
    begin
     ns = stop ;
    end
   stop :
    begin
     ns = IDLE ;
    end
   default : ns = IDLE ;
   endcase
 end

 always@ (*)
  begin
   case (cs) 
    IDLE : 
     begin
      ser_en = 1'b0 ;
      mux_sel = 2'b1 ;
      busy = 1'b0 ;
     end
    start :
     begin
      ser_en = 1'b1 ;
      mux_sel = 2'b00 ;
      busy = 1'b1 ;
     end
    ser_data :
     begin
      ser_en = 1'b0 ;
      mux_sel = 2'b10 ;
      busy = 1'b1 ;
     end
    par_bit :
     begin
      ser_en = 1'b0 ;
      mux_sel = 2'b11 ;
      busy = 1'b1 ;
     end
    stop :
     begin
      ser_en = 1'b0 ;
      mux_sel = 2'b01 ;
      busy = 1'b1 ;
     end
    default :
     begin
      ser_en = 1'b0 ;
      mux_sel = 2'b1 ;
      busy = 1'b0 ;
     end
     endcase
  end

endmodule