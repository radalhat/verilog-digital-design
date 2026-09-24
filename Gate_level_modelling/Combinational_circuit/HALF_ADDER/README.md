# Half Adder (Gate-Level Modeling)

## Overview

This folder contains the gate-level implementation of a Half Adder using Verilog HDL.

The design uses gate-level modeling with Verilog gate primitives to add two single-bit binary numbers. I created this project to understand how Half Adders work and improve my Verilog coding skills.

## Half Adder

A Half Adder is a combinational logic circuit that adds two single-bit binary numbers. It produces two outputs:

* Sum
* Carry

Unlike a Full Adder, a Half Adder does not accept a carry input from a previous stage.

## Design

The Half Adder is implemented using Verilog gate primitives.

The design is tested with different input combinations to verify that the Sum and Carry outputs match the expected addition results.

## Files

```text
Half_Adder/
├── half_adder_gate.v
├── half_adder_gate_tb.v
├── half_adder.png
└── README.md
```

Each project contains:

* Verilog design file
* Testbench
* Waveform
* README

## Summary

Working on this design helped me understand how Half Adders perform binary addition and how gate-level modeling is used to describe combinational circuits in Verilog.
