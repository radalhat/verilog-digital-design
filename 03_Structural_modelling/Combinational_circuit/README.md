# Combinational Circuits – Structural Modeling (Verilog HDL)

## Overview

This section of the Verilog HDL portfolio focuses on **Combinational Circuits implemented using Structural Modeling**. The designs are built using hierarchical module instantiation, where complex circuits are constructed from simpler reusable building blocks.

This approach reflects real-world **ASIC/VLSI design methodology**, where systems are designed in a modular and scalable manner.

## What is Structural Modeling?

Structural modeling describes a digital circuit by connecting lower-level modules together. Instead of writing direct Boolean expressions, circuits are constructed using reusable components.

This improves:
- Modularity
- Reusability
- Scalability
- Hardware realism

## Implemented Circuits

This section includes the following combinational circuits:

### Multiplexers
- 1×8 Multiplexer (built using 2×1 and 4×1 modules)

### Demultiplexers
- 1×4 Demultiplexer (built using 1×2 modules)
- 1×8 Demultiplexer (built using 1×2 modules)

### Comparators
- 2-bit Comparator (base module)
- 4-bit Comparator (built using 2-bit modules)

### Decoders
- 2×4 Decoder (base module)
- 3×8 Decoder (built using 2×4 modules)

## Design Methodology

Each design follows a consistent structural flow:

- Small reusable modules are designed first
- Larger circuits are built using hierarchical instantiation
- Each module is independently verified using testbenches
- `$monitor` is used for output verification

## Project Structure

```text
Structural_Modeling/
├── Multiplexer/
├── Demultiplexer/
├── Comparator/
├── Decoder/
└── README.md
```

## Tools Used

- Verilog HDL
- Synopsys Verdi (Simulation & Debugging)

## Features

- Pure structural modeling approach
- Hierarchical design methodology
- Reusable hardware modules
- Modular verification using testbenches
- Clean and scalable architecture

## Learning Outcomes

After completing this section, you will understand:

- How to build complex circuits from simple modules
- Structural design methodology in VLSI
- Hierarchical hardware design concepts
- Reusability in digital design
- Practical FPGA/ASIC design flow

## Conclusion

This section demonstrates the implementation of combinational circuits using structural modeling in Verilog HDL. It emphasizes modular design practices used in real-world digital system development.

## Author

**Rahma A. Dalhat**

Computer Science Graduate | Verilog HDL Digital Design Portfolio