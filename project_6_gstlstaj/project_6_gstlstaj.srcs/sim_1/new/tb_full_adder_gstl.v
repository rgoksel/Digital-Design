`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/25/2023 04:23:54 PM
// Design Name: 
// Module Name: tb_full_adder_gstl
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


module tb_full_adder_gstl(

    );
    reg A_tb, B_tb, Cin_tb;
    wire Sum_tb, Cout_tb;
    
    full_adder_gstl mod1(
    .A(A_tb),    
    .B(B_tb),
    .Cin(Cin_tb),
    .Sum(Sum_tb),
    .Cout(Cout_tb)
    );
    
    initial begin
        A_tb = 0;
        B_tb = 0;
        Cin_tb = 0;
        #10;
        A_tb = 0;
        B_tb = 0;
        Cin_tb = 1;
        #10;
        A_tb = 0;
        B_tb = 1;
        Cin_tb = 0;
        #10;
        A_tb = 0;
        B_tb = 1;
        Cin_tb = 1;
        #10;
        A_tb = 1;
        B_tb = 0;
        Cin_tb = 0;
        #10;
        A_tb = 1;
        B_tb = 0;
        Cin_tb = 1;
        #10;
        A_tb = 1;
        B_tb = 1;
        Cin_tb = 0;
        #10;
        A_tb = 1;
        B_tb = 1;
        Cin_tb = 1;
        #10;
    end
    
endmodule
