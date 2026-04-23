
module System_Top #(parameter WIDTH = 8) (


input    wire                     CLKA,
input    wire                     CLKB,
input    wire                     RST,
input    wire                     DATA ,         
input    wire                     ACTIVE ,
input    wire                     RdEn,
output   wire   [WIDTH-1:0]       RdData      
);

wire                  RST_A , RST_B ;
wire                  CRC_S_VLD ,  CRC_S_OUT ;
wire                  PAR_DATA_VLD , PAR_VLD_SYNC ;
wire   [WIDTH-1:0]    PAR_DATA , PAR_DATA_SYNC ;

		

//synchronize Global reset (RST) to clock Domain A						 
RST_SYNC  U0_RST_SYNC (	
.RST(RST),
.CLK(CLKA),
.SYNC_RST(RST_A)
);					 

//synchronize Global reset (RST) to clock Domain B						 
RST_SYNC  U1_RST_SYNC (	
.RST(RST),
.CLK(CLKB),
.SYNC_RST(RST_B)
);	

//CRC block
CRC U0_CRC ( 
.CLK(CLKA),          
.RST(RST_A),          
.DATA(DATA),         
.ACTIVE(ACTIVE),       
.CRC(CRC_S_OUT),          
.Valid(CRC_S_VLD)          
);

// serial to parallel block
SER_2_PAR U0_SER_2_PAR (
.CLK(CLKA),
.RST(RST_A),
.SER_DATA(CRC_S_OUT),
.SER_DATA_VLD(CRC_S_VLD),
.PAR_DATA(PAR_DATA), 
.PAR_DATA_VLD(PAR_DATA_VLD) 
);

//synchronizer
DATA_SYNC U0_DATA_SYNC (
.CLK(CLKB),
.RST(RST_B),
.unsync_bus(PAR_DATA),
.bus_enable(PAR_DATA_VLD),
.sync_bus(PAR_DATA_SYNC),
.enable_pulse_d(PAR_VLD_SYNC)
);

//Register File Block
RegFile U0_RegFile (
.CLK(CLKB),
.RST(RST_B),
.WrEn(PAR_VLD_SYNC),
.RdEn(RdEn),
.WrData(PAR_DATA_SYNC),
.RdData(RdData)
);




endmodule
