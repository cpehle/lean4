# ARM64 Backend Development Guide

## Overview

This document explains how to build, test, and debug the ARM64 native backend for Lean 4. The ARM64 backend is located in the `feat/native-backend` branch and generates native ARM64 assembly code as an alternative to the C backend.

## Quick Start

### Building the Compiler

```bash
cd /Users/pehle/dev/lean4/build/release
cmake --build . --target stage1 -j8
```

Build times:
- Full rebuild: ~2-5 minutes
- Incremental: ~30-60 seconds

### Running Tests

#### Using ctest (Recommended)

Run all compiler tests:
```bash
cd /Users/pehle/dev/lean4/build/release/stage1
ctest -R "^leancomptest" -j4 --output-on-failure --timeout 60
```

Run specific test:
```bash
ctest -R "leancomptest_closure_bug4" --output-on-failure
```

Re-run only failed tests:
```bash
ctest --rerun-failed --output-on-failure
```

#### Using test scripts directly

Single test with ARM64 backend:
```bash
cd /Users/pehle/dev/lean4/tests/compiler
bash test_single_arm64.sh closure_bug4.lean
```

Single test using standard infrastructure:
```bash
export LEAN_CC=../../build/release/stage1/bin/leanc
export LEAN_OPTS="--arm64"
export EXT=".arm64"
bash test_single.sh closure_bug4.lean
```

#### Manual compilation

Compile to ARM64 assembly:
```bash
../../build/release/stage1/bin/lean --arm64=output.s input.lean
```

Compile and link:
```bash
../../build/release/stage1/bin/lean --arm64=output.s input.lean
../../build/release/stage1/bin/leanc -o output output.s runtime_bridge.c
```

## Test Infrastructure

### Test Organization

- **Location**: `tests/compiler/`
- **Total tests**: 80+ `.lean` files
- **Tests with expected output**: 77 (`.lean.expected.out`)
- **Current pass rate**: 50/82 (61%)

### Test Execution Flow

1. **Compile with ARM64 backend**: `lean --arm64=test.s test.lean`
2. **Generate shim**: C wrapper for `main` function
3. **Link**: Combine assembly, shim, and runtime bridge with Lean libraries
4. **Execute**: Run binary and capture output
5. **Compare**: Diff produced output vs expected output

### Key Test Files

- `test_single.sh`: Generic test runner (works with C and ARM64 backends)
- `test_single_arm64.sh`: ARM64-specific test runner
- `runtime_bridge.c`: Runtime function wrappers for ARM64 assembly
- `common.sh`: Shared test utilities

### Runtime Bridge

The `runtime_bridge.c` file provides exported wrappers for Lean runtime functions. This is necessary because:

1. Many runtime functions are `static inline` in `lean/lean.h`
2. ARM64 assembly needs callable symbols (not inline macros)
3. The bridge follows a pattern:
   ```c
   #define lean_function lean_function_inline
   #include <lean/lean.h>
   #undef lean_function

   LEAN_EXPORT return_type lean_function(params) {
     return lean_function_inline(params);
   }
   ```

**Currently implemented wrappers**:
- Memory: `lean_alloc_ctor`, `lean_ctor_set`, `lean_alloc_closure`, `lean_closure_set`
- Reference counting: `lean_inc`, `lean_inc_n`, `lean_inc_ref`, `lean_dec`, `lean_dec_ref`
- Arrays: `lean_array_*` (fget, fset, set, pop, get, etc.)
- Nat operations: `lean_nat_dec_le`, `lean_nat_dec_lt`, `lean_nat_mod`, `lean_nat_shiftr`
- Usize operations: `lean_usize_dec_eq`, `lean_usize_of_nat`, `lean_usize_to_nat`
- String operations: `lean_string_dec_eq`, `lean_string_dec_lt`
- Type conversions: `lean_uint64_to_nat`, `lean_uint64_of_nat`, `lean_uint8_to_nat`
- Task operations: `lean_task_spawn`, `lean_task_get_own`

## Architecture

### Key Components

```
src/Lean/Compiler/Backend/
├── ARM64.lean              # ARM64 instruction definitions
├── RegisterAlloc.lean      # Linear scan register allocation
├── InstrSelect.lean        # IR → ARM64 instruction selection
└── EmitARM64.lean          # Assembly code emission
```

### Compilation Pipeline

```
Lean IR → SSA Form → Instruction Selection → Register Allocation → Assembly Emission
```

1. **SSA Form** (`IR.SSA`): Convert IR to static single assignment
2. **Instruction Selection** (`InstrSelect`): Map IR operations to ARM64 instructions
3. **Register Allocation** (`RegisterAlloc`): Assign virtual registers to physical registers
4. **Emission** (`EmitARM64`): Generate final assembly code

### ARM64 Calling Convention

**Register usage**:
- `x0-x7`: First 8 parameters (caller-saved)
- `x8`: Indirect result location (caller-saved)
- `x9`: Scratch register (used for conflict resolution)
- `x19-x28`: Callee-saved (used for parameters 0-9 in our convention)
- `x29`: Frame pointer (FP)
- `x30`: Link register (LR)
- `sp`: Stack pointer

**Parameter passing**:
- Params 0-7: Passed in `x0-x7`, saved to `x19-x26`
- Params 8-9: Passed in `x0-x1` (after earlier params), saved to `x27-x28`
- Params 10+: Passed on stack at `[x29, #16 + (n-8)*8]`, accessed directly (not copied)

**Stack layout**:
```
[x29, #0]    ← Caller's FP
[x29, #8]    ← Return address (LR)
[x29, #16]   ← Stack param 8 (param index 10)
[x29, #24]   ← Stack param 9 (param index 11)
...
```

### Scalar Boxing/Unboxing

Lean uses tagged pointers to distinguish scalars from heap objects:
- **Boxed scalar**: `(value << 1) | 1` (odd = scalar)
- **Heap pointer**: Even address (low bit = 0)

**ARM64 implementation**:
```assembly
; Boxing (value in source, result in dest):
lsl dest, source, #1    ; Shift left by 1
orr dest, dest, #1      ; Set low bit

; Unboxing (boxed value in source, result in dest):
asr dest, source, #1    ; Arithmetic shift right by 1
```

## Common Issues and Solutions

### 1. Missing Runtime Symbols

**Symptom**:
```
Undefined symbols for architecture arm64:
  "_lean_some_function", referenced from:
```

**Solution**:
Add wrapper to `tests/compiler/runtime_bridge.c`:

```c
// In defines section:
#define lean_some_function lean_some_function_inline

// After #include <lean/lean.h>, in undefs section:
#undef lean_some_function

// In functions section:
LEAN_EXPORT return_type lean_some_function(param_types) {
  return lean_some_function_inline(params);
}
```

Check the function signature in `lean/lean.h` to get the correct types.

### 2. Assembly Syntax Errors

**Symptom**:
```
test.s:123:1: error: unknown directive
.Lfn_start_forIn'Unsafe.loop:
```

**Cause**: Function names with special characters (apostrophes, dots) used as labels.

**Solution**: Already implemented via `sanitizeForLabel` in `InstrSelect.lean` which replaces `'` with `_`.

### 3. Stack Parameter Passing Issues

**Symptom**: Crashes or wrong values when calling functions with >10 parameters.

**Cause**: Stack parameters (10+) not being correctly loaded from caller's frame.

**Solution**: Already fixed in commit `44ba96c204`. The `getParameterIndex?` helper identifies stack parameters and loads them from `[x29, #offset]`.

**Key code** (`InstrSelect.lean:814-827`):
```lean
let paramIdx? ← getParameterIndex? v
match paramIdx? with
| some paramIdx =>
  if paramIdx >= 10 then
    -- Load from caller's frame
    let callerOffset := Int.ofNat (16 + (paramIdx - 8) * 8)
    emit (Instr.ldr (.phys PhysReg.x8) (.mem (.phys PhysReg.x29) callerOffset))
    emit (Instr.str (.phys PhysReg.x8) (.mem (.phys PhysReg.sp) offset))
```

### 4. Parameter Clobbering

**Symptom**: Values getting corrupted when a register is reused.

**Cause**: Constructor allocation overwrites a register still needed for a parameter.

**Solution**: Already fixed in commit `a5a7186a46`. Conflict detection saves conflicting values to `x9`:

```lean
match conflictVar with
| some v =>
  emit (Instr.comment s!"save vreg{v.idx} from {tempReg} to x9")
  emit (Instr.mov (.phys PhysReg.x9) (.reg tempReg))
```

### 5. macOS Version Warnings

**Symptom**:
```
ld: warning: object file (...) was built for newer 'macOS' version (15.3)
    than being linked (15.0)
```

**Solution**: Update `-mmacosx-version-min=15.3` in test scripts (already done).

### 6. 0-Parameter Functions

**Symptom**: Segfault when accessing 0-parameter function results.

**Cause**: 0-parameter functions should be emitted as global pointer variables, not functions.

**Solution**: Already implemented. All 0-param defs are emitted as:
```assembly
.data
.globl _l_function_name
_l_function_name:
  .quad 0           ; Pointer to initialized value

; Separate __init_ function to initialize:
__init_l_function_name:
  ; ... initialization code ...
```

### 7. Test Failures Due to Incorrect Output

**Current Status**: 32 tests fail with incorrect output but compile successfully.

**Common causes**:
- **Arithmetic bugs**: Incorrect implementation of Nat operations (e.g., `nat_shiftr`)
- **Data structure bugs**: Wrong field access, incorrect constructor handling
- **Type confusion**: Scalar vs object type mismatches
- **Floating point**: Unimplemented or incorrect FP operations

**Debugging approach**:
1. Compare ARM64 assembly with C backend assembly
2. Use `lldb` to debug at runtime:
   ```bash
   LIB_DIR=/path/to/lean4/build/release/stage1/lib/lean \
   DYLD_LIBRARY_PATH="$LIB_DIR" \
   lldb test.arm64.out -o "r" -o "bt 30" -o "q"
   ```
3. Check specific instruction patterns in generated assembly
4. Add debug comments in `InstrSelect.lean` using `emit (Instr.comment "...")`

## Debugging Workflow

### Inspecting Generated Assembly

```bash
cd tests/compiler
../../build/release/stage1/bin/lean --arm64=debug.s test.lean
less debug.s  # or your preferred viewer
```

### Comparing with C Backend

```bash
# Generate both versions
../../build/release/stage1/bin/lean --arm64=test_arm64.s test.lean
../../build/release/stage1/bin/lean test.lean  # Generates test.c

# Compare outputs
diff test_arm64.s test.c
```

### Runtime Debugging with lldb

```bash
# Compile with debug info
bash test_single_arm64.sh test.lean

# Debug
LIB_DIR=/path/to/lean4/build/release/stage1/lib/lean
DYLD_LIBRARY_PATH="$LIB_DIR" lldb test.lean.arm64.out

# In lldb:
(lldb) b main
(lldb) r
(lldb) bt        # Backtrace
(lldb) register read
(lldb) x/10g $x20  # Examine memory at x20
(lldb) dis -f      # Disassemble current function
```

### Adding Debug Output

In `InstrSelect.lean`:
```lean
emit (Instr.comment s!"DEBUG: variable {v.idx} in register {reg}")
```

This appears in generated assembly and helps track data flow.

## Performance Considerations

### Current Optimizations

1. **Inline scalar boxing**: No function calls for box/unbox operations
2. **Register allocation**: Linear scan algorithm minimizes spills
3. **Callee-saved registers**: Parameters 0-9 stay in registers across calls
4. **Direct stack access**: Parameters 10+ aren't copied, accessed directly

### Known Performance Issues

1. **No tail call optimization implemented yet** (labels exist but not fully utilized)
2. **Conservative register allocation**: Could be more aggressive
3. **No instruction scheduling**: Instructions emitted in IR order
4. **No peephole optimizations**: Redundant mov instructions not eliminated

## Testing Best Practices

### Adding New Tests

1. Create `test.lean` with expected behavior
2. Generate expected output with C backend:
   ```bash
   ../../build/release/stage1/bin/lean test.lean
   ../../build/release/stage1/bin/leanc -o test test.c
   ./test > test.lean.expected.out
   ```
3. Test with ARM64 backend:
   ```bash
   bash test_single_arm64.sh test.lean
   ```

### Updating Test Expectations

If ARM64 backend behavior changes intentionally:
```bash
# Run test
bash test_single_arm64.sh test.lean

# If output is correct, update expectation:
cp test.lean.produced.out test.lean.expected.out
```

**Warning**: Always verify the output is actually correct before updating!

### Mass Testing

Run all tests and save results:
```bash
cd build/release/stage1
ctest -R "^leancomptest" -j4 --timeout 60 2>&1 | tee test_results.log

# Check summary:
tail -50 test_results.log

# Re-run failures verbosely:
ctest --rerun-failed --output-on-failure
```

## Current Status (as of latest commit)

### Passing Tests (50/82 = 61%)

All basic functionality works:
- Constructor allocation and field access
- Function calls (including >10 parameters)
- Closures with many captured values
- String operations
- Array operations
- Basic arithmetic
- Memory management (inc/dec)

### Failing Tests (32/82)

Most failures are **logic bugs** in generated code, not compilation errors:

**Categories**:
1. **Arithmetic operations** (8 tests): `nat_shiftr`, `overflow1-3`, `uint64_arith`, etc.
2. **Data structures** (10 tests): `rbmap_library`, `phashmap*`, `trie`, `uset`, etc.
3. **Advanced features** (8 tests): `float`, `init`, `thunk`, `partial`, etc.
4. **ARM64-specific** (6 tests): `arm64_basic`, `arm64_test`, `arm64_factorial_debug`, etc.

### Recent Fixes

- ✅ Stack parameter passing for functions with >10 params
- ✅ Parameter clobbering prevention in constructor allocation
- ✅ Assembly label escaping for apostrophes in function names
- ✅ Inline scalar boxing/unboxing
- ✅ 0-parameter function emission as global pointers
- ✅ Runtime function wrapper infrastructure

## Contributing

### Before Submitting Changes

1. **Build successfully**: `make -j8`
2. **Run tests**: `ctest -R "^leancomptest" -j4`
3. **Check for regressions**: Compare test results with before/after
4. **Add runtime wrappers**: If you use new Lean runtime functions
5. **Update this guide**: If you change architecture or fix major issues

### Commit Message Format

```
<type>(compiler): <short description>

<detailed explanation of what changed and why>

<optional: test results, performance impact, breaking changes>
```

Types: `feat`, `fix`, `refactor`, `test`, `docs`, `perf`

### Code Locations for Common Changes

- **Add new instruction**: `src/Lean/Compiler/Backend/ARM64.lean`
- **Change instruction selection**: `src/Lean/Compiler/Backend/InstrSelect.lean`
- **Modify register allocation**: `src/Lean/Compiler/Backend/RegisterAlloc.lean`
- **Update assembly emission**: `src/Lean/Compiler/Backend/EmitARM64.lean`
- **Add runtime wrapper**: `tests/compiler/runtime_bridge.c`

## References

- [ARM64 Architecture Reference](https://developer.arm.com/documentation/ddi0487/latest)
- [ARM64 ABI](https://github.com/ARM-software/abi-aa/blob/main/aapcs64/aapcs64.rst)
- [Lean Runtime Documentation](https://github.com/leanprover/lean4/tree/master/src/runtime)
- [Lean Compiler IR](https://github.com/leanprover/lean4/blob/master/src/Lean/Compiler/IR/Basic.lean)

## Useful Commands Cheat Sheet

```bash
# Full rebuild
cd build/release && cmake --build . --target stage1 -j8

# Run all compiler tests
cd build/release/stage1 && ctest -R "^leancomptest" -j4

# Run single test
cd tests/compiler && bash test_single_arm64.sh test.lean

# Generate assembly only
../../build/release/stage1/bin/lean --arm64=out.s input.lean

# Debug with lldb
LIB_DIR=../../build/release/stage1/lib/lean \
DYLD_LIBRARY_PATH="$LIB_DIR" lldb test.arm64.out

# Compare ARM64 vs C assembly (after compilation)
diff -u test.c test.arm64.s | less

# Check for undefined symbols
nm test.arm64.out | grep "U "

# Git log of ARM64 commits
git log --oneline --grep="ARM64\|arm64\|native"

# Clean build artifacts
cd build/release && make clean

# Regenerate CMake (if test list changed)
cmake build/release/stage1
```

## Troubleshooting Checklist

When a test fails:

- [ ] Does it compile? (Check for syntax errors)
- [ ] Does it link? (Check for undefined symbols → add to runtime_bridge.c)
- [ ] Does it crash? (Use lldb to find crash location)
- [ ] Wrong output? (Compare ARM64 vs C backend assembly)
- [ ] Is it ARM64-specific test? (May need to update expectations)
- [ ] Are you using >10 parameters? (Check stack parameter handling)
- [ ] Are you using 0-param functions? (Should be global pointers)
- [ ] Function names with `'`? (Should be escaped to `_`)

---

**Last Updated**: October 22, 2025
**ARM64 Backend Version**: feat/native-backend branch
**Test Pass Rate**: 50/82 (61%)
