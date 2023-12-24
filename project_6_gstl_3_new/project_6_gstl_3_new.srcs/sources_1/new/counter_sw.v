`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/28/2023 10:04:41 PM
// Design Name: 
// Module Name: counter_sw
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


module counter_sw(clk, sw, leds);
    input clk;
    input sw;
    output reg [7:0] leds = 8'b00000000;

    wire carry_1;
    wire barrow_1;
    wire [7:0] sum_1;
    wire [7:0] sum_2;

    twos_complement_subtractor_gstl subtractor(.A(leds), .B(8'b00000001), .K(sw), .Difference(sum_2), .Barrow(borrow_1));

    always @(posedge clk) begin
        if (sw) begin
            if (borrow_1) begin
                leds <= 8'b00000000;
            end else begin
                leds <= sum_2;
            end
        end
        else begin
            if (sum_2 == 8'b00000000) begin
                leds <= 8'b11111111;
            end else begin
                leds <= sum_2;
            end
        end
    end 
endmodule


