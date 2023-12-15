`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.12.2023 11:11:13
// Design Name: 
// Module Name: tb
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


module tb();

reg clk, rst_n;
wire [31:0] seq_o;

parameter CLK_PERIOD = 10;
sequence_generator dut(
    clk,
    rst_n,
    seq_o
    );

always #((CLK_PERIOD/2)) clk = ~clk;

initial begin
clk = 0;
rst_n = 0;
repeat(2)
@(posedge clk);
rst_n = 1;
#10000 $stop;

end
  
    
    
    
    
endmodule
