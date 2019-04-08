import init.lean.name init.lean.position init.lean.parser.trie
import syntax

open Lean
export Lean.Parser (Trie)
-- namespace Lean
namespace Parser

structure FrontendConfig :=
(filename : String)
(input    : String)
(fileMap  : FileMap)

structure TokenConfig :=
(val : String)
(lbp : Nat := 0)

namespace TokenConfig

def beq : TokenConfig → TokenConfig → Bool
| ⟨prefix₁, lbp₁⟩ ⟨prefix₂, lbp₂⟩ := prefix₁ == prefix₂ && lbp₁ == lbp₂

instance : HasBeq TokenConfig :=
⟨beq⟩

end TokenConfig

structure TokenCacheEntry :=
(startPos stopPos : String.Pos)
(token : Syntax)

structure ParserCache :=
(tokenCache : Option TokenCacheEntry := none)

structure ParserConfig extends FrontendConfig :=
(tokens : Trie TokenConfig)

def CommandParserConfig := List String -- TODO

structure ParserData :=
(stxStack : Array Syntax) (pos : String.Pos) (cache : ParserCache) (errorMsg : Option String)

@[inline] def ParserData.hasError (d : ParserData) : Bool :=
d.errorMsg != none

@[inline] def ParserData.stackSize (d : ParserData) : Nat :=
d.stxStack.size

def ParserData.restore (d : ParserData) (iniStackSz : Nat) (iniPos : Nat) : ParserData :=
match d with
| ⟨stack, _, cache, _⟩ := ⟨stack.shrink iniStackSz, iniPos, cache, none⟩

def ParserFn := String → ParserData → ParserData

instance : Inhabited ParserFn :=
⟨λ s, id⟩

structure ParserInfo :=
(updateTokens : NameSet → NameSet  := λ m, m)
(firstToken   : Option TokenConfig := none)

@[inline] def ParserFn.eps : ParserFn :=
λ s d, d

@[inline] def andthenFn (p q : ParserFn) : ParserFn :=
λ s d,
  let d := p s d in
  if d.hasError then d else q s d

@[noinline] def andthenInfo (p q : ParserInfo) : ParserInfo :=
{ updateTokens := q.updateTokens ∘ p.updateTokens,
  firstToken   := p.firstToken }

def ParserData.mkNode (d : ParserData) (k : SyntaxNodeKind) (iniStackSz : Nat) : ParserData :=
match d with
| ⟨stack, pos, cache, err⟩ :=
  if err != none && stack.size == iniStackSz then
    -- If there is an error but there are no new nodes on the stack, we just return `d`
    d
  else
    let newNode := Syntax.node k (stack.extract iniStackSz stack.size) [] in
    let stack   := stack.shrink iniStackSz in
    let stack   := stack.push newNode in
    ⟨stack, pos, cache, err⟩

@[inline] def nodeFn (k : SyntaxNodeKind) (p : ParserFn) : ParserFn :=
λ s d,
  let iniSz := d.stackSize in
  let d     := p s d in
  d.mkNode k iniSz

@[noinline] def nodeInfo (p : ParserInfo) : ParserInfo :=
{ updateTokens := p.updateTokens,
  firstToken   := p.firstToken }

@[inline] def orelseFn (p q : ParserFn) : ParserFn :=
λ s d,
  let iniSz  := d.stackSize in
  let iniPos := d.pos in
  let d      := p s d in
  if d.hasError && d.pos == iniPos then q s (d.restore iniSz iniPos) else d

@[noinline] def orelseInfo (p q : ParserInfo) : ParserInfo :=
{ updateTokens := q.updateTokens ∘ p.updateTokens,
  firstToken   :=
  match p.firstToken, q.firstToken with
  | some tk₁, some tk₂ := if tk₁ == tk₂ then some tk₁ else none
  | _, _               := none }

def ParserData.resetPos : ParserData → String.Pos → ParserData
| ⟨stack, _, cache, errorMsg⟩ pos := ⟨stack, pos, cache, errorMsg⟩

@[inline] def tryFn (p : ParserFn) : ParserFn :=
λ s d,
  let iniPos := d.pos in
  let d := p s d in
  if d.hasError then d.resetPos iniPos else d

@[noinline] def noFirstTokenInfo (info : ParserInfo) : ParserInfo :=
{ updateTokens := info.updateTokens,
  firstToken   := none }

@[inline] def optionalFn (p : ParserFn) : ParserFn :=
λ s d,
  let iniSz  := d.stackSize in
  let iniPos := d.pos in
  let d := p s d in
  let d := if d.hasError then d.restore iniSz iniPos else d in
  d.mkNode nullKind iniSz

def ParserData.mkError (d : ParserData) (msg : String) : ParserData :=
match d with
| ⟨stack, pos, cache, _⟩ := ⟨stack, pos, cache, some msg⟩

@[specialize] partial def manyAux (p : ParserFn) : String → ParserData → ParserData
| s d :=
  let iniSz  := d.stackSize in
  let iniPos := d.pos in
  let d      := p s d in
  if d.hasError then d.restore iniSz iniPos
  else if iniPos == d.pos then d.mkError "invalid 'many' parser combinator application, parser did not consume anything"
  else manyAux s d

@[inline] def manyFn (p : ParserFn) : ParserFn :=
λ s d,
  let iniSz  := d.stackSize in
  let d := manyAux p s d in
  d.mkNode nullKind iniSz

structure AbsParser (ρ : Type) :=
(info : Thunk ParserInfo) (fn : ρ)

abbrev Parser := AbsParser ParserFn

class ParserFnLift (ρ : Type) :=
(lift {} : ParserFn → ρ)
(map     : (ParserFn → ParserFn) → ρ → ρ)
(map₂    : (ParserFn → ParserFn → ParserFn) → ρ → ρ → ρ)

instance parserLiftInhabited {ρ : Type} [ParserFnLift ρ] : Inhabited ρ :=
⟨ParserFnLift.lift (default _)⟩

instance idParserLift : ParserFnLift ParserFn :=
{ lift := λ p, p,
  map  := λ m p, m p,
  map₂ := λ m p1 p2, m p1 p2 }

@[inline]
def liftParser {ρ : Type} [ParserFnLift ρ] (info : Thunk ParserInfo) (fn : ParserFn) : AbsParser ρ :=
{ info := info, fn := ParserFnLift.lift fn }

@[inline]
def mapParser {ρ : Type} [ParserFnLift ρ] (infoFn : ParserInfo → ParserInfo) (pFn : ParserFn → ParserFn) : AbsParser ρ → AbsParser ρ :=
λ p, { info := Thunk.mk (λ _, infoFn p.info.get), fn := ParserFnLift.map pFn p.fn }

@[inline]
def mapParser₂ {ρ : Type} [ParserFnLift ρ] (infoFn : ParserInfo → ParserInfo → ParserInfo) (pFn : ParserFn → ParserFn → ParserFn)
               : AbsParser ρ → AbsParser ρ → AbsParser ρ :=
λ p q, { info := Thunk.mk (λ _, infoFn p.info.get q.info.get), fn := ParserFnLift.map₂ pFn p.fn q.fn }

def EnvParserFn (α : Type) (ρ : Type) :=
α → ρ

def RecParserFn (α ρ : Type) :=
EnvParserFn (α → ρ) ρ

instance envParserLift (α ρ : Type) [ParserFnLift ρ] : ParserFnLift (EnvParserFn α ρ) :=
{ lift    := λ p a, ParserFnLift.lift p,
  map     := λ m p a, ParserFnLift.map m (p a),
  map₂    := λ m p1 p2 a, ParserFnLift.map₂ m (p1 a) (p2 a) }

instance recParserLift (α ρ : Type) [ParserFnLift ρ] : ParserFnLift (RecParserFn α ρ) :=
inferInstanceAs (ParserFnLift (EnvParserFn (α → ρ) ρ))

namespace RecParserFn
variables {α ρ : Type}

@[inline] def recurse (a : α) : RecParserFn α ρ :=
λ p, p a

@[inline] def run [ParserFnLift ρ] (x : RecParserFn α ρ) (rec : α → RecParserFn α ρ) : ρ :=
x (fix (λ f a, rec a f))

end RecParserFn

-- TODO
@[noinline] def tokenFn (tk : String) : ParserFn :=
λ s d, { errorMsg := some (s ++ tk), .. d}

-- TODO
@[noinline] def tokenInfo (s : String) : ParserInfo :=
{ updateTokens := λ m, m.insert (mkSimpleName s),
  firstToken   := none }

@[inline] def token {ρ : Type} [ParserFnLift ρ] (s : String) : AbsParser ρ :=
liftParser (tokenInfo s) (tokenFn s)

@[inline] def andthen {ρ : Type} [ParserFnLift ρ] : AbsParser ρ → AbsParser ρ → AbsParser ρ :=
mapParser₂ andthenInfo andthenFn

@[inline] def node {ρ : Type} [ParserFnLift ρ] (k : SyntaxNodeKind) : AbsParser ρ → AbsParser ρ :=
mapParser nodeInfo (nodeFn k)

@[inline] def orelse {ρ : Type} [ParserFnLift ρ] : AbsParser ρ → AbsParser ρ → AbsParser ρ :=
mapParser₂ orelseInfo orelseFn

@[inline] def try {ρ : Type} [ParserFnLift ρ] : AbsParser ρ → AbsParser ρ :=
mapParser noFirstTokenInfo tryFn

@[inline] def many {ρ : Type} [ParserFnLift ρ] : AbsParser ρ → AbsParser ρ :=
mapParser noFirstTokenInfo manyFn

@[inline] def optional {ρ : Type} [ParserFnLift ρ] : AbsParser ρ → AbsParser ρ :=
mapParser noFirstTokenInfo optionalFn

@[inline] def many1 {ρ : Type} [ParserFnLift ρ] (p : AbsParser ρ) : AbsParser ρ :=
andthen p (many p)

abbrev BasicParser : Type            := AbsParser (EnvParserFn ParserConfig ParserFn)
abbrev CmdParserFn (ρ : Type) : Type := EnvParserFn ρ (RecParserFn Unit ParserFn)
abbrev TermParserFn : Type           := RecParserFn Nat (CmdParserFn ParserConfig)
abbrev TermParser : Type             := AbsParser TermParserFn
abbrev TrailingTermParser : Type     := AbsParser (EnvParserFn Syntax TermParserFn)
abbrev CommandParser : Type          := AbsParser (CmdParserFn CommandParserConfig)

@[inline] def basicParser2TermParser (p : BasicParser) : TermParser :=
{ info := Thunk.mk (λ _, p.info.get), fn := λ _ cfg _, p.fn cfg }

instance basic2term : HasCoe BasicParser TermParser :=
⟨basicParser2TermParser⟩

local infix ` ; `:10 := Parser.andthen
local infix ` || `:5 := Parser.orelse

def mkTestKind : IO SyntaxNodeKind := nextKind `test
@[init mkTestKind] constant testKind : SyntaxNodeKind := default _

set_option pp.implicit true
set_option pp.binder_types false
set_option trace.compiler.stage2 true
-- set_option trace.compiler.boxed true
-- set_option trace.compiler.stage1 true
-- set_option trace.compiler.lcnf true
-- set_option trace.compiler.lcnf true
-- set_option trace.compiler.simp true

@[inline2]
def p0 : BasicParser :=
node testKind (token "foo"; many (token "boo"))

@[inline2]
def p1 (s : String) : TermParser :=
token "hello"; token "world"; token "boo"
||
token s
||
token "opt3"; token "boo"

@[inline2]
def p2 (s : String) : TermParser :=
-- token "boo"; p1; p1; p0
p1 "hello"; p0; p1 s

@[inline2]
def p3 (s : String) : TermParser :=
p1 s
||
p2 s
||
token "boo"; p2 s

@[inline2]
def p4 (s : String) : CommandParser :=
token s; token "boo"

end Parser
-- end Lean