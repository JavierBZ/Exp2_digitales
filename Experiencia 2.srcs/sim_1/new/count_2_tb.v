`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.04.2020 14:06:36
// Design Name: 
// Module Name: count_2_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module count_2_tb();

reg btn;
wire [1:0] count;

count_2 uut(
    .btn(btn),
    .count(count)
    );

initial btn = 0;

always
    begin
    #500
    btn = 1;
    #67
    btn = 0;
    end
    
endmodule
