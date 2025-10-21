// Lean compiler output
// Module: pure_compute
// Imports: Init
#include <lean/lean.h>
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
LEAN_EXPORT lean_object* _lean_main(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_main___redArg(lean_object*);
uint32_t lean_uint32_of_nat(lean_object*);
static lean_object* l_main___redArg___closed__0;
LEAN_EXPORT lean_object* l_fibonacci___boxed(lean_object*);
LEAN_EXPORT lean_object* l_main___redArg___boxed__const__1;
LEAN_EXPORT lean_object* l_fibonacci(lean_object*);
uint8_t lean_nat_dec_eq(lean_object*, lean_object*);
lean_object* lean_nat_sub(lean_object*, lean_object*);
lean_object* lean_nat_add(lean_object*, lean_object*);
static uint32_t l_main___redArg___closed__1;
LEAN_EXPORT lean_object* l_fibonacci(lean_object* x_1) {
_start:
{
lean_object* x_2; uint8_t x_3; 
x_2 = lean_unsigned_to_nat(0u);
x_3 = lean_nat_dec_eq(x_1, x_2);
if (x_3 == 1)
{
return x_2;
}
else
{
lean_object* x_4; lean_object* x_5; uint8_t x_6; 
x_4 = lean_unsigned_to_nat(1u);
x_5 = lean_nat_sub(x_1, x_4);
x_6 = lean_nat_dec_eq(x_5, x_2);
if (x_6 == 1)
{
lean_dec(x_5);
return x_4;
}
else
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; 
x_7 = lean_nat_sub(x_5, x_4);
lean_dec(x_5);
x_8 = l_fibonacci(x_7);
x_9 = lean_nat_add(x_7, x_4);
lean_dec(x_7);
x_10 = l_fibonacci(x_9);
lean_dec(x_9);
x_11 = lean_nat_add(x_8, x_10);
lean_dec(x_10);
lean_dec(x_8);
return x_11;
}
}
}
}
LEAN_EXPORT lean_object* l_fibonacci___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_fibonacci(x_1);
lean_dec(x_1);
return x_2;
}
}
static lean_object* _init_l_main___redArg___closed__0() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_unsigned_to_nat(10u);
x_2 = l_fibonacci(x_1);
return x_2;
}
}
static uint32_t _init_l_main___redArg___closed__1() {
_start:
{
lean_object* x_1; uint32_t x_2; 
x_1 = l_main___redArg___closed__0;
x_2 = lean_uint32_of_nat(x_1);
return x_2;
}
}
static lean_object* _init_l_main___redArg___boxed__const__1() {
_start:
{
uint32_t x_1; lean_object* x_2; 
x_1 = l_main___redArg___closed__1;
x_2 = lean_box_uint32(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_main___redArg(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; 
x_2 = l_main___redArg___boxed__const__1;
x_3 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_3, 0, x_2);
lean_ctor_set(x_3, 1, x_1);
return x_3;
}
}
LEAN_EXPORT lean_object* _lean_main(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
lean_dec(x_1);
x_3 = l_main___redArg(x_2);
return x_3;
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_pure__compute(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
l_main___redArg___closed__0 = _init_l_main___redArg___closed__0();
lean_mark_persistent(l_main___redArg___closed__0);
l_main___redArg___closed__1 = _init_l_main___redArg___closed__1();
l_main___redArg___boxed__const__1 = _init_l_main___redArg___boxed__const__1();
lean_mark_persistent(l_main___redArg___boxed__const__1);
return lean_io_result_mk_ok(lean_box(0));
}
char ** lean_setup_args(int argc, char ** argv);
void lean_initialize_runtime_module();

  #if defined(WIN32) || defined(_WIN32)
  #include <windows.h>
  #endif

  int main(int argc, char ** argv) {
  #if defined(WIN32) || defined(_WIN32)
  SetErrorMode(SEM_FAILCRITICALERRORS);
  SetConsoleOutputCP(CP_UTF8);
  #endif
  lean_object* in; lean_object* res;
argv = lean_setup_args(argc, argv);
lean_initialize_runtime_module();
lean_set_panic_messages(false);
res = initialize_pure__compute(1 /* builtin */, lean_io_mk_world());
lean_set_panic_messages(true);
lean_io_mark_end_initialization();
if (lean_io_result_is_ok(res)) {
lean_dec_ref(res);
lean_init_task_manager();
in = lean_box(0);
int i = argc;
while (i > 1) {
 lean_object* n;
 i--;
 n = lean_alloc_ctor(1,2,0); lean_ctor_set(n, 0, lean_mk_string(argv[i])); lean_ctor_set(n, 1, in);
 in = n;
}
res = _lean_main(in, lean_io_mk_world());
}
lean_finalize_task_manager();
if (lean_io_result_is_ok(res)) {
  int ret = lean_unbox_uint32(lean_io_result_get_value(res));
  lean_dec_ref(res);
  return ret;
} else {
  lean_io_result_show_error(res);
  lean_dec_ref(res);
  return 1;
}
}
#ifdef __cplusplus
}
#endif
