
// combine combinational and sequential logic in one always block

module Up_Dn_Counter ( 
  input   wire  [4:0]     IN,
  input   wire            Load, Up, Down,
  input   wire            clk,
  output  reg   [4:0]     Counter,
  output  wire            High, Low 
  );
  
  
// Counter behaviour function  
  always @ (posedge clk)
    begin
     if (Load)
       begin
         Counter <= IN ;
       end
     else if (Down && !Low)
       begin
         Counter <= Counter - 5'b1;
       end
     else if (Up && !High && !Down)
       begin
         Counter <= Counter + 5'b1;
       end ;    
    end
  
  
// Down flag
  assign Low = (Counter == 5'b0);
  
// Up flag
  assign High = (Counter == 5'b11111);
  
endmodule

  