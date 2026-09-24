# Full Adder (Structural Modeling)

## Overview

This folder contains the structural implementation of a Full Adder in Verilog.

The design is built by connecting two Half Adder modules and using an OR gate to generate the final carry output. This project helped me understand how smaller modules can be connected to build a larger circuit.

## Design

The Full Adder takes three inputs:

- A
- B
- Cin

It produces two outputs:

- Sum
- Cout

## Files


Full_Adder/
├── full_adder_structural.v
├── full_adder_structural_tb.v
├── full_adder.png
└── README.md
```

The folder contains the Verilog design, testbench, waveform, and project documentation.

## Note

While working on this project, I became more familiar with module instantiation and port connections. It also helped me understand how two Half Adders can be used to build a Full Adder.