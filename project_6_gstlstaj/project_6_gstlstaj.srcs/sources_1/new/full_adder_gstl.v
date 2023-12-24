`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/25/2023 04:15:46 PM
// Design Name: 
// Module Name: full_adder_gstl
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


module full_adder_gstl(
    input A, B, Cin,
    output Sum, Cout
    );

assign Sum = A ^ B ^ Cin;
assign Cout = ((A ^ B) & Cin) | (A & B);   
    
endmodule
