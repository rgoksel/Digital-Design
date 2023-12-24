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

    // ripplecarry_adder_better_gstl modülünün çaðrýlmasý
    ripplecarry_adder_better_gstl ripplecarry_adder_inst (
        .A(A),
        .B(B),
        .Cin(Cin),
        .Sum(Sum),
        .Cout(Cout)
    );

    // Giriþ sinyallerinin deðerlerini belirleme
    initial begin
        // Test deðerleri atama
        A = 8'b10101010; // Örnek olarak A'nýn deðeri
        B = 8'b01100110; // Örnek olarak B'nin deðeri
        Cin = 1'b0; // Örnek olarak taþýma biti

        // Test sinyal deðerlerini gözlemleme
        #10; // Bazý zaman birimleri bekleyerek sinyalleri izleme
        $display("A = %b, B = %b, Cin = %b, Sum = %b, Cout = %b", A, B, Cin, Sum, Cout);
        // Bu örnekte çýkýþlarý ekrana basýyoruz, gerçek senaryoda belirli bir mantýkla deðerlendirme yapabilirsiniz.
        
        // Simülasyonu sonlandýrma
        #10;
        $finish;
    end
endmodule
