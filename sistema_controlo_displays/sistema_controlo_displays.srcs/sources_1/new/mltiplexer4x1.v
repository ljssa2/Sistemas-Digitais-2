`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.10.2026 10:41:17
// Design Name: 
// Module Name: mltiplexer4x1
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


module mltiplexer4x1 (
  input DataIn3,
  input Sel1,
  input Sel0,
  input DataIn0,
  input DataIn2,
  input DataIn1,
  output DataOut
);
  assign DataOut = ((~ Sel1 & ~ Sel0 & DataIn0) | (~ Sel1 & Sel0 & DataIn1) | (Sel1 & ~ Sel0 & DataIn2) | (Sel1 & Sel0 & DataIn3));
endmodule
