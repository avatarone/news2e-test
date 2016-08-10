#include "s2e/base_instructions/arm.h"
#include <stdint.h>

void main(void);

__attribute__((naked,noreturn)) void _start(void) 
{
    /* Set up stack for SVC (the mode we are started in) and UND modes */
    asm volatile(
        "mov sp, #0x1000    \n"
        "mrs r0, cpsr       \n"
        "bic r1, r0, #0x1f  \n"
        "orr r1, #0x1b      \n"
        "msr cpsr, r1       \n"
        "mov sp, #0x2000    \n"
        "msr cpsr, r0       \n"
        "b main             \n"
        "b .                \n");
}

static void handle_invalid_instruction(void) 
{
    s2e_kill_state(0, "Caught undefined instruction");
}

__attribute__((naked,noreturn)) static void _handle_invalid_instruction(void)
{
    asm volatile(
        "push {r0-r12,lr}                 \n"
        "bl handle_invalid_instruction    \n"
        "ldmfd sp!, {r0-r12,pc}^          \n");
}

void main(void) 
{
    /* Setup undefined instruction handler */
    *((uint32_t *) 0x8) = 0xe59ff018; /* ldr pc, [pc, 0x18] */
    *((uint32_t *) 0x28) = (uint32_t) _handle_invalid_instruction;

    /* Execute undefined instruction */
    asm volatile(".word 0xf7f0a000      \n");

    s2e_kill_state(1, "Did not catch undefined instruction");
}
