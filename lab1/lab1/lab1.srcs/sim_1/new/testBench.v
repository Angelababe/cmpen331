`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/27/2018 05:55:25 PM
// Design Name: 
// Module Name: testBench
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


module tester( );
    reg x;
    reg y;
    wire S,V;
    lab_1 lab1(y,x,S,V);
    initial begin
        x=0;
        y=0;
        #5 y=1;
        #2.5 x=1;
        #2.5 y=0;
        #5 y=1;
        #2.5 x=0;
        #2.5 y=0;
        #5 y=1;
        #2.5 x=1;
        #2.5 y=0;
        #5 y=1;
        #2.5x=1;
        #2.5 y=0;
        #5 y=1;
        #2.5 x=0;
        #2.5 y=0;
        #5 y=1;
        #2.5 x=0;
        #2.5 y=0;
        #5 y=1;
        #2.5 x=1;
        #2.5 y=0;
        #5 y=1;
        #2.5 x=1;
        #2.5 y=0;
        #5 y=1;
        #2.5 x=1;
        #2.5 y=0;
        #5 y=1;
        #2.5 x=1;
        #2.5 y=0;
        #5 y=1;
        #2.5 x=0;
        #2.5 y=0;
        #5 y=1;
        #2.5 x=1;
        #2.5 y=0;
        $finish;
    end
endmodule
