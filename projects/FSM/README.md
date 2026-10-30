# 4-Bit Synchronous Counter & Moore State Machine (FSM) Design

**Author:** Abubakar Rahma Dalhat

## Overview

This repository contains the behavioral implementation and advanced verification of a 4-bit binary up-counter and a Moore Finite State Machine (FSM) sequence detector in Verilog HDL and SystemVerilog.

The designs model edge-triggered sequential logic, synchronous reset recovery, and control-line handshakes. I created this project to master sequential circuit design, interface-based testbenches, object-oriented programming (OOP), constrained randomization, and formal assertions.

## Modules Included

- **4-Bit Binary Up-Counter:** Features an active-low synchronous reset (`rst_n`) and explicit enable control.
- **3-State Moore FSM:** Implements an overlapping sequence detector with glitch-free synchronous output registration.

## Design & Verification

The hardware components are implemented using behavioral modeling with clocked `always` blocks. 

The verification environment is built using an advanced Object-Oriented SystemVerilog architecture, featuring:
- Randomized transaction classes and stimulus generators.
- Constrained randomization with weighted distributions to stress-test hardware corner cases.
- Immediate and Concurrent SystemVerilog Assertions (SVAs) to monitor protocol compliance and timing stability across 100+ stress cycles.

## Files

```text
FSM_COUNTER_VERIFICATION/
├── rtl/
│   └── counter_fsm.v
├── tb/
│   └── tb.sv
└── README.md
