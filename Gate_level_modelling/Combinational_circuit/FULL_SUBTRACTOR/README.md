# Full Subtractor (Gate-Level Modeling)

## Overview

This folder contains the gate-level implementation of a Full Subtractor using Verilog HDL.

The design uses gate-level modeling with Verilog gate primitives to subtract two single-bit binary numbers while considering a borrow input. I created this project to understand how Full Subtractors work and improve my Verilog coding skills.

## Full Subtractor

A Full Subtractor is a combinational logic circuit that subtracts two single-bit binary numbers and a borrow input. It produces two outputs:

* Difference
* Borrow

Unlike a Half Subtractor, a Full Subtractor accepts a borrow input from a previous stage, making it suitable for building multi-bit subtractors.

## Design

The Full Subtractor is implemented using Verilog gate primitives.

The design is tested with different input combinations to verify that the Difference and Borrow outputs match the expected subtraction results.

## Files

```text
Full_Subtractor/
├── full_subtractor_gate.v
├── full_subtractor_gate_tb.v
├── full_subtractor.png
└── README.md
```

Each project contains:

* Verilog design file
* Testbench
* Waveform
* README

## Summary

Working on this design helped me understand how Full Subtractors perform binary subtraction and how gate-level modeling is used to describe combinational circuits in Verilog.
