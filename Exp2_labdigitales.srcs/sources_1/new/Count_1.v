`timescale 1ns / 1ps


module Count_1(
    input clk,
    input enable,
    output reg [7:0] count
    );
 
//reg [7:0] count;
 
always @(posedge clk) 
begin
		if (~enable) 
			count = 0;		
		else 
			count = count + 1;
	end
endmodule
