module ALU(
    input [3:0] A,
    input [3:0] B,
    input [3:0] opcode,
    output reg [3:0] result,
    output zero
);
always @(*) begin
    case(opcode)
        4'b0000: result = A + B;
        4'b0001: result = A - B;
        4'b0010: result = A & B;
        4'b0011: result = A | B;
        4'b0100: result = A ^ B;
        4'b0101: result = ~A;
        4'b0110: result = A << 1;
        4'b0111: result = A >> 1;
        default: result = 4'b0000;
    endcase
end
assign zero = (result == 4'b0000);
endmodule
