# Parallel-In Serial-Out (PISO) Register (Behavioral Modeling)

## Overview

This folder contains the behavioral implementation of a Parallel-In Serial-Out (PISO) register in Verilog.

The design demonstrates how parallel data can be loaded into a register and shifted out one bit at a time using clock pulses.

## PISO Register

A PISO register accepts all input bits simultaneously and transmits the stored data serially through a single output.

## Design

The register is implemented using a clocked `always` block with reset and load control signals.

The testbench verifies both the parallel loading operation and the serial shifting operation.

## Files


PISO/
├── piso.v
├── piso_tb.v
├── waveform.png
└── README.md


The folder contains:

- Verilog design file
- Testbench
- Waveform
- README

## Summary

Working on this design helped me understand how parallel data can be converted into serial data using shift register operations.