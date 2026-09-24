# Half Subtractor (Gate-Level Modeling)

## Overview

This folder contains the gate-level implementation of a Half Subtractor using Verilog HDL.

The design uses gate-level modeling with Verilog gate primitives to subtract two single-bit binary numbers. I created this project to understand how Half Subtractors work and improve my Verilog coding skills.

## Half Subtractor

A Half Subtractor is a combinational logic circuit that subtracts one single-bit binary number from another. It produces two outputs:

* Difference
* Borrow

Unlike a Full Subtractor, a Half Subtractor does not accept a borrow input from a previous stage.

## Design

The Half Subtractor is implemented using Verilog gate primitives.

The design is tested with different input combinations to verify that the Difference and Borrow outputs match the expected subtraction results.

## Files

```text
Half_Subtractor/
├── half_subtractor_gate.v
├── half_subtractor_gate_tb.v
├── half_subtractor.png
└── README.md
```

Each project contains:

* Verilog design file
* Testbench
* Waveform
* README

## Summary

Working on this design helped me understand how Half Subtractors perform binary subtraction and how gate-level modeling is used to describe combinational circuits in Verilog.
