`timescale 1ns / 1ps

module clk_mgmt_tb();

reg clk;
reg [1:0]s;
wire mclk;

clk_mgmt uut(
    .clk(clk),
    .s(s),
    .mclk(mclk)
    );

initial
    begin
    clk = 0;
    s = 2'b00;   
    end
 
always
    begin
    #10
    clk = ~clk;
    end

endmodule
