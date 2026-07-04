# Full Adder (Structural Modeling)

## Overview

This folder contains the structural implementation of a Full Adder using Verilog HDL. The design is constructed by instantiating two Half Adder modules and combining their carry outputs to produce the final carry output.

## What is a Full Adder?

A Full Adder is a combinational logic circuit that adds three single-bit binary inputs: two data inputs (`A` and `B`) and a carry input (`Cin`). It produces a Sum output and a Carry output (`Cout`).

## Structural Modeling

Structural modeling describes a digital circuit by interconnecting lower-level modules to create a larger design. In this project, the Full Adder is implemented by instantiating two Half Adder modules and using an OR operation to generate the final carry output.

## Implementations Included

- Full Adder

The implementation includes an individual testbench for functional verification.

## Folder Structure

```text
Full_Adder/
├── full_adder_structural.v
├── full_adder_structural_tb.v
└── README.md
```

## Applications

Full Adders are commonly used in:

- Binary addition
- Arithmetic Logic Units (ALUs)
- Ripple Carry Adders
- Digital processors
- FPGA and ASIC digital designs

## Conclusion

This project demonstrates the structural implementation of a Full Adder using Verilog HDL module instantiation. It illustrates hierarchical hardware design by building a Full Adder from reusable Half Adder modules.

## Author

**Rahma A. Dalhat**

Computer Science Graduate | Verilog HDL Digital Design Portfolio