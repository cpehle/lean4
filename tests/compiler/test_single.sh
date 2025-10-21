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

# Finally, verify that the ARM64 native backend can emit assembly for the ARM-specific smoke tests.
if [[ "$f" == arm64_* ]]; then
    arch="$(uname -m)"
    if [[ "$arch" == "arm64" || "$arch" == "aarch64" ]]; then
        echo "generating ARM64 assembly..."
        rm -f "./$f.arm64.s"
        lean --arm64="$f.arm64.s" "$f" || fail "Failed to compile $f into ARM64 assembly"
        # We only care that assembly emission succeeds; the actual execution is covered by the C/LLVM backends.
        rm -f "./$f.arm64.s"
    else
        echo "skipping ARM64 backend on host architecture $arch"
    fi
fi
