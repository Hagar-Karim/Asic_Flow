module AGDC_moore (
 input wire UP_Max , Activate , DN_Max ,
 input wire CLK , RST ,
 output reg UP_M , DN_M
) ;

localparam IDLE = 2'b00 , 
           Mv_Dn = 2'b01 , 
           Mv_Up = 2'b10 ;

reg [1:0] cs , ns ;

//current state logic

always@ (posedge CLK or negedge RST)
 begin
  if (!RST)
   begin
    cs <= IDLE ;
   end
  else
   begin
    cs <= ns ;
   end
 end

//next state logic
 always@ (*)
  begin
   case (cs)
    IDLE : 
     begin
      if ((Activate == 1'b1) && (UP_Max == 1'b1) && (DN_Max == 1'b0))

       ns = Mv_Dn ;
    
      else if ((Activate == 1'b1) && (UP_Max == 1'b0) && (DN_Max == 1'b1) )
       
       ns = Mv_Up ;

      else 
       
       ns = IDLE ;
       
     end
    Mv_Up :
     begin
      if (UP_Max == 1'b1)

       ns = IDLE ;

      else 

       ns = Mv_Up ;

     end
    Mv_Dn :
      begin
       if (DN_Max == 1'b1)

       ns = IDLE ;

       else 

       ns = Mv_Dn ;
      end
    default : 

     ns = IDLE ;

   endcase   
  end

//output logic

always@ (*)
 begin
  case (cs)
   IDLE : 
    begin
     UP_M = 1'b0 ;
     DN_M = 1'b0 ;
    end
   Mv_Dn :
    begin
     UP_M = 1'b0 ;
     DN_M = 1'b1 ;
    end
   Mv_Up :
    begin
     UP_M = 1'b1 ;
     DN_M = 1'b0 ;
    end
   default :
    begin
     UP_M = 1'b0 ;
     DN_M = 1'b0 ;
    end
  endcase 
 end

endmodule