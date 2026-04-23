
module RegFile #(parameter WIDTH = 8, DEPTH = 16, ADDR = 4 )

(
input    wire                CLK,
input    wire                RST,
input    wire                WrEn,
input    wire                RdEn,
input    wire   [WIDTH-1:0]  WrData,
output   reg    [WIDTH-1:0]  RdData
);

integer I ;

reg    [ADDR-1:0]   RD_ADDR, WR_ADDR ;
 
  
// register file of 8 registers each of 16 bits width
reg [WIDTH-1:0] regArr [DEPTH-1:0] ;    

always @(posedge CLK or negedge RST)
 begin
   if(!RST)  // Asynchronous active low reset 
    begin
       RD_ADDR <= 'b0 ;
       WR_ADDR <= 'b0 ;		  
       for (I=0 ; I < DEPTH ; I = I +1)
        begin
          regArr[I] <= 'b0 ;		 
        end	
     end
   else if (WrEn && !RdEn) // Register Write Operation
     begin
      regArr[WR_ADDR] <= WrData ;
      WR_ADDR <= WR_ADDR + 'b1 ;
     end
   else if (RdEn && !WrEn) // Register Read Operation
     begin    
       RdData <= regArr[RD_ADDR] ;
       RD_ADDR <= RD_ADDR + 'b1 ;	   
     end        
  end


endmodule
