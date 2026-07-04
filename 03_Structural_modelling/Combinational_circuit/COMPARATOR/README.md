# Comparator (2-bit and 4-bit) – Structural Modeling

## Overview

This project implements 2-bit and 4-bit magnitude comparators using Verilog HDL structural modeling. The design demonstrates hierarchical digital system construction using reusable comparator modules.

## What is a Comparator?

A comparator is a combinational circuit that compares two binary numbers and produces three outputs:

- A > B (Greater Than)
- A < B (Less Than)
- A = B (Equal To)

## Structural Modeling

Structural modeling builds complex systems by connecting smaller reusable modules.

In this project:
- A 2-bit comparator is designed as the basic module
- A 4-bit comparator is built using two 2-bit comparator modules

## Implemented Designs

- 2-bit Comparator (Structural)
- 4-bit Comparator (Structural using 2-bit blocks)

## Project Structure

```text
Comparator/
├── comparator_2bit_structural.v
├── comparator_2bit_structural_tb.v
├── comparator_4bit_structural.v
├── comparator_4bit_structural_tb.v
└── README.md
```

## Features

- Hierarchical structural design
- Reusable 2-bit comparator module
- Scalable architecture (expandable to higher bits)
- Verified using `$monitor`
- Testbench-driven simulation

## Applications

- ALU design
- Digital decision circuits
- Arithmetic systems
- FPGA and ASIC design
- Processor datapaths

## Conclusion

This project demonstrates structural modeling of comparators using Verilog HDL. It highlights modular design methodology by building a 4-bit comparator from a reusable 2-bit comparator block.

## Author

**Rahma A. Dalhat**

Computer Science Graduate | Verilog HDL Digital Design Portfolio