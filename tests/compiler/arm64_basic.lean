/-
Copyright (c) 2025 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Assistant
-/

import Lean.Compiler.Backend.EmitARM64
import Lean.Compiler.IR.Basic
import Lean.Compiler.IR.SSA

open Lean
open Lean.IR
open Lean.Compiler.Backend.EmitARM64

/-- Helper to emit assembly for a declaration using an empty environment. -/
def emitAsm (decl : Decl) : IO String := do
  let env ← mkEmptyEnvironment
  return emitDecl env decl

/-- Test basic addition function -/
def testAdd : IO Unit := do
  let x : VarId := ⟨0⟩
  let y : VarId := ⟨1⟩
  let z : VarId := ⟨2⟩

  -- Function: add x y = x + y
  -- In IR: let z := fap "Nat.add" [x, y]; ret z
  let body : FnBody :=
    .vdecl z .object (.fap `Nat.add #[.var x, .var y])
      (.ret (.var z))

  let decl : Decl :=
    .fdecl `testAdd
      #[{x := x, borrow := false, ty := .object},
        {x := y, borrow := false, ty := .object}]
      .object
      body
      {}

  let asm ← emitAsm decl
  IO.println "=== Test Add ==="
  IO.println asm
  IO.println ""

/-- Test simple return -/
def testReturn : IO Unit := do
  let x : VarId := ⟨0⟩

  -- Function: id x = x
  let body : FnBody := .ret (.var x)

  let decl : Decl :=
    .fdecl `testId
      #[{x := x, borrow := false, ty := .object}]
      .object
      body
      {}

  let asm ← emitAsm decl
  IO.println "=== Test Return ==="
  IO.println asm
  IO.println ""

/-- Test constructor allocation -/
def testCtor : IO Unit := do
  let x : VarId := ⟨0⟩
  let y : VarId := ⟨1⟩
  let z : VarId := ⟨2⟩

  -- Function: mkPair x y = Pair x y
  let ctorInfo : CtorInfo := {
    name := `Pair,
    cidx := 0,
    size := 2,
    usize := 0,
    ssize := 0
  }

  let body : FnBody :=
    .vdecl z .object (.ctor ctorInfo #[.var x, .var y])
      (.ret (.var z))

  let decl : Decl :=
    .fdecl `mkPair
      #[{x := x, borrow := false, ty := .object},
        {x := y, borrow := false, ty := .object}]
      .object
      body
      {}

  let asm ← emitAsm decl
  IO.println "=== Test Constructor ==="
  IO.println asm
  IO.println ""

/-- Test projection -/
def testProj : IO Unit := do
  let x : VarId := ⟨0⟩
  let y : VarId := ⟨1⟩

  -- Function: fst x = proj[0] x
  let body : FnBody :=
    .vdecl y .object (.proj 0 x)
      (.ret (.var y))

  let decl : Decl :=
    .fdecl `fst
      #[{x := x, borrow := false, ty := .object}]
      .object
      body
      {}

  let asm ← emitAsm decl
  IO.println "=== Test Projection ==="
  IO.println asm
  IO.println ""

/-- Test case split -/
def testCase : IO Unit := do
  let x : VarId := ⟨0⟩

  let trueInfo : CtorInfo := {
    name := `Bool.true,
    cidx := 0,
    size := 0,
    usize := 0,
    ssize := 0
  }

  let falseInfo : CtorInfo := {
    name := `Bool.false,
    cidx := 1,
    size := 0,
    usize := 0,
    ssize := 0
  }

  -- Function: not x = case x of true => false | false => true
  let body : FnBody :=
    .case `Bool x .tagged #[
      .ctor trueInfo (.ret (.var x)),  -- simplified
      .ctor falseInfo (.ret (.var x))
    ]

  let decl : Decl :=
    .fdecl `notBool
      #[{x := x, borrow := false, ty := .tagged}]
      .tagged
      body
      {}

  let asm ← emitAsm decl
  IO.println "=== Test Case ==="
  IO.println asm
  IO.println ""

/-- Test literal -/
def testLit : IO Unit := do
  let x : VarId := ⟨0⟩

  -- Function: const42 = 42
  let body : FnBody :=
    .vdecl x .usize (.lit (.num 42))
      (.ret (.var x))

  let decl : Decl :=
    .fdecl `const42
      #[]
      .usize
      body
      {}

  let asm ← emitAsm decl
  IO.println "=== Test Literal ==="
  IO.println asm
  IO.println ""

/-- Test boxing -/
def testBox : IO Unit := do
  let x : VarId := ⟨0⟩
  let y : VarId := ⟨1⟩

  -- Function: box x = box(x)
  let body : FnBody :=
    .vdecl y .object (.box .usize x)
      (.ret (.var y))

  let decl : Decl :=
    .fdecl `boxNat
      #[{x := x, borrow := false, ty := .usize}]
      .object
      body
      {}

  let asm ← emitAsm decl
  IO.println "=== Test Boxing ==="
  IO.println asm
  IO.println ""

/-- Main test runner -/
def main : IO Unit := do
  IO.println "ARM64 Backend Tests"
  IO.println "===================="
  IO.println ""

  testAdd
  testReturn
  testCtor
  testProj
  testCase
  testLit
  testBox

  IO.println "All tests completed!"
