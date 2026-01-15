module UART_TX #(parameter WIDTH = 8 ) 
(
    input wire [WIDTH-1:0] P_DATA ,
    input wire PAR_EN ,
    input wire Data_Valid ,
    input wire PAR_TYP ,
    input wire clk ,
    input wire rst ,
    output wire TX_OUT ,
    output wire busy

) ;

wire ser_done ;
wire ser_en ;
wire par_bit ;
wire [1:0] mux_sel ;
wire start_bit ;
wire stop_bit ;
wire ser_data ;

assign start_bit = 1'b0 ;
assign stop_bit  = 1'b1 ;


serializer  #(.WIDTH(WIDTH)) dut0 (.P_DATA_ser(P_DATA) , 
                                   .ser_en(ser_en) , 
                                   .clk_ser(clk) , 
                                   .rst_ser(rst) , 
                                   .ser_done(ser_done) , 
                                   .ser_data(ser_data)) ;

mux  dut1 (.mux_sel(mux_sel) , 
           .start_bit(start_bit) , 
           .stop_bit(stop_bit) , 
           .ser_data(ser_data) , 
           .par_bit(par_bit) , 
           .TX_OUT(TX_OUT)) ;

parity_calc #(.WIDTH(WIDTH)) dut2 (.P_DATA_p(P_DATA) , 
                                   .Data_Valid(Data_Valid) , 
                                   .PAR_TYP(PAR_TYP) , 
                                   .par_bit(par_bit) ,
                                   .PAR_EN(PAR_EN)) ;

FSM_moore  dut3 (.Data_Valid(Data_Valid) , 
                 .ser_done(ser_done) ,
                 .PAR_EN(PAR_EN) , 
                 .clk(clk) , 
                 .rst(rst) , 
                 .ser_en(ser_en) , 
                 .mux_sel(mux_sel) , 
                 .busy(busy)) ;

endmodule 
