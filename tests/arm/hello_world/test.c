#include <stdint.h>

extern int _stack_top;

volatile uint32_t * const UART0 = (uint32_t *) 0x101f1000;

enum UartRegisters {
    UARTREG_DATA = 0
};

void uart_putc(char c);
void uart_puts(const char *str);
void main(void);

void uart_putc(char c)
{
    UART0[UARTREG_DATA] = (uint32_t) c;
}

void uart_puts(const char *str) 
{
    while (*str) {
        uart_putc(*str++);
    }
}


void main(void)
{
    while (1) {
        uart_puts("Hello world\n");
    }
}


__attribute__((naked,section(".start"))) void _start(void) 
{
    __asm__("mov %%sp, %[sp]" : : [sp] "r" (&_stack_top));
    main();
    while (1) {}
}
