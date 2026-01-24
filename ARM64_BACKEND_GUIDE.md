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
- Arrays: `lean_array_*` (fget, fset, set, pop, get, etc.), `lean_byte_array_get`
- Nat operations: `lean_nat_dec_le`, `lean_nat_dec_lt`, `lean_nat_mod`, `lean_nat_shiftr`
- Usize operations: `lean_usize_*` (dec_eq, dec_le, of_nat, to_nat, land, shift_left, shift_right)
- String operations: `lean_string_dec_eq`, `lean_string_dec_lt`, `lean_string_length`
- Type conversions: `lean_uint*_to_nat`, `lean_uint*_of_nat` (8/32/64), `lean_uint64_to_usize`
- Boxing/Unboxing: `lean_box`, `lean_unbox`, `lean_box_uint*`, `lean_unbox_uint*` (32/64), `lean_box_usize`, `lean_unbox_usize`, `lean_box_float`, `lean_unbox_float`, `lean_box_float32`, `lean_unbox_float32`
- Float operations: `lean_float_*` (add, sub, mul, div, negate, beq, decLe, decLt)
- Int operations: `lean_int_*` (add, mul, dec_eq, ediv, emod)
- Task operations: `lean_task_spawn`, `lean_task_get_own`
- Logic: `lean_strict_and`, `lean_strict_or`

## Architecture

### Key Components

```
src/Lean/Compiler/Backend/
├── ARM64.lean              # ARM64 instruction definitions
├── ARM64/Liveness.lean     # Liveness analysis + intervals
├── ARM64/RegAlloc/LinearScan.lean      # Linear scan register allocation
├── InstrSelect.lean        # IR → ARM64 instruction selection
└── EmitARM64.lean          # Assembly code emission
```

### Compilation Pipeline

```
Lean IR → SSA Form → Instruction Selection → Liveness → Register Allocation → Assembly Emission
```

1. **SSA Form** (`IR.SSA`): Convert IR to static single assignment
2. **Instruction Selection** (`InstrSelect`): Map IR operations to ARM64 instructions
3. **Liveness** (`ARM64/Liveness`): Compute live intervals and call positions
4. **Register Allocation** (`ARM64/RegAlloc/LinearScan`): Assign virtual registers to physical registers
5. **Emission** (`EmitARM64`): Generate final assembly code

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

### 5. UTF-8 String Corruption

**Symptom**: UTF-8 strings display as garbage characters (e.g., "αb" shows as "�")

**Cause**: macOS assembler doesn't correctly parse consecutive hex escapes in `.asciz` directives. For example, `.asciz "\xCE\xB1"` is parsed as `\xCE` followed by `\xB` and literal `1`, resulting in bytes `CE 1B` instead of `CE B1`.

**Solution**: Already fixed (commit 73e2f94b92). String literals now use `.byte` directives:
```assembly
; Old (broken):
.asciz "\xCE\xB1b"  ; Produces: CE 1B instead of CE B1 62

; New (correct):
.byte 0xCE, 0xB1, 0x62, 0x00  ; Produces: CE B1 62 00
```

### 6. macOS Version Warnings

**Symptom**:
```
ld: warning: object file (...) was built for newer 'macOS' version (15.3)
    than being linked (15.0)
```

**Solution**: Update `-mmacosx-version-min=15.3` in test scripts (already done).

### 7. 0-Parameter Functions

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

### 8. Test Failures Due to Incorrect Output

**Current Status**: Only 9 tests fail (90% pass rate).

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

### Test Pass Rate: 82/91 (90%)

**Recent Progress**:
- October 24, 2025: Fixed UTF-8 string bug, test infrastructure → 82/91 passing (90%)
- October 22, 2025: Fixed scalar boxing/unboxing bugs → 80/89 passing (90%)
- October 21, 2025: Initial working version → 50/82 passing (61%)

All core functionality works:
- Constructor allocation and field access ✅
- Function calls (including >10 parameters) ✅
- Closures with many captured values ✅
- String operations (including UTF-8) ✅
- Array operations ✅
- Basic arithmetic ✅
- Memory management (inc/dec) ✅
- Scalar types (UInt8/16/32/64, USize, Float, Float32) ✅
- Module initialization ✅

### Failing Tests (9/91)

**Remaining Issues**:
1. **arm64_basic.lean**: Cosmetic output difference (expected vs produced)
2. **phashmap.lean, phashmap2.lean, phashmap3.lean**: Hash map lookup failures
3. **rbmap_library.lean**: Segfault in red-black tree operations
4. **uint_fold.lean**: Incorrect constant folding for UInt operations
5. **test_str_*.lean**: Debug test files created during development (no expected output)

### Recent Fixes (October 2025)

**Critical Bugs Fixed**:
- ✅ **UTF-8 string corruption** (Oct 24): macOS assembler doesn't parse consecutive `\xhh` escapes correctly in `.asciz` directives. Fixed by using `.byte` directives with explicit hex values.
  - Impact: `str.lean` now passes, UTF-8 strings display correctly

- ✅ **Module initialization missing** (Oct 24): Test shims weren't calling `lean_initialize()` and `lean_setup_args()`, causing "print function not available" errors.
  - Impact: `expr.lean` and other Lean library-dependent tests now pass

- ✅ **Scalar boxing/unboxing mismatch** (Oct 22): ARM64 backend was treating all scalar types the same, but on 64-bit platforms:
  - UInt8/16/32: inline boxing (shift + OR)
  - UInt64/USize/Float/Float32: heap allocation via `lean_box_*`
  - Impact: `initUnboxed.lean` and other scalar-heavy tests now pass

- ✅ **UInt64 arithmetic register clobbering** (Oct 22): Operations were overwriting input registers
  - Impact: `arm64_uint64_arith.lean`, `arm64_eq_test.lean` now pass

**Infrastructure Improvements**:
- ✅ Stack parameter passing for functions with >10 params
- ✅ Parameter clobbering prevention in constructor allocation
- ✅ Assembly label escaping for apostrophes in function names
- ✅ Inline scalar boxing/unboxing implementation
- ✅ 0-parameter function emission as global pointers
- ✅ Runtime function wrapper infrastructure (runtime_bridge.c)
- ✅ Added wrappers for: float ops, int ops, byte array access, string ops

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
- **Modify register allocation**: `src/Lean/Compiler/Backend/ARM64/RegAlloc/LinearScan.lean`
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

**Last Updated**: October 24, 2025
**ARM64 Backend Version**: feat/native-backend branch
**Test Pass Rate**: 82/91 (90%)
