#define lean_mk_empty_array_with_capacity lean_mk_empty_array_with_capacity_inline
#include <lean/lean.h>
#undef lean_mk_empty_array_with_capacity

// Provide exported entry points for inline-only helpers used by the ARM64 backend.
lean_object * lean_mk_empty_array_with_capacity(lean_object * capacity) {
    return lean_mk_empty_array_with_capacity_inline(capacity);
}

// Export lean_alloc_array (size, capacity) so we can bypass the high-level helper.
lean_object * lean_alloc_array_runtime(size_t sz, size_t cap) {
    return lean_alloc_array(sz, cap);
}

#undef _lean_alloc_array_runtime
