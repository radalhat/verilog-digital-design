# Ripple Carry Adder (Structural Modeling)

## Overview

This folder contains the structural implementation of a 4-bit Ripple Carry Adder (RCA) using Verilog HDL. The design is constructed by instantiating four Full Adder modules, demonstrating hierarchical and modular hardware design.

## What is a Ripple Carry Adder?

A Ripple Carry Adder (RCA) is a combinational arithmetic circuit used to add two multi-bit binary numbers. It is formed by cascading multiple Full Adders, where the carry output (`Cout`) of one stage is connected to the carry input (`Cin`) of the next stage.

The carry propagates from the least significant bit (LSB) to the most significant bit (MSB), giving the circuit its name "Ripple Carry Adder."

## Structural Modeling

Structural modeling describes a digital circuit by interconnecting lower-level modules to create a larger design. In this project, a 4-bit Ripple Carry Adder is implemented by instantiating four Full Adder modules and connecting them through internal carry signals.

## Implementations Included

- 4-Bit Ripple Carry Adder

The implementation includes an individual testbench for functional verification.

## Folder Structure

```text
Ripple_Carry_Adder/
├── ripple_carry_adder_4bit.v
├── ripple_carry_adder_4bit_tb.v
└── README.md
```

## Applications

Ripple Carry Adders are commonly used in:

- Binary arithmetic operations
- Arithmetic Logic Units (ALUs)
- Digital processors
- Embedded systems
- FPGA and ASIC digital designs

## Conclusion

This project demonstrates the structural implementation of a 4-bit Ripple Carry Adder using Verilog HDL module instantiation. It illustrates hierarchical hardware design by connecting reusable Full Adder modules to perform multi-bit binary addition.

## Author

**Rahma A. Dalhat**

Computer Science Graduate | Verilog HDL Digital Design Portfolio