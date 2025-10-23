#include <stdio.h>
#include <stdint.h>
#include <lean/lean.h>

// External declarations
extern void initialize_str_lean_Module_0();
extern uint8_t __init_l_main___closed__31();
extern lean_object* __init_l_main___closed__29();
extern lean_object* __init_l_main___closed__30();

int main(int argc, char **argv) {
    lean_initialize_runtime_module();
    lean_io_mark_end_initialization();
    
    // Initialize the module
    initialize_str_lean_Module_0();
    
    // Initialize the strings first
    lean_object* s1 = __init_l_main___closed__29();  // αb
    lean_object* s2 = __init_l_main___closed__30();  // αbc
    
    printf("String 1: %s\n", lean_string_cstr(s1));
    printf("String 2: %s\n", lean_string_cstr(s2));
    printf("String 1 size: %zu\n", lean_string_size(s1));
    printf("String 2 size: %zu\n", lean_string_size(s2));
    printf("String 1 utf8_byte_size: %zu\n", lean_string_utf8_byte_size(s1));
    printf("String 2 utf8_byte_size: %zu\n", lean_string_utf8_byte_size(s2));
    
    // Now call isPrefixOf
    uint8_t result = l_String_isPrefixOf(s1, s2);
    printf("isPrefixOf result: %u\n", result);
    
    // Also call the init function
    uint8_t init_result = __init_l_main___closed__31();
    printf("Init function result: %u\n", init_result);
    
    return 0;
}
