`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.04.2026 22:15:21
// Design Name: 
// Module Name: booth_encoder_rad2
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


module booth_encoder_rad2 (
    input [1:0] code,
    input signed [7:0] A,
    output reg signed [15:0] pp
);

always @(*) begin
    case (code)
        2'b00: pp = 0;
        2'b01: pp = A;
        2'b10: pp = -A;
        2'b11: pp = 0;
    endcase
end

endmodule