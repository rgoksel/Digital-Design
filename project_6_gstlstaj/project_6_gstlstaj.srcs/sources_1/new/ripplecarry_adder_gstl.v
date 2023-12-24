`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/25/2023 04:38:07 PM
// Design Name: 
// Module Name: ripplecarry_adder_gstl
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


module ripplecarry_adder_gstl(
    input [3:0] A, B,
    input Cin,
    output [3:0] Sum,
    output Cout
    );
    wire [3:0] c;
    
full_adder_gstl fa0(
    .A(A[0]),
    .B(B[0]),
    .Cin(Cin),
    .Sum(Sum[0]),
    .Cout(c[0])
);
full_adder_gstl fa1(
    .A(A[1]),
    .B(B[1]),
    .Cin(c[0]),
    .Sum(Sum[1]),
    .Cout(c[1])
);
full_adder_gstl fa2(
    .A(A[2]),
    .B(B[2]),
    .Cin(c[1]),
    .Sum(Sum[2]),
    .Cout(c[2])
);

full_adder_gstl fa3(
    .A(A[3]),
    .B(B[3]),
    .Cin(c[2]),
    .Sum(Sum[3]),
    .Cout(Cout)
);

endmodule
