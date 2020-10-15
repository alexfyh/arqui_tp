`define OP_WIDTH 6

module alu
    #(parameter DATA_WIDTH = 8)
    (  
    input wire signed [DATA_WIDTH-1:0] dato_A,
    input wire signed [DATA_WIDTH-1:0] dato_B,
    input wire [`OP_WIDTH-1:0] op,
    output reg [DATA_WIDTH-1:0] resultado
    );
    always @(*)
    begin      
        case (op)
        //TODO CHEQUEAE
            `OP_WIDTH'b100000: resultado = dato_A + dato_B;  // SUMA (ADD)
            `OP_WIDTH'b100010: resultado = dato_A - dato_B;  // RESTA (SUB)
            `OP_WIDTH'b100100: resultado = dato_A & dato_B;  // AND
            `OP_WIDTH'b100101: resultado = dato_A | dato_B;  // OR
            `OP_WIDTH'b100110: resultado = dato_A ^ dato_B;  // XOR        
            `OP_WIDTH'b000011: resultado = dato_A >> dato_B;  //SRA (SHIFT RIGHT ARITHMETIC) al dato_A lo desplazo "dato_B" lugares
            `OP_WIDTH'b000010: resultado = dato_A >>> dato_B;  //SRL (SHIFT RIGHT LOGIC)  al dato_A lo desplazo "dato_B" lugares
            `OP_WIDTH'b100111: resultado = ~(dato_A | dato_B); //NOR  
            default: resultado = {DATA_WIDTH{1'b0}};   // para un operando no valido la salida ser cero
        endcase    
    end
endmodule
