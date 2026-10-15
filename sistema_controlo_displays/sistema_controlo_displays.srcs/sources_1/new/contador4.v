`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.10.2026 11:21:39
// Design Name: 
// Module Name: contador4
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


module contador(clk, Q);
    input clk;
    output [1:0]Q;
    reg [1:0]Q;
    reg [1:0]contNumb=2'b00;

    always @(posedge clk)
    begin
        contNumb=contNumb+1;  // incrementa contador mod 4
    end

    always @ (contNumb)
    begin
        Q <= contNumb;
    end
    
endmodule
   

