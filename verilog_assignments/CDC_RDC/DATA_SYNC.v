module DATA_SYNC #( parameter NUM_STAGES = 2 , BUS_WIDTH = 8 )
(
 input wire [BUS_WIDTH-1:0] Unsync_bus ,
 input wire bus_enable ,
 input wire CLK ,
 input wire RST ,
 output reg [BUS_WIDTH-1:0] sync_bus ,
 output reg enable_pulse

) ;

reg [NUM_STAGES-1:0] enable ; // for syncronization of enable signal
reg sync_enable ;
reg D0  ;
reg [BUS_WIDTH-1:0] D1 ;

// syncronization 

always@ (posedge CLK or negedge RST)
 begin
   if (!RST) 
    enable <= 'b0 ;
   else
    enable <= {enable [NUM_STAGES-2:0] , bus_enable} ;
 end

// pulse generation 

always@ (posedge CLK or negedge RST)
 begin
   if (!RST)
    sync_enable <= 1'b0 ;
   else
    sync_enable <= enable [NUM_STAGES-1] ;
 end

always@ (*)
 begin
   D0 = (~sync_enable) && (enable[NUM_STAGES-1]) ;
 end

//delayed pulse version

always@ (posedge CLK or negedge RST)
 begin
   if (!RST)
    enable_pulse <= 1'b0 ;
   else
    enable_pulse <= D0 ;
 end

// mux for data gen

always@ (*)
 begin
   if (!D0)
    D1 = sync_bus ;
   else 
    D1 = Unsync_bus ;
 end

always@ (posedge CLK or negedge RST)
 begin
   if (!RST)
    sync_bus <= 'b0 ;
   else 
    sync_bus <= D1 ;
 end

endmodule
