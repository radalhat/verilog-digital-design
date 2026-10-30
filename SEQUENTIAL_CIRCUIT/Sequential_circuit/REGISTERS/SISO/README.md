# Serial-In Serial-Out (SISO) Register (Behavioral Modeling)

## Overview

This folder contains the behavioral implementation of a Serial-In Serial-Out (SISO) register in Verilog.

The design demonstrates how data is shifted through the register one bit at a time using clock pulses.

## SISO Register

A SISO register accepts one bit of data serially and shifts it through the register until it appears at the serial output.

## Design

The register is implemented using a clocked `always` block with a reset signal.

The testbench verifies the serial input, shifting process, and serial output.

## Files

```text
SISO/
├── siso.v
├── siso_tb.v
├── waveform.png
└── README.md
```

The folder contains:

- Verilog design file
- Testbench
- Waveform
- README

## Summary

Working on this design helped me understand the operation of shift registers and how serial data moves through sequential circuits one clock cycle at a time.