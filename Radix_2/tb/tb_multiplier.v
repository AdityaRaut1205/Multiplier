`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.04.2026 22:47:13
// Design Name: 
// Module Name: tb_multiplier
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


`timescale 1ns/1ps

module tb_multiplier;

reg signed [7:0] A, B;
wire signed [15:0] P;

// Change module name here for testing
booth_rad2_multiplier uut (
    .A(A),
    .B(B),
    .P(P)
);


initial begin

    A = 10;   B = 5;    #10;
    A = -10;  B = 5;    #10;
    A = 10;   B = -5;   #10;
    A = -10;  B = -5;   #10;
    A = 127;  B = -1;   #10;
    A = -128; B = 1;    #10;

    #50 $finish;
end

endmodule

