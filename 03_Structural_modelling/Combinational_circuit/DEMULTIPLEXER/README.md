# Demultiplexer (1×4 and 1×8) – Structural Modeling

## Overview

This project implements 1×4 and 1×8 Demultiplexers using Verilog HDL structural modeling. The designs demonstrate hierarchical digital system design by constructing complex circuits from reusable smaller modules.

## What is a Demultiplexer?

A Demultiplexer (DEMUX) is a combinational circuit that routes a single input signal to one of multiple output lines based on select inputs. It is widely used for data routing and signal distribution.

## Structural Modeling

Structural modeling is a hardware design approach where circuits are built by interconnecting smaller reusable modules.

In this project:
- The 1×4 Demultiplexer is built using a 1×2 Demultiplexer module
- The 1×8 Demultiplexer is built using multiple 1×2 Demultiplexer modules in a hierarchical structure

## Implemented Designs

- 1×4 Demultiplexer (Structural)
- 1×8 Demultiplexer (Structural)

## Project Structure

```text
Demultiplexer/
├── demux_1x4_structural.v
├── demux_1x4_structural_tb.v
├── demux_1x8_structural.v
├── demux_1x8_structural_tb.v
└── README.md
```

## Features

- Structural Modeling using Verilog HDL
- Hierarchical module instantiation
- Reusable 1×2 building block
- Verified using `$monitor`
- Testbench-based simulation

## Applications

- Data routing and switching
- Memory address decoding
- Communication systems
- FPGA and ASIC digital design

## Conclusion

This project demonstrates hierarchical structural modeling of Demultiplexers using Verilog HDL. It shows how complex digital circuits can be efficiently designed using reusable lower-level modules.

## Author

**Rahma A. Dalhat**

Computer Science Graduate | Verilog HDL Digital Design Portfolio