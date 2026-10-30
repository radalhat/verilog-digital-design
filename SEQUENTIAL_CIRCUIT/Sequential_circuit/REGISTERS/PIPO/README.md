# Parallel-In Parallel-Out (PIPO) Register (Behavioral Modeling)

## Overview

This folder contains the behavioral implementation of a Parallel-In Parallel-Out (PIPO) register in Verilog.

The design uses behavioral modeling to describe how multiple bits of data are loaded simultaneously into the register on the active edge of the clock.

## PIPO Register

A PIPO register loads all input bits at the same time and makes them available at the outputs simultaneously after the clock edge.

## Design

The register is implemented using a clocked `always` block with a reset signal.

The testbench verifies the loading and resetting of the register by applying different input values and clock pulses.

## Files


PIPO/
├── pipo.v
├── pipo_tb.v
├── waveform.png
└── README.md

The folder contains:

- Verilog design file
- Testbench
- Waveform
- README

## Summary

Working on this design helped me understand how parallel data is stored and transferred simultaneously using sequential logic in Verilog.