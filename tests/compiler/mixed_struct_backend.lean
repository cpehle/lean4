-- Test for mixed structs (scalar + non-scalar fields) and deeply nested structures

-- Mixed struct: scalars + non-scalar (String)
@[struct]
structure Person where
  id : UInt32
  name : String
  age : UInt8

-- Nested struct containing mixed struct
@[struct]
structure Employee where
  person : Person
  salary : UInt64
  department : String

-- Deeply nested structure (3 levels)
@[struct]
structure Company where
  name : String
  ceo : Employee
  revenue : UInt64

-- List field in struct (definitely non-scalar)
@[struct]
structure Team where
  id : UInt32
  members : List String
  budget : UInt64

def processCompany (c : Company) : UInt64 :=
  -- Access deeply nested scalar fields
  let ceoAge := c.ceo.person.age.toNat.toUInt64
  let ceoId := c.ceo.person.id.toUInt64  
  c.revenue + c.ceo.salary + ceoAge + ceoId

def main : IO Unit := do
  let person : Person := { id := 12345, name := "Alice", age := 30 }
  let employee : Employee := { person := person, salary := 75000, department := "Engineering" }
  let company : Company := { name := "TechCorp", ceo := employee, revenue := 1000000 }
  let team : Team := { id := 100, members := ["Bob", "Carol", "Dave"], budget := 50000 }
  
  let result := processCompany company
  
  -- Test mixed field access
  IO.println s!"Person: id={person.id}, name={person.name}, age={person.age}"
  IO.println s!"Employee: name={employee.person.name}, dept={employee.department}, salary={employee.salary}"
  IO.println s!"Company: {company.name}, CEO: {company.ceo.person.name}, revenue={company.revenue}"
  IO.println s!"Team: id={team.id}, members={team.members.length}, budget={team.budget}"
  IO.println s!"Calculation result: {result}"