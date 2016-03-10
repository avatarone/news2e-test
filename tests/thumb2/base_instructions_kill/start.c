#include <stdbool.h>

void main(void);

__attribute__((naked,noreturn)) void _start(void)
{
    __asm__(
        "mov r0, #0x1000        \n"
        "mov sp, r0             \n");
    main();
    while (true) {}
}
