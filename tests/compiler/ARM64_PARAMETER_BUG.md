# ARM64 Backend Parameter Clobbering Bug

## Problem Summary

The ARM64 backend has a critical bug where function parameters are being clobbered by local variables when functions have more than 10 parameters. The test `closure_bug1.lean` demonstrates this issue.

### Test Case
- Function creates a closure capturing 17 values (x1 through x17) plus 1 runtime argument
- Expected output: `[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 0, 0]`
- Actual output: `[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 0, 0, 0]`
- Element 17 is missing (value from first parameter)

## Root Cause

The lambda function `f._lam_0` receives 18 parameters:
- Parameters 0-7: Passed in registers x0-x7 (ARM64 ABI)
- Parameters 8-9: Passed on stack, loaded into x27-x28 (callee-saved)
- Parameters 10-17: Remain on caller's stack at [x29, #offset]

**The Bug:**
1. The register allocator pre-allocates parameters 0-9 to callee-saved registers x19-x28
2. This marks ALL 10 callee-saved registers as "busy" with parameters
3. When local variables need registers, the allocator runs out of free callee-saved registers
4. The instruction selector generates code that reuses x19 (which holds parameter 0) as a temporary
5. This clobbers parameter 0, causing the value to be lost

**Example from generated assembly (line 808-814):**
```assembly
.Lfn_start_f._lam_0:
  mov x19, x0              # Save parameter 0 to x19
  ...
  bl _lean_alloc_ctor
  mov x19, x0              # BUG: Overwrites parameter 0!
  str x19, [sp, #72]
```

## Attempted Fixes

### Fix 1: Stack Slot Reservation
**File:** `src/Lean/Compiler/Backend/RegisterAlloc.lean` (lines 210-213)

Reserve stack slot numbers for parameters 10+ to prevent local variables from using conflicting offsets:
```lean
let numStackParams := if params.size > calleeSavedRegs.size then params.size - calleeSavedRegs.size else 0
state := { state with nextStackSlot := state.nextStackSlot + numStackParams }
```

**Result:** Prevents stack slot conflicts but doesn't fix parameter clobbering.

### Fix 2: Stack Parameter Access
**File:** `src/Lean/Compiler/Backend/InstrSelect.lean` (lines 214-234)

Load stack parameters on-demand using scratch register x9:
```lean
-- Load stack parameter from [x29, #offset] into x9
let tmp := Reg.phys PhysReg.x9
emit (Instr.ldr tmp (.mem (.phys PhysReg.x29) stackOffset))
return tmp
```

**Result:** Stack parameters load correctly, but register parameters still get clobbered.

## Current Status

**✅ FIXED** - The issue has been resolved with a generic conflict detection solution in InstrSelect.lean (lines 604-702):

### The Solution
When allocating a constructor:
1. **Detect conflicts** - Check if any constructor argument uses the same register as the destination
2. **Save to scratch register** - If conflict detected, save the argument value to x9 before allocation
3. **Use saved value** - When setting constructor fields, use the value from x9 for the conflicting argument

This generic approach handles the case where parameter registers get reused as constructor destinations, preventing the parameter value from being clobbered.

**Key code in InstrSelect.lean:**
```lean
-- Detect if any argument conflicts with destination register
let mut conflictVar : Option VarId := none
match pointerReg? with
| some tempReg =>
  for arg in args do
    match arg with
    | .var v =>
      let vReg ← varToReg v
      if vReg == tempReg then
        conflictVar := some v
        break
    | .erased => pure ()
| none => pure ()

-- Save conflicting value before constructor allocation
match conflictVar with
| some v =>
  emit (Instr.comment s!"save vreg{v.idx} from {tempReg} to x9 (constructor will overwrite {tempReg})")
  emit (Instr.mov (.phys PhysReg.x9) (.reg tempReg))
| none => pure ()
```

## How to Build and Test

### Build the Compiler
```bash
cd /Users/pehle/dev/lean4
cmake --build build/release --target stage1
```

### Run Single Test
```bash
cd /Users/pehle/dev/lean4/tests/compiler
bash test_single_arm64.sh closure_bug1.lean
```

### Expected Output (Test Now Passes ✅)
```
running ARM64 backend...
(no error message - test passes silently)
```

Output file contains:
```
[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 0, 0]
```

All elements including element 17 (from parameter 0) are now present!

### View Generated Assembly
```bash
cat /Users/pehle/dev/lean4/tests/compiler/closure_bug1.lean.arm64.s
```

Look for function `_l_f___lam__0` around line 777.

### Compare with C Backend
```bash
cd /Users/pehle/dev/lean4
build/release/stage1/bin/lean --c=tests/compiler/closure_bug1_c.c tests/compiler/closure_bug1.lean
cat tests/compiler/closure_bug1_c.c
```

The C backend correctly handles all 18 parameters without clobbering.

## Related Files

- `src/Lean/Compiler/Backend/RegisterAlloc.lean` - Register allocation
- `src/Lean/Compiler/Backend/InstrSelect.lean` - Instruction selection
- `tests/compiler/closure_bug1.lean` - Test case
- `tests/compiler/test_single_arm64.sh` - Test runner
