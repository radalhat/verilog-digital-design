# Full Subtractor (Structural Modeling)

## Overview

This folder contains the structural implementation of a Full Subtractor in Verilog.

The design is built by connecting smaller modules together to perform single-bit binary subtraction with a borrow input and borrow output.

## Design

The Full Subtractor is implemented using structural modeling through module instantiation.

The design accepts three inputs (`A`, `B`, and `Bin`) and produces two outputs (`Difference` and `Borrow Out`).

This project helped me understand how arithmetic circuits can be built by connecting smaller modules.

## Files

```text
Full_Subtractor/
├── full_subtractor_structural.v
├── full_subtractor_structural_tb.v
├── full_subtractor.png
└── README.md
```

The folder contains the Verilog design, testbench, simulation waveform, and project documentation.

## About

This project gave me more practice with structural modeling, module instantiation, and simulation. It also improved my understanding of borrow propagation in a full subtractor.