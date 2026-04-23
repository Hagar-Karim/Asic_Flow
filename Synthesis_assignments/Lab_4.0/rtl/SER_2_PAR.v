
/////////////////////////////////////////////////////////////
///////////////////// bit synchronizer //////////////////////
/////////////////////////////////////////////////////////////

module SER_2_PAR # (parameter DATA_WIDTH = 8)
(
input    wire                      CLK,
input    wire                      RST,
input    wire                      SER_DATA,
input    wire                      SER_DATA_VLD,
output   reg    [DATA_WIDTH-1:0]   PAR_DATA, 
output   reg                       PAR_DATA_VLD 
);

             
always @ (posedge CLK or negedge RST)
 begin
  if(!RST)
   begin
    PAR_DATA <= 'b0 ;
	PAR_DATA_VLD <= 'b0 ;
   end
  else if(SER_DATA_VLD)
   begin
    PAR_DATA <= {SER_DATA,PAR_DATA[7:1]} ;
	PAR_DATA_VLD <= 'b0 ;	
   end	
  else 
   begin
	PAR_DATA_VLD <= 'b1 ;
   end   
 end

 
endmodule