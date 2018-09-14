`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:        KARF
// Engineer:       Benjamin Koshy
// 
// Create Date:    21:18:48 09/09/2018 
// Design Name: 
// Module Name:    LC3_ZEXT 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description:    Zero Extension (for trap vectors)
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module LC3_ZEXT(
    input [7:0] IN,
    output reg [15:0] OUT
    );
	 always @(*) begin
	     assign OUT = 0 | IN; // 0 | IN = IN
    end
endmodule
