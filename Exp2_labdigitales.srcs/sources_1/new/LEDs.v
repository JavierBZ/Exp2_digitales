`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/23/2020 04:36:21 PM
// Design Name: 
// Module Name: LEDs
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


module LEDs(
    input [7:0] senal,
    output [7:0] Leds
    );
    

assign Leds[0] = 1;
assign Leds[1] = senal[5]|senal[6]|senal[7];
assign Leds[2] = senal[6]|senal[7];
assign Leds[3] = (senal[5]&senal[6])|senal[7];
assign Leds[4] = senal[7];
assign Leds[5] = senal[7]&(senal[6]|senal[5]);
assign Leds[6] = senal[7]&senal[6];
assign Leds[7] = senal[7]&senal[6]&senal[5];



endmodule
