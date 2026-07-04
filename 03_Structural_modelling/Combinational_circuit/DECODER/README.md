# Decoder (2×4 and 3×8) – Structural Modeling

## Overview

This project implements 2×4 and 3×8 decoders using Verilog HDL structural modeling. The design demonstrates hierarchical digital system construction using reusable decoder modules.

## What is a Decoder?

A decoder is a combinational circuit that converts binary inputs into a unique active output line.

## Structural Modeling

Structural modeling builds complex circuits using smaller reusable modules.

In this project:
- A 2×4 decoder is used as the base module
- A 3×8 decoder is built using two 2×4 decoder blocks

## Implemented Designs

- 2×4 Decoder (Structural)
- 3×8 Decoder (Structural using 2×4 blocks)

## Project Structure

```text
Decoder/
├── decoder_2x4_structural.v
├── decoder_2x4_structural_tb.v
├── decoder_3x8_structural.v
├── decoder_3x8_structural_tb.v
└── README.md
```

## Features

- Hierarchical structural modeling
- Reusable 2×4 decoder module
- Scalable architecture
- Verified using `$monitor`
- Testbench-based simulation

## Applications

- Memory address decoding
- Instruction decoding
- Digital systems
- FPGA and ASIC design
- Control units

## Conclusion

This project demonstrates structural modeling of decoders using Verilog HDL. It shows how larger systems can be built from smaller reusable modules.

## Author

**Rahma A. Dalhat**

Computer Science Graduate | Verilog HDL Digital Design Portfolio