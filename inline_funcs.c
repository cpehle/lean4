#include <lean/lean.h>

// Simple wrappers that will be compiled to assembly
lean_object* test_lean_box(size_t n) {
    return lean_box(n);
}

bool test_lean_is_scalar(lean_object* o) {
    return lean_is_scalar(o);
}

size_t test_lean_unbox(lean_object* o) {
    return lean_unbox(o);
}

uint32_t test_lean_unbox_uint32(lean_object* o) {
    return lean_unbox_uint32(o);
}

lean_object* test_lean_ctor_get(lean_object* o, unsigned i) {
    return lean_ctor_get(o, i);
}

void test_lean_inc(lean_object* o) {
    lean_inc(o);
}

void test_lean_dec(lean_object* o) {
    lean_dec(o);
}
