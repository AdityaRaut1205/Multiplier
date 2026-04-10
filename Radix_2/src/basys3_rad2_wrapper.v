`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.04.2026 22:17:48
// Design Name: 
// Module Name: basys3_rad2_wrapper
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


module basys3_wrapper (
    input clk,
    input [15:0] sw,
    output reg [15:0] led
);

reg [23:0] counter = 0;
reg signed [7:0] A, B;
wire signed [15:0] P;

// Slow clock divider (~1 Hz visible update)
always @(posedge clk)
    counter <= counter + 1;

// Capture inputs
always @(posedge clk) begin
    A <= sw[7:0];
    B <= sw[15:8];
end

// Multiplier
booth_rad2_multiplier uut (
    .A(A),
    .B(B),
    .P(P)
);

// Update LEDs slowly
always @(posedge clk) begin
    if(counter == 0)
        led <= P;
end

endmodule
