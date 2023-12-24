`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/27/2023 11:14:34 PM
// Design Name: 
// Module Name: tb_counter
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

module testbench;

  reg clk;

  wire [7:0] leds;

  counter_1 dut (
    .clk(clk),
    .leds(leds)
  );

  always #5 clk = ~clk; 

  // Initial block
  initial begin
    clk = 0; // Initialize the clock
    #10;
    $display("Initial State - LED Value: %h", leds);

    repeat (20) begin
      #10;
      $display("LED Value: %h", leds);
    end
    $finish;
  end

endmodule