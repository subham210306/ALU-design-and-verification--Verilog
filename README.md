# 4-bit ALU (Verilog)
This repository contains the design and simulation of a **4-bit Arithmetic Logic Unit (ALU)** written in **Verilog HDL**.  
The ALU performs several arithmetic and logical operations based on the opcode input and is verified using a Verilog testbench.

## Objective
To design and simulate a **4-bit ALU using Verilog HDL** and verify its functionality through a testbench.

## Features
- 4-bit ALU implemented in Verilog
- Opcode-based operation selection
- Arithmetic and logical operations
- Shift operations
- Zero flag generation
- Testbench for simulation and verification

## Supported Operations
| Opcode | Operation |
|------|-------------|
|0000| A + B |
|0001| A - B |
|0010| A AND B |
|0011| A OR B |
|0100| A XOR B |
|0101| NOT A |
|0110| Shift A left |
|0111| Shift A right |

## Module Interface

### Inputs
- `A[3:0]` : First operand  
- `B[3:0]` : Second operand  
- `opcode[3:0]` : Operation selector  

### Outputs
- `result[3:0]` : ALU output  
- `zero` : Indicates result equals zero  

## Repository Structure
| File | Description |
|-----|-------------|
| `ALU.v` | Verilog module implementing the 4-bit ALU |
| `ALU_tb.v` | Verilog testbench used to simulate and verify the ALU |

## Simulation

The design is simulated using **Verilog**

## Author: Subham Sai Mohanty
ECE student at Odisha University of Technology and Research



