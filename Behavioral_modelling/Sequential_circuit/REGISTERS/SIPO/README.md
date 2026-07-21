# Serial-In Parallel-Out (SIPO) Register (Behavioral Modeling)

## Overview

This folder contains the behavioral implementation of a Serial-In Parallel-Out (SIPO) register in Verilog.

The design demonstrates how serial input data is shifted into the register and becomes available as parallel outputs after several clock cycles.

## SIPO Register

A SIPO register accepts one input bit at a time and stores the bits until they can be read simultaneously from the parallel outputs.

## Design

The register is implemented using a clocked `always` block with a reset signal.

The testbench verifies the serial shifting operation and the resulting parallel output.

## Files

```text
SIPO/
├── sipo.v
├── sipo_tb.v
├── waveform.png
└── README.md
```

The folder contains:

- Verilog design file
- Testbench
- Waveform
- README

## Summary

Working on this design helped me understand how serial data is received and converted into parallel data using shift registers.