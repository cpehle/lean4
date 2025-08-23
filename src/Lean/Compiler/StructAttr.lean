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

end Lean.Compiler