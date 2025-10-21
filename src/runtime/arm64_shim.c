/*
 * ARM64 Backend Runtime Shim
 *
 * Exports inline functions from lean.h as linkable symbols
 * so the ARM64 backend can call them instead of inlining.
 */
#include <lean/lean.h>

/* Export lean_box as a callable function */
LEAN_EXPORT lean_object* lean_box_export(size_t n) {
    return lean_box(n);
}

/* Export lean_unbox as a callable function */
LEAN_EXPORT size_t lean_unbox_export(b_lean_obj_arg o) {
    return lean_unbox(o);
}

/* Export lean_unsigned_to_nat as a callable function */
LEAN_EXPORT lean_object* lean_unsigned_to_nat_export(unsigned n) {
    return lean_unsigned_to_nat(n);
}

/* Export lean_usize_to_nat as a callable function */
LEAN_EXPORT lean_object* lean_usize_to_nat_export(size_t n) {
    return lean_usize_to_nat(n);
}

/* Export lean_is_scalar as a callable function */
LEAN_EXPORT uint8_t lean_is_scalar_export(b_lean_obj_arg o) {
    return lean_is_scalar(o);
}
