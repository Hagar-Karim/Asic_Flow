module DF_SYNC #( parameter ptr_width = 4 , num_stages = 2)
(
 input wire clk , rst ,
 input wire [ptr_width-1:0] unsync_data ,
 output reg [ptr_width-1:0] sync_data

) ;

reg [num_stages-1:0] ptr [ptr_width-1:0] ;
integer i ;
always@ (posedge clk or negedge rst)
 begin
   if (!rst)
    begin
      for ( i = 0 ; i < ptr_width ; i = i + 1 )
       begin
        ptr [i] <= 'b0 ;
       end
     end
    
    else 
     begin
       for ( i = 0 ; i < ptr_width ; i = i + 1)
        begin
          ptr [i] <= {ptr [i][num_stages-2:0] , unsync_data[i]} ;
        end
     end
   
 end

always@ (*)
 begin
   for ( i = 0 ; i < ptr_width ; i = i + 1 )
    sync_data [i] = ptr[i] [num_stages-1] ;
 end

endmodule