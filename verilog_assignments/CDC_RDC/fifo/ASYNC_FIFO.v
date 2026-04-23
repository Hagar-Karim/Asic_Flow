module ASYNC_FIFO # (parameter ADDR_WIDTH = 3 , ptr_width = 4 , DATA_WIDTH = 8 , DATA_DEPTH = 8 , num_stages = 2)
(
 input wire W_CLK , W_RST , W_INC ,
 input wire R_CLK , R_RST , R_INC ,
 input wire [DATA_WIDTH-1:0] WR_DATA ,
 output wire FULL , EMPTY ,
 output wire [DATA_WIDTH-1:0] RD_DATA

) ;

wire [ADDR_WIDTH-1:0] waddr , raddr ;
wire [ptr_width-1:0] wq2_rptr , wptr ,  rq2_wptr , rptr ;

FIFO_MEM_CNTRL  #(.DATA_WIDTH(DATA_WIDTH) , 
                  .ADDR_WIDTH(ADDR_WIDTH) , 
                  .DATA_DEPTH(DATA_DEPTH))

mem_ctrl         (.wdata(WR_DATA) , 
                  .wclk(W_CLK) , 
                  .wrst_n(W_RST) , 
                  .waddr(waddr) , 
                  .raddr(raddr) , 
                  .rdata(RD_DATA) , 
                  .wclken((~FULL) && W_INC)) ;

FIFO_WR        #(.ADDR_WIDTH(ADDR_WIDTH) , 
                 .ptr_width(ptr_width))

fifo_wr         (.wclk(W_CLK) , 
                 .wrst_n(W_RST) , 
                 .winc(W_INC) , 
                 .wq2_rptr(wq2_rptr) , 
                 .wfull(FULL) , 
                 .waddr(waddr) , 
                 .wptr(wptr)) ;

FIFO_RD        #(.ADDR_WIDTH(ADDR_WIDTH) , 
                 .ptr_width(ptr_width))

fifo_rd         (.rclk(R_CLK) , 
                 .rrst_n(R_RST) , 
                 .rq2_wptr(rq2_wptr) , 
                 .rptr(rptr) , 
                 .raddr(raddr) , 
                 .rempty(EMPTY) ,
                 .rinc(R_INC)) ;

//input to write block

DF_SYNC        #(.ptr_width(ptr_width) , 
                 .num_stages(num_stages))

df_sync_w         (.clk(W_CLK) , 
                 .rst(W_RST) , 
                 .unsync_data(rptr) , 
                 .sync_data(wq2_rptr)) ;

//input to read block 

DF_SYNC       #(.ptr_width(ptr_width) , 
                .num_stages(num_stages))

df_sync_r        (.clk(R_CLK) , 
                .rst(R_RST) , 
                .unsync_data(wptr) , 
                .sync_data(rq2_wptr)) ;

endmodule



                