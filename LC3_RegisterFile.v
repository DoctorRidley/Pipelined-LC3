`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:        KARF
// Engineer:       Benjamin Koshy
// 
// Create Date:    22:16:15 09/11/2018 
// Design Name: 
// Module Name:    LC3_RegisterFile 
// Project Name:   LC3-Pipelined
// Target Devices: 
// Tool versions: 
// Description:    Holds 8 16-bit registers
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module LC3_RegisterFile(
    input [15:0] data, // Data to write to
    input [2:0] DR, // From DRMUX, destination register
    input LD,
	 input clk, 
    input [2:0] SR2, // IR[2:0], direct wire from IR
    input [2:0] SR1, // From SR1MUX
    output reg [15:0] SR2OUT, // To ALU
    output reg [15:0] SR1OUT // To ALU
    );

    reg R[7:0] [15:0]; // R0 - R7, 16-bits each
    integer i;
	 
    always @(posedge clk) begin
	     if (LD) begin
		      for (i = 0; i < 16; i = i + 1) begin // Need to write to reg first
		          R[DR][i] = data[i]; // R[DR] <--- data
		      end
		  end
	 end
	 
	 always @(*) begin
	     for (i = 0; i < 16; i = i + 1) begin
            SR1OUT[i] = R[SR1][i]; // SR1OUT <--- R[SR1]
		      SR2OUT[i] = R[SR2][i]; // SR2OUT <--- R[SR2]
	     end
	 end
endmodule
