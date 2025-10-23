#define lean_alloc_ctor lean_alloc_ctor_inline
#define lean_ctor_set lean_ctor_set_inline
#define lean_alloc_closure lean_alloc_closure_inline
#define lean_closure_set lean_closure_set_inline
#define lean_inc lean_inc_inline
#define lean_inc_n lean_inc_n_inline
#define lean_inc_ref lean_inc_ref_inline
#define lean_inc_ref_n lean_inc_ref_n_inline
#define lean_dec lean_dec_inline
#define lean_dec_ref lean_dec_ref_inline
#define lean_box lean_box_inline
#define lean_unbox lean_unbox_inline
#define lean_unbox_uint32 lean_unbox_uint32_inline
#define lean_unbox_uint64 lean_unbox_uint64_inline
#define lean_io_mk_world lean_io_mk_world_inline
#define lean_io_result_is_ok lean_io_result_is_ok_inline
#define lean_io_result_get_value lean_io_result_get_value_inline
#define lean_io_result_mk_ok lean_io_result_mk_ok_inline
#define lean_string_length lean_string_length_inline
#define lean_array_uget lean_array_uget_inline
#define lean_array_uset lean_array_uset_inline
#define lean_array_size lean_array_size_inline
#define lean_array_get_size lean_array_get_size_inline
#define lean_array_get_borrowed lean_array_get_borrowed_inline
#define lean_usize_dec_lt lean_usize_dec_lt_inline
#define lean_nat_dec_le lean_nat_dec_le_inline
#define lean_nat_dec_lt lean_nat_dec_lt_inline
#define lean_usize_dec_eq lean_usize_dec_eq_inline
#define lean_usize_of_nat lean_usize_of_nat_inline
#define lean_task_spawn lean_task_spawn_inline
#define lean_task_get_own lean_task_get_own_inline
#define lean_thunk_get_own lean_thunk_get_own_inline
#define lean_mk_thunk lean_mk_thunk_inline
#define lean_nat_mod lean_nat_mod_inline
#define lean_array_pop lean_array_pop_inline
#define lean_array_fget_borrowed lean_array_fget_borrowed_inline
#define lean_array_get lean_array_get_inline
#define lean_uint8_to_nat lean_uint8_to_nat_inline
#define lean_uint32_to_nat lean_uint32_to_nat_inline
#define lean_uint32_of_nat lean_uint32_of_nat_inline
#define lean_uint32_dec_eq lean_uint32_dec_eq_inline
#define lean_uint64_to_nat lean_uint64_to_nat_inline
#define lean_uint64_of_nat lean_uint64_of_nat_inline
#define lean_usize_to_nat lean_usize_to_nat_inline
#define lean_array_set lean_array_set_inline
#define lean_array_fget lean_array_fget_inline
#define lean_array_fset lean_array_fset_inline
#define lean_nat_shiftr lean_nat_shiftr_inline
#define lean_string_dec_eq lean_string_dec_eq_inline
#define lean_string_dec_lt lean_string_dec_lt_inline
#define lean_string_utf8_byte_size lean_string_utf8_byte_size_inline
#define lean_string_utf8_at_end lean_string_utf8_at_end_inline
#define lean_nat_to_int lean_nat_to_int_inline
#define lean_int_neg lean_int_neg_inline
#define lean_nat_abs lean_nat_abs_inline
#define lean_int_dec_lt lean_int_dec_lt_inline
#define lean_uint16_to_nat lean_uint16_to_nat_inline
#define lean_float_to_uint8 lean_float_to_uint8_inline
#define lean_float_to_uint16 lean_float_to_uint16_inline
#define lean_float_to_uint32 lean_float_to_uint32_inline
#define lean_float_to_uint64 lean_float_to_uint64_inline
#define lean_float_to_usize lean_float_to_usize_inline
#define lean_uint64_to_float lean_uint64_to_float_inline
#define lean_float_add lean_float_add_inline
#define lean_float_sub lean_float_sub_inline
#define lean_float_mul lean_float_mul_inline
#define lean_float_div lean_float_div_inline
#define lean_float_negate lean_float_negate_inline
#define lean_float_beq lean_float_beq_inline
#define lean_float_decLe lean_float_decLe_inline
#define lean_float_decLt lean_float_decLt_inline
#define lean_box_float lean_box_float_inline
#define lean_unbox_float lean_unbox_float_inline
#define lean_uint64_to_usize lean_uint64_to_usize_inline
#define lean_usize_dec_le lean_usize_dec_le_inline
#define lean_usize_land lean_usize_land_inline
#define lean_usize_shift_left lean_usize_shift_left_inline
#define lean_usize_shift_right lean_usize_shift_right_inline
#define lean_int_add lean_int_add_inline
#define lean_int_dec_eq lean_int_dec_eq_inline
#define lean_int_ediv lean_int_ediv_inline
#define lean_int_emod lean_int_emod_inline
#define lean_int_mul lean_int_mul_inline
#define lean_strict_and lean_strict_and_inline
#define lean_strict_or lean_strict_or_inline

#include <stdio.h>
#include <lean/lean.h>

#undef lean_alloc_ctor
#undef lean_ctor_set
#undef lean_alloc_closure
#undef lean_closure_set
#undef lean_inc
#undef lean_inc_n
#undef lean_inc_ref
#undef lean_inc_ref_n
#undef lean_dec
#undef lean_dec_ref
#undef lean_box
#undef lean_unbox
#undef lean_unbox_uint32
#undef lean_unbox_uint64
#undef lean_io_mk_world
#undef lean_io_result_is_ok
#undef lean_io_result_get_value
#undef lean_io_result_mk_ok
#undef lean_string_length
#undef lean_array_uget
#undef lean_array_uset
#undef lean_array_size
#undef lean_array_get_size
#undef lean_array_get_borrowed
#undef lean_usize_dec_lt
#undef lean_nat_dec_le
#undef lean_nat_dec_lt
#undef lean_usize_dec_eq
#undef lean_usize_of_nat
#undef lean_task_spawn
#undef lean_task_get_own
#undef lean_thunk_get_own
#undef lean_mk_thunk
#undef lean_nat_mod
#undef lean_array_pop
#undef lean_array_fget_borrowed
#undef lean_array_get
#undef lean_uint8_to_nat
#undef lean_uint32_to_nat
#undef lean_uint32_of_nat
#undef lean_uint32_dec_eq
#undef lean_uint64_to_nat
#undef lean_uint64_of_nat
#undef lean_usize_to_nat
#undef lean_array_set
#undef lean_array_fget
#undef lean_array_fset
#undef lean_nat_shiftr
#undef lean_string_dec_eq
#undef lean_string_dec_lt
#undef lean_string_utf8_byte_size
#undef lean_string_utf8_at_end
#undef lean_nat_to_int
#undef lean_int_neg
#undef lean_nat_abs
#undef lean_int_dec_lt
#undef lean_uint16_to_nat
#undef lean_float_to_uint8
#undef lean_float_to_uint16
#undef lean_float_to_uint32
#undef lean_float_to_uint64
#undef lean_float_to_usize
#undef lean_uint64_to_float
#undef lean_float_add
#undef lean_float_sub
#undef lean_float_mul
#undef lean_float_div
#undef lean_float_negate
#undef lean_float_beq
#undef lean_float_decLe
#undef lean_float_decLt
#undef lean_box_float
#undef lean_unbox_float
#undef lean_uint64_to_usize
#undef lean_usize_dec_le
#undef lean_usize_land
#undef lean_usize_shift_left
#undef lean_usize_shift_right
#undef lean_int_add
#undef lean_int_dec_eq
#undef lean_int_ediv
#undef lean_int_emod
#undef lean_int_mul
#undef lean_strict_and
#undef lean_strict_or

#ifdef __cplusplus
extern "C" {
#endif

LEAN_EXPORT lean_object* lean_alloc_ctor(unsigned tag, unsigned num_objs, unsigned scalar_sz) {
  return lean_alloc_ctor_inline(tag, num_objs, scalar_sz);
}

LEAN_EXPORT void lean_ctor_set(lean_object* o, unsigned i, lean_object* v) {
  lean_ctor_set_inline(o, i, v);
}

LEAN_EXPORT lean_object* lean_alloc_closure(void* fun, unsigned arity, unsigned num_fixed) {
  return lean_alloc_closure_inline(fun, arity, num_fixed);
}

LEAN_EXPORT lean_object* lean_closure_set(lean_object* c, unsigned i, lean_object* v) {
  lean_closure_set_inline(c, i, v);
  return c;  // Return closure pointer so ARM64 backend can chain calls
}

LEAN_EXPORT void lean_inc(lean_object* o) {
  lean_inc_inline(o);
}

LEAN_EXPORT void lean_inc_n(lean_object* o, size_t n) {
  lean_inc_n_inline(o, n);
}

LEAN_EXPORT void lean_inc_ref(lean_object* o) {
  lean_inc_ref_inline(o);
}

LEAN_EXPORT void lean_inc_ref_n(lean_object* o, size_t n) {
  lean_inc_ref_n_inline(o, n);
}

LEAN_EXPORT void lean_dec(lean_object* o) {
  lean_dec_inline(o);
}

LEAN_EXPORT void lean_dec_ref(lean_object* o) {
  lean_dec_ref_inline(o);
}

LEAN_EXPORT lean_object* lean_box(size_t n) {
  return lean_box_inline(n);
}

LEAN_EXPORT size_t lean_unbox(lean_object* o) {
  return lean_unbox_inline(o);
}

LEAN_EXPORT uint32_t lean_unbox_uint32(lean_object* o) {
  return lean_unbox_uint32_inline(o);
}

LEAN_EXPORT uint64_t lean_unbox_uint64(lean_object* o) {
  return lean_unbox_uint64_inline(o);
}

LEAN_EXPORT lean_object* lean_io_mk_world(void) {
  return lean_io_mk_world_inline();
}

LEAN_EXPORT uint8_t lean_io_result_is_ok(lean_object* r) {
  return lean_io_result_is_ok_inline(r);
}

LEAN_EXPORT lean_object* lean_io_result_get_value(lean_object* r) {
  return lean_io_result_get_value_inline(r);
}

LEAN_EXPORT lean_object* lean_io_result_mk_ok(lean_object* v) {
  return lean_io_result_mk_ok_inline(v);
}

// String operations
LEAN_EXPORT lean_object* lean_string_length(lean_object* s) {
  return lean_string_length_inline(s);
}

// Array operations
LEAN_EXPORT lean_object* lean_array_uget(lean_object* a, size_t i) {
  return lean_array_uget_inline(a, i);
}

LEAN_EXPORT lean_object* lean_array_uset(lean_object* a, size_t i, lean_object* v) {
  return lean_array_uset_inline(a, i, v);
}

LEAN_EXPORT size_t lean_array_size(lean_object* a) {
  return lean_array_size_inline(a);
}

LEAN_EXPORT lean_object* lean_array_get_size(lean_object* a) {
  return lean_array_get_size_inline(a);
}

LEAN_EXPORT lean_object* lean_array_get_borrowed(lean_object* def_val, lean_object* a, lean_object* i) {
  return lean_array_get_borrowed_inline(def_val, a, i);
}

// Usize operations
LEAN_EXPORT uint8_t lean_usize_dec_lt(size_t a1, size_t a2) {
  return lean_usize_dec_lt_inline(a1, a2);
}

LEAN_EXPORT uint8_t lean_usize_dec_eq(size_t a1, size_t a2) {
  return lean_usize_dec_eq_inline(a1, a2);
}

LEAN_EXPORT size_t lean_usize_of_nat(lean_object* a) {
  return lean_usize_of_nat_inline(a);
}

// Nat operations
LEAN_EXPORT uint8_t lean_nat_dec_le(lean_object* a1, lean_object* a2) {
  return lean_nat_dec_le_inline(a1, a2);
}

LEAN_EXPORT uint8_t lean_nat_dec_lt(lean_object* a1, lean_object* a2) {
  return lean_nat_dec_lt_inline(a1, a2);
}

// Thunk operations
LEAN_EXPORT lean_object* lean_mk_thunk(lean_object* c) {
  return lean_mk_thunk_inline(c);
}

LEAN_EXPORT lean_object* lean_thunk_get_own(lean_object* t) {
  return lean_thunk_get_own_inline(t);
}

// Task operations
LEAN_EXPORT lean_object* lean_task_spawn(lean_object* c, lean_object* prio) {
  return lean_task_spawn_inline(c, prio);
}

LEAN_EXPORT lean_object* lean_task_get_own(lean_object* t) {
  return lean_task_get_own_inline(t);
}

LEAN_EXPORT lean_object* lean_nat_mod(lean_object* a1, lean_object* a2) {
  return lean_nat_mod_inline(a1, a2);
}

LEAN_EXPORT lean_object* lean_array_pop(lean_object* a) {
  return lean_array_pop_inline(a);
}

LEAN_EXPORT lean_object* lean_array_fget_borrowed(lean_object* a, lean_object* i) {
  return lean_array_fget_borrowed_inline(a, i);
}

LEAN_EXPORT lean_object* lean_array_get(lean_object* def_val, lean_object* a, lean_object* i) {
  return lean_array_get_inline(def_val, a, i);
}

LEAN_EXPORT lean_object* lean_uint8_to_nat(uint8_t n) {
  return lean_uint8_to_nat_inline(n);
}

LEAN_EXPORT lean_object* lean_uint32_to_nat(uint32_t n) {
  return lean_uint32_to_nat_inline(n);
}

LEAN_EXPORT uint32_t lean_uint32_of_nat(lean_object* n) {
  return lean_uint32_of_nat_inline(n);
}

LEAN_EXPORT uint8_t lean_uint32_dec_eq(uint32_t a1, uint32_t a2) {
  return lean_uint32_dec_eq_inline(a1, a2);
}

// Additional array operations
LEAN_EXPORT lean_object* lean_array_fget(lean_object* a, lean_object* i) {
  return lean_array_fget_inline(a, i);
}

LEAN_EXPORT lean_object* lean_array_fset(lean_object* a, lean_object* i, lean_object* v) {
  return lean_array_fset_inline(a, i, v);
}

LEAN_EXPORT lean_object* lean_array_set(lean_object* a, lean_object* i, lean_object* v) {
  return lean_array_set_inline(a, i, v);
}

// Nat/Int conversions - lean_nat_to_int and lean_uint64_to_usize are already inline in lean.h

LEAN_EXPORT lean_object* lean_uint64_to_nat(uint64_t n) {
  return lean_uint64_to_nat_inline(n);
}

LEAN_EXPORT uint64_t lean_uint64_of_nat(lean_object* n) {
  return lean_uint64_of_nat_inline(n);
}

// Usize operations - lean_usize_dec_le, lean_usize_land, lean_usize_shift_* are already inline in lean.h

LEAN_EXPORT lean_object* lean_usize_to_nat(size_t n) {
  return lean_usize_to_nat_inline(n);
}

// Nat operations
LEAN_EXPORT lean_object* lean_nat_shiftr(lean_object* a, lean_object* b) {
  return lean_nat_shiftr_inline(a, b);
}

// String operations
LEAN_EXPORT uint8_t lean_string_dec_eq(lean_object* a, lean_object* b) {
  return lean_string_dec_eq_inline(a, b);
}

LEAN_EXPORT uint8_t lean_string_dec_lt(lean_object* a, lean_object* b) {
  return lean_string_dec_lt_inline(a, b);
}

LEAN_EXPORT lean_object* lean_string_utf8_byte_size(lean_object* a) {
  return lean_string_utf8_byte_size_inline(a);
}

LEAN_EXPORT uint8_t lean_string_utf8_at_end(lean_object* s, lean_object* i) {
  return lean_string_utf8_at_end_inline(s, i);
}

// Int/Nat conversion operations
LEAN_EXPORT lean_object* lean_nat_to_int(lean_object* a) {
  return lean_nat_to_int_inline(a);
}

LEAN_EXPORT lean_object* lean_int_neg(lean_object* a) {
  return lean_int_neg_inline(a);
}

LEAN_EXPORT lean_object* lean_nat_abs(lean_object* i) {
  return lean_nat_abs_inline(i);
}

LEAN_EXPORT uint8_t lean_int_dec_lt(lean_object* a1, lean_object* a2) {
  return lean_int_dec_lt_inline(a1, a2);
}

LEAN_EXPORT lean_object* lean_uint16_to_nat(uint16_t a) {
  return lean_uint16_to_nat_inline(a);
}

// Float conversion operations
LEAN_EXPORT uint8_t lean_float_to_uint8(double a) {
  return lean_float_to_uint8_inline(a);
}

LEAN_EXPORT uint16_t lean_float_to_uint16(double a) {
  return lean_float_to_uint16_inline(a);
}

LEAN_EXPORT uint32_t lean_float_to_uint32(double a) {
  return lean_float_to_uint32_inline(a);
}

LEAN_EXPORT uint64_t lean_float_to_uint64(double a) {
  return lean_float_to_uint64_inline(a);
}

LEAN_EXPORT size_t lean_float_to_usize(double a) {
  return lean_float_to_usize_inline(a);
}

LEAN_EXPORT double lean_uint64_to_float(uint64_t a) {
  return lean_uint64_to_float_inline(a);
}

// Float arithmetic operations
LEAN_EXPORT double lean_float_add(double a, double b) {
  return lean_float_add_inline(a, b);
}

LEAN_EXPORT double lean_float_sub(double a, double b) {
  return lean_float_sub_inline(a, b);
}

LEAN_EXPORT double lean_float_mul(double a, double b) {
  return lean_float_mul_inline(a, b);
}

LEAN_EXPORT double lean_float_div(double a, double b) {
  return lean_float_div_inline(a, b);
}

LEAN_EXPORT double lean_float_negate(double a) {
  return lean_float_negate_inline(a);
}

LEAN_EXPORT uint8_t lean_float_beq(double a, double b) {
  return lean_float_beq_inline(a, b);
}

LEAN_EXPORT uint8_t lean_float_decLe(double a, double b) {
  return lean_float_decLe_inline(a, b);
}

LEAN_EXPORT uint8_t lean_float_decLt(double a, double b) {
  return lean_float_decLt_inline(a, b);
}

LEAN_EXPORT lean_object* lean_box_float(double f) {
  return lean_box_float_inline(f);
}

LEAN_EXPORT double lean_unbox_float(lean_object* o) {
  return lean_unbox_float_inline(o);
}

// Usize operations
LEAN_EXPORT size_t lean_uint64_to_usize(uint64_t a) {
  return (size_t)a;
}

LEAN_EXPORT uint8_t lean_usize_dec_le(size_t a, size_t b) {
  return a <= b;
}

LEAN_EXPORT size_t lean_usize_land(size_t a, size_t b) {
  return a & b;
}

LEAN_EXPORT size_t lean_usize_shift_left(size_t a, size_t b) {
  return a << b;
}

LEAN_EXPORT size_t lean_usize_shift_right(size_t a, size_t b) {
  return a >> b;
}

// Int operations - these operate on lean_object* (bignum) types
LEAN_EXPORT lean_object* lean_int_add(lean_object* a, lean_object* b) {
  return lean_int_add_inline(a, b);
}

LEAN_EXPORT uint8_t lean_int_dec_eq(lean_object* a, lean_object* b) {
  return lean_int_dec_eq_inline(a, b);
}

LEAN_EXPORT lean_object* lean_int_ediv(lean_object* a, lean_object* b) {
  return lean_int_ediv_inline(a, b);
}

LEAN_EXPORT lean_object* lean_int_emod(lean_object* a, lean_object* b) {
  return lean_int_emod_inline(a, b);
}

LEAN_EXPORT lean_object* lean_int_mul(lean_object* a, lean_object* b) {
  return lean_int_mul_inline(a, b);
}

// Strict boolean operations
LEAN_EXPORT uint8_t lean_strict_and(uint8_t a, uint8_t b) {
  return a && b;
}

LEAN_EXPORT uint8_t lean_strict_or(uint8_t a, uint8_t b) {
  return a || b;
}

#ifdef __cplusplus
}
#endif
