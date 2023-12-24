`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/25/2023 05:14:06 PM
// Design Name: 
// Module Name: tb_ripplecarry_adder_gstl
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


module tb_ripplecarry_adder_gstl(
    );
    reg [3:0] A, B;
    reg Cin;
    
    wire [3:0] Sum;
    wire Cout;
    
    ripplecarry_adder_gstl uut(
    .A(A),
    .B(B),
    .Cin(Cin),
    .Sum(Sum),
    .Cout(Cout)
    );
    integer i, j, k;

     initial begin
        //$dumpfile("waveform.vcd");
        //$dumpvars(0, tb_ripplecarry_adder_gstl);
        
        for (i = 0; i < 16; i = i + 1) begin
            for (j = 0; j < 16; j = j + 1) begin
                for (k = 0; k < 2; k = k + 1) begin
                    A = i;
                    B = j;
                    Cin = k;
                    #10;
                    
                    $display("A=%b, B=%b, Cin=%b, Sum=%b, Cout=%b", A, B, Cin, Sum, Cout);
                end
            end
        end
        $finish;
    end
endmodule
