`timescale 1ns/1ps
module ALU_tb;
reg [3:0] A;
reg [3:0] B;
reg [3:0] opcode;
wire [3:0] result;
wire zero;
ALU uut (
    .A(A),
    .B(B),
    .opcode(opcode),
    .result(result),
    .zero(zero)
);
initial begin
$display("A B opcode result zero");
A = 4'b0101; B = 4'b0011;
opcode = 4'b0000; #10; // ADD
opcode = 4'b0001; #10; // SUB
opcode = 4'b0010; #10; // AND
opcode = 4'b0011; #10; // OR
opcode = 4'b0100; #10; // XOR
opcode = 4'b0101; #10; // NOT
opcode = 4'b0110; #10; // SHIFT LEFT
opcode = 4'b0111; #10; // SHIFT RIGHT
$finish;
end
endmodule
