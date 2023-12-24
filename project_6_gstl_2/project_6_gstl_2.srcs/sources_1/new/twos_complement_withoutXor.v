`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/26/2023 12:48:56 AM
// Design Name: 
// Module Name: twos_complement_withoutXor
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

// bilmiyom doðru mu test etmedim ama bana mantýklý geldi, illa xor'la yapmak zorluyosa 1 eklemek de mantýklý ama yani adderýn içinde de xor var same thing
parameter Z = 4;

module twos_complement_without_xor(
    input [Z-1: 0] A, B,
    input K,
    output [Z-1: 0] Difference,
    output Barrow
    );
wire [Z-1: 0] Bcomplement;

assign Bcomplement = ~B + 1;

ripplecarry_adder_better_gstl uut(
    .A(A),
    .B(Bcomplement),
    .Cin(K),
    .Sum(Difference),
    .Cout(Borrow)
);

endmodule