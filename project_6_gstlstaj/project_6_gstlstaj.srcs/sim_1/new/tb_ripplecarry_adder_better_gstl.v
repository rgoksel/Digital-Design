`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/27/2023 11:25:59 PM
// Design Name: 
// Module Name: tb_ripplecarry_adder_better_gstl
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


module tb_ripplecarry_adder_better_gstl;

    parameter N = 8;

    reg [(N-1):0] A, B;
    reg Cin;
    wire [(N-1):0] Sum;
    wire Cout;

    // ripplecarry_adder_better_gstl mod�l�n�n �a�r�lmas�
    ripplecarry_adder_better_gstl ripplecarry_adder_inst (
        .A(A),
        .B(B),
        .Cin(Cin),
        .Sum(Sum),
        .Cout(Cout)
    );

    // Giri� sinyallerinin de�erlerini belirleme
    initial begin
        // Test de�erleri atama
        A = 8'b10101010; // �rnek olarak A'n�n de�eri
        B = 8'b01100110; // �rnek olarak B'nin de�eri
        Cin = 1'b0; // �rnek olarak ta��ma biti

        // Test sinyal de�erlerini g�zlemleme
        #10; // Baz� zaman birimleri bekleyerek sinyalleri izleme
        $display("A = %b, B = %b, Cin = %b, Sum = %b, Cout = %b", A, B, Cin, Sum, Cout);
        // Bu �rnekte ��k��lar� ekrana bas�yoruz, ger�ek senaryoda belirli bir mant�kla de�erlendirme yapabilirsiniz.
        
        // Sim�lasyonu sonland�rma
        #10;
        $finish;
    end
endmodule
