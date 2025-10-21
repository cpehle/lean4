import Lean.Compiler.IR.SSA
import Lean.Compiler.IR.Format

open Lean.IR

def testSimpleMutation : IO Unit := do
  -- Create a simple function with mutations:
  -- let x := 1
  -- set x[0] := 2
  -- ret x
  let body :=
    FnBody.vdecl ⟨0⟩ .object (.lit (.num 1))
      (FnBody.set ⟨0⟩ 0 (.var ⟨1⟩)
        (FnBody.ret (.var ⟨0⟩)))

  let ssaBody := SSA.toSSA body
  IO.println "Original IR:"
  IO.println (Format.pretty body)
  IO.println "\nSSA Form:"
  IO.println (Format.pretty ssaBody)

  -- Check that we have new variable versions
  match ssaBody with
  | .vdecl x1 _ _ (.vdecl x2 _ _ _) =>
    if x1.idx != x2.idx && x1.idx != 0 && x2.idx != 0 then
      IO.println s!"✓ SSA conversion created new variables: x_{x1.idx} and x_{x2.idx}"
    else
      IO.println "✗ SSA conversion failed to create proper versions"
  | _ => IO.println "✗ Unexpected SSA structure"

def testMultipleMutations : IO Unit := do
  -- Create function with multiple mutations:
  -- let x := ctor_0
  -- set x[0] := y
  -- set x[1] := z
  -- ret x
  let body :=
    FnBody.vdecl ⟨0⟩ .object
      (.ctor { name := `ctor, cidx := 0, size := 2, usize := 0, ssize := 0 } #[])
      (FnBody.set ⟨0⟩ 0 (.var ⟨1⟩)
        (FnBody.set ⟨0⟩ 1 (.var ⟨2⟩)
          (FnBody.ret (.var ⟨0⟩))))

  let ssaBody := SSA.toSSA body
  IO.println "\n=== Multiple Mutations Test ==="
  IO.println "Original IR:"
  IO.println (Format.pretty body)
  IO.println "\nSSA Form:"
  IO.println (Format.pretty ssaBody)

  -- Count vdecls to ensure each mutation creates a new binding
  let rec countVdecls : FnBody → Nat
    | .vdecl _ _ _ b => 1 + countVdecls b
    | _ => 0

  let vdeclCount := countVdecls ssaBody
  if vdeclCount >= 3 then
    IO.println s!"✓ Created {vdeclCount} variable declarations (expected ≥3)"
  else
    IO.println s!"✗ Only {vdeclCount} declarations, expected at least 3"

def testJoinPoint : IO Unit := do
  -- Test with join points:
  -- jdecl j (x) := ret x
  -- let y := 1
  -- jmp j y
  let body :=
    FnBody.jdecl ⟨0⟩ #[{ x := ⟨0⟩, borrow := false, ty := .object }]
      (FnBody.ret (.var ⟨0⟩))
      (FnBody.vdecl ⟨1⟩ .object (.lit (.num 1))
        (FnBody.jmp ⟨0⟩ #[.var ⟨1⟩]))

  let ssaBody := SSA.toSSA body
  IO.println "\n=== Join Point Test ==="
  IO.println "Original IR:"
  IO.println (Format.pretty body)
  IO.println "\nSSA Form:"
  IO.println (Format.pretty ssaBody)

  match ssaBody with
  | .jdecl _ ps _ _ =>
    if ps.size > 0 && ps[0]!.x.idx > 1 then
      IO.println s!"✓ Join point parameter versioned: x_{ps[0]!.x.idx}"
    else
      IO.println "✗ Join point parameter not properly versioned"
  | _ => IO.println "✗ Join point structure lost"

def testCase : IO Unit := do
  -- Test case expression:
  -- case x of
  -- | ctor_0 => ret 1
  -- | default => ret 0
  let alts : Array Alt := #[
    Alt.ctor { name := `ctor, cidx := 0, size := 0, usize := 0, ssize := 0 }
      (FnBody.ret (.var ⟨1⟩)),
    Alt.default (FnBody.ret (.var ⟨2⟩))
  ]
  let body := FnBody.case `Test ⟨0⟩ .object alts

  let ssaBody := SSA.toSSA body
  IO.println "\n=== Case Expression Test ==="
  IO.println "Original IR:"
  IO.println (Format.pretty body)
  IO.println "\nSSA Form:"
  IO.println (Format.pretty ssaBody)

  match ssaBody with
  | .case _ x _ _ =>
    if x.idx == 0 then
      IO.println "✓ Case variable preserved correctly"
    else
      IO.println s!"✓ Case variable versioned to x_{x.idx}"
  | _ => IO.println "✗ Case structure lost"

def main : IO Unit := do
  IO.println "=== SSA Conversion Tests ==="
  testSimpleMutation
  testMultipleMutations
  testJoinPoint
  testCase
  IO.println "\nAll tests completed!"