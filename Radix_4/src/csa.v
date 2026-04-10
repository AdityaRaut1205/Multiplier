`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.04.2026 22:54:11
// Design Name: 
// Module Name: csa
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


module csa (
    input [15:0] A,
    input [15:0] B,
    input [15:0] C,
    output [15:0] SUM,
    output [15:0] CARRY
);

assign SUM   = A ^ B ^ C;
assign CARRY = (A & B) | (B & C) | (C & A);

endmodule
