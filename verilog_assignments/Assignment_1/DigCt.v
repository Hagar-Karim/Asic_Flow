module DigCt 
(IN1,IN2,IN3,IN4,IN5,CLK,OUT1,OUT2,OUT3);
input IN1 ;
input IN2 ;
input IN3 ;
input IN4 ;
input IN5 ;
input CLK ;
output OUT1 ;
output OUT2 ;
output OUT3 ;
reg D1, D2, D3, OUT1, OUT2, OUT3 ;

always @( IN1 or IN2 or IN3)
 
 begin
  
  D1 = ~(IN3&(~(IN1|IN2))) ;

 end

 always @( IN3 or IN2 )
 
 begin
  
  D2 = ~(IN3 & IN2) ;

 end

 always @( IN3 or IN4 or IN5 )
 
 begin
  
  D3 = ((IN3 | (~IN4)) | IN5);

 end

 always @( posedge CLK )
 
 begin
  
  OUT1 <= D1;

 end

 always @( posedge CLK )
 
 begin
  
  OUT2 <= D2;

 end

 always @( posedge CLK )
 
 begin
  
  OUT3 <= D3;

 end
 endmodule