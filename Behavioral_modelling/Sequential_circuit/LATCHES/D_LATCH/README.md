# D Latch (Behavioral Modeling)

## Overview

This folder contains the behavioral implementation of a D latch in Verilog.

The design uses behavioral modeling to describe how the output follows the input when the enable signal is active and retains its previous value when the enable signal is inactive.

## D Latch

A D latch is a level-sensitive storage element that transfers the input data to the output whenever the enable signal is asserted.

## Design

The latch is implemented using an `always` block with data and enable inputs.

The testbench verifies the latch operation by applying different combinations of data and enable signals.

## Files

```text
D_LATCH/
├── d_latch.v
├── d_latch_tb.v
├── waveform.png
└── README.md
```

The folder contains:

- Verilog design file
- Testbench
- Waveform
- README

## Summary

Working on this design helped me understand how a D latch stores data and how the enable signal controls the transfer of data to the output.