# 4-bit Ripple Carry Adder

## Overview

This project implements a 4-bit Ripple Carry Adder (RCA) using structural modeling in Verilog.

The design adds two 4-bit binary numbers together and produces a 4-bit sum with a carry output.

I created this project to practice structural modeling and understand how carry signals move from one stage to the next.

## Files

- ripple_carry_adder.v
- ripple_carry_adder_tb.v
- ripple_carry_adder.png
- README.md
## Design Description

The design performs 4-bit binary addition.

The carry generated at one stage is passed to the next stage until the final carry output is produced.

## Simulation

The design was simulated using Icarus Verilog.

The waveform was viewed using GTKWave to verify the sum and carry outputs.

## How to Run

```bash
iverilog -o rca ripple_carry_adder.v ripple_carry_adder_tb.v
vvp rca
gtkwave dump.vcd
```

## What I Learned

This project helped me understand carry propagation in a ripple carry adder.

It also improved my understanding of structural modeling and simulation.