#define lean_alloc_ctor lean_alloc_ctor_inline
#define lean_ctor_set lean_ctor_set_inline
#define lean_inc lean_inc_inline
#define lean_dec lean_dec_inline
#define lean_nat_add lean_nat_add_inline
#define lean_nat_sub lean_nat_sub_inline
#define lean_nat_dec_eq lean_nat_dec_eq_inline
#define lean_uint32_of_nat lean_uint32_of_nat_inline
#include <lean/lean.h>
#undef lean_alloc_ctor
#undef lean_ctor_set
#undef lean_inc
#undef lean_dec
#undef lean_nat_add
#undef lean_nat_sub
#undef lean_nat_dec_eq
#undef lean_uint32_of_nat

LEAN_EXPORT lean_object* lean_alloc_ctor(unsigned tag, unsigned num_objs, unsigned scalar_sz) {
  return lean_alloc_ctor_inline(tag, num_objs, scalar_sz);
}

LEAN_EXPORT void lean_ctor_set(lean_object* o, unsigned i, lean_object* v) {
  lean_ctor_set_inline(o, i, v);
}

LEAN_EXPORT void lean_inc(lean_object* o) {
  lean_inc_inline(o);
}

LEAN_EXPORT void lean_dec(lean_object* o) {
  lean_dec_inline(o);
}

LEAN_EXPORT lean_object* lean_nat_add(lean_object* a, lean_object* b) {
  return lean_nat_add_inline(a, b);
}

LEAN_EXPORT lean_object* lean_nat_sub(lean_object* a, lean_object* b) {
  return lean_nat_sub_inline(a, b);
}

LEAN_EXPORT uint8_t lean_nat_dec_eq(lean_object* a, lean_object* b) {
  return lean_nat_dec_eq_inline(a, b);
}

LEAN_EXPORT uint32_t lean_uint32_of_nat(lean_object* a) {
  return lean_uint32_of_nat_inline(a);
}
