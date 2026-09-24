# Ripple Carry Adder (Gate-Level Modeling)

## Overview

This folder contains the gate-level implementation of a 4-bit Ripple Carry Adder using Verilog HDL.

The design uses gate-level modeling with Verilog gate primitives to add two 4-bit binary numbers. I created this project to understand how Ripple Carry Adders work and improve my Verilog coding skills.

## Ripple Carry Adder

A Ripple Carry Adder (RCA) is a combinational logic circuit that adds two multi-bit binary numbers. It is built by connecting multiple Full Adders in series, where the carry output from one stage becomes the carry input of the next stage.

## Design

The Ripple Carry Adder is implemented using Verilog gate primitives.

The design is tested with different input combinations to verify that the Sum and Carry outputs match the expected addition results.

## Files

```text
Ripple_Carry_Adder/
├── ripple_carry_adder_gate.v
├── ripple_carry_adder_gate_tb.v
├── ripple_carry_adder.png
└── README.md
```

Each project contains:

* Verilog design file
* Testbench
* Waveform
* README

## Summary

Working on this design helped me understand how Ripple Carry Adders perform multi-bit binary addition and how gate-level modeling is used to describe arithmetic circuits in Verilog.
