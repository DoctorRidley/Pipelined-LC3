`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:        KARF
// Engineer:       Benjamin Koshy
// 
// Create Date:    00:30:08 09/07/2018 
// Design Name: 
// Module Name:    LC3_M2 
// Project Name:   LC3-Pipelined
// Target Devices: 
// Tool versions: 
// Description:    Mux that selects from 2 16-bit inputs
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module LC3_M2(
    input [15:0] B,
    input [15:0] A,
    input S,
    output reg [15:0] O
    );

    always @(*) begin
        case (S)
            1'd0: O = A;
	    1'd1: O = B;
	    default: $display("ERROR: INVALID MUX SIGNAL"); // Non-blocking assignments because the mux is combinational
	endcase
    end
endmodule
