`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.10.2026 10:30:18
// Design Name: 
// Module Name: register4
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



module register4(

    input  D,       // Dados
    input  C,       // Clock
    input  CE,      // Clock enable
    input  CLR,     // Clear assincrono
    output Q        // Saida
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

   // End of FDCE_inst instantiation
			
endmodule