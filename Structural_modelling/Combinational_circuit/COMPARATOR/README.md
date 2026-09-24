# Comparator (Structural Modeling)

## Overview

This folder contains the structural implementation of 2-bit and 4-bit Comparators in Verilog.

The 4-bit Comparator is built by connecting two 2-bit Comparator modules. This design helped me understand how a larger comparator can be created from smaller modules.

## Design

The 2-bit Comparator is used as the basic module.

The 4-bit Comparator is built by instantiating two 2-bit Comparators. The design compares two binary numbers and produces three outputs:

- A > B
- A < B
- A = B

## Files

```text
Comparator/
├── comparator_2bit_structural.v
├── comparator_2bit_structural_tb.v
├── comparator_4bit_structural.v
├── comparator_4bit_structural_tb.v
├── comparator_2bit.png
├── comparator_4bit.png
└── README.md
```

Each design includes the Verilog file, testbench, and simulation waveform.

## Summary

Building these comparators gave me more practice with structural modeling and module instantiation. It also helped me understand how smaller modules can be connected to build larger digital circuits.