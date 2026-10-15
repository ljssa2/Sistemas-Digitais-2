`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.10.2026 10:48:37
// Design Name: 
// Module Name: divisor_clock
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


//Divisor de clock (versão melhorada)

`timescale 1ns / 1ps

module Clock_Divider_teste1();

    reg  clk, en, rst;
    wire out;

    // HALFCYCLE pequeno para a simulacao ser rapida
    Clock_Divider #(.HALFCYCLE(4)) UUT (
        .ClkIn(clk),
        .Enable(en),
        .Rst(rst),
        .ClkOut(out)
    );

    // Clock de 100 MHz (periodo 10ns)
    initial clk = 0;
    always #5 clk = ~clk;

    initial begin
        en = 1; rst = 0;     // reset ativo
        #50;
        rst = 1;             // liberta reset: out deve comecar a alternar
        #500;
        en = 0;              // Enable=0: out deve ficar parado
        #200;
        en = 1;              // volta a contar
        #300;
        rst = 0; #20; rst = 1;   // reset a meio: out vai a 0
        #200;
        $finish;
    end

endmodule