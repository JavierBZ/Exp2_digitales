`timescale 1ns / 1ps

module mux( 
    input [7:0]signal1,
    input [7:0]signal2,
    input [7:0]signal3,
    input [1:0]selector,
    output reg [7:0]out = 8'b00000000
    );

always @(*)
    begin
    case(selector)
        1: out = signal1;
        2: out = signal2;
        3: out = signal3;
        default: out = signal1; 
    endcase
    end

endmodule
