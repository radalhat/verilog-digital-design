# AND Gate: Class-Based SystemVerilog Testbench

A layered, class-based verification environment for a 2-input AND gate. It is a small design on purpose, so the focus is on the testbench structure.

## Output

![Output](output%20screenshot.png)

## Architecture

```
test -> environment -> generator -> driver -> [and_if] -> DUT (and_gate)
                                                  |
                              input_monitor / output_monitor -> scoreboard
```

| File | Role |
|---|---|
| `and_gate.sv` | DUT, [width, e.g. 2 inputs, 1 output] |
| `and_if.sv` | Interface connecting the testbench to the DUT |
| `and_pkg.sv` | Package that collects the testbench classes |
| `transaction.sv` | Randomized stimulus item |
| `generator.sv` | Creates and randomizes transactions |
| `driver.sv` | Drives transactions onto the interface |
| `input_monitor.sv` | Samples the DUT inputs |
| `output_monitor.sv` | Samples the DUT output |
| `scoreboard.sv` | Compares actual output with the expected `a & b` |
| `environment.sv` | Creates and connects all components |
| `test.sv` | Configures and runs the environment |
| `tb_top.sv` | Top module: clock, interface, DUT instance |
| `filelist.f` | Compile order |

## Results

| Metric | Value |
|---|---|
| Transactions | [your number] |
| Mismatches | [your number] |
| Result | [PASS / FAIL] |

## What I Observed

- [e.g. all four input combinations were exercised by the random stimulus]
- [a bug or timing issue you found and fixed]

## How to Run

```bash
vlog -f filelist.f
vsim -c tb_top -do "run -all; quit"
```

Simulator: **QuestaSim**