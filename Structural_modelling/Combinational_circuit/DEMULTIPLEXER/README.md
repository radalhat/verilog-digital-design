# Demultiplexer (Structural Modeling)

## Overview

This folder contains the structural implementation of 1×4 and 1×8 Demultiplexers in Verilog.

The designs are built by connecting smaller Demultiplexer modules together. This project helped me understand how larger circuits can be created from simple reusable modules.

## Design

The 1×4 Demultiplexer is built using 1×2 Demultiplexer modules.

The 1×8 Demultiplexer is created by connecting multiple 1×2 Demultiplexer modules in stages to route the input to the correct output.

## Files

```text
Demultiplexer/
├── demux_1x4_structural.v
├── demux_1x4_structural_tb.v
├── demux_1x8_structural.v
├── demux_1x8_structural_tb.v
├── demux_1x4.png
├── demux_1x8.png
└── README.md
```

Each project includes the Verilog design, testbench, and simulation waveform.

## Summary

Building these designs gave me more practice with structural modeling and module instantiation. It also helped me understand how a larger design can be created by connecting smaller modules together.