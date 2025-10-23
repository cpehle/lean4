// Lean compiler output
// Module: nat_shiftr
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
lean_object* lean_format_pretty(lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* lean_mk_empty_array_with_capacity(lean_object*);
LEAN_EXPORT lean_object* _lean_main(lean_object*);
static lean_object* l_test___closed__8;
LEAN_EXPORT lean_object* l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___test_spec__2___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___test_spec__2(lean_object*, lean_object*, lean_object*, size_t, size_t, lean_object*, lean_object*);
lean_object* lean_array_push(lean_object*, lean_object*);
static lean_object* l_test___closed__2;
LEAN_EXPORT lean_object* l_test___boxed(lean_object*, lean_object*);
static lean_object* l_test___closed__9;
static lean_object* l_test___closed__4;
lean_object* lean_nat_shiftr(lean_object*, lean_object*);
static lean_object* l_test___closed__5;
lean_object* lean_string_push(lean_object*, uint32_t);
lean_object* lean_get_stdout(lean_object*);
lean_object* l_Nat_reprFast(lean_object*);
static lean_object* l_test___closed__6;
LEAN_EXPORT lean_object* l_IO_println___at___test_spec__0(lean_object*, lean_object*);
static lean_object* l_main___closed__0;
static lean_object* l_test___closed__12;
static lean_object* l_test___closed__3;
static lean_object* l_main___closed__1;
static lean_object* l_test___closed__11;
static lean_object* l_test___closed__10;
static size_t l_test___closed__13;
LEAN_EXPORT lean_object* l_test(lean_object*, lean_object*);
static lean_object* l_test___closed__0;
size_t lean_usize_add(size_t, size_t);
lean_object* lean_array_uget(lean_object*, size_t);
size_t lean_array_size(lean_object*);
static lean_object* l_test___closed__1;
LEAN_EXPORT lean_object* l_IO_print___at___IO_println___at___test_spec__0_spec__0(lean_object*, lean_object*);
static lean_object* l_main___closed__2;
static lean_object* l_test___closed__7;
uint8_t lean_usize_dec_lt(size_t, size_t);
LEAN_EXPORT lean_object* l_IO_print___at___IO_println___at___test_spec__0_spec__0(lean_object* x_1, lean_object* x_2) {
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
LEAN_EXPORT lean_object* l_IO_println___at___test_spec__0(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; uint32_t x_6; lean_object* x_7; lean_object* x_8; 
x_3 = lean_unsigned_to_nat(120u);
x_4 = lean_unsigned_to_nat(0u);
x_5 = lean_format_pretty(x_1, x_3, x_4, x_4);
x_6 = 10;
x_7 = lean_string_push(x_5, x_6);
x_8 = l_IO_print___at___IO_println___at___test_spec__0_spec__0(x_7, x_2);
return x_8;
}
}
LEAN_EXPORT lean_object* l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___test_spec__2(lean_object* x_1, lean_object* x_2, lean_object* x_3, size_t x_4, size_t x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
uint8_t x_8; 
x_8 = lean_usize_dec_lt(x_5, x_4);
if (x_8 == 0)
{
lean_object* x_9; 
x_9 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_9, 0, x_6);
lean_ctor_set(x_9, 1, x_7);
return x_9;
}
else
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; 
x_10 = lean_array_uget(x_3, x_5);
x_11 = lean_nat_shiftr(x_1, x_10);
lean_dec(x_10);
x_12 = l_Nat_reprFast(x_11);
x_13 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_13, 0, x_12);
x_14 = l_IO_println___at___test_spec__0(x_13, x_7);
if (lean_obj_tag(x_14) == 0)
{
lean_object* x_15; size_t x_16; size_t x_17; 
x_15 = lean_ctor_get(x_14, 1);
lean_inc(x_15);
lean_dec_ref(x_14);
x_16 = 1;
x_17 = lean_usize_add(x_5, x_16);
{
size_t _tmp_4 = x_17;
lean_object* _tmp_5 = x_2;
lean_object* _tmp_6 = x_15;
x_5 = _tmp_4;
x_6 = _tmp_5;
x_7 = _tmp_6;
}
goto _start;
}
else
{
return x_14;
}
}
}
}
static lean_object* _init_l_test___closed__0() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_unsigned_to_nat(12u);
x_2 = lean_mk_empty_array_with_capacity(x_1);
return x_2;
}
}
static lean_object* _init_l_test___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_unsigned_to_nat(0u);
x_2 = l_test___closed__0;
x_3 = lean_array_push(x_2, x_1);
return x_3;
}
}
static lean_object* _init_l_test___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_unsigned_to_nat(1u);
x_2 = l_test___closed__1;
x_3 = lean_array_push(x_2, x_1);
return x_3;
}
}
static lean_object* _init_l_test___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_unsigned_to_nat(14u);
x_2 = l_test___closed__2;
x_3 = lean_array_push(x_2, x_1);
return x_3;
}
}
static lean_object* _init_l_test___closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_unsigned_to_nat(15u);
x_2 = l_test___closed__3;
x_3 = lean_array_push(x_2, x_1);
return x_3;
}
}
static lean_object* _init_l_test___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_unsigned_to_nat(16u);
x_2 = l_test___closed__4;
x_3 = lean_array_push(x_2, x_1);
return x_3;
}
}
static lean_object* _init_l_test___closed__6() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_unsigned_to_nat(17u);
x_2 = l_test___closed__5;
x_3 = lean_array_push(x_2, x_1);
return x_3;
}
}
static lean_object* _init_l_test___closed__7() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_unsigned_to_nat(31u);
x_2 = l_test___closed__6;
x_3 = lean_array_push(x_2, x_1);
return x_3;
}
}
static lean_object* _init_l_test___closed__8() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_unsigned_to_nat(32u);
x_2 = l_test___closed__7;
x_3 = lean_array_push(x_2, x_1);
return x_3;
}
}
static lean_object* _init_l_test___closed__9() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_unsigned_to_nat(33u);
x_2 = l_test___closed__8;
x_3 = lean_array_push(x_2, x_1);
return x_3;
}
}
static lean_object* _init_l_test___closed__10() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_unsigned_to_nat(63u);
x_2 = l_test___closed__9;
x_3 = lean_array_push(x_2, x_1);
return x_3;
}
}
static lean_object* _init_l_test___closed__11() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_unsigned_to_nat(64u);
x_2 = l_test___closed__10;
x_3 = lean_array_push(x_2, x_1);
return x_3;
}
}
static lean_object* _init_l_test___closed__12() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_unsigned_to_nat(65u);
x_2 = l_test___closed__11;
x_3 = lean_array_push(x_2, x_1);
return x_3;
}
}
static size_t _init_l_test___closed__13() {
_start:
{
lean_object* x_1; size_t x_2; 
x_1 = l_test___closed__12;
x_2 = lean_array_size(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_test(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; size_t x_5; size_t x_6; lean_object* x_7; 
x_3 = l_test___closed__12;
x_4 = lean_box(0);
x_5 = l_test___closed__13;
x_6 = 0;
x_7 = l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___test_spec__2(x_1, x_4, x_3, x_5, x_6, x_4, x_2);
if (lean_obj_tag(x_7) == 0)
{
uint8_t x_8; 
x_8 = !lean_is_exclusive(x_7);
if (x_8 == 0)
{
lean_object* x_9; 
x_9 = lean_ctor_get(x_7, 0);
lean_dec(x_9);
lean_ctor_set(x_7, 0, x_4);
return x_7;
}
else
{
lean_object* x_10; lean_object* x_11; 
x_10 = lean_ctor_get(x_7, 1);
lean_inc(x_10);
lean_dec(x_7);
x_11 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_11, 0, x_4);
lean_ctor_set(x_11, 1, x_10);
return x_11;
}
}
else
{
return x_7;
}
}
}
LEAN_EXPORT lean_object* l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___test_spec__2___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7) {
_start:
{
size_t x_8; size_t x_9; lean_object* x_10; 
x_8 = lean_unbox_usize(x_4);
lean_dec(x_4);
x_9 = lean_unbox_usize(x_5);
lean_dec(x_5);
x_10 = l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___test_spec__2(x_1, x_2, x_3, x_8, x_9, x_6, x_7);
lean_dec_ref(x_3);
lean_dec(x_1);
return x_10;
}
}
LEAN_EXPORT lean_object* l_test___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_test(x_1, x_2);
lean_dec(x_1);
return x_3;
}
}
static lean_object* _init_l_main___closed__0() {
_start:
{
lean_object* x_1; 
x_1 = lean_cstr_to_nat("18446744073709551615");
return x_1;
}
}
static lean_object* _init_l_main___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_cstr_to_nat("18446744073709551616");
return x_1;
}
}
static lean_object* _init_l_main___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = lean_cstr_to_nat("18446744073709551617");
return x_1;
}
}
LEAN_EXPORT lean_object* _lean_main(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; 
x_2 = lean_unsigned_to_nat(0u);
x_3 = l_test(x_2, x_1);
if (lean_obj_tag(x_3) == 0)
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_4 = lean_ctor_get(x_3, 1);
lean_inc(x_4);
lean_dec_ref(x_3);
x_5 = lean_unsigned_to_nat(1u);
x_6 = l_test(x_5, x_4);
if (lean_obj_tag(x_6) == 0)
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; 
x_7 = lean_ctor_get(x_6, 1);
lean_inc(x_7);
lean_dec_ref(x_6);
x_8 = lean_unsigned_to_nat(255u);
x_9 = l_test(x_8, x_7);
if (lean_obj_tag(x_9) == 0)
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; 
x_10 = lean_ctor_get(x_9, 1);
lean_inc(x_10);
lean_dec_ref(x_9);
x_11 = lean_unsigned_to_nat(256u);
x_12 = l_test(x_11, x_10);
if (lean_obj_tag(x_12) == 0)
{
lean_object* x_13; lean_object* x_14; lean_object* x_15; 
x_13 = lean_ctor_get(x_12, 1);
lean_inc(x_13);
lean_dec_ref(x_12);
x_14 = lean_unsigned_to_nat(257u);
x_15 = l_test(x_14, x_13);
if (lean_obj_tag(x_15) == 0)
{
lean_object* x_16; lean_object* x_17; lean_object* x_18; 
x_16 = lean_ctor_get(x_15, 1);
lean_inc(x_16);
lean_dec_ref(x_15);
x_17 = lean_unsigned_to_nat(65535u);
x_18 = l_test(x_17, x_16);
if (lean_obj_tag(x_18) == 0)
{
lean_object* x_19; lean_object* x_20; lean_object* x_21; 
x_19 = lean_ctor_get(x_18, 1);
lean_inc(x_19);
lean_dec_ref(x_18);
x_20 = lean_unsigned_to_nat(65536u);
x_21 = l_test(x_20, x_19);
if (lean_obj_tag(x_21) == 0)
{
lean_object* x_22; lean_object* x_23; lean_object* x_24; 
x_22 = lean_ctor_get(x_21, 1);
lean_inc(x_22);
lean_dec_ref(x_21);
x_23 = lean_unsigned_to_nat(65537u);
x_24 = l_test(x_23, x_22);
if (lean_obj_tag(x_24) == 0)
{
lean_object* x_25; lean_object* x_26; lean_object* x_27; 
x_25 = lean_ctor_get(x_24, 1);
lean_inc(x_25);
lean_dec_ref(x_24);
x_26 = lean_unsigned_to_nat(4294967295u);
x_27 = l_test(x_26, x_25);
if (lean_obj_tag(x_27) == 0)
{
lean_object* x_28; lean_object* x_29; lean_object* x_30; 
x_28 = lean_ctor_get(x_27, 1);
lean_inc(x_28);
lean_dec_ref(x_27);
x_29 = lean_cstr_to_nat("4294967296");
x_30 = l_test(x_29, x_28);
if (lean_obj_tag(x_30) == 0)
{
lean_object* x_31; lean_object* x_32; lean_object* x_33; 
x_31 = lean_ctor_get(x_30, 1);
lean_inc(x_31);
lean_dec_ref(x_30);
x_32 = lean_cstr_to_nat("4294967297");
x_33 = l_test(x_32, x_31);
if (lean_obj_tag(x_33) == 0)
{
lean_object* x_34; lean_object* x_35; lean_object* x_36; 
x_34 = lean_ctor_get(x_33, 1);
lean_inc(x_34);
lean_dec_ref(x_33);
x_35 = l_main___closed__0;
x_36 = l_test(x_35, x_34);
if (lean_obj_tag(x_36) == 0)
{
lean_object* x_37; lean_object* x_38; lean_object* x_39; 
x_37 = lean_ctor_get(x_36, 1);
lean_inc(x_37);
lean_dec_ref(x_36);
x_38 = l_main___closed__1;
x_39 = l_test(x_38, x_37);
if (lean_obj_tag(x_39) == 0)
{
lean_object* x_40; lean_object* x_41; lean_object* x_42; 
x_40 = lean_ctor_get(x_39, 1);
lean_inc(x_40);
lean_dec_ref(x_39);
x_41 = l_main___closed__2;
x_42 = l_test(x_41, x_40);
return x_42;
}
else
{
return x_39;
}
}
else
{
return x_36;
}
}
else
{
return x_33;
}
}
else
{
return x_30;
}
}
else
{
return x_27;
}
}
else
{
return x_24;
}
}
else
{
return x_21;
}
}
else
{
return x_18;
}
}
else
{
return x_15;
}
}
else
{
return x_12;
}
}
else
{
return x_9;
}
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
LEAN_EXPORT lean_object* initialize_nat__shiftr(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
l_test___closed__0 = _init_l_test___closed__0();
lean_mark_persistent(l_test___closed__0);
l_test___closed__1 = _init_l_test___closed__1();
lean_mark_persistent(l_test___closed__1);
l_test___closed__2 = _init_l_test___closed__2();
lean_mark_persistent(l_test___closed__2);
l_test___closed__3 = _init_l_test___closed__3();
lean_mark_persistent(l_test___closed__3);
l_test___closed__4 = _init_l_test___closed__4();
lean_mark_persistent(l_test___closed__4);
l_test___closed__5 = _init_l_test___closed__5();
lean_mark_persistent(l_test___closed__5);
l_test___closed__6 = _init_l_test___closed__6();
lean_mark_persistent(l_test___closed__6);
l_test___closed__7 = _init_l_test___closed__7();
lean_mark_persistent(l_test___closed__7);
l_test___closed__8 = _init_l_test___closed__8();
lean_mark_persistent(l_test___closed__8);
l_test___closed__9 = _init_l_test___closed__9();
lean_mark_persistent(l_test___closed__9);
l_test___closed__10 = _init_l_test___closed__10();
lean_mark_persistent(l_test___closed__10);
l_test___closed__11 = _init_l_test___closed__11();
lean_mark_persistent(l_test___closed__11);
l_test___closed__12 = _init_l_test___closed__12();
lean_mark_persistent(l_test___closed__12);
l_test___closed__13 = _init_l_test___closed__13();
l_main___closed__0 = _init_l_main___closed__0();
lean_mark_persistent(l_main___closed__0);
l_main___closed__1 = _init_l_main___closed__1();
lean_mark_persistent(l_main___closed__1);
l_main___closed__2 = _init_l_main___closed__2();
lean_mark_persistent(l_main___closed__2);
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
res = initialize_nat__shiftr(1 /* builtin */, lean_io_mk_world());
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
