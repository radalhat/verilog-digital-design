# Full Adder (Gate-Level Modeling)

## Overview

This folder contains the gate-level implementation of a Full Adder using Verilog HDL.

The design uses gate-level modeling with Verilog gate primitives to add two single-bit binary numbers along with a carry input. I created this project to understand how Full Adders work and improve my Verilog coding skills.

## Full Adder

A Full Adder is a combinational logic circuit that adds two single-bit binary numbers and a carry input. It produces two outputs:

* Sum
* Carry

Unlike a Half Adder, a Full Adder accepts a carry input from a previous stage, making it suitable for building multi-bit adders.

## Design

The Full Adder is implemented using Verilog gate primitives.

The design is tested with different input combinations to verify that the Sum and Carry outputs match the expected addition results.

## Files

```text
Full_Adder/
├── full_adder_gate.v
├── full_adder_gate_tb.v
├── full_adder.png
└── README.md
```

Each project contains:

* Verilog design file
* Testbench
* Waveform
* README

## Summary

Working on this design helped me understand how Full Adders perform binary addition and how gate-level modeling is used to describe combinational circuits in Verilog.
