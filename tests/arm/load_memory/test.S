.global _start
.text
.arm

_start:
    mov r0, #0
    ldr r1, [r0]
    b _start
