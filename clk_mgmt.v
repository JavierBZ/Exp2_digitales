`timescale 1ns / 1ps

module clk_mgmt(
    input clk,
    input [1:0]s,
    output reg mclk = 0
    );
    
 parameter c1 = 2;
 parameter c2 = 4;
 parameter c3 = 8;
 parameter c4 = 10;
 
 reg [31:0] cuenta = 0;
 
 wire [7:0] frec = s[1] ? (s[0] ? c4 : c3) : (s[0] ? c2 : c1);
 
 always @ (posedge clk)
    begin
    if (cuenta == frec - 1) 
        begin 
        cuenta <= 0; 
        mclk <= ~mclk;
        end
    else 
        begin 
        cuenta <= cuenta + 1; 
        end
    end
    
endmodule
