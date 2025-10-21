#define lean_uint64_to_nat lean_uint64_to_nat_inline
#define lean_nat_add lean_nat_add_inline
#define lean_nat_sub lean_nat_sub_inline
#define lean_nat_mul lean_nat_mul_inline
#define lean_nat_dec_eq lean_nat_dec_eq_inline

#include <lean/lean.h>

#undef lean_uint64_to_nat
#undef lean_nat_add
#undef lean_nat_sub
#undef lean_nat_mul
#undef lean_nat_dec_eq

/* Convert an unsigned 64-bit integer into a Lean Nat using the runtime helper. */
LEAN_EXPORT lean_obj_res lean_nat_of_uint64(uint64_t n) {
    return lean_uint64_to_nat_inline(n);
}

/* Forwarders for Nat arithmetic helpers used by the generated code. */
LEAN_EXPORT lean_obj_res lean_nat_add(b_lean_obj_arg a1, b_lean_obj_arg a2) {
    return lean_nat_add_inline(a1, a2);
}

LEAN_EXPORT lean_obj_res lean_nat_sub(b_lean_obj_arg a1, b_lean_obj_arg a2) {
    return lean_nat_sub_inline(a1, a2);
}

LEAN_EXPORT lean_obj_res lean_nat_mul(b_lean_obj_arg a1, b_lean_obj_arg a2) {
    return lean_nat_mul_inline(a1, a2);
}

LEAN_EXPORT uint8_t lean_nat_dec_eq(b_lean_obj_arg a1, b_lean_obj_arg a2) {
    return lean_nat_dec_eq_inline(a1, a2);
}
