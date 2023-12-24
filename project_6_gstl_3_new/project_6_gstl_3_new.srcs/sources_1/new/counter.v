`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/27/2023 11:07:27 PM
// Design Name: 
// Module Name: counter
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


module counter_1(clk, leds);
    input clk;
    output reg [7:0] leds = 8'b00000000;

wire carry_1;
wire [7:0] sum_1;

    ripplecarry_adder_better_gstl adder(.A(leds), .B(8'b00000001), .Cin(1'b0), .Sum(sum_1), .Cout(carry_1));

    always @(posedge clk) begin
        if (carry_1) begin
            leds <= 8'b00000000;
        end else begin
            leds <= sum_1;
        end
    end
endmodule
