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

//kolaydý shifteleemnin farklý clocklu versiyonunu 
//forlu yapýsýný araþtýrdým, biraz uzuyo ama okey. 
//sonra onu da tasarlarým. sýkýntý þu niye ilk önce kaydýrma yapýyo
// ki yani okey benim algoritmama göre öyle ama bence ilk önce cnt
// seçlip sonra shiftleemk daha mantýklý, güç kaybý azaltýlýr.
// düþünüce öyle yapmak for loop kullanýlarak yapýabilir. bu da gate saysýsýný tepeye çýkarýyo, so no

module logical_shift_gstl(
    input [7:0] A,
    input CNT,
    input [2:0] B,
    output reg [7:0] D
    );
    
always @(*) begin //içindeki herhangi bir input deðiþince yeniden çalýþmasýný saðlýyormuþ
    if (CNT == 1'b0) begin 
        D = A << B;
    end else begin
        D = A >> B;
    end
end
endmodule
