`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.04.2026 19:32:52
// Design Name: 
// Module Name: partial_product_generator
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


module partial_product_generator (
    input [7:0] A,
    input b,
    input [2:0] shift,
    output [15:0] pp
);

assign pp = b ? (A << shift) : 16'd0;

endmodule
