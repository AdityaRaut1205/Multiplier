`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.04.2026 22:55:59
// Design Name: 
// Module Name: basys3_rad4_wrapper
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


module basys3_rad4_wrapper (
    input clk,
    input [15:0] sw,
    output reg [15:0] led
);

reg signed [7:0] A, B;
wire signed [15:0] P;

// Register inputs
always @(posedge clk) begin
    A <= sw[7:0];
    B <= sw[15:8];
end

booth_rad4_multiplier uut (
    .A(A),
    .B(B),
    .P(P)
);

// Register output
always @(posedge clk) begin
    led <= P;
end

endmodule
