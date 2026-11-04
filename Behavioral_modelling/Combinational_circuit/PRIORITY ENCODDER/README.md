# Priority Encoder (Behavioral Modeling)

## Overview

This folder contains the behavioral implementation of a 4-to-2 priority encoder using Verilog HDL.

The design uses behavioral modeling to demonstrate how multiple input signals are evaluated according to their priority to generate a 2-bit encoded output. I created this project to understand priority logic and become more comfortable designing and verifying combinational circuits using Verilog.

## Priority Encoder

A priority encoder is a combinational logic circuit that converts multiple input signals into a binary output representing the highest-priority active input.

This design has four input signals (`d[3:0]`), two output bits (`y[1:0]`), and a `valid` signal.

The priority order is:

* `d[3]` – Highest priority
* `d[2]`
* `d[1]`
* `d[0]` – Lowest priority

When multiple inputs are HIGH, the encoder selects the input with the highest