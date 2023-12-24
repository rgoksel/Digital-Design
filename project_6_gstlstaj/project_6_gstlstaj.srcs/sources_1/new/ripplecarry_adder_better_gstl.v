`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/25/2023 10:36:21 PM
// Design Name: 
// Module Name: ripplecarry_adder_better_gstl
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

module ripplecarry_adder_better_gstl #(
    parameter N = 8
)(
    input [(N-1):0] A, B,
    input Cin,
    output [(N-1):0] Sum,
    output Cout
);

    wire [N:0] c; // N+1 elemanl� bir dizi

    genvar i;
    generate
        for (i = 0; i < N; i = i + 1) begin : ripplecarry_adder_loop
            full_adder_gstl fa(
                .A(A[i]),
                .B(B[i]),
                .Cin(i == 0 ? Cin : c[i]),
                .Sum(Sum[i]),
                .Cout(c[i+1]) // Ta�ma ��k��� dizinin bir sonraki eleman�na ba�lanacak
            );
        end
    endgenerate

    assign Cout = c[N]; // Ta�ma ��k���, c dizisinin en y�ksek bitinden al�nacak

endmodule

