#include <stdbool.h>

void main(void);

__attribute__((naked,noreturn)) void _start(void)
{
    asm("mov sp, #0x1000");
    main();
    while (true) {}
}
