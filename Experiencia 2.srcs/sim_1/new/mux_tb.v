`timescale 1ns / 1ps

module mux_tb();

reg [7:0]signal1;
reg [7:0]signal2;
reg [7:0]signal3;
reg [1:0]selector;
wire [7:0]out;

mux uut(
    .signal1(signal1),
    .signal2(signal2),
    .signal3(signal3),
    .selector(selector),
    .out(out)
    );

reg[0:7] entrada;
wire[0:23] salida;

dist_mem_gen_0 uut(
    .a(entrada),
    .spo(salida));

wire [0:7]signal1 = salida[0:7];
wire [8:7]signal1 = salida[0:7];
wire [0:7]signal1 = salida[0:7];



initial
    begin
    signal1 = 8'b00100100;
    signal2 = 8'b10010100;
    signal3 = 8'b01001111;
    selector = 0;
    end
 
always
    begin
    #1000
    selector = 1;
    #1500
    selector = 3;
    #800
    selector = 2;
    #300
    selector = 4;;
    #1000
    selector = 3;
    end

endmodule

