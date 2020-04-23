`timescale 1ns / 1ps


module Leds_tb;

reg [7:0] senal;
wire[7:0] leds;

LEDs uut(senal,leds);

initial begin

    senal = 8'b00000000;
    
end

always begin

#10 
senal  = senal +1;
end
endmodule
