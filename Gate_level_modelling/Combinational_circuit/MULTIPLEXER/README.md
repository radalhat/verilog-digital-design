# Multiplexer (Gate-Level Modeling)

## Overview

This folder contains the gate-level implementation of multiplexers using Verilog HDL.

The designs use gate-level modeling with Verilog gate primitives to select one input from multiple input lines based on the select lines. I created these projects to understand how multiplexers work and improve my Verilog coding skills.

## Multiplexer

A multiplexer (MUX) is a combinational logic circuit that selects one input from multiple input lines and forwards the selected input to a single output. The selection is controlled by one or more select lines.

The following multiplexer designs are included:

* 2×1 Multiplexer
* 4×1 Multiplexer
* 8×1 Multiplexer

## Design

The multiplexers are implemented using Verilog gate primitives.

Each design is tested with different input and select line combinations to verify that the correct input is selected at the output.

## Files

```text
Multiplexer/
├── mux2x1.v
├── mux2x1_tb.v
├── mux4x1.v
├── mux4x1_tb.v
├── mux8x1.v
├── mux8x1_tb.v
├── mux...png
└── README.md
```

Each project contains:

* Verilog design file
* Testbench
* Waveform
* README

## Summary

Working on these designs helped me understand how multiplexers select and route data and how gate-level modeling is used to describe combinational circuits in Verilog.
