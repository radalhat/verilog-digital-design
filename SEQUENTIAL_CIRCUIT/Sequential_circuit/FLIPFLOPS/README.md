# Flip-Flops (Behavioral Modeling)

## Overview

This folder contains the behavioral implementation of basic flip-flops in Verilog.

The designs use behavioral modeling to describe how flip-flops store data on the active edge of the clock. I created these projects to understand the operation of edge-triggered sequential circuits and improve my Verilog programming skills.

## Flip-Flops

The following flip-flop designs are included:

- D Flip-Flop
- T Flip-Flop

## Design

The flip-flops are implemented using behavioral modeling with clocked `always` blocks.

Each design is verified using a testbench that applies different input combinations, clock pulses, and reset conditions to ensure the flip-flop behaves as expected.

## Files

```text
FLIPFLOPS/
├── D_FLIPFLOP/
├── T_FLIPFLOP/
└── README.md
```

Each flip-flop folder contains:

- Verilog design file
- Testbench
- Waveform
- README

## Summary

Working on these designs helped me understand how flip-flops store data, respond to clock edges, and serve as the building blocks of sequential digital circuits.