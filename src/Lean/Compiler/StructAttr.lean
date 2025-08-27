/-
Copyright (c) 2024 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sebastian Ullrich, Leonardo de Moura
-/
module

prelude
public import Lean.Environment
public import Lean.Attributes

public section

namespace Lean.Compiler

/--
The `@[struct]` attribute instructs the compiler to use the struct backend for the
tagged inductive type, generating direct C struct representations instead of the
default boxed object representation.

This is useful for data structures where:
- All constructors have the same layout (single constructor types work best)
- Performance is critical and boxing overhead should be avoided
- The type will be used frequently in tight loops or memory-sensitive contexts

Example usage:
```lean
@[struct]
structure Point where
  x : Float
  y : Float
```

This generates a C struct instead of a heap-allocated object, improving performance
and memory locality.
-/
@[builtin_doc]
builtin_initialize structAttr : TagAttribute ←
  registerTagAttribute `struct "instruct the compiler to use the struct backend for the tagged inductive type, generating direct C struct representations"

def hasStructAttr (env : Environment) (declName : Name) : Bool :=
  structAttr.hasTag env declName

/--
The `@[packed]` attribute instructs the compiler to generate a packed struct in the LLVM backend,
which removes padding between struct fields for more compact memory layout.

This attribute should be used with `@[struct]` for types where:
- Memory efficiency is more important than alignment performance
- The struct will be used in arrays or other memory-critical contexts
- Compatibility with C packed structs is required

Example usage:
```lean
@[struct, packed]
structure CompactData where
  a : UInt8
  b : UInt32
  c : UInt8
```

Note: Packed structs may have performance implications on some architectures due to
unaligned memory access.
-/
@[builtin_doc]
builtin_initialize packedAttr : TagAttribute ←
  registerTagAttribute `packed "instruct the compiler to generate packed structs in the LLVM backend (removes padding between fields)"

def hasPackedAttr (env : Environment) (declName : Name) : Bool :=
  packedAttr.hasTag env declName

end Lean.Compiler