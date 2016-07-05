#include "s2e/base_instructions/arm.h"
#include <stdbool.h>

__attribute__((naked,noreturn)) void _start(void) 
{
    __asm__(
        "mov sp, #0x1000              \n"
        "bl main                      \n"
        "b .                          \n");
}

void main(void) 
{
    int x = 0;
    s2e_make_symbolic(&x, sizeof(x), "x");
    if (x == 0) {
        s2e_kill_state(0, "If branch terminated");
    }
    else {
        s2e_kill_state(0, "Else branch terminated");
    }
}
