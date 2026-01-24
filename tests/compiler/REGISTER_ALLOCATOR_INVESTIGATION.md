# ARM64 Register Allocator Investigation

Note (Jan 2026): the legacy register allocator module was removed. References below are
historical; the current allocator lives in `src/Lean/Compiler/Backend/ARM64/Liveness.lean`
and `src/Lean/Compiler/Backend/ARM64/RegAlloc/LinearScan.lean`.

## Current Status

The ARM64 backend currently uses a **conservative register allocator** that assumes all variables are live throughout the entire function (live interval: 0-1000). This causes excessive stack usage and failures on complex programs.

### Test Suite Results (Conservative Allocator)

**Total:** 88 compiler tests
**Passing:** 82 tests (93%)
**Failing:** 6 tests (7%)

#### Failing Tests

1. **arm64_basic.lean** - Expected output mismatch (boxing behavior changed)
   - Status: Minor codegen diff, not a crash
   - Error: `boxNat` now calls `lean_box_usize` instead of inline bit manipulation

2. **phashmap.lean** - Stack overflow
   - Status: **CRITICAL** - Conservative allocator uses too much stack
   - Error: `Stack overflow detected. Aborting.`

3. **phashmap2.lean** - **PASSES** ✓

4. **phashmap3.lean** - Stack overflow
   - Status: **CRITICAL** - Conservative allocator uses too much stack
   - Error: `Stack overflow detected. Aborting.`

5. **rbmap_library.lean** - Segmentation fault
   - Status: **CRITICAL** - Runtime crash, **REGRESSION** (used to pass)
   - Error: `Segmentation fault: 11` at `lean_inc` with address `0x2c`
   - **Root Cause**: Unknown - unboxed value `0x2c` (44 = 22 << 1) in object field
   - **Investigation**: Value appears to have been shifted but not OR'd with 1
   - **Attempted fixes**:
     1. Reverted usize to use `lean_box_usize/lean_unbox_usize` runtime functions
     2. Added automatic boxing of scalar constructor arguments
   - **Current hypothesis**: Complex data flow issue where unboxed value leaks into object field
   - **Next steps**: Need systematic tracing of where value 22 originates and flows through code

6. **uint_fold.lean** - Expected output mismatch
   - Status: Incorrect runtime behavior
   - Error: Produces `50, 30` instead of expected `12760, 12720`

### Root Causes

1. **Stack Overflow (phashmap, phashmap3)**: Conservative allocator allocates all variables on stack with live interval 0-1000, causing excessive stack frame sizes
2. **Segmentation Fault (rbmap_library)**: Unknown crash in generated code
3. **Codegen Differences (arm64_basic, uint_fold)**: Changes in instruction selection or optimization

## Accurate Register Allocator Implementation

An accurate register allocator was systematically implemented to solve the stack overflow issues:

### What Was Implemented

1. **Helper Functions** (ARM64/RegAlloc/LinearScan.lean:181-206)
   - `usesFromArg`: Extract variables from single Arg
   - `usesFromArgs`: Extract variables from array of Args
   - `usesFromExpr`: Extract variables from IR expressions

2. **Liveness Analysis** (ARM64/RegAlloc/LinearScan.lean:208-313)
   - `analyzeBody`: Recursive traversal computing def/use positions
   - Handles all IR constructs: vdecl, set, uset, sset, setTag, inc, dec, del, jmp, jdecl, case, ret, unreachable
   - Returns tuple: `(finalPos, defs, uses)` where:
     - `defs`: TreeMap Index → Nat (definition position)
     - `uses`: TreeMap Index → Array Nat (use positions)

3. **Live Interval Computation** (ARM64/RegAlloc/LinearScan.lean:315-326)
   - `computeLiveIntervals`: Builds accurate intervals from def/use info
   - Variables live from def position to last use position
   - Eliminates dead variables (defined but never used)

4. **Bug Fixes**
   - `freeReg` (lines 121-141): Don't erase from allocation map (needed for instruction selection)
   - `expireOldIntervals` (line 161): Use `<=` instead of `<` (free immediately after last use)
   - Parameter allocation (lines 356-382): Use actual intervals instead of hardcoded 1000

### Test Results (Accurate Allocator)

**Simple Tests:** ✅ PASS
- test_trivial.lean
- simple_alloc_test.lean
- arm64_factorial_debug.lean
- test_minimal_alloc.lean

**Complex Tests:** ❌ CRASH
- phashmap.lean - Segmentation fault
- phashmap3.lean - Segmentation fault
- arm64_basic.lean - Segmentation fault
- rbmap_library.lean - Segmentation fault

### Identified Bug in Accurate Allocator

The accurate allocator crashes with segfaults on complex IR. Investigation revealed:

1. **Symptom**: Segfault (exit code 139) when compiling files that import complex standard library modules
2. **Location**: During compilation phase, not at runtime of generated code
3. **Suspected Root Cause**: Bug in `.case` branch handling (ARM64/RegAlloc/LinearScan.lean:295-313)
   - Original implementation threaded state incorrectly through alternatives
   - Each alternative should start with same `defs`/`uses` state
   - Results should be merged (union), not sequentially threaded
4. **Secondary Issues**:
   - Possible TreeMap operation bugs (toList, insert, merge)
   - Potential infinite recursion in deeply nested IR
   - State corruption during recursive analysis

## Investigation Plan

### Phase 1: Isolate the Crash (Priority: HIGH)

1. **Add Defensive Programming**
   ```lean
   -- Add depth limit to prevent infinite recursion
   partial def analyzeBody (body : FnBody) (pos : Nat) (depth : Nat := 0)
       (defs : ...) (uses : ...) : ... :=
     if depth > 1000 then
       panic! "analyzeBody: max depth exceeded"
     -- ... rest of function with depth + 1 in recursive calls
   ```

2. **Add Debug Logging**
   ```lean
   -- Log entry to each case
   | .case tid x xType alts =>
     dbg_trace s!"analyzeBody: case on {x.idx}, {alts.size} alternatives"
     -- ... existing code
   ```

3. **Create Minimal Reproducer**
   - Start with phashmap.lean
   - Binary search: comment out functions until crash disappears
   - Identify minimal IR structure that triggers crash
   - Create standalone test file

### Phase 2: Fix Case Branch Handling (Priority: HIGH)

The current implementation has a bug in how alternatives are analyzed:

**Current (BUGGY) Code:**
```lean
let (maxPos, defs, uses) := alts.foldl (fun (p, d, u) alt =>
  let (altEndPos, d', u') := analyzeBody (Alt.body alt) (pos + 1) d u
  (max p altEndPos, d', u')) (pos + 1, defs, uses)
```

**Problem**: Each alternative starts with the `d` and `u` from the previous iteration's output, causing state corruption.

**Proposed Fix:**
```lean
-- Each alternative starts fresh, then merge results
let (maxPos, finalDefs, finalUses) := alts.foldl (fun (p, accDefs, accUses) alt =>
  -- Start each alt with original defs/uses
  let (altEndPos, altDefs, altUses) := analyzeBody (Alt.body alt) (pos + 1) defs uses

  -- Merge: union of defs (variable defined in any branch)
  let mergedDefs := altDefs.fold (fun acc idx pos =>
    match acc.get? idx with
    | none => acc.insert idx pos
    | some existing => acc.insert idx (min existing pos)) accDefs

  -- Merge: union of uses (variable used in any branch)
  let mergedUses := altUses.fold (fun acc idx positions =>
    let existing := acc.get? idx |>.getD #[]
    acc.insert idx (existing ++ positions)) accUses

  (max p altEndPos, mergedDefs, mergedUses)
) (pos + 1, defs, uses)
```

### Phase 3: Fix JDecl Handling (Priority: MEDIUM)

Review the `.jdecl` case - join point parameters might have similar state threading issues:

```lean
| .jdecl j params jpBody rest =>
  -- Parameters defined at join point entry
  let defs := params.foldl (fun d p => d.insert p.x.idx pos) defs
  -- Analyze join point body
  let (jpEndPos, jpDefs, jpUses) := analyzeBody jpBody (pos + 1) defs uses
  -- Continue with rest - BUT should we merge or thread state?
  analyzeBody rest jpEndPos jpDefs jpUses
```

**Question**: Should join point analysis results thread into rest, or be isolated?
- Current: threads state (jpDefs, jpUses) into rest
- Alternative: join points are called, not sequential - may need different handling

### Phase 4: Validate TreeMap Operations (Priority: MEDIUM)

The implementation uses `Std.TreeMap` heavily. Verify:

1. **toList → foldl pattern is safe**
   ```lean
   altDefs.toList.foldl (fun acc (idx, pos) => acc.insert idx pos) d
   ```
   - Does toList create a temporary list that could cause issues?
   - Would `altDefs.fold` be safer?

2. **Array concatenation in uses merge**
   ```lean
   acc.insert idx (existing ++ positions)
   ```
   - Could array growth cause reallocation issues?
   - Should we use `Array.append` or manual pushing?

3. **TreeMap comparison function**
   ```lean
   Std.TreeMap Index Nat (fun a b => compare a b)
   ```
   - Verify `Index` (which is `Nat`) compare works correctly
   - Check for potential infinite loops in tree balancing

### Phase 5: Test Incrementally (Priority: HIGH)

After each fix:

1. **Unit test the fix**
   - Create test with known IR structure
   - Verify def/use maps are correct

2. **Test on simple → complex**
   - test_trivial.lean ✓
   - simple_alloc_test.lean ✓
   - arm64_factorial_debug.lean ✓
   - phashmap3.lean (target)
   - phashmap.lean (target)
   - rbmap_library.lean

3. **Compare stack sizes**
   - Once working, verify stack reduction vs conservative allocator
   - Goal: phashmap stack size should match C backend

### Phase 6: Alternative Approaches (Priority: LOW)

If the recursive approach continues to have issues:

1. **Two-Pass Analysis**
   - Pass 1: Collect all def/use positions without recursion (use worklist)
   - Pass 2: Build live intervals from collected data

2. **Iterative Worklist Algorithm**
   ```lean
   def analyzeBodyIterative (body : FnBody) : ... :=
     let mut worklist := #[body]
     let mut defs := {}
     let mut uses := {}
     while !worklist.isEmpty do
       let current := worklist.pop
       -- Process current, add children to worklist
     return (defs, uses)
   ```

3. **Conservative Hybrid**
   - Use accurate analysis for simple functions
   - Fall back to conservative for complex functions
   - Threshold: e.g., >100 variables or >50 join points

### Phase 7: Long-Term Improvements (Priority: LOW)

Once the basic accurate allocator works:

1. **Spilling Strategy**
   - Currently spills to stack immediately when out of registers
   - Implement: spill furthest-next-use variable (Belady's algorithm)

2. **Caller-Saved Register Usage**
   - Currently only uses callee-saved (x19-x28)
   - Use caller-saved (x9-x15) for values not live across calls
   - Requires call-site tracking

3. **Register Coalescing**
   - Merge live intervals when possible (e.g., x = y, eliminate copy)

4. **Block-Level Allocation**
   - Current: function-level live intervals
   - Improvement: per-basic-block with inter-block dataflow

## Workaround for Current Failures

While investigating the accurate allocator:

1. **arm64_basic.lean**: Update expected output for new boxing behavior
2. **uint_fold.lean**: Investigate why fold results differ - separate bug
3. **phashmap/phashmap3**: Blocked on accurate allocator OR increase stack size
4. **rbmap_library**: Investigate segfault separately from allocator issues

## Testing Commands

```bash
# Run all compiler tests
cd build/release/stage1
ctest -j4 --output-on-failure -R "leancomptest"

# Run specific failing tests
ctest --output-on-failure -R "leancomptest_(phashmap|rbmap)"

# Run single test with details
cd tests/compiler
bash test_single_arm64.sh phashmap.lean

# Compare expected vs produced output
diff phashmap.lean.expected.out phashmap.lean.produced.out
```

## Related Files

- `/Users/pehle/dev/lean4/src/Lean/Compiler/Backend/ARM64/RegAlloc/LinearScan.lean` - Register allocator implementation
- `/Users/pehle/dev/lean4/src/Lean/Compiler/Backend/ARM64/Liveness.lean` - Liveness analysis and intervals
- `/Users/pehle/dev/lean4/src/Lean/Compiler/Backend/InstrSelect.lean` - Instruction selection (uses allocation map)
- `/Users/pehle/dev/lean4/src/Lean/Compiler/Backend/EmitARM64.lean` - ARM64 code emission
- `/Users/pehle/dev/lean4/src/Lean/Compiler/IR/Basic.lean` - IR definitions (FnBody, Expr, Alt)
- `/Users/pehle/dev/lean4/tests/compiler/` - Test files
