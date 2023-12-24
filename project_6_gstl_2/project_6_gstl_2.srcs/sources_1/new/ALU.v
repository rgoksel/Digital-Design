`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/26/2023 02:18:12 AM
// Design Name: 
// Module Name: ALU
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

module ALU(
    input [31:0] A,
    input [31:0] B,
    input [3:0] CNT,
    output reg [31:0] D
);
    wire out_wire; // aga bu kýsým yanlýþ wire olmaz burda sanki
    wire bos_out;
    twos_complement_subtractor_gstl uut(.A(A), .B(B), .K(CNT[0]), .Difference(out_wire), .Barrow(bos_out));

    always @(*) begin
        case (CNT)
            4'b0000:
                D <= out_wire;
            4'b0001:
                D <= out_wire;
            4'b0010:
                D <= (A >= B) ? 32'hFFFFFFFF : 32'h00000000;
            4'b0011:
                D <= (A < B) ? 32'hFFFFFFFF : 32'h00000000;
            4'b0100:
                D <= (A != B) ? 32'hFFFFFFFF : 32'h00000000;
            4'b0101:
                D <= (A == B) ? 32'hFFFFFFFF : 32'h00000000;
            4'b0110:
                D <= A & B;
            4'b0111:
                D <= A | B;
            4'b1000:
                D <= A ^ B;
            4'b1001:
                D <= (A << B[5:0]) | (A >> (32 - B[5:0]));
            4'b1010:
                D <= (A >> B[5:0]) | (A << (32 - B[5:0]));
            4'b1011:
                D <= A << B[5:0];
            4'b1111:
                D <= A >> B[5:0];
            default:
                D <= 32'h00000000;
        endcase
    end
endmodule