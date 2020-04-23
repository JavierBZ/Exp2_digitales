`timescale 1ns / 1ps

module rom_tb();

reg[0:7] entrada;
wire[0:23] salida;

dist_mem_gen_0 uut(
    .a(entrada),
    .spo(salida));
    
initial begin


    
   
   entrada = 0;
    forever begin
        entrada  = entrada + 1;
        #1;
    end
end

endmodule