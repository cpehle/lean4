# ARM64 Native Backend Mapping Notes

## C Backend Behavior
- The C backend emits Lean functions as plain C routines that stitch together runtime helpers; for example `l_IO_print___at___IO_println___at___main_spec__0_spec__0` sequences `lean_get_stdout`, `lean_ctor_get`, `lean_inc`, `lean_dec_ref`, and `lean_apply_2` before returning the result (`simple_final.c:35`).
- Looping and arithmetic helpers are implemented via runtime library calls such as `lean_nat_add`, `lean_nat_sub`, and `lean_nat_mul`, interleaved with explicit reference counting (`complex_test.c:140`).
- Module initializers follow a fixed pattern: call dependent module init, populate closed constants, mark them persistent, and return `lean_io_result_mk_ok(lean_box(0))` (`simple_final.c:100`).

## Expected ARM64 Sequences
- Direct field access helpers (`lean_ctor_get`, `lean_ctor_get_usize`, etc.) correspond to loads from an object header with an 8-byte stride; see the inlined `ldr` usage in `_l_IO_print___at___IO_println...` (`simple_arm64_generated.s:115`).
- Reference counting helpers map either to inline arithmetic on the header (single-threaded fast path) or to runtime calls (`_lean_inc`, `_lean_dec`, `_lean_dec_ref`). The sample assembly shows the inlined fast path using `tst`, `ldr`, `add/sub`, and `str` instructions (`simple_arm64_generated.s:117`, `simple_arm64_generated.s:126`).
- Closure invocations look up the code pointer in field 4 before indirect branching via `blr`, mirroring the `lean_apply_2` semantics in C (`simple_arm64_generated.s:131`).
- Global constant materialization mirrors the C workflow: constants reside in `.data` as zeroed pointers and are filled during the init routine (`simple_arm64_generated.s:39`).
- Partial application now uses `adrp/add` to materialise the closure entry point and pushes captured arguments through `_lean_closure_set`, yielding the same closure layout the C backend constructs (`src/Lean/Compiler/Backend/InstrSelect.lean:450`).
- Direct calls with more than eight arguments spill the extras onto a 16-byte-aligned scratch area before issuing `bl`, matching the hand-written setup in the C backend (`src/Lean/Compiler/Backend/InstrSelect.lean:402`).
- Selected UInt64 arithmetic helpers (`lean_uint64_add`, `lean_uint64_sub`, `lean_uint64_mul`) are lowered to native arithmetic instructions, avoiding jumps through the runtime (`src/Lean/Compiler/Backend/InstrSelect.lean:200`).

## Coverage Gaps in `InstrSelect`
- Arithmetic and comparison nodes still lower to runtime helpers like `lean_nat_add` because `selectExpr` lacks dedicated primitive lowering; the ARM64 backend therefore diverges from the C backend for basic math.
- Reference counting still falls back to the runtime for multi-threaded paths and object finalization; further tuning could inline the remaining slow-path handling.
- Case handling emits duplicate labels and ignores constructor parameters, so the generated control flow does not yet match the precise tag dispatch sequence produced by the C backend.
- Runtime helper coverage is partial: `tryInlineExternCall` covers boxing helpers but misses frequent routines such as `lean_inc_ref`, `lean_dec_ref`, and `lean_apply_n`, which consequently remain explicit calls in the emitted assembly.

## Integration Tasks
1. Extend `selectExpr` with dedicated arithmetic/comparison lowering so simple numeric code does not have to round-trip through the C runtime helpers.
2. Add regression coverage for the new `.pap`/`.ap` lowering, especially mixed register/stack calling sequences and indirect applications that flip over to `lean_apply_m`.
3. Inline the common reference counting fast path (with `tst/ldr/add/str`) and fall back to runtime calls only when necessary, so the generated assembly aligns with the C backend’s semantics.
4. Rework `.case` emission to follow the tag dispatch produced by C, including proper argument shuffling for each branch.
5. Audit the emitted init routine against `simple_final.c` and ensure all helpers (`lean_mark_persistent`, `lean_io_result_mk_ok`, etc.) have stable symbol names, adding stubs where the C header only provided `static inline` definitions.

## Progress Log
- Implemented exported stubs in `lean_runtime_wrappers.c` so assembly may call helpers like `_lean_nat_add` that were previously only provided as `static inline` definitions (⏱ Feb 2025).
- Prologue now loads stack-passed parameters into their allocated callee-saved registers or spill slots, removing the earlier TODO and unblocking many-argument tests (⏱ Feb 2025).

## Bugs Fixed (October 2025)

### Critical Bug #1: `isShared` Using Uninitialized Register
**Location**: `src/Lean/Compiler/Backend/InstrSelect.lean:818-825`

**Problem**: The `csel` (conditional select) instruction requires two register operands, but the code was using uninitialized `x1`:
```lean
emit (Instr.csel dstReg (.phys PhysReg.x1) (.phys PhysReg.xzr) Cond.gt)
```
This caused unpredictable behavior including infinite loops and crashes.

**Fix**: Load constant `1` into `x8` before `csel`:
```lean
emit (Instr.mov (.phys PhysReg.x8) (.imm 1))
emit (Instr.csel dstReg (.phys PhysReg.x8) (.phys PhysReg.xzr) Cond.gt)
```

### Critical Bug #2: Constructor Pointer Corruption
**Location**: `src/Lean/Compiler/Backend/InstrSelect.lean:578-608`

**Problem**: Constructor allocation followed by field setting would corrupt the constructor pointer:
1. `lean_alloc_ctor` returns pointer in `x0`
2. Code moved pointer to `dstReg` (often `x9`, a caller-saved register)
3. Calls to `lean_ctor_set` would clobber caller-saved registers (x0-x18)
4. Constructor pointer lost → segfault or memory corruption

**Root Cause**: Hardcoded physical registers conflict with ARM64 ABI calling conventions.

**Fix**: Use callee-saved `x27` to preserve constructor across function calls:
```lean
-- Allocate constructor
bl _lean_alloc_ctor
emit (Instr.mov (.phys PhysReg.x27) (.reg (.phys PhysReg.x0)))

-- Set fields (x27 preserved across calls)
for i in [:args.size] do
  emit (Instr.mov (.phys PhysReg.x0) (.reg (.phys PhysReg.x27)))
  emit (Instr.bl "lean_ctor_set")
  -- x27 still contains constructor

-- Move to destination
emit (Instr.mov dstReg (.reg (.phys PhysReg.x27)))
```

### Test Results After Fixes

| Test | Status | Notes |
|------|--------|-------|
| `arm64_simple` | ✅ PASS | Basic constants and arithmetic |
| `arm64_constructors` | ✅ PASS | Constructor allocation & field access |
| `arm64_closure` | ✅ PASS | Closures with captures |
| `arm64_arithmetic` | ✅ PASS | Nat addition & multiplication |
| `arm64_recursion` | ❌ FAIL | Stack overflow (recursion codegen bug) |
| `arm64_string` | ❌ FAIL | Missing runtime wrapper: `lean_string_length` |
| `arm64_array` | ❌ FAIL | Missing runtime wrapper: `lean_usize_dec_lt` |

**Success Rate**: 4/7 tests passing (57% → up from 0%)

## Outstanding Issues
- **Recursion bug**: Stack overflow in recursive functions, likely incorrect tail call handling or frame setup
- **Missing runtime wrappers**: Some helper functions not exported for ARM64 linking
- **Architectural limitation**: Fundamental design issue with hardcoded physical registers (see below)

## Architectural Problems & Proposed Refactoring

### Current Architecture (Problematic)

The current implementation hardcodes physical registers throughout instruction selection, leading to conflicts with the ARM64 ABI:

```
┌─────────────────────────────────────────────────────────┐
│ Instruction Selection (InstrSelect.lean)               │
│                                                         │
│ • Hardcodes x0-x7 for function arguments               │
│ • Hardcodes x0 for return values                       │
│ • Hardcodes x8 for temporaries (loadSpilledVar)        │
│ • Saves results to arbitrary physical registers        │
└─────────────────────────────────────────────────────────┘
                         ↓
┌─────────────────────────────────────────────────────────┐
│ Register Allocation (ARM64/RegAlloc/LinearScan.lean)               │
│                                                         │
│ • Assigns virtual registers to physical registers      │
│ • May assign x9 (caller-saved) to long-lived values    │
│ • Unaware of instruction selection's hardcoded choices │
└─────────────────────────────────────────────────────────┘
                         ↓
                    CONFLICT!
          (Caller-saved registers clobbered by calls)
```

**Problems**:
1. **Register clobbering**: Register allocator assigns caller-saved registers (x0-x18) to values that must survive function calls
2. **No ABI awareness**: Instruction selection hardcodes registers without coordinating with the allocator
3. **Brittle workarounds**: Each bug requires ad-hoc fixes (e.g., hardcoding x27 for constructors)
4. **Poor code quality**: Unnecessary register moves and spills

### Proposed Architecture (Robust)

Use virtual registers throughout instruction selection, with ABI constraints communicated to the register allocator:

```
┌─────────────────────────────────────────────────────────┐
│ Instruction Selection (InstrSelect.lean)               │
│                                                         │
│ • Uses ONLY virtual registers (v0, v1, v2, ...)       │
│ • Emits ABI constraints as metadata:                    │
│   - "call $fn: args in v1,v2,v3, result in v0"        │
│   - "must be in x0-x7 before call"                     │
│   - "clobbered: x0-x18"                                │
└─────────────────────────────────────────────────────────┘
                         ↓
┌─────────────────────────────────────────────────────────┐
│ Register Allocation (ARM64/RegAlloc/LinearScan.lean)               │
│                                                         │
│ • Allocates virtual → physical registers               │
│ • Respects ABI constraints from instruction selection  │
│ • Automatically:                                        │
│   - Assigns x19-x28 to values crossing calls           │
│   - Inserts moves for ABI compliance                   │
│   - Handles caller/callee-saved correctly              │
└─────────────────────────────────────────────────────────┘
                         ↓
┌─────────────────────────────────────────────────────────┐
│ Physical Register Lowering (NEW)                       │
│                                                         │
│ • Replaces virtual registers with physical registers   │
│ • Inserts necessary moves for ABI (e.g., v5→x0→call)   │
│ • Emits final ARM64 assembly                           │
└─────────────────────────────────────────────────────────┘
```

### Implementation Plan

#### Phase 1: Virtual Register Infrastructure
1. **Extend `Reg` type** to distinguish virtual from physical:
   ```lean
   inductive Reg where
     | virt : VarId → Reg       -- Virtual register (pre-allocation)
     | phys : PhysReg → Reg     -- Physical register (post-allocation)
   ```

2. **Add ABI constraint type**:
   ```lean
   structure CallConstraint where
     fn : String
     argVregs : Array Reg       -- Virtual registers for arguments
     resultVreg : Reg           -- Virtual register for result
     clobbered : Array PhysReg  -- Caller-saved registers
   ```

3. **Update instruction selection** to emit virtual registers only:
   ```lean
   | .ctor info args =>
     let resultVreg := dstReg  -- Already virtual from register allocator
     emit (Instr.call "lean_alloc_ctor" [vTag, vSize, vScalar] resultVreg)
     for arg in args do
       let argVreg ← varToVreg arg
       emit (Instr.call "lean_ctor_set" [resultVreg, vIndex, argVreg] .unit)
   ```

#### Phase 2: Register Allocator Enhancement
1. **Constraint-aware allocation**:
   - Parse call constraints
   - Ensure arguments land in x0-x7 (or insert moves)
   - Allocate long-lived values to x19-x28

2. **Live range computation with calls**:
   - Mark registers clobbered at call sites
   - Force reload after calls if allocated to clobbered register

#### Phase 3: Physical Lowering Pass
1. **New pass after register allocation**:
   ```lean
   def lowerToPhysical (instrs : Array Instr) (allocation : AllocationMap)
     : Array Instr := ...
   ```

2. **Insert ABI moves**:
   ```lean
   -- Before: call foo, args=[v1, v2], result=v3
   -- If v1→x19, v2→x20, v3→x21
   -- After:
   mov x0, x19
   mov x1, x20
   bl foo
   mov x21, x0
   ```

### Benefits

1. **Correctness**: No more register clobbering bugs
2. **Better code quality**: Register allocator can make optimal choices
3. **Easier maintenance**: No hardcoded physical registers in instruction selection
4. **Extensibility**: Easy to add new calling conventions or optimizations

### Migration Strategy

1. Keep current implementation working
2. Implement virtual register infrastructure in parallel
3. Gradually migrate instruction selection patterns
4. Switch over when all patterns migrated
5. Remove old hardcoded physical register code
