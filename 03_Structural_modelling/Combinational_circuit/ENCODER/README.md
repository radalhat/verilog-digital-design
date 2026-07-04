# Encoder (Structural Modeling)

## Overview

This folder contains the structural implementation of 4×2 and 8×3 Encoders using Verilog HDL. The 8×3 Encoder is constructed by instantiating two 4×2 Encoder modules, demonstrating hierarchical hardware design through module instantiation.

## What is an Encoder?

An Encoder is a combinational logic circuit that converts one active input line into its corresponding binary code at the output.

## Structural Modeling

Structural modeling describes a digital circuit by interconnecting lower-level modules to create larger and more complex designs.

In this project:

- The **4×2 Encoder** serves as the basic building block.
- The **8×3 Encoder** is implemented by instantiating two 4×2 Encoder modules and combining their outputs.

## Implementations Included

- 4×2 Encoder
- 8×3 Encoder

The 4×2 Encoder is integrated as a reusable module within the 8×3 Encoder implementation.

## Folder Structure

```text
Encoder/
├── encoder_8x3_structural.v
├── encoder_8x3_structural_tb.v
└── README.md
```

## Applications

Encoders are commonly used in:

- Keyboard encoding
- Interrupt handling
- Data compression
- Digital communication systems
- FPGA and ASIC digital designs

## Conclusion

This project demonstrates the structural implementation of encoders using Verilog HDL module instantiation. It illustrates hierarchical hardware design by constructing an 8×3 Encoder from reusable 4×2 Encoder modules.

## Author

**Rahma A. Dalhat**

Computer Science Graduate | Verilog HDL Digital Design Portfolio