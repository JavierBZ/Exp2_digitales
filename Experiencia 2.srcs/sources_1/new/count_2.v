`timescale 1ns / 1ps

module count_2(
    input btn,
    output reg [1:0]count = 2'b00
    );


always @ (posedge btn)
    begin
    if (count == 3) count = 0;
    else count = count + 1;
    end
endmodule
