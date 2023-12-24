`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/26/2023 12:01:02 AM
// Design Name: 
// Module Name: twos_complement_subtractor_gstl
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

parameter M = 8;

module twos_complement_subtractor_gstl(
    input [M-1: 0] A, B,
    input K,
    output [M-1: 0] Difference,
    output Barrow
    );
wire [M-1: 0] BxorK;

genvar i;
generate
    for (i = 0; i < M; i = i + 1) begin : xor_loop
        assign BxorK[i] = B[i] ^ K;
    end
endgenerate

ripplecarry_adder_better_gstl uut(
    .A(A),
    .B(BxorK),
    .Cin(K),
    .Sum(Difference),
    .Cout(Barrow)
);

endmodule
