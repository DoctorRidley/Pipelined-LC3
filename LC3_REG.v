`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:        KARF
// Engineer:       Benjamin Koshy
// 
// Create Date:    19:22:49 09/09/2018 
// Design Name: 
// Module Name:    LC3_REG 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description:    Used for PC and IR
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module LC3_REG(
    input [15:0] IN,
    input LD,
    input clk,
    output reg [15:0] OUT
    );

    always @(posedge clk) begin // Occurs only on rising clock edge
        if (LD) // Check for LD signal from FSM, won't check clk b/c of posedge
	    OUT = IN;
    end
endmodule
