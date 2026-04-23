# Lab 01 – Analyze vs Elaborate vs Read File

## Objective
This lab explains the difference between `analyze`, `elaborate`, and `read_file` commands in RTL synthesis flow.

---

## Commands Overview

### analyze
- Reads RTL files and checks syntax
- Stores design in WORK library
- Does NOT create final design
- Requires `elaborate` afterward

---

### elaborate
- Builds design hierarchy
- Resolves module connections
- Allows parameter modification before linking
- **Does NOT require `link` command by itself**

---

### read_file
- Combines `analyze` + `elaborate` in one step
- Faster but less flexible
- **Requires `link` command to finalize the design**

---

## Key Difference

- `analyze + elaborate` → step-by-step flow, flexible, supports parameter changes, no implicit linking issue  
- `read_file` → single step flow, faster, but requires `link` to complete the design

---

## Conclusion
The `analyze` and `elaborate` flow provides more control over the synthesis process, while `read_file` simplifies loading but requires an additional `link` step to complete the design setup.
