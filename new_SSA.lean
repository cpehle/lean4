/-
Copyright (c) 2025 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Assistant
-/
module

prelude
public import Lean.Compiler.IR.Basic
public import Lean.Compiler.IR.FreeVars
public import Std.Data.TreeMap

public section

namespace Lean.IR
namespace SSA

/-- State for SSA conversion tracking variable versions -/
structure State where
  nextVersion : Std.TreeMap VarId VarId (fun a b => compare a.idx b.idx)
  nextIdx : Index

abbrev M := StateM State

@[inline] def mkFreshVar : M VarId := do
  let idx := (← get).nextIdx
  modify fun s => { s with nextIdx := idx + 1 }
  return ⟨idx⟩

@[inline] def getVersion (x : VarId) : M VarId := do
  let s ← get
  match s.nextVersion.get? x with
  | some v => return v
  | none => return x

@[inline] def setVersion (x : VarId) (v : VarId) : M Unit :=
  modify fun s => { s with nextVersion := s.nextVersion.insert x v }

@[inline] def convertArg : Arg → M Arg
  | .var x => .var <$> getVersion x
  | .erased => pure .erased

@[inline] def convertArgs (args : Array Arg) : M (Array Arg) :=
  args.mapM convertArg

mutual

  partial def convertExpr : Expr → M Expr
    | .ctor i ys => .ctor i <$> convertArgs ys
    | .reset n x => .reset n <$> getVersion x
    | .reuse x i h ys => do
        let x' ← getVersion x
        let ys' ← convertArgs ys
        return .reuse x' i h ys'
    | .proj i x => .proj i <$> getVersion x
    | .uproj i x => .uproj i <$> getVersion x
    | .sproj n o x => .sproj n o <$> getVersion x
    | .fap f ys => .fap f <$> convertArgs ys
    | .pap f ys => .pap f <$> convertArgs ys
    | .ap x ys => do
        let x' ← getVersion x
        let ys' ← convertArgs ys
        return .ap x' ys'
    | .box ty x => .box ty <$> getVersion x
    | .unbox x => .unbox <$> getVersion x
    | .lit v => pure (.lit v)
    | .isShared x => .isShared <$> getVersion x

  partial def convertFnBody : FnBody → M FnBody
    | .vdecl x ty e b => do
        let e' ← convertExpr e
        let x' ← mkFreshVar
        setVersion x x'
        let b' ← convertFnBody b
        return .vdecl x' ty e' b'

    | .jdecl j ps v b => do
        let s ← get
        let mut newState := s
        let mut newParams := Array.mkEmpty ps.size
        for p in ps do
          let x' ← mkFreshVar
          newState := { newState with nextVersion := newState.nextVersion.insert p.x x' }
          newParams := newParams.push { p with x := x' }
        set { newState with }
        let v' ← convertFnBody v
        modify fun _ => s
        let b' ← convertFnBody b
        return .jdecl j newParams v' b'

    | .set x i y b => do
        let xOld ← getVersion x
        let y' ← convertArg y
        let xNew ← mkFreshVar
        setVersion x xNew
        let b' ← convertFnBody b
        let updateExpr := .ctor { name := `update, cidx := 0, size := 1, usize := 0, ssize := 0 } #[.var xOld, y']
        return .vdecl xNew .object updateExpr b'

    | .uset x i y b => do
        let xOld ← getVersion x
        let yVer ← getVersion y
        let xNew ← mkFreshVar
        setVersion x xNew
        let b' ← convertFnBody b
        let updateExpr := .ctor { name := `uset, cidx := 0, size := 1, usize := 1, ssize := 0 } #[.var xOld, .var yVer]
        return .vdecl xNew .object updateExpr b'

    | .sset x i o y ty b => do
        let xOld ← getVersion x
        let yVer ← getVersion y
        let xNew ← mkFreshVar
        setVersion x xNew
        let b' ← convertFnBody b
        let updateExpr := .ctor { name := `sset, cidx := 0, size := 1, usize := 0, ssize := 8 } #[.var xOld, .var yVer]
        return .vdecl xNew .object updateExpr b'

    | .setTag x c b => do
        let xOld ← getVersion x
        let xNew ← mkFreshVar
        setVersion x xNew
        let b' ← convertFnBody b
        let tagExpr := .ctor { name := `tag, cidx := c, size := 0, usize := 0, ssize := 0 } #[.var xOld]
        return .vdecl xNew .tagged tagExpr b'

    | .inc x n c p b => do
        let x' ← getVersion x
        let b' ← convertFnBody b
        return .inc x' n c p b'

    | .dec x n c p b => do
        let x' ← getVersion x
        let b' ← convertFnBody b
        return .dec x' n c p b'

    | .del x b => do
        let x' ← getVersion x
        let b' ← convertFnBody b
        return .del x' b'

    | .case tid x xType cs => do
        let x' ← getVersion x
        let state0 ← get
        let baseRename := state0.nextVersion
        let mut nextIdx := state0.nextIdx
        let mut newAlts := Array.mkEmpty cs.size
        for alt in cs do
          modify fun _ => { nextVersion := baseRename, nextIdx := nextIdx }
          let alt' ← convertAlt alt
          newAlts := newAlts.push alt'
          let afterAlt ← get
          nextIdx := afterAlt.nextIdx
        modify fun _ => { nextVersion := baseRename, nextIdx := nextIdx }
        return .case tid x' xType newAlts

    | .ret x => .ret <$> convertArg x

    | .jmp j ys => .jmp j <$> convertArgs ys

    | .unreachable => pure .unreachable

  partial def convertAlt : Alt → M Alt
    | .ctor info b => .ctor info <$> convertFnBody b
    | .default b => .default <$> convertFnBody b

end

/-- Convert function body to SSA form -/
def toSSA (b : FnBody) (maxIdx : Index := 0) : FnBody :=
  let initState : State := { nextVersion := {}, nextIdx := maxIdx + 1 }
  (convertFnBody b).run' initState

/-- Convert parameters and body to SSA form -/
def convertDecl : Decl → Decl
  | .fdecl f ps ty body info =>
    let maxIdx := body.maxIndex
    let initState : State := { nextVersion := {}, nextIdx := maxIdx + 1 }
    let (body', _s) := (do
      let ps' ← ps.mapM fun (p : Param) => do
        let x' ← mkFreshVar
        setVersion p.x x'
        return { p with x := x' }
      let body' ← convertFnBody body
      return (ps', body')
    ).run initState
    match body' with
    | (ps', b) => .fdecl f ps' ty b info
  | d => d

end SSA
end Lean.IR
