/-
Copyright (c) 2019 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
prelude
import init.data.persistentarray.basic
import init.data.persistenthashmap.basic
import init.lean.expr

namespace Lean

inductive LocalDecl
| cdecl (index : Nat) (name : Name) (userName : Name) (type : Expr) (bi : BinderInfo)
| ldecl (index : Nat) (name : Name) (userName : Name) (type : Expr) (value : Expr)

namespace LocalDecl
instance : Inhabited LocalDecl := ⟨ldecl (default _) (default _) (default _) (default _) (default _)⟩

def isLet : LocalDecl → Bool
| (cdecl _ _ _ _ _) := false
| (ldecl _ _ _ _ _) := true

def index : LocalDecl → Nat
| (cdecl idx _ _ _ _) := idx
| (ldecl idx _ _ _ _) := idx

def name : LocalDecl → Name
| (cdecl _ n _ _ _) := n
| (ldecl _ n _ _ _) := n

def userName : LocalDecl → Name
| (cdecl _ _ n _ _) := n
| (ldecl _ _ n _ _) := n

def type : LocalDecl → Expr
| (cdecl _ _ _ t _) := t
| (ldecl _ _ _ t _) := t

def binderInfo : LocalDecl → BinderInfo
| (cdecl _ _ _ _ bi) := bi
| (ldecl _ _ _ _ _)  := BinderInfo.default

def valueOpt : LocalDecl → Option Expr
| (cdecl _ _ _ _ _) := none
| (ldecl _ _ _ _ v) := some v

def value : LocalDecl → Expr
| (cdecl _ _ _ _ _) := default _
| (ldecl _ _ _ _ v) := v

def updateUserName : LocalDecl → Name → LocalDecl
| (cdecl index name _ type bi)  userName := cdecl index name userName type bi
| (ldecl index name _ type val) userName := ldecl index name userName type val

end LocalDecl

structure LocalContext :=
(nameToDecl : PHashMap Name LocalDecl   := PersistentHashMap.empty)
(decls      : PArray (Option LocalDecl) := PersistentArray.empty)

namespace LocalContext
instance : Inhabited LocalContext := ⟨{}⟩

def isEmpty (lctx : LocalContext) : Bool :=
lctx.nameToDecl.isEmpty

/- Low level API for creating local declarations. It is used to implement actions in the monads `Elab` and `Tactic`. It should not be used directly since the argument `(name : Name)` is assumed to be "unique". -/
def mkLocalDecl (lctx : LocalContext) (name : Name) (userName : Name) (type : Expr) (bi : BinderInfo := BinderInfo.default) : LocalDecl × LocalContext :=
match lctx with
| { nameToDecl := map, decls := decls } =>
  let idx  := decls.size;
  let decl := LocalDecl.cdecl idx name userName type bi;
  (decl, { nameToDecl := map.insert name decl, decls := decls.push decl })

def mkLetDecl (lctx : LocalContext) (name : Name) (userName : Name) (type : Expr) (value : Expr) : LocalDecl × LocalContext :=
match lctx with
| { nameToDecl := map, decls := decls } =>
  let idx  := decls.size;
  let decl := LocalDecl.ldecl idx name userName type value;
  (decl, { nameToDecl := map.insert name decl, decls := decls.push decl })

def find (lctx : LocalContext) (name : Name) : Option LocalDecl :=
lctx.nameToDecl.find name

def findFVar (lctx : LocalContext) (e : Expr) : Option LocalDecl :=
match e with
| Expr.fvar n => lctx.find n
| _           => none

private partial def popTailNoneAux : PArray (Option LocalDecl) → PArray (Option LocalDecl)
| a :=
  if a.size == 0 then a
  else match a.get (a.size - 1) with
    | none   => popTailNoneAux a.pop
    | some _ => a

def erase (lctx : LocalContext) (name : Name) : LocalContext :=
match lctx with
| { nameToDecl := map, decls := decls } =>
  match map.find name with
  | none      => lctx
  | some decl => { nameToDecl := map.erase name, decls := popTailNoneAux (decls.set decl.index none) }

def pop (lctx : LocalContext): LocalContext :=
match lctx with
| { nameToDecl := map, decls := decls } =>
  if decls.size == 0 then lctx
  else match decls.get (decls.size - 1) with
    | none      => lctx -- unreachable
    | some decl => { nameToDecl := map.erase decl.name, decls := popTailNoneAux decls.pop }

def findFromUserName (lctx : LocalContext) (userName : Name) : Option LocalDecl :=
lctx.decls.findRev (fun decl =>
  match decl with
  | none      => none
  | some decl => if decl.userName == userName then some decl else none)

def usesUserName (lctx : LocalContext) (userName : Name) : Bool :=
(lctx.findFromUserName userName).isSome

partial def getUnusedNameAux (lctx : LocalContext) (suggestion : Name) : Nat → Name × Nat
| i :=
  let curr := suggestion.appendIndexAfter i;
  if lctx.usesUserName curr then getUnusedNameAux (i + 1)
  else (curr, i + 1)

def getUnusedName (lctx : LocalContext) (suggestion : Name) : Name :=
if lctx.usesUserName suggestion then (lctx.getUnusedNameAux suggestion 1).1
else suggestion

def lastDecl (lctx : LocalContext) : Option LocalDecl :=
lctx.decls.get (lctx.decls.size - 1)

def renameUserName (lctx : LocalContext) (fromName : Name) (toName : Name) : LocalContext :=
match lctx with
| { nameToDecl := map, decls := decls } =>
  match lctx.findFromUserName fromName with
  | none      => lctx
  | some decl =>
    let decl := decl.updateUserName toName;
    { nameToDecl := map.insert decl.name decl,
      decls      := decls.set decl.index decl }

section
universes u v
variables {m : Type u → Type v} [Monad m]
variable {β : Type u}

@[specialize] def mfoldl (lctx : LocalContext) (f : β → LocalDecl → m β) (b : β) : m β :=
lctx.decls.mfoldl (fun b decl => match decl with
  | none      => pure b
  | some decl => f b decl)
  b

@[specialize] def mfindDecl (lctx : LocalContext) (f : LocalDecl → m (Option β)) : m (Option β) :=
lctx.decls.mfind $ fun decl => match decl with
  | none      => pure none
  | some decl => f decl

@[specialize] def mfindDeclRev (lctx : LocalContext) (f : LocalDecl → m (Option β)) : m (Option β) :=
lctx.decls.mfindRev $ fun decl => match decl with
  | none      => pure none
  | some decl => f decl

@[specialize] def mfoldlFrom (lctx : LocalContext) (f : β → LocalDecl → m β) (b : β) (decl : LocalDecl) : m β :=
lctx.decls.mfoldlFrom (fun b decl => match decl with
  | none      => pure b
  | some decl => f b decl)
  b decl.index

end

@[inline] def foldl {β} (lctx : LocalContext) (f : β → LocalDecl → β) (b : β) : β :=
Id.run $ lctx.mfoldl f b

@[inline] def findDecl {β} (lctx : LocalContext) (f : LocalDecl → Option β) : Option β :=
Id.run $ lctx.mfindDecl f

@[inline] def findDeclRev {β} (lctx : LocalContext) (f : LocalDecl → Option β) : Option β :=
Id.run $ lctx.mfindDeclRev f

@[inline] def foldlFrom {β} (lctx : LocalContext) (f : β → LocalDecl → β) (b : β) (decl : LocalDecl) : β :=
Id.run $ lctx.mfoldlFrom f b decl

partial def isSubPrefixOfAux (a₁ a₂ : PArray (Option LocalDecl)) : Nat → Nat → Bool
| i j :=
  if i < a₁.size then
  if j < a₂.size then
    match a₁.get i with
    | none       => isSubPrefixOfAux (i+1) j
    | some decl₁ =>
      match a₂.get j with
      | none => isSubPrefixOfAux i (j+1)
      | some decl₂ =>
        if decl₁.name == decl₂.name then isSubPrefixOfAux (i+1) (j+1) else isSubPrefixOfAux i (j+1)
  else false
  else true

/- Given `lctx₁` of the form `(x_1 : A_1) ... (x_n : A_n)`, then return true
   iff there is a local context `B_1* (x_1 : A_1) ... B_n* (x_n : A_n)` which is a prefix
   of `lctx₂` where `B_i`'s are (possibly empty) sequences of local declarations. -/
def isSubPrefixOf (lctx₁ lctx₂ : LocalContext) : Bool :=
isSubPrefixOfAux lctx₁.decls lctx₂.decls 0 0

end LocalContext
end Lean