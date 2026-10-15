`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.10.2026 10:21:35
// Design Name: 
// Module Name: register0
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

		
module register0(

    input  [3:0] Data,   // Dados
    input  C,       // Clock
    input  CE,      // Clock enable
    input  CLR,     // Clear assincrono
    output [3:0] DataOut          // Saida
);

FDCE #(
      .INIT(1'b0) // Initial value of register (1'b0 or 1'b1)
   ) FDCE_inst (
      .Q(Q),      // 1-bit Data output
      .C(C),      // 1-bit Clock input
      .CE(CE),    // 1-bit Clock enable input
      .CLR(CLR),  // 1-bit Asynchronous clear input
      .D(D)       // 1-bit Data input
   );

    register0 b0 (.D(Data[0]), .C(Clk), .CE(CE), .CLR(CLR), .Q(DataOut[0]));
    register0 b1 (.D(Data[1]), .C(Clk), .CE(CE), .CLR(CLR), .Q(DataOut[1]));
    register0 b2 (.D(Data[2]), .C(Clk), .CE(CE), .CLR(CLR), .Q(DataOut[2]));
    register0 b3 (.D(Data[3]), .C(Clk), .CE(CE), .CLR(CLR), .Q(DataOut[3]));
   // End of FDCE_inst instantiation
			
endmodule

