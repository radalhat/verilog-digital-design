# Decoder (Gate-Level Modeling)

## Overview

This folder contains the gate-level implementation of decoders using Verilog HDL.

The designs use gate-level modeling with Verilog gate primitives to convert binary inputs into their corresponding output lines. I created these projects to understand how decoders work and improve my Verilog coding skills.

## Decoder

A decoder is a combinational logic circuit that converts an n-bit binary input into one of 2ⁿ output lines. For each input combination, only one output is active at a time.

The following decoder designs are included:

* 2×4 Decoder
* 3×8 Decoder

## Design

The decoders are implemented using Verilog gate primitives.

Each design is tested with different input combinations to verify that the correct output is activated for each input.

## Files

```text
Decoder/
├── decoder_2x4_gate.v
├── decoder_2x4_gate_tb.v
├── decoder_3x8_gate.v
├── decoder_3x8_gate_tb.v
├── decoder...png
└── README.md
```

Each project contains:

* Verilog design file
* Testbench
* Waveform
* README

## Summary

Working on these designs helped me understand how decoders convert binary inputs into output signals and how gate-level modeling is used to describe combinational circuits in Verilog.
