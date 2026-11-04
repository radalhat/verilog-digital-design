# SystemVerilog Practice

A collection of SystemVerilog examples and exercises, organized by topic. Each folder is self-contained and holds the source files for one language feature or verification concept.

## Repository Structure

| Folder | Topic |
|---|---|
| `ARRAY` | Fixed, dynamic, associative arrays and queues, plus array methods |
| `ASSERTION` | Immediate and concurrent assertions (SVA), sequences and properties |
| `CASTING` | Static and dynamic casting, `$cast`, type conversion |
| `CLASS` | Classes, inheritance, polymorphism, virtual methods |
| `COVERAGE` | Functional coverage: covergroups, coverpoints, bins, cross coverage |
| `FORK` | `fork...join`, `join_any`, `join_none`, and process control |
| `FUNCTIONS` | Functions and tasks, argument passing, return values |
| `INTERFACE` | Interfaces, modports, and clocking blocks |
| `RANDOMIZATION` | `rand`/`randc`, constraints, `randomize()`, inline constraints |
| `STRING_ENUM` | Enumerated types and their built-in methods |
| `STRING_METHOD` | Built-in string methods (`len`, `substr`, `toupper`, etc.) |
| `STRING_OPERATOR` | String operators: concatenation, comparison, replication |
| `STRING_STRUCT` | Structs (packed and unpacked) |
| `STRING_UNN` | Unions (packed and unpacked) |

## Getting Started

### Prerequisites
- A SystemVerilog simulator (e.g., ModelSim/QuestaSim, VCS, Xcelium, or Icarus Verilog for supported features)
- Or an online tool such as EDA Playground

### Running an Example

```bash
cd <FOLDER_NAME>
# Example with QuestaSim
vlog <file>.sv
vsim -c <top_module> -do "run -all; quit"
```

## Contents of Each Folder

Each folder typically contains:
- `*.sv`: example or testbench source files
- Comments in the code explaining the concept being demonstrated

## Notes

- Examples are written for learning and may be simplified.
- Feel free to modify the code and experiment.

## Author

*Your name here*

## License

*Add a license if you plan to share this publicly (e.g., MIT).*