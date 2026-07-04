# Multiplexer (Structural Modeling)

## Overview

This folder contains the structural implementation of 2×1, 4×1, and 8×1 Multiplexers using Verilog HDL. The designs demonstrate hierarchical hardware design through module instantiation, where larger multiplexers are constructed from smaller reusable modules.

## What is a Multiplexer?

A Multiplexer (MUX) is a combinational logic circuit that selects one of several input signals and forwards the selected input to a single output. The selected input is determined by the values of the select lines.

Multiplexers are fundamental components in digital systems and are widely used for data selection, signal routing, and resource sharing.

## Structural Modeling

Structural modeling describes a digital circuit by interconnecting lower-level modules to create larger and more complex designs.

In this project:

- The **2×1 Multiplexer** serves as the basic building block and is integrated within the structural implementations.
- The **4×1 Multiplexer** is constructed by instantiating three 2×1 Multiplexer modules.
- The **8×1 Multiplexer** is constructed by instantiating two 4×1 Multiplexer modules and one 2×1 Multiplexer module.

This hierarchical approach improves modularity, reusability, and scalability.

## Implementations Included

- 2×1 Multiplexer (integrated as a reusable module)
- 4×1 Multiplexer
- 8×1 Multiplexer

Each top-level implementation includes an individual testbench for functional verification.

## Folder Structure

```text
Multiplexer/
├── mux_4x1_structural.v
├── mux_4x1_structural_tb.v
├── mux_8x1_structural.v
├── mux_8x1_structural_tb.v
└── README.md
```

## Applications

Multiplexers are commonly used in:

- Data selection
- Data routing
- Bus switching
- Communication systems
- Arithmetic Logic Units (ALUs)
- Processor architectures
- FPGA and ASIC digital designs

## Conclusion

This project demonstrates the structural implementation of multiplexers using Verilog HDL module instantiation. By building larger multiplexers from smaller reusable modules, it illustrates the principles of hierarchical hardware design and modular digital system development.

## Author

**Rahma A. Dalhat**

Computer Science Graduate | Verilog HDL Digital Design Portfolio