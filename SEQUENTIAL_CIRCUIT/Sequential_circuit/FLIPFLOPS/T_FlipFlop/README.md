# T Flip-Flop (Behavioral Modeling)

## Overview

This folder contains the behavioral implementation of a T Flip-Flop in Verilog.

The design uses behavioral modeling to describe how the output toggles on the active edge of the clock when the toggle input is asserted.

## T Flip-Flop

A T Flip-Flop is an edge-triggered storage element that changes its output state whenever the toggle input (T) is high during the active clock edge. If the toggle input is low, the output remains unchanged.

## Design

The flip-flop is implemented using a clocked `always` block with a reset signal.

The testbench verifies the reset operation, hold condition, and toggle operation using different input values and clock pulses.

## Files

```text
T_FLIPFLOP/
├── t_flipflop.v
├── t_flipflop_tb.v
├── waveform.png
└── README.md
```

The folder contains:

- Verilog design file
- Testbench
- Waveform
- README

## Summary

Working on this design helped me understand how a T Flip-Flop toggles its output on the active clock edge and how it is commonly used in counters and frequency division circuits.