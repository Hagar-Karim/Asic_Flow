module locker_mealy
(
  input rst , clk , key ,
  output reg out 

) ;

reg [2:0] ns , cs ;
parameter  ideal_case = 3'b0 , 
           S1 = 3'b1 , 
           S11 = 3'b10 , 
           S011 = 3'b11 , 
           S1011 = 3'b100 ;          

always@ (posedge clk or negedge rst)
 begin
  if (!rst)
   begin
     cs <= 3'b0 ;
   end
  else
   begin
     cs <= ns ;
   end
 end

always@ (*)
 begin
   case (cs)
   ideal_case :
    begin
      if (key == 1'b1)
       ns = S1 ;
      else 
       ns = ideal_case ;
    end
    S1 :
     begin
      if (key == 1'b1)
       ns = S11 ;
      else if (key == 1'b0)
       ns = ideal_case ;
      else 
       ns = S1 ;
    end
    S11 :
     begin
      if (key == 1'b1)
       ns = ideal_case ;
      else if (key == 1'b0)
       ns = S011 ;
      else 
       ns = S11 ;
     end
    S011 :
     begin
      if (key == 1'b1)
       ns = S1011 ;
      else if (key == 1'b0)
       ns = ideal_case ;
      else 
       ns = S011 ;
     end
     S1011 :
     begin
      if ((key == 1'b1) | (key == 1'b0))
       ns = ideal_case ;
      else 
       ns = S1011 ;
     end
     default : 
      ns = ideal_case ;
    endcase
 end

 always@ (*)
  begin
   case (cs)
   ideal_case : out = 1'b0 ;
   S1         : out = 1'b0 ;
   S11        : out = 1'b0 ;
   S011       : out = 1'b0 ;
   S1011      : 
   begin
    if (key == 1'b0) 
     out = 1'b1 ;
    else if (key == 1'b1)
     out = 1'b0 ;
     else 
     out = 1'b0 ;
   end
   default : out = 1'b0 ;
   endcase
  end
  endmodule