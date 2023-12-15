`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:ABHISHEK KUMAR KUSHWAHA 
// 
// Create Date: 15.12.2023 11:10:59
// Design Name: 
// Module Name: sequence_generator
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


module sequence_generator(
    input clk,
    input rst_n,
    output reg [31:0] seq_o
    );
    
  reg [31:0] seq_t1;   
  reg [31:0] seq_t2;   
  reg [31:0] seq_t3;  
  
  wire [31:0] seq_nxt;
  
  
  always@(posedge clk or negedge rst_n) begin
  
    if (!rst_n) begin
      seq_t1 <= 32'h0001;
      seq_t2 <= 32'h0001;
      seq_t3 <= 32'h0000;
      seq_o  <= 32'h0000;
    end
    
    else begin
      seq_t1 <= seq_nxt;
      seq_t2 <= seq_t1;
      seq_t3 <= seq_t2;
      seq_o <= seq_t3;
    end
  end
  
   assign seq_nxt = seq_t3 + seq_t2;

endmodule
