module FIFO_WR #( parameter ADDR_WIDTH = 3 , ptr_width = 4 )
(
 input wire wclk , wrst_n ,
 input wire winc , 
 input wire [ptr_width-1:0] wq2_rptr ,
 output reg wfull ,
 output reg [ADDR_WIDTH-1:0] waddr ,
 output reg [ptr_width-1:0]  wptr

) ;

reg [ptr_width-1:0] wptr_b ;

always@ (posedge wclk or negedge wrst_n)
 begin
   if (!wrst_n)
    begin
     wptr_b <= 'b0 ;
    end
   else if ((winc == 1'b1) && (wfull == 1'b0))
    begin
      wptr_b <= wptr_b + 1 ;
    end
   
 end



// gray encoding
always@ (*)
 begin
   case (wptr_b)
    4'b0000  :  wptr = 4'b0000 ;
    4'b0001  :  wptr = 4'b0001 ;
    4'b0010  :  wptr = 4'b0011 ;
    4'b0011  :  wptr = 4'b0010 ;
    4'b0100  :  wptr = 4'b0110 ;
    4'b0101  :  wptr = 4'b0111 ;
    4'b0110  :  wptr = 4'b0101 ;
    4'b0111  :  wptr = 4'b0100 ;
    4'b1000  :  wptr = 4'b1100 ;
    4'b1001  :  wptr = 4'b1101 ;
    4'b1010  :  wptr = 4'b1111 ;
    4'b1011  :  wptr = 4'b1110 ;
    4'b1100  :  wptr = 4'b1010 ;
    4'b1101  :  wptr = 4'b1011 ;
    4'b1110  :  wptr = 4'b1001 ;
    4'b1111  :  wptr = 4'b1000 ;
    endcase
   waddr = wptr_b [ptr_width-2:0] ;
   wfull = (wptr[ptr_width-3:0] == wq2_rptr [ptr_width-3:0]) && (wptr[ptr_width-1:ptr_width-2] != wq2_rptr[ptr_width-1:ptr_width-2]) ;
 end

endmodule