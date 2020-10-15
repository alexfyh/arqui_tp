module alu_Test;
    // Inputs
    reg [7:0] datoA_8bits;
    reg [7:0] datoB_8bits;
    
    reg [15:0] datoA_16bits;
    reg [15:0] datoB_16bits;
    reg [5:0] i_operador;
    // Outputs
    wire [7:0] resultado_8bits;
    wire [15:0] resultado_16bits;
    // Instantiate the Unit Under Test (UUT)
    alu #(.DATA_WIDTH(8))
       alu_8Bits (
        .resultado(resultado_8bits),
        .dato_A(datoA_8bits),
        .dato_B(datoB_8bits),
        .op(i_operador)
    );
    
    alu #(.DATA_WIDTH(16))
       alu_16Bits (
        .resultado(resultado_16bits),
        .dato_A(datoA_16bits),
        .dato_B(datoB_16bits),
        .op(i_operador)
    );

    initial begin
        // Initialize Inputs
        datoA_8bits = 0;
        datoB_8bits = 0;
        datoA_16bits = 0;
        datoB_16bits = 0;
        i_operador = 0;
        // Wait 100 ns for global reset to finish
        #10;     
        // Add stimulus here
        /*
        SUMA
        */
        datoA_8bits = 8'b00010000;
        datoB_8bits = 8'b00000010;
        datoA_16bits = 16'b00000000_00010000;
        datoB_16bits = 16'b00000000_00000010;
        i_operador = 6'b100000;     
        /*
        RESTA
        */
        #10;
        datoA_8bits = 8'b00010000;
        datoB_8bits = 8'b00000010;
        datoA_16bits = 16'b00000000_00010000;
        datoB_16bits = 16'b00000000_00000010;
        i_operador = 6'b100010;     
        /*
        AND
        */
        #10;
        datoA_8bits = 8'b00010000;
        datoB_8bits = 8'b00000010;
        datoA_16bits = 16'b00000000_00010000;
        datoB_16bits = 16'b00000000_00000010;
        i_operador = 6'b100100;

        /*
        OR
        */
        #10;
        datoA_8bits = 8'b00010000;
        datoB_8bits = 8'b00000010;
        datoA_16bits = 16'b00000000_00010000;
        datoB_16bits = 16'b00000000_00000010;
        i_operador = 6'b100101;     
        /*
        XOR
        */
        #10;
        datoA_8bits = 8'b00010000;
        datoB_8bits = 8'b00000010;
        datoA_16bits = 16'b00000000_00010000;
        datoB_16bits = 16'b00000000_00000010;
        i_operador = 6'b100110;
        /*
        SRA
        */
        #10;
        datoA_8bits = 8'b10010000;
        datoB_8bits = 8'b00000010;
        datoA_16bits = 16'b00000000_10010000;
        datoB_16bits = 16'b00000000_00000010;
        i_operador = 6'b000011;     
        /*
        SRL
        */
        #10;
        datoA_8bits = 8'b10010000;
        datoB_8bits = 8'b00000010;
        datoB_8bits = 8'b01000000;
        i_operador = 6'b000010;     
        /*
        NOR
        */
        #10;
        datoA_8bits = 8'b00010000;
        datoB_8bits = 8'b00000010;
        i_operador = 6'b100111;
        
        
    end
      
endmodule
