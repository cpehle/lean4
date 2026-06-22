#include <lean/lean.h>
#include <stdio.h>

extern void lean_initialize_runtime_module(void);
extern void lean_io_mark_end_initialization(void);

static size_t align_object_size(size_t sz) {
  size_t delta = LEAN_OBJECT_SIZE_DELTA;
  return (sz + delta - 1) / delta * delta;
}

static void fill_ctor(lean_object * o) {
  for (unsigned i = 0; i < lean_ctor_num_objs(o); i++) {
    lean_ctor_set(o, i, lean_box(i));
  }

  uint8_t * scalars = lean_ctor_scalar_cptr(o);
  for (unsigned i = 0; i < 80; i++) {
    scalars[i] = (uint8_t)i;
  }
}

int main(void) {
  size_t raw_size = sizeof(lean_ctor_object) + 121 * sizeof(void*) + 80;
  size_t expected_size = align_object_size(raw_size);

#ifdef LEAN_MIMALLOC
  if (expected_size <= 128 * sizeof(void*)) {
    fprintf(stderr, "test constructor does not exceed the old mimalloc small size\n");
    return 1;
  }

  if (expected_size > MI_SMALL_SIZE_MAX) {
    fprintf(stderr, "test constructor exceeds configured mimalloc small size\n");
    return 1;
  }
#endif

  lean_initialize_runtime_module();
  lean_io_mark_end_initialization();

  for (unsigned iter = 0; iter < 10000; iter++) {
    lean_object * o = lean_alloc_ctor(0, 121, 80);
    fill_ctor(o);

    if (lean_ctor_num_objs(o) != 121) {
      fprintf(stderr, "unexpected object field count\n");
      return 1;
    }

    if (lean_object_byte_size(o) != expected_size) {
      fprintf(stderr, "unexpected object size\n");
      return 1;
    }

    lean_dec(o);
  }

  printf("large ctor ok\n");
  return 0;
}
