
module test;
  
  wire clk2;
  reg clk,reset;
  
  do te( .clk(clk), .reset(reset), .clk2(clk2) );
    
    initial
      begin
        $monitor("This is it..",clk,clk2);
        
        clk=0;
        reset=0;
        
        #20 reset =1;
        #20 reset =0;
        
      end
    
    always #10 clk = ~ clk;
    
    endmodule