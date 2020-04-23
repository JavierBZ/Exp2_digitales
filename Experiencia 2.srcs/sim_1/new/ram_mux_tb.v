`timescale 1ns / 1ps

module ram_mux_tb();

reg[0:7] entrada;
wire[0:23] salida;

dist_mem_gen_0 uut2(
    .a(entrada),
    .spo(salida));

wire [0:7]signal1 = salida[0:7];
wire [0:7]signal2 = salida[8:15];
wire [0:7]signal3 = salida[16:23];
reg [1:0]selector;
wire [7:0]out;

mux uut(
    .signal1(signal1),
    .signal2(signal2),
    .signal3(signal3),
    .selector(selector),
    .out(out)
    );

initial
    begin
    entrada = 8'b00000000;
    selector = 2'b00;
    end
 
always
    begin
    #400
    entrada = entrada + 1;
    end

    
endmodule
