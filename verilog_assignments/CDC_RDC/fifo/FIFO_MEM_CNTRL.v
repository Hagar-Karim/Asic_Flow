module FIFO_MEM_CNTRL #(parameter DATA_WIDTH = 8 , ADDR_WIDTH = 3 , DATA_DEPTH = 8) //data width
(
 input wire [DATA_WIDTH-1:0] wdata ,
 input wire wclken , wclk , wrst_n ,
 input wire [ADDR_WIDTH-1:0] waddr , raddr ,
 output wire [DATA_WIDTH-1:0] rdata 

) ;

reg [DATA_WIDTH-1:0] data [DATA_DEPTH-1:0] ;
integer i ;
//write operation

always@ (posedge wclk or negedge wrst_n)
 begin
  if (!wrst_n)
   begin
    for ( i = 0 ; i < DATA_DEPTH ; i = i + 1)
     data [i] <= 'b0 ;
   end
   else
   begin
   if (wclken == 1'b1)
    begin
      data [waddr] <= wdata ;
    end
    end
 end

//read operation

assign rdata = data [raddr] ;

endmodule