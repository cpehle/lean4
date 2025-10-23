# ARM64 Backend Crash Investigation

## Summary

The ARM64 backend has 5 crashing tests that all exhibit similar behavior: segfault in `lean_mark_persistent` during module initialization.

## The Crash Pattern

### Symptoms
- Crashes occur in `lean_mark_persistent` at offset +148
- Error: `EXC_BAD_ACCESS (code=1, address=0x0)`
- The instruction that crashes: `ldr w8, [x19]` where x19 = 0x0000000000000000

### Affected Tests
- arm64_basic.lean (segfault 11, exit code 139)
- expr.lean (abort trap 6, exit code 134 - different error: "print function is not available")
- init.lean (segfault 11)
- initUnboxed.lean (segfault 11)
- rbmap_library.lean (segfault 11)

### Root Cause Analysis

The crash happens during module initialization when calling `lean_mark_persistent` on module constants. The `lean_mark_persistent` function traverses the object graph of a Lean object, but encounters a NULL pointer (x19=0x0) when trying to dereference a field within one of the constructed objects.

#### Crash Location in arm64_basic.lean

The crash occurs when marking `_l_testAdd___closed__14` persistent:

```assembly
.Linit_dec_done_3:
  // ... many successful initializations ...

  // Initialize _l_testAdd___closed__14
  bl __init_l_testAdd___closed__14
  adrp x8, _l_testAdd___closed__14@PAGE
  add x8, x8, _l_testAdd___closed__14@PAGEOFF
  str x0, [x8]

  // Mark persistent - THIS IS WHERE IT CRASHES
  adrp x8, _l_testAdd___closed__14@PAGE
  add x8, x8, _l_testAdd___closed__14@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent  // <-- Crash inside here at offset +148
```

#### What __init_l_testAdd___closed__14 Does

From the C backend, this function should create:
```c
static lean_object* _init_l_testAdd___closed__14() {
  lean_object* x_1; uint8_t x_2; lean_object* x_3; lean_object* x_4;
  x_1 = lean_box(7);                    // Tagged integer: (7<<1)|1 = 15
  x_2 = 0;
  x_3 = lean_unsigned_to_nat(0u);       // Converts to Lean nat object
  x_4 = lean_alloc_ctor(0, 2, 1);       // Allocate ctor with 2 obj fields, 1 scalar byte
  lean_ctor_set(x_4, 0, x_3);           // Set field 0 to nat object
  lean_ctor_set(x_4, 1, x_1);           // Set field 1 to boxed int (15)
  lean_ctor_set_uint8(x_4, sizeof(void*)*2, x_2);  // Set scalar field to 0
  return x_4;
}
```

Our ARM64 backend emits:
```assembly
__init_l_testAdd___closed__14:
  // ... prologue ...
  mov x27, #15                          // x27 = boxed integer 15
  mov x22, #0                           // x22 = 0 (for scalar field)
  movz x0, #0, lsl #0
  bl _lean_unsigned_to_nat_export      // Create nat object
  mov x25, x0                           // x25 = nat object

  // Allocate constructor
  mov x0, #0                            // tag = 0
  mov x1, #2                            // num_objs = 2
  mov x2, #1                            // scalar_sz = 1
  bl _lean_alloc_ctor
  mov x23, x0                           // x23 = allocated object

  // Set fields
  mov x0, x23
  mov x1, #0
  mov x2, x25                           // Set field 0 = nat object (CORRECT)
  bl _lean_ctor_set

  mov x0, x23
  mov x1, #1
  mov x2, x27                           // Set field 1 = 15 (CORRECT - boxed int)
  bl _lean_ctor_set

  str x22, [x23, #16]                   // Set scalar field directly (CORRECT)

  mov x0, x23                           // Return the object
  // ... epilogue ...
  ret
```

The emitted code looks correct! So why does `lean_mark_persistent` crash?

### The lean_mark_persistent Function

From disassembly, at offset +148, `lean_mark_persistent` does:
```assembly
ldr w8, [x19]  // Load reference count from object pointed to by x19
```

But x19 is NULL. This means `lean_mark_persistent` found a NULL pointer while traversing the object graph. The function pushes objects onto a stack and processes them iteratively:

```assembly
// At offset +132
ldur x19, [x8, #-0x8]    // Load object pointer from stack
// At offset +144
tbnz w19, #0x0, ...      // Check if it's a scalar (tagged integer)
// At offset +148
ldr w8, [x19]            // If not scalar, load ref count - CRASH if x19 is NULL!
```

So the stack contains a NULL pointer, which shouldn't happen. Either:
1. One of the ctor fields was set to NULL
2. A runtime function returned NULL
3. There's memory corruption

### Memory Investigation

When the crash occurs, inspecting the stack shows:
```
sp+0x20: 0x0000000000000001 0x0000000000000000
```

The value `0x0000000000000001` is a boxed 0 (scalar value `(0<<1)|1 = 1`), which is a valid tagged integer. But somehow a NULL pointer got into the object graph being traversed by `lean_mark_persistent`.

## Fix Applied (Partial Solution)

### Issue: Inconsistent Global Variable Access Pattern

In `EmitARM64.lean` lines 556-579, there was an inconsistency in how we emit stores to global variables:

**Before:**
```lean
emitLn s!"  adrp x8, {constName}@PAGE"
match ty with
| .uint8 =>
  emitLn s!"  add x8, x8, {constName}@PAGEOFF"
  emitLn "  strb w0, [x8]"
| .uint16 =>
  emitLn s!"  add x8, x8, {constName}@PAGEOFF"
  emitLn "  strh w0, [x8]"
| _ =>
  emitLn s!"  str x0, [x8, {constName}@PAGEOFF]"  // INCONSISTENT!
```

For uint8/uint16, we used `ADD` to compute the full address, then stored to `[x8]`.
For other types, we tried to use `[x8, @PAGEOFF]` directly in the store instruction.

While the assembler accepts both forms and converts them correctly (the @PAGEOFF becomes an immediate offset), using a consistent pattern is better for maintainability and correctness.

**After:**
```lean
emitLn s!"  adrp x8, {constName}@PAGE"
emitLn s!"  add x8, x8, {constName}@PAGEOFF"
match ty with
| .uint8 =>
  emitLn "  strb w0, [x8]"
| .uint16 =>
  emitLn "  strh w0, [x8]"
| .uint32 =>
  emitLn "  str w0, [x8]"
| _ =>
  emitLn "  str x0, [x8]"
```

Also fixed the load pattern when marking persistent:
```lean
if ty.isObj then
  emitLn "  // Mark persistent"
  emitLn s!"  adrp x8, {constName}@PAGE"
  emitLn s!"  add x8, x8, {constName}@PAGEOFF"  // Now consistent
  emitLn "  ldr x0, [x8]"
  emitLn "  bl _lean_mark_persistent"
```

This makes the code more consistent and easier to reason about. The assembler verified that both forms work identically (the @PAGEOFF is converted to an immediate offset like #0x298).

### Result

After applying this fix, the code is more consistent and matches the pattern used by the C backend's assembly output. However, **the crash still persists**, confirming that the global variable access pattern was not the root cause.

## Next Steps for Investigation

The crash persists because the root cause is not the global variable access pattern, but rather:

1. **Check runtime function implementations**: Verify that `lean_alloc_ctor`, `lean_ctor_set`, `lean_unsigned_to_nat_export`, etc. are working correctly in runtime_bridge.c

2. **Compare runtime call sequences**: Trace exactly what runtime calls are made by ARM64 vs C backend during initialization

3. **Add debug logging**: Insert print statements in the initialization functions to see what values are being passed to runtime functions

4. **Check register preservation**: Verify that callee-saved registers (x19-x28) are being properly preserved across function calls

5. **Investigate scalar vs pointer discrimination**: The `tbnz w19, #0x0` instruction checks if the value is a tagged scalar. Perhaps there's an issue with how we're creating or passing boxed integers.

6. **Test with simpler init functions**: Create a minimal test case with just one or two simple constants to isolate the issue

## How to Recompile and Test

### Recompiling the Compiler

From the Lean4 root directory:

```bash
# Rebuild the compiler (takes a few minutes)
cd /Users/pehle/dev/lean4
cmake --build build/release

# The build will compile:
# - The Lean compiler itself
# - The runtime library
# - All standard libraries
```

After making changes to:
- `src/Lean/Compiler/Backend/EmitARM64.lean`
- `src/Lean/Compiler/Backend/InstrSelect.lean`
- `src/Lean/Compiler/Backend/ARM64.lean`

You must rebuild the compiler for changes to take effect.

### Running Tests

#### Run All ARM64 Backend Tests

```bash
cd tests/compiler
bash test_single_arm64.sh <testname>.lean
```

Examples:
```bash
# Test a specific file
bash test_single_arm64.sh arm64_basic.lean
bash test_single_arm64.sh str.lean
bash test_single_arm64.sh expr.lean

# The script will:
# 1. Compile the .lean file to ARM64 assembly (.arm64.s)
# 2. Generate a C shim for the main function
# 3. Compile and link everything with runtime_bridge.c
# 4. Run the binary and compare output to expected
```

#### Manual Compilation (for debugging)

```bash
cd tests/compiler

# Step 1: Compile to ARM64 assembly
../../build/release/stage1/bin/lean --arm64=test.lean.arm64.s test.lean

# Step 2: Compile and link
../../build/release/stage1/bin/leanc test.lean.arm64.s runtime_bridge.c -o test.out

# Step 3: Run
DYLD_LIBRARY_PATH=../../build/release/stage1/lib/lean ./test.out
```

#### Debugging with LLDB

```bash
# Set library path for dylib loading
LIB_DIR=/Users/pehle/dev/lean4/build/release/stage1/lib/lean
DYLD_LIBRARY_PATH="$LIB_DIR" lldb test.out

# Common lldb commands:
(lldb) b _lean_mark_persistent         # Breakpoint on function
(lldb) b 0x100004c94                   # Breakpoint at address
(lldb) r                               # Run
(lldb) bt                              # Backtrace
(lldb) register read                   # Show all registers
(lldb) p/x $x0                         # Print register in hex
(lldb) dis -s 0x100004c94 -c 20        # Disassemble 20 instructions
(lldb) memory read $sp                 # Read memory at stack pointer
(lldb) ni                              # Next instruction
(lldb) si                              # Step into
(lldb) finish                          # Run until function returns
(lldb) c                               # Continue
(lldb) q                               # Quit
```

#### Comparing C Backend vs ARM64 Backend

```bash
# Generate C code
../../build/release/stage1/bin/lean -c test.c test.lean

# Generate C assembly for comparison
../../build/release/stage1/bin/leanc -S test.c -o test.c.s

# Generate ARM64 assembly
../../build/release/stage1/bin/lean --arm64=test.arm64.s test.lean

# Compare the two assembly outputs
diff test.c.s test.arm64.s | less
```

#### Quick Test Status Check

```bash
# Run all tests and see summary
cd tests/compiler
for f in *.lean; do
    echo -n "Testing $f: "
    bash test_single_arm64.sh "$f" >/dev/null 2>&1 && echo "✓ PASS" || echo "✗ FAIL"
done
```

## Test Status (Current)

- **74/89 tests passing (83%)**
- **15 failing tests:**
  - 2 syntax errors (not ARM64 specific)
  - 5 crashes (segfault/abort during initialization) ← **FOCUS HERE**
  - 1 Unicode logic bug (str.lean isPrefixOf)
  - 7 other logic bugs

### Failing Tests by Category

**Crashes (5):**
- arm64_basic.lean - segfault in lean_mark_persistent
- expr.lean - abort with "print function not available"
- init.lean - segfault
- initUnboxed.lean - segfault
- rbmap_library.lean - segfault

**Logic Bugs (7):**
- arm64_uint64_arith.lean - wrong arithmetic results
- phashmap tests (3 tests) - logic errors
- print_error.lean - returns error code 0 instead of 13
- uint_fold.lean - wrong output
- uset.lean - logic bugs

**Other (2):**
- simple_loop.lean - syntax not supported (both backends fail)
- ssa_test.lean - syntax not supported (both backends fail)

**Fixed Unicode Bug (1):**
- str.lean - isPrefixOf returns false for Unicode strings (one assertion still failing)

## Files Modified

### src/Lean/Compiler/Backend/EmitARM64.lean
- Lines 556-579: Changed global variable store/load pattern to consistently use ADRP + ADD + store/load, rather than mixing ADD with direct @PAGEOFF in memory operands

## Related Investigation Notes

The crash investigation revealed that:
1. The global variable access pattern is now consistent and correct
2. The initialization function assembly looks correct
3. The runtime function calls appear correct
4. But somehow a NULL pointer gets into the object graph during initialization
5. This suggests a deeper issue with runtime function implementations or calling conventions

The fix applied improves code quality but doesn't resolve the crash, confirming the root cause lies elsewhere.
