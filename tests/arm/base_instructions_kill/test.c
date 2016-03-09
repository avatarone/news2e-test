#include "s2e/base_instructions/arm.h"
#include <stdbool.h>

__attribute__((naked)) void _start(void) 
{
    s2e_kill_state(0, "State killed OK");
    while (true) {}
}
