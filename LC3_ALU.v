`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:        KARF
// Engineer:       Benjamin Koshy
// 
// Create Date:    01:25:29 09/06/2018 
// Design Name: 
// Module Name:    LC3_ALU 
// Project Name:   LC3-Pipelined
// Target Devices: 
// Tool versions: 
// Description:    Verilog implementation of LC3's ALU
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module LC3_ALU(
    input [15:0] B,
    input [15:0] A,
    input [1:0] ALUK,
	output reg [15:0] ALU //Not making ALU a reg returns an error
    );
	 
    // from the 30th bit
    always @(*) begin
        case (ALUK)
	    2'd0: ALU = A + B;
	    2'd1: ALU = A & B;
	    2'd2: ALU = ~A; // Invert contents of selected register (wired to A)
	    2'd3: ALU = A | B;
	    default: $display("ERROR: INVALID ALUK SIGNAL"); 
	    // Blocking assignments because the ALU is combinational
	endcase
    end
endmodule
