# Registers (Behavioral Modeling)

## Overview

This folder contains the behavioral implementation of different types of registers in Verilog.

The designs use behavioral modeling with `always` blocks to describe how data is stored and transferred on the active edge of the clock. I created these projects to understand the operation of different registers and improve my Verilog coding skills.

## Registers

The following register designs are included:

- Serial-In Serial-Out (SISO)
- Serial-In Parallel-Out (SIPO)
- Parallel-In Serial-Out (PISO)
- Parallel-In Parallel-Out (PIPO)
- Bidirectional Shift Register
- Universal Shift Register

## Design

The registers are implemented using behavioral modeling with clocked `always` blocks.

Each design is verified using a testbench that applies different input patterns, clock pulses, and reset conditions to ensure the register performs the expected operation.

## Files

```text
REGISTERS/
├── SISO/
├── SIPO/
├── PISO/
├── PIPO/
├── BIDIRECTIONAL_REGISTER/
├── UNIVERSAL_REGISTER/
└── README.md
```

Each register folder contains:

- Verilog design file
- Testbench
- Waveform
- README

## Summary

Working on these designs helped me understand how registers store and transfer data in sequential digital circuits. It also improved my understanding of clock-driven circuits, reset operations, and different data transfer modes used in digital system design.