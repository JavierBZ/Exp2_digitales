`timescale 1ns / 1ps
///////////////////////////////////////////////////////////////////


module count1_tb;

reg enable;
reg clk;

wire [7:0] count;

Count_1 uut(clk,enable,count);


initial begin

enable = 0;
clk = 0;

#1000
enable = 1; 
#1000
enable = 0;
#1000
enable = 1;


end

always begin

#10 clk = ~clk;

end
endmodule
