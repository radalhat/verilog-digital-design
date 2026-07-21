# SR Latch (Behavioral Modeling)

## Overview

This folder contains the behavioral implementation of an SR latch in Verilog.

The design uses behavioral modeling to describe how the output changes based on the Set (S) and Reset (R) inputs.

## SR Latch

An SR latch is a basic memory element that stores one bit of data. The Set input stores a logic 1, while the Reset input stores a logic 0. When both inputs are inactive, the latch retains its previous state.

## Design

The latch is implemented using an `always` block with Set and Reset inputs.

The testbench verifies the set, reset, hold, and invalid input conditions.

## Files

```text
SR_LATCH/
├── sr_latch.v
├── sr_latch_tb.v
├── waveform.png
└── README.md
```

The folder contains:

- Verilog design file
- Testbench
- Waveform
- README

## Summary

Working on this design helped me understand the basic operation of memory elements and how the Set and Reset inputs control the stored output of an SR latch.