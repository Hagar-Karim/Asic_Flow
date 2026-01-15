module counter_lab
(
  input [3:0] IN ,
  input latch, dec, clk,
  output reg zero, 
  output reg [3:0] counter
  

);

assign zero = 0 ;

always@ (posedge clk)

 begin
  
  if (latch)
   begin

    counter <= IN ;

   end


  else if (dec & ~zero)
        begin
        
        counter <= counter - 4'b0001 ;
        
        end
   else      
    begin

     counter <= counter ;

    end

 end

 assign zero = (counter == 4'b000) ;
 
endmodule