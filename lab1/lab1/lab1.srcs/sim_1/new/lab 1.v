`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/27/2018 12:23:57 AM
// Design Name: 
// Module Name: lab 1
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


module lab_1(clk, X,S,V);
    input clk;
    input X;
    output reg S,V;
    localparam s0=3'b000,s1=3'b010,s2=3'b001,s3=3'b101,s4=3'b011,s5=3'b100,s6=3'b111;
    reg[2:0] state;
    initial begin 
    S =0;
    V =0;
    end
    always@(negedge clk) begin
            case(state)
                default: begin
                    state=s0;
                end
                s0: begin
                    if(X==0) begin
                        state=s1;
                        S=1;
                        V=0;
                    end
                    else begin
                        state=s2;
                        S=0;
                        V=0;
                    end
                end
                s1: begin
                    if (X==0) begin
                        state=s3;
                        S=1;
                        V=0;
                    end
                    else begin
                        state=s4;
                        S=0;
                        V=0;
                    end
                end
                s2: begin
                    if(X==0) begin
                        state=s4;
                        S=0;
                        V=0;
                    end
                    else begin
                        state=s4;
                        S=1;
                        V=0;
                    end
                end
                s3: begin
                    if(X==0) begin
                        state=s5;
                        S=0;
                        V=0;
                    end
                    else begin
                        state=s5;
                        S=1;
                        V=0;
                    end
                end
                s4: begin
                    if(X==0) begin
                        state=s5;
                        S=1;
                        V=0;
                    end
                    else begin
                        state=s6;
                        S=0;
                        V=0;
                    end
                end
                s5: begin
                    if(X==0)begin
                        state=s0;
                        S=0;
                        V=0;
                    end
                    else begin
                        state=s0;
                        S=1;
                        V=0;
                    end
                end
                s6: begin
                    if(X==0) begin
                        state=s0;
                        S=1;
                        V=0;
                    end
                    else begin
                        state=s0;
                        S=0;
                        V=1;
                    end
                end
            endcase
    end
endmodule