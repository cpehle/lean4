#if !defined(__aarch64__)
#error "arm64_inlines.S should only be compiled on AArch64"
#endif

#ifdef __APPLE__
#define LEAN_EXPORT_NAME(sym) _##sym
#else
#define LEAN_EXPORT_NAME(sym) sym
#endif

    .text
    .align 2
    .globl LEAN_EXPORT_NAME(lean_ctor_get)
LEAN_EXPORT_NAME(lean_ctor_get):
    // x0: object pointer
    // x1: field index (unsigned)
    lsl x2, x1, #3        // scale index by 8 bytes
    add x2, x2, #8        // skip Lean object header (8 bytes)
    add x0, x0, x2
    ldr x0, [x0]
    ret

    .align 2
    .globl LEAN_EXPORT_NAME(lean_inc)
LEAN_EXPORT_NAME(lean_inc):
    // x0: object pointer
    // If tagged (scalar), nothing to do
    tst x0, #1
    b.ne 2f
    // Load RC (32-bit signed)
    ldr w8, [x0]
    cmp w8, #0
    b.gt 0f            // Positive RC => single-threaded path
    cbz w8, 2f         // Persistent (rc = 0)

    // Multi-threaded object: atomic fetch_sub(rc, 1)
1:
    ldxr w9, [x0]
    sub w10, w9, #1
    stxr w11, w10, [x0]
    cbnz w11, 1b
    ret

0:
    add w8, w8, #1
    str w8, [x0]
2:
    ret

#undef LEAN_EXPORT_NAME
