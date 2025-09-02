/-
Copyright (c) 2024 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sebastian Ullrich, Leonardo de Moura
-/
module

prelude
public import Init.System.IO
public import Lean.Environment
public import Lean.Attributes

public section

namespace Lean.Compiler

-- Forward declaration to avoid circular dependency
-- This will be implemented in IR.ToIRType
@[extern "lean_compiler_clear_ir_type_cache"]
opaque clearIRTypeCache : Name → CoreM Unit

/--
Data for the struct attribute. Currently empty but can be extended
to include configuration options in the future.
-/
structure StructAttrData where
  deriving Inhabited, BEq, Hashable

private def syntaxToStructAttrData (_ : Syntax) : AttrM StructAttrData := do
  -- Handle both empty syntax and explicit empty args
  return {}

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
builtin_initialize structAttr : ParametricAttribute StructAttrData ← do
  registerParametricAttribute {
    name := `struct
    descr := "instruct the compiler to use the struct backend for the tagged inductive type, generating direct C struct representations"
    getParam := fun _ stx => syntaxToStructAttrData stx
    afterSet := fun declName _ => do
      let env ← getEnv
      -- Verify this is applied to a structure or single-constructor inductive
      if let some (.inductInfo inductVal) := env.find? declName then
        if inductVal.numCtors > 1 then
          throwError "@[struct] attribute can only be applied to structures or single-constructor inductives, but '{declName}' has {inductVal.numCtors} constructors"
      else if !env.isConstructor declName then
        throwError "@[struct] attribute can only be applied to inductive types, not to '{declName}'"
      -- Clear the IR type cache for this type so it will be recomputed with the struct attribute
      clearIRTypeCache declName
  }

def hasStructAttr (env : Environment) (declName : Name) : Bool :=
  structAttr.getParam? env declName |>.isSome


/--
Data for the packed attribute. Currently empty but can be extended
to include configuration options in the future.
-/
structure PackedAttrData where
  deriving Inhabited, BEq, Hashable

private def syntaxToPackedAttrData (_ : Syntax) : AttrM PackedAttrData := do
  -- Handle both empty syntax and explicit empty args
  return {}

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
builtin_initialize packedAttr : ParametricAttribute PackedAttrData ←
  registerParametricAttribute {
    name := `packed
    descr := "instruct the compiler to generate packed structs in the LLVM backend (removes padding between fields)"
    getParam := fun _ stx => syntaxToPackedAttrData stx
    afterSet := fun declName _ => do
      let env ← getEnv
      -- Verify this is applied to a type with @[struct] attribute
      if !hasStructAttr env declName then
        throwError "@[packed] attribute can only be applied to types with @[struct] attribute"
  }

def hasPackedAttr (env : Environment) (declName : Name) : Bool :=
  packedAttr.getParam? env declName |>.isSome

end Lean.Compiler
