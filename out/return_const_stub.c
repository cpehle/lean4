#include <lean/lean.h>
#ifdef __cplusplus
extern "C" {
#endif
LEAN_EXPORT lean_object* lean_main(lean_object*);
LEAN_EXPORT lean_object* initialize_return__const(uint8_t, lean_object*);
#ifdef __cplusplus
}
#endif

extern char ** lean_setup_args(int argc, char ** argv);
extern void lean_initialize_runtime_module(void);
extern void lean_set_panic_messages(bool);
extern void lean_init_task_manager(void);
extern void lean_finalize_task_manager(void);

int main(int argc, char ** argv) {
  lean_object* res;
  argv = lean_setup_args(argc, argv);
  lean_initialize_runtime_module();
  lean_set_panic_messages(false);
  res = initialize_return__const(1 /* builtin */, lean_io_mk_world());
  lean_set_panic_messages(true);
  lean_io_mark_end_initialization();
  if (lean_io_result_is_ok(res)) {
    lean_dec_ref(res);
    lean_init_task_manager();
    res = lean_main(lean_io_mk_world());
  }
  lean_finalize_task_manager();
  if (lean_io_result_is_ok(res)) {
    uint32_t exitCode = 0;
    lean_object* boxed = lean_io_result_get_value(res);
    if (lean_is_scalar(boxed)) {
      exitCode = lean_unbox_uint32(boxed);
    }
    lean_dec_ref(res);
    return (int)exitCode;
  } else {
    lean_io_result_show_error(res);
    lean_dec_ref(res);
    return 1;
  }
}
