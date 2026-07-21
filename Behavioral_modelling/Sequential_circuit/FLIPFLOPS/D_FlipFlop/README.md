# D Flip-Flop (Behavioral Modeling)

## Overview

This folder contains the behavioral implementation of a D Flip-Flop in Verilog.

The design uses behavioral modeling to describe how the output stores the input value on the active edge of the clock.

## D Flip-Flop

A D Flip-Flop is an edge-triggered storage element that captures the value of the data input (D) on the active clock edge and holds that value until the next clock edge.

## Design

The flip-flop is implemented using a clocked `always` block with a reset signal.

The testbench verifies the reset operation and confirms that the output updates only on the active edge of the clock.

## Files

```text
D_FLIPFLOP/
├── d_flipflop.v
├── d_flipflop_tb.v
├── waveform.png
└── README.md
```

The folder contains:

- Verilog design file
- Testbench
- Waveform
- README

## Summary

Working on this design helped me understand how a D Flip-Flop stores data on the active clock edge and forms the basis of many sequential digital systems.