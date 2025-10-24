#!/usr/bin/env bash
source ../common.sh

# First check the C version actually works...
echo "running C program..."
rm "./$f.out" || true
compile_lean_c_backend
exec_check "./$f.out"
diff_produced

# Then check the LLVM version
if lean_has_llvm_support; then
    echo "running LLVM program..."
    rm "./$f.out" || true
    compile_lean_llvm_backend
    exec_check "./$f.out"
    diff_produced
fi

# Finally, check the ARM64 native backend
arch="$(uname -m)"
if [[ "$arch" == "arm64" || "$arch" == "aarch64" ]]; then
    echo "running ARM64 backend..."
    rm -f "./$f.arm64.s" "./$f.arm64.out" "./$f.arm64_shim.c"

    lean --arm64="$f.arm64.s" "$f" || fail "Failed to compile $f into ARM64 assembly"

    # Extract module initializer name from generated assembly
    module_init=$(grep -m1 '\.globl _initialize_' "$f.arm64.s" | awk '{print $2}')
    if [[ -z "$module_init" ]]; then
      fail "Could not locate module initializer in $f.arm64.s"
    fi
    module_name="${module_init#_}"

    # Create shim for calling ARM64 code
    cat > "$f.arm64_shim.c" <<EOF
#include <lean/lean.h>

void lean_initialize_runtime_module();
void lean_finalize_task_manager();
void lean_init_task_manager();
void lean_io_mark_end_initialization();
void lean_set_panic_messages(bool);
void lean_io_result_show_error(lean_object*);
void lean_initialize();
char** lean_setup_args(int argc, char** argv);

extern lean_object* lean_main(lean_object*);
extern lean_object* ${module_name}(uint8_t, lean_object*);

int main(int argc, char** argv) {
    lean_object* res;

    argv = lean_setup_args(argc, argv);
    lean_initialize();
    lean_set_panic_messages(false);

    res = ${module_name}(1, lean_io_mk_world());
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
EOF

    # Link ARM64 assembly with runtime
    LIB_DIR=$(cd ../../build/release/stage1/lib/lean && pwd)
    leanc ${LEANC_OPTS-} -O3 -DNDEBUG -mmacosx-version-min=15.3 \
      -o "$f.arm64.out" "$f.arm64.s" "$f.arm64_shim.c" runtime_bridge.c \
      -L"$LIB_DIR" -Wl,-force_load,"$LIB_DIR"/libLean.a \
      -Wl,-force_load,"$LIB_DIR"/libleanrt.a -lleancpp -lInit -lStd -lLean -lLake -lleanrt \
      -lleanshared -luv -Wl,-rpath,@executable_path/../lib/lean \
      -Wl,-rpath,"$LIB_DIR" \
      || fail "Failed to link ARM64 assembly for $f"

    export DYLD_LIBRARY_PATH="$LIB_DIR:${DYLD_LIBRARY_PATH:-}"
    exec_check "./$f.arm64.out"
    diff_produced

    rm -f "./$f.arm64.s" "./$f.arm64.out" "./$f.arm64_shim.c"
else
    echo "skipping ARM64 backend on host architecture $arch"
fi
