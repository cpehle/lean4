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

### 3. Register Allocation (`src/Lean/Compiler/Backend/RegisterAlloc.lean`)
Linear scan register allocation algorithm:
- Computes live intervals for each virtual register
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
    ├── RegisterAlloc.lean          # Register allocation
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

Run the test suite (after building Lean):

```bash
cd build/release
make test ARGS="-R arm64"
```

On Apple Silicon or other AArch64 hosts the compiler tests prefixed with `arm64_`
now also emit and execute ARM64 assembly during `ctest`, ensuring the native backend stays
buildable as part of the regular pipeline.

### Example Tests

See `tests/lean/run/arm64_backend_simple.lean` for a working example that can be compiled and executed using the ARM64 backend.

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
