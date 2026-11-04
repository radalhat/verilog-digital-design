# 4-Bit Synchronous Up Counter

## Project Overview
This project implements a 4-bit synchronous up counter using Verilog HDL.

The counter increments its value by one on every rising edge of the clock signal. It counts from 0 to 15 (0000 to 1111 in binary) and then automatically rolls over to 0.

A synchronous active-high reset is included to initialize the counter to zero.

## Design Specifications

| Parameter | Description |
|---|---|
| Design Name | 4-Bit Synchronous Up Counter |
| HDL | Verilog |
| Counter Width | 4 bits |
| Clock | Positive edge triggered |
| Reset | Synchronous, active-high |
| Counting Direction | Up |
| Counting Range | 0–15 |
| Rollover | 15 to 0 |

## Design Functionality

The counter operates as follows:

- When reset is HIGH, the counter is cleared to `0000`.
- When reset is LOW, the counter increments by one on every positive clock edge.
- After reaching `1111` (decimal 15), the counter rolls over to `0000`.
- The counter maintains its current value between clock edges.

## RTL Implementation

The design is implemented using a sequential `always` block triggered by the positive edge of the clock.

## Verification

A Verilog testbench is used to verify the functionality of the counter.

The following test scenarios are considered:

1. Reset operation.
2. Normal counting sequence from 0 to 15.
3. Rollover from 15 to 0.
4. Continuous counting over multiple clock cycles.

## Expected Output

| Clock Event | Expected Count (Binary) | Decimal |
|---|---|---|
| Reset | 0000 | 0 |
| 1st rising edge | 0001 | 1 |
| 2nd rising edge | 0010 | 2 |
| 3rd rising edge | 0011 | 3 |
| 4th rising edge | 0100 | 4 |
| ... | ... | ... |
| 15th rising edge | 1111 | 15 |
| 16th rising edge | 0000 | 0 |

## Simulation Tools

- Verilog HDL
- QuestaSim
- GTKWave (optional, for waveform viewing)

## Files Included

- `counter_4bit.v` – RTL design of the 4-bit counter.
- `tb_counter_4bit.v` – Testbench for functional verification.
- `waveform.vcd` – Simulation waveform file (if generated).

## Learning Outcomes

Through this project, I gained practical experience in:

- Designing sequential digital circuits using Verilog HDL.
- Understanding positive-edge-triggered operations.
- Implementing synchronous reset logic.
- Understanding counter rollover.
- Writing testbenches and observing simulation waveforms.

