# Demultiplexer (Gate-Level Modeling)

## Overview

This folder contains the gate-level implementation of demultiplexers using Verilog HDL.

The designs use gate-level modeling with Verilog gate primitives to route a single input to one of several outputs based on the select lines. I created these projects to understand how demultiplexers work and improve my Verilog coding skills.

## Demultiplexer

A demultiplexer (DEMUX) is a combinational logic circuit that takes one input and routes it to one of several output lines. The output is selected using the select lines, while the remaining outputs stay LOW.

The following demultiplexer designs are included:

* 1×2 Demultiplexer
* 1×4 Demultiplexer
* 1×8 Demultiplexer

## Design

The demultiplexers are implemented using Verilog gate primitives.

Each design is tested with different input and select line combinations to verify that the input is routed to the correct output.

## Files

```text
Demultiplexer/
├── demux1x2.v
├── demux1x2_tb.v
├── demux1x4.v
├── demux1x4_tb.v
├── demux1x8.v
├── demux1x8_tb.v
├── demux...png
└── README.md
```

Each project contains:

* Verilog design file
* Testbench
* Waveform
* README

## Summary

Working on these designs helped me understand how demultiplexers route data and how gate-level modeling is used to describe combinational circuits in Verilog.
