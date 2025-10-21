#include <lean/lean.h>

void lean_initialize_runtime_module();
void lean_finalize_task_manager();
void lean_init_task_manager();
void lean_io_mark_end_initialization();
void lean_set_panic_messages(bool);
void lean_io_result_show_error(lean_object*);

extern lean_object* lean_main(lean_object*);
extern lean_object* initialize_arm64__array(uint8_t, lean_object*);

int main(int argc, char** argv) {
    lean_object* res;

    lean_initialize_runtime_module();
    lean_set_panic_messages(false);

    res = initialize_arm64__array(1, lean_io_mk_world());
    lean_set_panic_messages(true);
    lean_io_mark_end_initialization();

    if (lean_io_result_is_ok(res)) {
        lean_dec_ref(res);
        lean_init_task_manager();
        res = lean_main(lean_io_mk_world());
    }

    lean_finalize_task_manager();

    if (lean_io_result_is_ok(res)) {
        lean_dec_ref(res);
        return 0;
    } else {
        lean_io_result_show_error(res);
        lean_dec_ref(res);
        return 1;
    }
}
