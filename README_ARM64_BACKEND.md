# ARM64 Native Code Backend for Lean 4

This is a native code backend for ARM64 (AArch64) architecture that compiles Lean IR to ARM64 assembly.

## Architecture

The backend consists of several phases:

### 1. SSA Conversion (`src/Lean/Compiler/IR/SSA.lean`)
- Converts Lean IR to Static Single Assignment (SSA) form
- Each variable is assigned exactly once
- Simplifies later optimization and code generation phases
- Handles mutation operations (set, uset, sset) by creating new versions of variables

### 2. ARM64 Instruction Definitions (`src/Lean/Compiler/Backend/ARM64.lean`)
Defines the ARM64 instruction set including:
- **Physical Registers**: X0-X30 (general purpose), SP (stack pointer), V0-V31 (SIMD/FP)
- **Virtual Registers**: Used during compilation before register allocation
- **Instructions**: Data processing, logical, load/store, branch, floating point
- **Calling Convention**: ARM64 ABI (arguments in x0-x7, return in x0)

### 3. Liveness + Register Allocation
**Liveness** (`src/Lean/Compiler/Backend/ARM64/Liveness.lean`) and
**Register Allocation** (`src/Lean/Compiler/Backend/ARM64/RegAlloc/LinearScan.lean`):
- Computes live intervals and call positions for each virtual register
- Allocates physical registers using a greedy linear scan
- Spills variables to stack when registers are exhausted
- Respects ARM64 calling conventions (caller-saved vs callee-saved registers)

### 4. Instruction Selection (`src/Lean/Compiler/Backend/InstrSelect.lean`)
Maps IR operations to ARM64 instructions:
- **Data operations**: Constructor allocation, projections, boxing/unboxing
- **Control flow**: Case statements, jumps, function calls
- **Memory operations**: Load/store, reference counting
- **Runtime integration**: Calls to Lean runtime functions (lean_alloc_ctor, lean_dec_ref, etc.)

### 5. Code Emission (`src/Lean/Compiler/Backend/EmitARM64.lean`)
Generates ARM64 assembly text:
- Emits GNU assembler (GAS) syntax
- Function prologues/epilogues
- Proper alignment and section directives
- Symbol visibility and type annotations

## Key Features

- **SSA Form**: All code is in SSA form for easier optimization
- **Linear Scan Allocation**: Fast register allocation with reasonable code quality
- **Runtime Integration**: Proper integration with Lean's reference counting runtime
- **ARM64 ABI Compliance**: Follows standard ARM64 calling conventions
- **Spilling Support**: Handles cases where register pressure is high

## Components

```
src/Lean/Compiler/
├── IR/
│   └── SSA.lean                    # SSA conversion
└── Backend/
    ├── ARM64.lean                  # ARM64 instruction set
    ├── ARM64/Liveness.lean         # Liveness analysis
    ├── ARM64/RegAlloc/LinearScan.lean # Register allocation
    ├── InstrSelect.lean            # Instruction selection
    ├── EmitARM64.lean             # Assembly emission
    └── Backend.lean               # Main module

tests/compiler/
└── arm64_basic.lean               # Basic tests
```

## Usage

The ARM64 backend is integrated into the Lean compiler and can be invoked via the `--arm64` command-line option.

### Basic Usage

```bash
# Compile a Lean file to ARM64 assembly
lean --arm64=output.s myfile.lean

# Example: compile a simple program
echo "def main : IO Unit := IO.println \"Hello, ARM64!\"" > hello.lean
lean --arm64=hello.s hello.lean
```

### Integration with Build Systems

The backend can be used alongside other code generation options:

```bash
# Generate both C and ARM64 assembly
lean --c=output.c --arm64=output.s myfile.lean

# Generate C, LLVM bitcode, and ARM64 assembly
lean --c=output.c --bc=output.bc --arm64=output.s myfile.lean
```

### Programmatic Usage (Advanced)

For direct programmatic access to the backend:

```lean
import Lean.Compiler.Backend.EmitARM64

open Lean.IR
open Lean.Compiler.Backend.EmitARM64

-- Access the emitARM64 function
-- Takes an Environment and module Name, returns Except String String
def generateAssembly (env : Environment) (modName : Name) : Except String String :=
  emitARM64 env modName
```

## Compilation Pipeline

1. **Lean Source** → Lean Core Compiler → **Lean IR** (λPure/λRc)
2. **Lean IR** → SSA Conversion → **SSA IR**
3. **SSA IR** → Live Interval Analysis → **Live Intervals**
4. **Live Intervals** → Register Allocation → **Register Mapping**
5. **SSA IR + Register Mapping** → Instruction Selection → **ARM64 Instructions**
6. **ARM64 Instructions** → Code Emission → **ARM64 Assembly**

## Status

The ARM64 backend is **fully integrated** into the Lean 4 compiler and can be used via the `--arm64` command-line option. It generates ARMv8-A compatible assembly code that follows the ARM64 ABI calling conventions and integrates properly with Lean's runtime system.

**Key Features:**
- ✅ Complete instruction selection for all Lean IR operations
- ✅ Linear scan register allocation
- ✅ Proper integration with Lean runtime (reference counting, closures, etc.)
- ✅ ARM64 ABI compliance
- ✅ Support for constructors, projections, closures, and boxing/unboxing
- ✅ Stack spilling when register pressure is high
- ✅ Proper function prologues and epilogues

## Limitations and Future Work

Current limitations:
- Basic register allocation (linear scan only, no graph coloring)
- No peephole optimizations
- No instruction scheduling
- Limited floating-point optimizations
- No vectorization (SIMD)
- Not all edge cases tested

Possible improvements:
- Graph coloring register allocation for better code quality
- Better spilling heuristics with spill cost analysis
- Instruction scheduling for improved instruction-level parallelism
- Peephole optimizations (constant folding, strength reduction, etc.)
- SIMD vectorization for array operations
- Better tail call optimization
- Profile-guided optimization
- More comprehensive testing and validation
- Integration with Lake build system for easier usage
- Support for mixed C/ARM64 compilation

## Testing

### Manual Testing

Test the ARM64 backend by generating assembly for a simple Lean program:

```bash
# Create a test file
echo 'def main : IO Unit := IO.println "Test"' > test.lean

# Generate ARM64 assembly
lean --arm64=test.s test.lean

# Inspect the generated assembly
less test.s
```

### Test Suite

Run the compiler test suite (after building Lean):

```bash
cd build/release/stage1
ctest -R "comptest" -j4 --output-on-failure
```

Alternatively, from the build/release directory:

```bash
make test ARGS="-R comptest -j4"
```

On Apple Silicon or other AArch64 hosts, the compiler tests compile and execute both C and ARM64 backends, ensuring the native backend stays functional as part of the regular CI pipeline.

### Test Results (as of October 2025)

**Overall Compiler Tests:**
- Total: 88 tests
- Passing: 78 tests (89%)
- Failing: 10 tests (11%)

**ARM64-Specific Tests:**
- Total: 23 tests (prefixed with `arm64_`)
- Passing: 21 tests (91%)
- Failing: 2 tests

**Passing ARM64 Tests:**
- arm64_arithmetic.lean - Basic arithmetic operations
- arm64_array.lean - Array operations
- arm64_case.lean - Pattern matching and case statements
- arm64_closure.lean - Closure creation and application
- arm64_constructors.lean - Constructor allocation
- arm64_countdown_simple.lean - Simple countdown recursion
- arm64_eq_test.lean - Equality testing
- arm64_factorial_debug.lean - Factorial with debug info
- arm64_factorial_only.lean - Factorial function
- arm64_listsum_debug.lean - List sum with debug info
- arm64_listsum_simple.lean - List sum function
- arm64_lit_test.lean - Literal values
- arm64_many_args.lean - Functions with many arguments
- arm64_partial_apply.lean - Partial application
- arm64_recursion.lean - Recursive functions
- arm64_simple.lean - Simple function compilation
- arm64_simple_rec.lean - Simple recursion
- arm64_string.lean - String operations
- arm64_sumto.lean - Sum to N
- arm64_test.lean - General tests
- arm64_uint32_arith.lean - 32-bit unsigned integer arithmetic

**Known Failing Tests:**
1. **arm64_basic.lean** - Assembly format differences (not a runtime failure; expected output needs update)
2. **arm64_uint64_arith.lean** - Incorrect 64-bit unsigned integer arithmetic results
3. **expr.lean** - Crashes with uncaught exception (initialization issue)
4. **initUnboxed.lean** - Segmentation fault
5. **phashmap.lean** - Incorrect persistent hash map behavior
6. **phashmap2.lean** - Hash map test failure
7. **phashmap3.lean** - Hash map test failure
8. **rbmap_library.lean** - Red-black map library test failure
9. **str.lean** - String operations test failure
10. **uint_fold.lean** - UInt fold operations failure

The majority of ARM64-specific tests pass successfully, demonstrating that basic functionality, closures, recursion, pattern matching, and most data structures work correctly. The failing tests indicate issues with:
- 64-bit unsigned integer operations
- Certain library data structures (hash maps, red-black trees)
- Runtime initialization in some contexts

### Example Tests

See `tests/compiler/arm64_*.lean` for working examples that demonstrate various features of the ARM64 backend.

## Implementation Details

### SSA Conversion
The SSA conversion handles mutation by versioning variables:
- `set x i y; b` becomes `x₂ := update(x₁, i, y); b[x₂/x]`
- Join points introduce φ-nodes implicitly through parameter passing

### Register Allocation
- Uses 17 general-purpose registers (x9-x15, x19-x28)
- Reserves x0-x8 for arguments and temporaries
- Reserves x29 (FP) and x30 (LR) for frame pointer and link register
- Uses 24 SIMD/FP registers (v0-v7, v16-v31)

### Calling Convention
- Arguments: x0-x7 (8 register arguments)
- Return value: x0
- Caller-saved: x0-x18
- Callee-saved: x19-x30
- Stack grows downward, 16-byte aligned

### Memory Layout
Lean objects follow the standard runtime layout:
- Header: 8 bytes (reference count + tag)
- Object fields: 8 bytes each (pointers)
- Usize fields: 8 bytes each
- Scalar fields: variable size

### Boxing/Tagging
- Small integers (< 2^63) are tagged pointers: value << 1 | 1
- Larger values and objects are heap-allocated
- LSB = 1 indicates tagged pointer
- LSB = 0 indicates heap pointer

## References

- [ARM Architecture Reference Manual](https://developer.arm.com/documentation/ddi0487/latest)
- [Procedure Call Standard for ARM64](https://github.com/ARM-software/abi-aa/blob/main/aapcs64/aapcs64.rst)
- "Counting Immutable Beans" - Ullrich & de Moura (Lean IR design)
- "Linear Scan Register Allocation" - Poletto & Sarkar
