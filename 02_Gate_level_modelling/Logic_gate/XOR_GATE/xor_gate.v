// Rahma A Dalhat — 05 July 2026 -XOR Gate (Gate-Level)
module xor_gate(
    input A,
    input B,
    output Y
);

    // Implement XOR operation
    xor (Y, A, B);

endmodule# Logic Gates (Gate-Level Modeling)

## Overview

This folder contains the gate-level implementation of the seven basic logic gates using Verilog HDL gate primitives. These circuits form the foundation of digital logic design and are commonly used to construct more complex combinational and sequential circuits.

## What is Gate-Level Modeling?

Gate-level modeling describes a digital circuit by connecting built-in Verilog gate primitives such as `and`, `or`, `not`, `nand`, `nor`, `xor`, and `xnor`. This modeling style closely represents the actual hardware implementation of a digital circuit.

## Implementations Included

- AND Gate
- OR Gate
- NOT Gate
- NAND Gate
- NOR Gate
- XOR Gate
- XNOR Gate

Each logic gate includes an individual testbench for functional verification.

## Folder Structure

```text
Logic_Gates/
├── AND_Gate/
│   ├── and_gate.v
│   ├── and_gate_tb.v
│
├── OR_Gate/
│   ├── or_gate.v
│   ├── or_gate_tb.v
│
├── NOT_Gate/
│   ├── not_gate.v
│   ├── not_gate_tb.v
│
├── NAND_Gate/
│   ├── nand_gate.v
│   ├── nand_gate_tb.v
│
├── NOR_Gate/
│   ├── nor_gate.v
│   ├── nor_gate_tb.v
│
├── XOR_Gate/
│   ├── xor_gate.v
│   ├── xor_gate_tb.v
│
├── XNOR_Gate/
│   ├── xnor_gate.v
│   ├── xnor_gate_tb.v
│
└── README.md
```

## Applications

Logic gates are fundamental components used in:

- Arithmetic circuits
- Multiplexers and decoders
- Comparators
- Memory and processor design
- FPGA and ASIC development
- Digital control systems

## Conclusion

This project demonstrates the implementation of the basic logic gates using Verilog gate primitives. These designs provide a strong foundation for understanding hardware-level digital design and serve as the basis for implementing more complex combinational circuits.

## Author

**Rahma A. Dalhat**

Computer Science Graduate | Verilog HDL Digital Design Portfolio