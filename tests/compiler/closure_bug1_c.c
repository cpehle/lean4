// Lean compiler output
// Module: tests.compiler.closure_bug1
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
lean_object* l_String_toNat_x21(lean_object*);
LEAN_EXPORT lean_object* l_f(lean_object*);
LEAN_EXPORT lean_object* l_List_toString___at___f_spec__0(lean_object*);
LEAN_EXPORT lean_object* l_f___lam__0(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
lean_object* lean_string_push(lean_object*, uint32_t);
lean_object* lean_get_stdout(lean_object*);
lean_object* l_Nat_reprFast(lean_object*);
static lean_object* l_List_toString___at___f_spec__0___closed__2;
LEAN_EXPORT lean_object* l_IO_println___at___main_spec__0(lean_object*, lean_object*);
static lean_object* l_main___closed__0;
LEAN_EXPORT lean_object* l_IO_print___at___IO_println___at___main_spec__0_spec__0(lean_object*, lean_object*);
static lean_object* l_List_foldl___at___List_toString___at___f_spec__0_spec__0___closed__0;
LEAN_EXPORT lean_object* l_List_foldl___at___List_toString___at___f_spec__0_spec__0(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_f___lam__0___boxed(lean_object**);
lean_object* lean_string_append(lean_object*, lean_object*);
static lean_object* l_List_toString___at___f_spec__0___closed__1;
lean_object* lean_nat_add(lean_object*, lean_object*);
static lean_object* l_List_toString___at___f_spec__0___closed__0;
static lean_object* _init_l_List_foldl___at___List_toString___at___f_spec__0_spec__0___closed__0() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked(", ", 2, 2);
return x_1;
}
}
LEAN_EXPORT lean_object* l_List_foldl___at___List_toString___at___f_spec__0_spec__0(lean_object* x_1, lean_object* x_2) {
_start:
{
if (lean_obj_tag(x_2) == 0)
{
return x_1;
}
else
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; 
x_3 = lean_ctor_get(x_2, 0);
lean_inc(x_3);
x_4 = lean_ctor_get(x_2, 1);
lean_inc(x_4);
lean_dec_ref(x_2);
x_5 = l_List_foldl___at___List_toString___at___f_spec__0_spec__0___closed__0;
x_6 = lean_string_append(x_1, x_5);
x_7 = l_Nat_reprFast(x_3);
x_8 = lean_string_append(x_6, x_7);
lean_dec_ref(x_7);
x_1 = x_8;
x_2 = x_4;
goto _start;
}
}
}
static lean_object* _init_l_List_toString___at___f_spec__0___closed__0() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("[]", 2, 2);
return x_1;
}
}
static lean_object* _init_l_List_toString___at___f_spec__0___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("[", 1, 1);
return x_1;
}
}
static lean_object* _init_l_List_toString___at___f_spec__0___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("]", 1, 1);
return x_1;
}
}
LEAN_EXPORT lean_object* l_List_toString___at___f_spec__0(lean_object* x_1) {
_start:
{
if (lean_obj_tag(x_1) == 0)
{
lean_object* x_2; 
x_2 = l_List_toString___at___f_spec__0___closed__0;
return x_2;
}
else
{
lean_object* x_3; 
x_3 = lean_ctor_get(x_1, 1);
if (lean_obj_tag(x_3) == 0)
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; 
x_4 = lean_ctor_get(x_1, 0);
lean_inc(x_4);
lean_dec_ref(x_1);
x_5 = l_List_toString___at___f_spec__0___closed__1;
x_6 = l_Nat_reprFast(x_4);
x_7 = lean_string_append(x_5, x_6);
lean_dec_ref(x_6);
x_8 = l_List_toString___at___f_spec__0___closed__2;
x_9 = lean_string_append(x_7, x_8);
return x_9;
}
else
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; uint32_t x_15; lean_object* x_16; 
lean_inc_ref(x_3);
x_10 = lean_ctor_get(x_1, 0);
lean_inc(x_10);
lean_dec_ref(x_1);
x_11 = l_List_toString___at___f_spec__0___closed__1;
x_12 = l_Nat_reprFast(x_10);
x_13 = lean_string_append(x_11, x_12);
lean_dec_ref(x_12);
x_14 = l_List_foldl___at___List_toString___at___f_spec__0_spec__0(x_13, x_3);
x_15 = 93;
x_16 = lean_string_push(x_14, x_15);
return x_16;
}
}
}
}
LEAN_EXPORT lean_object* l_f___lam__0(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5, lean_object* x_6, lean_object* x_7, lean_object* x_8, lean_object* x_9, lean_object* x_10, lean_object* x_11, lean_object* x_12, lean_object* x_13, lean_object* x_14, lean_object* x_15, lean_object* x_16, lean_object* x_17, lean_object* x_18) {
_start:
{
lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; lean_object* x_32; lean_object* x_33; lean_object* x_34; lean_object* x_35; lean_object* x_36; lean_object* x_37; lean_object* x_38; lean_object* x_39; 
x_19 = lean_box(0);
lean_inc(x_18);
x_20 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_20, 0, x_18);
lean_ctor_set(x_20, 1, x_19);
x_21 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_21, 0, x_18);
lean_ctor_set(x_21, 1, x_20);
x_22 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_22, 0, x_1);
lean_ctor_set(x_22, 1, x_21);
x_23 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_23, 0, x_2);
lean_ctor_set(x_23, 1, x_22);
x_24 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_24, 0, x_3);
lean_ctor_set(x_24, 1, x_23);
x_25 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_25, 0, x_4);
lean_ctor_set(x_25, 1, x_24);
x_26 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_26, 0, x_5);
lean_ctor_set(x_26, 1, x_25);
x_27 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_27, 0, x_6);
lean_ctor_set(x_27, 1, x_26);
x_28 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_28, 0, x_7);
lean_ctor_set(x_28, 1, x_27);
x_29 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_29, 0, x_8);
lean_ctor_set(x_29, 1, x_28);
x_30 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_30, 0, x_9);
lean_ctor_set(x_30, 1, x_29);
x_31 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_31, 0, x_10);
lean_ctor_set(x_31, 1, x_30);
x_32 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_32, 0, x_11);
lean_ctor_set(x_32, 1, x_31);
x_33 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_33, 0, x_12);
lean_ctor_set(x_33, 1, x_32);
x_34 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_34, 0, x_13);
lean_ctor_set(x_34, 1, x_33);
x_35 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_35, 0, x_14);
lean_ctor_set(x_35, 1, x_34);
x_36 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_36, 0, x_15);
lean_ctor_set(x_36, 1, x_35);
x_37 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_37, 0, x_16);
lean_ctor_set(x_37, 1, x_36);
x_38 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_38, 0, x_17);
lean_ctor_set(x_38, 1, x_37);
x_39 = l_List_toString___at___f_spec__0(x_38);
return x_39;
}
}
LEAN_EXPORT lean_object* l_f(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; lean_object* x_32; lean_object* x_33; lean_object* x_34; lean_object* x_35; lean_object* x_36; lean_object* x_37; 
x_2 = lean_unsigned_to_nat(1u);
x_3 = lean_nat_add(x_1, x_2);
x_4 = lean_unsigned_to_nat(2u);
x_5 = lean_nat_add(x_1, x_4);
x_6 = lean_unsigned_to_nat(3u);
x_7 = lean_nat_add(x_1, x_6);
x_8 = lean_unsigned_to_nat(4u);
x_9 = lean_nat_add(x_1, x_8);
x_10 = lean_unsigned_to_nat(5u);
x_11 = lean_nat_add(x_1, x_10);
x_12 = lean_unsigned_to_nat(6u);
x_13 = lean_nat_add(x_1, x_12);
x_14 = lean_unsigned_to_nat(7u);
x_15 = lean_nat_add(x_1, x_14);
x_16 = lean_unsigned_to_nat(8u);
x_17 = lean_nat_add(x_1, x_16);
x_18 = lean_unsigned_to_nat(9u);
x_19 = lean_nat_add(x_1, x_18);
x_20 = lean_unsigned_to_nat(10u);
x_21 = lean_nat_add(x_1, x_20);
x_22 = lean_unsigned_to_nat(11u);
x_23 = lean_nat_add(x_1, x_22);
x_24 = lean_unsigned_to_nat(12u);
x_25 = lean_nat_add(x_1, x_24);
x_26 = lean_unsigned_to_nat(13u);
x_27 = lean_nat_add(x_1, x_26);
x_28 = lean_unsigned_to_nat(14u);
x_29 = lean_nat_add(x_1, x_28);
x_30 = lean_unsigned_to_nat(15u);
x_31 = lean_nat_add(x_1, x_30);
x_32 = lean_unsigned_to_nat(16u);
x_33 = lean_nat_add(x_1, x_32);
x_34 = lean_unsigned_to_nat(17u);
x_35 = lean_nat_add(x_1, x_34);
x_36 = lean_alloc_closure((void*)(l_f___lam__0___boxed), 18, 17);
lean_closure_set(x_36, 0, x_35);
lean_closure_set(x_36, 1, x_33);
lean_closure_set(x_36, 2, x_31);
lean_closure_set(x_36, 3, x_29);
lean_closure_set(x_36, 4, x_27);
lean_closure_set(x_36, 5, x_25);
lean_closure_set(x_36, 6, x_23);
lean_closure_set(x_36, 7, x_21);
lean_closure_set(x_36, 8, x_19);
lean_closure_set(x_36, 9, x_17);
lean_closure_set(x_36, 10, x_15);
lean_closure_set(x_36, 11, x_13);
lean_closure_set(x_36, 12, x_11);
lean_closure_set(x_36, 13, x_9);
lean_closure_set(x_36, 14, x_7);
lean_closure_set(x_36, 15, x_5);
lean_closure_set(x_36, 16, x_3);
x_37 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_37, 0, x_1);
lean_ctor_set(x_37, 1, x_36);
return x_37;
}
}
LEAN_EXPORT lean_object* l_f___lam__0___boxed(lean_object** _args) {
lean_object* x_1 = _args[0];
lean_object* x_2 = _args[1];
lean_object* x_3 = _args[2];
lean_object* x_4 = _args[3];
lean_object* x_5 = _args[4];
lean_object* x_6 = _args[5];
lean_object* x_7 = _args[6];
lean_object* x_8 = _args[7];
lean_object* x_9 = _args[8];
lean_object* x_10 = _args[9];
lean_object* x_11 = _args[10];
lean_object* x_12 = _args[11];
lean_object* x_13 = _args[12];
lean_object* x_14 = _args[13];
lean_object* x_15 = _args[14];
lean_object* x_16 = _args[15];
lean_object* x_17 = _args[16];
lean_object* x_18 = _args[17];
_start:
{
lean_object* x_19; 
x_19 = l_f___lam__0(x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_12, x_13, x_14, x_15, x_16, x_17, x_18);
return x_19;
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
x_1 = lean_mk_string_unchecked("0", 1, 1);
return x_1;
}
}
LEAN_EXPORT lean_object* _lean_main(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
if (lean_obj_tag(x_1) == 0)
{
lean_object* x_10; 
x_10 = l_main___closed__0;
x_3 = x_10;
goto block_9;
}
else
{
lean_object* x_11; 
x_11 = lean_ctor_get(x_1, 0);
lean_inc(x_11);
lean_dec_ref(x_1);
x_3 = x_11;
goto block_9;
}
block_9:
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; 
x_4 = l_String_toNat_x21(x_3);
lean_dec_ref(x_3);
lean_inc(x_4);
x_5 = l_f(x_4);
x_6 = lean_ctor_get(x_5, 1);
lean_inc(x_6);
lean_dec_ref(x_5);
x_7 = lean_apply_1(x_6, x_4);
x_8 = l_IO_println___at___main_spec__0(x_7, x_2);
return x_8;
}
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_tests_compiler_closure__bug1(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
l_List_foldl___at___List_toString___at___f_spec__0_spec__0___closed__0 = _init_l_List_foldl___at___List_toString___at___f_spec__0_spec__0___closed__0();
lean_mark_persistent(l_List_foldl___at___List_toString___at___f_spec__0_spec__0___closed__0);
l_List_toString___at___f_spec__0___closed__0 = _init_l_List_toString___at___f_spec__0___closed__0();
lean_mark_persistent(l_List_toString___at___f_spec__0___closed__0);
l_List_toString___at___f_spec__0___closed__1 = _init_l_List_toString___at___f_spec__0___closed__1();
lean_mark_persistent(l_List_toString___at___f_spec__0___closed__1);
l_List_toString___at___f_spec__0___closed__2 = _init_l_List_toString___at___f_spec__0___closed__2();
lean_mark_persistent(l_List_toString___at___f_spec__0___closed__2);
l_main___closed__0 = _init_l_main___closed__0();
lean_mark_persistent(l_main___closed__0);
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
res = initialize_tests_compiler_closure__bug1(1 /* builtin */, lean_io_mk_world());
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
