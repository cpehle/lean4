leanc ${LEANC_OPTS-} -O3 -DNDEBUG -o main.out main.c

capture_only main ./main.out
check_out_file
check_exit_is_success
