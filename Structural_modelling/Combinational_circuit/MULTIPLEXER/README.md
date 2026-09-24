# Multiplexer (Structural Modeling)

## Overview

This folder contains the structural implementation of 2×1, 4×1, and 8×1 multiplexers in Verilog.

The designs are built by connecting smaller modules together. This helped me understand how larger digital circuits can be created from simple and reusable modules.

## Structural Design

The multiplexers in this folder are built using module instantiation.

- The 2×1 multiplexer is used as the basic building block.
- The 4×1 multiplexer is built using three 2×1 multiplexers.
- The 8×1 multiplexer is built using two 4×1 multiplexers and one 2×1 multiplexer.

This approach made it easier to understand structural modeling and module connections.

## Files


Multiplexer/
├── mux_4x1_structural.v
├── mux_4x1_structural_tb.v
├── mux_8x1_structural.v
├── mux_8x1_structural_tb.v
├── mux.png
└── README.md
```

Each design includes a testbench for simulation and a waveform showing the simulation result.

## Tools Used

- Verilog HDL
- Icarus Verilog
- GTKWave
- Visual Studio Code

## About

This project gave me more practice with structural modeling, module instantiation, and simulation. It also helped me understand how small modules can be connected to build larger digital circuits.