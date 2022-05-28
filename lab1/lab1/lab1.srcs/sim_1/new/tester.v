`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/27/2018 06:26:32 PM
// Design Name: 
// Module Name: tester
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


module tester(output reg x, output reg y,output reg z);
    localparam[1:0] a=1, b=1,c=0,d=1;
    localparam[1:0] e=0, f=0,g=1,h=1;
    localparam[1:0] i=1, j=0,k=1,l=1;
    initial begin
        y=0;
        z=0;
        #5 y=1;
        #5 y=0;
        #5 y=1;
        #5 y=0;
        #5 y=1;
        #5 y=0;
        #5 y=1;
        #2.5 z=1;
        #2.5 z=0;
        y=0;
        #5 y=1;
        #5 y=0;
        #5 y=1;
        #5 y=0;
        #5 y=1;
        #5 y=0;
        #5 y=1;
        #2.5 z=1;
        #2.5 z=0;
        y=0;
        #5 y=1;
        #5 y=0;
        #5 y=1;
        #5 y=0;
        #5 y=1;
        #5 y=0;
        #5 y=1;
        #2.5 z=1;
        #2.5 z=0;
        y=0;
    end
        initial begin
            x=a;
        end
        always@(posedge y) begin
            case(x)
                a: begin
                    #2.5 x=b;
                end
                b: begin
                    #2.5 x=c;
                end
                c: begin
                    #2.5 x=d;
                end
            endcase
        end
        initial begin
            x=e;
        end
        always@(posedge y) begin
            case(x)
                e: begin
                    #2.5 x=f;
                end
                f: begin
                    #2.5 x=g;
                end
                g: begin
                    #2.5 x=h;
                end
            endcase
        end
    
        initial begin
            x=i;
        end
        always@(posedge y) begin
            case(x)
                i: begin
                    #2.5 x=j;
                end
                j: begin
                    #2.5 x=k;
                end
                k: begin
                    #2.5 x=l;
                end
            endcase
        end
endmodule
