import system.io
open io state_t

@[reducible] def my_io := state_t nat io

instance lift_io {α} : has_coe (io α) (my_io α) :=
⟨state_t.lift⟩

def tst : my_io unit :=
do x ← read,
   put_ln x,
   write (x+10),
   y ← read,
   put_ln y,
   put_str "end of program"

vm_eval tst 5
