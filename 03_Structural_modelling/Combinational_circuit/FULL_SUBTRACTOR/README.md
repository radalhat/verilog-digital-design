# Full Subtractor (Structural Modeling)

## Overview

This folder contains the structural implementation of a Full Subtractor using Verilog HDL. The design is constructed by interconnecting lower-level modules to perform single-bit binary subtraction with borrow propagation.

## What is a Full Subtractor?

A Full Subtractor is a combinational logic circuit that subtracts two single-bit binary numbers while considering a borrow input from the previous stage. It accepts three inputs:

- **A** – Minuend
- **B** – Subtrahend
- **Bin** – Borrow Input

It produces two outputs:

- **Difference (D)**
- **Borrow Out (Bout)**

Full Subtractors are fundamental building blocks for designing multi-bit binary subtractors.

## Structural Modeling

Structural modeling describes a digital circuit by interconnecting lower-level modules to create a larger design. In this project, the Full Subtractor is implemented using reusable logic modules to demonstrate hierarchical hardware design.

## Implementations Included

- Full Subtractor

The implementation includes an individual testbench for functional verification.

## Folder Structure

```text
Full_Subtractor/
├── full_subtractor_structural.v
├── full_subtractor_structural_tb.v
└── README.md
```

## Applications

Full Subtractors are commonly used in:

- Binary subtraction
- Arithmetic Logic Units (ALUs)
- Digital processors
- Embedded systems
- FPGA and ASIC digital designs

## Conclusion

This project demonstrates the structural implementation of a Full Subtractor using Verilog HDL. It illustrates hierarchical hardware design through module interconnection and serves as a foundation for designing larger arithmetic circuits.

## Author

**Rahma A. Dalhat**

Computer Science Graduate | Verilog HDL Digital Design Portfolio