#define lean_alloc_ctor lean_alloc_ctor_inline
#define lean_ctor_set lean_ctor_set_inline
#define lean_inc lean_inc_inline
#define lean_inc_n lean_inc_n_inline
#define lean_inc_ref lean_inc_ref_inline
#define lean_inc_ref_n lean_inc_ref_n_inline
#define lean_dec lean_dec_inline
#define lean_dec_ref lean_dec_ref_inline
#define lean_box lean_box_inline
#define lean_unbox lean_unbox_inline
#define lean_unbox_uint32 lean_unbox_uint32_inline
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

#include <lean/lean.h>

#undef lean_alloc_ctor
#undef lean_ctor_set
#undef lean_inc
#undef lean_inc_n
#undef lean_inc_ref
#undef lean_inc_ref_n
#undef lean_dec
#undef lean_dec_ref
#undef lean_box
#undef lean_unbox
#undef lean_unbox_uint32
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

#ifdef __cplusplus
extern "C" {
#endif

LEAN_EXPORT lean_object* lean_alloc_ctor(unsigned tag, unsigned num_objs, unsigned scalar_sz) {
  return lean_alloc_ctor_inline(tag, num_objs, scalar_sz);
}

LEAN_EXPORT void lean_ctor_set(lean_object* o, unsigned i, lean_object* v) {
  lean_ctor_set_inline(o, i, v);
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

#ifdef __cplusplus
}
#endif
