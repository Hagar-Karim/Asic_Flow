
// This is a Verilog description for 8 X 8 register file
// This register file has the following specifications:-
//   -Two seperate data buses, one for read and other for write
//   -One Addess Bus
//   -Read operation enable signal
//   -Write operation enable signal

module regfile #(

  parameter DATA_WIDTH = 8 ,
  parameter ADDR_WIDTH = 8 

)
 (
  input                           i_scan_mode, 
  input                           i_scan_clk,
  input                           i_scan_rst,
  input                           i_phy_rate_en,      
  input                           i_rf_clk,           
  input                           i_rf_rst,            
  input                           i_wrEn,             
  input                           i_rdEn,             
  input      [ADDR_WIDTH-1 : 0]   i_address,          
  input      [DATA_WIDTH-1 : 0]   i_wrData,           
  output reg [DATA_WIDTH-1 : 0]   o_rdData,           
  output     [DATA_WIDTH-1 : 0]   o_reg0,             
  output     [DATA_WIDTH-1 : 0]   o_reg1,            
  output     [DATA_WIDTH-1 : 0]   o_reg2,             
  output     [DATA_WIDTH-1 : 0]   o_reg3,             
  output     [DATA_WIDTH-1 : 0]   o_reg4,             
  output     [DATA_WIDTH-1 : 0]   o_reg5,             
  output reg                      o_tx_mode          

);

//Register declaration *********************************************************
reg [DATA_WIDTH-1 : 0] reg0;
reg [DATA_WIDTH-1 : 0] reg1;
reg [DATA_WIDTH-1 : 0] reg2;
reg [DATA_WIDTH-1 : 0] reg3;
reg [DATA_WIDTH-1 : 0] reg4;
reg [DATA_WIDTH-1 : 0] reg5;

//Register Addresses ***********************************************************
localparam r0_addr = 8'h0;
localparam r1_addr = 8'h1;
localparam r2_addr = 8'h2;
localparam r3_addr = 8'h3;
localparam r4_addr = 8'h4;
localparam r5_addr = 8'h5;

//Register reset values ********************************************************
localparam PRMBL     = 8'b0101_0101;  //preamble
localparam ACS_WRD   = 8'b0111_1010;  //access word


// scan mux

wire                    scan_ref_clk;
wire                    scan_ref_rst; 

assign scan_ref_clk = i_scan_mode ? i_scan_clk : i_rf_clk ;      // mux scan clock and reference clock
assign scan_ref_rst = i_scan_mode ? i_scan_rst : i_rf_rst ;      // mux scan reset and reference reset

always @(posedge scan_ref_clk or negedge scan_ref_rst)
  begin
    if(!scan_ref_rst)
     begin
      o_rdData <= {DATA_WIDTH{1'b0}} ;
      reg0 <= 8'b0000_0000 ;
      reg1 <= 8'b0000_0000 ;
      reg2 <= 8'b0000_0000 ;
      reg3 <= 8'b0000_0000 ;
     end
    else 
      begin
        if(i_wrEn)  //Write Operation
         begin
           case(i_address)
           //----Read-Write-Register----
           r0_addr : begin 
                      reg0 <= i_wrData ;
                     end
           //----Read-Write-Register----
           r1_addr : begin 
                      reg1 <= i_wrData ;
                     end
           //----Read-Write-Register----
           r2_addr : begin 
                      reg2 <= i_wrData ;
                     end
           //----Read-Write-Register----
           r3_addr : begin 
                      reg3 <= i_wrData ;
                     end
           //-----RESERVED REGISTER------
           r4_addr : begin 
                     end
           //-----RESERVED REGISTER------
           r5_addr : begin 
                     end
    endcase
         end
            else                 
               begin 
                  if(i_rdEn)  //Read Operation
                   begin
                     case(i_address) 
                     //----Read-Write-Register----
                     r0_addr : begin 
                                o_rdData <= reg0; 
                               end
                     //----Read-Write-Register----
                     r1_addr : begin 
                                o_rdData <= reg1; 
                               end
                     //----Read-Write-Register----
                     r2_addr : begin 
                                o_rdData <= reg2; 
                               end
                     //----Read-Write-Register----
                     r3_addr : begin 
                                o_rdData <= reg3; 
                               end
                     endcase
                   end
              end
       end
  end

always @(posedge scan_ref_clk or negedge scan_ref_rst)
  begin
    if(!scan_ref_rst)
     begin
      reg4 <= 8'b0000_0000 ;        
      reg5 <= 8'b0000_0000 ;
      o_tx_mode <= 1'b0;       
     end
    else 
      begin
      reg4 <= PRMBL ;               // preamble register
      reg5 <= ACS_WRD ;             // AccessWord register
      o_tx_mode <= i_phy_rate_en ;    // phy data rate enable
      end
  end

//************************************************************

assign o_reg0 = reg0;
assign o_reg1 = reg1;
assign o_reg2 = reg2;
assign o_reg3 = reg3;
assign o_reg4 = reg4;
assign o_reg5 = reg5;

endmodule