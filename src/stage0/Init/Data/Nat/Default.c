// Lean compiler output
// Module: Init.Data.Nat.Default
// Imports: Init.Data.Nat.Basic Init.Data.Nat.Div Init.Data.Nat.Bitwise
#include "runtime/lean.h"
#if defined(__clang__)
#pragma clang diagnostic ignored "-Wunused-parameter"
#pragma clang diagnostic ignored "-Wunused-label"
#elif defined(__GNUC__) && !defined(__CLANG__)
#pragma GCC diagnostic ignored "-Wunused-parameter"
#pragma GCC diagnostic ignored "-Wunused-label"
#pragma GCC diagnostic ignored "-Wunused-but-set-variable"
#endif
#ifdef __cplusplus
extern "C" {
#endif
lean_object* initialize_Init_Data_Nat_Basic(lean_object*);
lean_object* initialize_Init_Data_Nat_Div(lean_object*);
lean_object* initialize_Init_Data_Nat_Bitwise(lean_object*);
static bool _G_initialized = false;
lean_object* initialize_Init_Data_Nat_Default(lean_object* w) {
if (_G_initialized) return w;
_G_initialized = true;
if (lean_io_result_is_error(w)) return w;
w = initialize_Init_Data_Nat_Basic(w);
if (lean_io_result_is_error(w)) return w;
w = initialize_Init_Data_Nat_Div(w);
if (lean_io_result_is_error(w)) return w;
w = initialize_Init_Data_Nat_Bitwise(w);
if (lean_io_result_is_error(w)) return w;
return w;
}
#ifdef __cplusplus
}
#endif