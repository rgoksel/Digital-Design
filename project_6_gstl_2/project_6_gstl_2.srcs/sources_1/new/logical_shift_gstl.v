`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/26/2023 01:09:10 AM
// Design Name: 
// Module Name: logical_shift_gstl
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

//kolayd� shifteleemnin farkl� clocklu versiyonunu 
//forlu yap�s�n� ara�t�rd�m, biraz uzuyo ama okey. 
//sonra onu da tasarlar�m. s�k�nt� �u niye ilk �nce kayd�rma yap�yo
// ki yani okey benim algoritmama g�re �yle ama bence ilk �nce cnt
// se�lip sonra shiftleemk daha mant�kl�, g�� kayb� azalt�l�r.
// d���n�ce �yle yapmak for loop kullan�larak yap�abilir. bu da gate says�s�n� tepeye ��kar�yo, so no

module logical_shift_gstl(
    input [7:0] A,
    input CNT,
    input [2:0] B,
    output reg [7:0] D
    );
    
always @(*) begin //i�indeki herhangi bir input de�i�ince yeniden �al��mas�n� sa�l�yormu�
    if (CNT == 1'b0) begin 
        D = A << B;
    end else begin
        D = A >> B;
    end
end
endmodule
