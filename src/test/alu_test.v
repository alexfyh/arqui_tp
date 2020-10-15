module alu_Test;
    // Inputs
    reg [7:0] i_a;
    reg [7:0] i_b;
    reg [5:0] i_operador;
    // Outputs
    wire [7:0] o_resultado;
    // Instantiate the Unit Under Test (UUT)
    alu uut (
        .resultado(o_resultado),
        .dato_A(i_a),
        .dato_B(i_b),
        .op(i_operador)
    );

    initial begin
        // Initialize Inputs
        i_a = 0;
        i_b = 0;
        i_operador = 0;
        // Wait 100 ns for global reset to finish
        #10;     
        // Add stimulus here
        /*
        SUMA
        */
        i_a = 8'b00010000;
        i_b = 8'b00000010;
        i_operador = 6'b100000;     
        /*
        RESTA
        */
        #10;
        i_a = 8'b00010000;
        i_b = 8'b00000010;
        i_operador = 6'b100010;     
        /*
        AND
        */
        #10;
        i_a = 8'b00010000;
        i_b = 8'b00000010;
        i_operador = 6'b100100;

        /*
        OR
        */
        #10;
        i_a = 8'b00010000;
        i_b = 8'b00000010;
        i_operador = 6'b100101;     
        /*
        XOR
        */
        #10;
        i_a = 8'b00010000;
        i_b = 8'b00000010;
        i_operador = 6'b100110;
        /*
        SRA
        */
        #10;
        i_a = 8'b10010000;
        i_b = 8'b00000010;
        i_operador = 6'b000011;     
        /*
        SRL
        */
        #10;
        i_a = 8'b10010000;
        i_b = 8'b00000010;
        i_operador = 6'b000010;     
        /*
        NOR
        */
        #10;
        i_a = 8'b00010000;
        i_b = 8'b00000010;
        i_operador = 6'b100111;
        
        
    end
      
endmodule
