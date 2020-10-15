`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.10.2020 12:53:32
// Design Name: 
// Module Name: top
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
`define OPERATOR_WIDTH 6

module top
    #(parameter DATA_WIDTH = 16)
    (
    input [DATA_WIDTH-1:0] dato,
    input select_A,select_B,select_op,select_resultado,
    input clock,
    
    output [DATA_WIDTH-1:0] resultado
    );
    reg [DATA_WIDTH-1:0] registro_A, registro_B, registro_resultado;
    reg [`OPERATOR_WIDTH-1:0] registro_operador;
    
    wire [DATA_WIDTH-1:0] salida_alu;
        
    always@(posedge clock)
    begin
        if(select_A)
            registro_A <= dato;
    end
    
    always@(posedge clock)
    begin
        if(select_B)
            registro_B <= dato;
    end
    
    always@(posedge clock)
    begin
        if(select_op)
            registro_operador <= dato[`OPERATOR_WIDTH-1:0];
    end
    
    always@(negedge clock)
    begin
        if(select_resultado)
            registro_resultado <= salida_alu;
    end
    
    alu #(.DATA_WIDTH (DATA_WIDTH)) 
        u_alu    
    (
        .dato_A(registro_A),
        .dato_B(registro_B),
        .op(registro_operador),
        .resultado(salida_alu)
    );
    
    assign resultado = registro_resultado;

    
endmodule
