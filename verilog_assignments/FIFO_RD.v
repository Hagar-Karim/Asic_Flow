module FIFO_RD #(parameter ADDR_WIDTH = 3 , ptr_width = 4)
(
  input wire rclk , rrst_n ,
  input wire rinc ,
  input wire [ptr_width-1:0]  rq2_wptr ,
  output wire [ADDR_WIDTH-1:0] raddr ,
  output wire rempty ,
  output reg [ptr_width-1:0] rptr 

) ;

reg [ptr_width-1:0] rptr_b ;

always@ (posedge rclk or negedge rrst_n)
 begin
   if (!rrst_n)
    begin
      rptr_b <= 'b0 ;
    end
   else if ((rinc) && (!rempty))
    begin
      rptr_b <= rptr_b + 1 ;
      
    end
 end
 
 assign  rempty = (rq2_wptr == rptr) ;
 assign  raddr  = rptr_b [ptr_width-2:0] ;

 always@ (*)
  begin
    case (rptr_b)
    4'b0000  :  rptr = 4'b0000 ;
    4'b0001  :  rptr = 4'b0001 ;
    4'b0010  :  rptr = 4'b0011 ;
    4'b0011  :  rptr = 4'b0010 ;
    4'b0100  :  rptr = 4'b0110 ;
    4'b0101  :  rptr = 4'b0111 ;
    4'b0110  :  rptr = 4'b0101 ;
    4'b0111  :  rptr = 4'b0100 ;
    4'b1000  :  rptr = 4'b1100 ;
    4'b1001  :  rptr = 4'b1101 ;
    4'b1010  :  rptr = 4'b1111 ;
    4'b1011  :  rptr = 4'b1110 ;
    4'b1100  :  rptr = 4'b1010 ;
    4'b1101  :  rptr = 4'b1011 ;
    4'b1110  :  rptr = 4'b1001 ;
    4'b1111  :  rptr = 4'b1000 ;
    endcase
  end

 endmodule