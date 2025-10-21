// Lean compiler output
// Module: arm64_recursion
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
LEAN_EXPORT lean_object* _lean_main(lean_object*);
LEAN_EXPORT lean_object* l_sumTo(lean_object*, lean_object*);
static lean_object* l_main___closed__10;
static lean_object* l_main___closed__3;
static lean_object* l_main___closed__12;
lean_object* lean_string_push(lean_object*, uint32_t);
lean_object* lean_get_stdout(lean_object*);
lean_object* l_Nat_reprFast(lean_object*);
static lean_object* l_main___closed__16;
static lean_object* l_main___closed__11;
LEAN_EXPORT lean_object* l_IO_println___at___main_spec__0(lean_object*, lean_object*);
static lean_object* l_main___closed__0;
static lean_object* l_main___closed__13;
LEAN_EXPORT lean_object* l_IO_print___at___IO_println___at___main_spec__0_spec__0(lean_object*, lean_object*);
static lean_object* l_main___closed__14;
static lean_object* l_main___closed__1;
static lean_object* l_main___closed__5;
LEAN_EXPORT lean_object* l_factorial(lean_object*);
static lean_object* l_main___closed__4;
static lean_object* l_main___closed__15;
LEAN_EXPORT lean_object* l_factorial___boxed(lean_object*);
static lean_object* l_main___closed__9;
static lean_object* l_main___closed__6;
LEAN_EXPORT lean_object* l_listSum___boxed(lean_object*);
uint8_t lean_nat_dec_eq(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_listSum(lean_object*);
static lean_object* l_main___closed__8;
lean_object* lean_nat_sub(lean_object*, lean_object*);
static lean_object* l_main___closed__7;
lean_object* lean_nat_mul(lean_object*, lean_object*);
static lean_object* l_main___closed__2;
lean_object* lean_string_append(lean_object*, lean_object*);
lean_object* lean_nat_add(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_factorial(lean_object* x_1) {
_start:
{
lean_object* x_2; uint8_t x_3; 
x_2 = lean_unsigned_to_nat(0u);
x_3 = lean_nat_dec_eq(x_1, x_2);
if (x_3 == 1)
{
lean_object* x_4; 
x_4 = lean_unsigned_to_nat(1u);
return x_4;
}
else
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; 
x_5 = lean_unsigned_to_nat(1u);
x_6 = lean_nat_sub(x_1, x_5);
x_7 = lean_nat_add(x_6, x_5);
x_8 = l_factorial(x_6);
lean_dec(x_6);
x_9 = lean_nat_mul(x_7, x_8);
lean_dec(x_8);
lean_dec(x_7);
return x_9;
}
}
}
LEAN_EXPORT lean_object* l_factorial___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_factorial(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_sumTo(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; uint8_t x_4; 
x_3 = lean_unsigned_to_nat(0u);
x_4 = lean_nat_dec_eq(x_1, x_3);
if (x_4 == 1)
{
lean_dec(x_1);
return x_2;
}
else
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; 
x_5 = lean_unsigned_to_nat(1u);
x_6 = lean_nat_sub(x_1, x_5);
lean_dec(x_1);
x_7 = lean_nat_add(x_2, x_6);
lean_dec(x_2);
x_8 = lean_nat_add(x_7, x_5);
lean_dec(x_7);
x_1 = x_6;
x_2 = x_8;
goto _start;
}
}
}
LEAN_EXPORT lean_object* l_listSum(lean_object* x_1) {
_start:
{
if (lean_obj_tag(x_1) == 0)
{
lean_object* x_2; 
x_2 = lean_unsigned_to_nat(0u);
return x_2;
}
else
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_3 = lean_ctor_get(x_1, 0);
x_4 = lean_ctor_get(x_1, 1);
x_5 = l_listSum(x_4);
x_6 = lean_nat_add(x_3, x_5);
lean_dec(x_5);
return x_6;
}
}
}
LEAN_EXPORT lean_object* l_listSum___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_listSum(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_IO_print___at___IO_println___at___main_spec__0_spec__0(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; 
x_3 = lean_get_stdout(x_2);
x_4 = lean_ctor_get(x_3, 0);
lean_inc(x_4);
x_5 = lean_ctor_get(x_3, 1);
lean_inc(x_5);
lean_dec_ref(x_3);
x_6 = lean_ctor_get(x_4, 4);
lean_inc_ref(x_6);
lean_dec(x_4);
x_7 = lean_apply_2(x_6, x_1, x_5);
return x_7;
}
}
LEAN_EXPORT lean_object* l_IO_println___at___main_spec__0(lean_object* x_1, lean_object* x_2) {
_start:
{
uint32_t x_3; lean_object* x_4; lean_object* x_5; 
x_3 = 10;
x_4 = lean_string_push(x_1, x_3);
x_5 = l_IO_print___at___IO_println___at___main_spec__0_spec__0(x_4, x_2);
return x_5;
}
}
static lean_object* _init_l_main___closed__0() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("factorial 5 = ", 14, 14);
return x_1;
}
}
static lean_object* _init_l_main___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_unsigned_to_nat(5u);
x_2 = l_factorial(x_1);
return x_2;
}
}
static lean_object* _init_l_main___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_main___closed__1;
x_2 = l_Nat_reprFast(x_1);
return x_2;
}
}
static lean_object* _init_l_main___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_main___closed__2;
x_2 = l_main___closed__0;
x_3 = lean_string_append(x_2, x_1);
return x_3;
}
}
static lean_object* _init_l_main___closed__4() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("sumTo 10 = ", 11, 11);
return x_1;
}
}
static lean_object* _init_l_main___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_unsigned_to_nat(0u);
x_2 = lean_unsigned_to_nat(10u);
x_3 = l_sumTo(x_2, x_1);
return x_3;
}
}
static lean_object* _init_l_main___closed__6() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_main___closed__5;
x_2 = l_Nat_reprFast(x_1);
return x_2;
}
}
static lean_object* _init_l_main___closed__7() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_main___closed__6;
x_2 = l_main___closed__4;
x_3 = lean_string_append(x_2, x_1);
return x_3;
}
}
static lean_object* _init_l_main___closed__8() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("listSum [1,2,3,4,5] = ", 22, 22);
return x_1;
}
}
static lean_object* _init_l_main___closed__9() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = lean_unsigned_to_nat(5u);
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_2);
lean_ctor_set(x_3, 1, x_1);
return x_3;
}
}
static lean_object* _init_l_main___closed__10() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_main___closed__9;
x_2 = lean_unsigned_to_nat(4u);
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_2);
lean_ctor_set(x_3, 1, x_1);
return x_3;
}
}
static lean_object* _init_l_main___closed__11() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_main___closed__10;
x_2 = lean_unsigned_to_nat(3u);
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_2);
lean_ctor_set(x_3, 1, x_1);
return x_3;
}
}
static lean_object* _init_l_main___closed__12() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_main___closed__11;
x_2 = lean_unsigned_to_nat(2u);
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_2);
lean_ctor_set(x_3, 1, x_1);
return x_3;
}
}
static lean_object* _init_l_main___closed__13() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_main___closed__12;
x_2 = lean_unsigned_to_nat(1u);
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_2);
lean_ctor_set(x_3, 1, x_1);
return x_3;
}
}
static lean_object* _init_l_main___closed__14() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_main___closed__13;
x_2 = l_listSum(x_1);
return x_2;
}
}
static lean_object* _init_l_main___closed__15() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l_main___closed__14;
x_2 = l_Nat_reprFast(x_1);
return x_2;
}
}
static lean_object* _init_l_main___closed__16() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_main___closed__15;
x_2 = l_main___closed__8;
x_3 = lean_string_append(x_2, x_1);
return x_3;
}
}
LEAN_EXPORT lean_object* _lean_main(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; 
x_2 = l_main___closed__3;
x_3 = l_IO_println___at___main_spec__0(x_2, x_1);
if (lean_obj_tag(x_3) == 0)
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_4 = lean_ctor_get(x_3, 1);
lean_inc(x_4);
lean_dec_ref(x_3);
x_5 = l_main___closed__7;
x_6 = l_IO_println___at___main_spec__0(x_5, x_4);
if (lean_obj_tag(x_6) == 0)
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; 
x_7 = lean_ctor_get(x_6, 1);
lean_inc(x_7);
lean_dec_ref(x_6);
x_8 = l_main___closed__16;
x_9 = l_IO_println___at___main_spec__0(x_8, x_7);
return x_9;
}
else
{
return x_6;
}
}
else
{
return x_3;
}
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_arm64__recursion(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
l_main___closed__0 = _init_l_main___closed__0();
lean_mark_persistent(l_main___closed__0);
l_main___closed__1 = _init_l_main___closed__1();
lean_mark_persistent(l_main___closed__1);
l_main___closed__2 = _init_l_main___closed__2();
lean_mark_persistent(l_main___closed__2);
l_main___closed__3 = _init_l_main___closed__3();
lean_mark_persistent(l_main___closed__3);
l_main___closed__4 = _init_l_main___closed__4();
lean_mark_persistent(l_main___closed__4);
l_main___closed__5 = _init_l_main___closed__5();
lean_mark_persistent(l_main___closed__5);
l_main___closed__6 = _init_l_main___closed__6();
lean_mark_persistent(l_main___closed__6);
l_main___closed__7 = _init_l_main___closed__7();
lean_mark_persistent(l_main___closed__7);
l_main___closed__8 = _init_l_main___closed__8();
lean_mark_persistent(l_main___closed__8);
l_main___closed__9 = _init_l_main___closed__9();
lean_mark_persistent(l_main___closed__9);
l_main___closed__10 = _init_l_main___closed__10();
lean_mark_persistent(l_main___closed__10);
l_main___closed__11 = _init_l_main___closed__11();
lean_mark_persistent(l_main___closed__11);
l_main___closed__12 = _init_l_main___closed__12();
lean_mark_persistent(l_main___closed__12);
l_main___closed__13 = _init_l_main___closed__13();
lean_mark_persistent(l_main___closed__13);
l_main___closed__14 = _init_l_main___closed__14();
lean_mark_persistent(l_main___closed__14);
l_main___closed__15 = _init_l_main___closed__15();
lean_mark_persistent(l_main___closed__15);
l_main___closed__16 = _init_l_main___closed__16();
lean_mark_persistent(l_main___closed__16);
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
res = initialize_arm64__recursion(1 /* builtin */, lean_io_mk_world());
lean_set_panic_messages(true);
lean_io_mark_end_initialization();
if (lean_io_result_is_ok(res)) {
lean_dec_ref(res);
lean_init_task_manager();
res = _lean_main(lean_io_mk_world());
}
lean_finalize_task_manager();
if (lean_io_result_is_ok(res)) {
  int ret = 0;
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
