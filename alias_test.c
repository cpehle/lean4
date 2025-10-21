int target_wrapper(int x){ return x+1; }
__asm__(".globl _target\n_target = _target_wrapper");
